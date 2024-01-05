local ALIGN_TRANSMITTER = 1
local ALIGN_SEARCH = 2
local ALIGN_VERIFY = 3
local ALIGN_WATER = 4
local ALIGN_SURVEY = 5
local ALIGN_RESOURCE = 6
local ALIGN_LANDING = 7
local ALIGN_TELEPORT = 8
local ALIGN_COMPANION = 9
local ALIGN_TRANSPONDER = 10
local ALIGN_ABSORB_CHART = 11
local ALIGN_ABSORB_ENTITY = 12
local ALIGN_ABSORB_TECH = 13
local ALIGN_ABSORB_CONVERT = 14
local ALIGN_ABSORB_UNSHARE = 15


local function lookup_force(force)
  if ((force == nil) or (not force.valid)) then return nil end
  return global.nullius_align_factions[force.name]
end

local function init_faction(force, name)
  local entry = { name = name, has_transmitter = false, tags = { }}
  global.nullius_align_factions[force.name] = entry
  init_broken()
end

local function create_faction(player)
  local name = "faction-" .. player.name
  local faction = global.nullius_align_factions[name]
  if (faction ~= nil) then return faction end
  faction = game.create_force(name)
  if ((faction == nil) or (not faction.valid)) then
    return player.faction
  end
  init_faction(faction, {"alignment.faction-name", {"", player.name}})
  return faction
end


function init_alignment()
  if (global.nullius_alignment == nil) then
    global.nullius_alignment = (game.is_multiplayer() and
	    settings.startup["nullius-alignment"].value)
  end

  if (not global.nullius_alignment) then
    global.nullius_align_factions = nil
	global.nullius_align_queue_head = nil
	global.nullius_align_queue_tail = nil
	global.nullius_align_lobby = nil
	global.nullius_align_invite_status = nil
	global.nullius_align_satellite_winner = nil
  elseif (global.nullius_align_factions == nil) then
    global.nullius_align_factions = { }
	global.nullius_align_invite_status = { }
	global.nullius_align_landing_distance = 32
	global.nullius_align_landing_sites = { }
	global.nullius_align_landing_sites[1] = {x = 0, y = 0}
	global.nullius_align_landing_count = 1
	global.nullius_align_satellite_winner = nil
  end
end

function init_alignment_force(force)
  for i = 1, 7 do
    local tech = force.technologies["nullius-alignment-" .. i]
	if ((tech ~= nil) and tech.valid) then
	  tech.enabled = global.nullius_alignment
	end
  end
end


local function teleport_lobby(player)
  local lobby = global.nullius_align_lobby
  if (lobby == nil) then
    lobby = blank_surface(player.surface, "orbit")
    lobby.request_to_generate_chunks({0, 0}, 4)
    lobby.force_generate_chunk_requests()
    lobby.always_day = true
    global.nullius_align_lobby = lobby
	player.force.chart(lobby, {{-120, -120}, {120, 120}})
  end
  player.teleport(player.position, lobby, true)
end

local function generate_corner(surface, x, y)
  local newtiles = { }
  local ind = 0
  for i = 0,15 do
	for j = 0,15 do
	  ind = ind + 1
	  newtiles[ind] = { name = "nullius-stars", position = {x + i, y + j } }
	end
  end
  surface.set_tiles(newtiles)  
end

local function chunk_generated(event)
  if (global.nullius_alignment ~= true) then return end
  local surface = event.surface
  if (surface ~= global.nullius_align_lobby) then return end
  local x = event.area.left_top.x
  local y = event.area.left_top.y
  generate_corner(surface, x, y)
  generate_corner(surface, (x + 16), y)
  generate_corner(surface, x, (y + 16))
  generate_corner(surface, (x + 16), (y + 16))
end

script.on_event(defines.events.on_chunk_generated, chunk_generated)


local function align_add_queue(entry)
  if (global.nullius_align_queue_tail == nil) then
    global.nullius_align_queue_head = entry
  else
    global.nullius_align_queue_tail.next = entry
  end
  global.nullius_align_queue_tail = entry
end

function align_player_created(player)
  local surface = player.surface
  teleport_lobby(player)
  align_add_queue({
    state = ALIGN_TRANSMITTER, player = player, surface = surface
  })
  return {"alignment.nullius-align-intro"}
end

function align_first_player_created(player)
  local surface = player.surface
  local position = player.position
  teleport_lobby(player)
  surface.request_to_generate_chunks({x = 0, y = 0}, 5)
  align_add_queue({
    state = ALIGN_LANDING, delay = (game.tick + 300),
	player = player, surface = surface, position = position
  })
  return {"alignment.nullius-align-first-intro"}
end


local function faction_has_tech(force, techname)
  local tech = force.technologies["nullius-" .. techname]
  return ((tech ~= nil) and tech.valid and tech.researched)
end

local function faction_has_crafted(force, itemname, amount)
  local stats = force.item_production_statistics
  local count = stats.get_input_count("nullius-" .. itemname)
  return (count >= amount)
end

