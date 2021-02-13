if mods["LogisticTrainNetwork"] then
data.raw["train-stop"]["logistic-train-stop"].subgroup = "railway"
data.raw["train-stop"]["logistic-train-stop"].order = "nullius-ec"
data.raw.item["logistic-train-stop"].subgroup = "railway"
data.raw.item["logistic-train-stop"].order = "nullius-ec"
end


if mods["Factorissimo2"] then
local factory_mult = settings.startup["Factorissimo2-easy-research"].value and 10 or 100

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
	"factory-architecture-t1", "nullius-packaging-1"}
data.raw.technology["factory-architecture-t2"].effects =
	{{type = "unlock-recipe", recipe = "nullius-factory-2"}}
data.raw.technology["factory-architecture-t2"].unit = {
    count = 4*factory_mult, time = 30,
    ingredients = {
        {"nullius-geology-pack", 1}, {"nullius-climatology-pack", 1},
        {"nullius-mechanical-pack", 1}, {"nullius-electrical-pack", 1},
        {"nullius-chemical-pack", 1}}
}

data.raw.technology["factory-architecture-t3"].order = "nullius-e"
data.raw.technology["factory-architecture-t3"].prerequisites = {
	"factory-architecture-t2", "nullius-mass-production-4", "nullius-storage-3"}
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
	"factory-architecture-t1", "nullius-experimental-chemistry"}
data.raw.technology["factory-connection-type-fluid"].effects =
	{{type = "unlock-recipe", recipe = "nullius-factory-input-pipe"},
	 {type = "unlock-recipe", recipe = "nullius-factory-output-pipe"}}
data.raw.technology["factory-connection-type-fluid"].unit = {
    count = 2*factory_mult, time = 30,
    ingredients = {
        {"nullius-climatology-pack", 1}, {"nullius-mechanical-pack", 1},
        {"nullius-chemical-pack", 1}}
}

data.raw.technology["factory-connection-type-chest"].order = "nullius-e"
data.raw.technology["factory-connection-type-chest"].prerequisites = {
	"factory-architecture-t1"}
data.raw.technology["factory-connection-type-chest"].unit = {
    count = 3*factory_mult, time = 30,
    ingredients = {
        {"nullius-geology-pack", 1}, {"nullius-climatology-pack", 1},
        {"nullius-mechanical-pack", 1}, {"nullius-electrical-pack", 1}}
}

data.raw.technology["factory-connection-type-circuit"].order = "nullius-e"
data.raw.technology["factory-connection-type-circuit"].prerequisites = {
	"factory-architecture-t1", "nullius-traffic-control"}
data.raw.technology["factory-connection-type-circuit"].effects =
	{{type = "unlock-recipe", recipe = "nullius-factory-circuit-input"},
	 {type = "unlock-recipe", recipe = "nullius-factory-circuit-output"}}
data.raw.technology["factory-connection-type-circuit"].unit = {
    count = 2*factory_mult, time = 30,
    ingredients = {
        {"nullius-geology-pack", 1}, {"nullius-electrical-pack", 1}}
}

data.raw.technology["factory-interior-upgrade-lights"].order = "nullius-e"
data.raw.technology["factory-interior-upgrade-lights"].prerequisites = {
	"factory-connection-type-circuit", "nullius-illumination-2"}
data.raw.technology["factory-interior-upgrade-lights"].unit = {
    count = 3*factory_mult, time = 30,
    ingredients = {
        {"nullius-geology-pack", 1}, {"nullius-climatology-pack", 1},
        {"nullius-electrical-pack", 1}, {"nullius-chemical-pack", 1}}
}

data.raw.technology["factory-interior-upgrade-display"].order = "nullius-e"
data.raw.technology["factory-interior-upgrade-display"].prerequisites = {
	"factory-architecture-t2", "nullius-aesthetics"}
data.raw.technology["factory-interior-upgrade-display"].unit = {
    count = 4*factory_mult, time = 35,
    ingredients = {
        {"nullius-geology-pack", 1}, {"nullius-climatology-pack", 1},
        {"nullius-mechanical-pack", 1}, {"nullius-electrical-pack", 1},
        {"nullius-chemical-pack", 1}}
}

data.raw.technology["factory-preview"].order = "nullius-e"
data.raw.technology["factory-preview"].prerequisites = {
	"factory-interior-upgrade-display", "factory-interior-upgrade-lights"}
data.raw.technology["factory-preview"].unit = {
    count = 8*factory_mult, time = 35,
    ingredients = {
        {"nullius-geology-pack", 1}, {"nullius-climatology-pack", 1},
        {"nullius-mechanical-pack", 1}, {"nullius-electrical-pack", 1},
        {"nullius-chemical-pack", 1}}
}

data.raw.technology["factory-requester-chest"].order = "nullius-e"
data.raw.technology["factory-requester-chest"].prerequisites = {
	"factory-connection-type-chest", "nullius-logistic-robot-2"}
data.raw.technology["factory-requester-chest"].effects =
	{{type = "unlock-recipe", recipe = "nullius-factory-requester-chest"}}
