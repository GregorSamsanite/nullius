local ICONPATH = "__nullius__/graphics/icons/"

data:extend{
  {
    type = "item-subgroup",
    name = "unmirror-1", --those two are useless
    group = "chemistry",
    order = "md"
  },
  {
    type = "item-subgroup",
    name = "unmirror-2",
    group = "chemistry",
    order = "me"
  },
  {
    type = "assembling-machine",
    name = "nullius-mirror-nanofabricator-2",
    hidden = true,
    crafting_categories = {"nanotechnology"},
    crafting_speed = 2,
    energy_source = data.raw["assembling-machine"]["nullius-nanofabricator-2"].energy_source,
    energy_usage = "940kW",
  },
  {
    type = "assembling-machine",
    name = "nullius-mirror-hydro-plant-2",
    hidden = true,
    crafting_categories = {"nullius-water-treatment"},
    crafting_speed = 2,
    energy_source = {type = "electric", usage_priority = "secondary-input", emissions_per_minute = {pollution = 0.05}, drain="20kW"},
    energy_usage = "480kW",
  },
  {
    type = "assembling-machine",
    name = "nullius-mirror-hydro-plant-3",
    hidden = true,
    crafting_categories = {"nullius-water-treatment"},
    crafting_speed = 4,
    energy_source = {type = "electric", usage_priority = "secondary-input", emissions_per_minute = {pollution = 0.1}, drain="40kW"},
    energy_usage = "960kW",
  },
  {
    type = "assembling-machine",
    name = "nullius-mirror-distillery-2",
    hidden = true,
    crafting_categories = {"distillation"},
    crafting_speed = 2,
    energy_source = data.raw["assembling-machine"]["nullius-distillery-2"].energy_source,
    energy_usage = "550kW"
  },
  {
    type = "assembling-machine",
    name = "nullius-mirror-distillery-3",
    hidden = true,
    crafting_categories = {"distillation"},
    crafting_speed = 4,
    energy_source = {
      type = "electric",
      usage_priority = "secondary-input",
      emissions_per_minute = {pollution = 24},
      drain = "100kW"
    },
    energy_usage = "1100kW"
  },
  {
    type = "assembling-machine",
    name = "nullius-mirror-surge-electrolyzer-2",
    hidden = true,
    crafting_categories = {"nullius-electrolysis"},
    crafting_speed = 2,
    energy_source = data.raw["assembling-machine"]["nullius-surge-electrolyzer-2"].energy_source,
    energy_usage = data.raw["assembling-machine"]["nullius-surge-electrolyzer-2"].energy_usage,
  }
}

local mnf1 = util.table.deepcopy(
    data.raw["assembling-machine"]["nullius-nanofabricator-1"])
mnf1.name = "nullius-mirror-nanofabricator-1"
mnf1.hidden = true

local mhp1 = util.table.deepcopy(
    data.raw["assembling-machine"]["nullius-hydro-plant-1"])
mhp1.name = "nullius-mirror-hydro-plant-1"
mhp1.hidden = true

local md1 = util.table.deepcopy(
    data.raw["assembling-machine"]["nullius-distillery-1"])
md1.name = "nullius-mirror-distillery-1"
md1.hidden = true

local mse1 = util.table.deepcopy(
    data.raw["assembling-machine"]["nullius-surge-electrolyzer-1"])
mse1.name = "nullius-mirror-surge-electrolyzer-1"
mse1.hidden = true

local mpe1 = util.table.deepcopy(
    data.raw["assembling-machine"]["nullius-priority-electrolyzer-1"])
mpe1.name = "nullius-mirror-priority-electrolyzer-1"
mpe1.hidden = true

