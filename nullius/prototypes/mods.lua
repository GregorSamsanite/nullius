local ICONPATH = "__nullius__/graphics/icons/"
local ENTITYPATH = "__nullius__/graphics/entity/"

if mods["LogisticTrainNetwork"] then
data:extend({
  {
    type = "technology",
    name = "nullius-logistic-train-network",
    localised_name = {"technology-name.logistic-train-network"},
    localised_description = {"technology-description.logistic-train-network"},
    order = "nullius-dk",
    icon = "__LogisticTrainNetwork__/thumbnail.png",
    icon_size = 144,
    effects = {
      {
        type = "unlock-recipe",
        recipe = "nullius-logistic-train-stop"
      }
    },
    unit = {
      count = 50,
      ingredients = {
        {"nullius-geology-pack", 1}, {"nullius-climatology-pack", 1},
        {"nullius-mechanical-pack", 1}, {"nullius-electrical-pack", 1}
      },
      time = 25
    },
    prerequisites = {"nullius-checkpoint-optimization", "nullius-traffic-control"},
	ignore_tech_cost_multiplier = true
  },
  {
    type = "recipe",
    name = "nullius-logistic-train-stop",
    enabled = false,
    category = "medium-crafting",
    always_show_made_in = true,
    energy_required = 3,
    ingredients = {
      {"train-stop", 1},
      {"arithmetic-combinator", 2},
      {"green-wire", 4}
    },
    result = "logistic-train-stop"
  }
})
end


if mods["LTN_Combinator_Modernized"] then
  data:extend({
    {
      type = "recipe",
      name = "nullius-ltn-combinator",
      enabled = false,
      always_show_made_in = true,
      category = "tiny-crafting",
      energy_required = 2,
      ingredients = {
        {"constant-combinator", 1},
        {"decider-combinator", 1}
      },
      result = "ltn-combinator"
    }
  })
  if mods["LogisticTrainNetwork"] then
    table.insert(data.raw["technology"]["nullius-logistic-train-network"].effects,
        {type = "unlock-recipe", recipe = "nullius-ltn-combinator"})
  else
    table.insert(data.raw["technology"]["nullius-traffic-control"].effects,
        {type = "unlock-recipe", recipe = "nullius-ltn-combinator"})
  end
end


if mods["aai-signal-transmission"] then
data:extend({
  {
    type = "recipe",
    name = "nullius-aai-signal-sender",
    category = "huge-crafting",
    always_show_made_in = true,
    energy_required = 12,
    ingredients = {
      {"nullius-beacon-1", 1},
      {"nullius-relay-1", 2}
    },
    result = "aai-signal-sender",
    enabled = false
  },
  {
    type = "recipe",
    name = "nullius-aai-signal-receiver",
    category = "huge-crafting",
    always_show_made_in = true,
    energy_required = 15,
    ingredients = {
      {"radar", 1},
      {"programmable-speaker", 2}
    },
    result = "aai-signal-receiver",
    enabled = false
  },

  {
    type = "technology",
    name = "nullius-aai-signal-transmission",
    localised_name = {"technology-name.aai-signal-transmission"},
    localised_description = {"technology-description.aai-signal-transmission"},
    icon = "__aai-signal-transmission__/graphics/technology/signal-transmission.png",
    icon_size = 256,
    order = "nullius-dj",
    effects = {
      { type = "unlock-recipe", recipe = "nullius-aai-signal-sender" },
      { type = "unlock-recipe", recipe = "nullius-aai-signal-receiver" }
    },
    unit = {
      count = 150,
      ingredients = {
        {"nullius-geology-pack", 1}, {"nullius-climatology-pack", 1},
        {"nullius-mechanical-pack", 1}, {"nullius-electrical-pack", 1}
      },
      time = 30
    },
    prerequisites = {"nullius-checkpoint-sensor", "nullius-mass-production-3"}
  }
})
end


if mods["Factorissimo2"] or mods["factorissimo-2-notnotmelon"] then
data:extend({
  {
    type = "recipe",
    name = "nullius-factory-1",
    category = "huge-crafting",
    always_show_made_in = true,
    energy_required = 40,
    ingredients = {
      {"stone-brick", 200},
      {"nullius-mortar", 60},
      {"nullius-glass", 40},
      {"substation", 4},
      {"small-lamp", 4}
    },
    result = "factory-1",
    enabled = false
  },
  {
    type = "recipe",
    name = "nullius-factory-2",
    category = "huge-crafting",
    always_show_made_in = true,
    energy_required = 60,
    ingredients = {
      {"factory-1", 3},
      {"concrete", 800},
      {"nullius-refractory-brick", 500},
      {"nullius-steel-beam", 200},
      {"red-wire", 40}
    },
    result = "factory-2",
    enabled = false
  },
  {
    type = "recipe",
    name = "nullius-factory-3",
    category = "huge-crafting",
    always_show_made_in = true,
    energy_required = 90,
    ingredients = {
      {"factory-2", 3},
      {"stone-wall", 150},
      {"gate", 15},
      {"nullius-grid-battery-1", 8},
      {"radar", 1}
    },
    result = "factory-3",
    enabled = false
  }
})

if mods["factorissimo-2-notnotmelon"] then
data:extend({
  {
    type = "recipe",
    name = "nullius-factory-circuit-connector",
    category = "small-crafting",
    always_show_made_in = true,
    energy_required = 2,
    ingredients = {
      {"green-wire", 3},
      {"arithmetic-combinator", 1}
    },
    result = "factory-circuit-connector",
    enabled = false
  }
})
else
data:extend({
  {
    type = "recipe",
    name = "nullius-factory-requester-chest",
    category = "medium-crafting",
    always_show_made_in = true,
    energy_required = 10,
    ingredients = {
      {"nullius-small-demand-chest-1", 4}
    },
    result = "factory-requester-chest",
    enabled = false
  },
  {
    type = "recipe",
    name = "nullius-factory-input-pipe",
    category = "medium-crafting",
    always_show_made_in = true,
    energy_required = 2,
    ingredients = {
      {"nullius-underground-pipe-2", 1},
      {"nullius-pipe-2", 4}
    },
    result = "factory-input-pipe",
    enabled = false
  },
  {
    type = "recipe",
    name = "nullius-factory-output-pipe",
    category = "medium-crafting",
    always_show_made_in = true,
    energy_required = 0.5,
    no_productivity = true,
    ingredients = {
      {"factory-input-pipe", 1}
    },
    result = "factory-output-pipe",
    enabled = false
  },
  {
    type = "recipe",
    name = "nullius-factory-circuit-input",
    category = "small-crafting",
    always_show_made_in = true,
    energy_required = 2,
    ingredients = {
      {"green-wire", 3},
      {"arithmetic-combinator", 1}
    },
    result = "factory-circuit-input",
    enabled = false
  },
  {
    type = "recipe",
    name = "nullius-factory-circuit-output",
    category = "small-crafting",
    always_show_made_in = true,
    no_productivity = true,
    energy_required = 0.5,
    ingredients = {
      {"factory-circuit-input", 1}
    },
    result = "factory-circuit-output",
    enabled = false
  }
})
end
end


if mods["miniloader"] then
data:extend({
  {
    type = "item-subgroup",
    name = "miniloader",
    group = "logistics",
    order = "cam"
  },
  {
    type = "technology",
    name = "nullius-miniloader-1",
    order = "nullius-ck",
    icons = data.raw.technology["miniloader"].icons,
    effects = { },
    unit = {
      count = 25,
      ingredients = {
        {"nullius-geology-pack", 1}, {"nullius-climatology-pack", 1},
        {"nullius-mechanical-pack", 1}
      },
      time = 6
    },
    prerequisites = {"nullius-storage-2"},
    ignore_tech_cost_multiplier = true
  },
  {
    type = "technology",
    name = "nullius-miniloader-2",
    order = "nullius-dg",
    icons = data.raw.technology["fast-miniloader"].icons,
    effects = { },
    unit = {
      count = 100,
      ingredients = {
        {"nullius-geology-pack", 1}, {"nullius-climatology-pack", 1},
        {"nullius-mechanical-pack", 1}, {"nullius-electrical-pack", 1}
      },
      time = 30
    },
    prerequisites = {"nullius-freight-logistics", "nullius-logistics-2"}
  },
  {
    type = "technology",
    name = "nullius-miniloader-3",
    order = "nullius-ek",
    icons = data.raw.technology["express-miniloader"].icons,
    effects = { },
    unit = {
      count = 1000,
      ingredients = {
        {"nullius-geology-pack", 1}, {"nullius-climatology-pack", 1},
        {"nullius-mechanical-pack", 1}, {"nullius-electrical-pack", 1},
        {"nullius-chemical-pack", 1}
      },
      time = 35
    },
    prerequisites = {"nullius-storage-3"}
  },
  {
    type = "technology",
    name = "nullius-miniloader-4",
    order = "nullius-fo",
    icons = data.raw.technology["ultimate-miniloader"].icons,
    effects = { },
    unit = {
      count = 3000,
      ingredients = {
        {"nullius-geology-pack", 1}, {"nullius-climatology-pack", 1},
        {"nullius-mechanical-pack", 1}, {"nullius-electrical-pack", 1},
        {"nullius-chemical-pack", 1}, {"nullius-physics-pack", 1}
      },
      time = 50
    },
    prerequisites = {"nullius-distribution-4"}
  }
})
if settings.startup["miniloader-enable-chute"].value then
data:extend({
  {
    type = "recipe",
    name = "nullius-miniloader-chute",
    enabled = false,
    always_show_made_in = true,
    category = "medium-crafting",
    energy_required = 2,
    ingredients = {
      {type="item", name="wooden-chest", amount=1},
      {type="item", name="underground-belt", amount=1}
    },
    result = "chute-miniloader"
  }
})
end
if settings.startup["miniloader-enable-standard"].value then
  table.insert(data.raw["technology"]["nullius-miniloader-1"].effects,
      {type = "unlock-recipe", recipe = "nullius-miniloader-1"})
  table.insert(data.raw["technology"]["nullius-miniloader-2"].effects,
      {type = "unlock-recipe", recipe = "nullius-miniloader-2"})
  table.insert(data.raw["technology"]["nullius-miniloader-3"].effects,
      {type = "unlock-recipe", recipe = "nullius-miniloader-3"})
  table.insert(data.raw["technology"]["nullius-miniloader-4"].effects,
      {type = "unlock-recipe", recipe = "nullius-miniloader-4"})
data:extend({
  {
    type = "recipe",
    name = "nullius-miniloader-1",
    enabled = false,
    always_show_made_in = true,
    category = "medium-crafting",
    energy_required = 3,
    ingredients = {
      {type="item", name="chute-miniloader", amount=1},
      {type="item", name="underground-belt", amount=1},
      {type="item", name="inserter", amount=4}
    },
    result = "miniloader"
  },
  {
    type = "recipe",
    name = "nullius-miniloader-2",
    enabled = false,
    always_show_made_in = true,
    category = "medium-crafting",
    energy_required = 4,
    ingredients = {
      {type="item", name="miniloader", amount=1},
      {type="item", name="iron-chest", amount=1},
      {type="item", name="fast-underground-belt", amount=2},
      {type="item", name="turbo-inserter", amount=3}
    },
    result = "fast-miniloader"
  },
  {
    type = "recipe",
    name = "nullius-miniloader-3",
    enabled = false,
    always_show_made_in = true,
    category = "medium-crafting",
    energy_required = 6,
    ingredients = {
      {type="item", name="fast-miniloader", amount=1},
      {type="item", name="steel-chest", amount=1},
      {type="item", name="express-underground-belt", amount=1},
      {type="item", name="stack-inserter", amount=2}
    },
    result = "express-miniloader"
  },
  {
    type = "recipe",
    name = "nullius-miniloader-4",
    enabled = false,
    always_show_made_in = true,
    category = "medium-crafting",
    energy_required = 8,
    ingredients = {
      {type="item", name="express-miniloader", amount=1},
      {type="item", name="logistic-chest-storage", amount=1},
      {type="item", name="ultimate-underground-belt", amount=1},
      {type="item", name="express-stack-inserter", amount=2}
    },
    result = "ultimate-miniloader"
  }
})
end
if settings.startup["miniloader-enable-filter"].value then
  table.insert(data.raw["technology"]["nullius-miniloader-2"].effects,
      {type = "unlock-recipe", recipe = "nullius-filter-miniloader-2"})
  table.insert(data.raw["technology"]["nullius-miniloader-3"].effects,
      {type = "unlock-recipe", recipe = "nullius-filter-miniloader-3"})
  table.insert(data.raw["technology"]["nullius-miniloader-4"].effects,
      {type = "unlock-recipe", recipe = "nullius-filter-miniloader-4"})
data:extend({
  {
    type = "recipe",
    name = "nullius-filter-miniloader-2",
    enabled = false,
    always_show_made_in = true,
    category = "medium-crafting",
    energy_required = 4,
    ingredients = {
      {type="item", name="miniloader", amount=1},
      {type="item", name="iron-chest", amount=1},
      {type="item", name="fast-underground-belt", amount=2},
      {type="item", name="turbo-filter-inserter", amount=3}
    },
    result = "fast-filter-miniloader"
  },
  {
    type = "recipe",
    name = "nullius-filter-miniloader-3",
    enabled = false,
    always_show_made_in = true,
    category = "medium-crafting",
    energy_required = 6,
    ingredients = {
      {type="item", name="fast-filter-miniloader", amount=1},
      {type="item", name="steel-chest", amount=1},
      {type="item", name="express-underground-belt", amount=1},
      {type="item", name="stack-filter-inserter", amount=2}
    },
    result = "express-filter-miniloader"
  },
  {
    type = "recipe",
    name = "nullius-filter-miniloader-4",
    enabled = false,
    always_show_made_in = true,
    category = "medium-crafting",
    energy_required = 8,
    ingredients = {
      {type="item", name="express-filter-miniloader", amount=1},
      {type="item", name="logistic-chest-storage", amount=1},
      {type="item", name="ultimate-underground-belt", amount=1},
      {type="item", name="express-stack-filter-inserter", amount=2}
    },
    result = "ultimate-filter-miniloader"
  }
})
end
end


