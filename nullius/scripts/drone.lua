function scout_effect(event, range, halt)
  local source = event.source_entity
  if ((source ~= nil) and source.valid) then
    local s = game.surfaces[event.surface_index]
    local px = event.target_position.x
    local py = event.target_position.y
    local d = 16 + (range * 32)
    local bound = {{x = (px - d), y = (py - d)}, {x = (px + d), y = (py + d)}}
    source.force.chart(s, bound)
	if (halt) then s.force_generate_chunk_requests() end 
  end
end

function area_center(event)
  local px = event.target_position.x + 16
  local py = event.target_position.y + 16
  return {x = (px - (px % 32)), y = (py - (py % 32))}
end

function tile_center(event)
  local px = event.target_position.x
  local py = event.target_position.y
  return {x = ((px - (px % 1)) + 0.5), y = ((py - (py % 1)) + 0.5)}
end

function area_bound(center, size)
  return {{(center.x - size), (center.y - size)}, {(center.x + size), (center.y + size)}}
end

function rectangle_bound(center, sizex, sizey)
  return {{(center.x - sizex), (center.y - sizey)}, {(center.x + sizex), (center.y + sizey)}}
end

function corner_offset(center, distance, direction)
  local corner = {[1] = {-1, -1}, [2] = {1, -1}, [3] = {-1, 1}, [4] = {1, 1} }
  local c = corner[direction]
  return {x = (center.x + (c[1] * distance)), y = (center.y + (c[2] * distance))}
end


function demolition_effect(event, range)
  scout_effect(event, math.floor((range + 31) / 32))
  local s = game.surfaces[event.surface_index]
  local a = area_bound(area_center(event), range)
  local source = event.source_entity
  local force = nil
  if ((source ~= nil) and source.valid) then force = source.force end
  s.destroy_decoratives{area=a}
  local entities = s.find_entities(a)
  for _, e in pairs(entities) do
    if (e.valid and e.is_entity_with_health and e.destructible and (e ~= source)) then
	  if (force ~= nil) then
        e.damage(30000, force, "explosion", source)
	  else
	    e.destroy({do_cliff_correction = true})
	  end
    end
  end

  entities = s.find_entities(a)
  for _, e in pairs(entities) do
    if (e.valid and not e.is_entity_with_health and
        (e.type ~= "entity-ghost") and (e.type ~= "explosion") and
	    (e.type ~= "projectile") and (e.type ~= "artillery-projectile") and
        (e.type ~= "trivial-smoke") and (e.type ~= "particle-source") and
		(e.type ~= "resource")) then
      e.destroy({do_cliff_correction = true})
    end
  end
  s.destroy_decoratives{area=a}
end

function safe_demolition(event, size)
  local s = game.surfaces[event.surface_index]
  local center = area_center(event)
  local a = area_bound(center, size)
  local source = event.source_entity
  local force = nil
  if ((source ~= nil) and source.valid) then force = source.force end
  s.destroy_decoratives{area=a}
  local entities = s.find_entities(a)
  for _, e in pairs(entities) do
    if (e.valid and e.is_entity_with_health and e.destructible and (e ~= source) and
        (e.type == "simple-entity") and (string.find(e.name, "rock") ~= nil)) then
	  if (force ~= nil) then
        e.damage(30000, force, "explosion", source)
	  else
        e.destroy({do_cliff_correction = true})	    
	  end
    end
  end

  entities = s.find_entities(area_bound(center, (size + 3)))
  for _, e in pairs(entities) do
    if (e.valid and ((e.type == "item-entity") or (e.type == "optimized-decorative") or
          (e.type == "cliff") or (e.type == "rail-remnants") or
		  (e.type == "fish") or (e.type == "tile-ghost") or
      ((e.type == "corpse") and (e.name ~= "transport-caution-corpse") and
                 (e.name ~= "invisible-transport-caution-corpse")))) then
      e.destroy({do_cliff_correction = true})
    end
  end
end


function terraform_score(name)
  if (string.sub(name, 1, 8) == "mineral-") then
    if (string.sub(name, 9, 18) == "aubergine-") then
      return 1.25
    elseif (string.sub(name, 9, 14) == "black-") then
      return 1
    elseif (string.sub(name, 9, 15) == "purple-") then
      return 1.5
    elseif (string.sub(name, 9, 15) == "violet-") then
      return 1.5
  end
  elseif (string.sub(name, 1, 9) == "volcanic-") then
    return 2
  end
  return 0
end

function excavation_effect(event)
  local surface = game.surfaces[event.surface_index]
  local center = area_center(event)
  surface.request_to_generate_chunks(center, 4)
  surface.force_generate_chunk_requests()
  demolition_effect(event, 80)
  local score = excavate_area(surface, center, false)
  if ((event.source_entity ~= nil) and event.source_entity.valid) then
    bump_mission_goal(9, score, event.source_entity.force)
  end
end

function shallow_excavation_effect(event)
  local surface = game.surfaces[event.surface_index]
  local center = area_center(event)
  surface.request_to_generate_chunks(center, 4)
  surface.force_generate_chunk_requests()
  scout_effect(event, 3)
  safe_demolition(event, 64)
  local score = excavate_area(surface, center, true)
  if ((event.source_entity ~= nil) and event.source_entity.valid) then
    bump_mission_goal(9, (score * 0.5), event.source_entity.force)
  end