data:extend{
  {
    type = "assembling-machine",
    name = "nullius-mirror-priority-electrolyzer-2",
    hidden = true,
    crafting_categories = {"nullius-electrolysis"},
    crafting_speed = 1.5,
    energy_source = data.raw["assembling-machine"]["nullius-priority-electrolyzer-2"].energy_source,
    energy_usage = data.raw["assembling-machine"]["nullius-priority-electrolyzer-2"].energy_usage
  },
  {
    type = "assembling-machine",
    name = "nullius-mirror-surge-electrolyzer-3",
    hidden = true,
    crafting_categories = {"nullius-electrolysis"},
    crafting_speed = 4,
    energy_usage = data.raw["assembling-machine"]["nullius-surge-electrolyzer-3"].energy_usage,
    energy_source = data.raw["assembling-machine"]["nullius-surge-electrolyzer-3"].energy_source
  }
}
data:extend{
  {
    type = "assembling-machine",
    name = "nullius-mirror-priority-electrolyzer-3",
    hidden = true,
    crafting_categories = {"nullius-electrolysis"},
    crafting_speed = 4,
    energy_source = data.raw["assembling-machine"]["nullius-priority-electrolyzer-3"].energy_source,
    energy_usage = data.raw["assembling-machine"]["nullius-priority-electrolyzer-3"].energy_usage
  },
  {
    type = "assembling-machine",
    name = "nullius-mirror-chemical-plant-2",
    hidden = true,
    crafting_speed = 2,
    energy_source = data.raw["assembling-machine"]["nullius-chemical-plant-2"].energy_source,
    energy_usage = "384kW",
    crafting_categories = {"basic-chemistry"}
  },
   {
    type = "assembling-machine",
    name = "nullius-mirror-chemical-plant-3",
    hidden = true,
    energy_source = data.raw["assembling-machine"]["nullius-chemical-plant-3"].energy_source,
    crafting_speed = 4,
    energy_usage = "760kW",
    crafting_categories = {"basic-chemistry"}
  }
}

local mcp1 = util.table.deepcopy(
    data.raw["assembling-machine"]["nullius-chemical-plant-1"])
mcp1.name = "nullius-mirror-chemical-plant-1"
mcp1.hidden = true

local mcc1 = util.table.deepcopy(
    data.raw["assembling-machine"]["nullius-combustion-chamber-1"])
mcc1.name = "nullius-mirror-combustion-chamber-1"
mcc1.hidden = true

data:extend{
  {
    type = "assembling-machine",
    name = "nullius-mirror-combustion-chamber-2",
    hidden = true,
    crafting_categories = { "combustion" },
    crafting_speed = 2.5,
    energy_usage = "1kW",
    energy_source = { type = "void" }
  }
}

data:extend{
  {
    type = "assembling-machine",
    name = "nullius-mirror-combustion-chamber-3",
    hidden = true,
    crafting_categories = { "combustion" },
    crafting_speed = 6,
    energy_usage = "1kW",
    energy_source = { type = "void" }
  },
}

local ex1m = table.deepcopy(data.raw["assembling-machine"]["nullius-heat-exchanger-1"])
ex1m.name = "nullius-mirror-heat-exchanger-1"
ex1m.hidden = true

local ex2m = table.deepcopy(data.raw["assembling-machine"]["nullius-heat-exchanger-1"])
ex2m.name = "nullius-mirror-heat-exchanger-2"
ex2m.hidden = true

local ex3m = util.table.deepcopy(data.raw["assembling-machine"]["nullius-heat-exchanger-1"])
ex3m.name = "nullius-mirror-heat-exchanger-3"
ex3m.hidden = true

local boilm = util.table.deepcopy(data.raw["assembling-machine"]["nullius-boiler-1"])
boilm.name = "nullius-mirror-boiler-1"
boilm.hidden = true

local boil2m = util.table.deepcopy(data.raw["assembling-machine"]["nullius-boiler-2"])
boil2m.name = "nullius-mirror-boiler-2"
boil2m.hidden = true

local mfc1 = util.table.deepcopy(
    data.raw["assembling-machine"]["nullius-flotation-cell-1"])
mfc1.name = "nullius-mirror-flotation-cell-1"
mfc1.hidden = true

data:extend({
  {
    type = "assembling-machine",
    name = "nullius-mirror-flotation-cell-2",
	  hidden = true,
    crafting_categories = {"ore-flotation"},
    crafting_speed = 2,
    energy_source = data.raw["assembling-machine"]["nullius-flotation-cell-2"].energy_source,
    energy_usage = "385kW"
  },
  {
    type = "assembling-machine",
    name = "nullius-mirror-flotation-cell-3",
    hidden = true,
    crafting_categories = {"ore-flotation"},
    crafting_speed = 4,
    energy_usage = "770kW",
    energy_source = data.raw["assembling-machine"]["nullius-flotation-cell-3"].energy_source
  }
})

local nmc1 = util.table.deepcopy(data.raw.furnace["nullius-chimney-1"])
nmc1.name = "nullius-mirror-chimney-1"
nmc1.hidden = true

local nmc2 = util.table.deepcopy(data.raw.furnace["nullius-chimney-2"])
nmc2.name = "nullius-mirror-chimney-2"
nmc2.hidden = true

data:extend{mnf1,mhp1,md1,mse1,mpe1,mcp1,mcc1,ex1m,ex2m,ex3m,boilm,boil2m,mfc1,nmc1,nmc2}