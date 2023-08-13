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
  if ((entity ~= nil) and entity.valid and (contest ~= nil)) then
    for i = 1, #entity.fluidbox do
      entity.fluidbox[i] = contents[i]
    end
  end
end


function replace_fluid_entity(entity, newname, force, dir)
  if (game.entity_prototypes[newname] == nil) then return end
  local contents = save_fluid_contents(entity)
  if (dir == nil) then dir = entity.direction end
  update_build_statistics(entity, force, true)
  local newentity = entity.surface.create_entity{
      name = newname, force = force, direction = dir,
	  position = entity.position, spill = false,
	  fast_replace = true, create_build_effect_smoke = false}
  if ((newentity ~= nil) and newentity.valid) then
    restore_fluid_contents(newentity, contents)
	update_build_statistics(newentity, force, false)
	if (dir ~= newentity.direction) then newentity.direction = dir end
  end
end


local function mirror_event(event)
  local player = game.players[event.player_index]
  if ((player == nil) or (not player.valid)) then return end
  local target = player.selected
  if ((target == nil) or (not target.valid)) then return end

  if (string.sub(target.name, 1, 8) ~= "nullius-") then return end
  local ismirror = (string.sub(target.name, 9, 15) == "mirror-")
  local offs = ((ismirror and 16) or 9)
  local suffix = string.sub(target.name, offs, -3)

  local tier = nil
  local dir = nil
  if ((suffix == "combustion-chamber") or (suffix == "heat-exchanger") or
	  (suffix == "boiler")) then
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
  if (not ((tech ~= nil) and tech.valid and tech.researched)) then return end

  local newname = ("nullius-" .. ((ismirror and "") or "mirror-") ..
      string.sub(target.name, offs, -1))
  replace_fluid_entity(target, newname, force, dir)
end

script.on_event("nullius-mirror", function(event)
  mirror_event(event)
end)
