local Station = require("scripts.station")
local Upgrade = require("scripts.upgrade")
local Build = require("scripts.build")

---@namespace train-upgrader
---@type Storage
storage = storage --[[@as Storage]]

local function validate_station(station)
  if not station.stop.valid then
    Build.destroy_station(station, nil)
  end
  for u, e in pairs(station.units) do
    if not e.valid then
      Build.destroy_station(station, u)
      return true
    end
  end
  return false
end

local function check_stopped(station)
  local train = station.stop.get_stopped_train()
  if train == nil or not train.valid then
    return false
  end
  if not Upgrade.upgrade_any_carriage(train, station, true) then
    Station.release_train_schedule(train, station)
  end
  return true
end

local function check_pending(station)
  local count = 0
  local tick = 0
  for u, p in pairs(station.pending) do
    if not p.train.valid then
      station.pending[u] = nil
      return true
    end
    if p.train.state == defines.train_state.no_path then
      Station.release_train_schedule(p.train, station)
      return true
    end
    count = count + 1
    if p.tick > tick then
      tick = p.tick
    end
  end

  station.pending_count = count
  station.last_summon = tick
  return false
end

local function summon_train(station)
  local train = station.train_set[station.train_index]
  if not train.valid or train.manual_mode then
    return
  end

  -- check for cybersyn
  local cs_train = nil
  if remote.interfaces["cybersyn"] then
    cs_train = remote.call("cybersyn", "read_global", "trains", train.id)
    if cs_train and cs_train.status ~= 0 then
      return
    end
  end

  -- check for cybersyn2
  if remote.interfaces["cybersyn2"] then
    if string.match ( train.group ,"[virtual-signal=cybersyn2]" ) ~= nil  then
      local result = remote.call("cybersyn2", "query", {type = "vehicles" ,luatrain_ids = {train.id}})
      if result and result.data and result.data[1].delivery_id == nil then
        cs_train = "cs2"
      else 
        return
      end
      
    end
  end

  if not Upgrade.upgrade_any_carriage(train, station, false) then
    return
  end

  if station.last_summon > 0 then
    local delay_table = { 360, 1200, 3600 }
    local delay = delay_table[station.pending_count]
    station.hold = true
    if delay == nil then
      return
    end
    if game.tick < (station.last_summon + delay) then
      return
    end
    local limit = station.stop.trains_limit
    if limit ~= nil and (station.pending_count >= limit) then
      return
    end
    station.hold = false
  end
  Station.insert_train_schedule(train, station, cs_train)
end

local function update_train_set(station)
  if station.hold then
    station.hold = false
    return false
  end

  station.train_index = station.train_index + 1
  if station.train_index <= station.train_count then
    return false
  end
  if game.tick < (station.last_refresh + 900) then
    return true
  end
  station.train_set = game.train_manager.get_trains({ force = station.stop.force, surface = station.stop.surface })
  station.train_index = 0
  station.train_count = 0
  station.last_refresh = game.tick

  if station.train_set ~= nil then
    while station.train_set[station.train_count + 1] ~= nil do
      station.train_count = station.train_count + 1
    end
  end
  return true
end

local function update_station(station)
  if validate_station(station) then
    return
  end
  if check_stopped(station) then
    return
  end
  if check_pending(station) then
    return
  end
  if update_train_set(station) then
    return
  end
  summon_train(station)
end

local function update_tick()
  if storage.station_head == nil then
    return
  end
  storage.station_head = storage.station_head.next
  update_station(storage.station_head)
end

script.on_nth_tick(23, update_tick)