local function faction_has_identification(force)
  if (not faction_has_tech(force, "alignment-1")) then return false end
  if (not faction_has_tech(force, "steelworking")) then return false end
  return (faction_has_crafted(force, "align-identification-card", 1) and
      faction_has_crafted(force, "steel-sheet", 1) and
	  faction_has_crafted(force, "plastic", 20) and
	  faction_has_crafted(force, "mechanical-pack", 20))
end

local function player_has_identification(player)
  return (player.get_item_count("nullius-align-identification-card") >= 1)
end


local function convert_player_faction(player, force)
  local oldforce = player.force
  local oldentry = lookup_force(oldforce)
  local newentry = lookup_force(force)
  if ((oldentry == nil) or (newentry == nil)) then return end
  
  if (oldentry.has_transmitter) then
    newentry.has_transmitter = true
	oldentry.has_transmitter = false
  end

  player.print({"alignment.align-msg", {"alignment.faction-switched",
      oldentry.name, newentry.name}})
  force.print({"alignment.align-msg", {"alignment.faction-joined",
      player.name, newentry.name, oldentry.name}})
  player.force = force
  oldforce.print({"alignment.align-msg", {"alignment.faction-quit",
      player.name, oldentry.name, newentry.name}})
end

function align_player_join(player)
  if (not global.nullius_alignment) then return end
  local force = player.force
  for i = 1, 200 do
    local entry = lookup_force(force)
	if (entry == nil) then return end
	if (entry.absorbed == nil) then
	  if (force ~= player.force) then
	    convert_player_faction(player, force)
	  end
	  return
	end
	force = entry.absorbed
  end
end


local function schedule_absorb_faction(oldforce, newforce, target)
  oldforce.set_friend(newforce, true)
  newforce.set_friend(oldforce, true)
  align_add_queue({
    state = ALIGN_ABSORB_CHART, oldforce = oldforce, newforce = newforce
  })
  align_add_queue({
    state = ALIGN_ABSORB_ENTITY, oldforce = oldforce, newforce = newforce
  })
  align_add_queue({
    state = ALIGN_ABSORB_TECH,
	surface = target.surface, position = target.position,
	oldforce = oldforce, newforce = newforce
  })
  align_add_queue({
    state = ALIGN_ABSORB_CONVERT, oldforce = oldforce, newforce = newforce
  })
end

function align_satellite_launch(rocket)
  if (not global.nullius_alignment) then return end
  if (global.nullius_align_satellite_winner ~= nil) then return end
  local newforce = rocket.force
  local entry = lookup_force(newforce)
  if (entry == nil) then return end
  global.nullius_align_satellite_winner = { force = newforce,
      surface = rocket.surface, position =
	      { x = rocket.position.x, y = (rocket.position.y + 256) } }

  for _, force in pairs(game.forces) do
    if (force ~= newforce) then
	  local force_entry = lookup_force(force)
	  if ((force_entry ~= nil) and (force_entry.absorbed == nil)) then
	    schedule_absorb_faction(force, newforce, rocket)
	  end
	end
  end
  game.print({"alignment.align-msg",
      {"alignment.align-concordance", entry.name}})
end


local function check_faction_empty(oldforce, newforce, target)
  local oldentry = lookup_force(oldforce)
  local newentry = lookup_force(newforce)
  if ((oldentry == nil) or (newentry == nil)) then return false end

  for _,player in pairs(oldforce.players) do
    if (player.valid and (player.connected or
		((game.tick - player.last_online) < 2592000))) then
	  return false
	end
  end

  schedule_absorb_faction(oldforce, newforce, target)
  return true
end

local function align_update_absorb_entity(entry)
  local oldforce = entry.oldforce
  local newforce = entry.newforce
  for _, surface in pairs(game.surfaces) do
    local entities = surface.find_entities_filtered{force = oldforce}
	for _, entity in pairs(entities) do
	  if (entity.valid and (entity.force == oldforce)) then
	    entity.force = newforce
	  end
	end
  end
  return true
end

local function align_update_absorb_chart(entry)
  local oldforce = entry.oldforce
  local newforce = entry.newforce
  local oldentry = lookup_force(oldforce)
  if (oldentry ~= nil) then
    oldentry.absorbed = newforce
  end

  oldforce.share_chart = true
  newforce.share_chart = true
  for _, surface in pairs(game.surfaces) do
    oldforce.rechart(surface)
  end

  align_add_queue({
    state = ALIGN_ABSORB_UNSHARE, delay = (game.tick + 1800),
	oldforce = oldforce, newforce = newforce
  })
  return true
end

local function get_tech_progress(force, tech)
  if (tech == nil) then return nil end
  if (not (tech.valid and tech.enabled)) then return nil end
  local progress = nil
  if (tech.researched) then
	progress = 1
  elseif ((force.current_research ~= nil) and
      (tech.name == force.current_research.name)) then
	progress = force.research_progress
  else
	progress = force.get_saved_technology_progress(tech.name)
  end
  if ((progress ~= nil) and (progress > 0)) then return progress end
  return 0
end

