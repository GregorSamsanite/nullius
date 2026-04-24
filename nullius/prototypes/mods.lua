local ICONPATH = "__nullius__/graphics/icons/"
local ENTITYPATH = "__nullius__/graphics/entity/"

if mods["elevated-rails"] then
data:extend({
  {
    type = "technology",
    name = "nullius-elevated-rails",
    order = "nullius-em",
    icon = "__elevated-rails__/graphics/technology/elevated-rail.png",
    icon_size = 256,
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "nullius-rail-support"
      },
      {
        type = "unlock-recipe",
        recipe = "nullius-rail-ramp"
      },
      {
        type = "rail-planner-allow-elevated-rails",
        modifier = true
      },
    },
    prerequisites = {"nullius-architecture-1"},
    unit = {
      count = 560,
      ingredients = {
        {"nullius-geology-pack", 1},
        {"nullius-climatology-pack", 1},
        {"nullius-mechanical-pack", 2},
        {"nullius-chemical-pack", 1}
      },
      time = 35
    }
  },
  {
    type = "recipe",
    name = "nullius-rail-support",
    localised_name = {"entity-name.nullius-rail-pylon"},
    enabled = false,
    category = "large-crafting",
    always_show_made_in = true,
    show_amount_in_title = false,
    always_show_products = true,
    energy_required = 8,
    ingredients = {
      {type = "item", name = "stone-wall", amount = 6},
      {type = "item", name = "nullius-pylon-2", amount = 1}
    },
    results = {{type="item", name="rail-support", amount = 1}}
  },
  {
    type = "recipe",
    name = "nullius-rail-ramp",
    localised_name = {"entity-name.rail-ramp"},
    enabled = false,
    category = "large-crafting",
    always_show_made_in = true,
    show_amount_in_title = false,
    always_show_products = true,
    energy_required = 20,
    ingredients = {
      {type = "item", name = "stone-wall", amount = 8},
      {type = "item", name = "nullius-steel-beam", amount = 10},
      {type = "item", name = "rail-support", amount = 1},
      {type = "item", name = "rail", amount = 8}
    },
    results = {{type="item", name="rail-ramp", amount = 1}}
  }
})
end

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
    localised_name = {"entity-name.logistic-train-stop"},
    enabled = false,
    category = "medium-crafting",
    always_show_made_in = true,
    energy_required = 3,
    ingredients = {
      {type = "item", name = "train-stop", amount = 1},
      {type = "item", name = "arithmetic-combinator", amount = 2},
      {type = "item", name = "nullius-green-wire", amount = 4}
    },
    results = {
		  {type = "item", name = "logistic-train-stop", amount = 1}
	  }
  }
})
end


if mods["LTN_Combinator_Modernized"] then
  data:extend({
    {
      type = "recipe",
      name = "nullius-ltn-combinator",
      localised_name = {"entity-name.ltn-combinator"},
      enabled = false,
      always_show_made_in = true,
      category = "tiny-crafting",
      energy_required = 2,
      ingredients = {
        {type = "item", name = "constant-combinator", amount = 1},
        {type = "item", name = "decider-combinator", amount = 1}
      },
      results = {
		  	{type = "item", name = "ltn-combinator", amount = 1}
		  }
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
    localised_name = {"entity-name.aai-signal-sender"},
    category = "huge-crafting",
    always_show_made_in = true,
    energy_required = 12,
    ingredients = {
      {type = "item", name = "nullius-beacon-1", amount = 1},
      {type = "item", name = "nullius-relay-1", amount = 2}
    },
    results = {
			{type = "item", name = "aai-signal-sender", amount = 1}
		},
    enabled = false
  },
  {
    type = "recipe",
    name = "nullius-aai-signal-receiver",
    localised_name = {"entity-name.aai-signal-receiver"},
    category = "huge-crafting",
    always_show_made_in = true,
    energy_required = 15,
    ingredients = {
      {type = "item", name = "radar", amount = 1},
      {type = "item", name = "programmable-speaker", amount = 2}
    },
    results = {
			{type = "item", name = "aai-signal-receiver", amount = 1}
		},
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
data.raw.roboport["aai-signal-sender"].energy_source.input_flow_limit = "5MW"
data.raw.roboport["aai-signal-sender"].energy_source.buffer_capacity = "1.2MJ"
data.raw.roboport["aai-signal-sender"].energy_usage = "2.5MW"
data.raw.roboport["aai-signal-sender"].recharge_minimum = "1MJ"
data.raw.roboport["aai-signal-receiver"].energy_source.input_flow_limit = "1.2MW"
data.raw.roboport["aai-signal-receiver"].energy_source.buffer_capacity = "330kJ"
data.raw.roboport["aai-signal-receiver"].energy_usage = "600kW"
data.raw.roboport["aai-signal-receiver"].recharge_minimum = "300kJ"
end


if mods["Factorissimo2"] or mods["factorissimo-2-notnotmelon"] then
data:extend({
  {
    type = "recipe",
    name = "nullius-factory-1",
    localised_name = {"entity-name.factory-1"},
    category = "huge-crafting",
    always_show_made_in = true,
    energy_required = 40,
    ingredients = {
      {type = "item", name = "stone-brick", amount = 200},
      {type = "item", name = "nullius-mortar", amount = 60},
      {type = "item", name = "nullius-glass", amount = 40},
      {type = "item", name = "substation", amount = 4},
      {type = "item", name = "small-lamp", amount = 4}
    },
    results = {
      {type = "item", name = "factory-1", amount = 1}
    },
    enabled = false
  },
  {
    type = "recipe",
    name = "nullius-factory-2",
    localised_name = {"entity-name.factory-2"},
    category = "huge-crafting",
    always_show_made_in = true,
    energy_required = 60,
    ingredients = {
      {type = "item", name = "factory-1", amount = 3},
      {type = "item", name = "concrete", amount = 800},
      {type = "item", name = "nullius-refractory-brick", amount = 500},
      {type = "item", name = "nullius-steel-beam", amount = 200},
      {type = "item", name = "nullius-red-wire", amount = 40}
    },
    results = {
      {type = "item", name = "factory-2", amount = 1}
    },
    enabled = false
  },
  {
    type = "recipe",
    name = "nullius-factory-3",
    localised_name = {"entity-name.factory-3"},
    category = "huge-crafting",
    always_show_made_in = true,
    energy_required = 90,
    ingredients = {
      {type = "item", name = "factory-2", amount = 3},
      {type = "item", name = "stone-wall", amount = 150},
      {type = "item", name = "gate", amount = 15},
      {type = "item", name = "nullius-grid-battery-1", amount = 8},
      {type = "item", name = "radar", amount = 1}
    },
    results = {
      {type = "item", name = "factory-3", amount = 1}
    },
    enabled = false
  }
})

if mods["factorissimo-2-notnotmelon"] then
data:extend({
  {
    type = "recipe",
    name = "nullius-factory-circuit-connector",
    localised_name = {"entity-name.factory-circuit-connector"},
    category = "small-crafting",
    always_show_made_in = true,
    energy_required = 2,
    ingredients = {
      {type = "item", name = "nullius-green-wire", amount = 3},
      {type = "item", name = "arithmetic-combinator", amount = 1}
    },
    results = {
      {type = "item", name = "factory-circuit-connector", amount = 1}
    },
    enabled = false
  }
})
else
data:extend({
  {
    type = "recipe",
    name = "nullius-factory-requester-chest",
    localised_name = {"entity-name.factory-requester-chest"},
    category = "medium-crafting",
    always_show_made_in = true,
    energy_required = 10,
    ingredients = {
      {type = "item", name = "nullius-small-demand-chest-1", amount = 4}
    },
    results = {
      {type = "item", name = "factory-requester-chest", amount = 1}
    },
    enabled = false
  },
  {
    type = "recipe",
    name = "nullius-factory-input-pipe",
    localised_name = {"entity-name.factory-input-pipe"},
    category = "medium-crafting",
    always_show_made_in = true,
    energy_required = 2,
    ingredients = {
      {type = "item", name = "nullius-underground-pipe-2", amount = 1},
      {type = "item", name = "nullius-pipe-2", amount = 4}
    },
    results = {
      {type = "item", name = "factory-input-pipe", amount = 1}
    },
    enabled = false
  },
  {
    type = "recipe",
    name = "nullius-factory-output-pipe",
    localised_name = {"entity-name.factory-output-pipe"},
    category = "medium-crafting",
    always_show_made_in = true,
    energy_required = 0.5,
    no_productivity = true,
    ingredients = {
      {type = "item", name = "factory-input-pipe", amount = 1}
    },
    results = {
      {type = "item", name = "factory-output-pipe", amount = 1}
    },
    enabled = false
  },
  {
    type = "recipe",
    name = "nullius-factory-circuit-input",
    localised_name = {"entity-name.factory-circuit-input"},
    category = "small-crafting",
    always_show_made_in = true,
    energy_required = 2,
    ingredients = {
      {type = "item", name = "nullius-green-wire", amount = 3},
      {type = "item", name = "arithmetic-combinator", amount = 1}
    },
    results = {
      {type = "item", name = "factory-circuit-input", amount = 1}
    },
    enabled = false
  },
  {
    type = "recipe",
    name = "nullius-factory-circuit-output",
    localised_name = {"entity-name.factory-circuit-output"},
    category = "small-crafting",
    always_show_made_in = true,
    no_productivity = true,
    energy_required = 0.5,
    ingredients = {
      {type = "item", name = "factory-circuit-input", amount = 1}
    },
    results = {
      {type = "item", name = "factory-circuit-output", amount = 1}
    },
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
    results = {
			{type = "item", name = "chute-miniloader", amount = 1}
		}
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
    results = {
			{type = "item", name = "miniloader", amount = 1}
		}
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
      {type="item", name="bob-turbo-inserter", amount=3}
    },
    results = {
			{type = "item", name = "fast-miniloader", amount = 1}
		}
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
      {type="item", name="bulk-inserter", amount=2}
    },
    results = {
			{type = "item", name = "express-miniloader", amount = 1}
		}
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
      {type="item", name="storage-chest", amount=1},
      {type="item", name="bob-ultimate-underground-belt", amount=1},
      {type="item", name="bob-express-bulk-inserter", amount=2}
    },
    results = {
			{type = "item", name = "ultimate-miniloader", amount = 1}
		}
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
      {type="item", name="bob-turbo-filter-inserter", amount=3}
    },
    results = {
			{type = "item", name = "fast-filter-miniloader", amount = 1}
		}
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
    results = {
			{type = "item", name = "express-filter-miniloader", amount = 1}
		}
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
      {type="item", name="storage-chest", amount=1},
      {type="item", name="bob-ultimate-underground-belt", amount=1},
      {type="item", name="express-stack-filter-inserter", amount=2} -- TODO: rename this ??
    },
    results = {
			{type = "item", name = "ultimate-filter-miniloader", amount = 1}
		}
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
    localised_name = {"entity-name.aai-basic-loader"},
    enabled = false,
    always_show_made_in = true,
    category = "medium-crafting",
    energy_required = 3,
    ingredients = {
      {type="item", name="wooden-chest", amount=1},
      {type="item", name="underground-belt", amount=1}
    },
    results = {
			{type = "item", name = "aai-basic-loader", amount = 1}
		}
  },
  {
    type = "recipe",
    name = "nullius-loader-2",
    localised_name = {"entity-name.aai-loader"},
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
    results = {
			{type = "item", name = "aai-loader", amount = 1}
		}
  },
  {
    type = "recipe",
    name = "nullius-loader-3",
    localised_name = {"entity-name.aai-fast-loader"},
    enabled = false,
    always_show_made_in = true,
    category = "medium-crafting",
    energy_required = 8,
    ingredients = {
      {type="item", name="aai-loader", amount=2},
      {type="item", name="iron-chest", amount=1},
      {type="item", name="fast-underground-belt", amount=2},
      {type="item", name="bob-turbo-inserter", amount=3}
    },
    results = {
			{type = "item", name = "aai-fast-loader", amount = 1}
		}
  },
  {
    type = "recipe",
    name = "nullius-loader-4",
    localised_name = {"entity-name.aai-express-loader"},
    enabled = false,
    always_show_made_in = true,
    category = "medium-crafting",
    energy_required = 12,
    ingredients = {
      {type="item", name="aai-fast-loader", amount=1},
      {type="item", name="steel-chest", amount=1},
      {type="item", name="express-underground-belt", amount=1},
      {type="item", name="bulk-inserter", amount=2}
    },
    results = {
			{type = "item", name = "aai-express-loader", amount = 1}
		}
  },
  {
    type = "recipe",
    name = "nullius-loader-5",
    localised_name = {"entity-name.aai-ultimate-loader"},
    enabled = false,
    always_show_made_in = true,
    category = "medium-crafting",
    energy_required = 20,
    ingredients = {
      {type="item", name="aai-express-loader", amount=2},
      {type="item", name="storage-chest", amount=1},
      {type="item", name="bob-ultimate-underground-belt", amount=1},
      {type="item", name="bob-express-bulk-inserter", amount=2}
    },
    results = {
			{type = "item", name = "aai-ultimate-loader", amount = 1}
		}
  }
})
end


