local connector_offset = {
  [defines.direction.north] = {x = 0, y = -2.15},
  [defines.direction.east] = {x = 2.15, y = 0},
  [defines.direction.south] = {x = 0, y = 2.15},
  [defines.direction.west] = {x = -2.15, y = 0}
}


local function turbine_priority(entity)
  local priority = string.sub(entity.name, -9, -2)
  if (priority == "-backup-") then
    return "backup"
  elseif (priority == "tandard-") then
    return "standard"
  elseif (priority == "exhaust-") then
    return "exhaust"
  end
  return nil
end

local function turbine_type(entity)
  local typestr = string.sub(entity.name, 17, 21)
  if (typestr == "open-") then
    return "open"
  elseif (typestr == "close") then
    return "closed"
  end
  return nil
end


function build_turbine(entity)
  if (not (entity.valid and entity.supports_direction)) then return end

  local entry = { }
  if (global.nullius_turbines == nil) then
    global.nullius_turbines = { }
  elseif (global.nullius_turbines[entity.unit_number] == entry) then
    return
  end

  local tier = (string.byte(entity.name, -1) - 48)
  if ((tier < 1) or (tier > 3)) then return end
  local dir = entity.direction
  local offs = connector_offset[dir]
  if (offs == nil) then return end

  local typestr = turbine_type(entity)
  local priority = turbine_priority(entity)
  if ((typestr == nil) or (priority == nil)) then return end

  script.register_on_entity_destroyed(entity)
  global.nullius_turbines[entity.unit_number] = entry

  local pos = entity.position
  entry.connector = entity.surface.create_entity{
      name = "nullius-turbine-connector",
	  force = entity.force, direction = dir,
	  position = {x = (pos.x + offs.x), y = (pos.y + offs.y)}}
  entry.generator = entity.surface.create_entity{
      name = "nullius-turbine-generator-" .. typestr ..
	      "-" .. priority .. "-" .. tier,
	  force = entity.force, direction = dir, position = pos}
  if ((entry.connector == nil) or (entry.generator == nil)) then return end

  if (priority == "exhaust") then
    local revdir = rotate_right[rotate_right[dir]]
	local roffs = connector_offset[revdir]
    entry.vent = entity.surface.create_entity{
        name = "nullius-turbine-vent" .. "-" .. tier,
	    force = entity.force, direction = revdir,
	    position = {x = (pos.x + roffs.x), y = (pos.y + roffs.y)}}
  end
end

local function destroy_if_valid(entity)
  if ((entity ~= nil) and entity.valid) then
    entity.destroy()
  end
end

function remove_turbine(unit)
  if (global.nullius_turbines == nil) then return false end
  local entry = global.nullius_turbines[unit]
  if (entry == nil) then return false end
  global.nullius_turbines[unit] = nil
  destroy_if_valid(entry.connector)
  destroy_if_valid(entry.generator)
  destroy_if_valid(entry.vent)
  return true
end


local function replace_turbine(entity, force, newname)
  local furnace_contents = save_fluid_contents(entity)
  local connector_contents = nil
  local generator_contents = nil
  local entry = global.nullius_turbines[entity.unit_number]
  if (entry ~= nil) then
    connector_contents = save_fluid_contents(entry.connector)
	generator_contents = save_fluid_contents(entry.generator)
  end

  local tierstr = string.sub(entity.name, -2, -1)
  update_build_statistics(entity, force, true)
  remove_turbine(entity.unit_number)

  local newturbine = entity.surface.create_entity{
      name = newname,
	  force = force, direction = entity.direction,
	  position = entity.position, spill = false,
	  fast_replace = true, create_build_effect_smoke = false}

  if ((newturbine ~= nil) and newturbine.valid) then
    build_turbine(newturbine)
	restore_fluid_contents(newturbine, furnace_contents)
	update_build_statistics(newturbine, force, false)
	local newentry = global.nullius_turbines[newturbine.unit_number]
    if (newentry ~= nil) then
      restore_fluid_contents(newentry.connector, connector_contents)
	  restore_fluid_contents(newentry.generator, generator_contents)
    end
  end
end

local function toggle_turbine(entity, force)
  local typestr = turbine_type(entity)
  local priority = turbine_priority(entity)
  if ((typestr == nil) or (priority == nil)) then return end

  if (priority == "backup") then
    priority = "standard"
  elseif (priority == "standard") then
    priority = "exhaust"
  elseif (priority == "exhaust") then
    priority = "backup"
  else
    return
  end

  local newname = "nullius-turbine-" .. typestr .. "-" .. priority .. tierstr
  replace_turbine(entity, force, newname)
end

local function toggle_surge(entity, machinename, force)
  local offs = 9
  if (string.sub(entity.name, 9, 15) == "mirror-") then
    offs = 16
  end

  local offs2 = offs + 5
  local priority = string.sub(entity.name, offs, offs2)
  if (priority == "surge-") then
	priority = "priority"
  elseif (priority == "priori") then
	priority = "surge"
	offs2 = offs2 + 3
  else
    return
  end

  local newname = string.sub(entity.name, 1, (offs - 1)) ..
      priority .. string.sub(entity.name, offs2, -1)
  replace_fluid_entity(entity, newname, force, nil)
end


local function priority_event(event)
  local player = game.players[event.player_index]
  if ((player == nil) or (not player.valid)) then return end
  local target = player.selected
  if ((target == nil) or (not target.valid)) then return end

  if (string.sub(target.name, 1, 8) ~= "nullius-") then return end
  local force = (target.force or player.force)
  if (string.sub(target.name, 9, 16) == "turbine-") then
    toggle_turbine(target, force)
  elseif (string.sub(target.name, -15, -2) == "-electrolyzer-") then
    toggle_surge(target, "electrolyzer", force)
  elseif (string.sub(target.name, -13, -2) == "-compressor-") then
    toggle_surge(target, "compressor", force)
  end
end

script.on_event("nullius-prioritize", function(event)
  priority_event(event)
end)


function convert_all_turbines()
  if (global.nullius_turbines == nil) then
    global.nullius_turbines = { }
  end
  for _,surface in pairs(game.surfaces) do
    local turbines = surface.find_entities_filtered{name=
	    {"nullius-turbine-open-backup-1", "nullius-turbine-open-backup-2",
         "nullius-turbine-open-backup-3", "nullius-turbine-open-standard-1",
         "nullius-turbine-open-standard-2", "nullius-turbine-open-standard-3",
         "nullius-turbine-open-exhaust-2", "nullius-turbine-open-exhaust-3"}}
	for _,turbine in pairs(turbines) do
	  if (turbine.valid) then
        local dir = turbine.direction
		local pos = turbine.position
		local name = turbine.name
		local force = turbine.force
		local surface = turbine.surface
	    turbine.destroy()
		
        local newturbine = surface.create_entity{
            name = name, force = force, direction = dir, position = pos,
		    spill = false, create_build_effect_smoke = false}
        if ((newturbine ~= nil) and newturbine.valid) then
          build_turbine(newturbine)
		end
	  end
	end
  end
end
