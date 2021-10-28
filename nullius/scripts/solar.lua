function init_solar()
  if (global.nullius_solar_buckets == nil) then
    global.nullius_solar_buckets = {}
    for i=0,540 do
      global.nullius_solar_buckets[i] = {}
    end
  end
end

local solar_values = {
  { ratio = 7.36, maxtemp = 250, threshold = 25 },
  { ratio = 6.07, maxtemp = 300, threshold = 50 },
  { ratio = 5.13, maxtemp = 400, threshold = 100 }
}

function update_solar()
  if (global.nullius_solar_buckets == nil) then return end
  local tick = game.tick * 382
  for j=0,1 do
    local bucket = global.nullius_solar_buckets[(tick + j) % 541]
    for i,t in pairs(bucket) do
      if (t.collector.valid) then
        local surface = t.collector.surface
      local dayt = surface.daytime
      local light = 1
      if ((dayt > surface.dusk) and (dayt < surface.dawn)) then
        if (dayt < surface.evening) then
        light = (surface.evening - dayt) / (surface.evening - surface.dusk)
      elseif (dayt > surface.morning) then
        light = (dayt - surface.morning) / (surface.dawn - surface.morning)
      else
        light = 0
      end
      end
      light = light * surface.solar_power_multiplier

        local vals = solar_values[t.level]
      local realtemp = t.collector.temperature
    local basetemp = math.max(realtemp, 175)
      if (basetemp < vals.maxtemp) then
        local target = (vals.maxtemp * (light + 0.1)) - basetemp
        if (target > 0) then
          local adjust = vals.ratio * (1 + t.collector.neighbour_bonus) * light
          if (target < vals.threshold) then
            adjust = adjust * (target / vals.threshold)
          end
        t.collector.temperature = math.min(vals.maxtemp, (realtemp + adjust))
        end
      end
    else
      bucket[i] = nil
    end
    end
  end
end

function build_solar_collector(entity, level)
  if ((level < 1) or (level > 3)) then return end
  init_solar()
  local bucket = global.nullius_solar_buckets[entity.unit_number % 541]
  bucket[entity.unit_number] = {
    collector = entity,
  level = level
  }
end

function remove_solar_collector(entity, died, level)
  if (global.nullius_solar_buckets == nil) then return end
  local bucket = global.nullius_solar_buckets[entity.unit_number % 541]
  bucket[entity.unit_number] = nil
end
