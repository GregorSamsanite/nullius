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
data.raw.technology["advanced-underground-piping"].prerequisites = {"nullius-hydrology-1"}
data.raw.technology["advanced-underground-piping"].order = "nullius-df"
data.raw.technology["advanced-underground-piping"].unit = {
  count = 200, time = 20,
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
  }
}

data.raw.technology["advanced-underground-piping-t2"].localised_name = {"",
  {"technology-name.advanced-underground-piping"}, " ", 2}
data.raw.technology["advanced-underground-piping-t2"].localised_description = 
  {"technology-description.advanced-underground-piping"}
data.raw.technology["advanced-underground-piping-t2"].icon = 
  "__underground-pipe-pack__/graphics/technology/advanced-underground-piping-t3.png"
data.raw.technology["advanced-underground-piping-t2"].prerequisites =
  {"nullius-plumbing-4", "advanced-underground-piping"}
data.raw.technology["advanced-underground-piping-t2"].order = "nullius-ek"
data.raw.technology["advanced-underground-piping-t2"].unit = {
  count = 600, time = 30,
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
  },
  {
    type = "unlock-recipe",
    recipe = "nullius-adjustable-top-up-valve"
  }
}

data.raw.technology["advanced-underground-piping-t3"].localised_name = {"",
  {"technology-name.advanced-underground-piping"}, " ", 3}
data.raw.technology["advanced-underground-piping-t3"].localised_description = 
  {"technology-description.advanced-underground-piping"}
data.raw.technology["advanced-underground-piping-t3"].icon = 
  "__underground-pipe-pack__/graphics/technology/advanced-underground-piping-t1.png"
data.raw.technology["advanced-underground-piping-t3"].prerequisites =
  {"nullius-hydrology-2", "advanced-underground-piping-t2"}
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
data.raw.pump["underground-mini-pump"].fluid_box.height = 5
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
	end

    local basename = junction.name
	if (lvl < 4) then
	  basename = string.sub(junction.name, 1, -8).."pipe"
	end
	junction.localised_name = {"", {"entity-name."..basename}, " ", (lvl - 1)}
	junction.localised_description =
	  data.raw.item[junction.minable.result].localised_description

	for _,connection in pairs(junction.fluid_box.pipe_connections) do
	  if ((connection.max_underground_distance ~= nil) and
	      (connection.max_underground_distance > 5)) then
	    connection.max_underground_distance = dist
	  end
	end
  end
end

for i=1,9 do
  local topup = data.raw["storage-tank"][i.."0-top-up-valve"]
  local relief = data.raw["storage-tank"][i.."0-overflow-valve"]
  topup.localised_name = {"", (i*10), "% ", {"entity-name.nullius-top-up-valve"}}
  relief.localised_name = {"", (i*10), "% ", {"entity-name.nullius-relief-valve"}}
  topup.localised_description = {"item-description.nullius-adjustable-top-up-valve"}
  relief.localised_description = {"item-description.nullius-adjustable-relief-valve"}
  local theight = (i * 0.2)
  topup.fluid_box.height = theight
  topup.fluid_box.base_level = 0
  topup.fluid_box.base_area = 3 / theight
  local rheight = 2.5 - theight
  relief.fluid_box.height = rheight
  relief.fluid_box.base_level = theight
  relief.fluid_box.base_area = 3 / rheight
end
end
