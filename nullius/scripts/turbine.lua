local connector_offset = {
  [defines.direction.north] = {x = 0, y = -2.15},
  [defines.direction.east] = {x = 2.15, y = 0},
  [defines.direction.south] = {x = 0, y = 2.15},
  [defines.direction.west] = {x = -2.15, y = 0}
}


local function turbine_priority(name)
  local priority = string.sub(name, -9, -2)
  if (priority == "-backup-") then
    return "backup"
  elseif (priority == "tandard-") then
    return "standard"
  elseif (priority == "exhaust-") then
    return "exhaust"
  end
  return nil
end

local function turbine_type(name)
  local typestr = string.sub(name, 17, 21)
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

  local typestr = turbine_type(entity.name)
  local priority = turbine_priority(entity.name)
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
	remove_turbine(entity.unit_number)
  end

  if (newname ~= nil) then
    update_build_statistics(entity, force, true)
    entity = entity.surface.create_entity{
        name = newname, force = force, direction = entity.direction,
	    position = entity.position, spill = false, raise_built = true,
	    fast_replace = true, create_build_effect_smoke = false}
	if ((entity == nil) or (not entity.valid)) then return end
	update_build_statistics(entity, force, false)
  end

  build_turbine(entity)
  restore_fluid_contents(entity, furnace_contents)
  local newentry = global.nullius_turbines[entity.unit_number]
  if (newentry ~= nil) then
    restore_fluid_contents(newentry.connector, connector_contents)
	restore_fluid_contents(newentry.generator, generator_contents)
  end
end

local function toggle_turbine(entity, entityname, force)
  local typestr = turbine_type(entityname)
  local priority = turbine_priority(entityname)
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

  local newname = "nullius-turbine-" .. typestr .. "-" ..
      priority .. string.sub(entityname, -2, -1)
  if (entity.type == "entity-ghost") then
    replace_fluid_entity(entity, newname, force, nil)
  else
    replace_turbine(entity, force, newname)
  end
end

local function scan_surge_priority(name)
  local offs = 9
  if (string.sub(name, 9, 15) == "mirror-") then
    offs = 16
  end
  local offs2 = offs + 5
  local priority = string.sub(name, offs, offs2)
  if (priority == "surge-") then
	priority = "surge"
  elseif (priority == "priori") then
	priority = "priority"
	offs2 = offs2 + 3
  else
    return nil
  end
  return { priority = priority, offs1 = offs, offs2 = offs2 }
end

local function toggle_surge(entity, entityname, force)
  local surge = scan_surge_priority(entityname)
  if (surge == nil) then return end
  local priority = surge.priority
  if (priority == "surge") then
    priority = "priority"
  else
    priority = "surge"
  end
  local newname = string.sub(entityname, 1, (surge.offs1 - 1)) ..
      priority .. string.sub(entityname, surge.offs2, -1)
  replace_fluid_entity(entity, newname, force, nil)
end


local function scan_hangar_name(name)
  local offs = -3
  local iscon = false
  if (string.sub(name, -15, -3) == "-construction") then
    iscon = true
	offs = -16
  end
  return { prefix = string.sub(name, 1, offs), iscon = iscon }
end

local function toggle_hangar(entity, entityname, force)
  local hangar = scan_hangar_name(entityname)
  local midfix = ""
  if (not hangar.iscon) then midfix = "-construction" end
  local newname = (hangar.prefix .. midfix ..
      string.sub(entityname, -2, -1))
  replace_fluid_entity(entity, newname, force, nil)
end


local function valid_entity_name(entity)
  if ((entity == nil) or (not entity.valid)) then return nil end
  local name = entity.name
  if (entity.type == "entity-ghost") then
    name = entity.ghost_name
  end
  if (string.sub(name, 1, 8) ~= "nullius-") then return nil end
  return name
end

local function is_surge_entity(name)
  local suffix = string.sub(name, -13, -2)
  return ((suffix == "lectrolyzer-") or (suffix == "-compressor-"))
end

local function is_hangar_entity(name)
  local suffix = string.sub(name, 9, 14)
  return ((suffix == "hangar") or (suffix == "relay-"))
end

local function priority_event(event)
  local player = game.players[event.player_index]
  if ((player == nil) or (not player.valid)) then return end
  local target = player.selected
  local name = valid_entity_name(target)
  if (name == nil) then return end

  local force = (target.force or player.force)
  if (string.sub(name, 9, 16) == "turbine-") then
    toggle_turbine(target, name, force)
  elseif (is_surge_entity(name)) then
    toggle_surge(target, name, force)
  elseif (is_hangar_entity(name)) then
    toggle_hangar(target, name, force)
  end
end

script.on_event("nullius-prioritize", function(event)
  priority_event(event)
end)


function entity_paste_event(event)
  local player = game.players[event.player_index]
  if ((player == nil) or (not player.valid)) then return end
  local source = event.source
  local sname = valid_entity_name(source)
  if (sname == nil) then return end
  local target = event.destination
  local tname = valid_entity_name(target)
  if (tname == nil) then return end
  local force = (target.force or player.force)

  if (string.sub(tname, 9, 16) == "turbine-") then
    if (string.sub(sname, 9, 16) ~= "turbine-") then return end
	local ttyp = turbine_type(tname)
    local tpri = turbine_priority(tname)
    if ((ttyp == nil) or (tpri == nil)) then return end
	local spri = turbine_priority(sname)
    if ((spri == nil) or (spri == tpri)) then return end

    local newname = "nullius-turbine-" .. ttyp .. "-" ..
      spri .. string.sub(tname, -2, -1)
    if (target.type == "entity-ghost") then
      replace_fluid_entity(target, newname, force, nil)
    else
      replace_turbine(target, force, newname)
    end
  elseif (is_surge_entity(tname) and is_surge_entity(sname)) then
    local tsurge = scan_surge_priority(tname)
	local ssurge = scan_surge_priority(sname)
    if ((tsurge == nil) or (ssurge == nil)) then return end
	if (tsurge.priority == ssurge.priority) then return end
    toggle_surge(target, tname, force)
  elseif (is_hangar_entity(tname) and is_hangar_entity(sname)) then
    local thang = scan_hangar_name(tname)
	local shang = scan_hangar_name(sname)
	if (thang.iscon == shang.iscon) then return end
	toggle_hangar(target, tname, force)
  end
end

script.on_event(defines.events.on_entity_settings_pasted, entity_paste_event)


function dolly_moved_entity(event)
  if (global.nullius_turbines == nil) then return end
  if (event == nil) then return end
  local entity = event.moved_entity
  if ((entity == nil) or (not entity.valid)) then return end
  if (string.sub(entity.name, 1, 16) ~= "nullius-turbine-") then return end
  local entry = global.nullius_turbines[entity.unit_number]
  if (entry == nil) then return end
  replace_turbine(entity, force, nil)
end


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
