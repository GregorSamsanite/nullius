function init_geothermal()
  global.nullius_stirling_buckets = {}
  for i=0,442 do
    global.nullius_stirling_buckets[i] = { }
	global.nullius_stirling_buckets[i][1] = { }
	global.nullius_stirling_buckets[i][2] = { }
	global.nullius_stirling_buckets[i][3] = { }
  end
end

function update_engine(e, threshold, ratio, limit, speed)
  local storage = e.electric.electric_buffer_size - e.electric.energy
  local temp = e.heat.temperature
  local thermal = (temp - threshold) / 2
  local delta = math.floor(math.max(math.min(thermal, (storage / ratio)), 0))
  local production = math.min((delta * ratio / 443.0), limit)
  e.heat.temperature = temp - delta
  e.electric.power_production = production

  local aspeed = speed * production / limit
  if (aspeed > 0) then
    aspeed = math.max(aspeed, (speed * 0.2))
  end

  if (aspeed ~= e.last_speed) then
    local frame = (game.tick * aspeed)
    local expected = ((game.tick * e.last_speed) + e.last_offset)
    local offs = (expected - frame) % 32
    e.last_offset = offs
    e.last_speed = aspeed

    rendering.set_animation_speed(e.turbine, aspeed)
    rendering.set_animation_speed(e.shadow, aspeed)
    rendering.set_animation_offset(e.turbine, offs)
    rendering.set_animation_offset(e.shadow, offs)
  end
end

function update_geothermal()
  local bucket = global.nullius_stirling_buckets[game.tick % 443]
  for _,e in pairs(bucket[1]) do
    update_engine(e, 120, 200000, 16666.67, 0.5)
  end
  for _,e in pairs(bucket[2]) do
    update_engine(e, 100, 360000, 66666.67, 0.65)
  end
  for _,e in pairs(bucket[3]) do
    update_engine(e, 80, 800000, 250000, 0.8)
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
  
  local turbine = rendering.draw_animation{
      animation = "nullius-stirling-"..orientation.."-turbine-"..level,
      target = position, surface = surface, animation_speed = 0,
	  render_layer = "lower-object-above-shadow"}
  local shadow = rendering.draw_animation{
      animation = "nullius-stirling-"..orientation.."-shadow",
      target = position, surface = surface, animation_speed = 0,
	  render_layer = "lower-object-above-shadow"}

  local unit = entity.unit_number
  local bucket = global.nullius_stirling_buckets[unit % 443]
  bucket[level][unit] = {
    electric = entity,
	heat = heat,
	turbine = turbine,
	shadow = shadow,
	last_offset = 0,
	last_speed = 0
  }
end

function remove_stirling_engine(entity, died, level)
  if ((level < 1) or (level > 3)) then return end

  local unit = entity.unit_number
  local bucket = global.nullius_stirling_buckets[unit % 443]
  if bucket[level][unit] == nil then return end

  local entry = bucket[level][unit]
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

  if entry.heat ~= nil then
    entry.heat.destroy()
  end
  rendering.destroy(entry.turbine)
  rendering.destroy(entry.shadow)
  bucket[level][unit] = nil  
end
