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
	"factory-connection-type-chest", "nullius-packaging-1", "factory-connection-type-fluid"}
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
	"factory-preview", "nullius-mass-production-5", "nullius-storage-3"}
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
	"factory-architecture-t2", "nullius-logistic-robot-2", "nullius-construction-robot-2"}
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
data.raw.item["fast-miniloader"].subgroup = "miniloader"
data.raw.item["fast-miniloader"].order = "nullius-cb"
data.raw.item["fast-filter-miniloader"].subgroup = "miniloader"
data.raw.item["fast-filter-miniloader"].order = "nullius-cc"

data.raw.item["express-miniloader"].localised_name = {"", {"entity-name.miniloader"}, " ", 2}
data.raw["loader-1x1"]["express-miniloader-loader"].localised_name = {"", {"entity-name.miniloader"}, " ", 2}
data.raw["inserter"]["express-miniloader-inserter"].localised_name = {"", {"entity-name.miniloader"}, " ", 2}
data.raw.item["express-filter-miniloader"].localised_name = {"", {"entity-name.filter-miniloader"}, " ", 2}
data.raw["loader-1x1"]["express-filter-miniloader-loader"].localised_name = {"", {"entity-name.filter-miniloader"}, " ", 2}
data.raw["inserter"]["express-filter-miniloader-inserter"].localised_name = {"", {"entity-name.filter-miniloader"}, " ", 2}
data.raw.item["express-miniloader"].subgroup = "miniloader"
data.raw.item["express-miniloader"].order = "nullius-db"
data.raw.item["express-filter-miniloader"].subgroup = "miniloader"
data.raw.item["express-filter-miniloader"].order = "nullius-dc"

data.raw.item["ultimate-miniloader"].localised_name = {"", {"entity-name.miniloader"}, " ", 3}
data.raw["loader-1x1"]["ultimate-miniloader-loader"].localised_name = {"", {"entity-name.miniloader"}, " ", 3}
data.raw["inserter"]["ultimate-miniloader-inserter"].localised_name = {"", {"entity-name.miniloader"}, " ", 3}
data.raw.item["ultimate-filter-miniloader"].localised_name = {"", {"entity-name.filter-miniloader"}, " ", 3}
data.raw["loader-1x1"]["ultimate-filter-miniloader-loader"].localised_name = {"", {"entity-name.filter-miniloader"}, " ", 3}
data.raw["inserter"]["ultimate-filter-miniloader-inserter"].localised_name = {"", {"entity-name.filter-miniloader"}, " ", 3}
data.raw.item["ultimate-miniloader"].subgroup = "miniloader"
data.raw.item["ultimate-miniloader"].order = "nullius-eb"
data.raw.item["ultimate-filter-miniloader"].subgroup = "miniloader"
data.raw.item["ultimate-filter-miniloader"].order = "nullius-ec"

if settings.startup["miniloader-enable-chute"].value then
  table.insert(data.raw["technology"]["nullius-mechanical-separation"].effects,
      {type = "unlock-recipe", recipe = "nullius-miniloader-chute"})
  data.raw.item["chute-miniloader"].subgroup = "miniloader"
  data.raw.item["chute-miniloader"].order = "nullius-b"
end
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
  "long-inserters-2", "near-inserters", "nullius-optimization-2"}
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
  "nullius-logistics-3", "more-inserters-1"}
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
data.raw.technology["train-manager"].prerequisites = {
  "nullius-distribution-1", "nullius-braking-1"}
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
if mods["LogisticTrainNetwork"] then
data.raw.technology["train-manager"].prerequisites =
  { "nullius-logistic-train-network" }
end
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
	  
	local archetype = data.raw["pipe-to-ground"]["nullius-underground-pipe-"..lvl]
	junction.fluid_box.height = archetype.fluid_box.height
	junction.fluid_box.base_area = archetype.fluid_box.base_area

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
  "nullius-robotics-1", "nullius-energy-storage-2" }
data.raw.technology["transport-system"].unit = {
  count = 150, time = 30,
  ingredients = {
    {"nullius-geology-pack", 1}, {"nullius-climatology-pack", 1},
    {"nullius-mechanical-pack", 1}, {"nullius-electrical-pack", 1}
  }
}
data.raw.technology["transport-depot-circuits"].order = "nullius-dm"
data.raw.technology["transport-depot-circuits"].prerequisites = {
  "transport-system", "nullius-traffic-control", "nullius-distribution-1" }
data.raw.technology["transport-depot-circuits"].unit = {
  count = 150, time = 30,
  ingredients = {
    {"nullius-geology-pack", 1}, {"nullius-climatology-pack", 1},
    {"nullius-mechanical-pack", 1}, {"nullius-electrical-pack", 1}
  }
}
data.raw.technology["transport-drone-speed-1"].order = "nullius-dl"
data.raw.technology["transport-drone-speed-1"].prerequisites = {
  "transport-depot-circuits", "nullius-braking-1", "nullius-robot-speed-1" }
data.raw.technology["transport-drone-speed-1"].unit = {
  count = 200, time = 30,
  ingredients = {
    {"nullius-geology-pack", 1}, {"nullius-climatology-pack", 1},
    {"nullius-mechanical-pack", 1}, {"nullius-electrical-pack", 1}
  }
}
data.raw.technology["transport-drone-capacity-1"].order = "nullius-dl"
data.raw.technology["transport-drone-capacity-1"].prerequisites = {
  "transport-depot-circuits", "nullius-braking-1", "nullius-projection-1" }