data.raw.technology["factory-requester-chest"].unit = {
    count = 5*factory_mult, time = 30,
    ingredients = {
        {"nullius-geology-pack", 1}, {"nullius-climatology-pack", 1},
        {"nullius-mechanical-pack", 1}, {"nullius-electrical-pack", 1},
        {"nullius-chemical-pack", 1}}
}

data.raw.technology["factory-recursion-t1"].order = "nullius-e"
data.raw.technology["factory-recursion-t1"].prerequisites = {
	"factory-architecture-t2", "nullius-packaging-4"}
data.raw.technology["factory-recursion-t1"].unit = {
    count = 8*factory_mult, time = 35,
    ingredients = {
        {"nullius-geology-pack", 1}, {"nullius-climatology-pack", 1},
        {"nullius-mechanical-pack", 1}, {"nullius-electrical-pack", 1},
        {"nullius-chemical-pack", 1}}
}

data.raw.technology["factory-recursion-t2"].order = "nullius-e"
data.raw.technology["factory-recursion-t2"].prerequisites = {
	"factory-architecture-t3", "nullius-physics", "factory-recursion-t1"}
data.raw.technology["factory-recursion-t2"].unit = {
    count = 25*factory_mult, time = 40,
    ingredients = {
        {"nullius-geology-pack", 1}, {"nullius-climatology-pack", 1},
        {"nullius-mechanical-pack", 1}, {"nullius-electrical-pack", 1},
        {"nullius-chemical-pack", 1}, {"nullius-physics-pack", 1}}
}

data.raw.pipe["factory-fluid-dummy-connector-"..defines.direction.south].fluid_box.height = 2
data.raw.pipe["factory-fluid-dummy-connector-"..defines.direction.north].fluid_box.height = 2
data.raw.pipe["factory-fluid-dummy-connector-"..defines.direction.east].fluid_box.height = 2
data.raw.pipe["factory-fluid-dummy-connector-"..defines.direction.west].fluid_box.height = 2
end


if mods["miniloader"] then
data.raw.item["fast-miniloader"].localised_name = {"", {"entity-name.miniloader"}, " ", 1}
data.raw["loader-1x1"]["fast-miniloader-loader"].localised_name = {"", {"entity-name.miniloader"}, " ", 1}
data.raw["inserter"]["fast-miniloader-inserter"].localised_name = {"", {"entity-name.miniloader"}, " ", 1}
data.raw.item["fast-filter-miniloader"].localised_name = {"", {"entity-name.filter-miniloader"}, " ", 1}
data.raw["loader-1x1"]["fast-filter-miniloader-loader"].localised_name = {"", {"entity-name.filter-miniloader"}, " ", 1}
data.raw["inserter"]["fast-filter-miniloader-inserter"].localised_name = {"", {"entity-name.filter-miniloader"}, " ", 1}
data.raw.item["fast-miniloader"].subgroup = "splitter"
data.raw.item["fast-miniloader"].order = "nullius-mbb"
data.raw.item["fast-filter-miniloader"].subgroup = "splitter"
data.raw.item["fast-filter-miniloader"].order = "nullius-mbc"

data.raw.item["express-miniloader"].localised_name = {"", {"entity-name.miniloader"}, " ", 2}
data.raw["loader-1x1"]["express-miniloader-loader"].localised_name = {"", {"entity-name.miniloader"}, " ", 2}
data.raw["inserter"]["express-miniloader-inserter"].localised_name = {"", {"entity-name.miniloader"}, " ", 2}
data.raw.item["express-filter-miniloader"].localised_name = {"", {"entity-name.filter-miniloader"}, " ", 2}
data.raw["loader-1x1"]["express-filter-miniloader-loader"].localised_name = {"", {"entity-name.filter-miniloader"}, " ", 2}
data.raw["inserter"]["express-filter-miniloader-inserter"].localised_name = {"", {"entity-name.filter-miniloader"}, " ", 2}
data.raw.item["express-miniloader"].subgroup = "splitter"
data.raw.item["express-miniloader"].order = "nullius-mcb"
data.raw.item["express-filter-miniloader"].subgroup = "splitter"
data.raw.item["express-filter-miniloader"].order = "nullius-mcc"

data.raw.item["ultimate-miniloader"].localised_name = {"", {"entity-name.miniloader"}, " ", 3}
data.raw["loader-1x1"]["ultimate-miniloader-loader"].localised_name = {"", {"entity-name.miniloader"}, " ", 3}
data.raw["inserter"]["ultimate-miniloader-inserter"].localised_name = {"", {"entity-name.miniloader"}, " ", 3}
data.raw.item["ultimate-filter-miniloader"].localised_name = {"", {"entity-name.filter-miniloader"}, " ", 3}
data.raw["loader-1x1"]["ultimate-filter-miniloader-loader"].localised_name = {"", {"entity-name.filter-miniloader"}, " ", 3}
data.raw["inserter"]["ultimate-filter-miniloader-inserter"].localised_name = {"", {"entity-name.filter-miniloader"}, " ", 3}
data.raw.item["ultimate-miniloader"].subgroup = "splitter"
data.raw.item["ultimate-miniloader"].order = "nullius-mdb"
data.raw.item["ultimate-filter-miniloader"].subgroup = "splitter"
data.raw.item["ultimate-filter-miniloader"].order = "nullius-mdc"
end


