local ICONPATH = "__nullius__/graphics/icons/"
local ENTICONPATH = "__nullius__/graphics/icons/entity/"
local ENTITYPATH = "__nullius__/graphics/entity/"

local constants = require("constants")

-- Peak power of highest tier solar collector
local PEAK_POWER=960000

-- Heat capacity of highest tier collector is calculated to
-- produce PEAK_POWER at maximum temperature.
-- power = fluid_per_second * heat_capacity * (max_temp - min_temp).
local SOLAR_FLUX_HEAT_CAPACITY = (
  PEAK_POWER / (60 * (constants.SOLAR_FLUX_MAX - constants.SOLAR_FLUX_BASELINE))
)

local function solar_energy_source(effectivity)
  -- Return a FluidEnergySource for solar power.
  -- effectivity :: float
  --   Relative power output.  1 for the highest tier solar collector.
  return {
    type = "fluid",
    fluid_box = {
      volume = constants.SOLAR_BUFFER_SIZE,
      pipe_connections = {},
      filter = "nullius-solar-flux",
      draw_only_when_connected = true,
      production_type = "input",
    },
    effectivity = 1,
    render_no_power_icon = false,
    render_no_network_icon = false,
    fluid_usage_per_tick = effectivity
  }
end

local function solar_collector(args)
  -- Create a solar collector entity prototype.
  -- args :: {
  --   maxlevel :: int
  --     Maximum tier of this entity.  Used for upgradable properties.
  --   level :: int
  --     Tier of this entity.
  --   peak_power :: int
  --     Peak power production in kilowatts.
  --   effectivity :: float
  --     Power conversion efficiency.
  --   max_temperature :: float
  --     Maximum temperature of the heat buffer.
  --   specific_heat :: str
  --     Energy to raise the heat buffer's temperature 1 degree.
  --   max_transfer :: str
  --     Maximum power transfer of the heat buffer.
  --   minimum_glow_temperature :: float
  --     Temperature at which the heat buffer begins to glow.
  --   mining_time :: float
  --     Time to mine the entity
  --   max_health :: float
  --     Health of the entity
  -- }

  local name = "nullius-solar-collector-" .. tostring(args.level)

  local upgrade_name = nil
  if args.level < args.maxlevel then
    upgrade_name = "nullius-solar-collector-" .. tostring(args.level+1)
  end

  return {
    type = "reactor",
    name = name,
    localised_name = {"", {"entity-name.nullius-solar-collector"}, " ", tostring(args.level)},
    icons = data.raw.item[name].icons,
    flags = {"placeable-neutral","player-creation"},
    minable = {mining_time = args.mining_time, result = name},
    fast_replaceable_group = "solar-collector",
    next_upgrade = upgrade_name,
    max_health = max_health,
    corpse = "solar-panel-remnants",
    consumption = tostring(args.peak_power) .. "kW",
    energy_source = solar_energy_source(args.effectivity),
    neighbour_bonus = 0.1,
    -- We decided not to have circuit connections for this building
    resistances = {
      { type = "fire", decrease = 25, percent = 60 },
      { type = "impact", decrease = 50, percent = 80 },
      { type = "laser", decrease = 50, percent = 80 }
    },
    collision_box = {{-2.25, -1.6}, {2.25, 1.6}},
    selection_box = {{-2.5, -2}, {2.5, 2}},
    heat_buffer = {
      max_temperature = args.max_temperature,
      specific_heat = args.specific_heat,
      max_transfer = args.max_transfer,
      minimum_glow_temperature = args.minimum_glow_temperature,
      connections = {
        {
          position = {2, 0.5},
          direction = defines.direction.east
        },
        {
          position = {-2, 0.5},
          direction = defines.direction.west
        }
      },
      pipe_covers = data.raw.boiler["heat-exchanger"].energy_source.pipe_covers,
      heat_pipe_covers = data.raw.boiler["heat-exchanger"].energy_source.heat_pipe_covers
    },
    picture = {
      layers = {
        {
          filename = ENTITYPATH .. "collector/collector" .. tostring(args.level) .. ".png",
          width = 220,
          height = 140,
          scale = 0.9,
          shift = {0, -0.25}
        },
        {
          filename = ENTITYPATH .. "collector/collectorpipe.png",
          width = 320,
          height = 32,
          scale = 0.5,
          shift = {0, 0.5}
        }
      }
    },
    working_light_picture = {
      layers = {
        {
          filename = ENTITYPATH .. "collector/collector" .. tostring(args.level) .. ".png",
          width = 220,
          height = 140,
          scale = 0.9,
          shift = {0, -0.25}
        },
        {
          filename = ENTITYPATH .. "collector/collectorpipe.png",
          width = 320,
          height = 32,
          scale = 0.5,
          shift = {0, 0.5}
        }
      }
    }
  }
end

data:extend({
  {
    type = "fluid",
    name = "nullius-solar-flux",
    icon = "__base__/graphics/icons/signal/signal-sun.png",
    subgroup = "solar",
    default_temperature = constants.SOLAR_FLUX_BASELINE,
    base_color = {255, 240, 160},
    flow_color = {255, 240, 160},
    max_temperature = constants.SOLAR_FLUX_MAX,
    heat_capacity = tostring(SOLAR_FLUX_HEAT_CAPACITY) .. "J",
    auto_barrel = false,
    hidden_in_factoriopedia = true
  },
  solar_collector{
    maxlevel=3, level=1, peak_power=240, effectivity=0.25, max_temperature=250, specific_heat = "150kJ", max_transfer = "3MW",
    minimum_glow_temperature = 150, mining_time = 1.2, max_health = 250
  },
  solar_collector{
    maxlevel=3, level=2, peak_power=480, effectivity=0.5, max_temperature=300, specific_heat = "350kJ", max_transfer = "8MW",
    minimum_glow_temperature = 175, mining_time = 1.8, max_health = 300
  },
  solar_collector{
    maxlevel=3, level=3, peak_power=960, effectivity=1, max_temperature=400, specific_heat = "800kJ", max_transfer = "20MW",
    minimum_glow_temperature = 200, mining_time = 2.4, max_health = 400
  }
})
