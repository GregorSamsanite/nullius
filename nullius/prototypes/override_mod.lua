local ICONPATH = "__nullius__/graphics/icons/"
local ENTITYPATH = "__nullius__/graphics/entity/"


if mods["LogisticTrainNetwork"] then
data.raw["train-stop"]["logistic-train-stop"].subgroup = "railway"
data.raw["train-stop"]["logistic-train-stop"].order = "nullius-ecb"
data.raw["train-stop"]["logistic-train-stop"].minable.mining_time = 1.5
data.raw.item["logistic-train-stop"].subgroup = "railway"
data.raw.item["logistic-train-stop"].order = "nullius-ecb"
table.insert(data.raw.technology["nullius-broadcasting-1"].prerequisites,"nullius-logistic-train-network")
data.raw.technology["nullius-optimization-1"].ignore_tech_cost_multiplier = true
end


if mods["LTN_Combinator_Modernized"] then
data.raw["constant-combinator"]["ltn-combinator"].subgroup = "railway"
data.raw["constant-combinator"]["ltn-combinator"].order = "nullius-ecc"
data.raw["constant-combinator"]["ltn-combinator"].minable.mining_time = 1
data.raw.item["ltn-combinator"].subgroup = "railway"
data.raw.item["ltn-combinator"].order = "nullius-ecc"
end


if mods["Factorissimo2"] or mods["factorissimo-2-notnotmelon"] then
local factory_mult = 100
local easy_research = settings.startup["Factorissimo2-easy-research"]
if ((easy_research ~= nil) and easy_research.value) then factory_mult = 10 end

data.raw.technology["factory-architecture-t1"].order = "nullius-e"
data.raw.technology["factory-architecture-t1"].prerequisites = {"nullius-energy-distribution-3"}
data.raw.technology["factory-architecture-t1"].effects =
    {{type = "unlock-recipe", recipe = "nullius-factory-1"}}
data.raw.technology["factory-architecture-t1"].unit = {
    count = 2*factory_mult, time = 30, ingredients = {
        {"nullius-geology-pack", 1}, {"nullius-climatology-pack", 1},
        {"nullius-mechanical-pack", 1}, {"nullius-electrical-pack", 1}}
}

data.raw.technology["factory-architecture-t2"].order = "nullius-e"
data.raw.technology["factory-architecture-t2"].prerequisites = {
    "factory-interior-upgrade-lights", "nullius-packaging-1"}
data.raw.technology["factory-architecture-t2"].effects =
    {{type = "unlock-recipe", recipe = "nullius-factory-2"}}
data.raw.technology["factory-architecture-t2"].unit = {
    count = 4*factory_mult, time = 30,
    ingredients = {
        {"nullius-geology-pack", 1}, {"nullius-climatology-pack", 1},
        {"nullius-mechanical-pack", 1}, {"nullius-electrical-pack", 1},
        {"nullius-chemical-pack", 1}}
}
table.insert(data.raw.technology["nullius-construction-robot-2"].prerequisites,"factory-architecture-t2")

data.raw.technology["factory-architecture-t3"].order = "nullius-e"
data.raw.technology["factory-architecture-t3"].prerequisites = {
    "nullius-packaging-6", "nullius-mass-production-6"}
data.raw.technology["factory-architecture-t3"].effects =
    {{type = "unlock-recipe", recipe = "nullius-factory-3"}}
data.raw.technology["factory-architecture-t3"].unit = {
    count = 10*factory_mult, time = 35,
    ingredients = {
        {"nullius-geology-pack", 1}, {"nullius-climatology-pack", 1},
        {"nullius-mechanical-pack", 1}, {"nullius-electrical-pack", 1},
        {"nullius-chemical-pack", 1}}
}

data.raw.technology["factory-connection-type-fluid"].order = "nullius-e"
data.raw.technology["factory-connection-type-fluid"].prerequisites = {
    "factory-connection-type-circuit", "nullius-experimental-chemistry"}
if (not mods["factorissimo-2-notnotmelon"]) then
data.raw.technology["factory-connection-type-fluid"].effects =
    {{type = "unlock-recipe", recipe = "nullius-factory-input-pipe"},
     {type = "unlock-recipe", recipe = "nullius-factory-output-pipe"}}
end
data.raw.technology["factory-connection-type-fluid"].unit = {
    count = 2*factory_mult, time = 30,
    ingredients = {
        {"nullius-climatology-pack", 1}, {"nullius-mechanical-pack", 1},
        {"nullius-chemical-pack", 1}}
}
table.insert(data.raw.technology["nullius-venting-2"].prerequisites,"factory-connection-type-fluid")

data.raw.technology["factory-connection-type-chest"].order = "nullius-e"
data.raw.technology["factory-connection-type-chest"].prerequisites = {
    "factory-architecture-t1"}
data.raw.technology["factory-connection-type-chest"].unit = {
    count = 3*factory_mult, time = 30,
    ingredients = {
        {"nullius-geology-pack", 1}, {"nullius-climatology-pack", 1},
        {"nullius-mechanical-pack", 1}, {"nullius-electrical-pack", 1}}
}

if mods["factorissimo-2-notnotmelon"] then
data.raw.technology["factory-connection-type-heat"].order = "nullius-e"
data.raw.technology["factory-connection-type-heat"].prerequisites = {
    "factory-recursion-t1", "nullius-thermal-storage-2"}
data.raw.technology["factory-connection-type-heat"].unit = {
    count = 5*factory_mult, time = 35,
    ingredients = {
        {"nullius-geology-pack", 1}, {"nullius-climatology-pack", 1},
        {"nullius-mechanical-pack", 1}, {"nullius-electrical-pack", 1},
        {"nullius-chemical-pack", 1}}
}

if mods["ch-concentrated-solar"] then
table.insert(data.raw.technology["nullius-concentrated-solar-energy"].prerequisites,
    "factory-connection-type-heat")
else
table.insert(data.raw.technology["nullius-geothermal-power-2"].prerequisites,
    "factory-connection-type-heat")
end
end

data.raw.technology["factory-connection-type-circuit"].order = "nullius-e"
data.raw.technology["factory-connection-type-circuit"].prerequisites = {
    "nullius-empiricism-2", "factory-connection-type-chest"}
if mods["factorissimo-2-notnotmelon"] then
data.raw.technology["factory-connection-type-circuit"].effects =
    {{type = "unlock-recipe", recipe = "nullius-factory-circuit-connector"}}
data.raw["electric-pole"]["factory-circuit-connector"].minable.mining_time = 0.8
else
data.raw.technology["factory-connection-type-circuit"].effects =
    {{type = "unlock-recipe", recipe = "nullius-factory-circuit-input"},
     {type = "unlock-recipe", recipe = "nullius-factory-circuit-output"}}
data.raw["pump"]["factory-circuit-input"].minable.mining_time = 0.8
end
data.raw.technology["factory-connection-type-circuit"].unit = {
    count = 2*factory_mult, time = 30,
    ingredients = {
        {"nullius-geology-pack", 1}, {"nullius-electrical-pack", 1}}
}
if mods["Warehousing"] then
  table.insert(data.raw.technology["nullius-plumbing-4"].prerequisites,"factory-connection-type-chest")
else
end

data.raw.technology["factory-interior-upgrade-lights"].order = "nullius-e"
data.raw.technology["factory-interior-upgrade-lights"].prerequisites = {
    "nullius-illumination-2"}
data.raw.technology["factory-interior-upgrade-lights"].unit = {
    count = 3*factory_mult, time = 30,
    ingredients = {
        {"nullius-geology-pack", 1}, {"nullius-climatology-pack", 1},
        {"nullius-electrical-pack", 1}, {"nullius-chemical-pack", 1}}
}

data.raw.technology["factory-interior-upgrade-display"].order = "nullius-e"
data.raw.technology["factory-interior-upgrade-display"].prerequisites = {
    "factory-recursion-t1", "nullius-aesthetics-2"}
data.raw.technology["factory-interior-upgrade-display"].unit = {
    count = 4*factory_mult, time = 35,
    ingredients = {
        {"nullius-geology-pack", 1}, {"nullius-climatology-pack", 1},
        {"nullius-mechanical-pack", 1}, {"nullius-electrical-pack", 1},
        {"nullius-chemical-pack", 1}}
}
table.insert(data.raw.technology["nullius-packaging-5"].prerequisites,"factory-interior-upgrade-display")

data.raw.technology["factory-preview"].order = "nullius-e"
data.raw.technology["factory-preview"].prerequisites = {
    "factory-interior-upgrade-display", "nullius-checkpoint-large-beacon"}
data.raw.technology["factory-preview"].unit = {
    count = 8*factory_mult, time = 35,
    ingredients = {
        {"nullius-geology-pack", 1}, {"nullius-climatology-pack", 1},
        {"nullius-mechanical-pack", 1}, {"nullius-electrical-pack", 1},
        {"nullius-chemical-pack", 1}}
}

if mods["factorissimo-2-notnotmelon"] then
data.raw.technology["factory-recursion-t1"].prerequisites = {
    "factory-architecture-t2", "nullius-packaging-4"}
else
data.raw.technology["factory-recursion-t1"].prerequisites = {
    "factory-requester-chest", "nullius-packaging-4"}
data.raw.technology["factory-requester-chest"].order = "nullius-e"
data.raw.technology["factory-requester-chest"].prerequisites = {
    "factory-architecture-t2", "nullius-checkpoint-logistic-robot-2"}
data.raw.technology["factory-requester-chest"].effects =
    {{type = "unlock-recipe", recipe = "nullius-factory-requester-chest"}}
data.raw.technology["factory-requester-chest"].unit = {
    count = 5*factory_mult, time = 30,
    ingredients = {
        {"nullius-geology-pack", 1}, {"nullius-climatology-pack", 1},
        {"nullius-mechanical-pack", 1}, {"nullius-electrical-pack", 1},
        {"nullius-chemical-pack", 1}}
}
end

data.raw.technology["factory-recursion-t1"].order = "nullius-e"
data.raw.technology["factory-recursion-t1"].unit = {
    count = 8*factory_mult, time = 35,
    ingredients = {
        {"nullius-geology-pack", 1}, {"nullius-climatology-pack", 1},
        {"nullius-mechanical-pack", 1}, {"nullius-electrical-pack", 1},
        {"nullius-chemical-pack", 1}}
}

data.raw.technology["factory-recursion-t2"].order = "nullius-e"
data.raw.technology["factory-recursion-t2"].prerequisites = {
    "factory-architecture-t3", "nullius-physics"}
data.raw.technology["factory-recursion-t2"].unit = {
    count = 25*factory_mult, time = 40,
    ingredients = {
        {"nullius-geology-pack", 1}, {"nullius-climatology-pack", 1},
        {"nullius-mechanical-pack", 1}, {"nullius-electrical-pack", 1},
        {"nullius-chemical-pack", 1}, {"nullius-physics-pack", 1}}
}
table.insert(data.raw.technology["nullius-logistics-4"].prerequisites,"factory-recursion-t2")

data.raw.pipe["factory-fluid-dummy-connector-"..defines.direction.south].fluid_box.height = 5
data.raw.pipe["factory-fluid-dummy-connector-"..defines.direction.north].fluid_box.height = 5
data.raw.pipe["factory-fluid-dummy-connector-"..defines.direction.east].fluid_box.height = 5
data.raw.pipe["factory-fluid-dummy-connector-"..defines.direction.west].fluid_box.height = 5

data.raw["storage-tank"]["factory-1"].minable.mining_time = 4
data.raw["storage-tank"]["factory-2"].minable.mining_time = 6
data.raw["storage-tank"]["factory-3"].minable.mining_time = 8

data.raw.technology["factory-architecture-t1"].localised_name = {"", {"technology-name.nullius-architecture"}, " ", 1}
data.raw.technology["factory-architecture-t2"].localised_name = {"", {"technology-name.nullius-architecture"}, " ", 2}
data.raw.technology["nullius-architecture-1"].localised_name = {"", {"technology-name.nullius-architecture"}, " ", 3}
data.raw.technology["factory-architecture-t3"].localised_name = {"", {"technology-name.nullius-architecture"}, " ", 4}
end


if mods["bobinserters"] and (settings.startup["bobmods-inserters-long2"].value == true) then
data.raw.technology["long-inserters-1"].order = "nullius-ce"
data.raw.technology["long-inserters-1"].prerequisites = {"nullius-automation"}
data.raw.technology["long-inserters-1"].unit = { count = 3,
  ingredients = {{"nullius-mechanical-pack", 1}},
  time = 8
}
table.insert(data.raw.technology["nullius-aesthetics-1"].prerequisites,"long-inserters-2")

data.raw.technology["long-inserters-2"].order = "nullius-dd"
data.raw.technology["long-inserters-2"].prerequisites = {"nullius-maintenance"}
data.raw.technology["long-inserters-2"].unit = { count = 20,
  ingredients = {{"nullius-mechanical-pack", 1}, {"nullius-electrical-pack", 1}},
  time = 20
}
else
data.raw.technology["long-inserters-1"].order = "nullius-dd"
data.raw.technology["long-inserters-1"].localised_name = {"technology-name.nullius-long-inserters"}
data.raw.technology["long-inserters-1"].localised_description = {"technology-description.nullius-long-inserters"}
data.raw.technology["long-inserters-1"].prerequisites = {"nullius-lubrication", "nullius-mass-production-1"}
data.raw.technology["long-inserters-1"].unit = { count = 8,
  ingredients = {{"nullius-mechanical-pack", 1}},
  time = 6
}
end
data.raw.technology["long-inserters-1"].ignore_tech_cost_multiplier = true


if mods["miniloader"] then
if settings.startup["miniloader-enable-chute"].value then
  table.insert(data.raw["technology"]["nullius-logistics-1"].effects,
      {type = "unlock-recipe", recipe = "nullius-miniloader-chute"})
  data.raw.item["chute-miniloader"].subgroup = "miniloader"
  data.raw.item["chute-miniloader"].order = "nullius-b"
end

if settings.startup["miniloader-enable-standard"].value then
data.raw.item["miniloader"].localised_name = {"", {"entity-name.miniloader"}, " ", 1}
data.raw.item["miniloader"].subgroup = "miniloader"
data.raw.item["miniloader"].order = "nullius-cb"
data.raw["loader-1x1"]["miniloader-loader"].localised_name = {"", {"entity-name.miniloader"}, " ", 1}
data.raw["inserter"]["miniloader-inserter"].localised_name = {"", {"entity-name.miniloader"}, " ", 1}
data.raw["inserter"]["miniloader-inserter"].minable.mining_time = 0.4

data.raw.item["fast-miniloader"].localised_name = {"", {"entity-name.miniloader"}, " ", 2}
data.raw.item["fast-miniloader"].subgroup = "miniloader"
data.raw.item["fast-miniloader"].order = "nullius-db"
data.raw["loader-1x1"]["fast-miniloader-loader"].localised_name = {"", {"entity-name.miniloader"}, " ", 2}
data.raw["inserter"]["fast-miniloader-inserter"].localised_name = {"", {"entity-name.miniloader"}, " ", 2}
data.raw["inserter"]["fast-miniloader-inserter"].minable.mining_time = 0.6

data.raw.item["express-miniloader"].localised_name = {"", {"entity-name.miniloader"}, " ", 3}
data.raw.item["express-miniloader"].subgroup = "miniloader"
data.raw.item["express-miniloader"].order = "nullius-eb"
data.raw["loader-1x1"]["express-miniloader-loader"].localised_name = {"", {"entity-name.miniloader"}, " ", 3}
data.raw["inserter"]["express-miniloader-inserter"].localised_name = {"", {"entity-name.miniloader"}, " ", 3}
data.raw["inserter"]["express-miniloader-inserter"].next_upgrade = "ultimate-miniloader-inserter"
data.raw["inserter"]["express-miniloader-inserter"].minable.mining_time = 0.8

data.raw.item["ultimate-miniloader"].localised_name = {"", {"entity-name.miniloader"}, " ", 4}
data.raw.item["ultimate-miniloader"].subgroup = "miniloader"
data.raw.item["ultimate-miniloader"].order = "nullius-fb"
data.raw["loader-1x1"]["ultimate-miniloader-loader"].localised_name = {"", {"entity-name.miniloader"}, " ", 4}
data.raw["inserter"]["ultimate-miniloader-inserter"].localised_name = {"", {"entity-name.miniloader"}, " ", 4}
data.raw["inserter"]["ultimate-miniloader-inserter"].next_upgrade = nil
data.raw["inserter"]["ultimate-miniloader-inserter"].minable.mining_time = 1
end