if mods["aai-loaders"] then
data:extend({
  {
    type = "technology",
    name = "nullius-loader-1",
    order = "nullius-ce",
	localised_description = {"technology-description.nullius-miniloader"},
    effects = {{type = "unlock-recipe", recipe = "nullius-loader-1"}},
    unit = {
      count = 3,
      ingredients = {
        {"nullius-geology-pack", 1}, {"nullius-climatology-pack", 1},
        {"nullius-mechanical-pack", 2}
      },
      time = 12
    },
    prerequisites = {"nullius-logistics-1", "nullius-toolmaking-1"},
    ignore_tech_cost_multiplier = true
  },
  {
    type = "technology",
    name = "nullius-loader-2",
    order = "nullius-ck",
	localised_description = {"technology-description.nullius-miniloader"},
    effects = {{type = "unlock-recipe", recipe = "nullius-loader-2"}},
    unit = {
      count = 25,
      ingredients = {
        {"nullius-geology-pack", 1}, {"nullius-climatology-pack", 1},
        {"nullius-mechanical-pack", 1}
      },
      time = 6
    },
    prerequisites = {"nullius-storage-2", "nullius-lubrication"},
    ignore_tech_cost_multiplier = true
  },
  {
    type = "technology",
    name = "nullius-loader-3",
    order = "nullius-dg",
	localised_description = {"technology-description.nullius-miniloader"},
	effects = {{type = "unlock-recipe", recipe = "nullius-loader-3"}},
    unit = {
      count = 50,
      ingredients = {
        {"nullius-geology-pack", 1}, {"nullius-climatology-pack", 1},
        {"nullius-mechanical-pack", 1}, {"nullius-electrical-pack", 1}
      },
      time = 30
    },
    prerequisites = {"nullius-freight-logistics", "nullius-logistics-2"}
  },
  {
    type = "technology",
    name = "nullius-loader-4",
    order = "nullius-ek",
	localised_description = {"technology-description.nullius-miniloader"},
	effects = {{type = "unlock-recipe", recipe = "nullius-loader-4"}},
    unit = {
      count = 1000,
      ingredients = {
        {"nullius-geology-pack", 1}, {"nullius-climatology-pack", 1},
        {"nullius-mechanical-pack", 1}, {"nullius-electrical-pack", 1},
        {"nullius-chemical-pack", 1}
      },
      time = 35
    },
    prerequisites = {"nullius-storage-3"}
  },
  {
    type = "technology",
    name = "nullius-loader-5",
    order = "nullius-fo",
	localised_description = {"technology-description.nullius-miniloader"},
	effects = {{type = "unlock-recipe", recipe = "nullius-loader-5"}},
    unit = {
      count = 3000,
      ingredients = {
        {"nullius-geology-pack", 1}, {"nullius-climatology-pack", 1},
        {"nullius-mechanical-pack", 1}, {"nullius-electrical-pack", 1},
        {"nullius-chemical-pack", 1}, {"nullius-physics-pack", 1}
      },
      time = 50
    },
    prerequisites = {"nullius-distribution-4"}
  }
})

data:extend({
  {
    type = "recipe",
    name = "nullius-loader-1",
    enabled = false,
    always_show_made_in = true,
    category = "medium-crafting",
    energy_required = 3,
    ingredients = {
      {type="item", name="wooden-chest", amount=1},
      {type="item", name="underground-belt", amount=1}
    },
    result = "aai-basic-loader"
  },
  {
    type = "recipe",
    name = "nullius-loader-2",
    enabled = false,
    always_show_made_in = true,
    category = "medium-crafting",
    energy_required = 5,
    ingredients = {
      {type="item", name="aai-basic-loader", amount=1},
      {type="item", name="underground-belt", amount=1},
      {type="item", name="inserter", amount=4},
	  {type="fluid", name="nullius-lubricant", amount=30},
    },
    result = "aai-loader"
  },
  {
    type = "recipe",
    name = "nullius-loader-3",
    enabled = false,
    always_show_made_in = true,
    category = "medium-crafting",
    energy_required = 8,
    ingredients = {
      {type="item", name="aai-loader", amount=2},
      {type="item", name="iron-chest", amount=1},
      {type="item", name="fast-underground-belt", amount=2},
      {type="item", name="turbo-inserter", amount=3}
    },
    result = "aai-fast-loader"
  },
  {
    type = "recipe",
    name = "nullius-loader-4",
    enabled = false,
    always_show_made_in = true,
    category = "medium-crafting",
    energy_required = 12,
    ingredients = {
      {type="item", name="aai-fast-loader", amount=1},
      {type="item", name="steel-chest", amount=1},
      {type="item", name="express-underground-belt", amount=1},
      {type="item", name="stack-inserter", amount=2}
    },
    result = "aai-express-loader"
  },
  {
    type = "recipe",
    name = "nullius-loader-5",
    enabled = false,
    always_show_made_in = true,
    category = "medium-crafting",
    energy_required = 20,
    ingredients = {
      {type="item", name="aai-express-loader", amount=2},
      {type="item", name="logistic-chest-storage", amount=1},
      {type="item", name="ultimate-underground-belt", amount=1},
      {type="item", name="express-stack-inserter", amount=2}
    },
    result = "aai-ultimate-loader"
  }
})
end


if mods["train-pubsub"] then
data:extend({
  {
    type = "recipe",
    name = "nullius-train-publisher",
    enabled = false,
    always_show_made_in = true,
    category = "small-crafting",
    energy_required = 3,
    ingredients = {
        {"small-lamp", 1},
        {"train-config", 2}
    },
    result = "train-publisher"
  },
  {
    type = "recipe",
    name = "nullius-subscriber-train-stop",
    enabled = false,
    always_show_made_in = true,
    category = "large-crafting",
    energy_required = 4,
    ingredients = {
      {"train-stop", 1},
      {"train-publisher", 1},
      {"nullius-small-supply-chest-1", 1}
    },
    result = "subscriber-train-stop"
  },
  {
    type = "recipe",
    name = "nullius-publisher-train-stop",
    enabled = false,
    always_show_made_in = true,
    category = "large-crafting",
    energy_required = 4,
    ingredients = {
      {"train-stop", 1},
      {"train-publisher", 1},
      {"nullius-small-demand-chest-1", 1}
    },
    result = "publisher-train-stop"
  },
  {
    type = "recipe",
    name = "nullius-train-config",
    enabled = false,
    always_show_made_in = true,
    category = "tiny-crafting",
    energy_required = 2,
    ingredients = {
        {"constant-combinator", 1},
        {"arithmetic-combinator", 1}
    },
    result = "train-config"
  }
})
end


if mods["Teleporters"] then
data:extend({
  {
    type = "recipe",
    name = "nullius-teleporter",
    enabled = false,
    category = "nanotechnology",
    energy_required = 60,
    ingredients = {
      {"nullius-productivity-module-2", 4},
      {"nullius-reactor", 1},
      {"nullius-box-gate", 3},
      {"nullius-sensor-node-3", 2},
      {"nullius-box-underground-pipe-4", 5},
      {"nullius-grid-battery-2", 6}
    },
    result = "teleporter"
  }
})
end


if mods["jetpack"] then
data:extend({
  {
    type = "technology",
    name = "nullius-jetpack-1",
    localised_name = {"technology-name.jetpack-1"},
    localised_description = {"equipment-description.nullius-jetpack-1"},
    order = "nullius-di",
    icon = "__jetpack__/graphics/technology/jetpack-1.png",
    icon_size = 256,
    effects = {
      {
        type = "unlock-recipe",
        recipe = "nullius-jetpack-1"
      }
    },
    unit = {
      count = 200,
      ingredients = {
        {"nullius-geology-pack", 1}, {"nullius-climatology-pack", 1},
        {"nullius-mechanical-pack", 1}, {"nullius-electrical-pack", 1}
      },
      time = 30
    },
    prerequisites = {"nullius-locomotion-1", "nullius-wind-power-2"}
  },
  {
    type = "technology",
    name = "nullius-jetpack-2",
    localised_name = {"technology-name.jetpack-2"},
    localised_description = {"equipment-description.nullius-jetpack-2"},
    order = "nullius-eo",
    icon = "__jetpack__/graphics/technology/jetpack-2.png",
    icon_size = 256,
    effects = {
      {
        type = "unlock-recipe",
        recipe = "nullius-jetpack-2"
      }
    },
    unit = {
      count = 1000,
      ingredients = {
        {"nullius-geology-pack", 1}, {"nullius-climatology-pack", 1},
        {"nullius-mechanical-pack", 1}, {"nullius-electrical-pack", 1},
        {"nullius-chemical-pack", 1}
      },
      time = 35
    },
    prerequisites = {"nullius-cybernetics-4"}
  },
  {
    type = "technology",
    name = "nullius-jetpack-3",
    localised_name = {"technology-name.jetpack-3"},
    localised_description = {"equipment-description.nullius-jetpack-3"},
    order = "nullius-ft",
    icon = "__jetpack__/graphics/technology/jetpack-3.png",
    icon_size = 256,
    effects = {
      {
        type = "unlock-recipe",
        recipe = "nullius-jetpack-3"
      }
    },
    unit = {
      count = 4000,
      ingredients = {
        {"nullius-geology-pack", 1}, {"nullius-climatology-pack", 1},
        {"nullius-mechanical-pack", 1}, {"nullius-electrical-pack", 1},
        {"nullius-chemical-pack", 1}, {"nullius-physics-pack", 1}
      },
      time = 55
    },
    prerequisites = {"nullius-checkpoint-rocket-fuel"}
  },
  {
    type = "technology",
    name = "nullius-jetpack-4",
    localised_name = {"technology-name.jetpack-4"},
    localised_description = {"equipment-description.nullius-jetpack-4"},
    order = "nullius-di",
    icon = "__jetpack__/graphics/technology/jetpack-4.png",
    icon_size = 256,
    effects = {
      {
        type = "unlock-recipe",
        recipe = "nullius-jetpack-4"
      }
    },
    unit = {
      count = 200000,
      ingredients = {
        {"nullius-geology-pack", 1}, {"nullius-climatology-pack", 1},
        {"nullius-mechanical-pack", 1}, {"nullius-electrical-pack", 1},
        {"nullius-chemical-pack", 1}, {"nullius-physics-pack", 1},
        {"nullius-astronomy-pack", 1}
      },
      time = 60
    },
    prerequisites = {"nullius-rocket-science-3"}
  },

  {
    type = "recipe",
    name = "nullius-jetpack-1",
    enabled = false,
    always_show_made_in = true,
    category = "medium-crafting",
    energy_required = 10,
    ingredients = {
      {"nullius-robot-frame-1", 1},
      {"nullius-haste-module-1", 1},
      {"nullius-combustion-chamber-1", 1},
      {"nullius-turbine-open-1", 2},
      {"nullius-aluminum-plate", 6}
    },
    result = "jetpack-1"
  },
  {
    type = "recipe",
    name = "nullius-jetpack-2",
    enabled = false,
    always_show_made_in = true,
    category = "medium-crafting",
    energy_required = 15,
    ingredients = {
      {"jetpack-1", 1},
      {"nullius-robot-frame-2", 1},
      {"nullius-haste-module-2", 1},
      {"nullius-combustion-chamber-2", 2},
      {"nullius-turbine-open-2", 2},
      {"nullius-ceramic-powder", 8}
    },
    result = "jetpack-2"
  },
  {
    type = "recipe",
    name = "nullius-jetpack-3",
    enabled = false,
    always_show_made_in = true,
    category = "medium-crafting",
    energy_required = 20,
    ingredients = {
      {"jetpack-2", 1},
      {"nullius-robot-frame-3", 1},
      {"nullius-haste-module-3", 2},
      {"nullius-combustion-chamber-3", 1},
      {"nullius-turbine-open-3", 2},
      {"nullius-titanium-plate", 10}
    },
    result = "jetpack-3"
  },
  {
    type = "recipe",
    name = "nullius-jetpack-4",
    enabled = false,
    always_show_made_in = true,
    category = "medium-crafting",
    energy_required = 30,
    ingredients = {
      {"jetpack-3", 2},
      {"nullius-robot-frame-4", 1},
      {"nullius-haste-module-4", 2},
      {"nullius-missile-launcher", 4}
    },
    result = "jetpack-4"
  }
})
end