local function merge_faction_techs(oldforce, newforce, surface, pos)
  if (not (oldforce.valid and oldforce.research_enabled)) then return end
  if (not (newforce.valid and newforce.research_enabled)) then return end
  local refund = { }
  local total_refund = 0

  for ind, tech in pairs(oldforce.technologies) do
    local oldprogress = get_tech_progress(oldforce, tech)
	if ((oldprogress ~= nil) and (oldprogress > 0) and
	    (string.sub(tech.name, 1, 19) ~= "nullius-checkpoint-")) then
	  local newtech = newforce.technologies[ind]
	  local newprogress = get_tech_progress(newforce, newtech)
	  if (newprogress ~= nil) then
	    local progress = oldprogress + newprogress
		if (progress < 1) then
		  if (tech.name == newforce.current_research.name) then
		    newforce.research_progress = progress
		  else
		    newforce.set_saved_technology_progress(tech.name, progress)
		  end
		else
		  if (not newtech.researched) then newtech.researched = true end
		  local remainder = ((progress - 1) * tech.research_unit_count)
		  for _, ingredient in pairs(tech.research_unit_ingredients) do
		    local count = math.floor(remainder * ingredient.amount)
			if (count > 0) then
			  local cur = (refund[ingredient.name] or 0)
			  refund[ingredient.name] = (cur + count)
			  total_refund = total_refund + count
			end
		  end
		end
	  end
    end
  end

  local chest_width = 1
  local chest_name = "wooden-chest"
  local chest_techs = {
    {"storage-2", "iron-chest", 1},
    {"distribution-1", "nullius-large-chest-1", 2},
	{"storage-3", "nullius-large-chest-2", 2},
	{"distribution-5", "nullius-large-storage-chest-2", 2}
  }
  for _, chest_entry in pairs(chest_techs) do
	if (faction_has_tech(newforce, chest_entry[1])) then
	  chest_name = chest_entry[2]
	  chest_width = chest_entry[3]
	end
  end
  local chest_proto = game.entity_prototypes[chest_name]
  if ((chest_proto == nil) or (not chest_proto.valid) or
      ((chest_proto.type ~= "container") and
	      (chest_proto.type ~= "logistic-container"))) then
    return
  end
  local chest_size = chest_proto.get_inventory_size(defines.inventory.chest)
  if ((chest_size == nil) or (chest_size < 5)) then return end

  local dobox = false
  if (faction_has_tech(newforce, "packaging-5")) then
    dobox = true
	total_refund = total_refund / 5
  end
  local dist = 6 + (chest_width * math.sqrt(total_refund / chest_size) / 16)
  local chest = nil

  for ind, total in pairs(refund) do
	local item_name = ind
	local amount = total
	if (dobox) then
	  item_name = "nullius-box-" .. string.sub(item_name, 9, -1)
	  amount = math.floor((amount + 3) / 5)
	end
	local item_proto = game.item_prototypes[item_name]
	if ((item_proto ~= nil) and item_proto.valid and
	    item_proto.stackable and (item_proto.stack_size >= 5)) then
	  while (amount > 0) do
		local stack = { name = item_name, count = amount }
	    if (chest == nil) then
		  local pos2 = {pos.x + ((math.random() - math.random()) * dist),
		      pos.y + ((math.random() - math.random()) * dist)}
	      pos2 = surface.find_non_colliding_position(chest_name, pos2, 128, 1)
		  if (pos2 == nil) then return end
		  chest = surface.create_entity { name = chest_name,
              position = pos2, force = newforce }
		  if ((chest == nil) or (not chest.valid)) then return end
		  if (not chest.can_insert(stack)) then return end
		elseif (not chest.can_insert(stack)) then
		  chest = nil
		end
		if (chest ~= nil) then
		  local count = chest.insert(stack)
		  if (count < 1) then return end
		  amount = amount - count
		end
	  end
	end
  end
end

local function align_update_absorb_tech(entry)
  merge_faction_techs(entry.oldforce, entry.newforce,
      entry.surface, entry.position)
  return true	  
end

local function align_update_absorb_convert(entry)
  local oldforce = entry.oldforce
  local newforce = entry.newforce
  if ((not oldforce.valid) or (not newforce.valid)) then return true end

  for _, player in pairs(oldforce.connected_players) do
    if (player.valid) then
	  convert_player_faction(player, newforce)
	end
  end

  local oldentry = lookup_force(oldforce)
  local newentry = lookup_force(newforce)
  if ((oldentry == nil) or (newentry == nil)) then return true end

  oldentry.absorbed = newforce
  newforce.print({"alignment.align-msg", {"alignment.faction-absorbed",
      oldentry.name, newentry.name}})
  return true
end

local function align_update_absorb_unshare(entry)
  local oldforce = entry.oldforce
  local newforce = entry.newforce
  local oldentry = lookup_force(oldforce)
  if ((oldentry == nil) or (oldentry.absorb == nil)) then
    oldforce.share_chart = false
    newforce.share_chart = false
  end
  return true	  
end