if settings.startup["miniloader-enable-filter"].value then
data.raw.item["fast-filter-miniloader"].localised_name = {"", {"entity-name.filter-miniloader"}, " ", 2}
data.raw.item["fast-filter-miniloader"].subgroup = "miniloader"
data.raw.item["fast-filter-miniloader"].order = "nullius-dc"
data.raw["loader-1x1"]["fast-filter-miniloader-loader"].localised_name =
    {"", {"entity-name.filter-miniloader"}, " ", 2}
data.raw["inserter"]["fast-filter-miniloader-inserter"].localised_name =
    {"", {"entity-name.filter-miniloader"}, " ", 2}
data.raw["inserter"]["fast-filter-miniloader-inserter"].minable.mining_time = 0.6

data.raw.item["express-filter-miniloader"].localised_name = {"", {"entity-name.filter-miniloader"}, " ", 3}
data.raw.item["express-filter-miniloader"].subgroup = "miniloader"
data.raw.item["express-filter-miniloader"].order = "nullius-ec"
data.raw["loader-1x1"]["express-filter-miniloader-loader"].localised_name =
    {"", {"entity-name.filter-miniloader"}, " ", 3}
data.raw["inserter"]["express-filter-miniloader-inserter"].localised_name =
    {"", {"entity-name.filter-miniloader"}, " ", 3}
data.raw["inserter"]["express-filter-miniloader-inserter"].next_upgrade = "ultimate-filter-miniloader-inserter"
data.raw["inserter"]["express-filter-miniloader-inserter"].minable.mining_time = 0.8

data.raw.item["ultimate-filter-miniloader"].localised_name = {"", {"entity-name.filter-miniloader"}, " ", 4}
data.raw.item["ultimate-filter-miniloader"].subgroup = "miniloader"
data.raw.item["ultimate-filter-miniloader"].order = "nullius-fc"
data.raw["loader-1x1"]["ultimate-filter-miniloader-loader"].localised_name =
    {"", {"entity-name.filter-miniloader"}, " ", 4}
data.raw["inserter"]["ultimate-filter-miniloader-inserter"].localised_name =
    {"", {"entity-name.filter-miniloader"}, " ", 4}
data.raw["inserter"]["ultimate-filter-miniloader-inserter"].next_upgrade = nil
data.raw["inserter"]["ultimate-filter-miniloader-inserter"].minable.mining_time = 1
end

if (settings.startup["miniloader-enable-standard"].value and
      not settings.startup["miniloader-enable-chute"].value) then
  data.raw.recipe["nullius-miniloader-1"].ingredients = {
    {type="item", name="wooden-chest", amount=1},
    {type="item", name="underground-belt", amount=2},
    {type="item", name="inserter", amount=4}
  }
end
if (settings.startup["miniloader-enable-filter"].value and
      not settings.startup["miniloader-enable-standard"].value) then
  data.raw.recipe["nullius-filter-miniloader-2"].ingredients = {
    {type="item", name="iron-chest", amount=1},
    {type="item", name="fast-underground-belt", amount=2},
    {type="item", name="turbo-filter-inserter", amount=4}
  }
end

data.raw.technology["nullius-mass-production-1"].prerequisites = {
    "nullius-miniloader-1", "nullius-checkpoint-mineral-dust"}
if mods["bobinserters"] and (settings.startup["bobmods-inserters-long2"].value == true) then
table.insert(data.raw.technology["long-inserters-2"].prerequisites,"nullius-miniloader-2")
else
table.insert(data.raw.technology["nullius-mineral-processing-2"].prerequisites,"nullius-miniloader-2")
end
table.insert(data.raw.technology["nullius-inserter-capacity-2"].prerequisites,"nullius-miniloader-3")
table.insert(data.raw.technology["nullius-inserter-capacity-5"].prerequisites,"nullius-miniloader-4")
end


if mods["aai-loaders"] then
data.raw["item-subgroup"]["loader"].order = "cal"

AAILoaders.make_tier{
  name = "basic",
  transport_belt = "basic-transport-belt",
  speed = 0.2 / 32,
  color = {125, 125, 125},
  fluid = "lubricant", fluid_per_minute = "0.05",
  fluid_technology_prerequisites = {"lubricant"},
  technology = {
    prerequisites = {"logistics"},
    unit = {
      count = 30, time = 30,
      ingredients = {{"automation-science-pack", 1}}
    }
  },
  recipe = { ingredients = {{"transport-belt", 1}}, energy_required = 2 }
}

AAILoaders.make_tier{
  name = "ultimate",
  transport_belt = "ultimate-transport-belt",
  speed = 6 / 32,
  color = {22, 242, 99},
  fluid = "lubricant", fluid_per_minute = "0.25",
  fluid_technology_prerequisites = {"lubricant"},
  technology = {
    prerequisites = {"aai-express-loader"},
    unit = {
      count = 250, time = 30,
      ingredients = {{"automation-science-pack", 1},
	      {"logistic-science-pack", 1}, {"chemical-science-pack", 1}}
    }
  },
  recipe = { ingredients = {{"transport-belt", 1}}, energy_required = 2 }
}

data.raw["loader-1x1"]["aai-basic-loader"].localised_name = {"", {"entity-name.aai-loader"}, " ", 1}
data.raw["loader-1x1"]["aai-loader"].localised_name = {"", {"entity-name.aai-loader"}, " ", 2}
data.raw["loader-1x1"]["aai-fast-loader"].localised_name = {"", {"entity-name.aai-loader"}, " ", 3}
data.raw["loader-1x1"]["aai-express-loader"].localised_name = {"", {"entity-name.aai-loader"}, " ", 4}
data.raw["loader-1x1"]["aai-ultimate-loader"].localised_name = {"", {"entity-name.aai-loader"}, " ", 5}
data.raw["loader-1x1"]["aai-basic-loader"].localised_description = {"entity-description.nullius-loader"}
data.raw["loader-1x1"]["aai-loader"].localised_description = {"entity-description.nullius-loader"}
data.raw["loader-1x1"]["aai-fast-loader"].localised_description = {"entity-description.nullius-loader"}
data.raw["loader-1x1"]["aai-express-loader"].localised_description = {"entity-description.nullius-loader"}
data.raw["loader-1x1"]["aai-ultimate-loader"].localised_description = {"entity-description.nullius-loader"}
data.raw["loader-1x1"]["aai-basic-loader"].minable.mining_time = 0.4
data.raw["loader-1x1"]["aai-loader"].minable.mining_time = 0.5
data.raw["loader-1x1"]["aai-fast-loader"].minable.mining_time = 0.6
data.raw["loader-1x1"]["aai-express-loader"].minable.mining_time = 0.8
data.raw["loader-1x1"]["aai-ultimate-loader"].minable.mining_time = 1
data.raw["loader-1x1"]["aai-basic-loader"].next_upgrade = "aai-loader"
data.raw["loader-1x1"]["aai-loader"].next_upgrade = "aai-fast-loader"
data.raw["loader-1x1"]["aai-fast-loader"].next_upgrade = "aai-express-loader"
data.raw["loader-1x1"]["aai-express-loader"].next_upgrade = "aai-ultimate-loader"
data.raw["loader-1x1"]["aai-ultimate-loader"].next_upgrade = nil

data.raw["loader-1x1"]["aai-basic-loader"].energy_source = {type = "electric", usage_priority = "secondary-input"}
data.raw["loader-1x1"]["aai-loader"].energy_source = {type = "electric", usage_priority = "secondary-input"}
data.raw["loader-1x1"]["aai-fast-loader"].energy_source = {type = "electric", usage_priority = "secondary-input"}
data.raw["loader-1x1"]["aai-express-loader"].energy_source = {type = "electric", usage_priority = "secondary-input"}
data.raw["loader-1x1"]["aai-ultimate-loader"].energy_source = {type = "electric", usage_priority = "secondary-input"}
data.raw["loader-1x1"]["aai-basic-loader"].energy_per_item = "2.5kJ"
data.raw["loader-1x1"]["aai-loader"].energy_per_item = "3kJ"
data.raw["loader-1x1"]["aai-fast-loader"].energy_per_item = "3.5kJ"
data.raw["loader-1x1"]["aai-express-loader"].energy_per_item = "4kJ"
data.raw["loader-1x1"]["aai-ultimate-loader"].energy_per_item = "4.5kJ"

data.raw["loader-1x1"]["aai-basic-loader"].subgroup = "loader"
data.raw["loader-1x1"]["aai-loader"].subgroup = "loader"
data.raw["loader-1x1"]["aai-fast-loader"].subgroup = "loader"
data.raw["loader-1x1"]["aai-express-loader"].subgroup = "loader"
data.raw["loader-1x1"]["aai-ultimate-loader"].subgroup = "loader"
data.raw["loader-1x1"]["aai-basic-loader"].order = "nullius-lb"
data.raw["loader-1x1"]["aai-loader"].order = "nullius-lc"
data.raw["loader-1x1"]["aai-fast-loader"].order = "nullius-ld"
data.raw["loader-1x1"]["aai-express-loader"].order = "nullius-le"
data.raw["loader-1x1"]["aai-ultimate-loader"].order = "nullius-lf"
data.raw.item["aai-basic-loader"].subgroup = "loader"
data.raw.item["aai-loader"].subgroup = "loader"
data.raw.item["aai-fast-loader"].subgroup = "loader"
data.raw.item["aai-express-loader"].subgroup = "loader"
data.raw.item["aai-ultimate-loader"].subgroup = "loader"
data.raw.item["aai-basic-loader"].order = "nullius-lb"
data.raw.item["aai-loader"].order = "nullius-lc"
data.raw.item["aai-fast-loader"].order = "nullius-ld"
data.raw.item["aai-express-loader"].order = "nullius-le"
data.raw.item["aai-ultimate-loader"].order = "nullius-lf"
data.raw.item["aai-basic-loader"].localised_description = {"entity-description.nullius-loader"}
data.raw.item["aai-loader"].localised_description = {"entity-description.nullius-loader"}
data.raw.item["aai-fast-loader"].localised_description = {"entity-description.nullius-loader"}
data.raw.item["aai-express-loader"].localised_description = {"entity-description.nullius-loader"}
data.raw.item["aai-ultimate-loader"].localised_description = {"entity-description.nullius-loader"}

data.raw.technology["nullius-loader-1"].icons = data.raw.technology["aai-basic-loader"].icons
data.raw.technology["nullius-loader-2"].icons = data.raw.technology["aai-loader"].icons
data.raw.technology["nullius-loader-3"].icons = data.raw.technology["aai-fast-loader"].icons
data.raw.technology["nullius-loader-4"].icons = data.raw.technology["aai-express-loader"].icons
data.raw.technology["nullius-loader-5"].icons = data.raw.technology["aai-ultimate-loader"].icons

if (data.raw["loader-1x1"]["aai-turbo-loader"] ~= nil) then
data.raw["loader-1x1"]["aai-turbo-loader"].next_upgrade = nil
end

table.insert(data.raw.technology["nullius-mechanical-separation"].prerequisites,"nullius-loader-1")
table.insert(data.raw.technology["nullius-checkpoint-mass-production"].prerequisites,"nullius-loader-2")
if mods["bobinserters"] and (settings.startup["bobmods-inserters-long2"].value == true) then
table.insert(data.raw.technology["long-inserters-2"].prerequisites,"nullius-loader-3")
else
table.insert(data.raw.technology["nullius-mineral-processing-2"].prerequisites,"nullius-loader-3")
end
table.insert(data.raw.technology["nullius-inserter-capacity-2"].prerequisites,"nullius-loader-4")
table.insert(data.raw.technology["nullius-inserter-capacity-5"].prerequisites,"nullius-loader-5")
end


if mods["bobinserters"] then
if (settings.startup["bobmods-inserters-long2"].value == true) then
data.raw.technology["near-inserters"].prerequisites = {"long-inserters-1", "nullius-checkpoint-steel-ingot"}
data.raw.technology["near-inserters"].order = "nullius-cf"
data.raw.technology["near-inserters"].ignore_tech_cost_multiplier = true
data.raw.technology["near-inserters"].unit = { count = 3,
  ingredients = {{"nullius-mechanical-pack", 1}},
  time = 8
}
table.insert(data.raw.technology["nullius-toolmaking-2"].prerequisites,"near-inserters")
else
data.raw.technology["near-inserters"].prerequisites = {"nullius-maintenance"}
data.raw.technology["near-inserters"].order = "nullius-dg"
data.raw.technology["near-inserters"].unit = { count = 20,
  ingredients = {{"nullius-mechanical-pack", 1}, {"nullius-electrical-pack", 1}},
  time = 25
}
table.insert(data.raw.technology["nullius-aesthetics-1"].prerequisites,"near-inserters")
end

data.raw.technology["more-inserters-1"].order = "nullius-df"
data.raw.technology["more-inserters-1"].unit = { count = 70,
  ingredients = {{"nullius-mechanical-pack", 1}, {"nullius-electrical-pack", 1}},
  time = 30
}
data.raw.technology["more-inserters-1"].prerequisites = {
  "nullius-metalworking-2", "nullius-locomotion-1"}
table.insert(data.raw.technology["nullius-cybernetics-2"].prerequisites,"more-inserters-1")

if settings.startup["bobmods-inserters-more2"].value == true then
data.raw.technology["more-inserters-2"].order = "nullius-ek"
data.raw.technology["more-inserters-2"].unit = { count = 300,
  ingredients = {
    {"nullius-mechanical-pack", 1}, {"nullius-electrical-pack", 1},
    {"nullius-chemical-pack", 1}
  },
  time = 35
}
data.raw.technology["more-inserters-2"].prerequisites = {"nullius-logistics-3"}
table.insert(data.raw.technology["nullius-inserter-capacity-1"].prerequisites,"more-inserters-2")
end
end

if mods["train-pubsub"] then
data.raw.technology["train-manager"].order = "nullius-dl"
data.raw.technology["train-manager"].unit = {
  count = 300,
  ingredients = {
    {"nullius-geology-pack", 1}, {"nullius-climatology-pack", 1},
    {"nullius-mechanical-pack", 1}, {"nullius-electrical-pack", 1}
  },
  time = 30
}
data.raw.technology["train-manager"].prerequisites = {"nullius-distribution-1"}
table.insert(data.raw.technology["nullius-braking-1"].prerequisites,"train-manager")
data.raw.technology["train-manager"].effects = {
  {
    type = "unlock-recipe",
    recipe = "nullius-subscriber-train-stop"
  },
  {
    type = "unlock-recipe",
    recipe = "nullius-publisher-train-stop"
  },
  {
    type = "unlock-recipe",
    recipe = "nullius-train-publisher"
  },
  {
    type = "unlock-recipe",
    recipe = "nullius-train-config"
  }
}
end


if mods["Teleporters"] then
data.raw.technology["teleporter"].order = "nullius-fw"
data.raw.technology["teleporter"].prerequisites = {"nullius-personal-transportation-4"}
data.raw.technology["teleporter"].unit = {
  count = 6000,
  ingredients = {
    {"nullius-geology-pack", 1}, {"nullius-climatology-pack", 1},
    {"nullius-mechanical-pack", 1}, {"nullius-electrical-pack", 1},
    {"nullius-chemical-pack", 1}, {"nullius-physics-pack", 1}
  },
  time = 60
}
data.raw.technology["teleporter"].effects = {
  {
    type = "unlock-recipe",
    recipe = "nullius-teleporter"
  }
}

data.raw.item["teleporter"].subgroup = "vehicle"
data.raw.item["teleporter"].order = "nullius-f"
data.raw.item["teleporter"].stack_size = 5
table.insert(data.raw.technology["nullius-nuclear-power-3"].prerequisites,"teleporter")
end


if mods["jetpack"] then
data.raw["battery-equipment"]["jetpack-1"].localised_description =
  {"equipment-description.nullius-jetpack-1"}
data.raw["battery-equipment"]["jetpack-2"].localised_description =
  {"equipment-description.nullius-jetpack-2"}
data.raw["battery-equipment"]["jetpack-3"].localised_description =
  {"equipment-description.nullius-jetpack-3"}
data.raw["battery-equipment"]["jetpack-4"].localised_description =
  {"equipment-description.nullius-jetpack-4"}
