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
      count = 300,
      ingredients = {
        {"nullius-geology-pack", 1}, {"nullius-climatology-pack", 1},
        {"nullius-mechanical-pack", 1}, {"nullius-electrical-pack", 1}
      },
      time = 30
    },
    prerequisites = {"nullius-distribution-1", "nullius-traffic-control"}
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
    icon_size = 128,
    order = "nullius-dj",
    effects = {
      { type = "unlock-recipe", recipe = "nullius-aai-signal-sender" },
      { type = "unlock-recipe", recipe = "nullius-aai-signal-receiver" }
    },
    unit = {
      count = 200,
      ingredients = {
        {"nullius-geology-pack", 1}, {"nullius-climatology-pack", 1},
        {"nullius-mechanical-pack", 1}, {"nullius-electrical-pack", 1}
      },
      time = 30
    },
    prerequisites = {"nullius-logistic-robot-1", "nullius-sensors-1"}
  }
})
end


if mods["Factorissimo2"] then
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
    name = "nullius-factory-requester-chest",
    category = "medium-crafting",
    always_show_made_in = true,
    energy_required = 10,
    ingredients = {
      {"nullius-small-demand-chest-1", 4}
    },
    result = "factory-requester-chest",
    enabled = false
  }
})
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
    prerequisites = {"nullius-storage-2"}
  },
  {
    type = "technology",
    name = "nullius-miniloader-2",
    order = "nullius-dg",
    icons = data.raw.technology["fast-miniloader"].icons,
    effects = { },
    unit = {
      count = 250,
      ingredients = {
        {"nullius-geology-pack", 1}, {"nullius-climatology-pack", 1},
        {"nullius-mechanical-pack", 1}, {"nullius-electrical-pack", 1}
      },
      time = 30
    },
    prerequisites = {"nullius-freight-logistics", "nullius-logistics-2", "nullius-miniloader-1"}
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
    prerequisites = {"nullius-storage-3", "nullius-miniloader-2"}
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
    prerequisites = {"nullius-distribution-3", "nullius-miniloader-3"}
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
      {type="item", name="nullius-small-chest-1", amount=1},
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
      {type="item", name="inserter", amount=2}
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
      {type="item", name="nullius-small-chest-2", amount=1},
      {type="item", name="fast-underground-belt", amount=2},
      {type="item", name="turbo-inserter", amount=2}
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
      {type="item", name="nullius-small-chest-3", amount=1},
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
      {type="item", name="nullius-small-storage-chest-2", amount=1},
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
      {type="item", name="nullius-small-chest-2", amount=1},
      {type="item", name="fast-underground-belt", amount=2},
      {type="item", name="turbo-filter-inserter", amount=2}
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
      {type="item", name="nullius-small-chest-3", amount=1},
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
      {type="item", name="nullius-small-storage-chest-2", amount=1},
      {type="item", name="ultimate-underground-belt", amount=1},
      {type="item", name="express-stack-filter-inserter", amount=2}
    },
    result = "ultimate-filter-miniloader"
  }
})
end
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
    icon_size = 128,
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
    icon_size = 128,
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
    prerequisites = {"nullius-locomotion-2", "nullius-jetpack-1"}
  },
  {
    type = "technology",
    name = "nullius-jetpack-3",
    localised_name = {"technology-name.jetpack-3"},
    localised_description = {"equipment-description.nullius-jetpack-3"},
    order = "nullius-ft",
    icon = "__jetpack__/graphics/technology/jetpack-3.png",
    icon_size = 128,
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
    prerequisites = {"nullius-rocket-science-1", "nullius-jetpack-2"}
  },
  {
    type = "technology",
    name = "nullius-jetpack-4",
    localised_name = {"technology-name.jetpack-4"},
    localised_description = {"equipment-description.nullius-jetpack-4"},
    order = "nullius-di",
    icon = "__jetpack__/graphics/technology/jetpack-4.png",
    icon_size = 128,
    effects = {
      {
        type = "unlock-recipe",
        recipe = "nullius-jetpack-4"
      }
    },
    unit = {
      count = 250000,
      ingredients = {
        {"nullius-geology-pack", 1}, {"nullius-climatology-pack", 1},
        {"nullius-mechanical-pack", 1}, {"nullius-electrical-pack", 1},
        {"nullius-chemical-pack", 1}, {"nullius-physics-pack", 1},
        {"nullius-astronomy-pack", 1}
      },
      time = 60
    },
    prerequisites = {"nullius-rocket-science-3", "nullius-jetpack-3"}
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
      {"nullius-turbine-1", 2},
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
      {"nullius-turbine-2", 2},
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
      {"nullius-priority-turbine-2", 2},
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
    energy_required = 4,
    ingredients = {
      {"underground-L-t2-pipe", 1},
      {"nullius-underground-pipe-3", 2}
    },
    result = "underground-L-t3-pipe"
  },
  {
    type = "recipe",
    name = "nullius-underground-three-way-junction-2",
    enabled = false,
    always_show_made_in = true,
    category = "medium-crafting",
    energy_required = 4,
    ingredients = {
      {"underground-t-t2-pipe", 1},
      {"nullius-underground-pipe-3", 3}
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
    energy_required = 5,
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
    energy_required = 5,
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
    energy_required = 5,
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
    energy_required = 3,
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
    energy_required = 10,
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
      count = 20,
      ingredients = {{"nullius-geology-pack", 1}, {"nullius-climatology-pack", 1},
        {"nullius-mechanical-pack", 1}},
      time = 10
    },
    prerequisites = {"nullius-aluminum-working", "nullius-storage-2"}
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
      count = 120,
      ingredients = {
        {"nullius-geology-pack", 1}, {"nullius-climatology-pack", 1},
        {"nullius-mechanical-pack", 1}, {"nullius-electrical-pack", 1}
      },
      time = 30
    },
    prerequisites = {"nullius-concrete-1", "nullius-warehousing-1"}
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
        recipe = "nullius-storehouse-passive-provider"
      },
      {
        type = "unlock-recipe",
        recipe = "nullius-storehouse-storage"
      }
    },
    unit = {
      count = 250,
      ingredients = {
        {"nullius-geology-pack", 1}, {"nullius-climatology-pack", 1},
        {"nullius-mechanical-pack", 1}, {"nullius-electrical-pack", 1}
      },
      time = 30
    },
    prerequisites = {"nullius-distribution-1", "nullius-warehousing-2"}
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
        recipe = "nullius-warehouse-requester"
      },
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
        recipe = "nullius-storehouse-requester"
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
      count = 600,
      ingredients = {
        {"nullius-geology-pack", 1}, {"nullius-climatology-pack", 1},
        {"nullius-mechanical-pack", 1}, {"nullius-electrical-pack", 1},
        {"nullius-chemical-pack", 1}
      },
      time = 35
    },
    prerequisites = {"nullius-distribution-2", "nullius-warehousing-3"}
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
      {"nullius-small-storage-chest-1", 2}
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
      {"nullius-small-storage-chest-1", 5}
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
      {"nullius-small-supply-chest-1", 2}
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
      {"nullius-small-supply-chest-1", 5}
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