local function align_update_transmitter(entry)
  local winner = global.nullius_align_satellite_winner
  if (winner ~= nil) then
    local force = lookup_force(winner.force)
    if (force ~= nil) then
      align_add_queue({
        state = ALIGN_TELEPORT,
        player = entry.player, force = winner.force,
	    surface = winner.surface, position = winner.position
      })
	  return true    
	end
  end

  if (global.nullius_align_transmitters ~= nil) then
    local lst = { }
	local num = 0
	for bi, transmitter in pairs(global.nullius_align_transmitters) do
	  if ((transmitter.entity == nil) or (not transmitter.entity.valid)) then
	    global.nullius_align_transmitters[bi] = nil
	  else
        num = num + 1
	    lst[num] = transmitter
	  end
	end

    while (num >= 1) do
      local ind = math.floor(1 + (math.random() * num))
	  local transmitter = lst[ind]
	  local entity = transmitter.entity
	  if ((entity.energy / entity.electric_buffer_size) > 0.6) then
	    local force_entry = lookup_force(transmitter.force)
		if (force_entry ~= nil) then
		  align_add_queue({
            state = ALIGN_TELEPORT,
            player = entry.player, force = transmitter.force,
	        surface = entity.surface, position = entity.position,
		    summons = force_entry.name
          })
		  return true
		end
	  end
	  lst[ind] = lst[num]
	  lst[num] = nil
	  num = num - 1
    end
  end

  align_add_queue({
    state = ALIGN_SEARCH, player = entry.player, surface = entry.surface
  })
  return true
end


local function evaluate_search_position(pos, surface)
  local closest_dist = nil
  for _,site in pairs(global.nullius_align_landing_sites) do
    local dx = (pos.x - site.x)
	local dy = (pos.y - site.y)
	local dist = ((dx * dx) + (dy * dy))
	if (dist < 600) then return nil end
	if ((closest_dist == nil) or (dist < closest_dist)) then
	  closest_dist = dist
	end
  end
  for i=-8,8,4 do
    for j=-8,8,4 do
	  local chunkbound = { x = (pos.x + i), y = (pos.y + j) }
	  if (surface.is_chunk_generated(chunkbound)) then return nil end
	end
  end
  return ((2 * math.sqrt(closest_dist)) -
      math.sqrt((pos.x * pos.x) + (pos.y * pos.y)))
end

local function align_update_search(entry)
  local dist = global.nullius_align_landing_distance
  global.nullius_align_landing_distance = (dist + 1)
  local best_score = nil
  local best_pos = nil
  for i = 1, 6 do
    local angle = (8 * math.pi * math.random())
    local distance = dist + (16 * (math.random() - math.random()))
    local pos = {x = math.floor((math.cos(angle) * distance) + 0.5),
	    y = math.floor((math.sin(angle) * distance) + 0.5)}
	local score = evaluate_search_position(pos, entry.surface)
	if ((score ~= nil) and ((best_pos == nil) or (score > best_score))) then
	  best_score = score
	  best_pos = pos
	end
  end

  if (best_pos == nil) then return false end
  local tpos = { x = (best_pos.x * 32), y = (best_pos.y * 32) }
  align_add_queue({
    state = ALIGN_VERIFY, delay = (game.tick + 90),
	player = entry.player, surface = entry.surface,
	cposition = best_pos, tposition = tpos, count = 0
  })
  local ind = (global.nullius_align_landing_count + 1)
  global.nullius_align_landing_count = ind
  global.nullius_align_landing_sites[ind] = best_pos
  local fillsurface = landfill_surface(entry.surface)
  fillsurface.request_to_generate_chunks(tpos, 3)
  entry.surface.request_to_generate_chunks(tpos, 5)
  return true
end

local waterset = { "deepwater", "water", "water-shallow",
    "deepwater-green", "water-green", "water-mud" }

local function align_update_verify_land(entry)
  local qx = entry.cposition.x
  local qy = entry.cposition.y
  for i=-4,4,2 do
    for j=-4,4,2 do
	  local chunkbound = { x = (qx + i), y = (qy + j) }
	  if (not entry.surface.is_chunk_generated(chunkbound)) then
	    entry.count = entry.count + 1
		if (entry.count > 10) then
		  entry.surface.force_generate_chunk_requests()
		end
		entry.delay = (game.tick + 60)
		return false
	  end
	end
  end

  local tpos = entry.tposition
  local water_count = entry.surface.count_tiles_filtered{
      position = tpos, radius = 128, limit = 4096, name = waterset }
  if (water_count >= 4095) then
    align_add_queue({
      state = ALIGN_SEARCH, player = entry.player, surface = entry.surface
    })
	return true
  end

  local skip_water = false
  if (water_count > 16) then
    if (water_count > 512) then skip_water = true end
    local water_count = entry.surface.count_tiles_filtered{
        position = tpos, radius = 32, limit = 18, name = waterset }
    if (water_count > 16) then
      landfill_area(entry.surface, tpos, "nullius-land-fill-bauxite")
	  skip_water = false
    end
  end

  align_add_queue({
    state = ((skip_water and ALIGN_SURVEY) or ALIGN_WATER),
	player = entry.player, surface = entry.surface, position = tpos
  })
  return true
