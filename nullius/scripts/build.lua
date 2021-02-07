function entity_added(entity)
  if (string.find(entity.name, "nullius%-wind%-build%-") == 1) then
    build_wind_turbine(entity, (string.byte(entity.name, 20) - 48))
  elseif (string.find(entity.name, "nullius%-wind%-base%-") == 1) then
    build_wind_turbine(entity, (string.byte(entity.name, 19) - 48))
  elseif (string.find(entity.name, "nullius%-geothermal%-build%-") == 1) then
    build_geothermal_plant(entity, (string.byte(entity.name, 26) - 48))
  elseif (string.find(entity.name, "nullius%-geothermal%-reactor%-") == 1) then
    build_geothermal_plant(entity, (string.byte(entity.name, 28) - 48))
  elseif (string.find(entity.name, "nullius%-stirling%-engine%-") == 1) then
    build_stirling_engine(entity, (string.byte(entity.name, 25) - 48))
  elseif (entity.name == "nullius-mecha") then
    entity.vehicle_automatic_targeting_parameters = {
	  auto_target_without_gunner = false, auto_target_with_gunner = false
	}
  end
end

function entity_removed(entity, died)
  if (string.find(entity.name, "nullius%-wind%-base%-") == 1) then
    remove_wind_turbine(entity, died, (string.byte(entity.name, 19) - 48))
  elseif (string.find(entity.name, "nullius%-stirling%-engine%-") == 1) then
    remove_stirling_engine(entity, died, (string.byte(entity.name, 25) - 48))
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


script.on_event(defines.events.on_built_entity, entity_built)
script.on_event(defines.events.on_robot_built_entity, entity_built)
script.on_event(defines.events.script_raised_revive, entity_raised)

script.on_event(defines.events.on_player_mined_entity, entity_mined)
script.on_event(defines.events.on_robot_mined_entity, entity_mined)
script.on_event(defines.events.on_entity_died, entity_died)


function update_tick()
  update_wind()
  update_geothermal()
end

script.on_event(defines.events.on_tick, update_tick)