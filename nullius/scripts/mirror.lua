rotate_right = {
  [defines.direction.north] = defines.direction.east,
  [defines.direction.east] = defines.direction.south,
  [defines.direction.south] = defines.direction.west,
  [defines.direction.west] = defines.direction.north
}


function update_build_statistics(entity, force, deconstruct)
  force.entity_build_count_statistics.on_flow(entity.name,
      ((deconstruct and -1) or 1))
end

function save_fluid_contents(entity)
  local ret = { }
  if ((entity ~= nil) and entity.valid and (entity.fluidbox ~= nil)) then
    for i = 1, #entity.fluidbox do
	  ret[i] = entity.fluidbox[i]
    end
  end
  return ret
end

function restore_fluid_contents(entity, contents)
  if ((entity ~= nil) and entity.valid and (contents ~= nil)) then
    for i = 1, #contents do
      entity.fluidbox[i] = contents[i]
    end
  end
end


function replace_fluid_entity(entity, newname, force, dir)
  if (game.entity_prototypes[newname] == nil) then return nil end
  if (dir == nil) then dir = entity.direction end
  if (entity.type == "entity-ghost") then
    local pos = entity.position
	local surface = entity.surface
	local requests = entity.item_requests
	local recipe = nil
	if (entity.ghost_type == "assembling-machine") then
	  recipe = entity.get_recipe()
	end
	entity.destroy()
    entity = surface.create_entity{
        name = "entity-ghost", force = force, direction = dir,
	    position = pos, inner_name = newname,
	    fast_replace = true, create_build_effect_smoke = false}
    if ((entity ~= nil) and entity.valid) then
	  entity.item_requests = requests
	  if (recipe ~= nil) then entity.set_recipe(recipe) end
	end
  else
    local contents = save_fluid_contents(entity)
    update_build_statistics(entity, force, true)
    entity = entity.surface.create_entity{
        name = newname, force = force, direction = dir,
	    position = entity.position, spill = false, raise_built = true,
	    fast_replace = true, create_build_effect_smoke = false}
    if ((entity ~= nil) and entity.valid) then
      restore_fluid_contents(entity, contents)
	  update_build_statistics(entity, force, false)
    end
  end
  if ((entity ~= nil) and entity.valid and (dir ~= entity.direction)) then
    entity.direction = dir
  end
  return entity
end


local function mirror_tier(suffix)
  if ((suffix == "combustion-chamber") or (suffix == "heat-exchanger") or
	  (suffix == "boiler") or (suffix == "chimney")) then
	return 1
  elseif ((suffix == "priority-electrolyzer") or
      (suffix == "flotation-cell") or
      (suffix == "surge-electrolyzer") or (suffix == "hydro-plant")) then
	return 2
  elseif ((suffix == "distillery") or (suffix == "chemical-plant") or
      (suffix == "nanofabricator")) then
    return 3
  end
  return 0
end

local function mirror_event(event)
  local player = game.players[event.player_index]
  if ((player == nil) or (not player.valid)) then return end
  local target = player.selected
  if ((target == nil) or (not target.valid)) then return end

  local name = target.name
  local local_name = target.localised_name
  if (target.type == "entity-ghost") then
    name = target.ghost_name
	local_name = target.ghost_localised_name
  end

  if (string.sub(name, 1, 8) ~= "nullius-") then return end
  local ismirror = (string.sub(name, 9, 15) == "mirror-")
  local offs = ((ismirror and 16) or 9)
  local suffix = string.sub(name, offs, -3)

  local dir = nil
  local tier = mirror_tier(suffix)
  if (tier == 0) then
    return
  elseif ((tier == 2) and (suffix == "flotation-cell")) then
	dir = rotate_right[target.direction]
  end

  local force = (target.force or player.force)
  if ((force == nil) or (not force.valid)) then return end
  local tech = force.technologies["nullius-chirality-" .. tier]
  if ((tech == nil) or (not tech.valid)) then return end
  if (not tech.researched) then
    player.print({"technology-description.nullius-mirror-requirement",
	    tech.localised_name, local_name})
    return
  end

  local newname = ("nullius-" .. ((ismirror and "") or "mirror-") ..
      string.sub(name, offs, -1))
  replace_fluid_entity(target, newname, force, dir)