end

function terraforming_effect(event, tile, terraform_mult)
  local surface = game.surfaces[event.surface_index]
  local center = area_center(event)
  surface.request_to_generate_chunks(center, 4)
  surface.force_generate_chunk_requests()
  scout_effect(event, 3)
  safe_demolition(event, 80)
  local score = landfill_area(surface, center, tile)
  if ((event.source_entity ~= nil) and event.source_entity.valid) then
    bump_mission_goal(9, (score * terraform_mult), event.source_entity.force)
  end
end


function paving_effect(event, tile, dirt)
  local surface = game.surfaces[event.surface_index]
  local center = area_center(event)
  surface.request_to_generate_chunks(center, 3)
  surface.force_generate_chunk_requests()
  scout_effect(event, 3)
  safe_demolition(event, 64)

  local cx = center.x - 0.5
  local cy = center.y - 0.5
  local tiles = surface.find_tiles_filtered{area=area_bound(center, 67)}
  local newind = 0
  local newtiles = { }
  local newind2 = 0
  local newtiles2 = { }

  for _,t in pairs(tiles) do
    local newname = nil
	local oname = t.name
	local dx = math.abs(t.position.x - cx)
	local dy = math.abs(t.position.y - cy)
	local dist = math.max(dx, dy)

	if (dist < 64) then
	  if (oname:find("water")) then
	    newname = dirt
	    newind2 = newind2 + 1
        newtiles2[newind2] = {name = tile, position = t.position}
	  else
	    newname = tile
	  end
	elseif (dist < 65) then
	  if ((oname == "water") or (oname == "deepwater")) then
	    newname = "water-shallow"
	  elseif ((oname == "water-green") or (oname == "deepwater-green")) then
		newname = "water-mud"
	  end
	elseif (dist < 66) then
	  if (oname == "deepwater") then
	    newname = "water"
	  elseif (oname == "deepwater-green") then
		newname = "water-green"
	  end
	end

	if (newname ~= nil) then
	  newind = newind + 1
      newtiles[newind] = {name = newname, position = t.position}
	end
  end

  surface.set_tiles(newtiles, true, "abort_on_collision")
  if (newind2 > 0) then
    surface.set_tiles(newtiles2, true, "abort_on_collision")
  end
end


local function clear_radius(event, size)
  scout_effect(event, 1)
  safe_demolition(event, (size+4))
  local s = game.surfaces[event.surface_index]
  local c = tile_center(event)
  local a = area_bound(c, (size+2))
  local newtiles = { }
  local tiles = s.find_tiles_filtered{area=a, position=c, radius=(size+1.5),
    name={"deepwater", "water", "water-shallow",
	    "deepwater-green", "water-green", "water-mud"}}
  local j = 0
  for i, t in pairs(tiles) do
    j = j + 1
    newtiles[j] = {name = "nuclear-ground", position = t.position}
  end
  s.set_tiles(newtiles)
end

function miner_effect(event, ore, size, richness, goal_ind, goal_amount)
  clear_radius(event, size)
  local s = game.surfaces[event.surface_index]
  local c = tile_center(event)
  local a = area_bound(c, (size+2))
  local threshold = size * size * 0.14063
  tiles = s.find_tiles_filtered{area=a, position=c, radius=(size+0.5), collision_mask="ground-tile"}
  for i, t in pairs(tiles) do
    local dx = (t.position.x - c.x)
  local dy = (t.position.y - c.y)
  local dist = (dx * dx) + (dy * dy)
  local value = (5000 + (math.random() * 2000)) * richness
  if (dist > threshold) then
    value = (value * threshold) / dist
  end
  local rpos = {x=(t.position.x+0.5), y=(t.position.y+0.5)}
    local e = s.find_entity(ore, rpos)
  if (e ~= nil) then
    e.amount = e.amount + value
  elseif (s.count_entities_filtered{area={{rpos.x-0.49, rpos.y-0.49},
      {rpos.x+0.49, rpos.y+0.49}}, type="resource"}<1) then
    s.create_entity({name=ore, amount=value, position=rpos})
  end
  end

  local entities = s.find_entities(a)
  for _, e in pairs(entities) do
    if (e.valid and (e.type == "mining-drill")) then
    e.active = false
      e.active = true
  end
  end

  if ((goal_ind ~= nil) and (event.source_entity ~= nil) and
      event.source_entity.valid) then
    bump_mission_goal(goal_ind, goal_amount, event.source_entity.force)
  end
end

local function count_resource(event, name, limit, objective)
  if ((event.source_entity ~= nil) and event.source_entity.valid and
	  (global.nullius_mission_status ~= nil)) then
    local s = game.surfaces[event.surface_index]
	local total = 0
	local entities = s.find_entities_filtered{name=name,
	    type="resource", limit=limit}
	for _, e in pairs(entities) do
      if (e.valid and (e.amount ~= nil)) then
	    total = total + e.amount
	  end
    end
    set_mission_goal(objective, total, event.source_entity.force)
  end