if mods["train-pubsub"] then
data:extend({
  {
    type = "recipe",
    name = "nullius-train-publisher",
    localised_name = {"entity-name.train-publisher"},
    enabled = false,
    always_show_made_in = true,
    category = "small-crafting",
    energy_required = 3,
    ingredients = {
        {type = "item", name = "small-lamp", amount = 1},
        {type = "item", name = "train-config", amount = 2}
    },
    results = {
			{type = "item", name = "train-publisher", amount = 1}
		}
  },
  {
    type = "recipe",
    name = "nullius-subscriber-train-stop",
    localised_name = {"entity-name.subscriber-train-stop"},
    enabled = false,
    always_show_made_in = true,
    category = "large-crafting",
    energy_required = 4,
    ingredients = {
      {type = "item", name = "train-stop", amount = 1},
      {type = "item", name = "train-publisher", amount = 1},
      {type = "item", name = "nullius-small-supply-chest-1", amount = 1}
    },
    results = {
			{type = "item", name = "subscriber-train-stop", amount = 1}
		}
  },
  {
    type = "recipe",
    name = "nullius-publisher-train-stop",
    localised_name = {"entity-name.publisher-train-stop"},
    enabled = false,
    always_show_made_in = true,
    category = "large-crafting",
    energy_required = 4,
    ingredients = {
      {type = "item", name = "train-stop", amount = 1},
      {type = "item", name = "train-publisher", amount = 1},
      {type = "item", name = "nullius-small-demand-chest-1", amount = 1}
    },
    results = {
			{type = "item", name = "publisher-train-stop", amount = 1}
		}
  },
  {
    type = "recipe",
    name = "nullius-train-config",
    localised_name = {"entity-name.train-config"},
    enabled = false,
    always_show_made_in = true,
    category = "tiny-crafting",
    energy_required = 2,
    ingredients = {
        {type = "item", name = "constant-combinator", amount = 1},
        {type = "item", name = "arithmetic-combinator", amount = 1}
    },
    results = {
			{type = "item", name = "train-config", amount = 1}
		}
  }
})
end


if mods["Teleporters"] then
data:extend({
  {
    type = "recipe",
    name = "nullius-teleporter",
    localised_name = {"teleporter"},
    enabled = false,
    category = "nanotechnology",
    energy_required = 60,
    ingredients = {
      {type = "item", name = "nullius-productivity-module-2", amount = 4},
      {type = "item", name = "nullius-reactor", amount = 1},
      {type = "item", name = "nullius-box-gate", amount = 3},
      {type = "item", name = "nullius-sensor-node-3", amount = 2},
      {type = "item", name = "nullius-box-underground-pipe-4", amount = 5},
      {type = "item", name = "nullius-grid-battery-2", amount = 6}
    },
    results = {
			{type = "item", name = "teleporter", amount = 1}
		}
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
    localised_name = {"item-name.jetpack-1"},
    enabled = false,
    always_show_made_in = true,
    category = "medium-crafting",
    energy_required = 10,
    ingredients = {
      {type = "item", name = "nullius-robot-frame-1", amount = 1},
      {type = "item", name = "nullius-haste-module-1", amount = 1},
      {type = "item", name = "nullius-combustion-chamber-1", amount = 1},
      {type = "item", name = "nullius-turbine-open-1", amount = 2},
      {type = "item", name = "nullius-aluminum-plate", amount = 6}
    },
    results = {
			{type = "item", name = "jetpack-1", amount = 1}
		}
  },
  {
    type = "recipe",
    name = "nullius-jetpack-2",
    localised_name = {"item-name.jetpack-2"},
    enabled = false,
    always_show_made_in = true,
    category = "medium-crafting",
    energy_required = 15,
    ingredients = {
      {type = "item", name = "jetpack-1", amount = 1},
      {type = "item", name = "nullius-robot-frame-2", amount = 1},
      {type = "item", name = "nullius-haste-module-2", amount = 1},
      {type = "item", name = "nullius-combustion-chamber-2", amount = 2},
      {type = "item", name = "nullius-turbine-open-2", amount = 2},
      {type = "item", name = "nullius-ceramic-powder", amount = 8}
    },
    results = {
			{type = "item", name = "jetpack-2", amount = 1}
		}
  },
  {
    type = "recipe",
    name = "nullius-jetpack-3",
    localised_name = {"item-name.jetpack-3"},
    enabled = false,
    always_show_made_in = true,
    category = "medium-crafting",
    energy_required = 20,
    ingredients = {
      {type = "item", name = "jetpack-2", amount = 1},
      {type = "item", name = "nullius-robot-frame-3", amount = 1},
      {type = "item", name = "nullius-haste-module-3", amount = 2},
      {type = "item", name = "nullius-combustion-chamber-3", amount = 1},
      {type = "item", name = "nullius-turbine-open-3", amount = 2},
      {type = "item", name = "nullius-titanium-plate", amount = 10}
    },
    results = {
			{type = "item", name = "jetpack-3", amount = 1}
		}
  },
  {
    type = "recipe",
    name = "nullius-jetpack-4",
    localised_name = {"item-name.jetpack-4"},
    enabled = false,
    always_show_made_in = true,
    category = "medium-crafting",
    energy_required = 30,
    ingredients = {
      {type = "item", name = "jetpack-3", amount = 2},
      {type = "item", name = "nullius-robot-frame-4", amount = 1},
      {type = "item", name = "nullius-haste-module-4", amount = 2},
      {type = "item", name = "nullius-missile-launcher", amount = 4}
    },
    results = {
			{type = "item", name = "jetpack-4", amount = 1}
		}
  }
})
end


if mods["underground-pipe-pack"] then
data:extend({
  {
    type = "recipe",
    name = "nullius-surface-two-way-junction-1",
    --localised_name = {"entity-name.one-to-one-forward-t2-pipe"},
    enabled = false,
    always_show_made_in = true,
    category = "medium-crafting",
    energy_required = 3,
    ingredients = {
      {type = "item", name = "nullius-underground-pipe-2", amount = 2},
      {type = "item", name = "nullius-steel-plate", amount = 1},
      {type = "item", name = "nullius-rubber", amount = 1}
    },
    results = {
      {type = "item", name = "one-to-one-forward-t2-pipe", amount = 1}
    }
  },
  {
    type = "recipe",
    name = "nullius-surface-three-way-junction-1",
    --localised_name = {"entity-name.one-to-two-perpendicular-t2-pipe"},
    enabled = false,
    always_show_made_in = true,
    category = "medium-crafting",
    energy_required = 2,
    ingredients = {
      {type = "item", name = "one-to-one-forward-t2-pipe", amount = 1},
      {type = "item", name = "nullius-underground-pipe-2", amount = 1}
    },
    results = {
      {type = "item", name = "one-to-two-perpendicular-t2-pipe", amount = 1}
    }
  },
  {
    type = "recipe",
    name = "nullius-surface-four-way-junction-1",
    --localised_name = {"entity-name.one-to-three-forward-t2-pipe"},
    enabled = false,
    always_show_made_in = true,
    category = "medium-crafting",
    energy_required = 2,
    ingredients = {
      {type = "item", name = "one-to-two-perpendicular-t2-pipe", amount = 1},
      {type = "item", name = "nullius-underground-pipe-2", amount = 1}
    },
    results = {
      {type = "item", name = "one-to-three-forward-t2-pipe", amount = 1}
    }
  },
  {
    type = "recipe",
    name = "nullius-underground-straight-junction-1",
    --localised_name = {"entity-name.underground-i-t2-pipe"},
    enabled = false,
    always_show_made_in = true,
    category = "medium-crafting",
    energy_required = 4,
    ingredients = {
      {type = "item", name = "one-to-one-forward-t2-pipe", amount = 1},
      {type = "item", name = "nullius-underground-pipe-2", amount = 1},
      {type = "item", name = "nullius-glass", amount = 1}
    },
    results = {
      {type = "item", name = "underground-i-t2-pipe", amount = 1}
    }
  },
  {
    type = "recipe",
    name = "nullius-underground-elbow-junction-1",
    --localised_name = {"entity-name.underground-L-t2-pipe"},
    enabled = false,
    always_show_made_in = true,
    category = "medium-crafting",
    energy_required = 3,
    ingredients = {
      {type = "item", name = "underground-i-t2-pipe", amount = 1},
      {type = "item", name = "nullius-pipe-2", amount = 2}
    },
    results = {
      {type = "item", name = "underground-L-t2-pipe", amount = 1}
    }
  },
  {
    type = "recipe",
    name = "nullius-underground-three-way-junction-1",
    enabled = false,
    always_show_made_in = true,
    category = "medium-crafting",
    energy_required = 3,
    ingredients = {
      {type = "item", name = "underground-L-t2-pipe", amount = 1},
      {type = "item", name = "nullius-underground-pipe-2", amount = 1}
    },
    results = {
      {type = "item", name = "underground-t-t2-pipe", amount = 1}
    }
  },
  -- {
  --   type = "recipe",
  --   name = "nullius-adjustable-relief-valve",
  --   localised_name = {"item-name.nullius-adjustable-relief-valve"},
  --   enabled = false,
  --   always_show_made_in = true,
  --   category = "tiny-crafting",
  --   energy_required = 3,
  --   ingredients = {
  --     {type = "item", name = "nullius-one-way-valve", amount = 2}, --todo: rework valves with underground pipe pack
  --     {type = "item", name = "nullius-red-wire", amount = 1}
  --   },
  --   results = {
  --     {type = "item", name = "80-overflow-valve", amount = 1}
  --   }
  -- },

  {
    type = "recipe",
    name = "nullius-surface-two-way-junction-2",
    enabled = false,
    always_show_made_in = true,
    category = "medium-crafting",
    energy_required = 3,
    ingredients = {
      {type = "item", name = "one-to-one-forward-t2-pipe", amount = 1},
      {type = "item", name = "nullius-bearing", amount = 1},
      {type = "item", name = "nullius-underground-pipe-3", amount = 1}
    },
    results = {
      {type = "item", name = "one-to-one-forward-t3-pipe", amount = 1}
    }
  },
  {
    type = "recipe",
    name = "nullius-surface-three-way-junction-2",
    enabled = false,
    always_show_made_in = true,
    category = "medium-crafting",
    energy_required = 3,
    ingredients = {
      {type = "item", name = "one-to-two-perpendicular-t2-pipe", amount = 1},
      {type = "item", name = "nullius-bearing", amount = 1},
      {type = "item", name = "nullius-underground-pipe-3", amount = 2}
    },
    results = {
      {type = "item", name = "one-to-two-perpendicular-t3-pipe", amount = 1}
    }
  },
  {
    type = "recipe",
    name = "nullius-surface-four-way-junction-2",
    enabled = false,
    always_show_made_in = true,
    category = "medium-crafting",
    energy_required = 3,
    ingredients = {
      {type = "item", name = "one-to-three-forward-t2-pipe", amount = 1},
      {type = "item", name = "nullius-bearing", amount = 1},
      {type = "item", name = "nullius-underground-pipe-3", amount = 3}
    },
    results = {
      {type = "item", name = "one-to-three-forward-t3-pipe", amount = 1}
    }
  },
  {
    type = "recipe",
    name = "nullius-underground-straight-junction-2",
    enabled = false,
    always_show_made_in = true,
    category = "medium-crafting",
    energy_required = 4,
    ingredients = {
      {type = "item", name = "underground-i-t2-pipe", amount = 1},
      {type = "item", name = "nullius-underground-pipe-3", amount = 2}
    },
    results = {
      {type = "item", name = "underground-i-t3-pipe", amount = 1}
    }
  },
  {
    type = "recipe",
    name = "nullius-underground-elbow-junction-2",
    enabled = false,
    always_show_made_in = true,
    category = "medium-crafting",
    energy_required = 5,
    ingredients = {
      {type = "item", name = "underground-L-t2-pipe", amount = 1},
      {type = "item", name = "nullius-underground-pipe-3", amount = 3}
    },
    results = {
      {type = "item", name = "underground-L-t3-pipe", amount = 1}
    }
  },
  {
    type = "recipe",
    name = "nullius-underground-three-way-junction-2",
    enabled = false,
    always_show_made_in = true,
    category = "medium-crafting",
    energy_required = 6,
    ingredients = {
      {type = "item", name = "underground-t-t2-pipe", amount = 1},
      {type = "item", name = "nullius-underground-pipe-3", amount = 4}
    },
    results = {
      {type = "item", name = "underground-t-t3-pipe", amount = 1}
    }
  },
  -- {
  --   type = "recipe",
  --   name = "nullius-adjustable-top-up-valve",
  --   localised_name = {"item-name.nullius-adjustable-top-up-valve"},
  --   enabled = false,
  --   always_show_made_in = true,
  --   category = "tiny-crafting",
  --   energy_required = 3,
  --   ingredients = {
  --     {type = "item", name = "nullius-one-way-valve", amount = 2}, --todo: rework valves
  --     {type = "item", name = "nullius-red-wire", amount = 1}
  --   },
  --   results = {
  --     {type = "item", name = "80-top-up-valve", amount = 1}
  --   }
  -- },

  {
    type = "recipe",
    name = "nullius-surface-two-way-junction-3",
    enabled = false,
    always_show_made_in = true,
    category = "medium-crafting",
    energy_required = 4,
    ingredients = {
      {type = "item", name = "one-to-one-forward-t3-pipe", amount = 1},
      {type = "item", name = "nullius-underground-pipe-4", amount = 1}
    },
    results = {
      {type = "item", name = "one-to-one-forward-pipe", amount = 1}
    }
  },
  {
    type = "recipe",
    name = "nullius-surface-three-way-junction-3",
    enabled = false,
    always_show_made_in = true,
    category = "medium-crafting",
    energy_required = 4,
    ingredients = {
      {type = "item", name = "one-to-two-perpendicular-t3-pipe", amount = 1},
      {type = "item", name = "nullius-underground-pipe-4", amount = 2}
    },
    results = {
      {type = "item", name = "one-to-two-perpendicular-pipe", amount = 1}
    }
  },
  {
    type = "recipe",
    name = "nullius-surface-four-way-junction-3",
    enabled = false,
    always_show_made_in = true,
    category = "medium-crafting",
    energy_required = 4,
    ingredients = {
      {type = "item", name = "one-to-three-forward-t3-pipe", amount = 1},
      {type = "item", name = "nullius-underground-pipe-4", amount = 3}
    },
    results = {
      {type = "item", name = "one-to-three-forward-pipe", amount = 1}
    }
  },
  {
    type = "recipe",
    name = "nullius-surface-five-way-junction-3",
    enabled = false,
    always_show_made_in = true,
    category = "medium-crafting",
    energy_required = 3,
    ingredients = {
      {type = "item", name = "one-to-two-perpendicular-pipe", amount = 1},
      {type = "item", name = "one-to-one-forward-pipe", amount = 1}
    },
    results = {
      {type = "item", name = "one-to-four-pipe", amount = 1}
    }
  },
  {
    type = "recipe",
    name = "nullius-underground-straight-junction-3",
    enabled = false,
    always_show_made_in = true,
    category = "medium-crafting",
    energy_required = 6,
    ingredients = {
      {type = "item", name = "underground-i-t3-pipe", amount = 1},
      {type = "item", name = "nullius-hard-glass", amount = 1},
      {type = "item", name = "nullius-underground-pipe-4", amount = 2}
    },
    results = {
      {type = "item", name = "underground-i-pipe", amount = 1}
    }
  },
  {
    type = "recipe",
    name = "nullius-underground-elbow-junction-3",
    enabled = false,
    always_show_made_in = true,
    category = "medium-crafting",
    energy_required = 8,
    ingredients = {
      {type = "item", name = "underground-L-t3-pipe", amount = 1},
      {type = "item", name = "nullius-hard-glass", amount = 1},
      {type = "item", name = "nullius-underground-pipe-4", amount = 2}
    },
    results = {
      {type = "item", name = "underground-L-pipe", amount = 1}
    }
  },
  {
    type = "recipe",
    name = "nullius-underground-three-way-junction-3",
    enabled = false,
    always_show_made_in = true,
    category = "medium-crafting",
    energy_required = 10,
    ingredients = {
      {type = "item", name = "underground-t-t3-pipe", amount = 1},
      {type = "item", name = "nullius-hard-glass", amount = 1},
      {type = "item", name = "nullius-underground-pipe-4", amount = 3}
    },
    results = {
      {type = "item", name = "underground-t-pipe", amount = 1}
    }
  },
  {
    type = "recipe",
    name = "nullius-underground-four-way-junction-3",
    enabled = false,
    always_show_made_in = true,
    category = "medium-crafting",
    energy_required = 8,
    ingredients = {
      {type = "item", name = "underground-L-pipe", amount = 2},
      {type = "item", name = "nullius-underground-pipe-4", amount = 1}
    },
    results = {
      {type = "item", name = "underground-cross-pipe", amount = 1}
    }
  },
  {
    type = "recipe",
    name = "nullius-underground-pump",
    localised_name = {"item-name.nullius-underground-pump"},
    enabled = false,
    always_show_made_in = true,
    category = "small-crafting",
    energy_required = 12,
    ingredients = {
      {type = "item", name = "nullius-small-pump-2", amount = 3},
      {type = "item", name = "underground-i-pipe", amount = 2}
    },
    results = {
      {type = "item", name = "underground-mini-pump", amount = 1}
    }
  }
})
end