data.raw.technology["transport-drone-capacity-1"].unit = {
  count = 250, time = 30,
  ingredients = {
    {"nullius-geology-pack", 1}, {"nullius-climatology-pack", 1},
    {"nullius-mechanical-pack", 1}, {"nullius-electrical-pack", 1}
  }
}
data.raw.technology["transport-drone-speed-2"].order = "nullius-en"
data.raw.technology["transport-drone-speed-2"].prerequisites = {
  "transport-drone-speed-1", "nullius-braking-5" }
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
  "transport-drone-capacity-1", "nullius-inserter-capacity-2" }
data.raw.technology["transport-drone-capacity-2"].unit = {
  count = 1000, time = 35,
  ingredients = {
    {"nullius-geology-pack", 1}, {"nullius-climatology-pack", 1},
    {"nullius-mechanical-pack", 1}, {"nullius-electrical-pack", 1},
    {"nullius-chemical-pack", 1}
  }
}
data.raw.technology["transport-drone-speed-3"].order = "nullius-fh"
data.raw.technology["transport-drone-speed-3"].prerequisites = {
  "transport-drone-speed-2", "nullius-robot-speed-3" }
data.raw.technology["transport-drone-speed-3"].unit = {
  count = 1600, time = 45,
  ingredients = {
    {"nullius-geology-pack", 1}, {"nullius-climatology-pack", 1},
    {"nullius-mechanical-pack", 1}, {"nullius-electrical-pack", 1},
    {"nullius-chemical-pack", 1}, {"nullius-physics-pack", 1}
  }
}
data.raw.technology["transport-drone-capacity-3"].order = "nullius-fh"
data.raw.technology["transport-drone-capacity-3"].prerequisites = {
  "transport-drone-capacity-2", "nullius-mechanical-engineering-2" }
data.raw.technology["transport-drone-capacity-3"].unit = {
  count = 1600, time = 45,
  ingredients = {
    {"nullius-geology-pack", 1}, {"nullius-climatology-pack", 1},
    {"nullius-mechanical-pack", 1}, {"nullius-electrical-pack", 1},
    {"nullius-chemical-pack", 1}, {"nullius-physics-pack", 1}
  }
}
data.raw.technology["transport-drone-speed-4"].order = "nullius-fu"
data.raw.technology["transport-drone-speed-4"].prerequisites = {
  "transport-drone-speed-3", "nullius-robot-speed-4" }
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
  "transport-drone-capacity-3", "nullius-cybernetics-5" }
data.raw.technology["transport-drone-capacity-4"].unit = {
  count = 4500, time = 55,
  ingredients = {
    {"nullius-geology-pack", 1}, {"nullius-climatology-pack", 1},
    {"nullius-mechanical-pack", 1}, {"nullius-electrical-pack", 1},
    {"nullius-chemical-pack", 1}, {"nullius-physics-pack", 1}
  }
}
data.raw.technology["transport-drone-speed-5"].order = "nullius-gj"
data.raw.technology["transport-drone-speed-5"].prerequisites = {
  "transport-drone-speed-4", "nullius-cybernetics-6" }
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
  "transport-drone-capacity-4", "nullius-personal-storage-3" }
data.raw.technology["transport-drone-capacity-5"].unit = {
  count = 25000, time = 60,    
  ingredients = {
    {"nullius-geology-pack", 1}, {"nullius-climatology-pack", 1},
    {"nullius-mechanical-pack", 1}, {"nullius-electrical-pack", 1},
    {"nullius-chemical-pack", 1}, {"nullius-physics-pack", 1},
	{"nullius-astronomy-pack", 1}
  }
}

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

data.raw["assembling-machine"]["request-depot"].fluid_boxes[2].base_level = 3
data.raw["assembling-machine"]["buffer-depot"].fluid_boxes[2].base_level = 3
data.raw["assembling-machine"]["fuel-depot"].fluid_boxes[2].base_level = -2
data.raw["assembling-machine"]["fuel-depot"].fluid_boxes[2].height = 4
data.raw["assembling-machine"]["fuel-depot"].fluid_boxes[2].base_area = 500
data.raw["furnace"]["fluid-depot"].fluid_boxes[2].base_level = -2
data.raw["furnace"]["fluid-depot"].fluid_boxes[2].height = 4
data.raw["furnace"]["fluid-depot"].fluid_boxes[2].base_area = 250
end


if mods["textplates"] then
local textplatematerial = {
  ["stone"] = {material="stone-brick", order="b"},
  ["iron"] = {material="nullius-iron-plate", order="c"},
  ["steel"] = {material="nullius-steel-plate", order="d"},
  ["gold"] = {material="nullius-aluminum-plate", order="e"},
  ["glass"] = {material="nullius-glass", order="f"},
  ["concrete"] = {material="concrete", order="g"},
  ["copper"] = {material="nullius-copper-sheet", order="h"},
  ["uranium"] = {material="nullius-uranium", order="i"}
}

for _, recipe in pairs(data.raw.recipe) do
  if (string.sub(recipe.name, 1, 10) == "textplate-") then
    local material = string.sub(recipe.name, 17, -1)
	local newmaterial = textplatematerial[material]
	if (newmaterial ~= nil) then
	  recipe.energy_required = 1
	  recipe.category = "medium-crafting"
	  recipe.enabled = false

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

table.insert(data.raw["technology"]["nullius-distribution-2"].effects,
    {type = "unlock-recipe", recipe = "nullius-bot-upgrade-chest"})
end