if mods["underground-pipe-pack"] then
data:extend({
  {
    type = "recipe",
    name = "nullius-surface-two-way-junction-1",
    enabled = false,
    always_show_made_in = true,
    category = "medium-crafting",
    energy_required = 3,
    ingredients = {
      {"nullius-underground-pipe-2", 2},
      {"nullius-steel-plate", 1},
      {"nullius-rubber", 1}
    },
    result = "one-to-one-forward-t2-pipe"
  },
  {
    type = "recipe",
    name = "nullius-surface-three-way-junction-1",
    enabled = false,
    always_show_made_in = true,
    category = "medium-crafting",
    energy_required = 2,
    ingredients = {
      {"one-to-one-forward-t2-pipe", 1},
      {"nullius-underground-pipe-2", 1}
    },
    result = "one-to-two-perpendicular-t2-pipe"
  },
  {
    type = "recipe",
    name = "nullius-surface-four-way-junction-1",
    enabled = false,
    always_show_made_in = true,
    category = "medium-crafting",
    energy_required = 2,
    ingredients = {
      {"one-to-two-perpendicular-t2-pipe", 1},
      {"nullius-underground-pipe-2", 1}
    },
    result = "one-to-three-forward-t2-pipe"
  },
  {
    type = "recipe",
    name = "nullius-underground-straight-junction-1",
    enabled = false,
    always_show_made_in = true,
    category = "medium-crafting",
    energy_required = 4,
    ingredients = {
      {"one-to-one-forward-t2-pipe", 1},
      {"nullius-underground-pipe-2", 1},
      {"nullius-glass", 1}
    },
    result = "underground-i-t2-pipe"
  },
  {
    type = "recipe",
    name = "nullius-underground-elbow-junction-1",
    enabled = false,
    always_show_made_in = true,
    category = "medium-crafting",
    energy_required = 3,
    ingredients = {
      {"underground-i-t2-pipe", 1},
      {"nullius-pipe-2", 2}
    },
    result = "underground-L-t2-pipe"
  },
  {
    type = "recipe",
    name = "nullius-underground-three-way-junction-1",
    enabled = false,
    always_show_made_in = true,
    category = "medium-crafting",
    energy_required = 3,
    ingredients = {
      {"underground-L-t2-pipe", 1},
      {"nullius-underground-pipe-2", 1}
    },
    result = "underground-t-t2-pipe"
  },
  {
    type = "recipe",
    name = "nullius-adjustable-relief-valve",
    enabled = false,
    always_show_made_in = true,
    category = "tiny-crafting",
    energy_required = 3,
    ingredients = {
      {"nullius-relief-valve", 2},
      {"red-wire", 1}
    },
    result = "80-overflow-valve"
  },

  {
    type = "recipe",
    name = "nullius-surface-two-way-junction-2",
    enabled = false,
    always_show_made_in = true,
    category = "medium-crafting",
    energy_required = 3,
    ingredients = {
      {"one-to-one-forward-t2-pipe", 1},
      {"nullius-bearing", 1},
      {"nullius-underground-pipe-3", 1}
    },
    result = "one-to-one-forward-t3-pipe"
  },
  {
    type = "recipe",
    name = "nullius-surface-three-way-junction-2",
    enabled = false,
    always_show_made_in = true,
    category = "medium-crafting",
    energy_required = 3,
    ingredients = {
      {"one-to-two-perpendicular-t2-pipe", 1},
      {"nullius-bearing", 1},
      {"nullius-underground-pipe-3", 2}
    },
    result = "one-to-two-perpendicular-t3-pipe"
  },
  {
    type = "recipe",
    name = "nullius-surface-four-way-junction-2",
    enabled = false,
    always_show_made_in = true,
    category = "medium-crafting",
    energy_required = 3,
    ingredients = {
      {"one-to-three-forward-t2-pipe", 1},
      {"nullius-bearing", 1},
      {"nullius-underground-pipe-3", 3}
    },
    result = "one-to-three-forward-t3-pipe"
  },
  {
    type = "recipe",
    name = "nullius-underground-straight-junction-2",
    enabled = false,
    always_show_made_in = true,
    category = "medium-crafting",
    energy_required = 4,
    ingredients = {
      {"underground-i-t2-pipe", 1},
      {"nullius-underground-pipe-3", 2}
    },
    result = "underground-i-t3-pipe"
  },
  {
    type = "recipe",
    name = "nullius-underground-elbow-junction-2",
    enabled = false,
    always_show_made_in = true,
    category = "medium-crafting",
    energy_required = 5,
    ingredients = {
      {"underground-L-t2-pipe", 1},
      {"nullius-underground-pipe-3", 3}
    },
    result = "underground-L-t3-pipe"
  },
  {
    type = "recipe",
    name = "nullius-underground-three-way-junction-2",
    enabled = false,
    always_show_made_in = true,
    category = "medium-crafting",
    energy_required = 6,
    ingredients = {
      {"underground-t-t2-pipe", 1},
      {"nullius-underground-pipe-3", 4}
    },
    result = "underground-t-t3-pipe"
  },
  {
    type = "recipe",
    name = "nullius-adjustable-top-up-valve",
    enabled = false,
    always_show_made_in = true,
    category = "tiny-crafting",
    energy_required = 3,
    ingredients = {
      {"nullius-top-up-valve", 2},
      {"red-wire", 1}
    },
    result = "80-top-up-valve"
  },

  {
    type = "recipe",
    name = "nullius-surface-two-way-junction-3",
    enabled = false,
    always_show_made_in = true,
    category = "medium-crafting",
    energy_required = 4,
    ingredients = {
      {"one-to-one-forward-t3-pipe", 1},
      {"nullius-underground-pipe-4", 1}
    },
    result = "one-to-one-forward-pipe"
  },
  {
    type = "recipe",
    name = "nullius-surface-three-way-junction-3",
    enabled = false,
    always_show_made_in = true,
    category = "medium-crafting",
    energy_required = 4,
    ingredients = {
      {"one-to-two-perpendicular-t3-pipe", 1},
      {"nullius-underground-pipe-4", 2}
    },
    result = "one-to-two-perpendicular-pipe"
  },
  {
    type = "recipe",
    name = "nullius-surface-four-way-junction-3",
    enabled = false,
    always_show_made_in = true,
    category = "medium-crafting",
    energy_required = 4,
    ingredients = {
      {"one-to-three-forward-t3-pipe", 1},
      {"nullius-underground-pipe-4", 3}
    },
    result = "one-to-three-forward-pipe"
  },
  {
    type = "recipe",
    name = "nullius-surface-five-way-junction-3",
    enabled = false,
    always_show_made_in = true,
    category = "medium-crafting",
    energy_required = 3,
    ingredients = {
      {"one-to-two-perpendicular-pipe", 1},
      {"one-to-one-forward-pipe", 1}
    },
    result = "one-to-four-pipe"
  },
  {
    type = "recipe",
    name = "nullius-underground-straight-junction-3",
    enabled = false,
    always_show_made_in = true,
    category = "medium-crafting",
    energy_required = 6,
    ingredients = {
      {"underground-i-t3-pipe", 1},
      {"nullius-hard-glass", 1},
      {"nullius-underground-pipe-4", 2}
    },
    result = "underground-i-pipe"
  },
  {
    type = "recipe",
    name = "nullius-underground-elbow-junction-3",
    enabled = false,
    always_show_made_in = true,
    category = "medium-crafting",
    energy_required = 8,
    ingredients = {
      {"underground-L-t3-pipe", 1},
      {"nullius-hard-glass", 1},
      {"nullius-underground-pipe-4", 2}
    },
    result = "underground-L-pipe"
  },
  {
    type = "recipe",
    name = "nullius-underground-three-way-junction-3",
    enabled = false,
    always_show_made_in = true,
    category = "medium-crafting",
    energy_required = 10,
    ingredients = {
      {"underground-t-t3-pipe", 1},
      {"nullius-hard-glass", 1},
      {"nullius-underground-pipe-4", 3}
    },
    result = "underground-t-pipe"
  },
  {
    type = "recipe",
    name = "nullius-underground-four-way-junction-3",
    enabled = false,
    always_show_made_in = true,
    category = "medium-crafting",
    energy_required = 8,
    ingredients = {
      {"underground-L-pipe", 2},
      {"nullius-underground-pipe-4", 1}
    },
    result = "underground-cross-pipe"
  },
  {
    type = "recipe",
    name = "nullius-underground-pump",
    enabled = false,
    always_show_made_in = true,
    category = "small-crafting",
    energy_required = 12,
    ingredients = {
      {"nullius-small-pump-2", 3},
      {"underground-i-pipe", 2}
    },
    result = "underground-mini-pump"
  }
})
end


if mods["Warehousing"] then
data:extend({
  {
    type = "technology",
    name = "nullius-warehousing-1",
    localised_name = { "", {"technology-name.warehouse-research"}, " ", 1 },
    localised_description = { "technology-description.nullius-storage" },
    order = "nullius-cl",
    icon = "__Warehousing__/graphics/research/warehouse-research.png",
    icon_size = 256,
    effects = {
      {
        type = "unlock-recipe",
        recipe = "nullius-storehouse"
      }
    },
    unit = {
      count = 10,
      ingredients = {{"nullius-geology-pack", 1}, {"nullius-climatology-pack", 1},
        {"nullius-mechanical-pack", 1}},
      time = 10
    },
    prerequisites = {"nullius-aluminum-working-1", "nullius-storage-2"},
    ignore_tech_cost_multiplier = true
  },
  {
    type = "technology",
    name = "nullius-warehousing-2",
    localised_name = { "", {"technology-name.warehouse-research"}, " ", 2 },
    localised_description = { "technology-description.nullius-storage" },
    order = "nullius-di",
    icon = "__Warehousing__/graphics/research/warehouse-research.png",
    icon_size = 256,
    effects = {
      {
        type = "unlock-recipe",
        recipe = "nullius-warehouse"
      }
    },
    unit = {
      count = 80,
      ingredients = {
        {"nullius-geology-pack", 1}, {"nullius-climatology-pack", 1},
        {"nullius-mechanical-pack", 1}, {"nullius-electrical-pack", 1}
      },
      time = 30
    },
    prerequisites = {"nullius-mass-production-3"}
  },
  {
    type = "technology",
    name = "nullius-warehousing-3",
    localised_name = { "", {"technology-name.warehouse-research"}, " ", 3 },
    localised_description = { "technology-description.nullius-storage" },
    order = "nullius-dk",
    icon = "__Warehousing__/graphics/research/warehouse-logistics-research-1.png",
    icon_size = 256,
    effects = {
      {
        type = "unlock-recipe",
        recipe = "nullius-warehouse-passive-provider"
      },
      {
        type = "unlock-recipe",
        recipe = "nullius-warehouse-storage"
      },
      {
        type = "unlock-recipe",
        recipe = "nullius-warehouse-requester"
      },
      {
        type = "unlock-recipe",
        recipe = "nullius-storehouse-passive-provider"
      },
      {
        type = "unlock-recipe",
        recipe = "nullius-storehouse-storage"
      },
      {
        type = "unlock-recipe",
        recipe = "nullius-storehouse-requester"
      }
    },
    unit = {
      count = 180,
      ingredients = {
        {"nullius-geology-pack", 1}, {"nullius-climatology-pack", 1},
        {"nullius-mechanical-pack", 1}, {"nullius-electrical-pack", 1}
      },
      time = 30
    },
    prerequisites = {"nullius-distribution-2"}
  },
  {
    type = "technology",
    name = "nullius-warehousing-4",
    localised_name = { "", {"technology-name.warehouse-research"}, " ", 4 },
    localised_description = { "technology-description.nullius-storage" },
    order = "nullius-eo",
    icon = "__Warehousing__/graphics/research/warehouse-logistics-research-2.png",
    icon_size = 256,
    effects = {
      {
        type = "unlock-recipe",
        recipe = "nullius-warehouse-buffer"
      },
      {
        type = "unlock-recipe",
        recipe = "nullius-warehouse-active-provider"
      },
      {
        type = "unlock-recipe",
        recipe = "nullius-storehouse-buffer"
      },
      {
        type = "unlock-recipe",
        recipe = "nullius-storehouse-active-provider"
      }
    },
    unit = {
      count = 400,
      ingredients = {
        {"nullius-geology-pack", 1}, {"nullius-climatology-pack", 1},
        {"nullius-mechanical-pack", 1}, {"nullius-electrical-pack", 1},
        {"nullius-chemical-pack", 1}
      },
      time = 35
    },
    prerequisites = {"nullius-distribution-3"}
  },

  {
    type = "recipe",
    name = "nullius-storehouse",
    enabled = false,
    always_show_made_in = true,
    category = "large-crafting",
    energy_required = 6,
    ingredients = {
      {"nullius-large-chest-1", 3},
      {"nullius-steel-beam", 6},
      {"nullius-glass", 4}
    },
    result = "storehouse-basic"
  },
  {
    type = "recipe",
    name = "nullius-warehouse",
    enabled = false,
    always_show_made_in = true,
    category = "huge-crafting",
    energy_required = 10,
    ingredients = {
      {"storehouse-basic", 4},
      {"stone-brick", 40},
      {"nullius-mortar", 10},
      {"concrete", 20}
    },
    result = "warehouse-basic"
  },
  {
    type = "recipe",
    name = "nullius-storehouse-storage",
    enabled = false,
    always_show_made_in = true,
    category = "large-crafting",
    energy_required = 2,
    ingredients = {
      {"storehouse-basic", 1},
      {"nullius-large-storage-chest-1", 1}
    },
    result = "storehouse-storage"
  },
  {
    type = "recipe",
    name = "nullius-warehouse-storage",
    enabled = false,
    always_show_made_in = true,
    category = "huge-crafting",
    energy_required = 5,
    ingredients = {
      {"warehouse-basic", 1},
      {"nullius-large-storage-chest-1", 2}
    },
    result = "warehouse-storage"
  },
  {
    type = "recipe",
    name = "nullius-storehouse-passive-provider",
    enabled = false,
    always_show_made_in = true,
    category = "large-crafting",
    energy_required = 2,
    ingredients = {
      {"storehouse-basic", 1},
      {"nullius-large-supply-chest-1", 1}
    },
    result = "storehouse-passive-provider"
  },
  {
    type = "recipe",
    name = "nullius-warehouse-passive-provider",
    enabled = false,
    always_show_made_in = true,
    category = "huge-crafting",
    energy_required = 5,
    ingredients = {
      {"warehouse-basic", 1},
      {"nullius-large-supply-chest-1", 2}
    },
    result = "warehouse-passive-provider"
  },
  {
    type = "recipe",
    name = "nullius-storehouse-requester",
    enabled = false,
    always_show_made_in = true,
    category = "large-crafting",
    energy_required = 2,
    ingredients = {
      {"storehouse-basic", 1},
      {"nullius-large-demand-chest-1", 1}
    },
    result = "storehouse-requester"
  },
  {
    type = "recipe",
    name = "nullius-warehouse-requester",
    enabled = false,
    always_show_made_in = true,
    category = "huge-crafting",
    energy_required = 5,
    ingredients = {
      {"warehouse-basic", 1},
      {"nullius-large-demand-chest-1", 2}
    },
    result = "warehouse-requester"
  },
  {
    type = "recipe",
    name = "nullius-storehouse-buffer",
    enabled = false,
    always_show_made_in = true,
    category = "large-crafting",
    energy_required = 2,
    ingredients = {
      {"storehouse-basic", 1},
      {"nullius-large-buffer-chest-1", 1}
    },
    result = "storehouse-buffer"
  },
  {
    type = "recipe",
    name = "nullius-warehouse-buffer",
    enabled = false,
    always_show_made_in = true,
    category = "huge-crafting",
    energy_required = 5,
    ingredients = {
      {"warehouse-basic", 1},
      {"nullius-large-buffer-chest-1", 2}
    },
    result = "warehouse-buffer"
  },
  {
    type = "recipe",
    name = "nullius-storehouse-active-provider",
    enabled = false,
    always_show_made_in = true,
    category = "large-crafting",
    energy_required = 2,
    ingredients = {
      {"storehouse-basic", 1},
      {"nullius-large-dispatch-chest-1", 1}
    },
    result = "storehouse-active-provider"
  },
  {
    type = "recipe",
    name = "nullius-warehouse-active-provider",
    enabled = false,
    always_show_made_in = true,
    category = "huge-crafting",
    energy_required = 5,
    ingredients = {
      {"warehouse-basic", 1},
      {"nullius-large-dispatch-chest-1", 2}
    },
    result = "warehouse-active-provider"
  }
})
end