data.raw.item["jetpack-1"].subgroup = "jetpack"
data.raw.item["jetpack-1"].order = "nullius-bb"
data.raw.item["jetpack-2"].subgroup = "jetpack"
data.raw.item["jetpack-2"].order = "nullius-bc"
data.raw.item["jetpack-3"].subgroup = "jetpack"
data.raw.item["jetpack-3"].order = "nullius-bd"
data.raw.item["jetpack-4"].subgroup = "jetpack"
data.raw.item["jetpack-4"].order = "nullius-be"
table.insert(data.raw["equipment-grid"]["nullius-armor-grid-2"].equipment_categories, "armor-jetpack")
table.insert(data.raw["equipment-grid"]["nullius-armor-grid-3"].equipment_categories, "armor-jetpack")
table.insert(data.raw["equipment-grid"]["nullius-armor-grid-4"].equipment_categories, "armor-jetpack")
table.insert(data.raw["equipment-grid"]["nullius-armor-grid-5"].equipment_categories, "armor-jetpack")
table.insert(data.raw["equipment-grid"]["nullius-armor-grid-6"].equipment_categories, "armor-jetpack")
table.insert(data.raw.technology["nullius-robot-speed-1"].prerequisites,"nullius-jetpack-1")
table.insert(data.raw.technology["nullius-electromagnetism-3"].prerequisites,"nullius-jetpack-2")
table.insert(data.raw.technology["nullius-braking-8"].prerequisites,"nullius-jetpack-3")
table.insert(data.raw.technology["nullius-cybernetics-7"].prerequisites,"nullius-jetpack-4")
end


if mods["underground-pipe-pack"] then
data.raw.item["one-to-one-forward-t2-pipe"].subgroup = "nullius-surface-junction"
data.raw.item["one-to-one-forward-t2-pipe"].order = "nullius-bb"
data.raw.item["one-to-one-forward-t2-pipe"].localised_name =
  {"", {"item-name.nullius-surface-two-way-junction"}, " ", 1}
data.raw.item["one-to-one-forward-t2-pipe"].localised_description =
  {"", {"item-description.nullius-surface-two-way-junction"},
  {"item-description.nullius-pressure-2"}, {"item-description.nullius-underground-ctrl-r"}}
data.raw.item["one-to-two-perpendicular-t2-pipe"].subgroup = "nullius-surface-junction"
data.raw.item["one-to-two-perpendicular-t2-pipe"].order = "nullius-bc"
data.raw.item["one-to-two-perpendicular-t2-pipe"].localised_name =
  {"", {"item-name.nullius-surface-three-way-junction"}, " ", 1}
data.raw.item["one-to-two-perpendicular-t2-pipe"].localised_description =
  {"", {"item-description.nullius-surface-three-way-junction"},
  {"item-description.nullius-pressure-2"}, {"item-description.nullius-underground-ctrl-r"}}
data.raw.item["one-to-three-forward-t2-pipe"].subgroup = "nullius-surface-junction"
data.raw.item["one-to-three-forward-t2-pipe"].order = "nullius-bd"
data.raw.item["one-to-three-forward-t2-pipe"].localised_name =
  {"", {"item-name.nullius-surface-four-way-junction"}, " ", 1}
data.raw.item["one-to-three-forward-t2-pipe"].localised_description =
  {"", {"item-description.nullius-surface-four-way-junction"},
  {"item-description.nullius-pressure-2"}, {"item-description.nullius-underground-ctrl-r"}}
data.raw.item["underground-i-t2-pipe"].subgroup = "nullius-underground-junction"
data.raw.item["underground-i-t2-pipe"].order = "nullius-bb"
data.raw.item["underground-i-t2-pipe"].localised_name =
  {"", {"item-name.nullius-underground-straight-junction"}, " ", 1}
data.raw.item["underground-i-t2-pipe"].localised_description =
  {"", {"item-description.nullius-underground-straight-junction"},
  {"item-description.nullius-pressure-2"}}
data.raw.item["underground-L-t2-pipe"].subgroup = "nullius-underground-junction"
data.raw.item["underground-L-t2-pipe"].order = "nullius-bc"
data.raw.item["underground-L-t2-pipe"].localised_name =
  {"", {"item-name.nullius-underground-elbow-junction"}, " ", 1}
data.raw.item["underground-L-t2-pipe"].localised_description =
  {"", {"item-description.nullius-underground-elbow-junction"},
  {"item-description.nullius-pressure-2"}}
data.raw.item["underground-t-t2-pipe"].subgroup = "nullius-underground-junction"
data.raw.item["underground-t-t2-pipe"].order = "nullius-bd"
data.raw.item["underground-t-t2-pipe"].localised_name =
  {"", {"item-name.nullius-underground-three-way-junction"}, " ", 1}
data.raw.item["underground-t-t2-pipe"].localised_description =
  {"", {"item-description.nullius-underground-three-way-junction"},
  {"item-description.nullius-pressure-2"}}

data.raw.item["one-to-one-forward-t3-pipe"].subgroup = "nullius-surface-junction"
data.raw.item["one-to-one-forward-t3-pipe"].order = "nullius-cb"
data.raw.item["one-to-one-forward-t3-pipe"].localised_name =
  {"", {"item-name.nullius-surface-two-way-junction"}, " ", 2}
data.raw.item["one-to-one-forward-t3-pipe"].localised_description =
  {"", {"item-description.nullius-surface-two-way-junction"},
  {"item-description.nullius-pressure-3"}, {"item-description.nullius-underground-ctrl-r"}}
data.raw.item["one-to-two-perpendicular-t3-pipe"].subgroup = "nullius-surface-junction"
data.raw.item["one-to-two-perpendicular-t3-pipe"].order = "nullius-cc"
data.raw.item["one-to-two-perpendicular-t3-pipe"].localised_name =
  {"", {"item-name.nullius-surface-three-way-junction"}, " ", 2}
data.raw.item["one-to-two-perpendicular-t3-pipe"].localised_description =
  {"", {"item-description.nullius-surface-three-way-junction"},
  {"item-description.nullius-pressure-3"}, {"item-description.nullius-underground-ctrl-r"}}
data.raw.item["one-to-three-forward-t3-pipe"].subgroup = "nullius-surface-junction"
data.raw.item["one-to-three-forward-t3-pipe"].order = "nullius-cd"
data.raw.item["one-to-three-forward-t3-pipe"].localised_name =
  {"", {"item-name.nullius-surface-four-way-junction"}, " ", 2}
data.raw.item["one-to-three-forward-t3-pipe"].localised_description =
  {"", {"item-description.nullius-surface-four-way-junction"},
  {"item-description.nullius-pressure-3"}, {"item-description.nullius-underground-ctrl-r"}}
data.raw.item["underground-i-t3-pipe"].subgroup = "nullius-underground-junction"
data.raw.item["underground-i-t3-pipe"].order = "nullius-cb"
data.raw.item["underground-i-t3-pipe"].localised_name =
  {"", {"item-name.nullius-underground-straight-junction"}, " ", 2}
data.raw.item["underground-i-t3-pipe"].localised_description =
  {"", {"item-description.nullius-underground-straight-junction"},
  {"item-description.nullius-pressure-3"}}
data.raw.item["underground-L-t3-pipe"].subgroup = "nullius-underground-junction"
data.raw.item["underground-L-t3-pipe"].order = "nullius-cc"
data.raw.item["underground-L-t3-pipe"].localised_name =
  {"", {"item-name.nullius-underground-elbow-junction"}, " ", 2}
data.raw.item["underground-L-t3-pipe"].localised_description =
  {"", {"item-description.nullius-underground-elbow-junction"},
  {"item-description.nullius-pressure-3"}}
data.raw.item["underground-t-t3-pipe"].subgroup = "nullius-underground-junction"
data.raw.item["underground-t-t3-pipe"].order = "nullius-cd"
data.raw.item["underground-t-t3-pipe"].localised_name =
  {"", {"item-name.nullius-underground-three-way-junction"}, " ", 2}
data.raw.item["underground-t-t3-pipe"].localised_description =
  {"", {"item-description.nullius-underground-three-way-junction"},
  {"item-description.nullius-pressure-3"}}

data.raw.item["one-to-one-forward-pipe"].subgroup = "nullius-surface-junction"
data.raw.item["one-to-one-forward-pipe"].order = "nullius-db"
data.raw.item["one-to-one-forward-pipe"].localised_name =
  {"", {"item-name.nullius-surface-two-way-junction"}, " ", 3}
data.raw.item["one-to-one-forward-pipe"].localised_description =
  {"", {"item-description.nullius-surface-two-way-junction"},
  {"item-description.nullius-pressure-4"}, {"item-description.nullius-underground-ctrl-r"}}
data.raw.item["one-to-two-perpendicular-pipe"].subgroup = "nullius-surface-junction"
data.raw.item["one-to-two-perpendicular-pipe"].order = "nullius-dc"
data.raw.item["one-to-two-perpendicular-pipe"].localised_name =
  {"", {"item-name.nullius-surface-three-way-junction"}, " ", 3}
data.raw.item["one-to-two-perpendicular-pipe"].localised_description =
  {"", {"item-description.nullius-surface-three-way-junction"},
  {"item-description.nullius-pressure-4"}, {"item-description.nullius-underground-ctrl-r"}}
data.raw.item["one-to-three-forward-pipe"].subgroup = "nullius-surface-junction"
data.raw.item["one-to-three-forward-pipe"].order = "nullius-dd"
data.raw.item["one-to-three-forward-pipe"].localised_name =
  {"", {"item-name.nullius-surface-four-way-junction"}, " ", 3}
data.raw.item["one-to-three-forward-pipe"].localised_description =
  {"", {"item-description.nullius-surface-four-way-junction"},
  {"item-description.nullius-pressure-4"}, {"item-description.nullius-underground-ctrl-r"}}
data.raw.item["one-to-four-pipe"].subgroup = "nullius-surface-junction"
data.raw.item["one-to-four-pipe"].order = "nullius-de"
data.raw.item["one-to-four-pipe"].localised_name =
  {"", {"item-name.nullius-surface-five-way-junction"}, " ", 3}
data.raw.item["one-to-four-pipe"].localised_description =
  {"", {"item-description.nullius-surface-five-way-junction"},
  {"item-description.nullius-pressure-4"}}
data.raw.item["underground-i-pipe"].subgroup = "nullius-underground-junction"
data.raw.item["underground-i-pipe"].order = "nullius-db"
data.raw.item["underground-i-pipe"].localised_name =
  {"", {"item-name.nullius-underground-straight-junction"}, " ", 3}
data.raw.item["underground-i-pipe"].localised_description =
  {"", {"item-description.nullius-underground-straight-junction"},
  {"item-description.nullius-pressure-4"}}
data.raw.item["underground-L-pipe"].subgroup = "nullius-underground-junction"
data.raw.item["underground-L-pipe"].order = "nullius-dc"
data.raw.item["underground-L-pipe"].localised_name =
  {"", {"item-name.nullius-underground-elbow-junction"}, " ", 3}
data.raw.item["underground-L-pipe"].localised_description =
  {"", {"item-description.nullius-underground-elbow-junction"},
  {"item-description.nullius-pressure-4"}}
data.raw.item["underground-t-pipe"].subgroup = "nullius-underground-junction"
data.raw.item["underground-t-pipe"].order = "nullius-dd"
data.raw.item["underground-t-pipe"].localised_name =
  {"", {"item-name.nullius-underground-three-way-junction"}, " ", 3}
data.raw.item["underground-t-pipe"].localised_description =
  {"", {"item-description.nullius-underground-three-way-junction"},
  {"item-description.nullius-pressure-4"}}
data.raw.item["underground-cross-pipe"].subgroup = "nullius-underground-junction"
data.raw.item["underground-cross-pipe"].order = "nullius-de"
data.raw.item["underground-cross-pipe"].localised_name =
  {"", {"item-name.nullius-underground-four-way-junction"}, " ", 3}
data.raw.item["underground-cross-pipe"].localised_description =
  {"", {"item-description.nullius-underground-four-way-junction"},
  {"item-description.nullius-pressure-4"}}

data.raw.item["80-overflow-valve"].subgroup = "valves"
data.raw.item["80-overflow-valve"].order = "nullius-dmb"
data.raw.item["80-overflow-valve"].localised_name =
  {"item-name.nullius-adjustable-relief-valve"}
data.raw.item["80-overflow-valve"].localised_description =
  {"item-description.nullius-adjustable-relief-valve"}
data.raw.item["80-top-up-valve"].subgroup = "valves"
data.raw.item["80-top-up-valve"].order = "nullius-dmc"
data.raw.item["80-top-up-valve"].localised_name =
  {"item-name.nullius-adjustable-top-up-valve"}
data.raw.item["80-top-up-valve"].localised_description =
  {"item-description.nullius-adjustable-top-up-valve"}
data.raw.item["80-top-up-valve"].place_result = "60-top-up-valve"
data.raw.item["underground-mini-pump"].subgroup = "pumping"
data.raw.item["underground-mini-pump"].order = "nullius-cm"
data.raw.item["underground-mini-pump"].localised_name =
  {"item-name.nullius-underground-pump"}
data.raw.item["underground-mini-pump"].localised_description =
  {"item-description.nullius-underground-pump"}

data.raw.technology["advanced-underground-piping"].localised_name = {"",
  {"technology-name.advanced-underground-piping"}, " ", 1}
data.raw.technology["advanced-underground-piping"].icon =
  "__underground-pipe-pack__/graphics/technology/advanced-underground-piping-t2.png"
data.raw.technology["advanced-underground-piping"].prerequisites = {"nullius-checkpoint-freshwater"}
table.insert(data.raw.technology["nullius-volcanism-1"].prerequisites,"advanced-underground-piping")
data.raw.technology["advanced-underground-piping"].order = "nullius-df"
data.raw.technology["advanced-underground-piping"].unit = {
  count = 40, time = 20,
  ingredients = {
    {"nullius-geology-pack", 2}, {"nullius-climatology-pack", 2},
    {"nullius-mechanical-pack", 1}, {"nullius-electrical-pack", 1}
  }
}
data.raw.technology["advanced-underground-piping"].effects = {
  {
    type = "unlock-recipe",
    recipe = "nullius-surface-two-way-junction-1"
  },
  {
    type = "unlock-recipe",
    recipe = "nullius-surface-three-way-junction-1"
  },
  {
    type = "unlock-recipe",
    recipe = "nullius-surface-four-way-junction-1"
  },
  {
    type = "unlock-recipe",
    recipe = "nullius-underground-straight-junction-1"
  },
  {
    type = "unlock-recipe",
    recipe = "nullius-underground-elbow-junction-1"
  },
  {
    type = "unlock-recipe",
    recipe = "nullius-underground-three-way-junction-1"
  },
  {
    type = "unlock-recipe",
    recipe = "nullius-adjustable-relief-valve"
  },
  {
    type = "unlock-recipe",
    recipe = "nullius-adjustable-top-up-valve"
  }
}

data.raw.technology["advanced-underground-piping-t2"].localised_name = {"",
  {"technology-name.advanced-underground-piping"}, " ", 2}
data.raw.technology["advanced-underground-piping-t2"].localised_description =
  {"technology-description.advanced-underground-piping"}
data.raw.technology["advanced-underground-piping-t2"].icon =
  "__underground-pipe-pack__/graphics/technology/advanced-underground-piping-t3.png"
data.raw.technology["advanced-underground-piping-t2"].prerequisites = {"nullius-checkpoint-large-tank"}
table.insert(data.raw.technology["nullius-pressure-containment"].prerequisites,"advanced-underground-piping-t2")
data.raw.technology["advanced-underground-piping-t2"].order = "nullius-ek"
data.raw.technology["advanced-underground-piping-t2"].unit = {
  count = 500, time = 30,
  ingredients = {
    {"nullius-geology-pack", 2}, {"nullius-climatology-pack", 2},
    {"nullius-mechanical-pack", 1}, {"nullius-chemical-pack", 1}
  }
}
data.raw.technology["advanced-underground-piping-t2"].effects = {
  {
    type = "unlock-recipe",
    recipe = "nullius-surface-two-way-junction-2"
  },
  {
    type = "unlock-recipe",
    recipe = "nullius-surface-three-way-junction-2"
  },
  {
    type = "unlock-recipe",
    recipe = "nullius-surface-four-way-junction-2"
  },
  {
    type = "unlock-recipe",
    recipe = "nullius-underground-straight-junction-2"
  },
  {
    type = "unlock-recipe",
    recipe = "nullius-underground-elbow-junction-2"
  },
  {
    type = "unlock-recipe",
    recipe = "nullius-underground-three-way-junction-2"
  }
}

data.raw.technology["advanced-underground-piping-t3"].localised_name = {"",
  {"technology-name.advanced-underground-piping"}, " ", 3}
data.raw.technology["advanced-underground-piping-t3"].localised_description =
  {"technology-description.advanced-underground-piping"}
data.raw.technology["advanced-underground-piping-t3"].icon =
  "__underground-pipe-pack__/graphics/technology/advanced-underground-piping-t1.png"