if mods["bobinserters"] and (settings.startup["bobmods-inserters-long2"].value == true) then
data.raw.technology["long-inserters-1"].order = "nullius-ce"
data.raw.technology["long-inserters-1"].prerequisites = {"nullius-automation"}
data.raw.technology["long-inserters-1"].unit = { count = 15,
  ingredients = {{"nullius-mechanical-pack", 1}},
  time = 8
}
data.raw.technology["nullius-projection-1"].prerequisites = {
  "nullius-cybernetics-2", "long-inserters-2"}
data.raw.technology["nullius-mass-production-2"].prerequisites = {
  "nullius-logistic-robot-1", "nullius-concrete-1",
  "long-inserters-2", "nullius-weaving-1"
}

data.raw.technology["long-inserters-2"].order = "nullius-df"
data.raw.technology["long-inserters-2"].prerequisites = {
  "nullius-maintenance", "long-inserters-1"}
data.raw.technology["long-inserters-2"].unit = { count = 100,
  ingredients = {{"nullius-mechanical-pack", 1}, {"nullius-electrical-pack", 1}},
  time = 20
}
else
data.raw.technology["long-inserters-1"].order = "nullius-df"
data.raw.technology["long-inserters-1"].localised_name = {"technology-name.nullius-long-inserters"}
data.raw.technology["long-inserters-1"].localised_description = {"technology-description.nullius-long-inserters"}
data.raw.technology["long-inserters-1"].prerequisites = {"nullius-maintenance"}
data.raw.technology["long-inserters-1"].unit = { count = 100,
  ingredients = {{"nullius-mechanical-pack", 1}, {"nullius-electrical-pack", 1}},
  time = 20
}
end

if mods["bobinserters"] then
if (settings.startup["bobmods-inserters-long2"].value == true) then
data.raw.technology["near-inserters"].prerequisites = {"long-inserters-1", "nullius-toolmaking-1"}
data.raw.technology["near-inserters"].order = "nullius-cf"
data.raw.technology["near-inserters"].unit = { count = 25,
  ingredients = {{"nullius-mechanical-pack", 1}},
  time = 8
}
else
data.raw.technology["near-inserters"].prerequisites = {"long-inserters-1", "nullius-locomotion-1"}
data.raw.technology["near-inserters"].order = "nullius-dg"
data.raw.technology["near-inserters"].unit = { count = 150,
  ingredients = {{"nullius-mechanical-pack", 1}, {"nullius-electrical-pack", 1}},
  time = 25
}
end

data.raw.technology["more-inserters-1"].order = "nullius-df"
data.raw.technology["more-inserters-1"].unit = { count = 200,
  ingredients = {{"nullius-mechanical-pack", 1}, {"nullius-electrical-pack", 1}},
  time = 30
}
if (settings.startup["bobmods-inserters-long2"].value == true) then
data.raw.technology["more-inserters-1"].prerequisites = {
  "long-inserters-2", "near-inserters", "nullius-locomotion-1"}
else
data.raw.technology["more-inserters-1"].prerequisites = {
  "long-inserters-1", "near-inserters", "nullius-cybernetics-2"}
end

if settings.startup["bobmods-inserters-more2"].value == true then
data.raw.technology["more-inserters-2"].order = "nullius-ek"
data.raw.technology["more-inserters-2"].unit = { count = 600,
  ingredients = {
    {"nullius-mechanical-pack", 1}, {"nullius-electrical-pack", 1},
    {"nullius-chemical-pack", 1}
  },
  time = 35
}
data.raw.technology["more-inserters-2"].prerequisites = {
  "nullius-actuation-3", "more-inserters-1"}
end
end

if mods["train-pubsub"] then
data.raw.technology["train-manager"].order = "nullius-dk"
data.raw.technology["train-manager"].unit = {
  count = 300,
  ingredients = {
	{"nullius-geology-pack", 1}, {"nullius-climatology-pack", 1},
    {"nullius-mechanical-pack", 1}, {"nullius-electrical-pack", 1}
  },
  time = 30
}
data.raw.technology["train-manager"].prerequisites = {
  "nullius-distribution-1", "nullius-traffic-control"}
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
table.insert(data.raw["equipment-grid"]["nullius-armor-grid-2"].equipment_categories, "armor-jetpack")
table.insert(data.raw["equipment-grid"]["nullius-armor-grid-3"].equipment_categories, "armor-jetpack")
table.insert(data.raw["equipment-grid"]["nullius-armor-grid-4"].equipment_categories, "armor-jetpack")
table.insert(data.raw["equipment-grid"]["nullius-armor-grid-5"].equipment_categories, "armor-jetpack")
table.insert(data.raw["equipment-grid"]["nullius-armor-grid-6"].equipment_categories, "armor-jetpack")
end