if mods["textplates"] then
data:extend({
  {
    type = "technology",
    name = "nullius-typesetting-1",
    order = "nullius-bi",
    icon = "__textplates__/graphics/entity/iron/1.png",
    icon_size = 128,
    effects = {
      {
        type = "unlock-recipe",
        recipe = "textplate-small-iron"
      },
      {
        type = "unlock-recipe",
        recipe = "textplate-large-iron"
      },
      {
        type = "unlock-recipe",
        recipe = "textplate-small-stone"
      },
      {
        type = "unlock-recipe",
        recipe = "textplate-large-stone"
      }
    },
    unit = {
      count = 2,
      ingredients = {{"nullius-geology-pack", 3}, {"nullius-climatology-pack", 1}},
      time = 3
    },
    prerequisites = {"nullius-land-fill-1"},
    ignore_tech_cost_multiplier = true
  },
  {
    type = "technology",
    name = "nullius-typesetting-2",
    order = "nullius-cl",
    icon = "__textplates__/graphics/entity/gold/2.png",
    icon_size = 128,
    effects = {
      {
        type = "unlock-recipe",
        recipe = "textplate-small-gold"
      },
      {
        type = "unlock-recipe",
        recipe = "textplate-large-gold"
      },
      {
        type = "unlock-recipe",
        recipe = "textplate-small-steel"
      },
      {
        type = "unlock-recipe",
        recipe = "textplate-large-steel"
      },
      {
        type = "unlock-recipe",
        recipe = "textplate-small-plastic"
      },
      {
        type = "unlock-recipe",
        recipe = "textplate-large-plastic"
      }
    },
    unit = {
      count = 8,
      ingredients = {{"nullius-geology-pack", 1}, {"nullius-climatology-pack", 1},
        {"nullius-mechanical-pack", 1}},
      time = 6
    },
    prerequisites = {"nullius-checkpoint-aluminum-ingot"},
    ignore_tech_cost_multiplier = true
  },
  {
    type = "technology",
    name = "nullius-typesetting-3",
    order = "nullius-dl",
    icon = "__textplates__/graphics/entity/glass/3.png",
    icon_size = 128,
    effects = {
      {
        type = "unlock-recipe",
        recipe = "textplate-small-glass"
      },
      {
        type = "unlock-recipe",
        recipe = "textplate-large-glass"
      },
      {
        type = "unlock-recipe",
        recipe = "textplate-small-concrete"
      },
      {
        type = "unlock-recipe",
        recipe = "textplate-large-concrete"
      }
    },
    unit = {
      count = 80,
      ingredients = {
        {"nullius-geology-pack", 1}, {"nullius-climatology-pack", 1},
        {"nullius-mechanical-pack", 1}, {"nullius-electrical-pack", 1}
      },
      time = 30
    },
    prerequisites = {"nullius-glassmaking-1", "nullius-checkpoint-concrete"}
  },
  {
    type = "technology",
    name = "nullius-typesetting-4",
    order = "nullius-ge",
    icon = "__textplates__/graphics/entity/uranium/4.png",
    icon_size = 128,
    effects = {
      {
        type = "unlock-recipe",
        recipe = "textplate-small-uranium"
      },
      {
        type = "unlock-recipe",
        recipe = "textplate-large-uranium"
      },
      {
        type = "unlock-recipe",
        recipe = "textplate-small-copper"
      },
      {
        type = "unlock-recipe",
        recipe = "textplate-large-copper"
      }
    },
    unit = {
      count = 5000,
      ingredients = {
        {"nullius-geology-pack", 1}, {"nullius-climatology-pack", 1},
        {"nullius-mechanical-pack", 1}, {"nullius-electrical-pack", 1},
        {"nullius-chemical-pack", 1}, {"nullius-physics-pack", 1},
        {"nullius-astronomy-pack", 1}
      },
      time = 60
    },
    prerequisites = {"nullius-copper-production", "nullius-uranium-processing"}
  }
})
end


if mods["botReplacer"] then
data:extend({
  {
    type = "recipe",
    name = "nullius-bot-upgrade-chest",
    enabled = false,
    always_show_made_in = true,
    category = "medium-crafting",
    energy_required = 5,
    ingredients = {
      {"nullius-small-demand-chest-1", 1},
      {"nullius-relay-2", 1}
    },
    result = "logistic-chest-botUpgrader"
  }
})
end


if mods["FuelTrainStop"] then
data:extend({
  {
    type = "recipe",
    name = "nullius-fuel-train-stop",
    enabled = false,
	always_show_made_in = true,
	no_productivity = true,
    category = "medium-crafting",
    energy_required = 2,
    ingredients = {
      {"train-stop", 1},
      {"rail-chain-signal", 1}
    },
    result = "fuel-train-stop"
  }
})
end


if mods["Companion_Drones"] then
data:extend({
  {
    type = "technology",
    name = "nullius-companionship",
    order = "nullius-gl",
    icon = "__Companion_Drones__/drone-icon.png",
    icon_size = 200,
    effects = {
      {
        type = "unlock-recipe",
        recipe = "nullius-companion"
      },
      {
        type = "unlock-recipe",
        recipe = "nullius-companion-reactor-equipment"
      },
      {
        type = "unlock-recipe",
        recipe = "nullius-companion-shield-equipment"
      },
      {
        type = "unlock-recipe",
        recipe = "nullius-companion-roboport-equipment"
      },
      {
        type = "unlock-recipe",
        recipe = "nullius-companion-defense-equipment"
      }
    },
    unit = {
      count = 25000,
      ingredients = {
        {"nullius-climatology-pack", 1},
        {"nullius-mechanical-pack", 1}, {"nullius-electrical-pack", 1},
        {"nullius-physics-pack", 1}, {"nullius-astronomy-pack", 1}
      },
      time = 60
    },
    prerequisites = {"nullius-artificial-intelligence-2", "nullius-asteroid-mining-2"}
  },
  {
    type = "recipe",
    name = "nullius-companion",
    enabled = false,
	always_show_made_in = true,
    category = "medium-crafting",
    energy_required = 90,
    ingredients = {
      {"nullius-android-2", 1},
      {"nullius-asteroid-miner-2", 1}
    },
    result = "companion"
  },
  {
    type = "recipe",
    name = "nullius-companion-reactor-equipment",
    enabled = false,
	always_show_made_in = true,
    category = "medium-crafting",
    energy_required = 30,
    ingredients = {
      {"nullius-reactor", 1},
      {"nullius-battery-2", 6},
	  {"nullius-antimatter", 12}
    },
    result = "companion-reactor-equipment"
  },
  {
    type = "recipe",
    name = "nullius-companion-shield-equipment",
    enabled = false,
	always_show_made_in = true,
    category = "medium-crafting",
    energy_required = 5,
    ingredients = {
      {"nullius-shield", 1},
      {"nullius-efficiency-module-3", 1}
    },
    result = "companion-shield-equipment"
  },
  {
    type = "recipe",
    name = "nullius-companion-roboport-equipment",
    enabled = false,
	always_show_made_in = true,
    category = "medium-crafting",
    energy_required = 40,
    ingredients = {
      {"nullius-drone-carrier-2", 1},
      {"nullius-hangar-3", 1},
	  {"nullius-construction-bot-4", 6}
    },
    result = "companion-roboport-equipment"
  },
  {
    type = "recipe",
    name = "nullius-companion-defense-equipment",
    enabled = false,
	always_show_made_in = true,
    category = "medium-crafting",
    energy_required = 10,
    ingredients = {
      {"nullius-turret", 5},
      {"nullius-demolition-drone", 1}
    },
    result = "companion-defense-equipment"
  },
  {
    type = "recipe",
    name = "nullius-companion-fuel",
    enabled = false,
	always_show_made_in = true,
    category = "medium-crafting",
    energy_required = 2,
    ingredients = {
      {"nullius-hydrogen-canister", 3},
      {"processed-fuel", 1}
    },
    results = {
      {type="item", name="rocket-booster", amount=3},
      {type="item", name="nullius-canister", amount=3}
    },
    main_product = "rocket-booster"
  }
})
end


if mods["railway-motor-car"] then
data:extend({
  {
    type = "recipe",
    name = "nullius-railway-motorcar-1",
    enabled = false,
	always_show_made_in = true,
    category = "large-crafting",
    energy_required = 15,
    ingredients = {
      {"nullius-locomotive-1", 1},
      {"nullius-large-chest-1", 1},
	  {"nullius-small-assembler-1", 1}
    },
    result = "railway-motor-car-base"
  },
  {
    type = "recipe",
    name = "nullius-railway-motorcar-2",
    enabled = false,
	always_show_made_in = true,
    category = "large-crafting",
    energy_required = 25,
    ingredients = {
      {"railway-motor-car-base", 1},
      {"nullius-solar-locomotive", 1},
      {"nullius-small-assembler-3", 1}
    },
    result = "railway-motor-car-nuclear"
  }
})
end


if mods["Inventory Sensor"] then
data:extend({
  {
    type = "recipe",
    name = "nullius-item-sensor",
    enabled = false,
	always_show_made_in = true,
    category = "small-crafting",
    energy_required = 5,
    ingredients = {
      {"nullius-sensor-1", 1},
      {"green-wire", 3}
    },
    result = "item-sensor"
  }
})
end


if (mods["crafting_combinator"] or mods["crafting_combinator_xeraph"]) then
  data:extend({
    {
      type = "recipe",
      name = "nullius-crafting-combinator",
      enabled = false,
      always_show_made_in = true,
      category = "small-crafting",
      energy_required = 2,
      ingredients = {
        {"constant-combinator", 1},
        {"red-wire", 1}
      },
      result = "crafting_combinator:crafting-combinator"
    },
    {
      type = "recipe",
      name = "nullius-recipe-combinator",
      enabled = false,
      always_show_made_in = true,
      category = "small-crafting",
      energy_required = 2,
      ingredients = {
        {"arithmetic-combinator", 1},
        {"red-wire", 2}
      },
      result = "crafting_combinator:recipe-combinator"
    }
  })
end


if mods["UPSFriendlyNixieTubeDisplay"] then
  data:extend({
    {
      type = "recipe",
      name = "nullius-SNTD-old-nixie-tube",
      enabled = false,
      always_show_made_in = true,
      category = "small-crafting",
      energy_required = 4,
      ingredients = {
        {"constant-combinator", 2},
        {"small-lamp", 3},
        {"nullius-aluminum-wire", 3},
        {"nullius-glass", 4}
      },
      result = "SNTD-old-nixie-tube"
    },    
    {
      type = "recipe",
      name = "nullius-SNTD-nixie-tube",
      enabled = false,
      always_show_made_in = true,
      category = "medium-crafting",
      energy_required = 5,
      ingredients = {
        {"SNTD-old-nixie-tube", 1},
        {"nullius-large-chest-1", 1}
      },
      result = "SNTD-nixie-tube"
    },
    {
      type = "recipe",
      name = "nullius-SNTD-nixie-tube-small",
      enabled = false,
      always_show_made_in = true,
      category = "small-crafting",
      energy_required = 3,
      ingredients = {
        {"SNTD-old-nixie-tube", 1},
		{"green-wire", 2},
        {"iron-chest", 1}
      },
      result = "SNTD-nixie-tube-small"
    },
    {
      type = "technology",
      name = "nullius-SNTD-nixie-tubes-basic",
      icon = "__UPSFriendlyNixieTubeDisplay__/graphics/old-nixie-technology-icon.png",
      icon_size = 32,
      unit = {
        count = 25,
        ingredients = {
          {"nullius-geology-pack", 1}, {"nullius-climatology-pack", 1},
          {"nullius-mechanical-pack", 1}, {"nullius-electrical-pack", 2}
        },
        time = 25
      },
      prerequisites = {"nullius-computation"},
      order = "nullius-df",
      effects = {
        {
          type = "unlock-recipe",
          recipe = "nullius-SNTD-old-nixie-tube"
        }
      }
    },
    {
      type = "technology",
      name = "nullius-SNTD-nixie-tubes-reinforced",
      icon = "__UPSFriendlyNixieTubeDisplay__/graphics/nixie-technology-icon.png",
      icon_size = 32,
      unit = {
        count = 40,
        ingredients = {
          {"nullius-climatology-pack", 1},
          {"nullius-mechanical-pack", 1}, {"nullius-electrical-pack", 1}
        },
        time = 25
      },
      prerequisites = {
        "nullius-SNTD-nixie-tubes-basic"
      },
      order = "nullius-df",
      effects = {
        {
          type = "unlock-recipe",
          recipe = "nullius-SNTD-nixie-tube"
        },
        {
          type = "unlock-recipe",
          recipe = "nullius-SNTD-nixie-tube-small"
        }
      },
    }
})
end


if mods["holographic_signs"] then
data:extend({
  {
    type = "recipe",
    name = "nullius-holographic-sign",
    enabled = false,
    always_show_made_in = true,
    category = "small-crafting",
    energy_required = 3,
    ingredients = {
      {"constant-combinator", 2},
      {"small-lamp", 3},
      {"nullius-aluminum-plate", 1},
	  {"nullius-glass", 2}
    },
    result = "hs_holo_sign"
  },
  {
    type = "technology",
    name = "nullius-holographics",
    order = "nullius-df",
    icon = "__holographic_signs__/graphics/hologram_ico.png",
    icon_size = 64,
    effects = {
      {
        type = "unlock-recipe",
        recipe = "nullius-holographic-sign"
      }
    },
    unit = {
      count = 30,
      ingredients = {
        {"nullius-geology-pack", 1}, {"nullius-climatology-pack", 1},
        {"nullius-mechanical-pack", 1}, {"nullius-electrical-pack", 2}
      },
      time = 25
    },
    prerequisites = {"nullius-computation"}
  }
})
end


