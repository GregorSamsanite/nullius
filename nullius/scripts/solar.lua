---@class SolarEntry
---@field collector LuaEntity
---@field level integer

---@alias SolarBucket table<integer, SolarEntry>

local constants = require("constants")

function init_solar()
  if (storage.nullius_solar_buckets == nil) then
    storage.nullius_solar_buckets = {}
    for i=0,540 do
      storage.nullius_solar_buckets[i] = {}
    end
  end
end

local solar_values = {
  { ratio = 7.36, maxtemp = 250, threshold = 25 },
  { ratio = 6.07, maxtemp = 300, threshold = 50 },
  { ratio = 5.13, maxtemp = 400, threshold = 100 }
}

local function solar_light(surface)
  -- Calculate the light intensity on surface.
  -- Light curve is like a smoothed trapezoid.
  local dayt = surface.daytime
  if (dayt >= surface.evening and dayt <= surface.morning) then
    return 0
  end

  -- Unwrap range (morning, evening) and scale it to (-1, 1)
  local day_duration = surface.evening - (surface.morning - 1)
  local day_mid = 0.5 * (surface.evening + (surface.morning - 1))
  if dayt > surface.morning then dayt = dayt - 1 end
  dayt = (dayt - day_mid) * 2 / day_duration

  -- 1 - 0.72t^2 - 0.43t^4 + 0.15t^6
  local dayt2 = dayt*dayt
  local light = math.max(0, 1 + dayt2 * (-0.72 + dayt2 * (-0.43 + dayt2 * 0.15)))

  return light * surface.solar_power_multiplier
end

function update_solar()
  if (storage.nullius_solar_buckets == nil) then return end

  local solar_flux_scale = constants.SOLAR_FLUX_MAX - constants.SOLAR_FLUX_BASELINE
  local tick = game.tick * 382
  local light_table = {} -- Saves the computed light on each surface
  for j=0,1 do
    local bucket = storage.nullius_solar_buckets[(tick + j) % 541] --[[@as SolarBucket]]
    for i,t in pairs(bucket) do
      if (t.collector.valid) then
        local surface = t.collector.surface
        local dayt = surface.daytime
        local light = light_table[surface.index]
        if light == nil then
          light = solar_light(surface)
          light_table[surface.index] = light
        end

        t.collector.clear_fluid_inside()
        local temperature = constants.SOLAR_FLUX_BASELINE + solar_flux_scale * light
        t.collector.insert_fluid{
          name = "nullius-solar-flux",
          amount = constants.SOLAR_BUFFER_SIZE,
          temperature=temperature
        }
      else
        bucket[i] = nil
      end
    end
  end
end

---Called when a new solar collector is built.
---@param entity LuaEntity
---@param level number
function build_solar_collector(entity, level)
  if ((level < 1) or (level > 3)) then return end
  init_solar()
  local bucket = storage.nullius_solar_buckets[entity.unit_number % 541]
  bucket[entity.unit_number] = {
    collector = entity,
    level = level
  }
end

---Called when a solar collector is removed.
---@param entity LuaEntity
---@param died boolean
---@param level number
function remove_solar_collector(entity, died, level)
  if (storage.nullius_solar_buckets == nil) then return end
  local bucket = storage.nullius_solar_buckets[entity.unit_number % 541]
  bucket[entity.unit_number] = nil
end
