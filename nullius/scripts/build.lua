function entity_added(entity, handbuilt)
  if (entity.type == "spider-vehicle") then
	mecha_added(entity)
    return
  end
  if (string.sub(entity.name, 1, 8) ~= "nullius-") then
    if (entity.name == "entity-ghost") then
      local result = check_pipette(handbuilt)
      if (result ~= nil) then entity = result end
      check_mirror(entity)
	end
    return
  end

  local suffix = string.sub(entity.name, 9, -2)
  if (string.sub(suffix, 1, 5) == "wind-") then
    if (string.sub(suffix, 6, -1) == "build-") then
      build_wind_turbine(entity, (string.byte(entity.name, 20) - 48))
    elseif (string.sub(suffix, 6, -1) == "base-") then
      build_wind_turbine(entity, (string.byte(entity.name, 19) - 48))
    end
  elseif (string.sub(suffix, 1, 11) == "geothermal-") then
    if (string.sub(suffix, 12, -1) == "build-") then
      build_geothermal_plant(entity, (string.byte(entity.name, 26) - 48))
    elseif (string.sub(suffix, 12, -1) == "reactor-") then
      build_geothermal_plant(entity, (string.byte(entity.name, 28) - 48))
    end
  elseif (string.sub(suffix, 1, 8) == "turbine-") then
    local new_entity = check_pipette(handbuilt)
	if (new_entity ~= nil) then entity = new_entity end
    build_turbine(entity)
  elseif (suffix == "stirling-engine-") then
    build_stirling_engine(entity, (string.byte(entity.name, 25) - 48))
  elseif (suffix == "solar-collector-") then
    build_solar_collector(entity, (string.byte(entity.name, 25) - 48))
  elseif (suffix == "thermal-tank-build-") then
    build_thermal_tank(entity, (string.byte(entity.name, 28) - 48))
  elseif (suffix == "align-concordance-transmitte") then
    build_transmitter(entity)
  elseif (entity.type == "beacon") then
    build_beacon(entity)
  else
    check_pipette(handbuilt)
  end
end

function entity_removed(entity, died)
  if (string.sub(entity.name, 1, 8) ~= "nullius-") then return end
  local suffix = string.sub(entity.name, 9, -2)
  if (suffix == "wind-base-") then
    remove_wind_turbine(entity, died, (string.byte(entity.name, 19) - 48))
  elseif (suffix == "stirling-engine-") then
    remove_stirling_engine(entity, died, (string.byte(entity.name, 25) - 48))
  elseif (suffix == "solar-collector-") then
    remove_solar_collector(entity, died, (string.byte(entity.name, 25) - 48))
  elseif (entity.type == "beacon") then
    remove_beacon(entity.unit_number)
  elseif (string.sub(suffix, 1, 8) == "turbine-") then
    remove_turbine(entity.unit_number)
  elseif (suffix == "align-concordance-transmitte") then
    remove_transmitter(entity.unit_number)
  end
end


function entity_hand_built(event)
  entity_added(event.created_entity, event)
end
function entity_bot_built(event)
  entity_added(event.created_entity, nil)
end
function entity_raised(event)
  entity_added(event.entity, nil)
end
function entity_mined(event)
  entity_removed(event.entity, false)
end
function entity_died(event)
  if script_kill then return end
  entity_removed(event.entity, true)
end
function entity_destroyed(event)
  if (script_kill or (event.unit_number == nil)) then return end
  if (destroyed_stirling_engine(event.unit_number)) then return end
  if (destroyed_wind_turbine(event.unit_number)) then return end
  if (remove_beacon(event.unit_number)) then return end
  if (remove_turbine(event.unit_number)) then return end
  if (remove_transmitter(event.unit_number)) then return end
end


script.on_event(defines.events.on_built_entity, entity_hand_built)
script.on_event(defines.events.on_robot_built_entity, entity_bot_built)
script.on_event(defines.events.script_raised_revive, entity_raised)

script.on_event(defines.events.on_player_mined_entity, entity_mined)
script.on_event(defines.events.on_robot_mined_entity, entity_mined)
script.on_event(defines.events.on_entity_died, entity_died)
script.on_event(defines.events.on_entity_destroyed, entity_destroyed)


function update_tick()
  update_wind()
  update_geothermal()
  update_solar()

  local tickmod1 = (game.tick % 13)
  if (tickmod1 == 2) then
    update_mechas()
  elseif (tickmod1 == 5) then
    update_checkpoints()
  elseif (tickmod1 == 7) then
    update_grass()
  elseif (tickmod1 == 9) then
    update_align()
  elseif (tickmod1 == 11) then
    local tickmod2 = (game.tick % 15)
    if (tickmod2 == 2) then
      update_oxygen()
    elseif (tickmod2 == 9) then
      update_generators()
	end
  end
end

script.on_event(defines.events.on_tick, update_tick)