end

script.on_event("nullius-mirror", function(event)
  mirror_event(event)
end)


local function mineable_result(proto)
  if (proto == nil) then return nil end
  local mineable = proto.mineable_properties
  if ((mineable == nil) or (not mineable.minable)) then return nil end
  if (mineable.products == nil) then return nil end
  local result = mineable.products[1]
  if ((result == nil) or (result.type ~= "item")) then return nil end
  return result.name
end

local function match_pipette(pipette, player, event)
  if (event.tick > (pipette.tick + 7200)) then return nil end
  if (not (pipette.entity.valid and pipette.item.valid)) then return nil end
  local iname = pipette.item.name
  local ename = pipette.entity.name
  local entity = event.created_entity

  if (player.is_cursor_empty()) then return nil end
  if (player.is_cursor_blueprint()) then return nil end
  if ((player.cursor_stack ~= nil) and
      player.cursor_stack.valid_for_read) then
    if (player.cursor_stack.name ~= iname) then return nil end
  else
    if (player.cursor_ghost == nil) then return nil end
	if (player.cursor_ghost.name ~= iname) then return nil end
  end

  if (entity.type == "entity-ghost") then
    if (entity.ghost_name == ename) then return nil end
	local result = mineable_result(entity.ghost_prototype)
	if ((result == nil) or (result ~= iname)) then return nil end
  else
    if (entity.name == ename) then return nil end
    local item = event.item
    if ((item == nil) or (item.name ~= iname)) then return nil end
  end

  pipette.tick = event.tick
  return replace_fluid_entity(entity, ename, player.force, nil)
end
  
function check_pipette(event)
  if ((event == nil) or (global.nullius_pipette == nil)) then return nil end
  local player = game.players[event.player_index]
  if ((player == nil) or (not player.valid)) then return nil end
  local pipette = global.nullius_pipette[player.index]
  if (pipette == nil) then return nil end
  local ret = match_pipette(pipette, player, event)
  if (ret ~= nil) then return ret end
  global.nullius_pipette[player.index] = nil
  return nil
end

function pipette_event(event)
  local player = game.players[event.player_index]
  if ((player == nil) or (not player.valid)) then return end
  if (global.nullius_pipette == nil) then
    global.nullius_pipette = { }
  end
  global.nullius_pipette[player.index] = nil

  local target = player.selected
  if ((target == nil) or (not target.valid)) then return end
  local item = event.item
  if ((item == nil) or (item.place_result == nil)) then return end
  if (string.sub(item.name, 1, 8) ~= "nullius-") then return end
  if (item.place_result.name == target.name) then return end
  if (string.sub(item.name, 9, 19) == "geothermal-") then return end
  local proto = target.prototype
  if (target.type == "entity-ghost") then
	proto = target.ghost_prototype
  end
  local result = mineable_result(proto)
  if ((result == nil) or (item.name ~= result)) then return end
  if (item.place_result.name == proto.name) then return end
  if (string.sub(proto.name, 1, 8) ~= "nullius-") then return end

  global.nullius_pipette[player.index] = {
    item = item,
	entity = proto,
	tick = event.tick
  }
end

script.on_event(defines.events.on_player_pipette, pipette_event)


function check_mirror(entity)
  if ((entity == nil) or (not entity.valid)) then return end
  if (entity.type ~= "entity-ghost") then return end
  local name = entity.ghost_name
  if (string.sub(name, 1, 15) ~= "nullius-mirror-") then return end
  local suffix = string.sub(name, 16, -3)
  local tier = mirror_tier(suffix)
  if (tier == 0) then return end

  local force = entity.force
  if ((force == nil) or (not force.valid)) then return end
  local tech = force.technologies["nullius-chirality-" .. tier]
  if ((tech == nil) or (not tech.valid)) then return end
  if (tech.researched) then return end

  local newname = ("nullius-" .. string.sub(name, 16, -1))
  replace_fluid_entity(entity, newname, force, nil)
end