end


local function random_patch_distribution(radius, depth)
  local grid = { }
  local bound = radius + 1
  for x = -bound, bound do
    local row = { }
    for y = -bound, bound do
      row[y] = -2
    end
	grid[x] = row
  end

  local work_list = { }
  local work_count = 0
  local num = (1 + math.floor(3 * (math.random() + math.random())))
  for i = 1, num do
    local angle = (8 * math.pi * math.random())
    local distance = (radius * (math.random() + math.random())) / 4
	local gx = math.floor((math.cos(angle) * distance) + 0.5)
	local gy = math.floor((math.sin(angle) * distance) + 0.5)
	if (grid[gx][gy] < -1) then
	  grid[gx][gy] = depth * (1 - (math.random() * 0.25))
	  for dx = -1, 1 do
	    for dy = -1, 1 do
		  local wx = gx + dx
		  local wy = gy + dy
		  if (grid[wx][wy] < -1) then
	        work_count = work_count + 1
	        work_list[work_count] = { x = wx, y = wy }
			grid[wx][wy] = -1
		  end
		end
	  end
	end
  end

  while (work_count > 0) do
    local ind = 1 + math.floor(work_count * math.random())
	local wl = work_list[ind]
	local gx = wl.x
	local gy = wl.y
	work_list[ind] = work_list[work_count]
	work_list[work_count] = nil
	work_count = work_count - 1
	local near_count = 0
    local near_total = 0

	for dx = -1, 1 do
	  for dy = -1, 1 do
		local val = grid[gx + dx][gy + dy]
		if (val >= 0) then
		  near_count = near_count + 1
		  near_total = near_total + val
		end
	  end
	end

	local avg = (near_total / near_count)
	local dist = math.sqrt((gx * gx) + (gy * gy))
	local ratio = math.max(0, (1 - (dist / bound)))
	local hi = math.min((math.min(1, (ratio + 0.5)) * depth),
	    (avg + math.min(0.5, (avg / depth))))
	local lo = math.max(math.max(0, ((ratio - 0.5) * depth)), (avg - 1.5))
	grid[gx][gy] = (lo + ((hi - lo) * math.random()))

	for dx = -1, 1 do
	  for dy = -1, 1 do
	    local wx = gx + dx
		local wy = gy + dy
		local val = grid[wx][wy]
		if ((val < -1) and (wx > -bound) and (wx < bound) and
		    (wy > -bound) and (wy < bound)) then
		  local ncount = 0
	      for ex = -1, 1 do
	        for ey = -1, 1 do
		      if (grid[wx + ex][wy + ey] >= 0) then ncount = ncount + 1 end
			end
		  end
		  if (ncount > 2) then
	        work_count = work_count + 1
	        work_list[work_count] = { x = wx, y = wy }
			grid[wx][wy] = -1		  
		  end
		end
	  end
	end
  end

  return grid
end

local function align_update_water(entry)
  local grid = random_patch_distribution(25, 10)

  local angle = (8 * math.pi * math.random())
  local distance = (40 * (1 + math.random() + math.random()))
  local px = entry.position.x + math.floor((math.cos(angle) * distance) + 0.5)
  local py = entry.position.y + math.floor((math.sin(angle) * distance) + 0.5)

  local oldtiles = entry.surface.find_tiles_filtered{
      area={{px-25, py-25}, {px+25, py+25}}}

  local oldnames = { }
  for tx = -24, 24 do
    oldnames[tx] = { }
  end

  for _, tile in pairs(oldtiles) do
    local tx = math.floor(tile.position.x - px)
	local ty = math.floor(tile.position.y - py)
	if ((tx >= -24) and (tx <= 24)) then
	  oldnames[tx][ty] = tile.name
	end
  end

  local new_tiles = { }
  local new_count = 0
  for gx = -24, 24 do
    for gy = -24, 24 do
	  local val = grid[gx][gy]
	  if (val > 0) then
	    local oldname = oldnames[gx][gy]
	    local oldlvl = 0
		if (oldname ~= nil) then oldlvl = water_level(oldname) end
		local newname = nil
		if (val > 6) then 
		  if (oldlvl < 3) then newname = "deepwater" end
		elseif (val > 3) then
		  if (oldlvl < 2) then newname = "water" end
		elseif (val > 1.4) then
		  if (oldlvl < 1) then newname = "water-shallow" end
		elseif ((val > 0.5) and (oldlvl < 1) and (oldname ~= nil)) then
		  newname = beach_tile(oldname)
		  if ((newname == oldname) or (newname == "nuclear-ground")) then
		    newname = nil
		  end
		end
		if (newname ~= nil) then
		  new_count = new_count + 1
		  new_tiles[new_count] = { name = newname,
		      position = {(px + gx), (py + gy)} }
		end
	  end
	end
  end

  entry.surface.set_tiles(new_tiles)
  align_add_queue({
    state = ALIGN_SURVEY, player = entry.player,
	surface = entry.surface, position = entry.position
  })
  return true
