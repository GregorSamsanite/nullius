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
  if ((entity ~= nil) and entity.valid) then
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
  if (game.entity_prototypes[newname] == nil) then return end
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
	entity.item_requests = requests
	if (recipe ~= nil) then entity.set_recipe(recipe) end
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

  local tier = nil
  local dir = nil
  if ((suffix == "combustion-chamber") or (suffix == "heat-exchanger") or
	  (suffix == "boiler") or (suffix == "chimney")) then
	tier = 1
  elseif ((suffix == "priority-electrolyzer") or
      (suffix == "surge-electrolyzer") or (suffix == "hydro-plant")) then
	tier = 2
  elseif (suffix == "flotation-cell") then
    tier = 2
	dir = rotate_right[target.direction]
  elseif ((suffix == "distillery") or (suffix == "chemical-plant")) then
    tier = 3
  elseif (suffix == "nanofabricator") then
	tier = 3
  else
    return
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