if mods["Warehousing"] then
data:extend({
  {
    type = "technology",
    name = "nullius-warehousing-1",
    localised_name = { "", {"technology-name.warehouse-research"}, " ", "1" },
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
    localised_name = { "", {"technology-name.warehouse-research"}, " ", "2" },
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
    localised_name = { "", {"technology-name.warehouse-research"}, " ", "3" },
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
    localised_name = { "", {"technology-name.warehouse-research"}, " ", "4" },
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
    localised_name = {"entity-name.storehouse-basic"},
    enabled = false,
    always_show_made_in = true,
    category = "large-crafting",
    energy_required = 6,
    ingredients = {
      {type = "item", name = "nullius-large-chest-1", amount = 3},
      {type = "item", name = "nullius-steel-beam", amount = 6},
      {type = "item", name = "nullius-glass", amount = 4}
    },
    results = {
			{type = "item", name = "storehouse-basic", amount = 1}
		}
  },
  {
    type = "recipe",
    name = "nullius-warehouse",
    localised_name = {"entity-name.warehouse-basic"},
    enabled = false,
    always_show_made_in = true,
    category = "huge-crafting",
    energy_required = 10,
    ingredients = {
      {type = "item", name = "storehouse-basic", amount = 4},
      {type = "item", name = "stone-brick", amount = 40},
      {type = "item", name = "nullius-mortar", amount = 10},
      {type = "item", name = "concrete", amount = 20}
    },
    results = {
			{type = "item", name = "warehouse-basic", amount = 1}
		}
  },
  {
    type = "recipe",
    name = "nullius-storehouse-storage",
    localised_name = {"entity-name.storehouse-storage"},
    enabled = false,
    always_show_made_in = true,
    category = "large-crafting",
    energy_required = 2,
    ingredients = {
      {type = "item", name = "storehouse-basic", amount = 1},
      {type = "item", name = "nullius-large-storage-chest-1", amount = 1}
    },
    results = {
			{type = "item", name = "storehouse-storage", amount = 1}
		}
  },
  {
    type = "recipe",
    name = "nullius-warehouse-storage",
    localised_name = {"entity-name.warehouse-storage"},
    enabled = false,
    always_show_made_in = true,
    category = "huge-crafting",
    energy_required = 5,
    ingredients = {
      {type = "item", name = "warehouse-basic", amount = 1},
      {type = "item", name = "nullius-large-storage-chest-1", amount = 2}
    },
    results = {
			{type = "item", name = "warehouse-storage", amount = 1}
		}
  },
  {
    type = "recipe",
    name = "nullius-storehouse-passive-provider",
    localised_name = {"entity-name.storehouse-passive-provider"},
    enabled = false,
    always_show_made_in = true,
    category = "large-crafting",
    energy_required = 2,
    ingredients = {
      {type = "item", name = "storehouse-basic", amount = 1},
      {type = "item", name = "nullius-large-supply-chest-1", amount = 1}
    },
    results = {
			{type = "item", name = "storehouse-passive-provider", amount = 1}
		}
  },
  {
    type = "recipe",
    name = "nullius-warehouse-passive-provider",
    localised_name = {"entity-name.warehouse-passive-provider"},
    enabled = false,
    always_show_made_in = true,
    category = "huge-crafting",
    energy_required = 5,
    ingredients = {
      {type = "item", name = "warehouse-basic", amount = 1},
      {type = "item", name = "nullius-large-supply-chest-1", amount = 2}
    },
    results = {
			{type = "item", name = "warehouse-passive-provider", amount = 1}
		}
  },
  {
    type = "recipe",
    name = "nullius-storehouse-requester",
    localised_name = {"entity-name.storehouse-requester"},
    enabled = false,
    always_show_made_in = true,
    category = "large-crafting",
    energy_required = 2,
    ingredients = {
      {type = "item", name = "storehouse-basic", amount = 1},
      {type = "item", name = "nullius-large-demand-chest-1", amount = 1}
    },
    results = {
			{type = "item", name = "storehouse-requester", amount = 1}
		}
  },
  {
    type = "recipe",
    name = "nullius-warehouse-requester",
    localised_name = {"entity-name.warehouse-requester"},
    enabled = false,
    always_show_made_in = true,
    category = "huge-crafting",
    energy_required = 5,
    ingredients = {
      {type = "item", name = "warehouse-basic", amount = 1},
      {type = "item", name = "nullius-large-demand-chest-1", amount = 2}
    },
    results = {
			{type = "item", name = "warehouse-requester", amount = 1}
		}
  },
  {
    type = "recipe",
    name = "nullius-storehouse-buffer",
    localised_name = {"entity-name.storehouse-buffer"},
    enabled = false,
    always_show_made_in = true,
    category = "large-crafting",
    energy_required = 2,
    ingredients = {
      {type = "item", name = "storehouse-basic", amount = 1},
      {type = "item", name = "nullius-large-buffer-chest-1", amount = 1}
    },
    results = {
			{type = "item", name = "storehouse-buffer", amount = 1}
		}
  },
  {
    type = "recipe",
    name = "nullius-warehouse-buffer",
    localised_name = {"entity-name.warehouse-buffer"},
    enabled = false,
    always_show_made_in = true,
    category = "huge-crafting",
    energy_required = 5,
    ingredients = {
      {type = "item", name = "warehouse-basic", amount = 1},
      {type = "item", name = "nullius-large-buffer-chest-1", amount = 2}
    },
    results = {
			{type = "item", name = "warehouse-buffer", amount = 1}
		}
  },
  {
    type = "recipe",
    name = "nullius-storehouse-active-provider",
    localised_name = {"entity-name.storehouse-active-provider"},
    enabled = false,
    always_show_made_in = true,
    category = "large-crafting",
    energy_required = 2,
    ingredients = {
      {type = "item", name = "storehouse-basic", amount = 1},
      {type = "item", name = "nullius-large-dispatch-chest-1", amount = 1}
    },
    results = {
			{type = "item", name = "storehouse-active-provider", amount = 1}
		}
  },
  {
    type = "recipe",
    name = "nullius-warehouse-active-provider",
    localised_name = {"entity-name.warehouse-active-provider"},
    enabled = false,
    always_show_made_in = true,
    category = "huge-crafting",
    energy_required = 5,
    ingredients = {
      {type = "item", name = "warehouse-basic", amount = 1},
      {type = "item", name = "nullius-large-dispatch-chest-1", amount = 2}
    },
    results = {
			{type = "item", name = "warehouse-active-provider", amount = 1}
		}
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
    localised_name = {"entity-name.logistic-chest-botUpgrader"},
    enabled = false,
    always_show_made_in = true,
    category = "medium-crafting",
    energy_required = 5,
    ingredients = {
      {type = "item", name = "nullius-small-demand-chest-1", amount = 1},
      {type = "item", name = "nullius-relay-2", amount = 1}
    },
    results = {
			{type = "item", name = "logistic-chest-botUpgrader", amount = 1}
		}
  }
})
end