end


local resource_table = {
  { name = "iron-ore", amount = 200,
      density = 100, radius = 21, depth = 9 },
  { name = "nullius-bauxite", amount = 160,
      density = 85, radius = 18, depth = 8 },
  { name = "nullius-sandstone", amount = 150,
      density = 90, radius = 17, depth = 8 },
  { name = "lambent-nil-phosphorite", mod = "lambent-nil",
      amount = 10, density = 25, radius = 4, depth = 2 }
}

local function align_update_survey(entry)
  local px = entry.position.x
  local py = entry.position.y
  local box = {{px - 144, py - 144}, {px + 144, py + 144}}
  for ind, resource in pairs(resource_table) do
    if ((resource.mod == nil) or script.active_mods[resource.mod]) then
      local count = entry.surface.count_entities_filtered{
	      area = box, limit = (resource.amount + 1), name = resource.name }
	  if (count < resource.amount) then
	    align_add_queue({
          state = ALIGN_RESOURCE, resource = ind,
	      surface = entry.surface, position = entry.position
        })
	  end
	end
  end
  align_add_queue({
    state = ALIGN_LANDING, player = entry.player,
	surface = entry.surface, position = entry.position
  })
  return true
end

local function align_update_spawn_resource(entry)
  local surface = entry.surface
  local px = entry.position.x
  local py = entry.position.y
  local pos = nil
  local best = nil

  for attempt = 1, 8 do
    local angle = (8 * math.pi * math.random())
    local distance = (40 * (1 + math.random() + math.random()))
    local sx = px + math.floor((math.cos(angle) * distance) + 0.5)
    local sy = py + math.floor((math.sin(angle) * distance) + 0.5)
	local a = {{sx - 16, sy - 16}, {sx + 16, sy + 16}}
	local water_count = surface.count_tiles_filtered{
	    area = a, limit = 65, name = waterset }
	if (water_count < 64) then
	  local resource_count = surface.count_entities_filtered{
	      area = a, limit = 65, type = "resource" }
	  local score = (water_count + resource_count)
	  if ((score < 64) and ((best == nil) or (score < best))) then
		best = score
		pos = { x = sx, y = sy }
	  end
    end
  end
  if (pos == nil) then return true end

  local box = {{pos.x - 12, pos.y - 12}, {pos.x + 12, pos.y + 12}}
  surface.destroy_decoratives{ area = box }
  local entities = surface.find_entities_filtered{area = box,
      type = {"cliff", "simple-entity"}}
  for _, e in pairs(entities) do
    if (e.valid) then
	  e.destroy({do_cliff_correction = true})
	end
  end

  local resource = resource_table[entry.resource]
  local radius = resource.radius
  local density = resource.density
  local grid = random_patch_distribution(radius, resource.depth)

  for gx = -radius, radius do
    for gy = -radius, radius do
	  local val = grid[gx][gy]
	  if (val > 0.25) then
	    local c = { x = (pos.x + gx + 0.5), y = (pos.y + gy + 0.5) }
		if ((surface.count_entities_filtered{ limit = 2,
		    area={{c.x - 0.49, c.y - 0.49}, {c.x + 0.49, c.y + 0.49}}} < 1)
			and (surface.count_tiles_filtered{ limit = 2,
			    area = {{c.x - 1.9, c.y - 1.9}, {c.x + 1.4, c.y + 1.4}},
				name = waterset} < 1)) then
		  local count = math.floor(val * density * (1 + (2 * math.random())))
          surface.create_entity({name=resource.name, amount=count, position=c})
        end
	  end
	end
  end
  return true
end


local function align_update_landing(entry)
  local player = entry.player
  local faction = create_faction(player)
  local pos = entry.position
  faction.set_spawn_position(pos, entry.surface)
  pos = { x = (pos.x + ((math.random() - math.random()) * 24)),
      y = (pos.y + ((math.random() - math.random()) * 24)) }
  landing_site(entry.surface, pos, faction)

  align_add_queue({
    state = ALIGN_TELEPORT,
    player = player, force = faction,
	surface = entry.surface, position = pos
  })
  return true  
end

local function align_update_teleport(entry)
  local surface = entry.surface
  local pos = entry.position
  entry.force.chart(surface,
	  {{pos.x - 150, pos.y - 150}, {pos.x + 150, pos.y + 150}})

  local player = entry.player
  pos = {pos.x + ((math.random() - math.random()) * 24),
	  pos.y + ((math.random() - math.random()) * 24)}
  pos = surface.find_non_colliding_position(
      player.character.name, pos, 0, 1)

  player.teleport(pos, surface, true)
  player.force = entry.force
  equip_player(player)

  if (entry.summons ~= nil) then
    entry.force.print({"alignment.align-msg",
	    {"alignment.faction-summoned", player.name, entry.summons}})
  end

  if (script.active_mods["Companion_Drones"]) then
    align_add_queue({
      state = ALIGN_COMPANION,
	  surface = surface
    })
  end
  return true  