if mods["Shuttle_Train_Continued"] then
data:extend({
  {
    type = "recipe",
    name = "nullius-shuttle-lite",
    enabled = false,
    always_show_made_in = true,
    category = "large-crafting",
    energy_required = 8,
    ingredients = {
      {"radar", 1},
      {"nullius-robot-frame-1", 1}
    },
    result = "shuttle-lite"
  }
})
end


if mods["FluidMustFlow"] then
data:extend({
  {
    type = "item-subgroup",
    name = "nullius-ducts",
    order = "bg",
    group = "chemistry",
  },
  {
    type = "recipe",
    name = "nullius-duct-small",
    enabled = false,
    always_show_made_in = true,
    category = "hand-casting",
    energy_required = 2,
    ingredients = {
      {"nullius-box-steel-plate", 1},
      {"nullius-underground-pipe-3", 1}
    },
    result = "duct-small"
  },
  {
    type = "recipe",
    name = "nullius-duct-curve",
    enabled = false,
    always_show_made_in = true,
    category = "large-crafting",
    energy_required = 2,
    ingredients = {
      {"duct-small", 2},
      {"nullius-steel-rod", 1}
    },
    result = "duct-curve"
  },
  {
    type = "recipe",
    name = "nullius-duct-t-junction",
    enabled = false,
    always_show_made_in = true,
    category = "large-crafting",
    energy_required = 3,
    ingredients = {
      {"duct-small", 3},
      {"nullius-steel-rod", 2}
    },
    result = "duct-t-junction"
  },
  {
    type = "recipe",
    name = "nullius-duct-cross",
    enabled = false,
    always_show_made_in = true,
    category = "large-crafting",
    energy_required = 4,
    ingredients = {
      {"duct-small", 4},
      {"nullius-steel-rod", 3}
    },
    result = "duct-cross"
  },
  {
    type = "recipe",
    name = "nullius-duct-end-point-outtake",
    enabled = false,
    always_show_made_in = true,
    category = "large-crafting",
    energy_required = 5,
    ingredients = {
      {"duct-cross", 1},
      {"nullius-outfall-2", 1}
    },
    result = "duct-end-point-outtake"
  },
  {
    type = "recipe",
    name = "nullius-duct-end-point-intake",
    enabled = false,
    always_show_made_in = true,
    category = "large-crafting",
    energy_required = 5,
    ingredients = {
      {"duct-end-point-outtake", 1},
      {"nullius-box-pump-2", 1}
    },
    result = "duct-end-point-intake"
  },
  {
    type = "technology",
    name = "nullius-ducts",
    localised_name = {"technology-name.Ducts"},
    localised_description = {"technology-description.Ducts"},
    icon = "__FluidMustFlow__/graphics/icon/technologies/iron_duct_tecnology.png",
    icon_size = 128,
    order = "nullius-df",
    effects = {
      {
        type = "unlock-recipe",
        recipe = "nullius-duct-small",
      },
      {
        type = "unlock-recipe",
        recipe = "nullius-duct-underground",
      },
      {
        type = "unlock-recipe",
        recipe = "nullius-duct-curve",
      },
      {
        type = "unlock-recipe",
        recipe = "nullius-duct-t-junction",
      },
      {
        type = "unlock-recipe",
        recipe = "nullius-duct-cross",
      },
      {
        type = "unlock-recipe",
        recipe = "nullius-duct-end-point-outtake",
      },
      {
        type = "unlock-recipe",
        recipe = "nullius-duct-end-point-intake",
      },
      {
        type = "unlock-recipe",
        recipe = "nullius-non-return-duct",
      }
    },
    unit = {
      count = 600,
      ingredients = {
        {"nullius-geology-pack", 1}, {"nullius-climatology-pack", 1},
        {"nullius-mechanical-pack", 1}, {"nullius-electrical-pack", 1},
        {"nullius-chemical-pack", 1}
      },
      time = 35
    },
    prerequisites = {"nullius-pressure-containment", "nullius-mass-production-4"}
  }
})

if not settings.startup["fmf-enable-duct-auto-join"].value then
table.insert(data.raw["technology"]["nullius-ducts"].effects,
  { type = "unlock-recipe", recipe = "nullius-duct" })
table.insert(data.raw["technology"]["nullius-ducts"].effects,
  { type = "unlock-recipe", recipe = "nullius-duct-long" })

data:extend({
  {
    type = "recipe",
    name = "nullius-duct",
    enabled = false,
    always_show_made_in = true,
    category = "large-crafting",
    energy_required = 2,
    ingredients = {
      {"duct-small", 2},
      {"nullius-steel-rod", 1}
    },
    result = "duct"
  },
  {
    type = "recipe",
    name = "nullius-duct-long",
    enabled = false,
    always_show_made_in = true,
    category = "huge-crafting",
    energy_required = 2,
    ingredients = {
      {"duct", 2},
      {"nullius-steel-rod", 1}
    },
    result = "duct-long"
  },
  {
    type = "recipe",
    name = "nullius-duct-underground",
    enabled = false,
    always_show_made_in = true,
    category = "huge-crafting",
    energy_required = 6,
    ingredients = {
      {"duct-long", 3},
      {"nullius-box-reinforced-concrete", 4}
    },
    result = "duct-underground"
  },
  {
    type = "recipe",
    name = "nullius-non-return-duct",
    enabled = false,
    always_show_made_in = true,
    category = "large-crafting",
    energy_required = 3,
    ingredients = {
      {"duct", 1},
      {"nullius-box-one-way-valve", 1}
    },
    result = "non-return-duct"
  }
})
else
data:extend({
  {
    type = "recipe",
    name = "nullius-duct-underground",
    enabled = false,
    always_show_made_in = true,
    category = "huge-crafting",
    energy_required = 6,
    ingredients = {
      {"duct-small", 12},
      {"nullius-box-reinforced-concrete", 4}
    },
    result = "duct-underground"
  },
  {
    type = "recipe",
    name = "nullius-non-return-duct",
    enabled = false,
    always_show_made_in = true,
    category = "large-crafting",
    energy_required = 3,
    ingredients = {
      {"duct-small", 2},
      {"nullius-box-one-way-valve", 1}
    },
    result = "non-return-duct"
  }
})
end
end


if mods["railloader"] then
if not mods["miniloader"] then
  data:extend({
    {
      type = "item-subgroup",
      name = "miniloader",
      group = "logistics",
      order = "cam"
    }
  })
end
data:extend({
  {
    type = "recipe",
    name = "nullius-rail-loader",
    enabled = false,
    always_show_made_in = true,
    category = "huge-crafting",
    energy_required = 8,
    ingredients = {
      {"rail", 3},
      {"gate", 8},
      {"stone-wall", 12},
	  {"nullius-large-chest-2", 2},
	  {"express-underground-belt", 6},
	  {"nullius-steel-beam", 16}
    },
    result = "railloader"
  },
  {
    type = "recipe",
    name = "nullius-rail-unloader",
    enabled = false,
    always_show_made_in = true,
    category = "huge-crafting",
    energy_required = 8,
    ingredients = {
      {"rail", 3},
      {"gate", 8},
      {"stone-wall", 12},
	  {"nullius-large-chest-2", 2},
	  {"express-underground-belt", 6},
	  {"concrete", 36}
    },
    result = "railunloader"
  },
  {
    type = "technology",
    name = "nullius-rail-loader",
    localised_name = {"technology-name.railloader"},
    localised_description = {"technology-description.railloader"},
    icon = "__railloader__/graphics/technology/railloader.png",
    icon_size = 128,
    order = "nullius-em",
    effects = {
      {
        type = "unlock-recipe",
        recipe = "nullius-rail-loader",
      },
      {
        type = "unlock-recipe",
        recipe = "nullius-rail-unloader",
      }
    },
    unit = {
      count = 750,
      ingredients = {
        {"nullius-geology-pack", 1}, {"nullius-climatology-pack", 1},
        {"nullius-mechanical-pack", 2}, {"nullius-electrical-pack", 1}
      },
      time = 35
    },
    prerequisites = {"nullius-storage-3", "nullius-architecture-1", "nullius-freight-transportation-2"}
  }
})
end


if mods["RenaiTransportation"] then
if settings.startup["RTThrowersSetting"].value then
data:extend({
  {
    type = "item-subgroup",
    name = "nullius-renai-thrower",
    group = "logistics",
    order = "crb"
  },
  {
    type = "item-subgroup",
    name = "nullius-renai-bounce",
    group = "logistics",
    order = "crc"
  },
  {
    type = "recipe",
    name = "nullius-thrower-1",
    enabled = false,
    always_show_made_in = true,
	GCKI_ignore = true,
    category = "medium-crafting",
    energy_required = 3,
    ingredients = {
      {"inserter", 2},
      {"nullius-motor-1", 1}
    },
    result = "inserter"
  },
  {
    type = "recipe",
    name = "nullius-thrower-2",
    enabled = false,
    always_show_made_in = true,
	GCKI_ignore = true,
    category = "medium-crafting",
    energy_required = 2,
    ingredients = {
      {"RTThrower-inserter-Item", 1},
      {"turbo-inserter", 1},
	  {"nullius-motor-2", 1}
    },
    result = "turbo-inserter"
  },
  {
    type = "recipe",
    name = "nullius-filter-thrower-2",
    enabled = false,
    always_show_made_in = true,
	GCKI_ignore = true,
    category = "medium-crafting",
    energy_required = 2,
    ingredients = {
      {"RTThrower-inserter-Item", 1},
      {"turbo-filter-inserter", 1},
	  {"nullius-motor-2", 1}
    },
    result = "turbo-filter-inserter"
  },
  {
    type = "recipe",
    name = "nullius-thrower-3",
    enabled = false,
    always_show_made_in = true,
	GCKI_ignore = true,
    category = "medium-crafting",
    energy_required = 2,
    ingredients = {
      {"RTThrower-turbo-inserter-Item", 1},
      {"stack-inserter", 2}
    },
    result = "stack-inserter"
  },
  {
    type = "recipe",
    name = "nullius-filter-thrower-3",
    enabled = false,
    always_show_made_in = true,
	GCKI_ignore = true,
    category = "medium-crafting",
    energy_required = 2,
    ingredients = {
      {"RTThrower-turbo-filter-inserter-Item", 1},
      {"stack-filter-inserter", 2}
    },
    result = "stack-filter-inserter"
  },
  {
    type = "recipe",
    name = "nullius-thrower-4",
    enabled = false,
    always_show_made_in = true,
	GCKI_ignore = true,
    category = "medium-crafting",
    energy_required = 3,
    ingredients = {
      {"RTThrower-stack-inserter-Item", 1},
      {"express-stack-inserter", 2}
    },
    result = "express-stack-inserter"
  },
  {
    type = "recipe",
    name = "nullius-filter-thrower-4",
    enabled = false,
    always_show_made_in = true,
	GCKI_ignore = true,
    category = "medium-crafting",
    energy_required = 3,
    ingredients = {
      {"RTThrower-stack-filter-inserter-Item", 1},
      {"express-stack-filter-inserter", 2}
    },
    result = "express-stack-filter-inserter"
  },
  {
    type = "recipe",
    name = "nullius-open-chest",
    enabled = false,
    always_show_made_in = true,
    no_productivity = true,
    category = "medium-crafting",
    energy_required = 0.5,
    ingredients = {
      {"wooden-chest", 1}
    },
    result = "OpenContainerItem"
  },
  {
    type = "recipe",
    name = "nullius-closed-chest",
    localised_name = {"recipe-name.nullius-close-chest"},
    enabled = false,
    always_show_made_in = true,
    no_productivity = true,
    category = "medium-crafting",
	subgroup = "nullius-renai-bounce",
	order = "nullius-dc",
    energy_required = 0.5,
    ingredients = {
      {"OpenContainerItem", 1}
    },
    result = "wooden-chest"
  },
  {
    type = "recipe",
    name = "nullius-hatch",
    enabled = false,
    always_show_made_in = true,
    category = "medium-crafting",
    energy_required = 2,
    ingredients = {
      {"nullius-underground-pipe-2", 1},
	  {"nullius-priority-valve", 1},
      {"nullius-steel-rod", 1}
    },
    result = "HatchRTItem"
  },
  {
    type = "recipe",
    name = "nullius-ejector-hatch",
    enabled = false,
    always_show_made_in = true,
    category = "medium-crafting",
    energy_required = 2,
    ingredients = {
      {"HatchRTItem", 1},
	  {"RTThrower-turbo-inserter-Item", 1},
      {"fast-underground-belt", 1}
    },
    result = "RTThrower-EjectorHatchRTItem"
  },
  {
    type = "recipe",
    name = "nullius-player-thrower",
    enabled = false,
    always_show_made_in = true,
    category = "medium-crafting",
    energy_required = 2,
    ingredients = {
      {type="item", name="RTThrower-inserter-Item", amount=1},
      {type="item", name="nullius-steel-plate", amount=2}
    },
    result = "PlayerLauncherItem"
  },
  {
    type = "recipe",
    name = "nullius-bounce-plate",
    enabled = false,
    always_show_made_in = true,
    category = "medium-crafting",
    energy_required = 3,
    ingredients = {
      {"nullius-rubber", 4},
      {"nullius-iron-wire", 3},
	  {"nullius-steel-rod", 2}
    },
    result = "BouncePlateItem"
  },
  {
    type = "recipe",
    name = "nullius-directed-bounce-plate",
    enabled = false,
    always_show_made_in = true,
    category = "medium-crafting",
    energy_required = 1,
    ingredients = {
      {"BouncePlateItem", 1},
      {"stone-brick", 6}
    },
    result = "DirectedBouncePlateItem"
  },
  {
    type = "recipe",
    name = "nullius-signal-bounce-plate",
    enabled = false,
    always_show_made_in = true,
    category = "small-crafting",
    energy_required = 1,
    ingredients = {
      {"BouncePlateItem", 1},
	  {"constant-combinator", 1}
    },
    result = "SignalBouncePlateItem"
  },
  {
    type = "recipe",
    name = "nullius-director-bounce-plate",
    enabled = false,
    always_show_made_in = true,
    category = "medium-crafting",
    energy_required = 3,
    ingredients = {
      {"DirectedBouncePlateItem", 1},
	  {"nullius-motor-2", 1},
      {"nullius-iron-gear", 3},
	  {"nullius-sensor-1", 1}
    },
    result = "DirectorBouncePlateItem"
  }
})
end

