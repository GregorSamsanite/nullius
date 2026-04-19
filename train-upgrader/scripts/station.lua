function special_stop(stop)
  local conds = stop.wait_conditions
  if (conds == nil) then return false end
  local wc = conds[1]
  if ((wc == nil) or (conds[2] ~= nil)) then return false end
  if (wc.type ~= "time") then return false end
  if (wc.compare_type ~= "and") then return false end
  if (wc.ticks ~= 36007) then return false end
  return true
end

function insert_train_schedule(train, station, cs_train)
  if ((not train.valid) or train.manual_mode) then return false end
  local sched = train.schedule
  if (sched == nil) then return false end
  local stop_name = station.stop.backer_name
  local hi = -1
  for i,r in pairs(sched.records) do
    if (i > hi) then hi = i end
    if (special_stop(r)) then return false end
  end

  local ind = hi + 1
  sched.records[ind] = { station = stop_name,
      wait_conditions = {{type="time", compare_type="and", ticks=36007}} }
  if cs_train then
    remote.call("cybersyn", "remove_train", train.id)
    if not cs_train.use_any_depot then
      table.insert(
        sched.records, 1,
        remote.call("cybersyn", "create_direct_to_station_order", train.station)
      )
      ind = 3
    end
  end
  station.pending[train.id] = {
    train = train,
    tick = game.tick,
	current = sched.current
  }
  train.schedule = sched
  train.go_to_station(ind)
  if (train.valid and (train.state == defines.train_state.no_path)) then
    release_train_schedule(train, station)
  end
  return true
end

function release_train_schedule(train, station)
  if ((train == nil) or (not train.valid)) then return end
  local pending = station.pending[train.id]
  station.pending[train.id] = nil
  local sched = train.schedule
  local name = nil
  if (station.stop.valid) then
    name = station.stop.backer_name
  end
  local found = nil
  local hi = -1
  for i,r in pairs(sched.records) do
    if (i > hi) then hi = i end
    if (((r.station == name) or (name == nil)) and special_stop(r)) then
	  found = i
	end
  end

  if ((found == nil) or (hi < found)) then return end
  if (found < hi) then
    for i = found,(hi - 1) do 
	  sched.records[i] = sched.records[i + 1]
	end
  end

  sched.records[hi] = nil
  if (pending ~= nil) then
    sched.current = pending.current
  end
  if (sched.current >= hi) then
    sched.current = 1
  end
  train.schedule = sched
  train.manual_mode = false
end


function init_station(entity, unit_list, supplier_list, receiver_list)
  unit_list[entity.unit_number] = entity
  local entry = { stop = entity, units = unit_list,
      suppliers = supplier_list, receivers = receiver_list,
	  train_count = 0, train_index = 0, last_refresh = 0,
	  hold = false, pending = { } }
  for u, _ in pairs(unit_list) do
    storage.unit_table[u] = entry
  end 

  if (storage.station_head == nil) then
    entry.next = entry
	  entry.prev = entry
	  storage.station_head = entry
  else
    entry.prev = storage.station_head
	  entry.next = entry.prev.next
	  entry.prev.next = entry
	  entry.next.prev = entry
  end

  --local stops = entity.force.get_train_stops{name = entity.backer_name}
  local stops = game.train_manager.get_train_stops{force = entity.force, station_name = entity.backer_name}
  
  if (stops[2] ~= nil) then
    entry.old_name = entity.backer_name
	  entity.backer_name = "Train_Updater_" .. entity.unit_number
  end
end

function delete_station(station, no_rename)
  if (station.next == station) then
    storage.station_head = nil
  else
    station.next.prev = station.prev
	station.prev.next = station.next
	if (storage.station_head == station) then
	  storage.station_head = station.next
	end
  end
  station.next = nil
  station.prev = nil

  for _, pend in pairs(station.pending) do
    release_train_schedule(pend.train, station)
  end
  for unit, entity in pairs(station.units) do
    storage.unit_table[unit] = nil
  end

  if ((station.old_name ~= nil) and (not no_rename) and
      station.stop.valid) then
    station.stop.backer_name = station.old_name
  end
end