end

local function align_update_companion(entry)
  fuel_companion_drones(entry.surface)
  return true
end

local function align_update_transponder(entry)
  local source = entry.source
  if ((source == nil) or (not source.valid)) then return true end
  local force = entry.force
  local target_entry = lookup_force(force)
  if (target_entry == nil) then return true end

  local tags = target_entry.tags
  local old_tag = tags[force.name]
  if (old_tag ~= nil) then
    tags[force.name] = nil
	if (old_tag.valid) then
	  old_tag.destroy()
	end
  end

  local new_tag = force.add_chart_tag(source.surface,
      {position=source.position,
	      icon={type="item", name="nullius-align-transponder"},
		  text=source.player.name, last_user=source.player})
  tags[force.name] = new_tag
  return true
end


function update_align()
  if (not global.nullius_alignment) then return end
  local head = global.nullius_align_queue_head
  if (head == nil) then return end

  if ((head.delay ~= nil) and (game.tick < head.delay)) then
    if (head == global.nullius_align_queue_tail) then return end
	global.nullius_align_queue_head = head.next
	head.next = nil
	align_add_queue(head)
	head = global.nullius_align_queue_head
	if ((head.delay ~= nil) and (game.tick < head.delay)) then return end
  end

  local ret = true
  if (head.state == ALIGN_TRANSMITTER) then
    ret = align_update_transmitter(head)
  elseif (head.state == ALIGN_SEARCH) then
    ret = align_update_search(head)
  elseif (head.state == ALIGN_VERIFY) then
    ret = align_update_verify_land(head)
  elseif (head.state == ALIGN_WATER) then
    ret = align_update_water(head)
  elseif (head.state == ALIGN_SURVEY) then
    ret = align_update_survey(head)
  elseif (head.state == ALIGN_RESOURCE) then
    ret = align_update_spawn_resource(head)
  elseif (head.state == ALIGN_LANDING) then
    ret = align_update_landing(head)
  elseif (head.state == ALIGN_TELEPORT) then
    ret = align_update_teleport(head)
  elseif (head.state == ALIGN_COMPANION) then
    ret = align_update_companion(head)
  elseif (head.state == ALIGN_TRANSPONDER) then
    ret = align_update_transponder(head)
  elseif (head.state == ALIGN_ABSORB_CHART) then
    ret = align_update_absorb_chart(head)
  elseif (head.state == ALIGN_ABSORB_ENTITY) then
    ret = align_update_absorb_entity(head)
  elseif (head.state == ALIGN_ABSORB_TECH) then
    ret = align_update_absorb_tech(head)
  elseif (head.state == ALIGN_ABSORB_CONVERT) then
    ret = align_update_absorb_convert(head)
  elseif (head.state == ALIGN_ABSORB_UNSHARE) then
    ret = align_update_absorb_unshare(head)
  end

  if (ret) then
    if (head == global.nullius_align_queue_tail) then
	  global.nullius_align_queue_tail = nil
	end
    global.nullius_align_queue_head = head.next
  end
end


local function check_entity_force(entity)
  if ((entity == nil) or (not entity.valid)) then return nil end
  local entry = lookup_force(entity.force)
  if ((entry == nil) or (entry.absorbed ~= nil)) then return nil end
  return entity
end

local function check_entity_player(entity)
  if (entity.type ~= "character") then return false end
  local player = entity.player
  if ((player == nil) or (not player.valid)) then return false end
  return true
end


local function align_conscript_character(target, source)
  if (not check_entity_player(target)) then return end
  local player = target.player
  local oldforce = target.force
  if (player_has_identification(player) and
      faction_has_identification(oldforce)) then
    if (check_entity_player(source)) then
      source.player.print({"alignment.align-msg",
	        {"alignment.align-protected-identity"}})
	end 
    return	  
  end
  local newforce = source.force
  convert_player_faction(player, newforce)
  check_faction_empty(oldforce, newforce, target)
end

local function align_conscript_building(target, source)
  local oldforce = target.force
  if (faction_has_identification(oldforce)) then
    for _, player in pairs(oldforce.connected_players) do
      if (player.valid and
	      (player.controller_type == defines.controllers.character) and
	      (player.character ~= nil) and player.character.valid and
	      (player.character.type == "character") and
		  player_has_identification(player)) then
		if (check_entity_player(source)) then
          source.player.print({"alignment.align-msg",
	            {"alignment.align-guarded-identity"}})
	    end 
	    return
	  end
    end
  end

  local newforce = source.force
  target.force = newforce
  if (check_faction_empty(oldforce, newforce, target)) then return end

  local lab_count = target.surface.count_entities_filtered{
      force = oldforce, type = "lab", limit = 2 }
  if (lab_count >= 1) then return end

  schedule_absorb_faction(oldforce, newforce, target)  
end