data.raw.technology["advanced-underground-piping-t3"].prerequisites = {"nullius-chemical-engineering-3"}
table.insert(data.raw.technology["nullius-venting-3"].prerequisites,"advanced-underground-piping-t3")
data.raw.technology["advanced-underground-piping-t3"].order = "nullius-fi"
data.raw.technology["advanced-underground-piping-t3"].unit = {
  count = 2000, time = 45,
  ingredients = {
    {"nullius-geology-pack", 2}, {"nullius-climatology-pack", 2},
    {"nullius-mechanical-pack", 1}, {"nullius-physics-pack", 1}
  }
}
data.raw.technology["advanced-underground-piping-t3"].effects = {
  {
    type = "unlock-recipe",
    recipe = "nullius-surface-two-way-junction-3"
  },
  {
    type = "unlock-recipe",
    recipe = "nullius-surface-three-way-junction-3"
  },
  {
    type = "unlock-recipe",
    recipe = "nullius-surface-four-way-junction-3"
  },
  {
    type = "unlock-recipe",
    recipe = "nullius-surface-five-way-junction-3"
  },
  {
    type = "unlock-recipe",
    recipe = "nullius-underground-straight-junction-3"
  },
  {
    type = "unlock-recipe",
    recipe = "nullius-underground-elbow-junction-3"
  },
  {
    type = "unlock-recipe",
    recipe = "nullius-underground-three-way-junction-3"
  },
  {
    type = "unlock-recipe",
    recipe = "nullius-underground-four-way-junction-3"
  },
  {
    type = "unlock-recipe",
    recipe = "nullius-underground-pump"
  }
}

data.raw.pump["underground-mini-pump"].localised_name =
  {"item-name.nullius-underground-pump"}
data.raw.pump["underground-mini-pump"].localised_description =
  {"item-description.nullius-underground-pump"}
data.raw.pump["underground-mini-pump"].fluid_box.height = 8
data.raw.pump["underground-mini-pump"].fluid_box.pipe_connections[1].max_underground_distance=24
data.raw.pump["underground-mini-pump"].fluid_box.pipe_connections[2].max_underground_distance=24
data.raw.pump["underground-mini-pump"].energy_usage = '20kW'
data.raw.pump["underground-mini-pump"].pumping_speed = 80

for _,junction in pairs(data.raw["pipe-to-ground"]) do
  if ((string.sub(junction.name, -5, -1) == "-pipe") and
      (junction.minable.result ~= nil)) then
    local lvl = 4
    local tint = {0.7, 0.7, 0.4}
    if (string.sub(junction.name, -8, -6) == "-t2") then
      lvl = 2
      tint = {1, 0.75, 0.75}
    elseif (string.sub(junction.name, -8, -6) == "-t3") then
      lvl = 3
      tint = {0.75, 0.75, 1}
    end

    local dist = 7 + (lvl * 4)
    if (string.sub(junction.name, 1, 7) ~= "one-to-") then
      dist = dist + 1
    else
      for _,pic in pairs(junction.pictures) do
        pic.tint = tint
        pic.hr_version.tint = tint
      end
      for _,cover in pairs(junction.fluid_box.pipe_covers) do
        cover.layers[1].tint = tint
        cover.layers[1].hr_version.tint = tint
      end

	  local subdir = string.sub(junction.pictures.up.filename, 1, 50)
      junction.pictures.up = { layers = {
	    {
          filename = subdir .. "pipe-covers/hr-pipe-cover-north.png",
          priority = "extra-high",
          width = 128, height = 128,
		  shift = {0, -1},
		  tint = tint,
          scale = 0.5
		},
		junction.pictures.up.hr_version
      }}
    end

    local basename = junction.name
    if (lvl < 4) then
      basename = string.sub(junction.name, 1, -8).."pipe"
    end
    junction.localised_name = {"", {"entity-name."..basename}, " ", (lvl - 1)}
    junction.localised_description =
      data.raw.item[junction.minable.result].localised_description

    local archetype = data.raw["pipe-to-ground"]["nullius-underground-pipe-"..lvl]
    junction.fluid_box.height = archetype.fluid_box.height
    junction.fluid_box.base_area = archetype.fluid_box.base_area
	junction.minable.mining_time = (lvl * 0.5)

    for _,connection in pairs(junction.fluid_box.pipe_connections) do
      if ((connection.max_underground_distance ~= nil) and
          (connection.max_underground_distance > 5)) then
        connection.max_underground_distance = dist
      end
    end
  end
end

local northpipe = {
    filename = "__base__/graphics/entity/pipe-covers/hr-pipe-cover-north.png",
    width = 128,
    height = 128,
    scale = 0.5,
	shift = {0, -1}
}

for i=1,9 do
  local topup = data.raw["storage-tank"][i.."0-top-up-valve"]
  local relief = data.raw["storage-tank"][i.."0-overflow-valve"]
  topup.localised_name = {"", (i*10), "% ", {"entity-name.nullius-top-up-valve"}}
  relief.localised_name = {"", (i*10), "% ", {"entity-name.nullius-relief-valve"}}
  topup.localised_description = {"item-description.nullius-adjustable-top-up-valve"}
  relief.localised_description = {"item-description.nullius-adjustable-relief-valve"}
  local theight = (i * 0.5)
  topup.fluid_box.height = theight
  topup.fluid_box.base_level = 0
  topup.fluid_box.base_area = 5 / theight
  local rheight = 6 - theight
  relief.fluid_box.height = rheight
  relief.fluid_box.base_level = theight
  relief.fluid_box.base_area = 5 / rheight
  topup.minable.mining_time = 0.8
  relief.minable.mining_time = 0.8

  topup.pictures.picture.north.layers = {
    northpipe,
    topup.pictures.picture.north.layers[1],
	topup.pictures.picture.north.layers[2],
	topup.pictures.picture.north.layers[3]
  }
  topup.pictures.picture.south.layers = {
    northpipe,
    topup.pictures.picture.south.layers[1],
	topup.pictures.picture.south.layers[2],
	topup.pictures.picture.south.layers[3]
  }
  relief.pictures.picture.north.layers = {
    northpipe,
    relief.pictures.picture.north.layers[1],
	relief.pictures.picture.north.layers[2],
	relief.pictures.picture.north.layers[3]
  }
  relief.pictures.picture.south.layers = {
    northpipe,
    relief.pictures.picture.south.layers[1],
	relief.pictures.picture.south.layers[2],
	relief.pictures.picture.south.layers[3]
  }
end
end


if mods["Warehousing"] then
  data.raw.item["storehouse-basic"].order = "nullius-mb"
  data.raw.item["warehouse-basic"].order = "nullius-mc"
  data.raw.item["storehouse-storage"].order = "nullius-bb"
  data.raw.item["warehouse-storage"].order = "nullius-bc"
  data.raw.item["storehouse-passive-provider"].order = "nullius-cb"
  data.raw.item["warehouse-passive-provider"].order = "nullius-cc"
  data.raw.item["storehouse-requester"].order = "nullius-db"
  data.raw.item["warehouse-requester"].order = "nullius-dc"
  data.raw.item["storehouse-buffer"].order = "nullius-eb"
  data.raw.item["warehouse-buffer"].order = "nullius-ec"
  data.raw.item["storehouse-active-provider"].order = "nullius-fb"
  data.raw.item["warehouse-active-provider"].order = "nullius-fc"

  data.raw["container"]["storehouse-basic"].minable.mining_time = 1.6
  data.raw["container"]["warehouse-basic"].minable.mining_time = 2.8
  data.raw["logistic-container"]["storehouse-storage"].minable.mining_time = 2
  data.raw["logistic-container"]["warehouse-storage"].minable.mining_time = 3.5
  data.raw["logistic-container"]["storehouse-passive-provider"].minable.mining_time = 2
  data.raw["logistic-container"]["warehouse-passive-provider"].minable.mining_time = 3.5
  data.raw["logistic-container"]["storehouse-requester"].minable.mining_time = 2
  data.raw["logistic-container"]["warehouse-requester"].minable.mining_time = 3.5
  data.raw["logistic-container"]["storehouse-buffer"].minable.mining_time = 2
  data.raw["logistic-container"]["warehouse-buffer"].minable.mining_time = 3.5
  data.raw["logistic-container"]["storehouse-active-provider"].minable.mining_time = 2
  data.raw["logistic-container"]["warehouse-active-provider"].minable.mining_time = 3.5
  
  table.insert(data.raw.technology["nullius-mass-production-2"].prerequisites,"nullius-warehousing-1")
  table.insert(data.raw.technology["nullius-distribution-1"].prerequisites,"nullius-warehousing-2")
  table.insert(data.raw.technology["nullius-mass-production-6"].prerequisites,"nullius-warehousing-4")
if mods["Factorissimo2"] or mods["factorissimo-2-notnotmelon"] then
  table.insert(data.raw.technology["factory-interior-upgrade-lights"].prerequisites,"nullius-warehousing-3")
else
  table.insert(data.raw.technology["nullius-packaging-2"].prerequisites,"nullius-warehousing-3")
end
end


if mods["Induction Charging"] then
data.raw.item["induction-coil"].subgroup = "solar"
data.raw.item["induction-coil"].order = "nullius-ib"
data.raw.item["induction-coil"].stack_size = 50

data.raw.recipe["induction-coil"].order = "nullius-ib"
data.raw.recipe["induction-coil"].always_show_made_in = true
data.raw.recipe["induction-coil"].energy_required = 5
data.raw.recipe["induction-coil"].categories = nil
data.raw.recipe["induction-coil"].category = "small-crafting"
data.raw.recipe["induction-coil"].ingredients = {
  {"nullius-capacitor", 5},
  {"decider-combinator", 3},
  {"copper-cable", 12},
  {"nullius-aluminum-rod", 8}
}

data.raw.technology["induction-technology1"].order = "nullius-cm"
data.raw.technology["induction-technology1"].prerequisites = {"nullius-electronics-1"}
data.raw.technology["induction-technology1"].unit = {
  count = 20, time = 6,
  ingredients = {{"nullius-geology-pack", 1}, {"nullius-climatology-pack", 1},
    {"nullius-mechanical-pack", 1}}
}

data.raw.technology["induction-technology2"].order = "nullius-dd"
data.raw.technology["induction-technology2"].prerequisites = {
  "nullius-energy-distribution-2", "induction-technology1" }
data.raw.technology["induction-technology2"].unit = {
  count = 80, time = 15,
  ingredients = {
    {"nullius-geology-pack", 2}, {"nullius-climatology-pack", 1},
    {"nullius-mechanical-pack", 1}, {"nullius-electrical-pack", 1}
  }
}

data.raw.technology["induction-technology3"].order = "nullius-dl"
data.raw.technology["induction-technology3"].prerequisites = {
  "nullius-energy-distribution-3", "nullius-projection-1", "induction-technology2" }
data.raw.technology["induction-technology3"].unit = {
  count = 250, time = 30,
  ingredients = {
    {"nullius-geology-pack", 2}, {"nullius-climatology-pack", 1},
    {"nullius-mechanical-pack", 1}, {"nullius-electrical-pack", 1}
  }
}

data.raw.technology["induction-technology4"].order = "nullius-ek"
data.raw.technology["induction-technology4"].prerequisites = {
  "nullius-broadcasting-2", "induction-technology3" }
data.raw.technology["induction-technology4"].unit = {
  count = 800, time = 30,
  ingredients = {
    {"nullius-geology-pack", 1}, {"nullius-climatology-pack", 1},
    {"nullius-mechanical-pack", 1}, {"nullius-electrical-pack", 1},
    {"nullius-chemical-pack", 1}
  }
}

data.raw.technology["induction-technology5"].order = "nullius-fm"
data.raw.technology["induction-technology5"].prerequisites = {
  "nullius-battery-storage-4", "induction-technology4" }
data.raw.technology["induction-technology5"].unit = {
  count = 2000, time = 45,
  ingredients = {
    {"nullius-geology-pack", 1}, {"nullius-climatology-pack", 1},
    {"nullius-mechanical-pack", 1}, {"nullius-electrical-pack", 1},
    {"nullius-chemical-pack", 1}, {"nullius-physics-pack", 1}
  }
}
end


if mods["Transport_Drones"] then
data.raw["item-subgroup"]["transport-drones"].order = "gd"

data.raw.technology["transport-system"].order = "nullius-dg"
data.raw.technology["transport-system"].prerequisites = {
  "nullius-robotics-1", "nullius-checkpoint-compressed-nitrogen" }
data.raw.technology["transport-system"].unit = {
  count = 100, time = 30,
  ingredients = {
    {"nullius-geology-pack", 1}, {"nullius-climatology-pack", 1},
    {"nullius-mechanical-pack", 1}, {"nullius-electrical-pack", 1}
  }
}
data.raw.technology["transport-depot-circuits"].order = "nullius-dk"
data.raw.technology["transport-depot-circuits"].prerequisites = {
  "transport-system", "nullius-broadcasting-1" }
data.raw.technology["transport-depot-circuits"].unit = {
  count = 80, time = 30,
  ingredients = {
    {"nullius-geology-pack", 1}, {"nullius-climatology-pack", 1},
    {"nullius-mechanical-pack", 1}, {"nullius-electrical-pack", 1}
  }
}
table.insert(data.raw.technology["nullius-sensors-2"].prerequisites,"transport-depot-circuits")

data.raw.technology["transport-drone-speed-1"].order = "nullius-dl"
data.raw.technology["transport-drone-speed-1"].prerequisites = {
  "nullius-robot-speed-1" }
data.raw.technology["transport-drone-speed-1"].unit = {
  count = 200, time = 30,
  ingredients = {
    {"nullius-geology-pack", 1}, {"nullius-climatology-pack", 1},
    {"nullius-mechanical-pack", 1}, {"nullius-electrical-pack", 1}
  }
}
data.raw.technology["transport-drone-capacity-1"].order = "nullius-dl"
data.raw.technology["transport-drone-capacity-1"].prerequisites = {
  "transport-drone-speed-1", "nullius-braking-1"}
data.raw.technology["transport-drone-capacity-1"].unit = {
  count = 250, time = 30,
  ingredients = {
    {"nullius-geology-pack", 1}, {"nullius-climatology-pack", 1},
    {"nullius-mechanical-pack", 1}, {"nullius-electrical-pack", 1}
  }
}
data.raw.technology["nullius-braking-2"].prerequisites =
    {"nullius-checkpoint-ceramic-powder", "transport-drone-capacity-1"}

data.raw.technology["transport-drone-speed-2"].order = "nullius-en"
data.raw.technology["transport-drone-speed-2"].prerequisites = {
  "nullius-robot-speed-2", "nullius-checkpoint-truck" }
data.raw.technology["transport-drone-speed-2"].unit = {
  count = 800, time = 35,
  ingredients = {
    {"nullius-geology-pack", 1}, {"nullius-climatology-pack", 1},
    {"nullius-mechanical-pack", 1}, {"nullius-electrical-pack", 1},
    {"nullius-chemical-pack", 1}
  }
}
data.raw.technology["transport-drone-capacity-2"].order = "nullius-eo"
data.raw.technology["transport-drone-capacity-2"].prerequisites = {
  "transport-drone-speed-2", "nullius-robot-cargo-1" }
data.raw.technology["transport-drone-capacity-2"].unit = {
  count = 1000, time = 35,
  ingredients = {
    {"nullius-geology-pack", 1}, {"nullius-climatology-pack", 1},
    {"nullius-mechanical-pack", 1}, {"nullius-electrical-pack", 1},
    {"nullius-chemical-pack", 1}
  }
}
table.insert(data.raw.technology["nullius-electromagnetism-3"].prerequisites,"transport-drone-capacity-2")

data.raw.technology["transport-drone-speed-3"].order = "nullius-fh"
data.raw.technology["transport-drone-speed-3"].prerequisites = {
  "transport-drone-capacity-3", "nullius-robot-speed-3" }
data.raw.technology["transport-drone-speed-3"].unit = {
  count = 1600, time = 45,
  ingredients = {
    {"nullius-geology-pack", 1}, {"nullius-climatology-pack", 1},
    {"nullius-mechanical-pack", 1}, {"nullius-electrical-pack", 1},
    {"nullius-chemical-pack", 1}, {"nullius-physics-pack", 1}
  }
}
data.raw.technology["transport-drone-speed-3"].effects[2] = {
  type = "unlock-recipe", recipe = "fast-road"
}
data.raw.technology["transport-drone-capacity-3"].order = "nullius-fh"
data.raw.technology["transport-drone-capacity-3"].prerequisites = {
  "nullius-mechanical-engineering-2" }
data.raw.technology["transport-drone-capacity-3"].unit = {
  count = 1600, time = 45,
  ingredients = {
    {"nullius-geology-pack", 1}, {"nullius-climatology-pack", 1},
    {"nullius-mechanical-pack", 1}, {"nullius-electrical-pack", 1},
    {"nullius-chemical-pack", 1}, {"nullius-physics-pack", 1}
  }
}
table.insert(data.raw.technology["nullius-braking-6"].prerequisites,"transport-drone-speed-3")