if mods["FuelTrainStop"] then
data:extend({
  {
    type = "recipe",
    name = "nullius-fuel-train-stop",
    localised_name = {"entity-name.fuel-train-stop"},
    enabled = false,
	  always_show_made_in = true,
	  no_productivity = true,
    category = "medium-crafting",
    energy_required = 2,
    ingredients = {
      {type = "item", name = "train-stop", amount = 1},
      {type = "item", name = "rail-chain-signal", amount = 1}
    },
    results = {
			{type = "item", name = "fuel-train-stop", amount = 1}
		}
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
      {type = "item", name = "nullius-android-2", amount = 1},
      {type = "item", name = "nullius-asteroid-miner-2", amount = 1}
    },
    results = {
			{type = "item", name = "companion", amount = 1}
		}
  },
  {
    type = "recipe",
    name = "nullius-companion-reactor-equipment",
    enabled = false,
	  always_show_made_in = true,
    category = "medium-crafting",
    energy_required = 30,
    ingredients = {
      {type = "item", name = "nullius-reactor", amount = 1},
      {type = "item", name = "nullius-battery-2", amount = 6},
	  {type = "item", name = "nullius-antimatter", amount = 12}
    },
    results = {
			{type = "item", name = "companion-reactor-equipment", amount = 1}
		}
  },
  {
    type = "recipe",
    name = "nullius-companion-shield-equipment",
    enabled = false,
	always_show_made_in = true,
    category = "medium-crafting",
    energy_required = 5,
    ingredients = {
      {type = "item", name = "nullius-shield", amount = 1},
      {type = "item", name = "nullius-efficiency-module-3", amount = 1}
    },
    results = {
			{type = "item", name = "companion-shield-equipment", amount = 1}
		}
  },
  {
    type = "recipe",
    name = "nullius-companion-roboport-equipment",
    enabled = false,
	always_show_made_in = true,
    category = "medium-crafting",
    energy_required = 40,
    ingredients = {
      {type = "item", name = "nullius-drone-carrier-2", amount = 1},
      {type = "item", name = "nullius-hangar-3", amount = 1},
	  {type = "item", name = "nullius-construction-bot-4", amount = 6}
    },
    results = {
			{type = "item", name = "companion-roboport-equipment", amount = 1}
		}
  },
  {
    type = "recipe",
    name = "nullius-companion-defense-equipment",
    enabled = false,
	always_show_made_in = true,
    category = "medium-crafting",
    energy_required = 10,
    ingredients = {
      {type = "item", name = "nullius-turret", amount = 5},
      {type = "item", name = "nullius-demolition-drone", amount = 1}
    },
    results = {
			{type = "item", name = "companion-defense-equipment", amount = 1}
		}
  },
  {
    type = "recipe",
    name = "nullius-companion-fuel",
    enabled = false,
	always_show_made_in = true,
    category = "medium-crafting",
    energy_required = 2,
    ingredients = {
      {type = "item", name = "nullius-hydrogen-canister", amount = 3},
      {type = "item", name = "processed-fuel", amount = 1}
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
    localised_name = {"entity-name.railway-motor-car-base"},
    enabled = false,
	  always_show_made_in = true,
    category = "large-crafting",
    energy_required = 15,
    ingredients = {
      {type = "item", name = "nullius-locomotive-1", amount = 1},
      {type = "item", name = "nullius-large-chest-1", amount = 1},
	    {type = "item", name = "nullius-small-assembler-1", amount = 1}
    },
    results = {
			{type = "item", name = "railway-motor-car-base", amount = 1}
		}
  },
  {
    type = "recipe",
    name = "nullius-railway-motorcar-2",
    localised_name = {"entity-name.railway-motor-car-nuclear"},
    enabled = false,
	  always_show_made_in = true,
    category = "large-crafting",
    energy_required = 25,
    ingredients = {
      {type = "item", name = "railway-motor-car-base", amount = 1},
      {type = "item", name = "nullius-solar-locomotive", amount = 1},
      {type = "item", name = "nullius-small-assembler-3", amount = 1}
    },
    results = {
			{type = "item", name = "railway-motor-car-nuclear", amount = 1}
		}
  }
})
end


if mods["Inventory Sensor"] then
data:extend({
  {
    type = "recipe",
    name = "nullius-item-sensor",
    localised_name = {"entity-name.item-sensor"},
    enabled = false,
	  always_show_made_in = true,
    category = "small-crafting",
    energy_required = 5,
    ingredients = {
      {type = "item", name = "nullius-sensor-1", amount = 1},
      {type = "item", name = "nullius-green-wire", amount = 3}
    },
    results = {
			{type = "item", name = "item-sensor", amount = 1}
		}
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
        {type = "item", name = "constant-combinator", amount = 1},
        {type = "item", name = "nullius-red-wire", amount = 1}
      },
      results = {
			{type = "item", name = "crafting_combinator:crafting-combinator", amount = 1}
		}
    },
    {
      type = "recipe",
      name = "nullius-recipe-combinator",
      enabled = false,
      always_show_made_in = true,
      category = "small-crafting",
      energy_required = 2,
      ingredients = {
        {type = "item", name = "arithmetic-combinator", amount = 1},
        {type = "item", name = "nullius-red-wire", amount = 2}
      },
      results = {
			{type = "item", name = "crafting_combinator:recipe-combinator", amount = 1}
		}
    }
  })
end


