---@namespace train-upgrader
---@type Storage
storage = storage --[[@as Storage]]

local Station = {}

function Station.special_stop(stop)
  local conds = stop.wait_conditions
  if conds == nil then
    return false
  end
  local wc = conds[1]
  if wc == nil or conds[2] ~= nil then
    return false
  end
  if wc.type ~= "time" then
    return false
  end
  if wc.compare_type ~= "and" then
    return false
  end
  if wc.ticks ~= 36007 then
    return false
  end
  return true
end

---@param train LuaTrain
---@param station any
---@param cs_train any
---@return any
function Station.insert_train_schedule(train, station, cs_train)
  if not train.valid or train.manual_mode then
    return false
  end
  local sched = train.get_schedule()
  local stop_name = station.stop.backer_name

  for _, r in pairs(sched.get_records()--[[@cast -?]]) do
    if Station.special_stop(r) then
      return false
    end
  end

  -- save and remove group, so only one train get summoned
  local group = train.group
  train.group = ""

  -- add TU station record to schedule, specific amount of ticks act as indicator
  local go_ind = sched.add_record({
    station = stop_name,
    wait_conditions = { { type = "time", compare_type = "and", ticks = 36007 } },
  })
  if cs_train and cs_train ~= "cs2" then
    remote.call("cybersyn", "remove_train", train.id)
    if not cs_train.use_any_depot then
      local record = remote.call("cybersyn", "create_direct_to_station_order", train.station)
      ---@cast record AddRecordData
      go_ind = sched.add_record(record)
    end
  elseif cs_train and cs_train == "cs2" then
    -- if I remove the group in general, cs2 doesn't need furter special treatment?!
    -- train.group = ""
  end

  station.pending[train.id] = {
    train = train,
    tick = game.tick,
    current = sched.current,
    group = group
  }

  if go_ind ~= nil then
    sched.go_to_station(go_ind)
  end
  -- something went wrong
  if (train.valid and train.state == defines.train_state.no_path) or go_ind == nil then
    train.group = group
    Station.release_train_schedule(train, station)
  end
  return true
end

---@param train LuaTrain
---@param station entry
function Station.release_train_schedule(train, station)
  if train == nil or not train.valid then
    return
  end
  local pending = station.pending[train.id]
  station.pending[train.id] = nil
  local sched = train.get_schedule()
  local name = nil
  local hi = sched.get_record_count()
  ---@cast hi -?
  if station.stop.valid then
    name = station.stop.backer_name
  end
  local found = nil
  if hi == nil then
    return
  end
  for i, r in pairs(sched.get_records() or {}) do
    if (r.station == name or name == nil) and Station.special_stop(r) then
      found = i
    end
  end

  if found == nil then
    return
  else 
    sched.remove_record({ schedule_index = found }--[[@as ScheduleRecordPosition]])
  end
  
  if pending ~= nil then
    train.group = pending.group
    sched.go_to_station(pending.current)
  end
  train.manual_mode = false
end

function Station.init_station(entity, unit_list, supplier_list, receiver_list)
  unit_list[entity.unit_number] = entity
  local entry = {
    stop = entity,
    units = unit_list,
    suppliers = supplier_list,
    receivers = receiver_list,
    train_count = 0,
    train_index = 0,
    last_refresh = 0,
    hold = false,
    pending = {},
  }
  for u, _ in pairs(unit_list) do
    storage.unit_table[u] = entry
  end

  if storage.station_head == nil then
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
  local stops = game.train_manager.get_train_stops({ force = entity.force, station_name = entity.backer_name })

  if stops[2] ~= nil then
    entry.old_name = entity.backer_name
    entity.backer_name = "Train_Updater_" .. entity.unit_number
  end
end

function Station.delete_station(station, no_rename)
  if station.next == station then
    storage.station_head = nil
  elseif station.next ~= nil and station.prev ~= nil then
    
    station.next.prev = station.prev
    station.prev.next = station.next
    if storage.station_head == station then
      storage.station_head = station.next
    end
  end
  station.next = nil
  station.prev = nil

  for _, pend in pairs(station.pending) do
    Station.release_train_schedule(pend.train, station)
  end
  for unit, entity in pairs(station.units) do
    storage.unit_table[unit] = nil
  end

  if station.old_name ~= nil and not no_rename and station.stop.valid then
    station.stop.backer_name = station.old_name
  end
end

return Station