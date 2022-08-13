function init_geothermal()
  global.nullius_stirling_buckets = {}
  for i=0,442 do
    global.nullius_stirling_buckets[i] = { }
  global.nullius_stirling_buckets[i][1] = { }
  global.nullius_stirling_buckets[i][2] = { }
  global.nullius_stirling_buckets[i][3] = { }
  end
end

function destroy_stirling_engine(entry)
  if ((entry.heat ~= nil) and (entry.heat.valid)) then
    entry.heat.destroy()
  end
  rendering.destroy(entry.turbine)
  if (entry.shadow ~= 0) then
    rendering.destroy(entry.shadow)
  end
end

function update_engine(e, threshold, ratio, limit, speed)
  local storage = e.electric.electric_buffer_size - e.electric.energy
  local temp = e.heat.temperature
  local thermal = (temp - threshold) / 2
  if ((thermal > 0) and (thermal < 8)) then
    if (thermal < 1) then
	  thermal = math.min(1, (thermal * 2))
	else
      thermal = math.min(8, (thermal * 1.5))
	end
  end

  local capacity = math.max(math.min((thermal * ratio), storage), 0)
  local production = math.min((capacity / 443.0), limit)
  local delta = ((production * 443.0) / ratio)
  e.heat.temperature = temp - delta
  e.electric.power_production = production

  local aspeed = (production / limit)
  if (aspeed > 0.02) then
    aspeed = math.max(aspeed, (speed * 0.15))
	aspeed = math.min(1, (math.floor(aspeed * 200) / 200))
  else
    aspeed = 0
  end

  if (aspeed ~= e.last_speed) then
    local frame = (game.tick * aspeed)
    local expected = ((game.tick * e.last_speed) + e.last_offset)
    local offs = (expected - frame) % 32
    e.last_offset = offs
    e.last_speed = aspeed

    rendering.set_animation_speed(e.turbine, aspeed)
    rendering.set_animation_offset(e.turbine, offs)
    if (e.shadow ~= 0) then
      rendering.destroy(e.shadow)
      e.shadow = 0
    end
  end
end

function update_geothermal()
  local bucket = global.nullius_stirling_buckets[game.tick % 443]
  for i,e in pairs(bucket[1]) do
    if (e.electric.valid) then
      update_engine(e, 120, 200000, 13333.33, 0.5)
    else
      destroy_stirling_engine(e)
      bucket[1][i] = nil
    end
  end
  for i,e in pairs(bucket[2]) do
    if (e.electric.valid) then
      update_engine(e, 100, 360000, 41666.67, 0.65)
    else
      destroy_stirling_engine(e)
      bucket[2][i] = nil
    end
  end
  for i,e in pairs(bucket[3]) do
    if (e.electric.valid) then
      update_engine(e, 80, 760000, 133333.33, 0.8)
    else
      destroy_stirling_engine(e)
      bucket[3][i] = nil
    end
  end
end


function build_geothermal_plant(entity, level)
  if ((level < 1) or (level > 3)) then return end

  local surface = entity.surface
  local position = entity.position
  local force = entity.force
  entity.destroy()

  surface.create_entity{name = "nullius-geothermal-reactor-"..level,
    position = position, force = force}
end

function build_stirling_engine(entity, level)
  if ((level < 1) or (level > 3)) then return end

  local direction = entity.direction
  local position = entity.position
  local force = entity.force
  local surface = entity.surface

  local orientation = nil
  if ((direction == defines.direction.north) or
      (direction == defines.direction.south)) then
    orientation = "vertical"
  else
    orientation = "horizontal"
  end

  local heat = surface.create_entity{
      name = "nullius-stirling-"..orientation.."-heat-"..level,
      position = position, force = force}
  heat.destructible = false
  heat.minable = false
  entity.energy = 0
  entity.power_production = 0
  
  local buffer_size = { 8, 30, 120 }
  local bsz = buffer_size[level]
  if (bsz ~= nil) then
    entity.electric_buffer_size = (bsz * 1000000)
  end

  script.register_on_entity_destroyed(entity)
  local turbine = rendering.draw_animation{
      animation = "nullius-stirling-"..orientation.."-turbine-"..level,
      target = position, surface = surface, animation_speed = 0,
    render_layer = "lower-object-above-shadow"}

  local unit = entity.unit_number
  local bucket = global.nullius_stirling_buckets[unit % 443]
  bucket[level][unit] = {
    electric = entity,
    heat = heat,
    turbine = turbine,
    shadow = 0,
    last_offset = 0,
    last_speed = 0
  }
end

function remove_stirling_unit(unit, died, level)
  local bucket = global.nullius_stirling_buckets[unit % 443]
  local entry = bucket[level][unit]
  if entry == nil then return end

  if entry.electric ~= nil then
    if died then
      if entry.valid then
        script_kill = true
        entry.electric.die(entry.electric.force)
        script_kill = nil
      else
        entry.electric.destroy()
      end
    end
  end

  destroy_stirling_engine(entry)
  bucket[level][unit] = nil
end

function remove_stirling_engine(entity, died, level)
  if ((level < 1) or (level > 3)) then return end
  remove_stirling_unit(entity.unit_number, died, level)
end

function destroyed_stirling_engine(unit)
  local bucket = global.nullius_stirling_buckets[unit % 443]
  for lvl=1,3 do
  local entry = bucket[lvl][unit]
  if (entry ~= nil) then
    remove_stirling_unit(unit, false, lvl)
    return true
  end
  end
  return false
end


function build_thermal_tank(entity, level)
  if ((level < 1) or (level > 3)) then return end

  local direction = entity.direction
  local dirname = "vertical"
  if ((direction == defines.direction.east) or
        (direction == defines.direction.west)) then
    dirname = "horizontal"
  end

  local position = entity.position
  local force = entity.force
  local surface = entity.surface
  entity.destroy()
  surface.create_entity{name = "nullius-thermal-tank-"..dirname.."-"..level,
    position = position, force = force, direction = direction}
end
