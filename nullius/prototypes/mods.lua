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
      {"nullius-arithmetic-circuit", 2},
	  {"green-wire", 4}
    },
    result = "logistic-train-stop"
  }
})
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
      {"nullius-sensor-node-1", 1},
      {"nullius-antenna", 2}
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
	  {"nullius-substation-1", 4},
	  {"nullius-lamp-1", 4}
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
      {"nullius-cement", 800},
      {"nullius-refractory-brick", 500},
      {"nullius-steel-beam", 400},
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
    energy_required = 80,
    ingredients = {
      {"factory-2", 3},
      {"stone-wall", 150},
      {"gate", 15},
      {"nullius-grid-battery-1", 8},
	  {"nullius-sensor-node-1", 1}
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
      {"nullius-arithmetic-circuit", 1}
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
    type = "technology",
    name = "nullius-miniloader-1",
    order = "nullius-dg",
	icons = data.raw.technology["fast-miniloader"].icons,
    effects = {
      {
        type = "unlock-recipe",
        recipe = "nullius-miniloader-1"
      },
	  {
        type = "unlock-recipe",
        recipe = "nullius-filter-miniloader-1"
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
	prerequisites = {"nullius-freight-logistics", "nullius-logistics-2"}
  },
  {
    type = "technology",
    name = "nullius-miniloader-2",
    order = "nullius-ek",
	icons = data.raw.technology["express-miniloader"].icons,
    effects = {
      {
        type = "unlock-recipe",
        recipe = "nullius-miniloader-2"
      },
	  {
        type = "unlock-recipe",
        recipe = "nullius-filter-miniloader-2"
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
	prerequisites = {"nullius-storage-3", "nullius-miniloader-1"}
  },
  {
    type = "technology",
    name = "nullius-miniloader-3",
    order = "nullius-fo",
	icons = data.raw.technology["ultimate-miniloader"].icons,
    effects = {
      {
        type = "unlock-recipe",
        recipe = "nullius-miniloader-3"
      },
	  {
        type = "unlock-recipe",
        recipe = "nullius-filter-miniloader-3"
      }
    },
    unit = {
      count = 3000,
      ingredients = {
        {"nullius-geology-pack", 1}, {"nullius-climatology-pack", 1},
        {"nullius-mechanical-pack", 1}, {"nullius-electrical-pack", 1},
        {"nullius-chemical-pack", 1}, {"nullius-physics-pack", 1}
      },
      time = 50
    },
	prerequisites = {"nullius-distribution-3", "nullius-miniloader-2"}
  },
  
  {
    type = "recipe",
    name = "nullius-miniloader-1",
    enabled = false,
	always_show_made_in = true,
    category = "medium-crafting",
    energy_required = 4,
    ingredients = {
      {type="item", name="nullius-small-chest-2", amount=1},
      {type="item", name="fast-underground-belt", amount=2},
      {type="item", name="turbo-inserter", amount=3}
    },
    result = "fast-miniloader"
  },
  {
    type = "recipe",
    name = "nullius-filter-miniloader-1",
    enabled = false,
	always_show_made_in = true,
    category = "medium-crafting",
    energy_required = 4,
    ingredients = {
      {type="item", name="nullius-small-chest-2", amount=1},
      {type="item", name="fast-underground-belt", amount=2},
      {type="item", name="turbo-filter-inserter", amount=3}
    },
    result = "fast-filter-miniloader"
  },
  {
    type = "recipe",
    name = "nullius-miniloader-2",
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
    name = "nullius-filter-miniloader-2",
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
    name = "nullius-miniloader-3",
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
  },
  {
    type = "recipe",
    name = "nullius-filter-miniloader-3",
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
		{"nullius-lamp-1", 1},
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
		{"nullius-memory-circuit", 1},
		{"nullius-arithmetic-circuit", 1}
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
    prerequisites = {"nullius-locomotion-1"}
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
	  {"nullius-turbine-3", 2},
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