end

function coal_effect(event)
  miner_effect(event, "coal", 13, 0.08)
  count_resource(event, "coal", 40000, 12)
end

function petroleum_effect(event)
  clear_radius(event, 24)
  local s = game.surfaces[event.surface_index]
  local c = tile_center(event)
  local count = 0
  local target = math.floor(9 + (math.random() * 7))
  local attempts = (target * 4)

  for n = 1, attempts do
    if (count < target) then
      local angle = 2 * math.pi * math.random()
      local distance = (math.random() * 32) + (math.random() * 24) - 28
      local p = {x = c.x + (math.cos(angle) * distance), y = c.y + (math.sin(angle) * distance)}
      local overlap_water = s.count_tiles_filtered{area=area_bound(p, 2), limit=2, collision_mask="water-tile"}
      local overlap_obstacle = s.count_entities_filtered{area=area_bound(p, 4), limit=2}
      if ((overlap_obstacle > 0) or (overlap_water > 0)) then
	    if ((n % 3) == 0) then
	      p = s.find_non_colliding_position("crude-oil", p, 8, 1)
		else
		  p = nil
		end
	  end
	  if (p ~= nil) then
        local newentity = s.create_entity({name="crude-oil", position=p,
		    amount=math.floor((25000 + (30001 * math.random())))})
		count = count + 1
      end
	end
  end
  count_resource(event, "crude-oil", 1000, 13)
end


function count_list(lst)
  local count = 0
  for _ in pairs(lst) do
    count = count + 1
  end
  return count
end

function count_decoratives(s, a, l, n)
  local decor_list = s.find_decoratives_filtered{area=a, limit=l, name={n}}
  local count = count_list(decor_list)
  return count
end

function algaculture_effect(event)
  scout_effect(event, 3, true)
  local s = game.surfaces[event.surface_index]
  local c = tile_center(event)
  local a = area_bound(c, 80)
  local land_count = s.count_tiles_filtered{area=a, position=c, radius=80, limit=12000, collision_mask="ground-tile"}
  local land_bonus = 1.0 + (math.min(land_count, 12000) / 6000)
  local nearby_count = count_decoratives(s, a, 120, "nullius-algae")
  local algae_count = math.floor((((500 * math.random()) + 250) * land_bonus) / (math.min(nearby_count, 120) + 30))

  local b = area_bound(c, 66)
  local water_tiles = s.find_tiles_filtered{area=b, position=c, radius=64,
      name={"deepwater", "water", "water-shallow",
	      "deepwater-green", "water-green", "water-mud"}}
  local water_count = count_list(water_tiles)
  algae_count = math.min(algae_count, math.floor(water_count / 3))
  local water_score = {
    ["water"] = 0.6,
    ["deepwater"] = 0.3,
    ["water-green"] = 0.4,
    ["deepwater-green"] = 0.2,
    ["water-shallow"] = 1,
    ["water-mud"] = 0.7
  }

  for _ = 1, algae_count do
    local t = water_tiles[math.floor(math.min(water_count, 1 + (math.random() * water_count)))]
    if (count_decoratives(s, rectangle_bound(t.position, 1, 0.5), 2, "nullius-algae") < 1) then
      local p = t.position
      local nearby1 = count_decoratives(s, rectangle_bound(p, 2, 1), 8, "nullius-algae")
      local nearby2 = count_decoratives(s, rectangle_bound(p, 4, 2), 8, "nullius-algae")
      local nearby3 = count_decoratives(s, rectangle_bound(p, 8, 4), 16, "nullius-algae")
      local nearby4 = count_decoratives(s, rectangle_bound(p, 16, 8), 32, "nullius-algae")
      local odds = (6.6 / (6 + (nearby1 * 8) + (nearby2 * 4) + (nearby3 * 2) + nearby4)) - 0.1
      if (water_score[t.name] ~= nil) then
        odds = odds * water_score[t.name]
      else
        odds = odds * 0.5
      end

	  local rv = math.random()
      if (rv < odds) then
        s.create_decoratives{check_collision=true,
		    decoratives={{name="nullius-algae", position=p, amount=1}}}
		if (count_decoratives(s, rectangle_bound(t.position, 1, 0.5),
		    2, "nullius-algae") > 0) then
	      local near_tiles = s.find_tiles_filtered{area=area_bound(c, 5),
		      position=p, radius=4.6, name={"deepwater", "water", "water-shallow",
	              "deepwater-green", "water-green", "water-mud"}}
		  for _,nt in pairs(near_tiles) do
		    local dx = (nt.position.x - p.x) / 1.2
		    local dy = nt.position.y - p.y
		    local dist = (dx * dx) + (dy * dy)
		    local threshold = (0.8 + rv + odds + math.random())
		    local newtiles = { }
		    local newind = 0
		    if (dist < (threshold * threshold)) then
		      local newname = nil
			  local oldname = nt.name
			  if (oldname == "water") then
			    newname = "water-green"
			  elseif (oldname == "deepwater") then
			    newname = "deepwater-green"
			  elseif (oldname == "water-shallow") then
			    if (dist < ((threshold - 1) * (threshold - 1))) then
				  newname = "water-green"
				else
			      newname = "water-mud"
				end
			  elseif ((oldname == "water-mud") and
			      (dist < ((threshold - 1) * (threshold - 1)))) then
				newname = "water-green"
			  end
			  if (newname ~= nil) then
			    newind = newind + 1
	            newtiles[newind] = { name = newname, position = nt.position }
			  end
	        end
            s.set_tiles(newtiles, true, "abort_on_collision")
		  end
		end
      end
    end
  end

  if ((event.source_entity ~= nil) and event.source_entity.valid) then
    local new_count = count_decoratives(s, nil, 10000, "nullius-algae")
	if (new_count > 0) then
	  create_mission(force)
      set_mission_goal(3, new_count, event.source_entity.force)
	end
  end
