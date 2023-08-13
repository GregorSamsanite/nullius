function entity_added(entity)
  if (entity.type == "spider-vehicle") then
	mecha_added(entity)
    return
  end

  if (string.sub(entity.name, 1, 8) ~= "nullius-") then return end
  if (string.sub(entity.name, 9, 13) == "wind-") then
    if (string.sub(entity.name, 14, -2) == "build-") then
      build_wind_turbine(entity, (string.byte(entity.name, 20) - 48))
    elseif (string.sub(entity.name, 14, -2) == "base-") then
      build_wind_turbine(entity, (string.byte(entity.name, 19) - 48))
    end
  elseif (string.sub(entity.name, 9, 19) == "geothermal-") then
    if (string.sub(entity.name, 20, -2) == "build-") then
      build_geothermal_plant(entity, (string.byte(entity.name, 26) - 48))
    elseif (string.sub(entity.name, 20, -2) == "reactor-") then
      build_geothermal_plant(entity, (string.byte(entity.name, 28) - 48))
    end
  elseif (string.sub(entity.name, 9, 16) == "turbine-") then
    build_turbine(entity)
  elseif (string.sub(entity.name, 9, -2) == "stirling-engine-") then
    build_stirling_engine(entity, (string.byte(entity.name, 25) - 48))
  elseif (string.sub(entity.name, 9, -2) == "solar-collector-") then
    build_solar_collector(entity, (string.byte(entity.name, 25) - 48))
  elseif (string.sub(entity.name, 9, -2) == "thermal-tank-build-") then
    build_thermal_tank(entity, (string.byte(entity.name, 28) - 48))
  elseif (entity.type == "beacon") then
    build_beacon(entity)
  end
end

function entity_removed(entity, died)
  if (string.sub(entity.name, 1, 8) ~= "nullius-") then
    return
  end
  if (string.sub(entity.name, 9, -2) == "wind-base-") then
    remove_wind_turbine(entity, died, (string.byte(entity.name, 19) - 48))
  elseif (string.sub(entity.name, 9, -2) == "stirling-engine-") then
    remove_stirling_engine(entity, died, (string.byte(entity.name, 25) - 48))
  elseif (string.sub(entity.name, 9, -2) == "solar-collector-") then
    remove_solar_collector(entity, died, (string.byte(entity.name, 25) - 48))
  elseif (entity.type == "beacon") then
    remove_beacon(entity.unit_number)
  elseif (string.sub(entity.name, 9, 16) == "turbine-") then
    remove_turbine(entity.unit_number)
  end
end


function entity_built(event)
  entity_added(event.created_entity)
end
function entity_raised(event)
  entity_added(event.entity)
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
end


script.on_event(defines.events.on_built_entity, entity_built)
script.on_event(defines.events.on_robot_built_entity, entity_built)
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
  elseif (tickmod1 == 8) then
    update_grass()
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