data.raw.technology["transport-drone-speed-4"].order = "nullius-fu"
data.raw.technology["transport-drone-speed-4"].prerequisites = {
  "nullius-personal-transportation-3", "nullius-robot-speed-4" }
data.raw.technology["transport-drone-speed-4"].unit = {
  count = 4200, time = 55,
  ingredients = {
    {"nullius-geology-pack", 1}, {"nullius-climatology-pack", 1},
    {"nullius-mechanical-pack", 1}, {"nullius-electrical-pack", 1},
    {"nullius-chemical-pack", 1}, {"nullius-physics-pack", 1}
  }
}
data.raw.technology["transport-drone-capacity-4"].order = "nullius-fv"
data.raw.technology["transport-drone-capacity-4"].prerequisites = {
  "transport-drone-speed-4", "nullius-braking-8" }
data.raw.technology["transport-drone-capacity-4"].unit = {
  count = 4500, time = 55,
  ingredients = {
    {"nullius-geology-pack", 1}, {"nullius-climatology-pack", 1},
    {"nullius-mechanical-pack", 1}, {"nullius-electrical-pack", 1},
    {"nullius-chemical-pack", 1}, {"nullius-physics-pack", 1}
  }
}
table.insert(data.raw.technology["nullius-inserter-capacity-6"].prerequisites,"transport-drone-capacity-4")

data.raw.technology["transport-drone-speed-5"].order = "nullius-gj"
data.raw.technology["transport-drone-speed-5"].prerequisites = {
  "nullius-robot-speed-5" }
data.raw.technology["transport-drone-speed-5"].unit = {
  count_formula = "(2^(L-5))*15000", time = 60,
  ingredients = {
    {"nullius-geology-pack", 1}, {"nullius-climatology-pack", 1},
    {"nullius-mechanical-pack", 1}, {"nullius-electrical-pack", 1},
    {"nullius-chemical-pack", 1}, {"nullius-physics-pack", 1},
    {"nullius-astronomy-pack", 1}
  }
}
data.raw.technology["transport-drone-capacity-5"].order = "nullius-gj"
data.raw.technology["transport-drone-capacity-5"].prerequisites = {
  "nullius-inserter-capacity-7" }
data.raw.technology["transport-drone-capacity-5"].unit = {
  count = 25000, time = 60,
  ingredients = {
    {"nullius-geology-pack", 1}, {"nullius-climatology-pack", 1},
    {"nullius-mechanical-pack", 1}, {"nullius-electrical-pack", 1},
    {"nullius-chemical-pack", 1}, {"nullius-physics-pack", 1},
    {"nullius-astronomy-pack", 1}
  }
}
data.raw.technology["nullius-inserter-capacity-8"].prerequisites =
    {"transport-drone-capacity-5", "nullius-locomotion-5"}

data.raw.item["road"].order = "nullius-b"
data.raw.item["road"].stack_size = 500
data.raw.recipe["road"].order = "nullius-b"
data.raw.recipe["road"].always_show_made_in = true
data.raw.recipe["road"].show_amount_in_title = false
data.raw.recipe["road"].always_show_products = true
data.raw.recipe["road"].category = "hand-casting"
data.raw.recipe["road"].energy_required = 3
data.raw.recipe["road"].result_count = 4
data.raw.recipe["road"].ingredients = {
  {"nullius-rubber", 1},
  {"nullius-land-fill-sand", 1},
  {"nullius-gravel", 3}
}
data.raw.item["transport-drone"].order = "nullius-c"
data.raw.item["transport-drone"].stack_size = 20
data.raw.recipe["transport-drone"].order = "nullius-c"
data.raw.recipe["transport-drone"].always_show_made_in = true
data.raw.recipe["transport-drone"].show_amount_in_title = false
data.raw.recipe["transport-drone"].always_show_products = true
data.raw.recipe["transport-drone"].category = "medium-crafting"
data.raw.recipe["transport-drone"].energy_required = 10
data.raw.recipe["transport-drone"].result_count = 3
data.raw.recipe["transport-drone"].ingredients = {
  {"nullius-car-1", 1},
  {"arithmetic-combinator", 5},
  {"programmable-speaker", 2},
  {"turbo-filter-inserter", 3}
}

data.raw.item["supply-depot"].order = "nullius-d"
data.raw.item["supply-depot"].stack_size = 20
data.raw.recipe["supply-depot"].order = "nullius-d"
data.raw.recipe["supply-depot"].always_show_made_in = true
data.raw.recipe["supply-depot"].category = "large-crafting"
data.raw.recipe["supply-depot"].energy_required = 12
data.raw.recipe["supply-depot"].ingredients = {
  {"nullius-large-chest-1", 1},
  {"nullius-steel-beam", 4},
  {"nullius-glass", 2},
  {"train-stop", 1}
}
data.raw.item["request-depot"].order = "nullius-e"
data.raw.item["request-depot"].stack_size = 20
data.raw.recipe["request-depot"].order = "nullius-e"
data.raw.recipe["request-depot"].always_show_made_in = true
data.raw.recipe["request-depot"].category = "large-crafting"
data.raw.recipe["request-depot"].energy_required = 6
data.raw.recipe["request-depot"].ingredients = {
  {"fluid-depot", 1},
  {"nullius-hangar-1", 1}
}
data.raw.item["buffer-depot"].order = "nullius-f"
data.raw.item["buffer-depot"].stack_size = 20
data.raw.recipe["buffer-depot"].order = "nullius-f"
data.raw.recipe["buffer-depot"].always_show_made_in = true
data.raw.recipe["buffer-depot"].no_productivity = true
data.raw.recipe["buffer-depot"].category = "large-crafting"
data.raw.recipe["buffer-depot"].energy_required = 4
data.raw.recipe["buffer-depot"].ingredients = {
  {"request-depot", 1},
  {"train-stop", 1}
}
data.raw.item["fluid-depot"].order = "nullius-g"
data.raw.item["fluid-depot"].stack_size = 20
data.raw.recipe["fluid-depot"].order = "nullius-g"
data.raw.recipe["fluid-depot"].always_show_made_in = true
data.raw.recipe["fluid-depot"].category = "large-crafting"
data.raw.recipe["fluid-depot"].energy_required = 4
data.raw.recipe["fluid-depot"].ingredients = {
  {"supply-depot", 1},
  {"nullius-medium-tank-2", 1},
  {"nullius-barrel-pump-1", 1}
}
data.raw.item["fuel-depot"].order = "nullius-h"
data.raw.item["fuel-depot"].stack_size = 20
data.raw.recipe["fuel-depot"].order = "nullius-h"
data.raw.recipe["fuel-depot"].always_show_made_in = true
data.raw.recipe["fuel-depot"].category = "large-crafting"
data.raw.recipe["fuel-depot"].energy_required = 4
data.raw.recipe["fuel-depot"].ingredients = {
  {"buffer-depot", 1},
  {"nullius-pump-2", 2}
}

data.raw.item["road-network-reader"].order = "nullius-i"
data.raw.item["road-network-reader"].stack_size = 50
data.raw.recipe["road-network-reader"].order = "nullius-i"
data.raw.recipe["road-network-reader"].always_show_made_in = true
data.raw.recipe["road-network-reader"].category = "small-crafting"
data.raw.recipe["road-network-reader"].energy_required = 5
data.raw.recipe["road-network-reader"].ingredients = {
  {"rail-chain-signal", 1},
  {"nullius-sensor-1", 1},
  {"programmable-speaker", 1}
}
data.raw.item["transport-depot-reader"].order = "nullius-j"
data.raw.item["transport-depot-reader"].stack_size = 50
data.raw.recipe["transport-depot-reader"].order = "nullius-j"
data.raw.recipe["transport-depot-reader"].always_show_made_in = true
data.raw.recipe["transport-depot-reader"].category = "small-crafting"
data.raw.recipe["transport-depot-reader"].energy_required = 2
data.raw.recipe["transport-depot-reader"].ingredients = {
  {"road-network-reader", 1},
  {"red-wire", 2}
}
data.raw.item["transport-depot-writer"].order = "nullius-k"
data.raw.item["transport-depot-writer"].stack_size = 50
data.raw.recipe["transport-depot-writer"].order = "nullius-k"
data.raw.recipe["transport-depot-writer"].always_show_made_in = true
data.raw.recipe["transport-depot-writer"].category = "small-crafting"
data.raw.recipe["transport-depot-writer"].energy_required = 3
data.raw.recipe["transport-depot-writer"].ingredients = {
  {"road-network-reader", 1},
  {"green-wire", 3}
}

data.raw["assembling-machine"]["request-depot"].fluid_boxes[2].base_level = 6
data.raw["assembling-machine"]["buffer-depot"].fluid_boxes[2].base_level = 6
data.raw["assembling-machine"]["fuel-depot"].fluid_boxes[2].base_level = -3
data.raw["assembling-machine"]["fuel-depot"].fluid_boxes[2].height = 8
data.raw["assembling-machine"]["fuel-depot"].fluid_boxes[2].base_area = 250
data.raw["furnace"]["fluid-depot"].fluid_boxes[2].base_level = -3
data.raw["furnace"]["fluid-depot"].fluid_boxes[2].height = 8
data.raw["furnace"]["fluid-depot"].fluid_boxes[2].base_area = 125

data.raw.item["fast-road"].stack_size = 500
data.raw.item["fast-road"].subgroup = "concrete"
data.raw.item["fast-road"].order = "nullius-cr"
data.raw.item["fast-road"].icons[1].tint = { 0.66, 0.66, 0.66 }
data.raw.tile["transport-drone-road-better"].tint = {0.66, 0.66, 0.66}
data.raw.tile["transport-drone-road-better"].vehicle_friction_modifier = 0.4
data.raw.item["nullius-black-concrete"].icons[1].tint = { 0.4, 0.4, 0.4 }
data.raw.tile["black-refined-concrete"].tint = {0.4, 0.4, 0.4}

data.raw.recipe["fast-road"].icons = data.raw.item["fast-road"].icons
data.raw.recipe["fast-road"].subgroup = "concrete"
data.raw.recipe["fast-road"].order = "nullius-cr"
data.raw.recipe["fast-road"].always_show_made_in = true
data.raw.recipe["fast-road"].show_amount_in_title = false
data.raw.recipe["fast-road"].always_show_products = true
data.raw.recipe["fast-road"].category = "large-crafting"
data.raw.recipe["fast-road"].energy_required = 30
data.raw.recipe["fast-road"].result_count = 8
data.raw.recipe["fast-road"].ingredients = {
  {"road", 50},
  {"nullius-box-black-concrete", 6},
  {"road-network-reader", 1}
}
end


if mods["textplates"] then
local textplatematerial = {
  ["stone"] = {material="stone-brick", order="b"},
  ["iron"] = {material="nullius-iron-plate", order="c"},
  ["steel"] = {material="nullius-steel-plate", order="d"},
  ["gold"] = {material="nullius-aluminum-plate", order="e"},
  ["plastic"] = {material="nullius-plastic", order="f"},
  ["glass"] = {material="nullius-glass", order="g"},
  ["concrete"] = {material="concrete", order="h"},
  ["copper"] = {material="nullius-copper-sheet", order="i"},
  ["uranium"] = {material="nullius-uranium", order="j"}
}

for _, recipe in pairs(data.raw.recipe) do
  if (string.sub(recipe.name, 1, 10) == "textplate-") then
    local material = string.sub(recipe.name, 17, -1)
    local newmaterial = textplatematerial[material]
    if (newmaterial ~= nil) then
      recipe.energy_required = 1
      recipe.category = "medium-crafting"
      recipe.enabled = false
	  recipe.always_show_made_in = true

      local order = "nullius-"..newmaterial.order
      local sz = string.sub(recipe.name, 11, 15)
      if (sz == "large") then
        recipe.ingredients = {{"textplate-small-"..material, 4}}
        order = order.."c"
      else
        recipe.ingredients = {{newmaterial.material, 1}}
        order = order.."b"
      end

      recipe.order = order
      --data.raw.item[recipe.name].order = order
      if (material == "gold") then
        data.raw.item[recipe.name].localised_name =
          {"item-name.textplate", {"textplates."..sz}, {"textplates.aluminum"}}
        data.raw["simple-entity-with-force"][recipe.name].localised_name =
          {"entity-name.textplate", {"textplates."..sz}, {"textplates.aluminum"}}
      end
    end
  end
end

table.insert(data.raw.technology["nullius-mechanical-separation"].prerequisites,"nullius-typesetting-1")
table.insert(data.raw.technology["nullius-empiricism-1"].prerequisites,"nullius-typesetting-2")
table.insert(data.raw.technology["nullius-empiricism-2"].prerequisites,"nullius-typesetting-3")
table.insert(data.raw.technology["nullius-miniaturization-2"].prerequisites,"nullius-typesetting-4")
end


if mods["rso-mod"] then
  -- A mysterious incompatibility when RSO is installed.  It says angels-oil-processing is
  -- registered more than once in teh lubricant technology.  We don't use this technology.
  data.raw.technology["lubricant"].prerequisites = { "advanced-oil-processing" }
end


if mods["botReplacer"] then
data.raw.item["logistic-chest-botUpgrader"].subgroup = "hangar-2"
data.raw.item["logistic-chest-botUpgrader"].order = "nullius-r"
data.raw.item["logistic-chest-botUpgrader"].stack_size = 10
data.raw["logistic-container"]["logistic-chest-botUpgrader"].minable.mining_time = 1
table.insert(data.raw["technology"]["nullius-logistic-robot-2"].effects,
    {type = "unlock-recipe", recipe = "nullius-bot-upgrade-chest"})
end


if mods["FuelTrainStop"] then
  table.insert(data.raw.technology["nullius-traffic-control"].effects,
      {type = "unlock-recipe", recipe = "nullius-fuel-train-stop"})
  data.raw["item"]["fuel-train-stop"].order = "nullius-ebc"
  data.raw["item"]["fuel-train-stop"].subgroup = "railway"
  data.raw["train-stop"]["fuel-train-stop"].minable.mining_time = 1.2
end


if mods["Companion_Drones"] then
  data.raw["item-subgroup"]["companion"].group = "drones"
  data.raw["item-subgroup"]["companion"].order = "d"
  -- data.raw["spider-vehicle"]["companion"].energy_source.fuel_category = "vehicle"
  table.insert(data.raw["technology"]["nullius-hydrocarbon-combustion-2"].effects,
    {type = "unlock-recipe", recipe = "nullius-companion-fuel"})
  data.raw["item"]["rocket-booster"].subgroup = "companion"
  data.raw["item"]["rocket-booster"].order = "r"
  data.raw["item"]["rocket-booster"].localised_name = {"item-name.nullius-companion-fuel"}
  data.raw["item"]["rocket-booster"].localised_description = {"item-description.nullius-companion-fuel"}
end


if mods["railway-motor-car"] then
  data.raw["battery-equipment"]["railway-motor-car-base"].localised_name =
      {"", {"equipment-name.railway-motor-car-base"}, " ", 1}
  data.raw["item"]["railway-motor-car-base"].localised_name =
      {"", {"equipment-name.railway-motor-car-base"}, " ", 1}
  data.raw["item"]["railway-motor-car-base"].subgroup = "jetpack"
  data.raw["item"]["railway-motor-car-base"].order = "nullius-mb"
  data.raw["battery-equipment"]["railway-motor-car-base"].categories = {"cybernetic"}
  data.raw["battery-equipment"]["railway-motor-car-nuclear"].localised_name =
      {"", {"equipment-name.railway-motor-car-base"}, " ", 2}
  data.raw["item"]["railway-motor-car-nuclear"].localised_name =
      {"", {"equipment-name.railway-motor-car-base"}, " ", 2}
  data.raw["item"]["railway-motor-car-nuclear"].subgroup = "jetpack"
  data.raw["item"]["railway-motor-car-nuclear"].order = "nullius-mc"
  data.raw["battery-equipment"]["railway-motor-car-nuclear"].localised_description =
      {"item-description.railway-motor-car-base"}
  data.raw["battery-equipment"]["railway-motor-car-nuclear"].categories = {"cybernetic"}
  data.raw["locomotive"]["railway-motor-car-base"].localised_name =
      {"", {"entity-name.railway-motor-car-base"}, " ", 1}
  data.raw["locomotive"]["railway-motor-car-base"].weight = 250
  data.raw["locomotive"]["railway-motor-car-base"].max_power = "600kW"
  data.raw["locomotive"]["railway-motor-car-base"].max_speed = 1.11111111
  data.raw["locomotive"]["railway-motor-car-nuclear"].localised_name =
      {"", {"entity-name.railway-motor-car-base"}, " ", 2}
  data.raw["locomotive"]["railway-motor-car-nuclear"].weight = 325
  data.raw["locomotive"]["railway-motor-car-nuclear"].max_power = "1.2MW"
  data.raw["locomotive"]["railway-motor-car-nuclear"].max_speed = 2.5
  table.insert(data.raw["technology"]["nullius-personal-transportation-1"].effects,
    {type = "unlock-recipe", recipe = "nullius-railway-motorcar-1"})
  table.insert(data.raw["technology"]["nullius-personal-transportation-4"].effects,
    {type = "unlock-recipe", recipe = "nullius-railway-motorcar-2"})