end


function horticulture_effect(event)
  local surface = game.surfaces[event.surface_index]
  local center = area_center(event)
  surface.request_to_generate_chunks(center, 6)

  if (global.nullius_grass_queue == nil) then
    global.nullius_grass_queue = { }
	global.nullius_grass_head = 1
	global.nullius_grass_tail = 0
	global.nullius_grass_timer = 0
  end
  global.nullius_grass_tail = global.nullius_grass_tail + 1
  local fillsurface = landfill_surface(surface)
  fillsurface.request_to_generate_chunks(center, 4)
  local force = nil
  if ((event.source_entity ~= nil) and event.source_entity.valid) then
    force = event.source_entity.force
  end
  global.nullius_grass_queue[global.nullius_grass_tail] = {
    surface = surface, center = center, fillsurface = fillsurface,
	force = force
  }
end

function arboriculture_effect(event)
  scout_effect(event, 4)
  local s = game.surfaces[event.surface_index]
  local c = tile_center(event)
  local a = area_bound(c, 96)
  local worm_count = count_decoratives(s, a, 10, "worms-decal")
  local turrets = s.count_entities_filtered{limit=10, area=a,
	  name = {"small-worm-turret", "medium-worm-turret",
	      "big-worm-turret", "behemoth-worm-turret"}}

  local fumarole_count = s.count_entities_filtered{area=area_bound(c, 256),
      position=c, radius=256, limit=20, name="nullius-fumarole"}
  local count = 24 * (1 + (math.random() * 2) - fumarole_count +
      (math.sqrt(worm_count + (turrets * 1.5)) * (2 + (4 * math.random()))))
  local bump_count = 0
  local propnames = {[1] = "temperature", [2] = "moisture"}

  for _ = 1, count do
    local angle = (8 * math.pi * math.random())
    local distance = ((math.random() * 120) + (math.random() * 64) - 92)
    local p = {x = c.x + (math.cos(angle) * distance),
	    y = c.y + (math.sin(angle) * distance)}
    local p = s.find_non_colliding_position("tree-05", p, 6, 0.1)
    if (p ~= nil) then
	  local overlap_obstacle = s.count_entities_filtered{
	      area=area_bound(p, 1.2), limit=2}
      if ((overlap_obstacle < 1) or (math.random() < 0.4)) then
		local near_tiles = s.find_tiles_filtered{area=area_bound(p, 1.8),
		    radius=1.6, collision_mask="ground-tile"}
		local near_num = 0
		for _,nt in pairs(near_tiles) do
		  near_num = near_num + 1
	    end
		local near = near_tiles[math.floor(1 + (math.random() * near_num))]

		if (near ~= nil) then
		  local level = grass_level(near.name)
		  local rf = (2.5 * math.random())
		  if ((rf * rf) < level) then
            local ore_count = s.count_entities_filtered{area=area_bound(p, 21),
		        position=p, radius=20, limit=100, type="resource"}
            if ((ore_count < 1) or (math.random() < (1 - (ore_count / 100)))) then
              local properties = s.calculate_tile_properties(propnames,
			      {[1]=near.position})
              local temp = properties["temperature"][1]
              local moist = properties["moisture"][1]
			  if (temp == nil) then temp = 5 end
			  if (moist == nil) then moist = 0.4 end
			  temp = math.max(0, math.min(1, ((temp + 6) / 52)))
			  moist = math.max(0, math.min(1, moist))
			  local temp_score = (4 * temp * (1 - temp))
			  local moist_score = (1 - ((1 - moist) * (1 - moist)))

			  if ((math.random() * 4) < (2 + temp_score + moist_score)) then
			    local ti = ((2 * temp) + math.random())
			    local mi = ((2 * moist) + math.random())
				local treenum = 8
				if (ti < 1) then
				  if (mi < 1) then treenum = 1
				  elseif (mi > 2) then treenum = 9
				  else treenum = 2 end
				elseif (ti > 2) then
				  if (mi < 1) then treenum = 6
				  elseif (mi > 2) then treenum = 4
				  else treenum = 3 end
				else
				  if (mi < 1) then treenum = 8
				  elseif (mi > 2) then treenum = 7
				  else treenum = 5 end
				end
                if (s.create_entity({name="tree-0"..treenum,
				    amount=1, position=p}) ~= nil) then
				  bump_count = bump_count + 1
				end
			  end
			end
		  end
        end
	  end
	end
  end

  if ((event.source_entity ~= nil) and event.source_entity.valid) then
    bump_mission_goal(5, bump_count, event.source_entity.force)
  end