if settings.startup["RTZiplineSetting"].value then
data:extend({
  {
    type = "item-subgroup",
    name = "nullius-renai-zipline",
    group = "logistics",
    order = "grc"
  },
  {
    type = "recipe",
    name = "nullius-zipline-trolley",
    enabled = false,
    always_show_made_in = true,
    category = "medium-crafting",
    energy_required = 3,
    ingredients = {
      {"nullius-locomotive-1", 1},
	  {"nullius-iron-wire", 2}
    },
    result = "RTZiplineItem"
  },
  {
    type = "recipe",
    name = "nullius-zipline-trolley-2",
    enabled = false,
    always_show_made_in = true,
    category = "medium-crafting",
    energy_required = 6,
    ingredients = {
      {"RTZiplineItem", 2},
	  {"nullius-motor-2", 3},
	  {"nullius-steel-cable", 10}
    },
    result = "RTZiplineItem2"
  },
  {
    type = "recipe",
    name = "nullius-zipline-trolley-3",
    enabled = false,
    always_show_made_in = true,
    category = "medium-crafting",
    energy_required = 12,
    ingredients = {
      {"RTZiplineItem2", 1},
	  {"nullius-locomotive-2", 1},
	  {"nullius-textile", 8},
	  {"nullius-speed-module-2", 1}
    },
    result = "RTZiplineItem3"
  },
  {
    type = "recipe",
    name = "nullius-zipline-trolley-4",
    enabled = false,
    always_show_made_in = true,
    category = "medium-crafting",
    energy_required = 25,
    ingredients = {
      {"RTZiplineItem3", 1},
	  {"nullius-motor-3", 4},
	  {"nullius-carbon-composite", 12},
	  {"nullius-bearing", 12},
	  {"nullius-levitation-field-1", 2}
    },
    result = "RTZiplineItem4"
  },
  {
    type = "recipe",
    name = "nullius-zipline-trolley-5",
    enabled = false,
    always_show_made_in = true,
    category = "medium-crafting",
    energy_required = 50,
    ingredients = {
      {"RTZiplineItem4", 2},
	  {"nullius-locomotive-3", 1},
	  {"nullius-titanium-rod", 6},
	  {"nullius-speed-module-3", 3},
	  {"nullius-stabilizer-1", 2}
    },
    result = "RTZiplineItem5"
  },
  {
    type = "recipe",
    name = "nullius-zipline-control",
    enabled = false,
    always_show_made_in = true,
    category = "medium-crafting",
    energy_required = 2,
    ingredients = {
      {"power-switch", 1},
	  {"decider-combinator", 1}
    },
    result = "RTZiplineControlsItem"
  },
  {
    type = "recipe",
    name = "nullius-zipline-crank-control",
    enabled = false,
    always_show_made_in = true,
    category = "medium-crafting",
    energy_required = 1,
    ingredients = {
      {"RTZiplineControlsItem", 1},
	  {"nullius-steel-rod", 1},
	  {"nullius-steel-gear", 2}
    },
    result = "RTZiplineCrankControlsItem"
  },
  {
    type = "recipe",
    name = "nullius-zipline-smart-control",
    enabled = false,
    always_show_made_in = true,
    category = "tiny-crafting",
    energy_required = 5,
    ingredients = {
      {"RTZiplineControlsItem", 1},
	  {"nullius-speed-module-1", 1},
	  {"programmable-speaker", 1},
	  {"nullius-sensor-1", 1}
    },
    result = "RTProgrammableZiplineControlsItem"
  },
  {
    type = "recipe",
    name = "nullius-zipline-terminal",
    enabled = false,
    always_show_made_in = true,
    category = "large-crafting",
    energy_required = 15,
    ingredients = {
      {"RTProgrammableZiplineControlsItem", 1},
	  {"train-stop", 1},
	  {"nullius-steel-cable", 12},
	  {"big-electric-pole", 1}
    },
    result = "RTZiplineTerminalItem"
  }
})
end

if settings.startup["RTTrainRampSetting"].value then
data:extend({
  {
    type = "item-subgroup",
    name = "nullius-renai-ramp",
    group = "logistics",
    order = "grb"
  },
  {
    type = "recipe",
    name = "nullius-train-ramp",
    enabled = false,
    always_show_made_in = true,
    category = "large-crafting",
    energy_required = 4,
    ingredients = {
      {"rail", 2},
	  {"concrete", 25},
	  {"nullius-steel-beam", 4}
    },
    result = "RTTrainRampItem"
  },
  {
    type = "recipe",
    name = "nullius-magnetic-ramp",
    enabled = false,
    always_show_made_in = true,
    category = "large-crafting",
    energy_required = 6,
    ingredients = {
      {"RTTrainRampItem", 1},
	  {"nullius-grid-battery-1", 1},
	  {"nullius-beacon-2", 1},
	  {"nullius-levitation-field-1", 4}
    },
    result = "RTMagnetTrainRampItem"
  },
  {
    type = "recipe",
    name = "nullius-impact-unloader",
    enabled = false,
    always_show_made_in = true,
    category = "large-crafting",
    energy_required = 5,
    ingredients = {
      {"stone-wall", 6},
      {"refined-concrete", 30},
	  {"nullius-steel-plate", 12},
	  {"RTTrainDirectedBouncePlateItem", 1}
    },
    result = "RTImpactUnloaderItem"
  },
  {
    type = "recipe",
    name = "nullius-impact-wagon",
    enabled = false,
    always_show_made_in = true,
    category = "large-crafting",
    energy_required = 4,
    ingredients = {
      {"nullius-cargo-wagon-2", 1},
      {"HatchRTItem", 5},
	  {"nullius-steel-gear", 4},
	  {"nullius-steel-plate", 10}
    },
    result = "RTImpactWagonItem"
  }
})
if settings.startup["RTThrowersSetting"].value then
data:extend({
  {
    type = "recipe",
    name = "nullius-train-bounce-plate",
    enabled = false,
    always_show_made_in = true,
    category = "large-crafting",
    energy_required = 5,
    ingredients = {
      {"BouncePlateItem", 6},
      {"nullius-textile", 12},
	  {"nullius-steel-beam", 4}
    },
    result = "RTTrainBouncePlateItem"
  },
  {
    type = "recipe",
    name = "nullius-train-directed-bounce-plate",
    enabled = false,
    always_show_made_in = true,
    category = "large-crafting",
    energy_required = 2,
    ingredients = {
      {"RTTrainBouncePlateItem", 1},
      {"RTTrainRampItem", 1}
    },
    result = "RTTrainDirectedBouncePlateItem"
  }
})
else
data.raw.recipe["nullius-impact-unloader"].ingredients[4] =
    {"nullius-rubber", 30}
data.raw.recipe["nullius-impact-wagon"].ingredients[2] =
    {"nullius-priority-valve", 8}
end
end

if settings.startup["RTThrowersSetting"].value then
data:extend({
  {
    type = "technology",
    name = "nullius-logistic-ballistics-1",
    order = "nullius-cd",
	icon = "__RenaiTransportation__/graphics/tech/ThrowerTech.png",
	icon_size = 128,
    effects = {
      {
        type = "unlock-recipe",
        recipe = "nullius-thrower-1"
      },
      {
        type = "unlock-recipe",
        recipe = "nullius-open-chest"
      },
      {
        type = "unlock-recipe",
        recipe = "nullius-closed-chest"
      }
    },
    unit = {
      count = 2,
      ingredients = {{"nullius-climatology-pack", 1}, {"nullius-mechanical-pack", 1}},
      time = 10
    },
    prerequisites = {"nullius-logistics-1", "nullius-actuation-1"},
    ignore_tech_cost_multiplier = true
  },
  {
    type = "technology",
    name = "nullius-logistic-ballistics-2",
    order = "nullius-cf",
	icon = "__RenaiTransportation__/graphics/tech/start.png",
	icon_size = 128,
    effects = {
      {
        type = "unlock-recipe",
        recipe = "nullius-player-thrower"
      }
    },
    unit = {
      count = 3,
      ingredients = {{"nullius-climatology-pack", 1}, {"nullius-mechanical-pack", 1}},
      time = 10
    },
    prerequisites = {"nullius-logistic-ballistics-1", "nullius-steelmaking-1", "nullius-wind-power-1"},
    ignore_tech_cost_multiplier = true
  },
  {
    type = "technology",
    name = "nullius-logistic-ballistics-3",
    order = "nullius-ci",
	icon = "__RenaiTransportation__/graphics/hatch/icon.png",
	icon_size = 64,
    effects = {
      {
        type = "unlock-recipe",
        recipe = "nullius-hatch"
      }
    },
    unit = {
      count = 5,
      ingredients = {{"nullius-climatology-pack", 1}, {"nullius-mechanical-pack", 1}},
      time = 10
    },
    prerequisites = {"RTFocusedFlinging", "nullius-plumbing-3"},
    ignore_tech_cost_multiplier = true
  },
  {
    type = "technology",
    name = "nullius-logistic-ballistics-4",
    order = "nullius-cj",
	icon = "__RenaiTransportation__/graphics/BouncePlates/BouncePlate/PlateIconn.png",
	icon_size = 64,
    effects = {
      {
        type = "unlock-recipe",
        recipe = "nullius-bounce-plate"
      },
      {
        type = "unlock-recipe",
        recipe = "nullius-directed-bounce-plate"
      }
    },
    unit = {
      count = 6,
      ingredients = {{"nullius-climatology-pack", 1}, {"nullius-mechanical-pack", 1}},
      time = 10
    },
    prerequisites = {"nullius-logistic-ballistics-3", "nullius-organic-chemistry-3"},
    ignore_tech_cost_multiplier = true
  },
  {
    type = "technology",
    name = "nullius-logistic-ballistics-5",
    order = "nullius-de",
	icon = "__RenaiTransportation__/graphics/tech/ThrowerTech.png",
	icon_size = 128,
    effects = {
      {
        type = "unlock-recipe",
        recipe = "nullius-thrower-2"
      },
      {
        type = "unlock-recipe",
        recipe = "nullius-filter-thrower-2"
      }
    },
    unit = {
      count = 10,
      ingredients = {
        {"nullius-climatology-pack", 1},
        {"nullius-mechanical-pack", 1}, {"nullius-electrical-pack", 1}
      },
      time = 20
    },
    prerequisites = {"nullius-actuation-2", "nullius-electromagnetism-2"},
    ignore_tech_cost_multiplier = true
  },
  {
    type = "technology",
    name = "nullius-logistic-ballistics-6",
    order = "nullius-dl",
	icon = "__RenaiTransportation__/graphics/BouncePlates/DirectorBouncePlate/DirectorPlateIcon.png",
	icon_size = 64,
    effects = {
      {
        type = "unlock-recipe",
        recipe = "nullius-signal-bounce-plate"
      },
      {
        type = "unlock-recipe",
        recipe = "nullius-director-bounce-plate"
      },
      {
        type = "unlock-recipe",
        recipe = "nullius-ejector-hatch"
      }
    },
    unit = {
      count = 100,
      ingredients = {
        {"nullius-climatology-pack", 1},
        {"nullius-mechanical-pack", 1}, {"nullius-electrical-pack", 1}
      },
      time = 30
    },
    prerequisites = {"nullius-distribution-1"}
  },
  {
    type = "technology",
    name = "nullius-logistic-ballistics-7",
    order = "nullius-ek",
	icon = "__RenaiTransportation__/graphics/tech/ThrowerTech.png",
	icon_size = 128,
    effects = {
      {
        type = "unlock-recipe",
        recipe = "nullius-thrower-3"
      },
      {
        type = "unlock-recipe",
        recipe = "nullius-filter-thrower-3"
      }
    },
    unit = {
      count = 400,
      ingredients = {
        {"nullius-geology-pack", 1}, {"nullius-climatology-pack", 1},
        {"nullius-mechanical-pack", 1}, {"nullius-electrical-pack", 1},
        {"nullius-chemical-pack", 1}
      },
      time = 35
    },
    prerequisites = {"nullius-actuation-3"}
  },
  {
    type = "technology",
    name = "nullius-logistic-ballistics-8",
    order = "nullius-fe",
	icon = "__RenaiTransportation__/graphics/tech/ThrowerTech.png",
	icon_size = 128,
    effects = {
      {
        type = "unlock-recipe",
        recipe = "nullius-thrower-4"
      },
      {
        type = "unlock-recipe",
        recipe = "nullius-filter-thrower-4"
      }
    },
    unit = {
      count = 1200,
      ingredients = {
        {"nullius-geology-pack", 1}, {"nullius-climatology-pack", 1},
        {"nullius-mechanical-pack", 1}, {"nullius-electrical-pack", 1},
        {"nullius-chemical-pack", 1}, {"nullius-physics-pack", 1}
      },
      time = 40
    },
    prerequisites = {"nullius-actuation-4"}
  }
})
if settings.startup["RTTrainRampSetting"].value then
  data.raw.technology["nullius-logistic-ballistics-7"].prerequisites =
      {"nullius-freight-ballistics-2", "nullius-actuation-3"}
  data.raw.technology["nullius-logistic-ballistics-8"].prerequisites =
      {"nullius-freight-ballistics-4", "nullius-actuation-4"}
end
end