end


if mods["Inventory Sensor"] then
  data.raw.item["item-sensor"].subgroup = "circuit-network"
  data.raw.item["item-sensor"].order = "nullius-s"
  data.raw["constant-combinator"]["item-sensor"].minable.mining_time = 0.8
  table.insert(data.raw["technology"]["nullius-sensors-2"].effects,
    {type = "unlock-recipe", recipe = "nullius-item-sensor"})
end


if (mods["crafting_combinator"] or mods["crafting_combinator_xeraph"]) then
  data.raw.item["crafting_combinator:crafting-combinator"].order = "nullius-rb"
  data.raw.item["crafting_combinator:recipe-combinator"].order = "nullius-rc"
  data.raw["constant-combinator"]["crafting_combinator:crafting-combinator"].minable.mining_time = 0.8
  data.raw["arithmetic-combinator"]["crafting_combinator:recipe-combinator"].minable.mining_time = 0.8
  table.insert(data.raw["technology"]["nullius-computation"].effects,
    {type = "unlock-recipe", recipe = "nullius-crafting-combinator"})
  table.insert(data.raw["technology"]["nullius-computation"].effects,
    {type = "unlock-recipe", recipe = "nullius-recipe-combinator"})  
end


if mods["stack-combinator"] then
  data.raw["arithmetic-combinator"]["stack-combinator"].minable.mining_time = 0.8
  table.insert(data.raw.technology["nullius-optimization-2"].prerequisites,"stack-combinator")
  data.raw.item["stack-combinator"].subgroup = "circuit-network"
end


if (mods["GCKI"] and (data.raw.item["car-key"] ~= nil)) then
  data:extend({
    {
      type = "recipe",
      name = "nullius-car-key",
      enabled = false,
      always_show_made_in = true,
      category = "small-crafting",
      energy_required = 3,
      ingredients = {
        {"programmable-speaker", 1},
        {"arithmetic-combinator", 1}
      },
      result = "car-key"
    }
  })
  data.raw.item["car-key"].subgroup = "vehicle"
  data.raw.item["car-key"].order = "nullius-g"
  table.insert(data.raw["technology"]["nullius-broadcasting-1"].effects,
    {type = "unlock-recipe", recipe = "nullius-car-key"})
end


if mods["UPSFriendlyNixieTubeDisplay"] then
  data.raw.item["SNTD-old-nixie-tube"].order = "nullius-sh"
  data.raw.item["SNTD-nixie-tube"].order = "nullius-sh"
  data.raw.item["SNTD-nixie-tube-small"].order = "nullius-sh"

  data.raw.item["SNTD-old-nixie-tube"].stack_size = 50
  data.raw.item["SNTD-nixie-tube"].stack_size = 50
  data.raw.item["SNTD-nixie-tube-small"].stack_size = 50

  table.insert(data.raw.technology["nullius-broadcasting-1"].prerequisites,"nullius-SNTD-nixie-tubes-reinforced")
if mods["DisplayPlates"] then
  data.raw.item["SNTD-old-nixie-tube"].subgroup = "display-plates"
  data.raw.item["SNTD-nixie-tube-small"].subgroup = "display-plates"
  data.raw.item["SNTD-nixie-tube"].subgroup = "display-plates"
end
end


if mods["holographic_signs"] then
  data.raw.item["hs_holo_sign"].order = "nullius-sh"
  data.raw.item["hs_holo_sign"].stack_size = 50
  data.raw.container["hs_holo_sign"].minable.mining_time = 0.8
  table.insert(data.raw.technology["nullius-broadcasting-1"].prerequisites,"nullius-holographics")
if mods["DisplayPlates"] then
  data.raw.item["hs_holo_sign"].subgroup = "display-plates"
end
end


if mods["Shuttle_Train_Continued"] then
  table.insert(data.raw["technology"]["nullius-traffic-control"].effects,
    {type = "unlock-recipe", recipe = "nullius-shuttle-lite"})
if (mods["railway-motor-car"] or mods["jetpack"]) then
  data.raw.item["shuttle-lite"].subgroup = "jetpack"
else
  data.raw.item["shuttle-lite"].subgroup = "railway"
end
  data.raw.item["shuttle-lite"].order = "nullius-s"
end


if mods["FluidMustFlow"] then
  data.raw.item["duct-small"].subgroup = "nullius-ducts"
  data.raw.item["duct"].subgroup = "nullius-ducts"
  data.raw.item["duct-long"].subgroup = "nullius-ducts"
  data.raw.item["duct-underground"].subgroup = "nullius-ducts"
  data.raw.item["duct-curve"].subgroup = "nullius-ducts"
  data.raw.item["duct-t-junction"].subgroup = "nullius-ducts"
  data.raw.item["duct-cross"].subgroup = "nullius-ducts"
  data.raw.item["duct-end-point-outtake"].subgroup = "nullius-ducts"
  data.raw.item["duct-end-point-intake"].subgroup = "nullius-ducts"
  data.raw.item["non-return-duct"].subgroup = "nullius-ducts"

  data.raw.item["duct-small"].order = "nullius-b"
  data.raw.item["duct"].order = "nullius-c"
  data.raw.item["duct-long"].order = "nullius-d"
  data.raw.item["duct-underground"].order = "nullius-e"
  data.raw.item["duct-curve"].order = "nullius-f"
  data.raw.item["duct-t-junction"].order = "nullius-g"
  data.raw.item["duct-cross"].order = "nullius-h"
  data.raw.item["duct-end-point-outtake"].order = "nullius-i"
  data.raw.item["duct-end-point-intake"].order = "nullius-j"
  data.raw.item["non-return-duct"].order = "nullius-k"

  data.raw["storage-tank"]["duct-small"].minable.mining_time = 0.8
  data.raw["storage-tank"]["duct"].minable.mining_time = 1.5
  data.raw["storage-tank"]["duct-long"].minable.mining_time = 2.5
  data.raw["storage-tank"]["duct-t-junction"].minable.mining_time = 2
  data.raw["storage-tank"]["duct-curve"].minable.mining_time = 1.6
  data.raw["storage-tank"]["duct-cross"].minable.mining_time = 2.5
  data.raw["pipe-to-ground"]["duct-underground"].minable.mining_time = 2.5
  data.raw["pump"]["non-return-duct"].minable.mining_time = 2
  data.raw["pump"]["duct-end-point-intake"].minable.mining_time = 3
  data.raw["pump"]["duct-end-point-outtake"].minable.mining_time = 3

  local duct_box = data.raw["pipe-to-ground"]["duct-underground"].fluid_box
  duct_box.pipe_connections[2].max_underground_distance = duct_box.pipe_connections[2].max_underground_distance - 2
  table.insert(data.raw.technology["nullius-barreling-3"].prerequisites,"nullius-ducts")
end


if mods["railloader"] then
  data.raw.item["railloader"].order = "nullius-rb"
  data.raw.item["railunloader"].order = "nullius-rc"
  table.insert(data.raw.technology["nullius-inserter-capacity-2"].prerequisites,"nullius-rail-loader")
  data.raw.container["railloader-chest"].minable.mining_time = 2
  data.raw.container["railunloader-chest"].minable.mining_time = 2
  local rlsg = "railway"
  if mods["aai-loaders"] then
    rlsg = "loader"
  elseif mods["miniloader"] then
    rlsg = "miniloader"
  end
  data.raw.item["railloader"].subgroup = rlsg
  data.raw.item["railunloader"].subgroup = rlsg
end


if mods["RenaiTransportation"] then
if settings.startup["RTThrowersSetting"].value then
  data.raw.technology["RTFocusedFlinging"].localised_name =
    {"technology-name.nullius-precision-ballistics"}
  data.raw.technology["RTFocusedFlinging"].order = "nullius-cg"
  data.raw.technology["RTFocusedFlinging"].prerequisites =
    {"nullius-logistic-ballistics-2", "nullius-mechanical-separation"}
  data.raw.technology["RTFocusedFlinging"].unit = {
    count = 4,
    ingredients = {{"nullius-geology-pack", 1}, {"nullius-mechanical-pack", 1}},
    time = 10
  }

  table.insert(data.raw.technology["nullius-freight-logistics"].prerequisites,
    "nullius-logistic-ballistics-5")
  table.insert(data.raw.technology["nullius-personal-transportation-1"].prerequisites,
    "nullius-logistic-ballistics-4")
  table.insert(data.raw.technology["nullius-locomotion-3"].prerequisites,
    "nullius-logistic-ballistics-8")

  if (mods["bobinserters"] and
      (settings.startup["bobmods-inserters-more2"].value == true)) then
    table.insert(data.raw.technology["more-inserters-2"].prerequisites,
	    "nullius-logistic-ballistics-7")
  else
    table.insert(data.raw.technology["nullius-inserter-capacity-1"].prerequisites,
	    "nullius-logistic-ballistics-7")
  end

  data.raw.item["PlayerLauncherItem"].subgroup = "nullius-renai-bounce"
  data.raw.item["PlayerLauncherItem"].order = "nullius-b"
  data.raw.item["HatchRTItem"].subgroup = "nullius-renai-bounce"
  data.raw.item["HatchRTItem"].order = "nullius-cb"
  data.raw.item["HatchRTItem"].stack_size = 100
  data.raw.item["RTThrower-EjectorHatchRTItem"].subgroup = "nullius-renai-bounce"
  data.raw.item["RTThrower-EjectorHatchRTItem"].order = "nullius-cc"
  data.raw.inserter["RTThrower-EjectorHatchRT"].order = "nullius-ucc"
  data.raw.item["RTThrower-EjectorHatchRTItem"].stack_size = 100
  data.raw.item["OpenContainerItem"].subgroup = "nullius-renai-bounce"
  data.raw.item["OpenContainerItem"].order = "nullius-db"
  data.raw.item["OpenContainerItem"].stack_size = 100
  data.raw["container"]["OpenContainer"].inventory_size = 10
  data.raw.item["BouncePlateItem"].subgroup = "nullius-renai-bounce"
  data.raw.item["BouncePlateItem"].order = "nullius-eb"
  data.raw.item["DirectedBouncePlateItem"].subgroup = "nullius-renai-bounce"
  data.raw.item["DirectedBouncePlateItem"].order = "nullius-ec"
  data.raw.item["SignalBouncePlateItem"].subgroup = "nullius-renai-bounce"
  data.raw.item["SignalBouncePlateItem"].order = "nullius-ed"
  data.raw.item["DirectorBouncePlateItem"].subgroup = "nullius-renai-bounce"
  data.raw.item["DirectorBouncePlateItem"].order = "nullius-ee"
end

if settings.startup["RTZiplineSetting"].value then
  table.insert(data.raw.technology["nullius-checkpoint-freight-logistics"].prerequisites,
    "nullius-ziplining-1")
  data.raw.technology["nullius-robot-speed-2"].prerequisites =
      {"nullius-mass-production-4", "nullius-ziplining-3"}
  table.insert(data.raw.technology["nullius-robot-speed-3"].prerequisites,
    "nullius-ziplining-4")
  data.raw.technology["nullius-robot-speed-5"].prerequisites =
      {"nullius-copper-production", "nullius-ziplining-5"}

  data.raw.item["RTZiplineTerminalItem"].subgroup = "nullius-renai-zipline"
  data.raw.item["RTZiplineTerminalItem"].order = "nullius-bb"
  data.raw.gun["RTZiplineItem"].subgroup = "nullius-renai-zipline"
  data.raw.gun["RTZiplineItem"].order = "nullius-cb"
  data.raw.gun["RTZiplineItem2"].subgroup = "nullius-renai-zipline"
  data.raw.gun["RTZiplineItem2"].order = "nullius-cc"
  data.raw.gun["RTZiplineItem3"].subgroup = "nullius-renai-zipline"
  data.raw.gun["RTZiplineItem3"].order = "nullius-cd"
  data.raw.gun["RTZiplineItem4"].subgroup = "nullius-renai-zipline"
  data.raw.gun["RTZiplineItem4"].order = "nullius-ce"
  data.raw.gun["RTZiplineItem5"].subgroup = "nullius-renai-zipline"
  data.raw.gun["RTZiplineItem5"].order = "nullius-cf"
  data.raw.ammo["RTZiplineControlsItem"].subgroup = "nullius-renai-zipline"
  data.raw.ammo["RTZiplineControlsItem"].order = "nullius-db"
  data.raw.ammo["RTZiplineCrankControlsItem"].subgroup = "nullius-renai-zipline"
  data.raw.ammo["RTZiplineCrankControlsItem"].order = "nullius-dc"
  data.raw.ammo["RTProgrammableZiplineControlsItem"].subgroup = "nullius-renai-zipline"
  data.raw.ammo["RTProgrammableZiplineControlsItem"].order = "nullius-dd"
  data.raw["electric-pole"]["RTZiplineTerminal"].minable.mining_time = 1
end

if settings.startup["RTTrainRampSetting"].value then
  if mods["Transport_Drones"] then
    table.insert(data.raw.technology["transport-drone-capacity-1"].prerequisites,
      "nullius-freight-ballistics-1")
    if settings.startup["RTThrowersSetting"].value then
	  data.raw.technology["nullius-freight-ballistics-1"].prerequisites =
	    {"nullius-robot-speed-1", "nullius-logistic-ballistics-6"}
      table.insert(data.raw.technology["nullius-freight-ballistics-3"].prerequisites,
	    "transport-drone-speed-2")
	else
	  data.raw.technology["nullius-freight-ballistics-1"].prerequisites =
	    {"nullius-robot-speed-1"}
      table.insert(data.raw.technology["nullius-freight-ballistics-2"].prerequisites,
	    "transport-drone-speed-2")
	end
    if settings.startup["RTZiplineSetting"].value then
      table.insert(data.raw.technology["transport-drone-capacity-1"].prerequisites,
        "nullius-ziplining-2")
	end
  elseif settings.startup["RTThrowersSetting"].value then
    table.insert(data.raw.technology["nullius-freight-ballistics-2"].prerequisites,
      "nullius-freight-ballistics-1")  
  end

  data.raw.item["RTTrainRampItem"].subgroup = "nullius-renai-ramp"
  data.raw.item["RTTrainRampItem"].order = "nullius-bb"
  data.raw.item["RTMagnetTrainRampItem"].subgroup = "nullius-renai-ramp"
  data.raw.item["RTMagnetTrainRampItem"].order = "nullius-bc"
  data.raw.item["RTImpactUnloaderItem"].subgroup = "nullius-renai-ramp"
  data.raw.item["RTImpactUnloaderItem"].order = "nullius-db"
  data.raw.item["RTImpactWagonItem"].subgroup = "nullius-renai-ramp"
  data.raw.item["RTImpactWagonItem"].order = "nullius-dc"
  data.raw["simple-entity-with-owner"]["RTTrainRamp"].minable.mining_time = 0.8
  data.raw["simple-entity-with-owner"]["RTMagnetTrainRamp"].minable.mining_time = 1.2
  data.raw["simple-entity-with-owner"]["RTImpactUnloader"].minable.mining_time = 1

  data.raw["cargo-wagon"]["RTImpactWagon"].inventory_size = 50
  data.raw["cargo-wagon"]["RTImpactWagon"].max_health = 800
  data.raw["cargo-wagon"]["RTImpactWagon"].weight = 1200
  data.raw["cargo-wagon"]["RTImpactWagon"].max_speed = 2
  data.raw["cargo-wagon"]["RTImpactWagon"].fast_replaceable_group = "cargo-wagon"
  data.raw["cargo-wagon"]["RTImpactWagon"].braking_force = 2.5
  data.raw["cargo-wagon"]["RTImpactWagon"].friction_force = 0.4
  data.raw["cargo-wagon"]["RTImpactWagon"].minable.mining_time = 1.2
  data.raw["cargo-wagon"]["RTImpactWagon"].resistances = {
    { type = "impact", decrease = 80, percent = 90 },
    { type = "poison", decrease = 40, percent = 80 },
    { type = "fire", decrease = 20, percent = 50 },
    { type = "physical", decrease = 20, percent = 20 },
    { type = "explosion", decrease = 20, percent = 20 }
  }