end

function entomology_effect(event)
  scout_effect(event, 3)
  if (global.nullius_mission_status == nil) then return end

  local s = game.surfaces[event.surface_index]
  local c = tile_center(event)
  local attempt_count = 8 + (math.random() * 9)
  if (global.nullius_mission_status[2] < 35) then
    attempt_count = attempt_count - (34 - global.nullius_mission_status[2])
  end

  for _ = 1, attempt_count do
    local angle = 2 * math.pi * math.random()
    local distance = (math.random() * 96) + (math.random() * 48) - 72
    local p = {x = c.x + (math.cos(angle) * distance), y = c.y + (math.sin(angle) * distance)}
    local o = area_bound(p, 5)
    local overlap_worm = count_decoratives(s, o, 2, "worms-decal")
    local overlap_water = s.count_tiles_filtered{area=o, position=p, radius=4, limit=4,
	    name={"deepwater", "water", "water-shallow",
	        "deepwater-green", "water-green", "water-mud"}}
	overlap_worm = (overlap_worm + s.count_entities_filtered{limit=2, area=o,
	    name = {"small-worm-turret", "medium-worm-turret",
	        "big-worm-turret", "behemoth-worm-turret"}} +
	    s.count_entities_filtered{limit=2, area=area_bound(p, 2)})

    if ((overlap_worm < 1) and (overlap_water < 3)) then
      local a = area_bound(p, 25)
      local grass_count = s.count_tiles_filtered{area=a, position=p, radius=24, limit=1000,
          collision_mask="ground-tile", name={"grass-1", "grass-2", "grass-3", "grass-4"}}
      local tree_count = s.count_entities_filtered{area=a, position=p, radius=24, limit=12, type="tree"}
      local worm_count = count_decoratives(s, a, 10, "worms-decal")
	  worm_count = worm_count + s.count_entities_filtered{limit=10, area=a,
	      name = {"small-worm-turret", "medium-worm-turret",
	          "big-worm-turret", "behemoth-worm-turret"}}
      local odds = ((grass_count / 200) + (tree_count / 2) - worm_count) / 10
	  local rv = math.random()
      if (rv < odds) then
	    local change_ground = false
		local status = 0
		if (global.nullius_mission_status ~= nil) then
		  status = global.nullius_mission_status[6]
		  if (status == nil) then status = 0 end
		  status = math.max(0, math.min(100, status))
		end
		local evolution = (rv + (3 * math.random()) + (status / 40) - 4)

		if (evolution > 0) then
		  local wormsize = "small"
		  if (evolution > 1.8) then wormsize = "behemoth"
		  elseif (evolution > 1.2) then wormsize = "big"
		  elseif (evolution > 0.6) then wormsize = "medium" end
		  local wormname = wormsize.."-worm-turret"
		  s.create_entity({name=wormname, amount=1, position=p})
		  if (s.count_entities_filtered{limit=2,
		      area=o, name = wormname} > 0) then
		    change_ground = true
		  end
		else
          s.create_decoratives{check_collision=true,
		      decoratives={{name="worms-decal", position=p, amount=1}}}
		  if (count_decoratives(s, o, 2, "worms-decal") > 0) then
		    change_ground = true
		  end
		end

		if (change_ground) then
	      local near_tiles = s.find_tiles_filtered{area=o,
		      position=p, radius=5.4, collision_mask="ground-tile"}
		  for _,nt in pairs(near_tiles) do
		    local dx = nt.position.x - p.x
		    local dy = nt.position.y - p.y
		    local dist = (dx * dx) + (dy * dy)
		    local threshold = (1 + (2 * (rv + math.random())))
		    local newtiles = { }
		    local newind = 0
		    if (dist < (threshold * threshold)) then
			  local newname = nil
			  local oldname = nt.name
			  local grasslvl = 0
			  local isgrass = false
			  if (string.sub(oldname, 1, 6) == "grass-") then
			    isgrass = true
			    grasslvl = 5 - (string.byte(oldname, 7) - 48)
			    if ((grasslvl < 1) or (grasslvl > 4)) then grasslvl = 0 end
			  end
			  if (dist < ((threshold - 2.1) * (threshold - 2.1))) then
			    grasslvl = grasslvl - 4
			  elseif (dist < ((threshold - 1.4) * (threshold - 1.4))) then
			    grasslvl = grasslvl - 3
			  elseif (dist < ((threshold - 0.7) * (threshold - 0.7))) then
			    grasslvl = grasslvl - 2
			  else
			    grasslvl = grasslvl - 1
			  end
			  if (grasslvl > 0) then
			    newname = "grass-"..(5 - grasslvl)
			  elseif (grasslvl < -1) then
			    newname = "nuclear-ground"
			  elseif (isgrass or (grasslvl < 0)) then
			    newname = "dry-dirt"
			  end
			  if ((newname ~= nil) and (newname ~= oldname)) then
			    newind = newind + 1
	            newtiles[newind] = { name = newname, position = nt.position }
			  end
	        end
            s.set_tiles(newtiles, true, "abort_on_collision")
		  end
		end
      end
    end
  end

  if ((event.source_entity ~= nil) and event.source_entity.valid) then
    local decals = count_decoratives(s, nil, 1000, "worms-decal")
	local turrets = s.count_entities_filtered{limit=1000,
	    name = {"small-worm-turret", "medium-worm-turret",
		    "big-worm-turret", "behemoth-worm-turret"}}
    set_mission_goal(6, (decals + turrets), event.source_entity.force)
  end