if settings.startup["RTZiplineSetting"].value then
data:extend({
  {
    type = "technology",
    name = "nullius-ziplining-1",
    localised_description = {"technology-description.RTZiplineTech"},
    order = "nullius-dd",
	icon = "__RenaiTransportation__/graphics/zipline/controls.png",
	icon_size = 64,
    effects = {
      {
        type = "unlock-recipe",
        recipe = "nullius-zipline-trolley"
      },
      {
        type = "unlock-recipe",
        recipe = "nullius-zipline-control"
      },
      {
        type = "unlock-recipe",
        recipe = "nullius-zipline-crank-control"
      }
    },
    unit = {
      count = 10,
      ingredients = {
        {"nullius-geology-pack", 1}, {"nullius-climatology-pack", 1},
        {"nullius-mechanical-pack", 1}, {"nullius-electrical-pack", 1}
      },
      time = 15
    },
    prerequisites = {"nullius-energy-distribution-2", "nullius-personal-transportation-1"},
    ignore_tech_cost_multiplier = true
  },
  {
    type = "technology",
    name = "nullius-ziplining-2",
    localised_description = {"technology-description.RTZiplineTech"},
    order = "nullius-dm",
	icon = "__RenaiTransportation__/graphics/zipline/terminaltech.png",
	icon_size = 128,
    effects = {
      {
        type = "unlock-recipe",
        recipe = "nullius-zipline-trolley-2"
      },
      {
        type = "unlock-recipe",
        recipe = "nullius-zipline-terminal"
      },
      {
        type = "unlock-recipe",
        recipe = "nullius-zipline-smart-control"
      }
    },
    unit = {
      count = 160,
      ingredients = {
        {"nullius-geology-pack", 1}, {"nullius-climatology-pack", 1},
        {"nullius-mechanical-pack", 1}, {"nullius-electrical-pack", 1}
      },
      time = 30
    },
    prerequisites = {"nullius-robot-speed-1"}
  },
  {
    type = "technology",
    name = "nullius-ziplining-3",
    localised_description = {"technology-description.RTZiplineTech"},
    order = "nullius-em",
	icon = "__RenaiTransportation__/graphics/zipline/icon.png",
	icon_size = 64,
    effects = {
      {
        type = "unlock-recipe",
        recipe = "nullius-zipline-trolley-3"
      }
    },
    unit = {
      count = 500,
      ingredients = {
        {"nullius-geology-pack", 1}, {"nullius-climatology-pack", 1},
        {"nullius-mechanical-pack", 1}, {"nullius-electrical-pack", 1},
		{"nullius-chemical-pack", 1}
      },
      time = 35
    },
    prerequisites = {"nullius-freight-transportation-2",
	    "nullius-inserter-capacity-1", "nullius-optimization-4"}
  },
  {
    type = "technology",
    name = "nullius-ziplining-4",
    localised_description = {"technology-description.RTZiplineTech"},
    order = "nullius-fh",
	icon = "__RenaiTransportation__/graphics/zipline/autocontrols.png",
	icon_size = 64,
    effects = {
      {
        type = "unlock-recipe",
        recipe = "nullius-zipline-trolley-4"
      }
    },
    unit = {
      count = 1500,
      ingredients = {
        {"nullius-climatology-pack", 1},
        {"nullius-mechanical-pack", 2}, {"nullius-electrical-pack", 1},
        {"nullius-physics-pack", 1}
      },
      time = 45
    },
    prerequisites = {"nullius-mechanical-engineering-2", "nullius-locomotion-3"}
  },
  {
    type = "technology",
    name = "nullius-ziplining-5",
    localised_description = {"technology-description.RTZiplineTech"},
    order = "nullius-gd",
	icon = "__RenaiTransportation__/graphics/zipline/controls.png",
	icon_size = 64,
    effects = {
      {
        type = "unlock-recipe",
        recipe = "nullius-zipline-trolley-5"
      }
    },
    unit = {
      count = 5000,
      ingredients = {
        {"nullius-climatology-pack", 1},
        {"nullius-mechanical-pack", 2}, {"nullius-electrical-pack", 1},
        {"nullius-physics-pack", 1}, {"nullius-astronomy-pack", 1}
      },
      time = 60
    },
    prerequisites = {"nullius-checkpoint-cybernetics"}
  }
})
if settings.startup["RTThrowersSetting"].value then
  data.raw.technology["nullius-ziplining-2"].prerequisites =
      {"nullius-robot-speed-1", "nullius-logistic-ballistics-6"}
end
end

if settings.startup["RTTrainRampSetting"].value then
  local freight1 = {
    type = "technology",
    name = "nullius-freight-ballistics-1",
    order = "nullius-dm",
	icon = "__RenaiTransportation__/graphics/tech/FlyingFreight.png",
	icon_size = 128,
    effects = {
      {
        type = "unlock-recipe",
        recipe = "nullius-train-ramp"
      }
    },
    unit = {
      count = 150,
      ingredients = {
        {"nullius-geology-pack", 1}, {"nullius-climatology-pack", 1},
        {"nullius-mechanical-pack", 1}, {"nullius-electrical-pack", 1}
      },
      time = 30
    },
    prerequisites = {"nullius-braking-1"}
  }
  local freight2 = {
    type = "technology",
    name = "nullius-freight-ballistics-2",
    order = "nullius-eh",
	icon = "__RenaiTransportation__/graphics/tech/FlyingFreightPlate.png",
	icon_size = 128,
    effects = {
      {
        type = "unlock-recipe",
        recipe = "nullius-train-bounce-plate"
      },
      {
        type = "unlock-recipe",
        recipe = "nullius-train-directed-bounce-plate"
      }
    },
    unit = {
      count = 250,
      ingredients = {
        {"nullius-geology-pack", 1}, {"nullius-climatology-pack", 1},
        {"nullius-mechanical-pack", 1}, {"nullius-electrical-pack", 1},
        {"nullius-chemical-pack", 1}
      },
      time = 30
    },
    prerequisites = {"nullius-organic-chemistry-5", "nullius-braking-2"}
  }
  local freight3 = {
    type = "technology",
    name = "nullius-freight-ballistics-3",
    order = "nullius-eq",
	icon = "__RenaiTransportation__/graphics/tech/Impact.png",
	icon_size = 128,
    effects = {
      {
        type = "unlock-recipe",
        recipe = "nullius-impact-unloader"
      },
      {
        type = "unlock-recipe",
        recipe = "nullius-impact-wagon"
      }
    },
    unit = {
      count = 500,
      ingredients = {
        {"nullius-geology-pack", 1}, {"nullius-climatology-pack", 1},
        {"nullius-mechanical-pack", 1}, {"nullius-electrical-pack", 1},
        {"nullius-chemical-pack", 1}
      },
      time = 35
    },
    prerequisites = {"nullius-braking-5"}
  }
  local freight4 = {
    type = "technology",
    name = "nullius-freight-ballistics-4",
    order = "nullius-fc",
	icon = "__RenaiTransportation__/graphics/tech/MagnetFreight.png",
	icon_size = 128,
    effects = {
      {
        type = "unlock-recipe",
        recipe = "nullius-magnetic-ramp"
      }
    },
    unit = {
      count = 1000,
      ingredients = {
        {"nullius-geology-pack", 1}, {"nullius-climatology-pack", 1},
        {"nullius-mechanical-pack", 1}, {"nullius-electrical-pack", 1},
        {"nullius-chemical-pack", 1}, {"nullius-physics-pack", 1}
      },
      time = 40
    },
    prerequisites = {"nullius-freight-ballistics-3", "nullius-physics"}
  }
if settings.startup["RTZiplineSetting"].value then
  freight1.prerequisites = {"nullius-braking-1", "nullius-ziplining-2"}
end
if settings.startup["RTThrowersSetting"].value then
  data:extend({ freight1, freight2, freight3, freight4 })
else
  freight3.name = "nullius-freight-ballistics-2"
  freight4.name = "nullius-freight-ballistics-3"
  freight4.prerequisites = {"nullius-freight-ballistics-2", "nullius-physics"}
  data:extend({ freight1, freight3, freight4 })
end
end
end


if mods["DisplayPlates"] then
data:extend({
  {
    type = "recipe",
    name = "nullius-display-plate-small-steel",
    enabled = false,
    always_show_made_in = true,
    category = "medium-crafting",
    energy_required = 2,
    ingredients = {
      {"nullius-rubber", 1},
      {"nullius-glass", 1},
      {"nullius-steel-sheet", 2}
    },
    result = "iron-display-small"
  },
  {
    type = "recipe",
    name = "nullius-display-plate-medium-steel",
    enabled = false,
    always_show_made_in = true,
    category = "medium-crafting",
    energy_required = 2,
    ingredients = {
      {"iron-display-small", 4},
	  {"small-lamp", 1}
    },
    result = "iron-display-medium"
  },
  {
    type = "recipe",
    name = "nullius-display-plate-large-steel",
    enabled = false,
    always_show_made_in = true,
    category = "medium-crafting",
    energy_required = 5,
    ingredients = {
      {"iron-display-small", 9},
	  {"small-lamp", 4}
    },
    result = "iron-display"
  },
  {
    type = "recipe",
    name = "nullius-display-plate-small-aluminum",
    enabled = false,
    always_show_made_in = true,
    category = "medium-crafting",
    energy_required = 2,
    ingredients = {
      {"nullius-rubber", 1},
      {"nullius-glass", 1},
      {"nullius-aluminum-sheet", 3}
    },
    result = "steel-display-small"
  },
  {
    type = "recipe",
    name = "nullius-display-plate-medium-aluminum",
    enabled = false,
    always_show_made_in = true,
    category = "medium-crafting",
    energy_required = 2,
    ingredients = {
      {"steel-display-small", 4},
	  {"small-lamp", 1}
    },
    result = "steel-display-medium"
  },
  {
    type = "recipe",
    name = "nullius-display-plate-large-aluminum",
    enabled = false,
    always_show_made_in = true,
    category = "medium-crafting",
    energy_required = 5,
    ingredients = {
      {"steel-display-small", 9},
	  {"small-lamp", 4}
    },
    result = "steel-display"
  },
  {
    type = "recipe",
    name = "nullius-display-plate-small-plastic",
    enabled = false,
    always_show_made_in = true,
    category = "medium-crafting",
    energy_required = 2,
    ingredients = {
      {"nullius-rubber", 1},
      {"nullius-glass", 1},
      {"nullius-plastic", 4}
    },
    result = "copper-display-small"
  },
  {
    type = "recipe",
    name = "nullius-display-plate-medium-plastic",
    enabled = false,
    always_show_made_in = true,
    category = "medium-crafting",
    energy_required = 2,
    ingredients = {
      {"copper-display-small", 4},
	  {"small-lamp", 1}
    },
    result = "copper-display-medium"
  },
  {
    type = "recipe",
    name = "nullius-display-plate-large-plastic",
    enabled = false,
    always_show_made_in = true,
    category = "medium-crafting",
    energy_required = 5,
    ingredients = {
      {"copper-display-small", 9},
	  {"small-lamp", 4}
    },
    result = "copper-display"
  },
  {
    type = "technology",
    name = "nullius-display-plates",
    localised_name = {"technology-name.nullius-display-plates"},
    localised_description = {"technology-description.nullius-display-plates"},
    icon = "__DisplayPlates__/graphics/entities/steel-display-small.png",
    icon_size = 80,
    order = "nullius-cc",
    effects = {
      {
        type = "unlock-recipe",
        recipe = "nullius-display-plate-small-steel"
      },
      {
        type = "unlock-recipe",
        recipe = "nullius-display-plate-medium-steel"
      },
      {
        type = "unlock-recipe",
        recipe = "nullius-display-plate-large-steel"
      },
      {
        type = "unlock-recipe",
        recipe = "nullius-display-plate-small-aluminum"
      },
      {
        type = "unlock-recipe",
        recipe = "nullius-display-plate-medium-aluminum"
      },
      {
        type = "unlock-recipe",
        recipe = "nullius-display-plate-large-aluminum"
      },
      {
        type = "unlock-recipe",
        recipe = "nullius-display-plate-small-plastic"
      },
      {
        type = "unlock-recipe",
        recipe = "nullius-display-plate-medium-plastic"
      },
      {
        type = "unlock-recipe",
        recipe = "nullius-display-plate-large-plastic"
      }
    },
    unit = {
      count = 10,
      ingredients = {
        {"nullius-geology-pack", 1}, {"nullius-climatology-pack", 1},
        {"nullius-mechanical-pack", 1}
      },
      time = 5
    },
    prerequisites = {"nullius-illumination-1", "nullius-aluminum-working-1",
        "nullius-checkpoint-rubber"},
    ignore_tech_cost_multiplier = true
  }
})
end


if (mods["rec-blue-plus"] or mods["recursive-blueprints"]) then
  data:extend({
    {
      type = "recipe",
      name = "nullius-blueprint-deployer",
      enabled = false,
      always_show_made_in = true,
      category = "small-crafting",
      energy_required = 12,
      ingredients = {
        {"nullius-small-storage-chest-1", 1},
        {"nullius-relay-1", 1},
        {"decider-combinator", 6}
      },
      result = "blueprint-deployer"
    },
    {
      type = "recipe",
      name = "nullius-recursive-blueprints-scanner",
      enabled = false,
      always_show_made_in = true,
      category = "large-crafting",
      energy_required = 20,
      ingredients = {
        {"radar", 1},
		{"nullius-small-miner-2", 1},
        {"nullius-sensor-1", 4}
      },
      result = "recursive-blueprints-scanner"
    }
  })
end


if mods["ch-concentrated-solar"] then
  data:extend({
    {
      type = "recipe",
      name = "nullius-heliostat-mirror",
      enabled = false,
      always_show_made_in = true,
      category = "hand-casting",
      energy_required = 10,
      ingredients = {
	    {"nullius-aluminum-sheet", 8},
        {"nullius-steel-rod", 6},
	    {"nullius-hard-glass", 10},
	    {"nullius-motor-2", 1},
	    {"nullius-bearing", 1}
      },
      result = "chcs-heliostat-mirror"
    },
    {
      type = "recipe",
      name = "nullius-boxed-heliostat-mirror",
      enabled = false,
      always_show_made_in = true,
      category = "machine-casting",
	  subgroup = "boxed-heat-energy",
      energy_required = 50,
      ingredients = {
	    {"nullius-box-aluminum-sheet", 8},
        {"nullius-box-steel-rod", 6},
	    {"nullius-box-hard-glass", 10},
	    {"nullius-box-motor-2", 1},
	    {"nullius-box-bearing", 1}
      },
      result = "nullius-box-heliostat-mirror"
    },
    {
      type = "recipe",
      name = "nullius-solar-tower",
      enabled = false,
      always_show_made_in = true,
      category = "huge-crafting",
      energy_required = 60,
      ingredients = {
	    {"nullius-thermal-tank-2", 3},
        {"nullius-box-heat-pipe-2", 10},
		{"nullius-box-steel-beam", 24},
		{"nullius-box-reinforced-concrete", 8},
		{"nullius-pump-2", 8},
        {"nullius-large-beacon-1", 1}
      },
      result = "chcs-solar-power-tower",
      requester_paste_multiplier = 2
    },
    {
      type = "technology",
      name = "nullius-concentrated-solar-energy",
	  order = "nullius-eo",
	  icons = {{
        icon = "__ch-concentrated-solar__/graphics/technology/concentrated-solar-energy.png",
		icon_size = 256,
		icon_mipmaps = 4
      }},
	  localised_name = {"technology-name.chcs-concentrated-solar-energy"},
      localised_description = {"technology-description.chcs-concentrated-solar-energy"},
      effects = {
        {
          type = "unlock-recipe",
          recipe = "nullius-heliostat-mirror"
        },
        {
          type = "unlock-recipe",
          recipe = "nullius-solar-tower"
        },
        {
          type = "unlock-recipe",
          recipe = "nullius-box-heliostat-mirror"
        },
        {
          type = "unlock-recipe",
          recipe = "nullius-unbox-heliostat-mirror"
        }
      },
      unit = {
        count = 800,
        ingredients = {
          {"nullius-geology-pack", 1}, {"nullius-climatology-pack", 1},
          {"nullius-mechanical-pack", 1}, {"nullius-electrical-pack", 1},
		  {"nullius-chemical-pack", 1}
        },
        time = 35
      },
      prerequisites = {"nullius-solar-thermal-power-2", "nullius-checkpoint-large-beacon"}
    }
  })