if settings.startup["RTThrowersSetting"].value then
  data.raw.item["RTTrainBouncePlateItem"].subgroup = "nullius-renai-ramp"
  data.raw.item["RTTrainBouncePlateItem"].order = "nullius-cb"
  data.raw.item["RTTrainBouncePlateItem"].stack_size = 20
  data.raw.item["RTTrainDirectedBouncePlateItem"].subgroup = "nullius-renai-ramp"
  data.raw.item["RTTrainDirectedBouncePlateItem"].order = "nullius-cc"
  data.raw.item["RTTrainDirectedBouncePlateItem"].stack_size = 20
  data.raw["simple-entity-with-owner"]["RTTrainBouncePlate"].minable.mining_time = 0.6
  data.raw["constant-combinator"]["RTTrainDirectedBouncePlate"].minable.mining_time = 0.8
end
end
end


if mods["safefill"] then
table.insert(data.raw.technology["nullius-plumbing-5"].prerequisites,"nullius-irrigation")
data.raw["item-subgroup"]["safefill"].group = "intermediate-products"
data.raw["item-subgroup"]["safefill"].order = "nb"
end


if mods["aai-signal-transmission"] then
table.insert(data.raw.technology["nullius-distribution-1"].prerequisites,
    "nullius-aai-signal-transmission")
end


if mods["DisplayPlates"] then
if mods["textplates"] then
table.insert(data.raw.technology["nullius-typesetting-2"].prerequisites,"nullius-display-plates")
else
table.insert(data.raw.technology["nullius-empiricism-1"].prerequisites,"nullius-display-plates")
end
data.raw.item["iron-display-small"].order = "nullius-bb"
data.raw.item["iron-display-medium"].order = "nullius-bc"
data.raw.item["iron-display"].order = "nullius-bd"
data.raw.item["steel-display-small"].order = "nullius-cb"
data.raw.item["steel-display-medium"].order = "nullius-cc"
data.raw.item["steel-display"].order = "nullius-cd"
data.raw.item["copper-display-small"].order = "nullius-db"
data.raw.item["copper-display-medium"].order = "nullius-dc"
data.raw.item["copper-display"].order = "nullius-dd"

data.raw["simple-entity-with-owner"]["iron-display-small"].localised_name =
    {"entity-name.nullius-display-plate-small-steel"}
data.raw["simple-entity-with-owner"]["iron-display-medium"].localised_name =
    {"entity-name.nullius-display-plate-medium-steel"}
data.raw["simple-entity-with-owner"]["iron-display"].localised_name =
    {"entity-name.nullius-display-plate-large-steel"}
data.raw["simple-entity-with-owner"]["steel-display-small"].localised_name =
    {"entity-name.nullius-display-plate-small-aluminum"}
data.raw["simple-entity-with-owner"]["steel-display-medium"].localised_name =
    {"entity-name.nullius-display-plate-medium-aluminum"}
data.raw["simple-entity-with-owner"]["steel-display"].localised_name =
    {"entity-name.nullius-display-plate-large-aluminum"}
data.raw["simple-entity-with-owner"]["copper-display-small"].localised_name =
    {"entity-name.nullius-display-plate-small-plastic"}
data.raw["simple-entity-with-owner"]["copper-display-medium"].localised_name =
    {"entity-name.nullius-display-plate-medium-plastic"}
data.raw["simple-entity-with-owner"]["copper-display"].localised_name =
    {"entity-name.nullius-display-plate-large-plastic"}
end


if (mods["Inventory Sensor"] and mods["stack-combinator"] and
    (mods["crafting_combinator"] or mods["crafting_combinator_xeraph"]) and
	(mods["Factorissimo2"] or mods["factorissimo-2-notnotmelon"])) then
  data.raw.item["programmable-speaker"].subgroup = "factorissimo2"
  if mods["aai-signal-transmission"] then
    data.raw.item["aai-signal-sender"].subgroup = "factorissimo2"
    data.raw.item["aai-signal-receiver"].subgroup = "factorissimo2"
  end
end


if (mods["SpidertronPatrols"] and settings.startup["sp-enable-spiderling"].value) then
  table.insert(data.raw.technology["nullius-inserter-capacity-3"].prerequisites,
      "nullius-sp-spidertron-automation")
end


if (mods["rec-blue-plus"] or mods["recursive-blueprints"]) then
  table.insert(data.raw["technology"]["nullius-construction-robot-1"].effects,
      {type = "unlock-recipe", recipe = "nullius-blueprint-deployer"})
  table.insert(data.raw["technology"]["nullius-sensors-2"].effects,
      {type = "unlock-recipe", recipe = "nullius-recursive-blueprints-scanner"})
  data.raw.item["blueprint-deployer"].subgroup = "hangar-2"
  data.raw.item["blueprint-deployer"].order = "nullius-t"
  data.raw.item["recursive-blueprints-scanner"].subgroup = "miner"
  data.raw.item["recursive-blueprints-scanner"].order = "nullius-s"
  data.raw.item["construction-robot"].subgroup = "robot"
  data.raw.item["construction-robot"].order = "nullius-r"
end


if mods["ch-concentrated-solar"] then
  table.insert(data.raw.technology["nullius-geothermal-power-2"].prerequisites,
      "nullius-concentrated-solar-energy")
  table.insert(data.raw["technology"]["nullius-mass-production-7"].effects,
      {type = "unlock-recipe", recipe = "nullius-boxed-heliostat-mirror"})
  data.raw.item["chcs-heliostat-mirror"].subgroup = "geothermal"
  data.raw.item["chcs-heliostat-mirror"].order = "nullius-hb"
  data.raw.item["chcs-heliostat-mirror"].stack_size = 100
  data.raw.item["chcs-solar-power-tower"].subgroup = "geothermal"
  data.raw.item["chcs-solar-power-tower"].order = "nullius-hc"
end


if mods["cargo-ships"] then
  data.raw["mining-drill"]["oil_rig"].localised_name =
      {"entity-name.nullius-offshore-extractor"}
  data.raw["mining-drill"]["oil_rig"].localised_description =
      {"entity-description.nullius-offshore-extractor"}
  if (data.raw["generator"]["or_power"] ~= nil) then
    data.raw["generator"]["or_power"].localised_name =
        {"entity-name.nullius-offshore-steam"}
  end
  if (data.raw["electric-energy-interface"]["or_power_electric"] ~= nil) then
    data.raw["electric-energy-interface"]["or_power_electric"].localised_name =
        {"entity-name.nullius-offshore-electric"}
  end

  if (data.raw["radar"]["or_radar"] ~= nil) then
    data.raw["radar"]["or_radar"].localised_name =
        {"entity-name.nullius-offshore-radar"}
    data.raw["radar"]["or_radar"].max_distance_of_sector_revealed = 3
    data.raw["radar"]["or_radar"].max_distance_of_nearby_sector_revealed = 2
    data.raw["radar"]["or_radar"].energy_per_sector = "20MJ"
    data.raw["radar"]["or_radar"].energy_per_nearby_scan = "50kJ"
    data.raw["radar"]["or_radar"].energy_usage = "20kW"
  end

  data.raw["electric-pole"]["floating-electric-pole"].maximum_wire_distance = 32.5
  data.raw["car"]["indep-boat"].burner.fuel_category = "vehicle"
  data.raw["car"]["indep-boat"].burner.fuel_inventory_size = 1
  data.raw["car"]["indep-boat"].burner.burnt_inventory_size = 1
  data.raw["car"]["indep-boat"].burner.effectivity = 1.5
  data.raw["locomotive"]["boat_engine"].burner.fuel_category = "vehicle"
  data.raw["locomotive"]["boat_engine"].burner.fuel_inventory_size = 1
  data.raw["locomotive"]["boat_engine"].burner.burnt_inventory_size = 1
  data.raw["locomotive"]["boat_engine"].burner.effectivity = 1.5
  data.raw["locomotive"]["cargo_ship_engine"].burner.fuel_category = "vehicle"
  data.raw["locomotive"]["cargo_ship_engine"].burner.fuel_inventory_size = 3
  data.raw["locomotive"]["cargo_ship_engine"].burner.burnt_inventory_size = 3
  data.raw["locomotive"]["cargo_ship_engine"].burner.effectivity = 2


  data.raw.technology["water_transport"].order = "nullius-cn"
  data.raw.technology["water_transport"].prerequisites =
      {"nullius-personal-transportation-1", "nullius-checkpoint-plumbing"}
  data.raw.technology["water_transport"].unit = {
    count = 25, time = 8,
    ingredients = {
      {"nullius-geology-pack", 1}, {"nullius-climatology-pack", 2},
      {"nullius-mechanical-pack", 1}
    }
  }

  data.raw.technology["cargo_ships"].order = "nullius-df"
  data.raw.technology["cargo_ships"].prerequisites =
      {"water_transport", "nullius-pumping-2", "nullius-freight-logistics"}
  data.raw.technology["cargo_ships"].unit = {
    count = 50, time = 20,
    ingredients = {
      {"nullius-geology-pack", 1}, {"nullius-climatology-pack", 1},
      {"nullius-mechanical-pack", 2}, {"nullius-electrical-pack", 1}
    }
  }
  data.raw.shortcut["give-waterway"].technology_to_unlock = "cargo_ships"

  data.raw.technology["automated_water_transport"].order = "nullius-di"
  data.raw.technology["automated_water_transport"].prerequisites =
      {"cargo_ships", "nullius-concrete-1", "nullius-weaving-1"}
  data.raw.technology["automated_water_transport"].unit = {
    count = 100, time = 30,
    ingredients = {
      {"nullius-geology-pack", 1}, {"nullius-climatology-pack", 1},
      {"nullius-mechanical-pack", 1}, {"nullius-electrical-pack", 1}
    }
  }

  data.raw.technology["tank_ship"].order = "nullius-dj"
  data.raw.technology["tank_ship"].prerequisites =
      {"automated_water_transport", "nullius-water-filtration-3"}
  data.raw.technology["tank_ship"].unit = {
    count = 120, time = 30,
    ingredients = {
      {"nullius-geology-pack", 1}, {"nullius-climatology-pack", 1},
      {"nullius-mechanical-pack", 1}, {"nullius-electrical-pack", 1}
    }
  }

  data.raw.technology["water_transport_signals"].order = "nullius-dj"
  data.raw.technology["water_transport_signals"].prerequisites =
      {"automated_water_transport", "nullius-checkpoint-sensor"}
  data.raw.technology["water_transport_signals"].unit = {
    count = 80, time = 30,
    ingredients = {
      {"nullius-geology-pack", 1}, {"nullius-climatology-pack", 1},
      {"nullius-mechanical-pack", 1}, {"nullius-electrical-pack", 2}
    }
  }

  data.raw.technology["oversea-energy-distribution"].order = "nullius-dk"
  data.raw.technology["oversea-energy-distribution"].prerequisites =
      {"water_transport_signals", "tank_ship", "nullius-energy-distribution-3"}
  data.raw.technology["oversea-energy-distribution"].unit = {
    count = 150, time = 30,
    ingredients = {
      {"nullius-geology-pack", 1}, {"nullius-climatology-pack", 1},
      {"nullius-mechanical-pack", 1}, {"nullius-electrical-pack", 1}
    }
  }
  data.raw.technology["nullius-robot-speed-1"].prerequisites[2] = "oversea-energy-distribution"

  data.raw.technology["automated_bridges"].order = "nullius-dl"
  data.raw.technology["automated_bridges"].prerequisites =
      {"oversea-energy-distribution", "nullius-toolmaking-4"}
  data.raw.technology["automated_bridges"].unit = {
    count = 150, time = 30,
    ingredients = {
      {"nullius-geology-pack", 1}, {"nullius-climatology-pack", 1},
      {"nullius-mechanical-pack", 2}, {"nullius-electrical-pack", 1}
    }
  }
  table.insert(data.raw.technology["nullius-braking-1"].prerequisites,"automated_bridges")


  data.raw["item-subgroup"]["water_transport"].order = "gw"
  data.raw["rail-planner"]["waterway"].order = "nullius-b"
  data.raw["item-with-entity-data"]["boat_engine"].order = "nullius-l"
  data.raw["item-with-entity-data"]["cargo_ship_engine"].order = "nullius-m"
  data.raw["item-with-entity-data"]["indep-boat"].order = "nullius-i"

  data.raw["item-with-entity-data"]["boat"].order = "nullius-h"
  data.raw.recipe["boat"].order = "nullius-h"
  data.raw.recipe["boat"].category = "large-crafting"
  data.raw.recipe["boat"].always_show_made_in = true
  data.raw.recipe["boat"].energy_required = 10
  data.raw.recipe["boat"].ingredients = {
    {type="item", name="nullius-seawater-intake-1", amount=3},
    {type="item", name="nullius-portable-generator-1", amount=1},
    {type="item", name="nullius-medium-tank-2", amount=2},
	{type="item", name="nullius-rubber", amount=4},
	{type="item", name="nullius-glass", amount=1}
  }

  data.raw["item-with-entity-data"]["cargo_ship"].order = "nullius-j"
  data.raw.recipe["cargo_ship"].order = "nullius-j"
  data.raw.recipe["cargo_ship"].category = "huge-crafting"
  data.raw.recipe["cargo_ship"].always_show_made_in = true
  data.raw.recipe["cargo_ship"].energy_required = 30
  data.raw.recipe["cargo_ship"].ingredients = {
    {type="item", name="boat", amount=4},
    {type="item", name="nullius-steel-sheet", amount=30},
	{type="item", name="nullius-steel-beam", amount=15},
    {type="item", name="nullius-pump-2", amount=6}
  }

  data.raw["item-with-entity-data"]["oil_tanker"].order = "nullius-k"
  data.raw.recipe["oil_tanker"].order = "nullius-k"
  data.raw.recipe["oil_tanker"].category = "huge-crafting"
  data.raw.recipe["oil_tanker"].always_show_made_in = true
  data.raw.recipe["oil_tanker"].energy_required = 20
  data.raw.recipe["oil_tanker"].ingredients = {
    {type="item", name="cargo_ship", amount=1},
    {type="item", name="nullius-seawater-intake-2", amount=3},
    {type="item", name="nullius-medium-tank-2", amount=8}
  }

  data.raw.item["port"].order = "nullius-c"
  data.raw.recipe["port"].order = "nullius-c"
  data.raw.recipe["port"].category = "large-fluid-assembly"
  data.raw.recipe["port"].always_show_made_in = true
  data.raw.recipe["port"].energy_required = 15
  data.raw.recipe["port"].ingredients = {
    {type="item", name="train-stop", amount=2},
    {type="item", name="nullius-small-tank-1", amount=1},
    {type="item", name="nullius-steel-cable", amount=10},
    {type="item", name="concrete", amount=8},
	{type="fluid", name="nullius-nitrogen", amount=1000, fluidbox_index=1}
  }

  data.raw.item["buoy"].order = "nullius-d"
  data.raw.recipe["buoy"].order = "nullius-d"
  data.raw.recipe["buoy"].category = "small-fluid-assembly"
  data.raw.recipe["buoy"].always_show_made_in = true
  data.raw.recipe["buoy"].energy_required = 5
  data.raw.recipe["buoy"].ingredients = {
    {type="item", name="rail-signal", amount=1},
    {type="item", name="empty-barrel", amount=1},
    {type="item", name="nullius-steel-cable", amount=5},
    {type="item", name="concrete", amount=5},
	{type="fluid", name="nullius-nitrogen", amount=250, fluidbox_index=1}
  }

  data.raw.item["chain_buoy"].order = "nullius-e"
  data.raw.recipe["chain_buoy"].order = "nullius-e"
  data.raw.recipe["chain_buoy"].category = "small-crafting"
  data.raw.recipe["chain_buoy"].always_show_made_in = true
  data.raw.recipe["chain_buoy"].energy_required = 3
  data.raw.recipe["chain_buoy"].ingredients = {
    {type="item", name="buoy", amount=1},
    {type="item", name="programmable-speaker", amount=1}
  }

  data.raw.item["floating-electric-pole"].subgroup = "water_transport"
  data.raw.item["floating-electric-pole"].order = "nullius-f"
  data.raw.recipe["floating-electric-pole"].order = "nullius-f"
  data.raw.recipe["floating-electric-pole"].category = "large-crafting"
  data.raw.recipe["floating-electric-pole"].always_show_made_in = true
  data.raw.recipe["floating-electric-pole"].energy_required = 8
  data.raw.recipe["floating-electric-pole"].ingredients = {
    {type="item", name="buoy", amount=3},
    {type="item", name="big-electric-pole", amount=2}
  }

  data.raw.item["bridge_base"].order = "nullius-g"
  data.raw.recipe["bridge_base"].order = "nullius-g"
  data.raw.recipe["bridge_base"].category = "small-crafting"
  data.raw.recipe["bridge_base"].always_show_made_in = true
  data.raw.recipe["bridge_base"].energy_required = 50
  data.raw.recipe["bridge_base"].ingredients = {
    {type="item", name="rail", amount=12},
    {type="item", name="nullius-steel-beam", amount=30},
	{type="item", name="concrete", amount=40},
    {type="item", name="nullius-steel-cable", amount=10},
	{type="item", name="nullius-motor-2", amount=4},
	{type="item", name="chain_buoy", amount=2}
  }


  if settings.startup["deep_oil"].value then
    data.raw.technology["deep_sea_oil_extraction"].order = "nullius-dk"
    data.raw.technology["deep_sea_oil_extraction"].prerequisites =
        {"oversea-energy-distribution", "nullius-plumbing-4"}
    data.raw.technology["deep_sea_oil_extraction"].unit = {
      count = 200, time = 30,
      ingredients = {
        {"nullius-geology-pack", 1}, {"nullius-climatology-pack", 2},
        {"nullius-mechanical-pack", 1}, {"nullius-electrical-pack", 1}
      }
    }
    table.insert(data.raw.technology["nullius-sulfur-processing-2"].prerequisites,"deep_sea_oil_extraction")

    data.raw.item["oil_rig"].subgroup = "water-intake"
    data.raw.item["oil_rig"].order = "nullius-dr"
	data.raw.recipe["oil_rig"].order = "nullius-dr"
    data.raw.recipe["oil_rig"].category = "huge-crafting"
    data.raw.recipe["oil_rig"].always_show_made_in = true
    data.raw.recipe["oil_rig"].energy_required = 60
    data.raw.recipe["oil_rig"].ingredients = {
      {type="item", name="nullius-large-tank-1", amount=4},
      {type="item", name="nullius-geothermal-plant-1", amount=1},
      {type="item", name="nullius-stirling-engine-1", amount=2},
	  {type="item", name="nullius-extractor-1", amount=2},
	  {type="item", name="floating-electric-pole", amount=2},
	  {type="item", name="port", amount=1}
    }
  end
