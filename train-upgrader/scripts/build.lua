function scan_stop(ts)
  local chests = ts.surface.find_entities_filtered{area = entity_box(ts, 2.9),
      type = "container", name = {"tu-supplier", "tu-receiver"}}
  if ((chests == nil) or (chests[1] == nil)) then return end

  if (storage.unit_table == nil) then
    storage.unit_table = { }
  else
    local entry = storage.unit_table[ts.unit_number]
	if (entry ~= nil) then
	  delete_station(entry)
	end  
  end

  local unit_list = { }
  for _, chest in pairs(chests) do
    if (chest.valid) then
      local entry = storage.unit_table[chest.unit_number]
	  if (entry == nil) then
	    unit_list[chest.unit_number] = chest
	  end
	end
  end

  local supplier_number = 0
  local supplier_list = { }
  local receiver_number = 0
  local receiver_list = { }
  for _, e in pairs(unit_list) do
    if (e.name == "tu-supplier") then
	  supplier_number = supplier_number + 1
	  supplier_list[supplier_number] = e
	elseif (e.name == "tu-receiver") then
	  receiver_number = receiver_number + 1
	  receiver_list[receiver_number] = e
	end
  end

  if ((supplier_number < 1) or (receiver_number < 1)) then return end
  script.register_on_object_destroyed(ts)
  init_station(ts, unit_list, supplier_list, receiver_list)
end


function entity_box(entity, dist)
  local x = entity.position.x
  local y = entity.position.y
  return {{x - dist, y - dist}, {x + dist, y + dist}}
end

function entity_added(entity)
  if (entity.type == "train-stop") then
    scan_stop(entity)
  elseif (string.sub(entity.name, 1, 3) == "tu-") then
    script.register_on_object_destroyed(entity)
    local stops = entity.surface.find_entities_filtered{type = "train-stop",
	    area = entity_box(entity, 2.9)}
    if ((stops == nil) or (stops[2] ~= nil)) then return end
    local ts = stops[1]
    if ((ts == nil) or (not ts.valid)) then return end
    scan_stop(ts)
  end
end


function destroy_station(station, unit)
  if (station == nil) then return end
  local ts = station.stop
  local kill_stop = ((not ts.valid) or (ts.unit_number == unit))
  delete_station(station, kill_stop)
  if (kill_stop) then return end
  scan_stop(ts)
end

function destroy_unit(unit)
  if (storage.unit_table == nil) then return end
  destroy_station(storage.unit_table[unit], unit)
end


function entity_built(event)
  entity_added(event.entity)
end
function entity_raised(event)
  entity_added(event.entity)
end

script.on_event(defines.events.on_built_entity, entity_built)
script.on_event(defines.events.on_robot_built_entity, entity_built)
script.on_event(defines.events.script_raised_revive, entity_raised)


function entity_removed(event)
  if (string.sub(event.entity.name, 1, 3) == "tu-") then
    destroy_unit(event.entity.unit_number)
  end
end
function entity_destroyed(event)
  destroy_unit(event.unit_number)
end

script.on_event(defines.events.on_player_mined_entity, entity_removed)
script.on_event(defines.events.on_robot_mined_entity, entity_removed)
script.on_event(defines.events.on_entity_died, entity_removed)
script.on_event(defines.events.on_object_destroyed, entity_destroyed)