local function align_effect_conscription(target, source)
  if (source.force == target.force) then return end
  local entry = lookup_force(target.force)
  if (entry == nil) then return end
  if (entry.has_transmitter) then
    if (check_entity_player(source)) then
      source.player.print({"alignment.align-msg",
	        {"alignment.align-protected-transmitter"}})
	end 
    return
  end
  if (not faction_has_identification(source.force)) then
    if (check_entity_player(source)) then
      source.player.print({"alignment.align-msg",
	        {"alignment.align-no-identification"}})
	end 
    return
  end
  if (target.type == "character") then
    align_conscript_character(target, source)
  else
    align_conscript_building(target, source)
  end
end


local function align_effect_transponder(source)
  if (not global.nullius_alignment) then return end
  local source_entry = lookup_force(source.force)
  if (source_entry == nil) then return end
  if (not check_entity_player(source)) then return end

  local x = math.floor((source.position.x) + 0.5)
  local y = math.floor((source.position.y) + 0.5)
  source.force.print({"alignment.align-msg",
      {"alignment.align-transponder-self",
	      source.player.name, source_entry.name, x, y}})

  for _, force in pairs(game.forces) do
    if ((force ~= newforce) and (lookup_force(force) ~= nil)) then
	  local radar_count = source.surface.count_entities_filtered{
          force = force, type = "radar", limit = 2 }
      if (radar_count >= 1) then
	    force.chart(source.surface, {{x - 84, y - 84}, {x + 84, y + 84}})
	    force.print({"alignment.align-msg",
	        {"alignment.align-transponder-other",
		        source_entry.name, x, y}})
		align_add_queue({
          state = ALIGN_TRANSPONDER, delay = (game.tick + 60),
          force = force, source = source
        })
	  end
	end
  end
end


local function align_set_invite_status(source, target, id)
  if (source.force == target.force) then return false end
  if (not check_entity_player(target)) then return false end
  if (not check_entity_player(source)) then return false end
  if (not faction_has_identification(source.force)) then
    source.player.print({"alignment.align-msg",
	        {"alignment.align-no-identification"}})
    return false
  end
  global.nullius_align_invite_status[source.player.index] = {
    target = target.player, ident = id, tick = game.tick,
	tforce = target.force, sforce = source.force
  }
  return true
end

local function align_get_invite_status(entity, other)
  local invite = global.nullius_align_invite_status[entity.player.index]
  if ((invite == nil) or (invite.sforce ~= entity.force)) then return nil end
  if (game.tick > (invite.tick + 36000)) then return nil end
  if (invite.target ~= other.player) then return nil end
  if (invite.tforce ~= other.force) then return nil end
  return invite
end

local function align_match_invite_status(target, source)
  local tinvite = align_get_invite_status(target, source)
  if (tinvite == nil) then return end
  local sinvite = align_get_invite_status(source, target)
  if ((sinvite == nil) or (sinvite.ident == tinvite.ident)) then return end

  local oldforce = target.force
  convert_player_faction(target.player, source.force)
  check_faction_empty(oldforce, source.force, target)
  global.nullius_align_invite_status[target.player.index] = nil
  global.nullius_align_invite_status[source.player.index] = nil
end

local function align_effect_identification(target, source)
  if (align_set_invite_status(source, target, true)) then
    align_match_invite_status(source, target)
  end
end

local function align_effect_invitation(target, source)
  if (align_set_invite_status(source, target, false)) then
    align_match_invite_status(target, source)
  end
end


function align_effect(event, suffix)
  if (not global.nullius_alignment) then return end
  local target = check_entity_force(event.target_entity)
  local source = check_entity_force(event.source_entity)
  if ((target == nil) or (source == nil)) then return end

  if (suffix == "conscription-ray") then
    align_effect_conscription(target, source)
  elseif (suffix == "transponder") then
    align_effect_transponder(source)
  elseif (suffix == "identification-card") then
    align_effect_identification(target, source)
  elseif (suffix == "invitation-card") then
    align_effect_invitation(target, source)
  end
end


function build_transmitter(entity)
  if (not global.nullius_alignment) then return end
  if (global.nullius_align_transmitters == nil) then
    global.nullius_align_transmitters = { }
  end
  global.nullius_align_transmitters[entity.unit_number] = {
    entity = entity, force = entity.force
  }
  script.register_on_entity_destroyed(entity)
  local force_entry = lookup_force(entity.force)
  if (force_entry == nil) then return end
  force_entry.has_transmitter = true
end

function remove_transmitter(unit)
  if (global.nullius_align_transmitters == nil) then return end
  local trans_entry = global.nullius_align_transmitters[unit]
  if (trans_entry == nil) then return end
  global.nullius_align_transmitters[unit] = nil
  local force_entry = lookup_force(trans_entry.force)
  if (force_entry == nil) then return end
  force_entry.has_transmitter = false

  for u, e in pairs(global.nullius_align_transmitters) do
    if ((e == nil) or (e.force == nil) or (not e.force.valid) or
	    (e.entity == nil) or (not e.entity.valid)) then
	  global.nullius_align_transmitters[u] = nil
	elseif (f == force) then
	  force_entry.has_transmitter = true
	  return
	end
  end
end