if mods["UPSFriendlyNixieTubeDisplay"] then
  data:extend({
    {
      type = "recipe",
      name = "nullius-classic-nixie-tube",
      localised_name = {"entity-name.classic-nixie-tube"},
      enabled = false,
      always_show_made_in = true,
      category = "small-crafting",
      energy_required = 4,
      ingredients = {
        {type = "item", name = "constant-combinator", amount = 2},
        {type = "item", name = "small-lamp", amount = 3},
        {type = "item", name = "nullius-aluminum-wire", amount = 3},
        {type = "item", name = "nullius-glass", amount = 4}
      },
      results = {
			{type = "item", name = "classic-nixie-tube", amount = 1}
		}
    },    
    {
      type = "recipe",
      name = "nullius-reinforced-nixie-tube",
      localised_name = {"entity-name.reinforced-nixie-tube"},
      enabled = false,
      always_show_made_in = true,
      category = "medium-crafting",
      energy_required = 5,
      ingredients = {
        {type = "item", name = "classic-nixie-tube", amount = 1},
        {type = "item", name = "nullius-large-chest-1", amount = 1}
      },
      results = {
			{type = "item", name = "reinforced-nixie-tube", amount = 1}
		}
    },
    {
      type = "recipe",
      name = "nullius-small-reinforced-nixie-tube",
      localised_name = {"entity-name.small-reinforced-nixie-tube"},
      enabled = false,
      always_show_made_in = true,
      category = "small-crafting",
      energy_required = 3,
      ingredients = {
        {type = "item", name = "classic-nixie-tube", amount = 1},
		    {type = "item", name = "nullius-green-wire", amount = 2},
        {type = "item", name = "iron-chest", amount = 1}
      },
      results = {
			{type = "item", name = "small-reinforced-nixie-tube", amount = 1}
		}
    },
    {
      type = "technology",
      name = "nullius-reinforced-nixie-tubes-basic",
      icon = "__UPSFriendlyNixieTubeDisplay__/graphics/classic-nixie-tube-technology-icon.png",
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
          recipe = "nullius-classic-nixie-tube"
        }
      }
    },
    {
      type = "technology",
      name = "nullius-reinforced-nixie-tubes-reinforced",
      icon = "__UPSFriendlyNixieTubeDisplay__/graphics/reinforced-nixie-tube-technology-icon.png",
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
        "nullius-reinforced-nixie-tubes-basic"
      },
      order = "nullius-df",
      effects = {
        {
          type = "unlock-recipe",
          recipe = "nullius-reinforced-nixie-tube"
        },
        {
          type = "unlock-recipe",
          recipe = "nullius-small-reinforced-nixie-tube"
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
    localised_name = {"entity-name.hs_holo_sign"},
    enabled = false,
    always_show_made_in = true,
    category = "small-crafting",
    energy_required = 3,
    ingredients = {
      {type = "item", name = "constant-combinator", amount = 2},
      {type = "item", name = "small-lamp", amount = 3},
      {type = "item", name = "nullius-aluminum-plate", amount = 1},
	    {type = "item", name = "nullius-glass", amount = 2}
    },
    results = {
			{type = "item", name = "hs_holo_sign", amount = 1}
		}
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
      {type = "item", name = "radar", amount = 1},
      {type = "item", name = "nullius-robot-frame-1", amount = 1}
    },
    results = {
			{type = "item", name = "shuttle-lite", amount = 1}
		}
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
    localised_name = {"entity-name.duct-small"},
    enabled = false,
    always_show_made_in = true,
    category = "hand-casting",
    energy_required = 2,
    ingredients = {
      {type = "item", name = "nullius-box-steel-plate", amount = 1},
      {type = "item", name = "nullius-underground-pipe-3", amount = 1}
    },
    results = { 
      {type = "item", name = "duct-small", amount = 1},
    }
  },
  {
    type = "recipe",
    name = "nullius-duct-curve",
    localised_name = {"entity-name.duct-curve"},
    enabled = false,
    always_show_made_in = true,
    category = "large-crafting",
    energy_required = 2,
    ingredients = {
      {type = "item", name = "duct-small", amount = 2},
      {type = "item", name = "nullius-steel-rod", amount = 1}
    },
    results = { 
      {type = "item", name = "duct-curve", amount = 1},
    }
  },
  {
    type = "recipe",
    name = "nullius-duct-t-junction",
    localised_name = {"entity-name.duct-t-junction"},
    enabled = false,
    always_show_made_in = true,
    category = "large-crafting",
    energy_required = 3,
    ingredients = {
      {type = "item", name = "duct-small", amount = 3},
      {type = "item", name = "nullius-steel-rod", amount = 2}
    },
    results = { 
      {type = "item", name = "duct-t-junction", amount = 1},
    }
  },
  {
    type = "recipe",
    name = "nullius-duct-cross",
    localised_name = {"entity-name.duct-cross"},
    enabled = false,
    always_show_made_in = true,
    category = "large-crafting",
    energy_required = 4,
    ingredients = {
      {type = "item", name = "duct-small", amount = 4},
      {type = "item", name = "nullius-steel-rod", amount = 3}
    },
    results = { 
      {type = "item", name = "duct-cross", amount = 1},
    }
  },
  {
    type = "recipe",
    name = "nullius-duct-exhaust",
    localised_name = {"entity-name.duct-exhaust"},
    enabled = false,
    always_show_made_in = true,
    category = "large-crafting",
    energy_required = 5,
    ingredients = {
      {type = "item", name = "duct-cross", amount = 1},
      {type = "item", name = "nullius-outfall-2", amount = 1}
    },
    results = { 
      {type = "item", name = "duct-exhaust", amount = 1},
    }
  },
  {
    type = "recipe",
    name = "nullius-duct-intake",
    localised_name = {"entity-name.duct-intake"},
    enabled = false,
    always_show_made_in = true,
    category = "large-crafting",
    energy_required = 5,
    ingredients = {
      {type = "item", name = "duct-exhaust", amount = 1},
      {type = "item", name = "nullius-box-pump-2", amount = 1}
    },
    results = { 
      {type = "item", name = "duct-intake", amount = 1},
    }
  },
  {
    type = "technology",
    name = "nullius-ducts",
    localised_name = {"technology-name.ducts"},
    localised_description = {"technology-description.ducts"},
    icon = "__FluidMustFlow__/graphics/icons/technologies/ducts.png",
    icon_size = 256,
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
        recipe = "nullius-duct-exhaust",
      },
      {
        type = "unlock-recipe",
        recipe = "nullius-duct-intake",
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
    localised_name = {"entity-name.duct"},
    enabled = false,
    always_show_made_in = true,
    category = "large-crafting",
    energy_required = 2,
    ingredients = {
      {type = "item", name = "duct-small", amount = 2},
      {type = "item", name = "nullius-steel-rod", amount = 1}
    },
    results = { 
      {type = "item", name = "duct", amount = 1},
    }
  },
  {
    type = "recipe",
    name = "nullius-duct-long",
    localised_name = {"entity-name.duct-long"},
    enabled = false,
    always_show_made_in = true,
    category = "huge-crafting",
    energy_required = 2,
    ingredients = {
      {type = "item", name = "duct", amount = 2},
      {type = "item", name = "nullius-steel-rod", amount = 1}
    },
    results = { 
      {type = "item", name = "duct-long", amount = 1},
    }
  },
  {
    type = "recipe",
    name = "nullius-duct-underground",
    localised_name = {"entity-name.duct-underground"},
    enabled = false,
    always_show_made_in = true,
    category = "huge-crafting",
    energy_required = 6,
    ingredients = {
      {type = "item", name = "duct-long", amount = 3},
      {type = "item", name = "nullius-box-reinforced-concrete", amount = 4}
    },
    results = { 
      {type = "item", name = "duct-underground", amount = 1},
    }
  },
  {
    type = "recipe",
    name = "nullius-non-return-duct",
    localised_name = {"entity-name.non-return-duct"},
    enabled = false,
    always_show_made_in = true,
    category = "large-crafting",
    energy_required = 3,
    ingredients = {
      {type = "item", name = "duct", amount = 1},
      {type = "item", name = "nullius-box-one-way-valve", amount = 1}
    },
    results = { 
      {type = "item", name = "non-return-duct", amount = 1},
    }
  }
})
else
data:extend({
  {
    type = "recipe",
    name = "nullius-duct-underground",
    localised_name = {"entity-name.duct-underground"},
    enabled = false,
    always_show_made_in = true,
    category = "huge-crafting",
    energy_required = 6,
    ingredients = {
      {type = "item", name = "duct-small", amount = 12},
      {type = "item", name = "nullius-box-reinforced-concrete", amount = 4}
    },
    results = { 
      {type = "item", name = "duct-underground", amount = 1},
    }
  },
  {
    type = "recipe",
    name = "nullius-non-return-duct",
    localised_name = {"entity-name.non-return-duct"},
    enabled = false,
    always_show_made_in = true,
    category = "large-crafting",
    energy_required = 3,
    ingredients = {
      {type = "item", name = "duct-small", amount = 2},
      {type = "item", name = "nullius-box-one-way-valve", amount = 1}
    },
    results = { 
      {type = "item", name = "non-return-duct", amount = 1},
    }
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
      {type = "item", name = "rail", amount = 3},
      {type = "item", name = "gate", amount = 8},
      {type = "item", name = "stone-wall", amount = 12},
	  {type = "item", name = "nullius-large-chest-2", amount = 2},
	  {type = "item", name = "express-underground-belt", amount = 6},
	  {type = "item", name = "nullius-steel-beam", amount = 16}
    },
    results = {
			{type = "item", name = "railloader", amount = 1}
		}
  },
  {
    type = "recipe",
    name = "nullius-rail-unloader",
    enabled = false,
    always_show_made_in = true,
    category = "huge-crafting",
    energy_required = 8,
    ingredients = {
      {type = "item", name = "rail", amount = 3},
      {type = "item", name = "gate", amount = 8},
      {type = "item", name = "stone-wall", amount = 12},
	  {type = "item", name = "nullius-large-chest-2", amount = 2},
	  {type = "item", name = "express-underground-belt", amount = 6},
	  {type = "item", name = "concrete", amount = 36}
    },
    results = {
			{type = "item", name = "railunloader", amount = 1}
		}
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
    localised_name = {"entity-name.nullius-thrower", tostring(1)},
    enabled = false,
    always_show_made_in = true,
	  GCKI_ignore = true,
    category = "medium-crafting",
    energy_required = 3,
    ingredients = {
      {type = "item", name = "inserter", amount = 2},
      {type = "item", name = "nullius-motor-1", amount = 1}
    },
    results = {
			{type = "item", name = "inserter", amount = 1}
		}
  },
  {
    type = "recipe",
    name = "nullius-thrower-2",
    localised_name = {"entity-name.nullius-thrower", tostring(2)},
    enabled = false,
    always_show_made_in = true,
	  GCKI_ignore = true,
    category = "medium-crafting",
    energy_required = 2,
    ingredients = {
      {type = "item", name = "RTThrower-inserter-Item", amount = 1},
      {type = "item", name = "bob-turbo-inserter", amount = 1},
	  {type = "item", name = "nullius-motor-2", amount = 1}
    },
    results = {
			{type = "item", name = "bob-turbo-inserter", amount = 1}
		}
  },
  {
    type = "recipe",
    name = "nullius-thrower-3",
    localised_name = {"entity-name.nullius-thrower", tostring(3)},
    enabled = false,
    always_show_made_in = true,
	  GCKI_ignore = true,
    category = "medium-crafting",
    energy_required = 2,
    ingredients = {
      {type = "item", name = "RTThrower-bob-turbo-inserter-Item", amount = 1},
      {type = "item", name = "bulk-inserter", amount = 2}
    },
    results = {
			{type = "item", name = "bulk-inserter", amount = 1}
		}
  },
  {
    type = "recipe",
    name = "nullius-thrower-4",
    localised_name = {"entity-name.nullius-thrower", tostring(4)},
    enabled = false,
    always_show_made_in = true,
	  GCKI_ignore = true,
    category = "medium-crafting",
    energy_required = 3,
    ingredients = {
      {type = "item", name = "RTThrower-bulk-inserter-Item", amount = 1},
      {type = "item", name = "bob-express-bulk-inserter", amount = 2}
    },
    results = {
			{type = "item", name = "bob-express-bulk-inserter", amount = 1}
		}
  },
  {
    type = "recipe",
    name = "nullius-open-chest",
    localised_name = {"entity-name.OpenContainer"},
    enabled = false,
    always_show_made_in = true,
    no_productivity = true,
    category = "medium-crafting",
    energy_required = 0.5,
    ingredients = {
      {type = "item", name = "wooden-chest", amount = 1}
    },
    results = {
			{type = "item", name = "OpenContainer", amount = 1}
		}
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
      {type = "item", name = "OpenContainer", amount = 1}
    },
    results = {
			{type = "item", name = "wooden-chest", amount = 1}
		}
  },
  {
    type = "recipe",
    name = "nullius-hatch",
    localised_name = {"entity-name.HatchRT"},
    enabled = false,
    always_show_made_in = true,
    category = "medium-crafting",
    energy_required = 2,
    ingredients = {
      {type = "item", name = "nullius-underground-pipe-2", amount = 1},
	    {type = "item", name = "nullius-one-way-valve", amount = 1},
      {type = "item", name = "nullius-steel-rod", amount = 1}
    },
    results = {
			{type = "item", name = "HatchRT", amount = 1}
		}
  },
  {
    type = "recipe",
    name = "nullius-ejector-hatch",
    localised_name = {"entity-name.RTThrower-EjectorHatchRT"},
    enabled = false,
    always_show_made_in = true,
    category = "medium-crafting",
    energy_required = 2,
    ingredients = {
      {type = "item", name = "HatchRT", amount = 1},
	    {type = "item", name = "RTThrower-bob-turbo-inserter-Item", amount = 1},
      {type = "item", name = "fast-underground-belt", amount = 1}
    },
    results = {
			{type = "item", name = "RTThrower-EjectorHatchRT", amount = 1}
		}
  },
  {
    type = "recipe",
    name = "nullius-player-thrower",
    localised_name = {"entity-name.PlayerLauncher"},
    enabled = false,
    always_show_made_in = true,
    category = "medium-crafting",
    energy_required = 2,
    ingredients = {
      {type="item", name="RTThrower-inserter-Item", amount=1},
      {type="item", name="nullius-steel-plate", amount=2}
    },
    results = {
			{type = "item", name = "PlayerLauncher", amount = 1}
		}
  },
  {
    type = "recipe",
    name = "nullius-bounce-plate",
    localised_name = {"entity-name.RTBouncePlate"},
    enabled = false,
    always_show_made_in = true,
    category = "medium-crafting",
    energy_required = 3,
    ingredients = {
      {type = "item", name = "nullius-rubber", amount = 4},
      {type = "item", name = "nullius-iron-wire", amount = 3},
	  {type = "item", name = "nullius-steel-rod", amount = 2}
    },
    results = {
			{type = "item", name = "RTBouncePlate", amount = 1}
		}
  },
  {
    type = "recipe",
    name = "nullius-directed-bounce-plate",
    localised_name = {"entity-name.DirectedBouncePlate"},
    enabled = false,
    always_show_made_in = true,
    category = "medium-crafting",
    energy_required = 1,
    ingredients = {
      {type = "item", name = "RTBouncePlate", amount = 1},
      {type = "item", name = "stone-brick", amount = 6}
    },
    results = {
			{type = "item", name = "DirectedBouncePlate", amount = 1}
		}
  },
  -- {
  --   type = "recipe",
  --   name = "nullius-signal-bounce-plate", -- Recently removed by the original mod
  --   enabled = false,
  --   always_show_made_in = true,
  --   category = "small-crafting",
  --   energy_required = 1,
  --   ingredients = {
  --     {type = "item", name = "RTBouncePlate", amount = 1},
	--   {type = "item", name = "constant-combinator", amount = 1}
  --   },
  --   results = {
	-- 		{type = "item", name = "SignalBouncePlate", amount = 1}
	-- 	}
  -- },
  {
    type = "recipe",
    name = "nullius-director-bounce-plate",
    localised_name = {"entity-name.DirectorBouncePlate"},
    enabled = false,
    always_show_made_in = true,
    category = "medium-crafting",
    energy_required = 3,
    ingredients = {
      {type = "item", name = "DirectedBouncePlate", amount = 1},
	  {type = "item", name = "nullius-motor-2", amount = 1},
      {type = "item", name = "nullius-iron-gear", amount = 3},
	  {type = "item", name = "nullius-sensor-1", amount = 1}
    },
    results = {
			{type = "item", name = "DirectorBouncePlate", amount = 1}
		}
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
    localised_name = {"item-name.RTZiplineTrolley"},
    enabled = false,
    always_show_made_in = true,
    category = "medium-crafting",
    energy_required = 3,
    ingredients = {
      {type = "item", name = "nullius-locomotive-1", amount = 1},
	    {type = "item", name = "nullius-iron-wire", amount = 2}
    },
    results = {
			{type = "item", name = "RTZiplineTrolley", amount = 1}
		}
  },
  {
    type = "recipe",
    name = "nullius-zipline-trolley-2",
    localised_name = {"item-name.RTZiplineTrolley2"},
    enabled = false,
    always_show_made_in = true,
    category = "medium-crafting",
    energy_required = 6,
    ingredients = {
      {type = "item", name = "RTZiplineTrolley", amount = 2},
	    {type = "item", name = "nullius-motor-2", amount = 3},
	    {type = "item", name = "nullius-steel-cable", amount = 10}
    },
    results = {
			{type = "item", name = "RTZiplineTrolley2", amount = 1}
		}
  },
  {
    type = "recipe",
    name = "nullius-zipline-trolley-3",
    localised_name = {"item-name.RTZiplineTrolley3"},
    enabled = false,
    always_show_made_in = true,
    category = "medium-crafting",
    energy_required = 12,
    ingredients = {
      {type = "item", name = "RTZiplineTrolley2", amount = 1},
	    {type = "item", name = "nullius-locomotive-2", amount = 1},
	    {type = "item", name = "nullius-textile", amount = 8},
	    {type = "item", name = "nullius-speed-module-2", amount = 1}
    },
    results = {
			{type = "item", name = "RTZiplineTrolley3", amount = 1}
		}
  },
  {
    type = "recipe",
    name = "nullius-zipline-trolley-4",
    localised_name = {"item-name.RTZiplineTrolley4"},
    enabled = false,
    always_show_made_in = true,
    category = "medium-crafting",
    energy_required = 25,
    ingredients = {
      {type = "item", name = "RTZiplineTrolley3", amount = 1},
	    {type = "item", name = "nullius-motor-3", amount = 4},
	    {type = "item", name = "nullius-carbon-composite", amount = 12},
	    {type = "item", name = "nullius-bearing", amount = 12},
	    {type = "item", name = "nullius-levitation-field-1", amount = 2}
    },
    results = {
			{type = "item", name = "RTZiplineTrolley4", amount = 1}
		}
  },
  {
    type = "recipe",
    name = "nullius-zipline-trolley-5",
    localised_name = {"item-name.RTZiplineTrolley5"},
    enabled = false,
    always_show_made_in = true,
    category = "medium-crafting",
    energy_required = 50,
    ingredients = {
      {type = "item", name = "RTZiplineTrolley4", amount = 2},
	    {type = "item", name = "nullius-locomotive-3", amount = 1},
	    {type = "item", name = "nullius-titanium-rod", amount = 6},
	    {type = "item", name = "nullius-speed-module-3", amount = 3},
	    {type = "item", name = "nullius-stabilizer-1", amount = 2}
    },
    results = {
			{type = "item", name = "RTZiplineTrolley5", amount = 1}
		}
  },
  {
    type = "recipe",
    name = "nullius-zipline-control",
    localised_name = {"item-name.RTZiplineControls"},
    enabled = false,
    always_show_made_in = true,
    category = "medium-crafting",
    energy_required = 2,
    ingredients = {
      {type = "item", name = "power-switch", amount = 1},
	    {type = "item", name = "decider-combinator", amount = 1}
    },
    results = {
			{type = "item", name = "RTZiplineControls", amount = 1}
		}
  },
  {
    type = "recipe",
    name = "nullius-zipline-crank-control",
    localised_name = {"item-name.RTZiplineCrankControls"},
    enabled = false,
    always_show_made_in = true,
    category = "medium-crafting",
    energy_required = 1,
    ingredients = {
      {type = "item", name = "RTZiplineControls", amount = 1},
	    {type = "item", name = "nullius-steel-rod", amount = 1},
	    {type = "item", name = "nullius-steel-gear", amount = 2}
    },
    results = {
			{type = "item", name = "RTZiplineCrankControls", amount = 1}
		}
  },
  {
    type = "recipe",
    name = "nullius-zipline-smart-control",
    localised_name = {"item-name.RTProgrammableZiplineControls"},
    enabled = false,
    always_show_made_in = true,
    category = "tiny-crafting",
    energy_required = 5,
    ingredients = {
      {type = "item", name = "RTZiplineControls", amount = 1},
	    {type = "item", name = "nullius-speed-module-1", amount = 1},
	    {type = "item", name = "programmable-speaker", amount = 1},
	    {type = "item", name = "nullius-sensor-1", amount = 1}
    },
    results = {
			{type = "item", name = "RTProgrammableZiplineControls", amount = 1}
		}
  },
  {
    type = "recipe",
    name = "nullius-zipline-terminal",
    localised_name = {"entity-name.RTZiplineTerminal"},
    enabled = false,
    always_show_made_in = true,
    category = "large-crafting",
    energy_required = 15,
    ingredients = {
      {type = "item", name = "RTProgrammableZiplineControls", amount = 1},
	    {type = "item", name = "train-stop", amount = 1},
	    {type = "item", name = "nullius-steel-cable", amount = 12},
	    {type = "item", name = "big-electric-pole", amount = 1}
    },
    results = {
			{type = "item", name = "RTZiplineTerminal", amount = 1}
		}
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
    localised_name = {"entity-name.RTTrainRamp"},
    enabled = false,
    always_show_made_in = true,
    category = "large-crafting",
    energy_required = 4,
    ingredients = {
      {type = "item", name = "rail", amount = 2},
	    {type = "item", name = "concrete", amount = 25},
	    {type = "item", name = "nullius-steel-beam", amount = 4}
    },
    results = {
			{type = "item", name = "RTTrainRamp", amount = 1}
		}
  },
  {
    type = "recipe",
    name = "nullius-magnetic-ramp",
    localised_name = {"entity-name.RTMagnetTrainRamp"},
    enabled = false,
    always_show_made_in = true,
    category = "large-crafting",
    energy_required = 6,
    ingredients = {
      {type = "item", name = "RTTrainRamp", amount = 1},
	    {type = "item", name = "nullius-grid-battery-1", amount = 1},
	    {type = "item", name = "nullius-beacon-2", amount = 1},
	    {type = "item", name = "nullius-levitation-field-1", amount = 4}
    },
    results = {
			{type = "item", name = "RTMagnetTrainRamp", amount = 1}
		}
  },
  {
    type = "recipe",
    name = "nullius-impact-unloader",
    localised_name = {"entity-name.RTImpactUnloader"},
    enabled = false,
    always_show_made_in = true,
    category = "large-crafting",
    energy_required = 5,
    ingredients = {
      {type = "item", name = "stone-wall", amount = 6},
      {type = "item", name = "refined-concrete", amount = 30},
	    {type = "item", name = "nullius-steel-plate", amount = 12},
	    {type = "item", name = "RTTrainDirectedBouncePlate", amount = 1}
    },
    results = {
			{type = "item", name = "RTImpactUnloader", amount = 1}
		}
  },
  {
    type = "recipe",
    name = "nullius-impact-wagon",
    localised_name = {"entity-name.RTImpactWagon"},
    enabled = false,
    always_show_made_in = true,
    category = "large-crafting",
    energy_required = 4,
    ingredients = {
      {type = "item", name = "nullius-cargo-wagon-2", amount = 1},
      {type = "item", name = "HatchRT", amount = 5},
	    {type = "item", name = "nullius-steel-gear", amount = 4},
	    {type = "item", name = "nullius-steel-plate", amount = 10}
    },
    results = {
			{type = "item", name = "RTImpactWagon", amount = 1}
		}
  }
})
if settings.startup["RTThrowersSetting"].value then
data:extend({
  {
    type = "recipe",
    name = "nullius-train-bounce-plate",
    localised_name = {"entity-name.RTTrainBouncePlate"},
    enabled = false,
    always_show_made_in = true,
    category = "large-crafting",
    energy_required = 5,
    ingredients = {
      {type = "item", name = "RTBouncePlate", amount = 6},
      {type = "item", name = "nullius-textile", amount = 12},
	  {type = "item", name = "nullius-steel-beam", amount = 4}
    },
    results = {
			{type = "item", name = "RTTrainBouncePlate", amount = 1}
		}
  },
  {
    type = "recipe",
    name = "nullius-train-directed-bounce-plate",
    localised_name = {"entity-name.RTTrainDirectedBouncePlate"},
    enabled = false,
    always_show_made_in = true,
    category = "large-crafting",
    energy_required = 2,
    ingredients = {
      {type = "item", name = "RTTrainBouncePlate", amount = 1},
      {type = "item", name = "RTTrainRamp", amount = 1}
    },
    results = {
			{type = "item", name = "RTTrainDirectedBouncePlate", amount = 1}
		}
  }
})
else
data.raw.recipe["nullius-impact-unloader"].ingredients[4] =
    {type = "item", name = "nullius-rubber", amount = 30}