if mods["Factorissimo2"] then
table.insert(data.raw.technology["nullius-warehousing-3"].prerequisites,
  "factory-connection-type-chest")
end
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
      count = 8,
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
      }
    },
    unit = {
      count = 20,
      ingredients = {{"nullius-geology-pack", 1}, {"nullius-climatology-pack", 1},
        {"nullius-mechanical-pack", 1}},
      time = 6
    },
    prerequisites = {"nullius-typesetting-1", "nullius-aluminum-working"},
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
      count = 100,
      ingredients = {
        {"nullius-geology-pack", 1}, {"nullius-climatology-pack", 1},
        {"nullius-mechanical-pack", 1}, {"nullius-electrical-pack", 1}
      },
      time = 30
    },
    prerequisites = {"nullius-typesetting-2", "nullius-empiricism-2"}
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
    prerequisites = {"nullius-typesetting-3", "nullius-copper-production", "nullius-uranium-processing"}
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
      {"nullius-small-dispatch-chest-1", 1},
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
    result = "railway-motor-car-equipment"
  },
  {
    type = "recipe",
    name = "nullius-railway-motorcar-2",
    enabled = false,
	always_show_made_in = true,
    category = "large-crafting",
    energy_required = 25,
    ingredients = {
      {"railway-motor-car-equipment", 1},
      {"nullius-solar-locomotive", 1},
      {"nullius-small-assembler-3", 1}
    },
    result = "railway-motor-car-nuclear-equipment"
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


if mods["crafting_combinator"] then
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


if mods["GCKI"] then
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
      count = 50,
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
