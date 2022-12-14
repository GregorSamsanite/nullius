function validate_station(station)
  for u, e in pairs(station.units) do
    if (not e.valid) then
	  destroy_station(station, u)
	  return true
	end
  end
  return false
end

function check_stopped(station)
  local train = station.stop.get_stopped_train()
  if ((train == nil) or (not train.valid)) then return false end
  if (not upgrade_any_carriage(train, station, true)) then
    release_train_schedule(train, station)
  end
  return true
end

function check_pending(station)
  local count = 0
  local tick = 0
  for u, p in pairs(station.pending) do
    if (not p.train.valid) then
	  station.pending[u] = nil
	  return true
	end
	if (p.train.state == defines.train_state.no_path) then
	  release_train_schedule(p.train, station)
	  return true
	end
	count = count + 1
	if (p.tick > tick) then tick = p.tick end
  end

  station.pending_count = count
  station.last_summon = tick
  return false
end

function summon_train(station)
  local train = station.train_set[station.train_index]
  if ((not train.valid) or train.manual_mode) then return end
  if (not upgrade_any_carriage(train, station, false)) then return end

  if (station.last_summon > 0) then
    local delay_table = { 360, 1200, 3600 }
    local delay = delay_table[station.pending_count]
	if (delay == nil) then return end
	if (game.tick < (station.last_summon + delay)) then
	  station.hold = true
	  return
	end
  end
  insert_train_schedule(train, station)
end

function update_train_set(station)
  if (station.hold) then
    station.hold = false
    return false
  end

  station.train_index = station.train_index + 1
  if (station.train_index <= station.train_count) then return false end
  if (game.tick < (station.last_refresh + 900)) then return true end
  station.train_set = station.stop.surface.get_trains(station.stop.force)
  station.train_index = 0
  station.train_count = 0
  station.last_refresh = game.tick

  if (station.train_set ~= nil) then
	while (station.train_set[station.train_count + 1] ~= nil) do
	  station.train_count = station.train_count + 1
	end
  end
  return true
end

function update_station(station)
  if (validate_station(station)) then return end
  if (check_stopped(station)) then return end
  if (check_pending(station)) then return end
  if (update_train_set(station)) then return end
  summon_train(station)
end

function update_tick()
  if (global.station_head == nil) then return end
  global.station_head = global.station_head.next
  update_station(global.station_head)
end

script.on_nth_tick(23, update_tick)