data.raw.recipe["nullius-impact-wagon"].ingredients[2] =
    {type = "item", name = "nullius-one-way-valve", amount = 8}
end
end

if settings.startup["RTThrowersSetting"].value then
data:extend({
  {
    type = "technology",
    name = "nullius-logistic-ballistics-1",
    order = "nullius-cd",
	  icon = "__RenaiTransportation__/graphics/technology/ThrowerTech.png",
	  icon_size = 256,
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
	  icon = "__RenaiTransportation__/graphics/technology/start.png",
	  icon_size = 256,
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
	  icon = "__RenaiTransportation__/graphics/icons/hatch_icon.png",
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
	  icon = "__RenaiTransportation__/graphics/technology/PrimerPlateIconn.png",
	  icon_size = 256,
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
	  icon = "__RenaiTransportation__/graphics/technology/ThrowerTech.png",
	  icon_size = 256,
    effects = {
      {
        type = "unlock-recipe",
        recipe = "nullius-thrower-2"
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
	  icon = "__RenaiTransportation__/graphics/icons/DirectorPlateIcon.png",
	  icon_size = 256,
    effects = {
      -- {
      --   type = "unlock-recipe",
      --   recipe = "nullius-signal-bounce-plate"
      -- },
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
	  icon = "__RenaiTransportation__/graphics/technology/ThrowerTech.png",
	  icon_size = 256,
    effects = {
      {
        type = "unlock-recipe",
        recipe = "nullius-thrower-3"
      },
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
	  icon = "__RenaiTransportation__/graphics/technology/ThrowerTech.png",
	  icon_size = 256,
    effects = {
      {
        type = "unlock-recipe",
        recipe = "nullius-thrower-4"
      },
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
	  icon = "__RenaiTransportation__/graphics/technology/Zipline_crankcontrols.png",
	  icon_size = 256,
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
	  icon = "__RenaiTransportation__/graphics/technology/Zipline_terminaltech.png",
	  icon_size = 256,
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
	  icon = "__RenaiTransportation__/graphics/technology/Zipline1.png",
	  icon_size = 256,
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
	  icon = "__RenaiTransportation__/graphics/technology/Zipline2.png",
	  icon_size = 256,
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
	  icon = "__RenaiTransportation__/graphics/technology/Zipline3.png",
	  icon_size = 256,
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
	  icon = "__RenaiTransportation__/graphics/technology/FlyingFreight.png",
	  icon_size = 256,
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
	  icon = "__RenaiTransportation__/graphics/technology/FlyingFreightPlate.png",
	  icon_size = 256,
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
	  icon = "__RenaiTransportation__/graphics/technology/Impact.png",
	  icon_size = 256,
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
	  icon = "__RenaiTransportation__/graphics/technology/MagnetFreight.png",
	  icon_size = 256,
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
      {type = "item", name = "nullius-rubber", amount = 1},
      {type = "item", name = "nullius-glass", amount = 1},
      {type = "item", name = "nullius-steel-sheet", amount = 2}
    },
    results = {
			{type = "item", name = "iron-display-small", amount = 1}
		}
  },
  {
    type = "recipe",
    name = "nullius-display-plate-medium-steel",
    enabled = false,
    always_show_made_in = true,
    category = "medium-crafting",
    energy_required = 2,
    ingredients = {
      {type = "item", name = "iron-display-small", amount = 4},
	  {type = "item", name = "small-lamp", amount = 1}
    },
    results = {
			{type = "item", name = "iron-display-medium", amount = 1}
		}
  },
  {
    type = "recipe",
    name = "nullius-display-plate-large-steel",
    enabled = false,
    always_show_made_in = true,
    category = "medium-crafting",
    energy_required = 5,
    ingredients = {
      {type = "item", name = "iron-display-small", amount = 9},
	  {type = "item", name = "small-lamp", amount = 4}
    },
    results = {
			{type = "item", name = "iron-display", amount = 1}
		}
  },
  {
    type = "recipe",
    name = "nullius-display-plate-small-aluminum",
    enabled = false,
    always_show_made_in = true,
    category = "medium-crafting",
    energy_required = 2,
    ingredients = {
      {type = "item", name = "nullius-rubber", amount = 1},
      {type = "item", name = "nullius-glass", amount = 1},
      {type = "item", name = "nullius-aluminum-sheet", amount = 3}
    },
    results = {
			{type = "item", name = "steel-display-small", amount = 1}
		}
  },
  {
    type = "recipe",
    name = "nullius-display-plate-medium-aluminum",
    enabled = false,
    always_show_made_in = true,
    category = "medium-crafting",
    energy_required = 2,
    ingredients = {
      {type = "item", name = "steel-display-small", amount = 4},
	  {type = "item", name = "small-lamp", amount = 1}
    },
    results = {
			{type = "item", name = "steel-display-medium", amount = 1}
		}
  },
  {
    type = "recipe",
    name = "nullius-display-plate-large-aluminum",
    enabled = false,
    always_show_made_in = true,
    category = "medium-crafting",
    energy_required = 5,
    ingredients = {
      {type = "item", name = "steel-display-small", amount = 9},
	  {type = "item", name = "small-lamp", amount = 4}
    },
    results = {
			{type = "item", name = "steel-display", amount = 1}
		}
  },
  {
    type = "recipe",
    name = "nullius-display-plate-small-plastic",
    enabled = false,
    always_show_made_in = true,
    category = "medium-crafting",
    energy_required = 2,
    ingredients = {
      {type = "item", name = "nullius-rubber", amount = 1},
      {type = "item", name = "nullius-glass", amount = 1},
      {type = "item", name = "nullius-plastic", amount = 4}
    },
    results = {
			{type = "item", name = "copper-display-small", amount = 1}
		}
  },
  {
    type = "recipe",
    name = "nullius-display-plate-medium-plastic",
    enabled = false,
    always_show_made_in = true,
    category = "medium-crafting",
    energy_required = 2,
    ingredients = {
      {type = "item", name = "copper-display-small", amount = 4},
	  {type = "item", name = "small-lamp", amount = 1}
    },
    results = {
			{type = "item", name = "copper-display-medium", amount = 1}
		}
  },
  {
    type = "recipe",
    name = "nullius-display-plate-large-plastic",
    enabled = false,
    always_show_made_in = true,
    category = "medium-crafting",
    energy_required = 5,
    ingredients = {
      {type = "item", name = "copper-display-small", amount = 9},
	  {type = "item", name = "small-lamp", amount = 4}
    },
    results = {
			{type = "item", name = "copper-display", amount = 1}
		}
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
      localised_name = {"entity-name.blueprint-deployer"},
      enabled = false,
      always_show_made_in = true,
      category = "small-crafting",
      energy_required = 12,
      ingredients = {
        {type = "item", name = "nullius-small-storage-chest-1", amount = 1},
        {type = "item", name = "nullius-relay-1", amount = 1},
        {type = "item", name = "decider-combinator", amount = 6}
      },
      results = {
			{type = "item", name = "blueprint-deployer", amount = 1}
		}
    },
    {
      type = "recipe",
      name = "nullius-recursive-blueprints-scanner",
      localised_name = {"entity-name.recursive-blueprints-scanner"},
      enabled = false,
      always_show_made_in = true,
      category = "large-crafting",
      energy_required = 20,
      ingredients = {
        {type = "item", name = "radar", amount = 1},
		    {type = "item", name = "nullius-small-miner-2", amount = 1},
        {type = "item", name = "nullius-sensor-1", amount = 4}
      },
      results = {
			{type = "item", name = "recursive-blueprints-scanner", amount = 1}
		}
    }
  })
end


if mods["ch-concentrated-solar"] then
  data:extend({
    {
      type = "recipe",
      name = "nullius-heliostat-mirror",
      localised_name = {"entity-name.chcs-heliostat-mirror"},
      enabled = false,
      always_show_made_in = true,
      category = "hand-casting",
      energy_required = 10,
      ingredients = {
	    {type = "item", name = "nullius-aluminum-sheet", amount = 8},
        {type = "item", name = "nullius-steel-rod", amount = 6},
	    {type = "item", name = "nullius-hard-glass", amount = 10},
	    {type = "item", name = "nullius-motor-2", amount = 1},
	    {type = "item", name = "nullius-bearing", amount = 1}
      },
      results = {
			{type = "item", name = "chcs-heliostat-mirror", amount = 1}
		}
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
	    {type = "item", name = "nullius-box-aluminum-sheet", amount = 8},
        {type = "item", name = "nullius-box-steel-rod", amount = 6},
	    {type = "item", name = "nullius-box-hard-glass", amount = 10},
	    {type = "item", name = "nullius-box-motor-2", amount = 1},
	    {type = "item", name = "nullius-box-bearing", amount = 1}
      },
      results = {
			{type = "item", name = "nullius-box-heliostat-mirror", amount = 1}
		}
    },
    {
      type = "recipe",
      name = "nullius-solar-tower",
      localised_name = {"entity-name.chcs-solar-power-tower"},
      enabled = false,
      always_show_made_in = true,
      category = "huge-crafting",
      energy_required = 60,
      ingredients = {
	      {type = "item", name = "nullius-thermal-tank-2", amount = 3},
        {type = "item", name = "nullius-box-heat-pipe-2", amount = 10},
		    {type = "item", name = "nullius-box-steel-beam", amount = 24},
		    {type = "item", name = "nullius-box-reinforced-concrete", amount = 8},
		    {type = "item", name = "nullius-pump-2", amount = 8},
        {type = "item", name = "nullius-large-beacon-1", amount = 1}
      },
      results = {
			{type = "item", name = "chcs-solar-power-tower", amount = 1}
		},
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
        {type = "item", name = "rail", amount = 2},
		{type = "item", name = "nullius-steel-beam", amount = 8},
		{type = "item", name = "concrete", amount = 6},
		{type = "item", name = "nullius-land-fill-gravel", amount = 1}
      },
      results = {
			{type = "item", name = "bbr-rail-iron", amount = 1}
		}
    },
    {
      type = "recipe",
      name = "nullius-rail-bridge-brick",
      enabled = false,
	  always_show_made_in = true,
      category = "huge-crafting",
      energy_required = 8,
      ingredients = {
        {type = "item", name = "rail", amount = 2},
		{type = "item", name = "nullius-refractory-brick", amount = 4},
		{type = "item", name = "nullius-mortar", amount = 1},
		{type = "item", name = "concrete", amount = 1},
		{type = "item", name = "nullius-land-fill-gravel", amount = 2}
      },
      results = {
			{type = "item", name = "bbr-rail-brick", amount = 1}
		}
    },
    {
      type = "recipe",
      name = "nullius-rail-bridge-wood",
      enabled = false,
	  always_show_made_in = true,
      category = "huge-crafting",
      energy_required = 5,
      ingredients = {
        {type = "item", name = "rail", amount = 2},
		{type = "item", name = "nullius-wood", amount = 6},
		{type = "item", name = "nullius-steel-rod", amount = 1},
		{type = "item", name = "concrete", amount = 2},
		{type = "item", name = "nullius-land-fill-gravel", amount = 1}
      },
      results = {
			{type = "item", name = "bbr-rail-wood", amount = 1}
		}
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
        {type = "item", name = "nullius-locomotive-1", amount = 1},
		    {type = "item", name = "nullius-aluminum-plate", amount = 4}
      },
      results = {
			  {type = "item", name = "nullius-small-locomotive-1", amount = 2}
		  },
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
        {type = "item", name = "nullius-locomotive-2", amount = 1},
		    {type = "item", name = "nullius-small-locomotive-1", amount = 2},
		    {type = "item", name = "nullius-titanium-plate", amount = 4}
      },
      results = {
			  {type = "item", name = "nullius-small-locomotive-2", amount = 2}
		  },
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
        {type = "item", name = "nullius-locomotive-3", amount = 1},
		    {type = "item", name = "nullius-small-locomotive-2", amount = 2}
      },
      results = {
			  {type = "item", name = "nullius-small-locomotive-3", amount = 2}
		  },
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
        {type = "item", name = "nullius-solar-locomotive", amount = 1},
		    {type = "item", name = "nullius-small-locomotive-2", amount = 2}
      },
      results = {
			  {type = "item", name = "nullius-small-solar-locomotive", amount = 2}
		  },
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
        {type = "item", name = "nullius-cargo-wagon-1", amount = 1},
		    {type = "item", name = "nullius-aluminum-plate", amount = 4}
      },
      results = {
			  {type = "item", name = "nullius-small-cargo-wagon-1", amount = 2}
		  },
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
	    {type = "item", name = "nullius-cargo-wagon-2", amount = 1},
		  {type = "item", name = "nullius-small-cargo-wagon-1", amount = 2},
		  {type = "item", name = "nullius-titanium-plate", amount = 4}
      },
      results = {
			  {type = "item", name = "nullius-small-cargo-wagon-2", amount = 2}
		  },
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
	    {type = "item", name = "nullius-cargo-wagon-3", amount = 1},
		  {type = "item", name = "nullius-small-cargo-wagon-2", amount = 2}
      },
      results = {
			  {type = "item", name = "nullius-small-cargo-wagon-3", amount = 2}
		  },
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
        {type = "item", name = "nullius-fluid-wagon-1", amount = 1},
		    {type = "item", name = "nullius-aluminum-sheet", amount = 6}
      },
      results = {
			  {type = "item", name = "nullius-small-fluid-wagon-1", amount = 2}
		  },
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
	    {type = "item", name = "nullius-fluid-wagon-2", amount = 1},
		  {type = "item", name = "nullius-small-fluid-wagon-1", amount = 2},
		  {type = "item", name = "nullius-titanium-sheet", amount = 6}
      },
      results = {
			  {type = "item", name = "nullius-small-fluid-wagon-2", amount = 2}
		  },
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
	    {type = "item", name = "nullius-fluid-wagon-3", amount = 1},
		  {type = "item", name = "nullius-small-fluid-wagon-2", amount = 2}
      },
      results = {
			  {type = "item", name = "nullius-small-fluid-wagon-3", amount = 2}
		  },
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

  data.raw["pump"]["nullius-pump-1"].fluid_wagon_connector_alignment_tolerance = 20.0 / 32.0;
  data.raw["pump"]["nullius-pump-2"].fluid_wagon_connector_alignment_tolerance = 20.0 / 32.0;