end

function aquaculture_effect(event)
  scout_effect(event, 3)
  if (global.nullius_mission_status == nil) then return end

  local s = game.surfaces[event.surface_index]
  local c = tile_center(event)
  local a = area_bound(c, 128)
  local algae_count = count_decoratives(s, a, 40, "nullius-algae")
  local fish_count = s.count_entities_filtered{area=a, limit=40, type="fish"}
  local attempt_count = ((((math.random() * 31) + (6 * algae_count)) / (10 + fish_count)) - 3) / 2
  if (global.nullius_mission_status[2] < 68) then
    attempt_count = attempt_count - ((68 - global.nullius_mission_status[2]) / 2)
  end

  for _ = 1, attempt_count do
    local angle = 2 * math.pi * math.random()
    local distance = (math.random() * 96) + (math.random() * 48) - 72
    local p = {x = c.x + (math.cos(angle) * distance), y = c.y + (math.sin(angle) * distance)}
    local overlap_land = s.count_tiles_filtered{area=area_bound(p, 1), limit=2, collision_mask="ground-tile"}
    local overlap_obstacle = s.count_entities_filtered{area=area_bound(p, 1.5), limit=2}
    if ((overlap_obstacle < 1) and (overlap_land < 1)) then
      s.create_entity({name="fish", amount=1, position=p})
    end
  end

  if ((event.source_entity ~= nil) and event.source_entity.valid) then
    local new_count = s.count_entities_filtered{name="fish", limit=800}
    set_mission_goal(7, new_count, event.source_entity.force)
  end
end