end


if (mods["beautiful_bridge_railway"] or
    mods["beautiful_bridge_railway_Cargoships"] or
    mods["beautiful_straight_bridge_railway"]) then
  data:extend({
    {
      type = "recipe",
      name = "nullius-rail-bridge-iron",
      enabled = false,
	  always_show_made_in = true,
      category = "huge-crafting",
      energy_required = 6,
      ingredients = {
        {"rail", 2},
		{"nullius-steel-beam", 8},
		{"concrete", 6},
		{"nullius-land-fill-gravel", 1}
      },
      result = "bbr-rail-iron"
    },
    {
      type = "recipe",
      name = "nullius-rail-bridge-brick",
      enabled = false,
	  always_show_made_in = true,
      category = "huge-crafting",
      energy_required = 8,
      ingredients = {
        {"rail", 2},
		{"nullius-refractory-brick", 4},
		{"nullius-mortar", 1},
		{"concrete", 1},
		{"nullius-land-fill-gravel", 2}
      },
      result = "bbr-rail-brick"
    },
    {
      type = "recipe",
      name = "nullius-rail-bridge-wood",
      enabled = false,
	  always_show_made_in = true,
      category = "huge-crafting",
      energy_required = 5,
      ingredients = {
        {"rail", 2},
		{"nullius-wood", 6},
		{"nullius-steel-rod", 1},
		{"concrete", 2},
		{"nullius-land-fill-gravel", 1}
      },
      result = "bbr-rail-wood"
    },
    {
      type = "technology",
      name = "nullius-rail-bridges",
      order = "nullius-eg",
	  icons = {{
        icon = "__base__/graphics/technology/automated-rail-transportation.png",
        icon_size = 256,
        icon_mipmaps = 4
	  }},
      effects = {
	    { type = "unlock-recipe", recipe = "nullius-rail-bridge-iron" },
        { type = "unlock-recipe", recipe = "nullius-rail-bridge-brick" }
      },
      unit = {
        count = 250, time = 30,
        ingredients = {
          {"nullius-geology-pack", 1}, {"nullius-climatology-pack", 1},
          {"nullius-mechanical-pack", 2}, {"nullius-electrical-pack", 1},
          {"nullius-chemical-pack", 1}
        }
      },
      prerequisites = {"nullius-braking-1", "nullius-steelmaking-2"}
    }
  })
end


if mods["Mini_Trains"] then
  data:extend({
    {
      type = "item-subgroup",
      name = "light-rail",
      group = "logistics",
      order = "gl"
    },
    {
      type = "item",
      name = "nullius-small-locomotive-1",
	  icons = {{
	    icon = "__Mini_Trains__/data/icons/cab64.png",
        icon_size = 64,
		tint = { r = 0.65, g = 0.65, b = 0.4 }
	  }},
      subgroup = "light-rail",
      order = "nullius-bb",
      place_result = "mini-locomotive",
      stack_size = 10
    },
    {
      type = "item",
      name = "nullius-small-locomotive-2",
	  icons = {{
	    icon = "__Mini_Trains__/data/icons/cab64.png",
        icon_size = 64,
		tint = { r = 1, g = 0.7, b = 0.7 }
	  }},
      subgroup = "light-rail",
      order = "nullius-bc",
      place_result = "mini-locomotive",
      stack_size = 10
    },
    {
      type = "item",
      name = "nullius-small-locomotive-3",
	  icons = {{
	    icon = "__Mini_Trains__/data/icons/cab64.png",
        icon_size = 64,
		tint = { r = 0.8, g = 0.8, b = 1 }
	  }},
      subgroup = "light-rail",
      order = "nullius-bd",
      place_result = "mini-locomotive",
      stack_size = 10
    },
    {
      type = "item",
      name = "nullius-small-solar-locomotive",
	  icons = {{
	    icon = "__Mini_Trains__/data/icons/cab64.png",
        icon_size = 64,
		tint = { r = 0.8, g = 1, b = 0.8 }
	  }},
      subgroup = "light-rail",
      order = "nullius-be",
      place_result = "mini-locomotive",
      stack_size = 10
    },
    {
      type = "item",
      name = "nullius-small-cargo-wagon-1",
	  icons = {{
	    icon = "__Mini_Trains__/data/icons/cargo64.png",
        icon_size = 64,
		tint = { r = 0.65, g = 0.65, b = 0.4 }
	  }},
      subgroup = "light-rail",
      order = "nullius-cb",
      place_result = "mini-cargo-wagon",
      stack_size = 10
    },
    {
      type = "item",
      name = "nullius-small-cargo-wagon-2",
	  icons = {{
	    icon = "__Mini_Trains__/data/icons/cargo64.png",
        icon_size = 64,
		tint = { r = 1, g = 0.7, b = 0.7 }
	  }},
      subgroup = "light-rail",
      order = "nullius-cc",
      place_result = "mini-cargo-wagon",
      stack_size = 10
    },
    {
      type = "item",
      name = "nullius-small-cargo-wagon-3",
	  icons = {{
	    icon = "__Mini_Trains__/data/icons/cargo64.png",
        icon_size = 64,
		tint = { r = 0.8, g = 0.8, b = 1 }
	  }},
      subgroup = "light-rail",
      order = "nullius-cd",
      place_result = "mini-cargo-wagon",
      stack_size = 10
    },
    {
      type = "item",
      name = "nullius-small-fluid-wagon-1",
	  icons = {{
	    icon = "__Mini_Trains__/data/icons/fluid64.png",
        icon_size = 64,
		tint = { r = 0.65, g = 0.65, b = 0.4 }
	  }},
      subgroup = "light-rail",
      order = "nullius-db",
      place_result = "mini-fluid-wagon",
      stack_size = 10
    },
    {
      type = "item",
      name = "nullius-small-fluid-wagon-2",
	  icons = {{
	    icon = "__Mini_Trains__/data/icons/fluid64.png",
        icon_size = 64,
		tint = { r = 1, g = 0.7, b = 0.7 }
	  }},
      subgroup = "light-rail",
      order = "nullius-dc",
      place_result = "mini-fluid-wagon",
      stack_size = 10
    },
    {
      type = "item",
      name = "nullius-small-fluid-wagon-3",
	  icons = {{
	    icon = "__Mini_Trains__/data/icons/fluid64.png",
        icon_size = 64,
		tint = { r = 0.8, g = 0.8, b = 1 }
	  }},
      subgroup = "light-rail",
      order = "nullius-dd",
      place_result = "mini-fluid-wagon",
      stack_size = 10
    },
    {
      type = "recipe",
      name = "nullius-small-locomotive-1",
      enabled = false,
      show_amount_in_title = false,
      always_show_products = true,
	  always_show_made_in = true,
      category = "large-crafting",
      energy_required = 8,
      ingredients = {
        {"nullius-locomotive-1", 1},
		{"nullius-aluminum-plate", 4}
      },
      result = "nullius-small-locomotive-1",
	  result_count = 2
    },
    {
      type = "recipe",
      name = "nullius-small-locomotive-2",
      enabled = false,
      show_amount_in_title = false,
      always_show_products = true,
	  always_show_made_in = true,
      category = "large-crafting",
      energy_required = 15,
      ingredients = {
        {"nullius-locomotive-2", 1},
		{"nullius-small-locomotive-1", 2},
		{"nullius-titanium-plate", 4}
      },
      result = "nullius-small-locomotive-2",
	  result_count = 2
    },
    {
      type = "recipe",
      name = "nullius-small-locomotive-3",
      enabled = false,
      show_amount_in_title = false,
      always_show_products = true,
	  always_show_made_in = true,
      category = "large-crafting",
      energy_required = 30,
      ingredients = {
        {"nullius-locomotive-3", 1},
		{"nullius-small-locomotive-2", 2}
      },
      result = "nullius-small-locomotive-3",
	  result_count = 2
    },
    {
      type = "recipe",
      name = "nullius-small-solar-locomotive",
      enabled = false,
      show_amount_in_title = false,
      always_show_products = true,
	  always_show_made_in = true,
      category = "large-crafting",
      energy_required = 30,
      ingredients = {
        {"nullius-solar-locomotive", 1},
		{"nullius-small-locomotive-2", 2}
      },
      result = "nullius-small-solar-locomotive",
	  result_count = 2
    },
    {
      type = "recipe",
      name = "nullius-small-cargo-wagon-1",
      enabled = false,
      show_amount_in_title = false,
      always_show_products = true,
	  always_show_made_in = true,
      category = "large-crafting",
      energy_required = 5,
      ingredients = {
        {"nullius-cargo-wagon-1", 1},
		{"nullius-aluminum-plate", 4}
      },
      result = "nullius-small-cargo-wagon-1",
	  result_count = 2
    },
    {
      type = "recipe",
      name = "nullius-small-cargo-wagon-2",
      enabled = false,
      show_amount_in_title = false,
      always_show_products = true,
	  always_show_made_in = true,
      category = "large-crafting",
      energy_required = 10,
      ingredients = {
	    {"nullius-cargo-wagon-2", 1},
		{"nullius-small-cargo-wagon-1", 2},
		{"nullius-titanium-plate", 4}
      },
      result = "nullius-small-cargo-wagon-2",
	  result_count = 2
    },
    {
      type = "recipe",
      name = "nullius-small-cargo-wagon-3",
      enabled = false,
      show_amount_in_title = false,
      always_show_products = true,
	  always_show_made_in = true,
      category = "large-crafting",
      energy_required = 20,
      ingredients = {
	    {"nullius-cargo-wagon-3", 1},
		{"nullius-small-cargo-wagon-2", 2}
      },
      result = "nullius-small-cargo-wagon-3",
	  result_count = 2
    },
    {
      type = "recipe",
      name = "nullius-small-fluid-wagon-1",
      enabled = false,
      show_amount_in_title = false,
      always_show_products = true,
	  always_show_made_in = true,
      category = "large-crafting",
      energy_required = 6,
      ingredients = {
        {"nullius-fluid-wagon-1", 1},
		{"nullius-aluminum-sheet", 6}
      },
      result = "nullius-small-fluid-wagon-1",
	  result_count = 2
    },
    {
      type = "recipe",
      name = "nullius-small-fluid-wagon-2",
      enabled = false,
      show_amount_in_title = false,
      always_show_products = true,
	  always_show_made_in = true,
      category = "large-crafting",
      energy_required = 12,
      ingredients = {
	    {"nullius-fluid-wagon-2", 1},
		{"nullius-small-fluid-wagon-1", 2},
		{"nullius-titanium-sheet", 6}
      },
      result = "nullius-small-fluid-wagon-2",
	  result_count = 2
    },
    {
      type = "recipe",
      name = "nullius-small-fluid-wagon-3",
      enabled = false,
      show_amount_in_title = false,
      always_show_products = true,
	  always_show_made_in = true,
      category = "large-crafting",
      energy_required = 25,
      ingredients = {
	    {"nullius-fluid-wagon-3", 1},
		{"nullius-small-fluid-wagon-2", 2}
      },
      result = "nullius-small-fluid-wagon-3",
	  result_count = 2
    },
    {
      type = "technology",
      name = "nullius-light-rail",
      order = "nullius-cn",
	  icons = {{
        icon = "__Mini_Trains__/data/icons/tech256.png",
        icon_size = 256
	  }},
      effects = {
	    { type = "unlock-recipe", recipe = "nullius-small-locomotive-1" },
        { type = "unlock-recipe", recipe = "nullius-small-cargo-wagon-1" }
      },
      unit = {
        count = 10, time = 10,
        ingredients = {
          {"nullius-geology-pack", 1}, {"nullius-climatology-pack", 1},
          {"nullius-mechanical-pack", 2}
        }
      },
      prerequisites = {"nullius-personal-transportation-1", "nullius-checkpoint-freight-transportation"}
    }
  })
end

if mods["fcpu"] then
  data:extend({
    {
      type = "recipe",
      name = "nullius-fcpu",
      enabled = false,
      always_show_made_in = true,
      category = "tiny-crafting",
      energy_required = 2,
      ingredients = {
        {"decider-combinator", 10},
        {"arithmetic-combinator", 10},
        {"nullius-processor-2", 1}
      },
      result = "fcpu"
    },
    {
      type = "technology",
      name = "nullius-fcpu",
        localised_name = {"technology-name.fcpu"},
        localised_description = {"technology-description.fcpu"},
      icon_size = 128,
      icon = "__fcpu__/graphics/technology/fcpu.png",
      effects =
      {
        {
        type = "unlock-recipe",
        recipe = "fcpu"
        }
      },
      prerequisites = {"nullius-computation", "nullius-electronics-2"},
      unit =
      {
        count = 200,
        ingredients =
        {
        {"nullius-electrical-pack", 2},
        {"nullius-mechanical-pack", 1},
        {"nullius-chemical-pack", 1}
        },
        time = 45
      },
      order = "a-d-d"
    }
  });
end