end

if mods["fcpu"] then
  data:extend({
    {
      type = "recipe",
      name = "nullius-fcpu",
      localised_name = {"entity-name.fcpu"},
      enabled = false,
      always_show_made_in = true,
      category = "tiny-crafting",
      energy_required = 2,
      ingredients = {
        {type = "item", name = "decider-combinator", amount = 10},
        {type = "item", name = "arithmetic-combinator", amount = 10},
        {type = "item", name = "nullius-processor-2", amount = 1}
      },
      results = {
			{type = "item", name = "fcpu", amount = 1}
		}
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
        recipe = "nullius-fcpu"
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

  if mods["cranes"] then
     data:extend({
    {
      type = "recipe",
      name = "nullius-crane-1",
      localised_name = {"entity-name.crane-short"},
      enabled = false,
      always_show_made_in = true,
      energy_required = 5,
      ingredients = {
        {type = "item", name = "bulk-inserter", amount = 3},
        {type = "item", name = "nullius-processor-1", amount = 5}
      },
      results = {
			  {type = "item", name = "crane-short", amount = 1}
      }    
    },
    {
      type = "technology",
      name = "nullius-short-crane",
      localised_name = {"entity-name.crane-short"},
      --localised_description = {"technology-description.short-cranes"},
      icon_size = 64,
      icon = "__cranes__/graphics/crane-short-icon.png",
      effects =
      {
        {
        type = "unlock-recipe",
        recipe = "nullius-crane-1"
        }
      },
      prerequisites =  {"nullius-actuation-3", "nullius-electronics-2"},
      
      unit = {
        count = 1000,
        ingredients = {
          {"nullius-mechanical-pack", 1}, {"nullius-electrical-pack", 1}
      },

      time = 30
      },
      order = "a-d-d"
    },
    {
      type = "recipe",
      name = "nullius-crane-2",
      localised_name = {"entity-name.crane"},
      enabled = false,
      always_show_made_in = true,
      energy_required = 10,
      ingredients = {
        {type = "item", name = "bob-express-bulk-inserter", amount = 3},
        {type = "item", name = "nullius-processor-2", amount = 5}
      },
      results = {
			{type = "item", name = "crane", amount = 1}
		}
    },
    {
      type = "technology",
      name = "nullius-crane",
      ---
      localised_name = {"entity-name.crane"},
      --localised_description = {"technology-description.cranes"},
      icon_size = 64,
      icon = "__cranes__/graphics/crane-icon.png",
      effects =
      {
        {
        type = "unlock-recipe",
        recipe = "nullius-crane-2"
        }
      },
      prerequisites = {"nullius-actuation-4", "nullius-electronics-3"},
      
      unit = {
      count = 2000,
      ingredients = {
        {"nullius-geology-pack", 1},
        {"nullius-climatology-pack", 1},
        {"nullius-mechanical-pack", 1},
        {"nullius-electrical-pack", 1},
        {"nullius-chemical-pack", 1}, 
        {"nullius-physics-pack", 1}
      },
      time = 45
    }
  },
});
end
if mods["aai-containers"] then
	data:extend({
		--***RECPIES***
		--Strong Boxes
		{
			type = "recipe",
			name = "nullius-aai-strongbox",
			localised_name = { "entity-name.aai-strongbox" },
			enabled = false,
			always_show_made_in = true,
			energy_required = 5,
			category = "large-crafting",
			ingredients = {
				{ type = "item", name = "nullius-steel-plate", amount = 100 },
			},
			results = {
				{ type = "item", name = "aai-strongbox", amount = 1 },
			},
			order = "a-d-d",
		},
		{
			type = "recipe",
			name = "nullius-aai-strongbox-passive-provider",
			localised_name = { "entity-name.aai-strongbox-passive-provider" },
			enabled = false,
			always_show_made_in = true,
			energy_required = 5,
			category = "large-crafting",
			ingredients = {
				{ type = "item", name = "aai-strongbox", amount = 1 },
				{ type = "item", name = "nullius-large-supply-chest-1", amount = 1 },
			},
			results = {
				{ type = "item", name = "aai-strongbox-passive-provider", amount = 1 },
			},
			order = "a-d-d",
		},
		{
			type = "recipe",
			name = "nullius-aai-strongbox-active-provider",
			localised_name = { "entity-name.aai-strongbox-active-provider" },
			enabled = false,
			always_show_made_in = true,
			energy_required = 5,
			category = "large-crafting",
			ingredients = {
				{ type = "item", name = "aai-strongbox", amount = 1 },
				{ type = "item", name = "nullius-large-dispatch-chest-1", amount = 1 },
			},
			results = {
				{ type = "item", name = "aai-strongbox-active-provider", amount = 1 },
			},
			order = "a-d-d",
		},
		{
			type = "recipe",
			name = "nullius-aai-strongbox-buffer",
			localised_name = { "entity-name.aai-strongbox-buffer" },
			enabled = false,
			always_show_made_in = true,
			energy_required = 5,
			category = "large-crafting",
			ingredients = {
				{ type = "item", name = "aai-strongbox", amount = 1 },
				{ type = "item", name = "nullius-large-buffer-chest-1", amount = 1 },
			},
			results = {
				{ type = "item", name = "aai-strongbox-buffer", amount = 1 },
			},
			order = "a-d-d",
		},
		{
			type = "recipe",
			name = "nullius-aai-strongbox-storage",
			localised_name = { "entity-name.aai-strongbox-storage" },
			enabled = false,
			always_show_made_in = true,
			energy_required = 5,
			category = "large-crafting",
			ingredients = {
				{ type = "item", name = "aai-strongbox", amount = 1 },
				{ type = "item", name = "nullius-large-storage-chest-1", amount = 1 },
			},
			results = {
				{ type = "item", name = "aai-strongbox-storage", amount = 1 },
			},
			order = "a-d-d",
		},
		{
			type = "recipe",
			name = "nullius-aai-strongbox-requester",
			localised_name = { "entity-name.aai-strongbox-requester" },
			enabled = false,
			always_show_made_in = true,
			energy_required = 5,
			category = "large-crafting",
			ingredients = {
				{ type = "item", name = "aai-strongbox", amount = 1 },
				{ type = "item", name = "nullius-large-demand-chest-1", amount = 1 },
			},
			results = {
				{ type = "item", name = "aai-strongbox-requester", amount = 1 },
			},
		},
		--Storehouse
		{
			type = "recipe",
			name = "nullius-aai-storehouse",
			localised_name = { "entity-name.aai-storehouse" },
			enabled = false,
			always_show_made_in = true,
			energy_required = 5,
			category = "large-crafting",
			ingredients = {
				{ type = "item", name = "nullius-steel-plate", amount = 100 },
				{ type = "item", name = "nullius-steel-beam", amount = 100 },
			},
			results = {
				{ type = "item", name = "aai-storehouse", amount = 1 },
			},
			order = "a-d-d",
		},
		{
			type = "recipe",
			name = "nullius-aai-storehouse-passive-provider",
			localised_name = { "entity-name.aai-storehouse-passive-provider" },
			enabled = false,
			always_show_made_in = true,
			energy_required = 5,
			category = "large-crafting",
			ingredients = {
				{ type = "item", name = "aai-storehouse", amount = 1 },
				{ type = "item", name = "nullius-large-supply-chest-1", amount = 2 },
			},
			results = {
				{ type = "item", name = "aai-storehouse-passive-provider", amount = 1 },
			},
			order = "a-d-d",
		},
		{
			type = "recipe",
			name = "nullius-aai-storehouse-active-provider",
			localised_name = { "entity-name.aai-storehouse-active-provider" },
			enabled = false,
			always_show_made_in = true,
			energy_required = 5,
			category = "large-crafting",
			ingredients = {
				{ type = "item", name = "aai-storehouse", amount = 1 },
				{ type = "item", name = "nullius-large-dispatch-chest-1", amount = 2 },
			},
			results = {
				{ type = "item", name = "aai-storehouse-active-provider", amount = 1 },
			},
			order = "a-d-d",
		},
		{
			type = "recipe",
			name = "nullius-aai-storehouse-buffer",
			localised_name = { "entity-name.aai-storehouse-buffer" },
			enabled = false,
			always_show_made_in = true,
			energy_required = 5,
			category = "large-crafting",
			ingredients = {
				{ type = "item", name = "aai-storehouse", amount = 1 },
				{ type = "item", name = "nullius-large-buffer-chest-1", amount = 2 },
			},
			results = {
				{ type = "item", name = "aai-storehouse-buffer", amount = 1 },
			},
			order = "a-d-d",
		},
		{
			type = "recipe",
			name = "nullius-aai-storehouse-storage",
			localised_name = { "entity-name.aai-storehouse-storage" },
			enabled = false,
			always_show_made_in = true,
			energy_required = 5,
			category = "large-crafting",
			ingredients = {
				{ type = "item", name = "aai-storehouse", amount = 1 },
				{ type = "item", name = "nullius-large-storage-chest-1", amount = 2 },
			},
			results = {
				{ type = "item", name = "aai-storehouse-storage", amount = 1 },
			},
			order = "a-d-d",
		},
		{
			type = "recipe",
			name = "nullius-aai-storehouse-requester",
			localised_name = { "entity-name.aai-storehouse-requester" },
			enabled = false,
			always_show_made_in = true,
			energy_required = 5,
			category = "large-crafting",
			ingredients = {
				{ type = "item", name = "aai-storehouse", amount = 1 },
				{ type = "item", name = "nullius-large-demand-chest-1", amount = 2 },
			},
			results = {
				{ type = "item", name = "aai-storehouse-requester", amount = 1 },
			},
			order = "a-d-d",
		},
		--Warehouse
		{
			type = "recipe",
			name = "nullius-aai-warehouse",
			localised_name = { "entity-name.aai-warehouse" },
			enabled = false,
			always_show_made_in = true,
			energy_required = 5,
			category = "large-crafting",
			ingredients = {
				{ type = "item", name = "nullius-steel-plate", amount = 100 },
				{ type = "item", name = "nullius-steel-beam", amount = 100 },
				{ type = "item", name = "concrete", amount = 100 },
			},
			results = {
				{ type = "item", name = "aai-warehouse", amount = 1 },
			},
			order = "a-d-d",
		},
		{
			type = "recipe",
			name = "nullius-aai-warehouse-passive-provider",
			localised_name = { "entity-name.aai-warehouse-passive-provider" },
			enabled = false,
			always_show_made_in = true,
			energy_required = 5,
			category = "large-crafting",
			ingredients = {
				{ type = "item", name = "aai-warehouse", amount = 1 },
				{ type = "item", name = "nullius-large-supply-chest-1", amount = 3 },
			},
			results = {
				{ type = "item", name = "aai-warehouse-passive-provider", amount = 1 },
			},
			order = "a-d-d",
		},
		{
			type = "recipe",
			name = "nullius-aai-warehouse-active-provider",
			localised_name = { "entity-name.aai-warehouse-active-provider" },
			enabled = false,
			always_show_made_in = true,
			energy_required = 5,
			category = "large-crafting",
			ingredients = {
				{ type = "item", name = "aai-warehouse", amount = 1 },
				{ type = "item", name = "nullius-large-dispatch-chest-1", amount = 3 },
			},
			results = {
				{ type = "item", name = "aai-warehouse-active-provider", amount = 1 },
			},
			order = "a-d-d",
		},
		{
			type = "recipe",
			name = "nullius-aai-warehouse-buffer",
			localised_name = { "entity-name.aai-warehouse-buffer" },
			enabled = false,
			always_show_made_in = true,
			energy_required = 5,
			category = "large-crafting",
			ingredients = {
				{ type = "item", name = "aai-warehouse", amount = 1 },
				{ type = "item", name = "nullius-large-buffer-chest-1", amount = 3 },
			},
			results = {
				{ type = "item", name = "aai-warehouse-buffer", amount = 1 },
			},
			order = "a-d-d",
		},
		{
			type = "recipe",
			name = "nullius-aai-warehouse-storage",
			localised_name = { "entity-name.aai-warehouse-storage" },
			enabled = false,
			always_show_made_in = true,
			energy_required = 5,
			category = "large-crafting",
			ingredients = {
				{ type = "item", name = "aai-warehouse", amount = 1 },
				{ type = "item", name = "nullius-large-storage-chest-1", amount = 3 },
			},
			results = {
				{ type = "item", name = "aai-warehouse-storage", amount = 1 },
			},
			order = "a-d-d",
		},
		{
			type = "recipe",
			name = "nullius-aai-warehouse-requester",
			localised_name = { "entity-name.aai-warehouse-requester" },
			enabled = false,
			always_show_made_in = true,
			energy_required = 5,
			category = "large-crafting",
			ingredients = {
				{ type = "item", name = "aai-warehouse", amount = 1 },
				{ type = "item", name = "nullius-large-demand-chest-1", amount = 3 },
			},
			results = {
				{ type = "item", name = "aai-warehouse-requester", amount = 1 },
			},
			order = "a-d-d",
		},
		--***Technology***
		{
			type = "technology",
			name = "nullius-aai-strongbox-containers",
			localised_name = { "technology-name.aai-strongbox-base" },
			localised_description = { "technology-description.aai-strongbox-base" },
			icon_size = 128,
			category = "large-crafting",
			icon = "__aai-containers__/graphics/technology/container-2-base.png",
			effects = {
				{
					type = "unlock-recipe",
					recipe = "nullius-aai-strongbox",
				},

				{
					type = "unlock-recipe",
					recipe = "nullius-aai-strongbox-active-provider",
				},

				{
					type = "unlock-recipe",
					recipe = "nullius-aai-strongbox-passive-provider",
				},

				{
					type = "unlock-recipe",
					recipe = "nullius-aai-strongbox-buffer",
				},

				{
					type = "unlock-recipe",
					recipe = "nullius-aai-strongbox-storage",
				},

				{
					type = "unlock-recipe",
					recipe = "nullius-aai-strongbox-requester",
				},
			},
			prerequisites = { "nullius-storage-2" },

			unit = {
				count = 500,
				ingredients = {
					{ "nullius-geology-pack", 1 },
					{ "nullius-climatology-pack", 1 },
					{ "nullius-mechanical-pack", 1 },
					{ "nullius-electrical-pack", 1 },
				},
				time = 30,
			},

			order = "a-d-d",
		},
		{
			type = "technology",
			name = "nullius-aai-storehouse-containers",
			localised_name = { "technology-name.aai-storehouse-base" },
			localised_description = { "technology-description.aai-storehouse-base" },
			icon_size = 128,
			category = "large-crafting",
			icon = "__aai-containers__/graphics/technology/container-4-base.png",
			effects = {
				{
					type = "unlock-recipe",
					recipe = "nullius-aai-storehouse",
				},

				{
					type = "unlock-recipe",
					recipe = "nullius-aai-storehouse-active-provider",
				},

				{
					type = "unlock-recipe",
					recipe = "nullius-aai-storehouse-passive-provider",
				},

				{
					type = "unlock-recipe",
					recipe = "nullius-aai-storehouse-buffer",
				},

				{
					type = "unlock-recipe",
					recipe = "nullius-aai-storehouse-storage",
				},

				{
					type = "unlock-recipe",
					recipe = "nullius-aai-storehouse-requester",
				},
			},
			prerequisites = { "nullius-aai-strongbox-containers" },

			unit = {
				count = 750,
				ingredients = {
					{ "nullius-geology-pack", 1 },
					{ "nullius-climatology-pack", 1 },
					{ "nullius-mechanical-pack", 1 },
					{ "nullius-electrical-pack", 1 },
				},

				time = 30,
			},

			order = "a-d-d",
		},
		{
			type = "technology",
			name = "nullius-aai-warehouse-containers",
			localised_name = { "technology-name.aai-warehouse-base" },
			localised_description = { "technology-description.aai-warehouse-base" },
			icon_size = 128,
			category = "large-crafting",
			icon = "__aai-containers__/graphics/technology/container-6-base.png",
			effects = {
				{
					type = "unlock-recipe",
					recipe = "nullius-aai-warehouse",
				},

				{
					type = "unlock-recipe",
					recipe = "nullius-aai-warehouse-active-provider",
				},

				{
					type = "unlock-recipe",
					recipe = "nullius-aai-warehouse-passive-provider",
				},

				{
					type = "unlock-recipe",
					recipe = "nullius-aai-warehouse-buffer",
				},

				{
					type = "unlock-recipe",
					recipe = "nullius-aai-warehouse-storage",
				},

				{
					type = "unlock-recipe",
					recipe = "nullius-aai-warehouse-requester",
				},
			},
			prerequisites = { "nullius-aai-storehouse-containers" },

			unit = {
				count = 1000,
				ingredients = {
					{ "nullius-geology-pack", 1 },
					{ "nullius-climatology-pack", 1 },
					{ "nullius-mechanical-pack", 1 },
					{ "nullius-electrical-pack", 1 },
				},

				time = 30,
			},
			order = "a-d-d",
		},
	})
end

if mods["stack-inserters"] then
	data:extend({

		{
			type = "technology",
			name = "nullius-stack-inserters",
			localised_name = { "technology-name.stack-inserter" },
			localised_description = { "technology-description.stack-inserter" },
			icon = "__stack-inserters__/graphics/technology/stack-inserter.png",
			icon_size = 256,
			effects = {
				{ type = "unlock-recipe", recipe = "nullius-stack-inserter" },
				{ type = "belt-stack-size-bonus", modifier = 1 },
			},
			prerequisites = { "nullius-actuation-3" },
			unit = {
				count = 1000,
				ingredients = {
					{ "nullius-geology-pack", 1 },
					{ "nullius-climatology-pack", 1 },
					{ "nullius-mechanical-pack", 1 },
					{ "nullius-electrical-pack", 1 },
					{ "nullius-chemical-pack", 1 },
				},
				time = 60,
			},
		},
		{
			type = "recipe",
			name = "nullius-stack-inserter",
			localised_name = { "entity-name.stack-inserter" },
			enabled = false,
			always_show_made_in = true,
			energy_required = 10,
			category = "small-crafting",
			ingredients = {
				{ type = "item", name = "bulk-inserter", amount = 3 },
				{ type = "item", name = "nullius-processor-1", amount = 5 },
				{ type = "item", name = "decider-combinator", amount = 5 },
				{ type = "item", name = "arithmetic-combinator", amount = 5 },
			},
			order = "nullius-gb",
			results = { { type = "item", name = "stack-inserter", amount = 1 } },
		},
		{
			type = "technology",
			name = "nullius-transport-belt-capacity-1",
			localised_name = { "technology-name.transport-belt-capacity" },
			icons = util.technology_icon_constant_stack_size(
				"__stack-inserters__/graphics/technology/transport-belt-capacity.png"
			),
			effects = { { type = "belt-stack-size-bonus", modifier = 1 } },
			prerequisites = { "nullius-actuation-2" },
			unit = {
				count = 2500,
				ingredients = {
					{ "nullius-geology-pack", 1 },
					{ "nullius-climatology-pack", 1 },
					{ "nullius-mechanical-pack", 1 },
					{ "nullius-electrical-pack", 1 },
				},
				time = 60,
			},
			upgrade = true,
		},

		{
			type = "technology",
			name = "nullius-transport-belt-capacity-2",
			localised_name = { "technology-name.transport-belt-capacity" },
			icons = util.technology_icon_constant_stack_size(
				"__stack-inserters__/graphics/technology/transport-belt-capacity.png"
			),
			effects = { { type = "belt-stack-size-bonus", modifier = 1 } },
			prerequisites = { "nullius-actuation-3" },
			unit = {
				count = 5000,
				ingredients = {
					{ "nullius-geology-pack", 1 },
					{ "nullius-climatology-pack", 1 },
					{ "nullius-mechanical-pack", 1 },
					{ "nullius-electrical-pack", 1 },
					{ "nullius-chemical-pack", 1 },
				},
				time = 60,
e			},
			upgrade = true,
		},
	})
	data.raw["item"]["stack-inserter"].order = "nullius-gb"
	data.raw["inserter"]["stack-inserter"].order = "nullius-gb"
	data.raw["inserter"]["stack-inserter"].fast_replaceable_group = "inserter"
	data.raw["inserter"]["stack-inserter"].rotation_speed = 0.0333333
end