function husbandry_effect(event)
  scout_effect(event, 4)
  if (global.nullius_mission_status == nil) then return end

  local s = game.surfaces[event.surface_index]
  local c = tile_center(event)
  local p = s.find_non_colliding_position("biter-spawner", c, 12, 1)
  if (p == nil) then
    local near = area_bound(c, 5.6)
    local entities = s.find_entities_filtered{area=near, limit=16,
        type={"unit", "tree", "simple-entity", "item-entity", "cliff"}}
    for _, e in pairs(entities) do
      if (e.valid and e.destructible) then
        e.destroy({do_cliff_correction = true})
      end
    end
	p = s.find_non_colliding_position("biter-spawner", c, 24, 2)
	if (p == nil) then return end
  end
  c = p

  local far = area_bound(c, 160)
  local mid = area_bound(c, 56)
  local fish_count = s.count_entities_filtered{area=far,
      position=c, radius=256, limit=30, type="fish"} +
	  (2 * s.count_entities_filtered{area=mid,
          position=c, radius=80, limit=10, type="fish"})
  local tree_count = s.count_entities_filtered{area=far,
	  position=c, radius=160, limit=120, type="tree"} +
	  (2 * s.count_entities_filtered{area=mid,
	      position=c, radius=56, limit=40, type="tree"})
  local nest_count = s.count_entities_filtered{area=far,
	  position=c, radius=160, limit=25, type="unit-spawner"} +
	  (2 * s.count_entities_filtered{area=mid,
	      position=c, radius=56, limit=10, type="unit-spawner"})
  local fumarole_count = s.count_entities_filtered{area=far,
	  position=c, radius=192, limit=12, name="nullius-fumarole"} +
	  (3 * s.count_entities_filtered{area=mid,
	      position=c, radius=64, limit=4, name="nullius-fumarole"})
  local penalty = 2.5 * (8 + fumarole_count) * (3 + nest_count)
  local bonus = (math.sqrt(fish_count * tree_count) *
	  (global.nullius_mission_status[2] - 55) / 30)
  local odds = math.sqrt(math.max(0, ((bonus / penalty) - 0.1))) - 0.2
  if (math.random() > odds) then return end

  local nest = s.create_entity{name="biter-spawner", amount=1, position=c}
  if (nest == nil) then return end
  local old_status = global.nullius_mission_status[8]
  if (old_status == nil) then old_status = 0 end
  if (old_status == 0) then
    game.forces["enemy"].reset_evolution()
  elseif (game.forces["enemy"].evolution_factor < 0.8) then
    game.forces["enemy"].evolution_factor =
	    game.forces["enemy"].evolution_factor + 0.01
  end

  local source = event.source_entity
  if ((source == nil) or (not source.valid)) then return end
  local force = source.force
  if (force == nil) then return end
  local new_status = 100
  if (not global.nullius_mission_complete) then
    local new_count = s.count_entities_filtered{name="biter-spawner", limit=500}
    set_mission_goal(8, new_count, force)
    new_status = global.nullius_mission_status[8]
  end

  local invasions = global.nullius_invasions
  if (invasions == nil) then invasions = 0 end
  local cooldown = global.nullius_invasion_cooldown
  if (cooldown ~= nil) then
    global.nullius_invasion_cooldown = cooldown - 1
	if (global.nullius_invasion_cooldown < 1) then
	  global.nullius_invasion_cooldown = nil
	end
	return
  end

  if (old_status < 100) then
    local odds = (new_status / 7.5) - invasions - 1.5
    if (math.random() >= odds) then return end
	cooldown = 2
  elseif (invasions < 12) then
    cooldown = 2
  elseif (invasions < 18) then
    cooldown = 1
  end
  invasions = invasions + 1

  local waves = {
    {{2, "small-biter"}},
	{{4, "small-spitter"}},
	{{3, "medium-biter"}},
	{{2, "medium-biter"}, {4, "small-biter"}},
	{{4, "medium-spitter"}, {4, "small-spitter"}},
	{{3, "big-biter"}, {6, "medium-spitter"}},
	{{4, "big-spitter"}, {6, "medium-biter"}},
	{{2, "behemoth-biter"}, {2, "behemoth-spitter"}},
	{{5, "behemoth-biter"}, {5, "behemoth-spitter"}},
	{{40, "big-biter"}},
	{{40, "big-spitter"}},
	{{8, "behemoth-biter"}, {12, "big-spitter"}},
	{{2, "behemoth-biter"}, {2, "behemoth-spitter"}},
	{{8, "behemoth-spitter"}, {12, "big-biter"}},
	{{20, "big-biter"}, {20, "big-spitter"}},
	{{15, "behemoth-biter"}},
	{{15, "behemoth-spitter"}},
	{{5, "behemoth-biter"}},
	{{10, "behemoth-biter"}, {5, "behemoth-spitter"}}
  }

  local waveind = invasions
  if (waveind > 19) then waveind = (10 + (waveind % 10)) end
  local group = nil
  local origin = c
  local breach = ((invasions % 5) == 3)
  if (breach) then origin = source.position end

  for _,w in pairs(waves[waveind]) do
    local unitcount = w[1]
    local unitname = w[2]
	local radius = (5 + (3 * math.sqrt(unitcount)))
	local attempts = (4 * unitcount)
    for i=1,attempts do
	  if (unitcount > 0) then
	    local angle = (8 * math.pi * math.random())
        local distance = ((math.random() * radius) - (math.random() * radius))
        local p = {x = origin.x + (math.cos(angle) * distance),
	        y = origin.y + (math.sin(angle) * distance)}
	    local box = area_bound(p, 1.1)
        local overlap_water = s.count_tiles_filtered{area=box,
		    limit=2, name={"deepwater", "water", "water-shallow",
	            "deepwater-green", "water-green", "water-mud"}}
        local overlap_entity = s.count_entities_filtered{area=box,
		    limit=2, collision_mask = "object-layer"}
		if ((overlap_water < 1) and (overlap_entity < 1)) then
		  local unit = s.create_entity{name=unitname, amount=1, position=p}
		  if ((unit ~= nil) and unit.valid) then
		    unitcount = unitcount - 1
            if (group == nil) then
			  group = s.create_unit_group{position=p}
			  if ((group ~= nil) and (not group.valid)) then group = nil end
			end
			if (group ~= nil) then group.add_member(unit) end
          end
		end
	  end
	end
  end

  if (group == nil) then return end
  local player_odds = 0.4
  if (breach) then
    player_odds = 0.6
    force.print({"objective-description.nullius-escape"})
  end
  local target = source
  local assassinate = false
  global.nullius_invasions = invasions
  global.nullius_invasion_cooldown = cooldown

  if (math.random() < player_odds) then
    local pcount = 0
    for _,player in pairs(force.players) do
	  pcount = pcount + 1
	end
	local target_player = force.players[1 +
	    math.floor(math.random() * pcount)]
	if ((target_player ~= nil) and (target_player.character ~= nil)) then
	  target = target_player.character
	  assassinate = breach
	end
  end

  local command = {
    type = defines.command.compound,
	structure_type = defines.compound_command.return_last
  }
  if (assassinate) then
    command.commands = {
	  {
	    type = defines.command.go_to_location,
		destination_entity = target,
		distraction = defines.distraction.none,
		radius = 24
	  },
	  {
	    type = defines.command.attack,
		target = target,
		distraction = defines.distraction.by_damage
	  },
	  {
	    type = defines.command.go_to_location,
		destination = origin,
		radius = 24
	  }
	}
  else
    command.commands = {
	  {
	    type = defines.command.go_to_location,
		destination = target.position,
		radius = 24
	  },
	  {
	    type = defines.command.attack_area,
		destination = target.position,
		radius = 128
	  },
	  {
	    type = defines.command.wander,
		ticks_to_wait = 18000
	  }
	}
  end
  command.commands[4] = {
    type = defines.command.build_base,
	destination = target.position
  }
  group.set_command(command)
end