end


if (mods["beautiful_bridge_railway"] or
    mods["beautiful_bridge_railway_Cargoships"] or
    mods["beautiful_straight_bridge_railway"]) then
  if (not mods["Transport_Drones"]) then
    data.raw.technology["nullius-braking-2"].prerequisites[2] = nil
  end
  table.insert(data.raw.technology["nullius-braking-2"].prerequisites,"nullius-rail-bridges")
  table.insert(data.raw.technology["nullius-woodworking"].effects,
      { type = "unlock-recipe", recipe = "nullius-rail-bridge-wood" })
  data.raw["rail-planner"]["bbr-rail-iron"].order = "nullius-rbb"
  data.raw["rail-planner"]["bbr-rail-brick"].order = "nullius-rbc"
  data.raw["rail-planner"]["bbr-rail-wood"].order = "nullius-rbd"
  data.raw["rail-planner"]["rail"].subgroup = data.raw["rail-planner"]["bbr-rail-iron"].subgroup
  data.raw["rail-planner"]["rail"].order = "nullius-pb"
  if mods["cargo-ships"] then
    data.raw.item["bridge_base"].order = "nullius-t"
	data.raw.item["bridge_base"].subgroup = data.raw["rail-planner"]["rail"].subgroup
	data.raw.recipe["bridge_base"].order = "nullius-t"
	data.raw.recipe["bridge_base"].subgroup = data.raw.item["bridge_base"].subgroup
  end
end


if mods["Mini_Trains"] then
  data.raw.technology["nullius-electromagnetism-2"].prerequisites[2] = "nullius-light-rail"
  table.insert(data.raw.technology["nullius-freight-logistics"].effects,
      { type = "unlock-recipe", recipe = "nullius-small-fluid-wagon-1" })
  table.insert(data.raw.technology["nullius-freight-transportation-2"].effects,
      { type = "unlock-recipe", recipe = "nullius-small-locomotive-2" })
  table.insert(data.raw.technology["nullius-freight-transportation-2"].effects,
      { type = "unlock-recipe", recipe = "nullius-small-cargo-wagon-2" })
  table.insert(data.raw.technology["nullius-freight-transportation-2"].effects,
      { type = "unlock-recipe", recipe = "nullius-small-fluid-wagon-2" })
  table.insert(data.raw.technology["nullius-freight-transportation-3"].effects,
      { type = "unlock-recipe", recipe = "nullius-small-locomotive-3" })
  table.insert(data.raw.technology["nullius-freight-transportation-3"].effects,
      { type = "unlock-recipe", recipe = "nullius-small-solar-locomotive" })
  table.insert(data.raw.technology["nullius-freight-transportation-3"].effects,
      { type = "unlock-recipe", recipe = "nullius-small-cargo-wagon-3" })
  table.insert(data.raw.technology["nullius-freight-transportation-3"].effects,
      { type = "unlock-recipe", recipe = "nullius-small-fluid-wagon-3" })


  local mtl1 = util.table.deepcopy(data.raw.locomotive["mini-locomotive"])
  mtl1.name = "nullius-small-locomotive-1"
  mtl1.localised_name = {"entity-name.nullius-small", {"entity-name.nullius-locomotive-1"}}
  mtl1.localised_description = {"entity-description.nullius-locomotive-1"}
  mtl1.icons = data.raw.item["nullius-small-locomotive-1"].icons
  mtl1.icon = nil
  mtl1.icon_size = nil
  mtl1.minable.result = "nullius-small-locomotive-1"
  mtl1.resistances = data.raw.locomotive["nullius-locomotive-1"].resistances
  mtl1.burner = {
    fuel_category = "vehicle",
    effectivity = 0.9,
    fuel_inventory_size = 1,
    burnt_inventory_size = 2,
    smoke = data.raw.locomotive["mini-locomotive"].burner.smoke
  }
  mtl1.pictures.layers[1].tint = {r = 0.8, g = 0.8, b = 0.6}
  mtl1.color = {r = 0.9, g = 0.85, b = 0}
  mtl1.weight = 500
  mtl1.max_speed = 0.50925925925925926
  mtl1.max_power = "75kW"
  mtl1.reversing_power_modifier = 0.5
  mtl1.braking_force = 1.5
  mtl1.friction_force = 0.1
  mtl1.air_resistance = 0.0016

  local mtl2 = util.table.deepcopy(mtl1)
  mtl2.name = "nullius-small-locomotive-2"
  mtl2.localised_name = {"entity-name.nullius-small", {"entity-name.nullius-locomotive-2"}}
  mtl2.localised_description = {"entity-description.nullius-locomotive-2"}
  mtl2.icons = data.raw.item["nullius-small-locomotive-2"].icons
  mtl2.minable.result = "nullius-small-locomotive-2"
  mtl2.burner.effectivity = 0.95
  mtl2.burner.fuel_inventory_size = 2
  mtl2.pictures.layers[1].tint = {r = 0.9, g = 0.7, b = 0.7}
  mtl2.color = {r = 0.95, g = 0.1, b = 0}
  mtl2.weight = 800
  mtl2.max_speed = 1.0416666666666667
  mtl2.max_power = "190kW"
  mtl2.reversing_power_modifier = 0.7
  mtl2.braking_force = 4
  mtl2.friction_force = 0.16
  mtl2.air_resistance = 0.0028

  local mtl3 = util.table.deepcopy(mtl2)
  mtl3.name = "nullius-small-locomotive-3"
  mtl3.localised_name = {"entity-name.nullius-small", {"entity-name.nullius-locomotive-3"}}
  mtl3.localised_description = {"entity-description.nullius-locomotive-3"}
  mtl3.icons = data.raw.item["nullius-small-locomotive-3"].icons
  mtl3.minable.result = "nullius-small-locomotive-3"
  mtl3.burner.effectivity = 1
  mtl3.pictures.layers[1].tint = {r = 0.8, g = 0.8, b = 1}
  mtl3.color = {r = 0.2, g = 0.3, b = 0.8}
  mtl3.weight = 1200
  mtl3.max_speed = 1.75925925925926
  mtl3.max_power = "400kW"
  mtl3.reversing_power_modifier = 0.8
  mtl3.braking_force = 12
  mtl3.friction_force = 0.24
  mtl3.air_resistance = 0.004

  local mtls = util.table.deepcopy(mtl3)
  mtls.name = "nullius-small-solar-locomotive"
  mtls.localised_name = {"entity-name.nullius-small", {"entity-name.nullius-solar-locomotive"}}
  mtls.localised_description = {"entity-description.nullius-solar-locomotive"}
  mtls.icons = data.raw.item["nullius-small-solar-locomotive"].icons
  mtls.minable.result = "nullius-small-solar-locomotive"
  mtls.energy_source = {type = "void"}
  mtls.burner = nil
  mtls.pictures.layers[1].tint = {r = 0.8, g = 1, b = 0.8}
  mtls.color = {r = 0.2, g = 0.8, b = 0.3}
  mtls.max_speed = 1.0416666666666667
  mtls.max_power = "280kW"
  mtls.braking_force = 8


  local mtc1 = util.table.deepcopy(data.raw["cargo-wagon"]["mini-cargo-wagon"])
  mtc1.name = "nullius-small-cargo-wagon-1"
  mtc1.localised_name = {"entity-name.nullius-small", {"entity-name.nullius-cargo-wagon-1"}}
  mtc1.icons = data.raw.item["nullius-small-cargo-wagon-1"].icons
  mtc1.icon = nil
  mtc1.icon_size = nil
  mtc1.minable.result = "nullius-small-cargo-wagon-1"
  mtc1.resistances = data.raw["cargo-wagon"]["nullius-cargo-wagon-1"].resistances
  mtc1.max_speed = (data.raw["cargo-wagon"]["nullius-cargo-wagon-1"].max_speed * 0.95)
  mtc1.pictures.layers[1].tint = {r = 0.8, g = 0.8, b = 0.6}
  mtc1.color = {r = 0.9, g = 0.85, b = 0}
  mtc1.inventory_size = 12
  mtc1.weight = 250
  mtc1.braking_force = 0.4
  mtc1.friction_force = 0.1
  mtc1.air_resistance = 0.002

  local mtc2 = util.table.deepcopy(mtc1)
  mtc2.name = "nullius-small-cargo-wagon-2"
  mtc2.localised_name = {"entity-name.nullius-small", {"entity-name.nullius-cargo-wagon-2"}}
  mtc2.icons = data.raw.item["nullius-small-cargo-wagon-2"].icons
  mtc2.minable.result = "nullius-small-cargo-wagon-2"
  mtc2.resistances = data.raw["cargo-wagon"]["nullius-cargo-wagon-2"].resistances
  mtc2.max_speed = (data.raw["cargo-wagon"]["nullius-cargo-wagon-2"].max_speed * 0.95)
  mtc2.pictures.layers[1].tint = {r = 0.9, g = 0.7, b = 0.7}
  mtc2.color = {r = 0.95, g = 0.1, b = 0}
  mtc2.inventory_size = 25
  mtc2.weight = 500
  mtc2.braking_force = 1
  mtc2.friction_force = 0.2
  mtc2.air_resistance = 0.005

  local mtc3 = util.table.deepcopy(mtc2)
  mtc3.name = "nullius-small-cargo-wagon-3"
  mtc3.localised_name = {"entity-name.nullius-small", {"entity-name.nullius-cargo-wagon-3"}}
  mtc3.icons = data.raw.item["nullius-small-cargo-wagon-3"].icons
  mtc3.minable.result = "nullius-small-cargo-wagon-3"
  mtc3.resistances = data.raw["cargo-wagon"]["nullius-cargo-wagon-3"].resistances
  mtc3.max_speed = (data.raw["cargo-wagon"]["nullius-cargo-wagon-3"].max_speed * 0.95)
  mtc3.pictures.layers[1].tint = {r = 0.8, g = 0.8, b = 1}
  mtc3.color = {r = 0.2, g = 0.3, b = 0.8}
  mtc3.inventory_size = 50
  mtc3.weight = 750
  mtc3.braking_force = 2
  mtc3.friction_force = 0.3
  mtc3.air_resistance = 0.0075


  local mtf1 = util.table.deepcopy(data.raw["fluid-wagon"]["mini-fluid-wagon"])
  mtf1.name = "nullius-small-fluid-wagon-1"
  mtf1.localised_name = {"entity-name.nullius-small", {"entity-name.nullius-fluid-wagon-1"}}
  mtf1.icons = data.raw.item["nullius-small-fluid-wagon-1"].icons
  mtf1.icon = nil
  mtf1.icon_size = nil
  mtf1.minable.result = "nullius-small-fluid-wagon-1"
  mtf1.resistances = data.raw["fluid-wagon"]["nullius-fluid-wagon-1"].resistances
  mtf1.max_speed = (data.raw["fluid-wagon"]["nullius-fluid-wagon-1"].max_speed * 0.95)
  mtf1.pictures.layers[1].tint = {r = 0.8, g = 0.8, b = 0.6}
  mtf1.color = {r = 0.9, g = 0.85, b = 0}
  mtf1.capacity = 12000
  mtf1.weight = 300
  mtf1.braking_force = 0.4
  mtf1.friction_force = 0.1
  mtf1.air_resistance = 0.0024

  local mtf2 = util.table.deepcopy(mtf1)
  mtf2.name = "nullius-small-fluid-wagon-2"
  mtf2.localised_name = {"entity-name.nullius-small", {"entity-name.nullius-fluid-wagon-2"}}
  mtf2.icons = data.raw.item["nullius-small-fluid-wagon-2"].icons
  mtf2.minable.result = "nullius-small-fluid-wagon-2"
  mtf2.resistances = data.raw["fluid-wagon"]["nullius-fluid-wagon-2"].resistances
  mtf2.max_speed = (data.raw["fluid-wagon"]["nullius-fluid-wagon-2"].max_speed * 0.95)
  mtf2.pictures.layers[1].tint = {r = 0.9, g = 0.7, b = 0.7}
  mtf2.color = {r = 0.95, g = 0.1, b = 0}
  mtf2.capacity = 40000
  mtf2.weight = 600
  mtf2.braking_force = 1
  mtf2.friction_force = 0.2
  mtf2.air_resistance = 0.006

  local mtf3 = util.table.deepcopy(mtf2)
  mtf3.name = "nullius-small-fluid-wagon-3"
  mtf3.localised_name = {"entity-name.nullius-small", {"entity-name.nullius-fluid-wagon-3"}}
  mtf3.icons = data.raw.item["nullius-small-fluid-wagon-3"].icons
  mtf3.minable.result = "nullius-small-fluid-wagon-3"
  mtf3.resistances = data.raw["fluid-wagon"]["nullius-fluid-wagon-3"].resistances
  mtf3.max_speed = (data.raw["fluid-wagon"]["nullius-fluid-wagon-3"].max_speed * 0.95)
  mtf3.pictures.layers[1].tint = {r = 0.8, g = 0.8, b = 1}
  mtf3.color = {r = 0.2, g = 0.3, b = 0.8}
  mtf3.capacity = 125000
  mtf3.weight = 900
  mtf3.braking_force = 2
  mtf3.friction_force = 0.3
  mtf3.air_resistance = 0.009
  
  data:extend({ mtl1, mtl2, mtl3, mtls, mtc1, mtc2, mtc3, mtf1, mtf2, mtf3 })


  data.raw.item["nullius-small-locomotive-1"].place_result = "nullius-small-locomotive-1"
  data.raw.item["nullius-small-locomotive-2"].place_result = "nullius-small-locomotive-2"
  data.raw.item["nullius-small-locomotive-3"].place_result = "nullius-small-locomotive-3"
  data.raw.item["nullius-small-solar-locomotive"].place_result = "nullius-small-solar-locomotive"
  data.raw.item["nullius-small-cargo-wagon-1"].place_result = "nullius-small-cargo-wagon-1"
  data.raw.item["nullius-small-cargo-wagon-2"].place_result = "nullius-small-cargo-wagon-2"
  data.raw.item["nullius-small-cargo-wagon-3"].place_result = "nullius-small-cargo-wagon-3"
  data.raw.item["nullius-small-fluid-wagon-1"].place_result = "nullius-small-fluid-wagon-1"
  data.raw.item["nullius-small-fluid-wagon-2"].place_result = "nullius-small-fluid-wagon-2"
  data.raw.item["nullius-small-fluid-wagon-3"].place_result = "nullius-small-fluid-wagon-3"
end