function trigger_effect(event)
  if (string.sub(event.effect_id, 1, 8) ~= "nullius-") then return end
  local midfix = string.sub(event.effect_id, 9, 14)
  local suffix = string.sub(event.effect_id, 15, -1)

  if (midfix == "scout-") then
    if (suffix == "drone-effect-1") then
      scout_effect(event, 3, true)
    elseif (suffix == "drone-effect-2") then
      scout_effect(event, 6, true)
	end
  elseif (midfix == "align-") then
    align_effect(event, suffix)
  elseif (midfix == "terraf") then
    if (suffix == "orming-drone-effect-grey") then
      terraforming_effect(event, "landfill", 1)
    elseif (suffix == "orming-drone-effect-tan") then
      terraforming_effect(event, "nullius-land-fill-sand", 1.25)
    elseif (suffix == "orming-drone-effect-brown") then
      terraforming_effect(event, "nullius-land-fill-bauxite", 1.5)
    elseif (suffix == "orming-drone-effect-red") then
      terraforming_effect(event, "nullius-land-fill-iron", 1.25)
    elseif (suffix == "orming-drone-effect-beige") then
      terraforming_effect(event, "nullius-land-fill-limestone", 1)
    end
  elseif (midfix == "paving") then
    if (suffix == "-drone-effect-grey") then
      paving_effect(event, "refined-concrete", "landfill")
    elseif (suffix == "-drone-effect-hazard") then
      paving_effect(event, "refined-hazard-concrete-left", "mineral-beige-sand-1")
    elseif (suffix == "-drone-effect-red") then
      paving_effect(event, "red-refined-concrete", "mineral-brown-sand-2")
    elseif (suffix == "-drone-effect-blue") then
      paving_effect(event, "blue-refined-concrete", "mineral-white-sand-3")
    elseif (suffix == "-drone-effect-yellow") then
      paving_effect(event, "yellow-refined-concrete", "mineral-beige-sand-1")
    elseif (suffix == "-drone-effect-green") then
      paving_effect(event, "green-refined-concrete", "mineral-white-sand-3")
    elseif (suffix == "-drone-effect-purple") then
      paving_effect(event, "purple-refined-concrete", "mineral-brown-sand-2")
    elseif (suffix == "-drone-effect-white") then
      paving_effect(event, "nullius-white-concrete", "mineral-white-sand-3")
    elseif (suffix == "-drone-effect-brown") then
      paving_effect(event, "brown-refined-concrete", "mineral-tan-dirt-6")
    elseif (suffix == "-drone-effect-black") then
      paving_effect(event, "black-refined-concrete", "landfill")
    end    
  elseif (midfix == "guide-") then
    if (suffix == "drone-effect-iron-1") then
        miner_effect(event, "iron-ore", 16, 1.493)
    elseif (suffix == "drone-effect-iron-2") then
        miner_effect(event, "iron-ore", 32, 14.93)
    elseif (suffix == "drone-effect-sandstone-1") then
        miner_effect(event, "nullius-sandstone", 16, 1.243)
    elseif (suffix == "drone-effect-sandstone-2") then
        miner_effect(event, "nullius-sandstone", 32, 12.43)
    elseif (suffix == "drone-effect-bauxite-1") then
        miner_effect(event, "nullius-bauxite", 15, 1.132)
    elseif (suffix == "drone-effect-bauxite-2") then
        miner_effect(event, "nullius-bauxite", 30, 11.32)
    elseif (suffix == "drone-effect-limestone-1") then
        miner_effect(event, "nullius-limestone", 14, 1.05)
    elseif (suffix == "drone-effect-limestone-2") then
        miner_effect(event, "nullius-limestone", 28, 10.5)
    elseif (suffix == "drone-effect-copper-1") then
        miner_effect(event, "copper-ore", 13, 0.941, 10, 1)
    elseif (suffix == "drone-effect-copper-2") then
        miner_effect(event, "copper-ore", 26, 9.41, 10, 40)
    elseif (suffix == "drone-effect-uranium-1") then
        miner_effect(event, "uranium-ore", 10, 0.781, 11, 1)
    elseif (suffix == "drone-effect-uranium-2") then
        miner_effect(event, "uranium-ore", 20, 7.91, 11, 40)
    end
  elseif (midfix == "seques") then
    if (suffix == "tration-coal-drone-effect") then
      coal_effect(event)
    elseif (suffix == "tration-petroleum-drone-effect") then
      petroleum_effect(event)
	end
  elseif (midfix == "excava") then
    excavation_effect(event)
  elseif (midfix == "shallo") then
    shallow_excavation_effect(event)
  elseif (midfix == "algacu") then
    algaculture_effect(event)
  elseif (midfix == "hortic") then
    horticulture_effect(event)
  elseif (midfix == "arbori") then
    arboriculture_effect(event)
  elseif (midfix == "entomo") then
    entomology_effect(event)
  elseif (midfix == "aquacu") then
    aquaculture_effect(event)
  elseif (midfix == "husban") then
    husbandry_effect(event)
  elseif (midfix == "demoli") then
    demolition_effect(event, 64)
  end
end

script.on_event(defines.events.on_script_trigger_effect, trigger_effect)
