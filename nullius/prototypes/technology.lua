local ICONPATH = "__nullius__/graphics/icons/"
local ENTICONPATH = "__nullius__/graphics/icons/entity/"
local ENTITYPATH = "__nullius__/graphics/entity/"
local TECHPATH = "__nullius__/graphics/technology/"
local EQUIPPATH = "__nullius__/graphics/equipment/"

data:extend({
  {
    type = "technology",
    name = "nullius-geology-1",
    order = "nullius-bb",
    icons = {
      {
        icon = "__base__/graphics/technology/utility-science-pack.png",
        icon_size = 256,
        icon_mipmaps = 4
      },
      {
        icon = "__base__/graphics/icons/stone.png",
        icon_size = 64,
        icon_mipmaps = 4,
        scale = 1.6,
        shift = {0, 36},
        tint = {r=0.6, g=0.4, b=0.2, a=0.5}
      }
    },
    effects = {
      {
        type = "unlock-recipe",
        recipe = "nullius-geology-pack-1"
      }
    },
    unit = {
      count = 5,
      ingredients = {},
      time = 3
    },
    ignore_tech_cost_multiplier = true
  },
  {
    type = "technology",
    name = "nullius-iron-smelting-1",
    order = "nullius-bc",
    icon = "__angelssmelting__/graphics/technology/smelting-iron-tech.png",
    icon_size = 256,
    icon_mipmaps = 4,
    effects = {
      {
        type = "unlock-recipe",
        recipe = "nullius-iron-ingot-1"
      }
    },
    unit = {
      count = 1,
      ingredients = {{"nullius-geology-pack", 1}},
      time = 10
    },
    prerequisites = {"nullius-geology-1"},
    ignore_tech_cost_multiplier = true
  },
  {
    type = "technology",
    name = "nullius-climatology-1",
    order = "nullius-bc",
    icons = {
      {
        icon = "__base__/graphics/technology/chemical-science-pack.png",
        icon_size = 256,
        icon_mipmaps = 4
      },
      {
        icon = "__base__/graphics/icons/fluid/steam.png",
        icon_size = 64,
        icon_mipmaps = 4,
        scale = 1.8,
        shift = {0, 34},
        tint = {r=1, g=1, b=1, a=0.5}
      }
    },
    effects = {
      {
        type = "unlock-recipe",
        recipe = "nullius-climatology-pack-1"
      }
    },
    unit = {
      count = 2,
      ingredients = {{"nullius-geology-pack", 1}},
      time = 6
    },
    prerequisites = {"nullius-geology-1"},
    ignore_tech_cost_multiplier = true
  },

  {
    type = "technology",
    name = "nullius-iron-working-1",
    order = "nullius-bd",
    icon = "__base__/graphics/technology/steel-processing.png",
    icon_size = 256,
    icon_mipmaps = 4,
    effects = {
      {
        type = "unlock-recipe",
        recipe = "nullius-iron-plate-1"
      },
      {
        type = "unlock-recipe",
        recipe = "nullius-iron-rod-1"
      },
      {
        type = "unlock-recipe",
        recipe = "nullius-iron-sheet-1"
      },
      {
        type = "unlock-recipe",
        recipe = "nullius-broken-pylon"
      }
    },
    unit = {
      count = 2,
      ingredients = {{"nullius-geology-pack", 1}},
      time = 6
    },
    prerequisites = {"nullius-iron-smelting-1"},
    ignore_tech_cost_multiplier = true
  },
  {
    type = "technology",
    name = "nullius-plumbing-1",
    order = "nullius-bd",
    icon = "__base__/graphics/technology/fluid-handling.png",
    icon_size = 256,
    icon_mipmaps = 4,
    effects = {
      {
        type = "unlock-recipe",
        recipe = "nullius-medium-tank-1"
      },
      {
        type = "unlock-recipe",
        recipe = "nullius-iron-pipe"
      },
      {
        type = "unlock-recipe",
        recipe = "nullius-stone-pipe"
      }
    },
    unit = {
      count = 1,
      ingredients = {{"nullius-climatology-pack", 1}},
      time = 8
    },
    prerequisites = {"nullius-climatology-1", "nullius-iron-smelting-1"},
    ignore_tech_cost_multiplier = true
  },
  {
    type = "technology",
    name = "nullius-water-filtration-1",
    order = "nullius-bd",
    icon_size = 256,
    icon = "__angelsrefining__/graphics/technology/water-treatment.png",
    effects = {
      {
        type = "unlock-recipe",
        recipe = "nullius-seawater-filtration"
      },
      {
        type = "unlock-recipe",
        recipe = "nullius-broken-hydro-plant"
      }
    },
    unit = {
      count = 1,
      ingredients = {{"nullius-geology-pack", 1}, {"nullius-climatology-pack", 1}},
      time = 6
    },
    prerequisites = {"nullius-climatology-1"},
    ignore_tech_cost_multiplier = true
  },

  {
    type = "technology",
    name = "nullius-iron-working-2",
    order = "nullius-be",
    icon = "__base__/graphics/technology/steel-processing.png",
    icon_size = 256,
    icon_mipmaps = 4,
    effects = {
      {
        type = "unlock-recipe",
        recipe = "nullius-iron-wire-1"
      },
      {
        type = "unlock-recipe",
        recipe = "nullius-iron-gear"
      },
      {
        type = "unlock-recipe",
        recipe = "nullius-broken-assembler"
      }
    },
    unit = {
      count = 2,
      ingredients = {{"nullius-geology-pack", 1}},
      time = 8
    },
    prerequisites = {"nullius-iron-working-1", "nullius-checkpoint-iron-ingot"},
    ignore_tech_cost_multiplier = true
  },
  {
    type = "technology",
    name = "nullius-mining-tools",
    order = "nullius-be",
    icon = "__base__/graphics/technology/steel-axe.png",
    icon_size = 256,
    icon_mipmaps = 4,
    effects = {
      {
        type = "character-mining-speed",
        modifier = 0.25
      },
      {
        type = "unlock-recipe",
        recipe = "nullius-mining-tool-1"
      }
    },
    unit = {
      count = 3,
      ingredients = {{"nullius-geology-pack", 1}},
      time = 5
    },
    prerequisites = {"nullius-iron-working-1"},
    ignore_tech_cost_multiplier = true
  },
  {
    type = "technology",
    name = "nullius-masonry-1",
    order = "nullius-be",
    icon_size = 64,
    icon_mipmaps = 4,
    icon = "__base__/graphics/icons/stone.png",
    effects = {
      {
        type = "unlock-recipe",
        recipe = "nullius-crushed-sandstone"
      },
      {
        type = "unlock-recipe",
        recipe = "nullius-crushed-stone"
      },
      {
        type = "unlock-recipe",
        recipe = "nullius-broken-solar-panel"
      }
    },
    unit = {
      count = 3,
      ingredients = {{"nullius-geology-pack", 1}},
      time = 5
    },
    prerequisites = {"nullius-iron-smelting-1", "nullius-water-filtration-1"},
    ignore_tech_cost_multiplier = true
  },
  {
    type = "technology",
    name = "nullius-electrolysis-1",
    order = "nullius-be",
    icon_size = 128,
    icon = "__angelspetrochem__/graphics/technology/electrolyser-tech.png",
    effects = {
      {
        type = "unlock-recipe",
        recipe = "nullius-saline-electrolysis"
      },
      {
        type = "unlock-recipe",
        recipe = "nullius-broken-electrolyzer"
      }
    },
    unit = {
      count = 2,
      ingredients = {{"nullius-climatology-pack", 1}},
      time = 6
    },
    prerequisites = {"nullius-water-filtration-1"},
    ignore_tech_cost_multiplier = true
  },
  {
    type = "technology",
    name = "nullius-air-separation-1",
    order = "nullius-be",
    icons = data.raw.recipe["nullius-air-separation-1"].icons,
    effects = {
      {
        type = "unlock-recipe",
        recipe = "nullius-air-separation-1"
      },
      {
        type = "unlock-recipe",
        recipe = "nullius-broken-air-filter"
      }
    },
    unit = {
      count = 1,
      ingredients = {{"nullius-climatology-pack", 1}},
      time = 6
    },
    prerequisites = {"nullius-water-filtration-1", "nullius-plumbing-1"},
    ignore_tech_cost_multiplier = true
  },
  {
    type = "technology",
    name = "nullius-storage-1",
    order = "nullius-be",
    icon_size = 64,
    icon_mipmaps = 4,
    icon = "__base__/graphics/icons/iron-chest.png",
    effects = {
      {
        type = "unlock-recipe",
        recipe = "nullius-small-chest-1"
      },
      {
        type = "unlock-recipe",
        recipe = "nullius-small-cargo-pod-1"
      }
    },
    unit = {
      count = 3,
      ingredients = {{"nullius-geology-pack", 1}, {"nullius-climatology-pack", 1}},
      time = 5
    },
    prerequisites = {"nullius-air-separation-1", "nullius-fabrication-tools"},
    ignore_tech_cost_multiplier = true
  },

  {
    type = "technology",
    name = "nullius-plumbing-2",
    order = "nullius-bf",
    icon = "__base__/graphics/technology/fluid-handling.png",
    icon_size = 256,
    icon_mipmaps = 4,
    effects = {
      {
        type = "unlock-recipe",
        recipe = "nullius-underground-pipe-1"
      },
      {
        type = "unlock-recipe",
        recipe = "nullius-one-way-valve-1"
      },
      {
        type = "unlock-recipe",
        recipe = "nullius-priority-valve"
      },
      {
        type = "unlock-recipe",
        recipe = "nullius-broken-chemical-plant"
      }
    },
    unit = {
      count = 2,
      ingredients = {{"nullius-geology-pack", 1}, {"nullius-climatology-pack", 2}},
      time = 8
    },
    prerequisites = {"nullius-plumbing-1", "nullius-iron-working-2", "nullius-masonry-1"},
    ignore_tech_cost_multiplier = true
  },
  {
    type = "technology",
    name = "nullius-masonry-2",
    order = "nullius-bf",
    icon = "__base__/graphics/technology/stone-wall.png",
    icon_size = 256,
    icon_mipmaps = 4,
    effects = {
      {
        type = "unlock-recipe",
        recipe = "nullius-stone-block"
      },
      {
        type = "unlock-recipe",
        recipe = "nullius-sandstone-block"
      },
      {
        type = "unlock-recipe",
        recipe = "nullius-limestone-block"
      },
      {
        type = "unlock-recipe",
        recipe = "nullius-broken-foundry"
      }
    },
    unit = {
      count = 2,
      ingredients = {{"nullius-geology-pack", 2}, {"nullius-climatology-pack", 1}},
      time = 6
    },
    prerequisites = {"nullius-mining-tools", "nullius-masonry-1"},
    ignore_tech_cost_multiplier = true
  },
  {
    type = "technology",
    name = "nullius-fabrication-tools",
    order = "nullius-bf",
    icon = "__base__/graphics/technology/steel-axe.png",
    icon_size = 256,
    icon_mipmaps = 4,
    effects = {
      {
        type = "character-crafting-speed",
        modifier = 0.1
      },
      {
        type = "unlock-recipe",
        recipe = "nullius-fabrication-tool-1"
      }
    },
    unit = {
      count = 3,
      ingredients = {{"nullius-geology-pack", 1}},
      time = 6
    },
    prerequisites = {"nullius-mining-tools", "nullius-iron-working-2"},
    ignore_tech_cost_multiplier = true
  },
  {
    type = "technology",
    name = "nullius-carbon-sequestration-1",
    order = "nullius-bf",
    icon = "__angelspetrochem__/graphics/icons/molecules/methane.png",
    icon_size = 72,
    effects = {
      {
        type = "unlock-recipe",
        recipe = "nullius-carbon-dioxide-to-methane"
      },
      {
        type = "unlock-recipe",
        recipe = "nullius-broken-grid-battery"
      }
    },
    unit = {
      count = 2,
      ingredients = {{"nullius-climatology-pack", 1}},
      time = 8
    },
    prerequisites = {"nullius-air-separation-1", "nullius-electrolysis-1"},
    ignore_tech_cost_multiplier = true
  },

  {
    type = "technology",
    name = "nullius-venting-1",
    order = "nullius-bg",
	icons = {{
      icon = "__angelspetrochem__/graphics/technology/flare-stack-tech.png",
      icon_size = 256,
	  icon_mipmaps = 4
	}},
    effects = {
      {
        type = "unlock-recipe",
        recipe = "nullius-outfall-1"
      },
      {
        type = "unlock-recipe",
        recipe = "nullius-chimney-1"
      }
    },
    unit = {
      count = 2,
      ingredients = {{"nullius-climatology-pack", 1}},
      time = 6
    },
    prerequisites = {"nullius-plumbing-2", "nullius-masonry-2"},
    ignore_tech_cost_multiplier = true
  },
  {
    type = "technology",
    name = "nullius-metallurgy-1",
    order = "nullius-bg",
    icon = "__base__/graphics/technology/advanced-material-processing.png",
    icon_size = 256,
    icon_mipmaps = 4,
    effects = {
      {
        type = "unlock-recipe",
        recipe = "nullius-small-furnace-1"
      }
    },
    unit = {
      count = 3,
      ingredients = {{"nullius-geology-pack", 1}},
      time = 5
    },
    prerequisites = {"nullius-checkpoint-stone-brick", "nullius-iron-working-2"},
    ignore_tech_cost_multiplier = true
  },
  {
    type = "technology",
    name = "nullius-organic-chemistry-1",
    order = "nullius-bg",
    icon = "__base__/graphics/technology/plastics.png",
    icon_size = 256,
    icon_mipmaps = 4,
    effects = {
      {
        type = "unlock-recipe",
        recipe = "nullius-methane-to-ethylene"
      },
      {
        type = "unlock-recipe",
        recipe = "nullius-plastic"
      }
    },
    unit = {
      count = 3,
      ingredients = {{"nullius-geology-pack", 1}, {"nullius-climatology-pack", 2}},
      time = 6
    },
    prerequisites = {"nullius-carbon-sequestration-1", "nullius-checkpoint-hydrogen"},
    ignore_tech_cost_multiplier = true
  },
  {
    type = "technology",
    name = "nullius-carbon-sequestration-2",
    order = "nullius-bg",
    icon = "__base__/graphics/icons/coal-dark-background.png",
    icon_size = 64,
    icon_mipmaps = 4,
    effects = {
      {
        type = "unlock-recipe",
        recipe = "nullius-carbon-dioxide-to-monoxide"
      },
      {
        type = "unlock-recipe",
        recipe = "nullius-carbon-monoxide-to-graphite"
      }
    },
    unit = {
      count = 3,
      ingredients = {{"nullius-climatology-pack", 1}},
      time = 6
    },
    prerequisites = {"nullius-carbon-sequestration-1", "nullius-checkpoint-carbon-dioxide"},
    ignore_tech_cost_multiplier = true
  },

  {
    type = "technology",
    name = "nullius-land-fill-1",
    order = "nullius-bh",
    icon = "__base__/graphics/technology/landfill.png",
    icon_size = 256,
    icon_mipmaps = 4,
    effects = {
      {
        type = "unlock-recipe",
        recipe = "nullius-land-fill-gravel"
      },
      {
        type = "unlock-recipe",
        recipe = "nullius-land-fill-sand"
      }
    },
    unit = {
      count = 3,
      ingredients = {{"nullius-geology-pack", 3}, {"nullius-climatology-pack", 1}},
      time = 6
    },
    prerequisites = {"nullius-masonry-2","nullius-venting-1"},
    ignore_tech_cost_multiplier = true
  },
  {
    type = "technology",
    name = "nullius-electromagnetism-1",
    order = "nullius-bh",
    icon = "__base__/graphics/technology/electric-engine.png",
    icon_size = 256,
    icon_mipmaps = 4,
    effects = {
      {
        type = "unlock-recipe",
        recipe = "nullius-motor-1"
      }
    },
    unit = {
      count = 3,
      ingredients = {{"nullius-geology-pack", 1}, {"nullius-climatology-pack", 1}},
      time = 6
    },
    prerequisites = {"nullius-fabrication-tools", "nullius-checkpoint-plastic"},
    ignore_tech_cost_multiplier = true
  },
  {
    type = "technology",
    name = "nullius-filtration-1",
    order = "nullius-bh",
    icons = data.raw.item["nullius-filter-1"].icons,
    effects = {
      {
        type = "unlock-recipe",
        recipe = "nullius-filter-1"
      }
    },
    unit = {
      count = 2,
      ingredients = {{"nullius-geology-pack", 1}, {"nullius-climatology-pack", 1}},
      time = 8
    },
    prerequisites = {"nullius-venting-1", "nullius-carbon-sequestration-2", "nullius-organic-chemistry-1"},
    ignore_tech_cost_multiplier = true
  },
  {
    type = "technology",
    name = "nullius-inorganic-chemistry-1",
    order = "nullius-bh",
    icons = data.raw.fluid["nullius-caustic-solution"].icons,
    effects = {
      {
        type = "unlock-recipe",
        recipe = "nullius-saline-caustic-solution"
      },
      {
        type = "unlock-recipe",
        recipe = "nullius-hydrogen-chloride-neutralization"
      }
    },
    unit = {
      count = 3,
      ingredients = {{"nullius-climatology-pack", 1}},
      time = 6
    },
    prerequisites = {"nullius-filtration-1"},
    ignore_tech_cost_multiplier = true
  },

  {
    type = "technology",
    name = "nullius-mechanical-engineering-1",
    order = "nullius-cb",
    icons = {
      {
        icon = "__base__/graphics/technology/automation-science-pack.png",
        icon_size = 256,
        icon_mipmaps = 4
      },
      {
        icon = "__base__/graphics/icons/iron-gear-wheel.png",
        icon_size = 64,
        icon_mipmaps = 4,
        scale = 1.6,
        shift = {0, 40},
        tint = {r=0.6, g=1, b=1, a=0.5}
      }
    },
    effects = {
      {
        type = "unlock-recipe",
        recipe = "nullius-mechanical-pack-1"
      }
    },
    unit = {
      count = 4,
      ingredients = {{"nullius-geology-pack", 1}, {"nullius-climatology-pack", 1}},
      time = 8
    },
    prerequisites = {"nullius-electromagnetism-1", "nullius-metallurgy-1"},
    ignore_tech_cost_multiplier = true
  },

  {
    type = "technology",
    name = "nullius-distillation-1",
    order = "nullius-cc",
    icon = "__base__/graphics/technology/oil-processing.png",
    icon_size = 256,
    icon_mipmaps = 4,
    effects = {
      {
        type = "unlock-recipe",
        recipe = "nullius-distillery-1"
      }
    },
    unit = {
      count = 2,
      ingredients = {{"nullius-climatology-pack", 1}, {"nullius-mechanical-pack", 1}},
      time = 7
    },
    prerequisites = {"nullius-mechanical-engineering-1", "nullius-filtration-1"},
    ignore_tech_cost_multiplier = true
  },
  {
    type = "technology",
    name = "nullius-energy-distribution-1",
    order = "nullius-cc",
    icon = "__base__/graphics/technology/electric-energy-distribution-1.png",
    icon_size = 256,
    icon_mipmaps = 4,
    effects = {
      {
        type = "unlock-recipe",
        recipe = "nullius-power-pole-1"
      }
    },
    unit = {
      count = 1,
      ingredients = {{"nullius-geology-pack", 1}, {"nullius-climatology-pack", 1}, {"nullius-mechanical-pack", 1}},
      time = 12
    },
    prerequisites = {"nullius-mechanical-engineering-1"},
    ignore_tech_cost_multiplier = true
  },
  {
    type = "technology",
    name = "nullius-mining-1",
    order = "nullius-cc",
    icon_size = 64,
    icon_mipmaps = 4,
    icon = "__base__/graphics/icons/burner-mining-drill.png",
    effects = {
      {
        type = "unlock-recipe",
        recipe = "nullius-small-miner-1"
      },
      {
        type = "character-mining-speed",
        modifier = 0.25
      }
    },
    unit = {
      count = 2,
      ingredients = {{"nullius-geology-pack", 1}, {"nullius-mechanical-pack", 1}},
      time = 7
    },
    prerequisites = {"nullius-mechanical-engineering-1", "nullius-checkpoint-furnace"},
    ignore_tech_cost_multiplier = true
  },
  {
    type = "technology",
    name = "nullius-actuation-1",
    order = "nullius-cc",
    icon = "__base__/graphics/technology/fast-inserter.png",
    icon_size = 256,
    icon_mipmaps = 4,
    effects = {
      {
        type = "unlock-recipe",
        recipe = "nullius-inserter-1"
      }
    },
    unit = {
      count = 2,
      ingredients = {{"nullius-mechanical-pack", 1}},
      time = 8
    },
    prerequisites = {"nullius-mechanical-engineering-1"},
    ignore_tech_cost_multiplier = true
  },
  {
    type = "technology",
    name = "nullius-logistics-1",
    order = "nullius-cc",
    icon = "__base__/graphics/technology/logistics-1.png",
    icon_size = 256,
    icon_mipmaps = 4,
    effects = {
      {
        type = "unlock-recipe",
        recipe = "nullius-conveyor-belt-1"
      },
      {
        type = "unlock-recipe",
        recipe = "nullius-underground-belt-1"
      }
    },
    unit = {
      count = 2,
      ingredients = {{"nullius-mechanical-pack", 1}},
      time = 8
    },
    prerequisites = {"nullius-mechanical-engineering-1", "nullius-storage-1"},
    ignore_tech_cost_multiplier = true
  },
  {
    type = "technology",
    name = "nullius-pumping-1",
    order = "nullius-cc",
    icon_size = 64,
    icon_mipmaps = 4,
    icon = "__base__/graphics/icons/pump.png",
    effects = {
      {
        type = "unlock-recipe",
        recipe = "nullius-pump-1"
      },
      {
        type = "unlock-recipe",
        recipe = "nullius-relief-valve"
      },
      {
        type = "unlock-recipe",
        recipe = "nullius-top-up-valve"
      }
    },
    unit = {
      count = 2,
      ingredients = {{"nullius-climatology-pack", 1}, {"nullius-mechanical-pack", 1}},
      time = 6
    },
    prerequisites = {"nullius-venting-1", "nullius-mechanical-engineering-1"},
    ignore_tech_cost_multiplier = true
  },
  {
    type = "technology",
    name = "nullius-toolmaking-1",
    order = "nullius-cc",
    icon = "__base__/graphics/technology/steel-axe.png",
    icon_size = 256,
    icon_mipmaps = 4,
    effects = {
      {
        type = "character-mining-speed",
        modifier = 0.25
      },
      {
        type = "character-crafting-speed",
        modifier = 0.15
      }
    },
    unit = {
      count = 1,
      ingredients = {{"nullius-mechanical-pack", 1}},
      time = 6
    },
    prerequisites = {"nullius-mechanical-engineering-1"},
    ignore_tech_cost_multiplier = true
  },

  {
    type = "technology",
    name = "nullius-wind-power-1",
    order = "nullius-cd",
    icon_size = 254,
    icon = TECHPATH .. "tech_windturbine1.png",
    effects = {
      {
        type = "unlock-recipe",
        recipe = "nullius-wind-turbine-1"
      },
      {
        type = "unlock-recipe",
        recipe = "nullius-turbine-open-1"
      }
    },
    unit = {
      count = 2,
      ingredients = {{"nullius-climatology-pack", 1}, {"nullius-mechanical-pack", 1}},
      time = 8
    },
    prerequisites = {"nullius-energy-distribution-1"},
    ignore_tech_cost_multiplier = true
  },
  {
    type = "technology",
    name = "nullius-automation",
    localised_name = {"", {"technology-name.nullius-automation"}, " ", 1},
    order = "nullius-cd",
    icon = "__base__/graphics/technology/automation-1.png",
    icon_size = 256,
    icon_mipmaps = 4,
    effects = {
      {
        type = "unlock-recipe",
        recipe = "nullius-small-assembler-1"
      }
    },
    unit = {
      count = 2,
      ingredients = {{"nullius-mechanical-pack", 1}},
      time = 12
    },
    prerequisites = {"nullius-logistics-1", "nullius-actuation-1", "nullius-toolmaking-1"},
    ignore_tech_cost_multiplier = true
  },
  {
    type = "technology",
    name = "nullius-desalination",
    order = "nullius-cd",
    icon = "__base__/graphics/icons/oil-refinery.png",
    icon_size = 64,
    icon_mipmaps = 4,
    effects = {
      {
        type = "unlock-recipe",
        recipe = "nullius-desalination"
      }
    },
    unit = {
      count = 3,
      ingredients = {{"nullius-geology-pack", 1}, {"nullius-climatology-pack", 1}, {"nullius-mechanical-pack", 1}},
      time = 10
    },
    prerequisites = {"nullius-distillation-1", "nullius-inorganic-chemistry-1"},
    ignore_tech_cost_multiplier = true
  },
  {
    type = "technology",
    name = "nullius-metalworking-1",
    order = "nullius-cd",
    icon = "__angelssmelting__/graphics/technology/induction-furnace-tech.png",
    icon_size = 256,
    icon_mipmaps = 2,
    effects = {
      {
        type = "unlock-recipe",
        recipe = "nullius-foundry-1"
      }
    },
    unit = {
      count = 2,
      ingredients = {{"nullius-geology-pack", 1}, {"nullius-mechanical-pack", 1}},
      time = 8
    },
    prerequisites = {"nullius-mining-1", "nullius-actuation-1"},
    ignore_tech_cost_multiplier = true
  },

  {
    type = "technology",
    name = "nullius-steelmaking-1",
    order = "nullius-ce",
    icon = "__base__/graphics/technology/steel-processing.png",
    icon_size = 256,
    icon_mipmaps = 4,
    effects = {
      {
        type = "unlock-recipe",
        recipe = "nullius-steel-ingot-1"
      },
      {
        type = "unlock-recipe",
        recipe = "nullius-steel-plate-1"
      }
    },
    unit = {
      count = 3,
      ingredients = {{"nullius-geology-pack", 1}, {"nullius-mechanical-pack", 1}},
      time = 9
    },
    prerequisites = {"nullius-metalworking-1"},
    ignore_tech_cost_multiplier = true
  },
  {
    type = "technology",
    name = "nullius-mineral-processing-1",
    order = "nullius-ce",
    icon_size = 256,
    icon = "__angelsrefining__/graphics/technology/ore-sorting.png",
    effects = {
      {
        type = "unlock-recipe",
        recipe = "nullius-crusher-1"
      },
      {
        type = "unlock-recipe",
        recipe = "nullius-crushed-bauxite"
      },
      {
        type = "unlock-recipe",
        recipe = "nullius-crushed-limestone-1"
      }
    },
    unit = {
      count = 2,
      ingredients = {{"nullius-geology-pack", 1}, {"nullius-mechanical-pack", 1}},
      time = 10
    },
    prerequisites = {"nullius-metalworking-1", "nullius-automation"},
    ignore_tech_cost_multiplier = true
  },
  {
    type = "technology",
    name = "nullius-electrolysis-2",
    order = "nullius-ce",
    icon_size = 128,
    icon = "__angelspetrochem__/graphics/technology/electrolyser-tech.png",
    effects = {
      {
        type = "unlock-recipe",
        recipe = "nullius-electrolyzer-1"
      },
      {
        type = "unlock-recipe",
        recipe = "nullius-water-electrolysis"
      },
      {
        type = "unlock-recipe",
        recipe = "nullius-brine-electrolysis"
      }
    },
    unit = {
      count = 2,
      ingredients = {{"nullius-climatology-pack", 1}, {"nullius-mechanical-pack", 1}},
      time = 12
    },
    prerequisites = {"nullius-desalination", "nullius-energy-distribution-1"},
    ignore_tech_cost_multiplier = true
  },
  {
    type = "technology",
    name = "nullius-water-filtration-2",
    order = "nullius-ce",
    icon_size = 256,
    icon = "__angelsrefining__/graphics/technology/water-treatment.png",
    effects = {
      {
        type = "unlock-recipe",
        recipe = "nullius-hydro-plant-1"
      },
      {
        type = "unlock-recipe",
        recipe = "nullius-seawater-intake-1"
      }
    },
    unit = {
      count = 2,
      ingredients = {{"nullius-geology-pack", 1}, {"nullius-climatology-pack", 1}, {"nullius-mechanical-pack", 1}},
      time = 10
    },
    prerequisites = {"nullius-desalination", "nullius-automation", "nullius-pumping-1"},
    ignore_tech_cost_multiplier = true
  },

  {
    type = "technology",
    name = "nullius-air-filtration-1",
    order = "nullius-cf",
    icon_size = 128,
    icon = "__angelspetrochem__/graphics/technology/air-filter-tech.png",
    effects = {
      {
        type = "unlock-recipe",
        recipe = "nullius-air-filter-1"
      }
    },
    unit = {
      count = 3,
      ingredients = {{"nullius-climatology-pack", 1}, {"nullius-mechanical-pack", 1}},
      time = 9
    },
    prerequisites = {"nullius-wind-power-1", "nullius-water-filtration-2"},
    ignore_tech_cost_multiplier = true
  },
  {
    type = "technology",
    name = "nullius-steelworking",
    order = "nullius-cf",
    icon = "__base__/graphics/technology/steel-processing.png",
    icon_size = 256,
    icon_mipmaps = 4,
    effects = {
      {
        type = "unlock-recipe",
        recipe = "nullius-steel-rod-1"
      },
      {
        type = "unlock-recipe",
        recipe = "nullius-steel-beam"
      },
      {
        type = "unlock-recipe",
        recipe = "nullius-steel-sheet-1"
      },
      {
        type = "unlock-recipe",
        recipe = "nullius-steel-gear"
      }
    },
    unit = {
      count = 4,
      ingredients = {{"nullius-geology-pack", 1}, {"nullius-mechanical-pack", 1}},
      time = 8
    },
    prerequisites = {"nullius-checkpoint-steel-ingot", "nullius-mineral-processing-1"},
    ignore_tech_cost_multiplier = true
  },
  {
    type = "technology",
    name = "nullius-mechanical-separation",
    order = "nullius-cf",
    icon_size = 64,
    icon_mipmaps = 4,
    icon = "__base__/graphics/icons/splitter.png",
    effects = {
      {
        type = "unlock-recipe",
        recipe = "nullius-splitter-1"
      }
    },
    unit = {
      count = 2,
      ingredients = {{"nullius-mechanical-pack", 1}},
      time = 10
    },
    prerequisites = {"nullius-mineral-processing-1"},
    ignore_tech_cost_multiplier = true
  },
  {
    type = "technology",
    name = "nullius-flotation-1",
    order = "nullius-cf",
    icon_size = 256,
    icon = "__angelsrefining__/graphics/technology/hydro-refining.png",
    effects = {
      {
        type = "unlock-recipe",
        recipe = "nullius-flotation-cell-1"
      }
    },
    unit = {
      count = 3,
      ingredients = {{"nullius-geology-pack", 1}, {"nullius-climatology-pack", 1}, {"nullius-mechanical-pack", 1}},
      time = 7
    },
    prerequisites = {"nullius-mineral-processing-1", "nullius-water-filtration-2"},
    ignore_tech_cost_multiplier = true
  },
  {
    type = "technology",
    name = "nullius-energy-storage-1",
    order = "nullius-cf",
    icon_size = 64,
    icon_mipmaps = 4,
    icon = "__base__/graphics/icons/steam-turbine.png",
    effects = {
      {
        type = "unlock-recipe",
        recipe = "nullius-combustion-chamber-1"
      },
      {
        type = "unlock-recipe",
        recipe = "nullius-hydrogen-combustion-1"
      },
      {
        type = "unlock-recipe",
        recipe = "nullius-battery-recharging-1"
      }
    },
    unit = {
      count = 2,
      ingredients = {{"nullius-climatology-pack", 1}, {"nullius-mechanical-pack", 1}},
      time = 12
    },
    prerequisites = {"nullius-checkpoint-wind-power", "nullius-electrolysis-2"},
    ignore_tech_cost_multiplier = true
  },

  {
    type = "technology",
    name = "nullius-land-fill-2",
    order = "nullius-cg",
    icon = "__base__/graphics/technology/landfill.png",
    icon_size = 256,
    icon_mipmaps = 4,
    effects = {
      {
        type = "unlock-recipe",
        recipe = "nullius-land-fill-bauxite"
      },
      {
        type = "unlock-recipe",
        recipe = "nullius-land-fill-iron"
      },
      {
        type = "unlock-recipe",
        recipe = "nullius-land-fill-limestone"
      }
    },
    unit = {
      count = 4,
      ingredients = {{"nullius-geology-pack", 3}, {"nullius-climatology-pack", 1}, {"nullius-mechanical-pack", 1}},
      time = 5
    },
    prerequisites = {"nullius-land-fill-1", "nullius-mechanical-separation"},
    ignore_tech_cost_multiplier = true
  },
  {
    type = "technology",
    name = "nullius-toolmaking-2",
    order = "nullius-cg",
    icon = "__base__/graphics/technology/steel-axe.png",
    icon_size = 256,
    icon_mipmaps = 4,
    effects = {
      {
        type = "character-mining-speed",
        modifier = 0.25
      },
      {
        type = "character-crafting-speed",
        modifier = 0.25
      }
    },
    unit = {
      count = 4,
      ingredients = {{"nullius-geology-pack", 1}, {"nullius-mechanical-pack", 1}},
      time = 8
    },
    prerequisites = {"nullius-steelworking"},
    ignore_tech_cost_multiplier = true
  },
  {
    type = "technology",
    name = "nullius-silica-processing-1",
    order = "nullius-cg",
    icon = "__angelssmelting__/graphics/icons/powder-silica.png",
    icon_size = 64,
    icon_mipmaps = 4,
    effects = {
      {
        type = "unlock-recipe",
        recipe = "nullius-silica-1"
      },
      {
        type = "unlock-recipe",
        recipe = "nullius-silica-glass"
      }
    },
    unit = {
      count = 4,
      ingredients = {{"nullius-geology-pack", 1}, {"nullius-mechanical-pack", 1}},
      time = 6
    },
    prerequisites = {"nullius-flotation-1", "nullius-mechanical-separation"},
    ignore_tech_cost_multiplier = true
  },
  {
    type = "technology",
    name = "nullius-iron-smelting-2",
    order = "nullius-cg",
    icon = "__angelssmelting__/graphics/technology/smelting-iron-tech.png",
    icon_size = 256,
    icon_mipmaps = 4,
    effects = {
      {
        type = "unlock-recipe",
        recipe = "nullius-crushed-iron-ore"
      },
      {
        type = "unlock-recipe",
        recipe = "nullius-iron-ingot-2"
      }
    },
    unit = {
      count = 3,
      ingredients = {{"nullius-geology-pack", 1}, {"nullius-mechanical-pack", 1}},
      time = 8
    },
    prerequisites = {"nullius-air-filtration-1", "nullius-mechanical-separation",
	    "nullius-checkpoint-iron-ingot-2"},
    ignore_tech_cost_multiplier = true
  },
  {
    type = "technology",
    name = "nullius-organic-chemistry-2",
    order = "nullius-cg",
    icons = data.raw.recipe["nullius-carbon-monoxide-to-alkenes"].icons,
    effects = {
      {
        type = "unlock-recipe",
        recipe = "nullius-carbon-monoxide-to-alkenes"
      },
      {
        type = "unlock-recipe",
        recipe = "nullius-butadiene"
      },
      {
        type = "unlock-recipe",
        recipe = "nullius-styrene"
      }
    },
    unit = {
      count = 4,
      ingredients = {{"nullius-climatology-pack", 1}, {"nullius-mechanical-pack", 1}},
      time = 8
    },
    prerequisites = {"nullius-checkpoint-energy-storage", "nullius-checkpoint-caustic-solution"},
    ignore_tech_cost_multiplier = true
  },

  {
    type = "technology",
    name = "nullius-illumination-1",
    order = "nullius-ch",
    icon = "__base__/graphics/technology/optics.png",
    icon_size = 256,
    icon_mipmaps = 4,
    effects = {
      {
        type = "unlock-recipe",
        recipe = "nullius-lamp-1a"
      },
      {
        type = "unlock-recipe",
        recipe = "nullius-broken-sensor-node"
      }
    },
    unit = {
      count = 3,
      ingredients = {{"nullius-geology-pack", 1}, {"nullius-climatology-pack", 1}, {"nullius-mechanical-pack", 1}},
      time = 8
    },
    prerequisites = {"nullius-checkpoint-glass"},
    ignore_tech_cost_multiplier = true
  },
  {
    type = "technology",
    name = "nullius-plumbing-3",
    order = "nullius-ch",
    icon = "__base__/graphics/technology/fluid-handling.png",
    icon_size = 256,
    icon_mipmaps = 4,
    effects = {
      {
        type = "unlock-recipe",
        recipe = "nullius-medium-tank-2"
      },
      {
        type = "unlock-recipe",
        recipe = "nullius-small-tank-1"
      },
      {
        type = "unlock-recipe",
        recipe = "nullius-plastic-pipe"
      },
      {
        type = "unlock-recipe",
        recipe = "nullius-underground-pipe-2"
      },
      {
        type = "unlock-recipe",
        recipe = "nullius-steel-pipe"
      }
    },
    unit = {
      count = 3,
      ingredients = {{"nullius-climatology-pack", 1}, {"nullius-mechanical-pack", 1}},
      time = 10
    },
    prerequisites = {"nullius-toolmaking-2", "nullius-checkpoint-water"},
    ignore_tech_cost_multiplier = true
  },
  {
    type = "technology",
    name = "nullius-chemical-engineering-1",
    order = "nullius-ch",
    icon_size = 128,
    icon = "__angelspetrochem__/graphics/technology/chemical-plant-tech.png",
    effects = {
      {
        type = "unlock-recipe",
        recipe = "nullius-chemical-plant-1"
      }
    },
    unit = {
      count = 4,
      ingredients = {{"nullius-geology-pack", 1}, {"nullius-climatology-pack", 1}, {"nullius-mechanical-pack", 1}},
      time = 9
    },
    prerequisites = {"nullius-checkpoint-caustic-solution", "nullius-silica-processing-1"},
    ignore_tech_cost_multiplier = true
  },
  {
    type = "technology",
    name = "nullius-masonry-3",
    order = "nullius-ch",
    icon_size = 32,
    icon = "__angelssmelting__/graphics/icons/silicon-crucible.png",
    effects = {
      {
        type = "unlock-recipe",
        recipe = "nullius-refractory-brick-1"
      },
      {
        type = "unlock-recipe",
        recipe = "nullius-crucible"
      }
    },
    unit = {
      count = 5,
      ingredients = {{"nullius-geology-pack", 1}, {"nullius-climatology-pack", 1}, {"nullius-mechanical-pack", 1}},
      time = 8
    },
    prerequisites = {"nullius-silica-processing-1", "nullius-toolmaking-2"},
    ignore_tech_cost_multiplier = true
  },

  {
    type = "technology",
    name = "nullius-waste-management",
    order = "nullius-ci",
    icon_size = 64,
    icon = ICONPATH .. "fluid/wastewater.png",
    effects = {
      {
        type = "unlock-recipe",
        recipe = "nullius-sand-disposal"
      },
      {
        type = "unlock-recipe",
        recipe = "nullius-gravel-disposal"
      },
      {
        type = "unlock-recipe",
        recipe = "nullius-dust-disposal-1"
      },
      {
        type = "unlock-recipe",
        recipe = "nullius-sludge-disposal-1"
      },
      {
        type = "unlock-recipe",
        recipe = "nullius-iron-disposal"
      },
      {
        type = "unlock-recipe",
        recipe = "nullius-limestone-disposal"
      },
      {
        type = "unlock-recipe",
        recipe = "nullius-land-fill-sludge"
      }
    },
    unit = {
      count = 3,
      ingredients = {{"nullius-geology-pack", 2}, {"nullius-climatology-pack", 2}, {"nullius-mechanical-pack", 1}},
      time = 8
    },
    prerequisites = {"nullius-land-fill-2", "nullius-plumbing-3"},
    ignore_tech_cost_multiplier = true
  },
  {
    type = "technology",
    name = "nullius-organic-chemistry-3",
    order = "nullius-ci",
    icon_size = 64,
    icon = ICONPATH .. "rubber.png",
    effects = {
      {
        type = "unlock-recipe",
        recipe = "nullius-rubber"
      },
      {
        type = "unlock-recipe",
        recipe = "nullius-polypropylene"
      },
      {
        type = "unlock-recipe",
        recipe = "nullius-methanol"
      }
    },
    unit = {
      count = 6,
      ingredients = {{"nullius-climatology-pack", 1}, {"nullius-mechanical-pack", 1}},
      time = 8
    },
    prerequisites = {"nullius-checkpoint-plastic-2", "nullius-chemical-engineering-1"},
    ignore_tech_cost_multiplier = true
  },
  {
    type = "technology",
    name = "nullius-inorganic-chemistry-2",
    order = "nullius-ci",
    icons = data.raw.fluid["nullius-hydrogen-chloride"].icons,
    effects = {
      {
        type = "unlock-recipe",
        recipe = "nullius-caustic-solution"
      },
      {
        type = "unlock-recipe",
        recipe = "nullius-hydrogen-chloride"
      },
      {
        type = "unlock-recipe",
        recipe = "nullius-acid-hydrochloric"
      },
      {
        type = "unlock-recipe",
        recipe = "nullius-hydrochloric-neutralization"
      }
    },
    unit = {
      count = 5,
      ingredients = {{"nullius-geology-pack", 1}, {"nullius-climatology-pack", 1}, {"nullius-mechanical-pack", 1}},
      time = 5
    },
    prerequisites = {"nullius-chemical-engineering-1", "nullius-plumbing-3"},
    ignore_tech_cost_multiplier = true
  },
  {
    type = "technology",
    name = "nullius-metallurgy-2",
    order = "nullius-ci",
    icon = "__base__/graphics/technology/advanced-material-processing.png",
    icon_size = 256,
    icon_mipmaps = 4,
    effects = {
      {
        type = "unlock-recipe",
        recipe = "nullius-small-furnace-2"
      }
    },
    unit = {
      count = 8,
      ingredients = {{"nullius-geology-pack", 1}, {"nullius-mechanical-pack", 1}},
      time = 6
    },
    prerequisites = {"nullius-iron-smelting-2", "nullius-masonry-3"},
    ignore_tech_cost_multiplier = true
  },

  {
    type = "technology",
    name = "nullius-hydrocarbon-combustion-1",
    order = "nullius-cj",
    icons = data.raw.recipe["nullius-benzene-combustion"].icons,
    effects = {
      {
        type = "unlock-recipe",
        recipe = "nullius-ethylene-combustion"
      },
      {
        type = "unlock-recipe",
        recipe = "nullius-propene-combustion"
      },
      {
        type = "unlock-recipe",
        recipe = "nullius-benzene-combustion"
      }
    },
    unit = {
      count = 6,
      ingredients = {{"nullius-climatology-pack", 1}, {"nullius-mechanical-pack", 1}},
      time = 5
    },
    prerequisites = {"nullius-waste-management", "nullius-organic-chemistry-2"},
    ignore_tech_cost_multiplier = true
  },
  {
    type = "technology",
    name = "nullius-storage-2",
    order = "nullius-cj",
    icon_size = 64,
    icon_mipmaps = 4,
    icon = "__base__/graphics/icons/steel-chest.png",
    effects = {
      {
        type = "unlock-recipe",
        recipe = "nullius-small-chest-2"
      },
      {
        type = "unlock-recipe",
        recipe = "nullius-large-chest-1"
      },
      {
        type = "unlock-recipe",
        recipe = "nullius-large-cargo-pod-1"
      }
    },
    unit = {
      count = 8,
      ingredients = {{"nullius-climatology-pack", 1}, {"nullius-mechanical-pack", 1}},
      time = 8
    },
    prerequisites = {"nullius-steelworking", "nullius-organic-chemistry-3"},
    ignore_tech_cost_multiplier = true
  },
  {
    type = "technology",
    name = "nullius-aluminum-production",
    localised_name = {"", {"technology-name.nullius-aluminum-production"}, " ", 1},
    order = "nullius-cj",
    icon = "__angelssmelting__/graphics/technology/smelting-aluminium-tech.png",
    icon_size = 256,
    icon_mipmaps = 4,
    effects = {
      {
        type = "unlock-recipe",
        recipe = "nullius-bauxite-flotation-1"
      },
      {
        type = "unlock-recipe",
        recipe = "nullius-alumina-1"
      },
      {
        type = "unlock-recipe",
        recipe = "nullius-aluminum-hydroxide"
      },
      {
        type = "unlock-recipe",
        recipe = "nullius-aluminum-ingot-1"
      }
    },
    unit = {
      count = 8,
      ingredients = {{"nullius-geology-pack", 1}, {"nullius-mechanical-pack", 1}},
      time = 6
    },
    prerequisites = {"nullius-inorganic-chemistry-2"},
    ignore_tech_cost_multiplier = true
  },
  {
    type = "technology",
    name = "nullius-cybernetics-1",
    order = "nullius-cj",
    icon = "__base__/graphics/technology/armor-making.png",
    icon_size = 256,
    icon_mipmaps = 4,
    effects = {
      {
        type = "unlock-recipe",
        recipe = "nullius-chassis-2"
      },
      {
        type = "character-health-bonus",
        modifier = 50
      }
    },
    unit = {
      count = 10,
      ingredients = {{"nullius-geology-pack", 1}, {"nullius-climatology-pack", 1}, {"nullius-mechanical-pack", 1}},
      time = 6
    },
    prerequisites = {"nullius-metallurgy-2", "nullius-checkpoint-rubber", "nullius-illumination-1"},
    ignore_tech_cost_multiplier = true
  },
  {
    type = "technology",
    name = "nullius-silicon-production-1",
    order = "nullius-cj",
    icon = "__angelssmelting__/graphics/technology/smelting-silicon-tech.png",
    icon_size = 256,
    icon_mipmaps = 4,
    effects = {
      {
        type = "unlock-recipe",
        recipe = "nullius-silicon-ingot-1"
      },
      {
        type = "unlock-recipe",
        recipe = "nullius-polycrystalline-silicon"
      }
    },
    unit = {
      count = 12,
      ingredients = {{"nullius-geology-pack", 1}, {"nullius-mechanical-pack", 1}},
      time = 6
    },
    prerequisites = {"nullius-metallurgy-2", "nullius-inorganic-chemistry-2"},
    ignore_tech_cost_multiplier = true
  },

  {
    type = "technology",
    name = "nullius-mass-production-1",
    order = "nullius-ck",
    icon = "__base__/graphics/technology/automation-1.png",
    icon_size = 256,
    icon_mipmaps = 4,
    effects = {
      {
        type = "unlock-recipe",
        recipe = "nullius-medium-assembler-1"
      }
    },
    unit = {
      count = 10,
      ingredients = {{"nullius-mechanical-pack", 1}},
      time = 6
    },
    prerequisites = {"nullius-storage-2", "nullius-checkpoint-mineral-dust"},
    ignore_tech_cost_multiplier = true
  },
  {
    type = "technology",
    name = "nullius-barreling-1",
    order = "nullius-ck",
    icon_size = 128,
    icon = "__angelsrefining__/graphics/technology/barrel-tech.png",
    effects = {
      {
        type = "unlock-recipe",
        recipe = "nullius-barrel-1"
      },
      {
        type = "unlock-recipe",
        recipe = "nullius-barrel-pump-1"
      }
    },
    unit = {
      count = 8,
      ingredients = {
        {"nullius-geology-pack", 1}, {"nullius-climatology-pack", 1},
        {"nullius-mechanical-pack", 1}
      },
      time = 6
    },
    prerequisites = {"nullius-plumbing-3", "nullius-storage-2"},
    ignore_tech_cost_multiplier = true
  },
  {
    type = "technology",
    name = "nullius-lubrication",
    order = "nullius-ck",
    icon = "__base__/graphics/technology/lubricant.png",
    icon_size = 256,
    icon_mipmaps = 4,
    effects = {
      {
        type = "unlock-recipe",
        recipe = "nullius-lubricant"
      }
    },
    unit = {
      count = 15,
      ingredients = {
        {"nullius-geology-pack", 1}, {"nullius-climatology-pack", 1},
        {"nullius-mechanical-pack", 1}
      },
      time = 5
    },
    prerequisites = {"nullius-cybernetics-1", "nullius-silicon-production-1"},
    ignore_tech_cost_multiplier = true
  },
  {
    type = "technology",
    name = "nullius-aluminum-working-1",
    order = "nullius-ck",
    icon_size = 32,
    icon = "__angelssmelting__/graphics/icons/plate-aluminium.png",
    effects = {
      {
        type = "unlock-recipe",
        recipe = "nullius-aluminum-plate-1"
      },
      {
        type = "unlock-recipe",
        recipe = "nullius-aluminum-rod-1"
      },
      {
        type = "unlock-recipe",
        recipe = "nullius-aluminum-sheet-1"
      },
      {
        type = "unlock-recipe",
        recipe = "nullius-aluminum-wire-1"
      }
    },
    unit = {
      count = 12,
      ingredients = {{"nullius-geology-pack", 1}, {"nullius-climatology-pack", 1}, {"nullius-mechanical-pack", 1}},
      time = 8
    },
    prerequisites = {"nullius-aluminum-production", "nullius-metallurgy-2"},
    ignore_tech_cost_multiplier = true
  },
  {
    type = "technology",
    name = "nullius-insulation-1",
    order = "nullius-ck",
	icon = "__angelssmelting__/graphics/icons/wire-coil-tin.png",
	icon_size = 64,
    effects = {
      {
        type = "unlock-recipe",
        recipe = "nullius-insulated-wire-1"
      },
      {
        type = "unlock-recipe",
        recipe = "nullius-portable-generator-1"
      }
    },
    unit = {
      count = 10,
      ingredients = {{"nullius-geology-pack", 1}, {"nullius-climatology-pack", 1},
	      {"nullius-mechanical-pack", 1}},
      time = 6
    },
    prerequisites = {"nullius-aluminum-working-1", "nullius-cybernetics-1",
	    "nullius-checkpoint-rubber"},
    ignore_tech_cost_multiplier = true
  },

  {
    type = "technology",
    name = "nullius-freight-transportation-1",
    order = "nullius-cl",
    icon = "__base__/graphics/technology/railway.png",
    icon_size = 256,
    icon_mipmaps = 4,
    effects = {
      {
        type = "unlock-recipe",
        recipe = "nullius-rail"
      },
      {
        type = "unlock-recipe",
        recipe = "nullius-locomotive-1"
      },
      {
        type = "unlock-recipe",
        recipe = "nullius-cargo-wagon-1"
      },
      {
        type = "unlock-recipe",
        recipe = "nullius-empty-canister"
      },
      {
        type = "unlock-recipe",
        recipe = "nullius-hydrogen-canister-1"
      },
      {
        type = "unlock-recipe",
        recipe = "nullius-canister-emptying"
      }
    },
    unit = {
      count = 12,
      ingredients = {{"nullius-climatology-pack", 1}, {"nullius-mechanical-pack", 1}},
      time = 6
    },
    prerequisites = {"nullius-insulation-1", "nullius-barreling-1", "nullius-lubrication"},
    ignore_tech_cost_multiplier = true
  },
  {
    type = "technology",
    name = "nullius-electronics-1",
    order = "nullius-cl",
    icon = "__base__/graphics/technology/electronics.png",
    icon_size = 256,
    icon_mipmaps = 4,
    effects = {
      {
        type = "unlock-recipe",
        recipe = "nullius-logic-circuit"
      },
      {
        type = "unlock-recipe",
        recipe = "nullius-capacitor"
      }
    },
    unit = {
      count = 20,
      ingredients = {{"nullius-geology-pack", 1}, {"nullius-climatology-pack", 1}, {"nullius-mechanical-pack", 1}},
      time = 5
    },
    prerequisites = {"nullius-checkpoint-polycrystalline-silicon", "nullius-checkpoint-aluminum-ingot",
	    "nullius-insulation-1"},
    ignore_tech_cost_multiplier = true
  },
  {
    type = "technology",
    name = "nullius-boiling-1",
    order = "nullius-cl",
    icon = ENTICONPATH .. "exchanger1.png",
    icon_size = 64,
    effects = {
      {
        type = "unlock-recipe",
        recipe = "nullius-heat-pipe-1"
      },
      {
        type = "unlock-recipe",
        recipe = "nullius-boiling-water"
      },
      {
        type = "unlock-recipe",
        recipe = "nullius-boiling-saline"
      },
      {
        type = "unlock-recipe",
        recipe = "nullius-boiling-seawater"
      },
      {
        type = "unlock-recipe",
        recipe = "nullius-heat-exchanger-1"
      }
    },
    unit = {
      count = 8,
      ingredients = {{"nullius-geology-pack", 1}, {"nullius-climatology-pack", 2},
        {"nullius-mechanical-pack", 1}},
      time = 5
    },
    prerequisites = {"nullius-checkpoint-aluminum-ingot", "nullius-insulation-1", "nullius-hydrocarbon-combustion-1"},
    ignore_tech_cost_multiplier = true
  },

  {
    type = "technology",
    name = "nullius-chirality-1",
	localised_description = {"", {"technology-description.nullius-chirality", 1,
	    {"technology-description.nullius-chirality-1"}}, "\n",
		{"technology-description.nullius-checkpoint-mirror"}},
    order = "nullius-cm",
    icon_size = 254,
    icon = TECHPATH .. "chiral.png",
    effects = { },
    unit = {
      count = 10,
      ingredients = {{"nullius-climatology-pack", 1}, {"nullius-mechanical-pack", 1}},
      time = 6
    },
    prerequisites = {"nullius-boiling-1", "long-inserters-1"},
    ignore_tech_cost_multiplier = true
  },
  {
    type = "technology",
    name = "nullius-solar-thermal-power-1",
    order = "nullius-cm",
    icon = ENTICONPATH .. "collector1.png",
    icon_size = 64,
    effects = {
      {
        type = "unlock-recipe",
        recipe = "nullius-solar-collector-1"
      }
    },
    unit = {
      count = 12,
      ingredients = {{"nullius-geology-pack", 1}, {"nullius-climatology-pack", 2},
        {"nullius-mechanical-pack", 1}},
      time = 5
    },
    prerequisites = {"nullius-boiling-1", "nullius-illumination-1"},
    ignore_tech_cost_multiplier = true
  },
  {
    type = "technology",
    name = "nullius-personal-transportation-1",
    order = "nullius-cm",
    icon = "__base__/graphics/technology/automobilism.png",
    icon_size = 256,
    icon_mipmaps = 4,
    effects = {
      {
        type = "unlock-recipe",
        recipe = "nullius-car-1"
      }
    },
    unit = {
      count = 8,
      ingredients = {{"nullius-geology-pack", 1}, {"nullius-climatology-pack", 1}, {"nullius-mechanical-pack", 1}},
      time = 8
    },
    prerequisites = {"nullius-freight-transportation-1", "nullius-checkpoint-lubricant"},
    ignore_tech_cost_multiplier = true
  },
  {
    type = "technology",
    name = "nullius-mass-production-2",
    order = "nullius-cm",
    icon = "__base__/graphics/technology/automation-1.png",
    icon_size = 256,
    icon_mipmaps = 4,
    effects = {
      {
        type = "unlock-recipe",
        recipe = "nullius-medium-miner-1"
      },
      {
        type = "unlock-recipe",
        recipe = "nullius-medium-furnace-1"
      }
    },
    unit = {
      count = 15,
      ingredients = {{"nullius-geology-pack", 1}, {"nullius-climatology-pack", 1}, {"nullius-mechanical-pack", 1}},
      time = 6
    },
    prerequisites = {"nullius-freight-transportation-1", "nullius-mass-production-1"},
    ignore_tech_cost_multiplier = true
  },
  {
    type = "technology",
    name = "nullius-hydrocarbon-combustion-2",
    order = "nullius-cm",
    icon_size = 64,
    icon = ICONPATH .. "canister-methanol.png",
    effects = {
      {
        type = "unlock-recipe",
        recipe = "nullius-methanol-canister-1"
      },
      {
        type = "unlock-recipe",
        recipe = "nullius-methane-combustion-1"
      },
      {
        type = "unlock-recipe",
        recipe = "nullius-methanol-combustion"
      },
      {
        type = "unlock-recipe",
        recipe = "nullius-hydrogen-canister-flushing"
      },
      {
        type = "unlock-recipe",
        recipe = "nullius-methanol-canister-flushing"
      }
    },
    unit = {
      count = 10,
      ingredients = {{"nullius-climatology-pack", 1}, {"nullius-mechanical-pack", 1}},
      time = 6
    },
    prerequisites = {"nullius-checkpoint-freight-transportation", "nullius-boiling-1"},
    ignore_tech_cost_multiplier = true
  },
  {
    type = "technology",
    name = "nullius-fluid-recapture",
    order = "nullius-cn",
    icon = "__base__/graphics/icons/steam-turbine.png",
    icon_size = 64,
    icon_mipmaps = 4,
    effects = {
      {
        type = "unlock-recipe",
        recipe = "nullius-turbine-closed-1"
      }
    },
    unit = {
      count = 8,
      ingredients = {{"nullius-climatology-pack", 1}, {"nullius-mechanical-pack", 1}},
      time = 5
    },
    prerequisites = {"nullius-checkpoint-plumbing"},
    ignore_tech_cost_multiplier = true
  },

  {
    type = "technology",
    name = "nullius-electrical-engineering",
    localised_name = {"", {"technology-name.nullius-electrical-engineering"}, " ", 1},
    order = "nullius-db",
    icons = {
      {
        icon = "__base__/graphics/technology/production-science-pack.png",
        icon_size = 256,
        icon_mipmaps = 4
      },
      {
        icon = "__base__/graphics/icons/processing-unit.png",
        icon_size = 64,
        icon_mipmaps = 4,
        scale = 1.1,
        shift = {0, 34},
        tint = {r=1, g=1, b=1, a=0.5}
      }
    },
    effects = {
      {
        type = "unlock-recipe",
        recipe = "nullius-electrical-pack"
      }
    },
    unit = {
      count = 25,
      ingredients = {{"nullius-geology-pack", 1}, {"nullius-climatology-pack", 1}, {"nullius-mechanical-pack", 1}},
      time = 4
    },
    prerequisites = {"nullius-electronics-1", "nullius-checkpoint-mass-production"},
    ignore_tech_cost_multiplier = true
  },

  {
    type = "technology",
    name = "nullius-toolmaking-3",
    order = "nullius-dc",
    icon = "__base__/graphics/technology/personal-laser-defense-equipment.png",
    icon_size = 256,
    icon_mipmaps = 4,
    effects = {
      {
        type = "character-mining-speed",
        modifier = 0.2
      },
      {
        type = "character-crafting-speed",
        modifier = 0.25
      }
    },
    unit = {
      count = 6,
      ingredients = {
        {"nullius-mechanical-pack", 1}, {"nullius-electrical-pack", 1}
      },
      time = 10
    },
    prerequisites = {"nullius-electrical-engineering"},
    ignore_tech_cost_multiplier = true
  },
  {
    type = "technology",
    name = "nullius-energy-distribution-2",
    order = "nullius-dc",
    icon = "__base__/graphics/technology/electric-energy-distribution-1.png",
    icon_size = 256,
    icon_mipmaps = 4,
    effects = {
      {
        type = "unlock-recipe",
        recipe = "nullius-power-pole-2"
      },
      {
        type = "unlock-recipe",
        recipe = "nullius-pylon-1"
      },
      {
        type = "unlock-recipe",
        recipe = "nullius-power-switch"
      }
    },
    unit = {
      count = 8,
      ingredients = {
        {"nullius-geology-pack", 1}, {"nullius-climatology-pack", 1},
        {"nullius-mechanical-pack", 1}, {"nullius-electrical-pack", 1}
      },
      time = 10
    },
    prerequisites = {"nullius-electrical-engineering", "nullius-solar-thermal-power-1"},
    ignore_tech_cost_multiplier = true
  },
  {
    type = "technology",
    name = "nullius-actuation-2",
    order = "nullius-dc",
    icon = "__base__/graphics/technology/fast-inserter.png",
    icon_size = 256,
    icon_mipmaps = 4,
    effects = {
      {
        type = "unlock-recipe",
        recipe = "nullius-inserter-2"
      },
      {
        type = "unlock-recipe",
        recipe = "nullius-filter-inserter-2"
      }
    },
    unit = {
      count = 10,
      ingredients = {
        {"nullius-mechanical-pack", 1}, {"nullius-electrical-pack", 1}
      },
      ingredients = {{"nullius-mechanical-pack", 1}, {"nullius-electrical-pack", 1}},
      time = 10
    },
    prerequisites = {"nullius-electrical-engineering", "nullius-chirality-1"},
    ignore_tech_cost_multiplier = true
  },
  {
    type = "technology",
    name = "nullius-electromagnetism-2",
    order = "nullius-dc",
    icon = "__base__/graphics/technology/electric-engine.png",
    icon_size = 256,
    icon_mipmaps = 4,
    effects = {
      {
        type = "unlock-recipe",
        recipe = "nullius-motor-2"
      }
    },
    unit = {
      count = 12,
      ingredients = {
        {"nullius-geology-pack", 1}, {"nullius-mechanical-pack", 1}, {"nullius-electrical-pack", 1}
      },
      time = 10
    },
    prerequisites = {"nullius-electrical-engineering", "nullius-personal-transportation-1"},
    ignore_tech_cost_multiplier = true
  },
  {
    type = "technology",
    name = "nullius-empiricism-1",
    order = "nullius-dc",
    icon = "__base__/graphics/technology/research-speed.png",
    icon_size = 256,
    icon_mipmaps = 4,
    effects = {
      {
        type = "unlock-recipe",
        recipe = "nullius-lab-1"
      }
    },
    unit = {
      count = 5,
      ingredients = {
        {"nullius-geology-pack", 1}, {"nullius-climatology-pack", 1},
        {"nullius-mechanical-pack", 1}, {"nullius-electrical-pack", 1}
      },
      time = 10
    },
    prerequisites = {"nullius-electrical-engineering"},
    ignore_tech_cost_multiplier = true
  },

  {
    type = "technology",
    name = "nullius-pumping-2",
    order = "nullius-dd",
    icon_size = 64,
    icon_mipmaps = 4,
    icon = "__base__/graphics/icons/pump.png",
    effects = {
      {
        type = "unlock-recipe",
        recipe = "nullius-pump-2"
      },
      {
        type = "unlock-recipe",
        recipe = "nullius-small-pump-1"
      }
    },
    unit = {
      count = 10,
      ingredients = {
        {"nullius-climatology-pack", 1},
        {"nullius-mechanical-pack", 1}, {"nullius-electrical-pack", 1}
      },
      time = 15
    },
    prerequisites = {"nullius-electromagnetism-2", "nullius-fluid-recapture"},
    ignore_tech_cost_multiplier = true
  },
  {
    type = "technology",
    name = "nullius-geology-2",
    order = "nullius-dd",
    icons = {
      {
        icon = "__base__/graphics/technology/utility-science-pack.png",
        icon_size = 256,
        icon_mipmaps = 4
      },
      {
        icon = "__base__/graphics/icons/stone.png",
        icon_size = 64,
        icon_mipmaps = 4,
        scale = 1.6,
        shift = {0, 36},
        tint = {r=0.6, g=0.4, b=0.2, a=0.5}
      }
    },
    effects = {
      {
        type = "unlock-recipe",
        recipe = "nullius-geology-pack-2"
      }
    },
    unit = {
      count = 16,
      ingredients = {
        {"nullius-geology-pack", 3},
        {"nullius-mechanical-pack", 1}, {"nullius-electrical-pack", 1}},
      time = 15
    },
    prerequisites = {"nullius-checkpoint-lab"}
  },
  {
    type = "technology",
    name = "nullius-signal-processing",
    order = "nullius-dd",
    icon_size = 64,
    icon_mipmaps = 4,
    icon = "__base__/graphics/icons/red-wire.png",
    effects = {
      {
        type = "unlock-recipe",
        recipe = "nullius-red-wire"
      },
      {
        type = "unlock-recipe",
        recipe = "nullius-antenna"
      }
    },
    unit = {
      count = 12,
      ingredients = {
        {"nullius-climatology-pack", 1}, {"nullius-electrical-pack", 1}
      },
      time = 15
    },
    prerequisites = {"nullius-energy-distribution-2"},
    ignore_tech_cost_multiplier = true
  },
  {
    type = "technology",
    name = "nullius-logistics-2",
    order = "nullius-dd",
    icon = "__base__/graphics/technology/logistics-2.png",
    icon_size = 256,
    icon_mipmaps = 4,
    effects = {
      {
        type = "unlock-recipe",
        recipe = "nullius-conveyor-belt-2"
      },
      {
        type = "unlock-recipe",
        recipe = "nullius-underground-belt-2"
      },
      {
        type = "unlock-recipe",
        recipe = "nullius-splitter-2"
      }
    },
    unit = {
      count = 12,
      ingredients = {
        {"nullius-climatology-pack", 1},
        {"nullius-mechanical-pack", 1}, {"nullius-electrical-pack", 1}
      },
      time = 15
    },
    prerequisites = {"nullius-electromagnetism-2", "nullius-actuation-2"},
    ignore_tech_cost_multiplier = true
  },
  {
    type = "technology",
    name = "nullius-maintenance",
    order = "nullius-de",
    icon_size = 64,
    icon_mipmaps = 4,
    icon = "__base__/graphics/icons/repair-pack.png",
    effects = {
      {
        type = "unlock-recipe",
        recipe = "nullius-repair-pack"
      },
      {
        type = "unlock-recipe",
        recipe = "nullius-self-repair-pack"
      },
      {
        type = "unlock-recipe",
        recipe = "nullius-fabrication-tool-2"
      },
      {
        type = "unlock-recipe",
        recipe = "nullius-refueler"
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
    prerequisites = {"nullius-actuation-2", "nullius-toolmaking-3", "nullius-pumping-2"},
    ignore_tech_cost_multiplier = true
  },

  {
    type = "technology",
    name = "nullius-computation",
    order = "nullius-de",
    icon = "__base__/graphics/technology/circuit-network.png",
    icon_size = 256,
    icon_mipmaps = 4,
    effects = {
      {
        type = "unlock-recipe",
        recipe = "nullius-arithmetic-circuit"
      },
      {
        type = "unlock-recipe",
        recipe = "nullius-memory-circuit"
      },
      {
        type = "unlock-recipe",
        recipe = "nullius-green-wire"
      }
    },
    unit = {
      count = 25,
      ingredients = {
        {"nullius-climatology-pack", 1}, {"nullius-electrical-pack", 1}
      },
      time = 20
    },
    prerequisites = {"nullius-signal-processing", "nullius-checkpoint-lab"},
    ignore_tech_cost_multiplier = true
  },
  {
    type = "technology",
    name = "nullius-electrolysis-3",
    order = "nullius-de",
    icon_size = 128,
    icon = "__angelspetrochem__/graphics/technology/electrolyser-tech.png",
    effects = {
      {
        type = "unlock-recipe",
        recipe = "nullius-electrolyzer-2"
      },
      {
        type = "unlock-recipe",
        recipe = "nullius-hydrogen-chloride-electrolysis"
      },
      {
        type = "unlock-recipe",
        recipe = "nullius-steam-electrolysis"
      }
    },
    unit = {
      count = 20,
      ingredients = {
        {"nullius-climatology-pack", 1}, {"nullius-electrical-pack", 1}
      },
      time = 20
    },
    prerequisites = {"nullius-pumping-2", "nullius-energy-distribution-2"}
  },
  {
    type = "technology",
    name = "nullius-mining-2",
    order = "nullius-de",
    icon = "__base__/graphics/technology/mining-productivity.png",
    icon_size = 256,
    icon_mipmaps = 4,
    effects = {
      {
        type = "unlock-recipe",
        recipe = "nullius-small-miner-2"
      },
      {
        type = "unlock-recipe",
        recipe = "nullius-medium-miner-2"
      },
      {
        type = "character-mining-speed",
        modifier = 0.2
      }
    },
    unit = {
      count = 20,
      ingredients = {
        {"nullius-geology-pack", 2},
        {"nullius-mechanical-pack", 1}, {"nullius-electrical-pack", 1}
      },
      time = 20
    },
    prerequisites = {"nullius-geology-2", "nullius-automation-2"}
  },
  {
    type = "technology",
    name = "nullius-hydrology-1",
    order = "nullius-de",
    icon_size = 64,
    icon = ICONPATH .. "fluid/freshwater.png",
    effects = {
      {
        type = "unlock-recipe",
        recipe = "nullius-well-1"
      },
      {
        type = "unlock-recipe",
        recipe = "nullius-freshwater-filtration"
      },
      {
        type = "unlock-recipe",
        recipe = "nullius-sludge-disposal-2"
      },
      {
        type = "unlock-recipe",
        recipe = "nullius-boiling-freshwater"
      }
    },
    unit = {
      count = 15,
      ingredients = {
        {"nullius-geology-pack", 1}, {"nullius-climatology-pack", 2},
        {"nullius-mechanical-pack", 1}, {"nullius-electrical-pack", 1}
      },
      time = 20
    },
    prerequisites = {"nullius-geology-2", "nullius-pumping-2"}
  },
  {
    type = "technology",
    name = "nullius-freight-logistics",
    order = "nullius-de",
    icon = "__base__/graphics/technology/automated-rail-transportation.png",
    icon_size = 256,
    icon_mipmaps = 4,
    effects = {
      {
        type = "unlock-recipe",
        recipe = "nullius-train-stop"
      },
      {
        type = "unlock-recipe",
        recipe = "nullius-fluid-wagon-1"
      }
    },
    unit = {
      count = 20,
      ingredients = {
        {"nullius-climatology-pack", 1},
        {"nullius-mechanical-pack", 1}, {"nullius-electrical-pack", 1}
      },
      time = 20
    },
    prerequisites = {"nullius-signal-processing", "nullius-hydrocarbon-combustion-2"},
    ignore_tech_cost_multiplier = true
  },
  {
    type = "technology",
    name = "nullius-automation-2",
    order = "nullius-de",
    icon = "__base__/graphics/technology/automation-2.png",
    icon_size = 256,
    icon_mipmaps = 4,
    effects = {
      {
        type = "unlock-recipe",
        recipe = "nullius-small-assembler-2"
      },
      {
        type = "unlock-recipe",
        recipe = "nullius-medium-assembler-2"
      }
    },
    unit = {
      count = 25,
      ingredients = {
        {"nullius-geology-pack", 1},
        {"nullius-mechanical-pack", 1}, {"nullius-electrical-pack", 1}
      },
      time = 20
    },
    prerequisites = {"nullius-checkpoint-logistics", "nullius-signal-processing", "nullius-maintenance"}
  },
  {
    type = "technology",
    name = "nullius-sensors-1",
    order = "nullius-de",
    icon = "__base__/graphics/icons/discharge-defense-equipment-controller.png",
    icon_size = 64,
    icon_mipmaps = 4,
    effects = {
      {
        type = "unlock-recipe",
        recipe = "nullius-sensor-1"
      }
    },
    unit = {
      count = 30,
      ingredients = {
        {"nullius-geology-pack", 1}, {"nullius-climatology-pack", 1},
        {"nullius-mechanical-pack", 1}, {"nullius-electrical-pack", 1}
      },
      time = 20
    },
    prerequisites = {"nullius-computation", "nullius-checkpoint-logistics"},
    ignore_tech_cost_multiplier = true
  },

  {
    type = "technology",
    name = "nullius-aesthetics-1",
    order = "nullius-df",
	icons = data.raw["selection-tool"]["nullius-rock-picker"].icons,
    effects = {
      {
        type = "unlock-recipe",
        recipe = "nullius-rock-picker"
      }
    },
    unit = {
      count = 30,
      ingredients = {
        {"nullius-geology-pack", 1}, {"nullius-climatology-pack", 1},
        {"nullius-mechanical-pack", 1}, {"nullius-electrical-pack", 1}
      },
      time = 25
    },
    prerequisites = {"nullius-mining-2", "nullius-sensors-1"}
  },
  {
    type = "technology",
    name = "nullius-traffic-control",
    order = "nullius-df",
    icon = "__base__/graphics/technology/rail-signals.png",
    icon_size = 256,
    icon_mipmaps = 4,
    effects = {
      {
        type = "unlock-recipe",
        recipe = "nullius-rail-signal"
      },
      {
        type = "unlock-recipe",
        recipe = "nullius-chain-signal"
      }
    },
    unit = {
      count = 30,
      ingredients = {
        {"nullius-climatology-pack", 1},
        {"nullius-mechanical-pack", 1}, {"nullius-electrical-pack", 1}
      },
      time = 25
    },
    prerequisites = {"nullius-sensors-1", "nullius-checkpoint-freight-logistics"},
    ignore_tech_cost_multiplier = true
  },
  {
    type = "technology",
    name = "nullius-robotics-1",
    order = "nullius-df",
    icon = "__base__/graphics/technology/robotics.png",
    icon_size = 256,
    icon_mipmaps = 4,
    effects = {
      {
        type = "unlock-recipe",
        recipe = "nullius-hangar-1"
      },
      {
        type = "unlock-recipe",
        recipe = "nullius-charger-1"
      },
      {
        type = "unlock-recipe",
        recipe = "nullius-relay-1"
      },
      {
        type = "unlock-recipe",
        recipe = "nullius-small-storage-chest-1"
      },
      {
        type = "unlock-recipe",
        recipe = "nullius-robot-frame-1"
      }
    },
    unit = {
      count = 80,
      ingredients = {
        {"nullius-geology-pack", 1}, {"nullius-climatology-pack", 1},
        {"nullius-mechanical-pack", 1}, {"nullius-electrical-pack", 1}
      },
      time = 25
    },
    prerequisites = {"nullius-energy-storage-2", "nullius-traffic-control", "nullius-automation-2"}
  },
  {
    type = "technology",
    name = "nullius-optimization-1",
    order = "nullius-df",
    icon = "__base__/graphics/technology/module.png",
    icon_size = 256,
    icon_mipmaps = 4,
    effects = {
      {
        type = "unlock-recipe",
        recipe = "nullius-haste-module-1"
      },
      {
        type = "unlock-recipe",
        recipe = "nullius-efficiency-module-1"
      }
    },
    unit = {
      count = 60,
      ingredients = {
        {"nullius-electrical-pack", 1}
      },
      time = 25
    },
    prerequisites = {"nullius-computation", "nullius-maintenance"}
  },
  {
    type = "technology",
    name = "nullius-mineral-processing-2",
    order = "nullius-df",
    icon_size = 256,
    icon = "__angelsrefining__/graphics/technology/ore-sorting.png",
    effects = {
      {
        type = "unlock-recipe",
        recipe = "nullius-crusher-2"
      },
      {
        type = "unlock-recipe",
        recipe = "nullius-bauxite-disposal"
      }
    },
    unit = {
      count = 60,
      ingredients = {
        {"nullius-geology-pack", 1},
        {"nullius-mechanical-pack", 1}, {"nullius-electrical-pack", 1}
      },
      time = 25
    },
    prerequisites = {"nullius-checkpoint-limestone", "nullius-aesthetics-1"}
  },
  {
    type = "technology",
    name = "nullius-energy-storage-2",
    order = "nullius-df",
    icon_size = 128,
    icon = "__angelsrefining__/graphics/technology/thermal-extractor.png",
    effects = {
      {
        type = "unlock-recipe",
        recipe = "nullius-compressor-1"
      },
      {
        type = "unlock-recipe",
        recipe = "nullius-turbine-open-2"
      },
      {
        type = "unlock-recipe",
        recipe = "nullius-turbine-closed-2"
      },
      {
        type = "unlock-recipe",
        recipe = "nullius-combustion-chamber-2"
      },
      {
        type = "unlock-recipe",
        recipe = "nullius-compressed-nitrogen"
      },
      {
        type = "unlock-recipe",
        recipe = "nullius-compressed-hydrogen"
      },
      {
        type = "unlock-recipe",
        recipe = "nullius-hydrogen-combustion-2"
      }
    },
    unit = {
      count = 40,
      ingredients = {
        {"nullius-climatology-pack", 1},
        {"nullius-mechanical-pack", 1}, {"nullius-electrical-pack", 1}
      },
      time = 25
    },
    prerequisites = {"nullius-electrolysis-3", "nullius-signal-processing", "nullius-hydrology-1"}
  },

  {
    type = "technology",
    name = "nullius-volcanism-1",
    order = "nullius-dg",
    icon = "__base__/graphics/technology/oil-gathering.png",
    icon_size = 256,
    icon_mipmaps = 4,
    effects = {
      {
        type = "unlock-recipe",
        recipe = "nullius-extractor-1"
      }
    },
    unit = {
      count = 70,
      ingredients = {
        {"nullius-geology-pack", 1}, {"nullius-climatology-pack", 2},
        {"nullius-mechanical-pack", 1}, {"nullius-electrical-pack", 1}
      },
      time = 30
    },
    prerequisites = {"nullius-checkpoint-freshwater", "nullius-mineral-processing-2"}
  },
  {
    type = "technology",
    name = "nullius-construction-robot-1",
    order = "nullius-dg",
    icon = "__base__/graphics/technology/construction-robotics.png",
    icon_size = 256,
    icon_mipmaps = 4,
    effects = {
      {
        type = "unlock-recipe",
        recipe = "nullius-construction-bot-1"
      },
      {
        type = "ghost-time-to-live",
        modifier = 60 * 60 * 60 * 2
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
    prerequisites = {"nullius-checkpoint-robotics", "nullius-aesthetics-1"}
  },
  {
    type = "technology",
    name = "nullius-parallel-computing-1",
    order = "nullius-dg",
    icon = EQUIPPATH .. "coprocessor/efficiency1.png",
    icon_size = 64,
    effects = {
      {
        type = "unlock-recipe",
        recipe = "nullius-coprocessor-speed-1"
      },
	  {
        type = "unlock-recipe",
        recipe = "nullius-coprocessor-efficiency-1"
      },
	  {
        type = "unlock-recipe",
        recipe = "nullius-coprocessor-productivity-1"
      }
    },
    unit = {
      count = 120,
      ingredients = {
        {"nullius-climatology-pack", 1},
        {"nullius-mechanical-pack", 1}, {"nullius-electrical-pack", 2}
      },
      time = 30
    },
    prerequisites = {"nullius-checkpoint-robotics", "nullius-optimization-2"}
  },
  {
    type = "technology",
    name = "nullius-limestone-processing-1",
    order = "nullius-dg",
    icon_size = 32,
    icon = "__angelsrefining__/graphics/icons/solid-limestone.png",
    effects = {
      {
        type = "unlock-recipe",
        recipe = "nullius-lime"
      }
    },
    unit = {
      count = 50,
      ingredients = {
        {"nullius-geology-pack", 1}, {"nullius-climatology-pack", 1},
        {"nullius-mechanical-pack", 1}, {"nullius-electrical-pack", 1}
      },
      time = 30
    },
    prerequisites = {"nullius-checkpoint-limestone", "nullius-hydrology-1"}
  },
  {
    type = "technology",
    name = "nullius-silica-processing-2",
    order = "nullius-dg",
    icon = "__angelssmelting__/graphics/icons/powder-silica.png",
    icon_size = 64,
    icon_mipmaps = 4,
    effects = {
      {
        type = "unlock-recipe",
        recipe = "nullius-slag-reprocessing"
      }
    },
    unit = {
      count = 50,
      ingredients = {
        {"nullius-geology-pack", 1}, {"nullius-climatology-pack", 1},
        {"nullius-mechanical-pack", 1}, {"nullius-electrical-pack", 1}
      },
      time = 30
    },
    prerequisites = {"nullius-mineral-processing-2", "nullius-checkpoint-freshwater"}
  },
  {
    type = "technology",
    name = "nullius-nitrogen-chemistry-1",
    order = "nullius-dg",
    icons = data.raw.technology["angels-nitrogen-processing-1"].icons,
    effects = {
      {
        type = "unlock-recipe",
        recipe = "nullius-ammonia"
      },
      {
        type = "unlock-recipe",
        recipe = "nullius-soda-ash-1"
      }
    },
    unit = {
      count = 60,
      ingredients = {
        {"nullius-geology-pack", 1}, {"nullius-climatology-pack", 1},
        {"nullius-mechanical-pack", 1}, {"nullius-electrical-pack", 1}
      },
      time = 30
    },
    prerequisites = {"nullius-checkpoint-compressed-nitrogen"}
  },
  {
    type = "technology",
    name = "nullius-metalworking-2",
    order = "nullius-dg",
    icon = "__angelssmelting__/graphics/technology/induction-furnace-tech.png",
    icon_size = 256,
    icon_mipmaps = 2,
    effects = {
      {
        type = "unlock-recipe",
        recipe = "nullius-foundry-2"
      },
      {
        type = "unlock-recipe",
        recipe = "nullius-iron-sheet-2"
      },
      {
        type = "unlock-recipe",
        recipe = "nullius-steel-sheet-2"
      },
      {
        type = "unlock-recipe",
        recipe = "nullius-aluminum-sheet-2"
      },
      {
        type = "unlock-recipe",
        recipe = "nullius-iron-wire-2"
      },
      {
        type = "unlock-recipe",
        recipe = "nullius-aluminum-wire-2"
      }
    },
    unit = {
      count = 90,
      ingredients = {
        {"nullius-geology-pack", 1},
        {"nullius-mechanical-pack", 1}, {"nullius-electrical-pack", 1}
      },
      time = 30
    },
    prerequisites = {"nullius-mineral-processing-2", "nullius-optimization-1"},
  },
  {
    type = "technology",
    name = "nullius-optimization-2",
    order = "nullius-dg",
    icon = "__base__/graphics/technology/module.png",
    icon_size = 256,
    icon_mipmaps = 4,
    effects = {
      {
        type = "unlock-recipe",
        recipe = "nullius-speed-module-1"
      },
      {
        type = "unlock-recipe",
        recipe = "nullius-yield-module-1"
      }
    },
    unit = {
      count = 100,
      ingredients = {
        {"nullius-electrical-pack", 1}
      },
      time = 30
    },
    prerequisites = {"nullius-checkpoint-optimization", "nullius-automation-2", "nullius-sensors-1"}
  },

  {
    type = "technology",
    name = "nullius-broadcasting-1",
    order = "nullius-dh",
    icon = "__base__/graphics/technology/effect-transmission.png",
    icon_size = 256,
    icon_mipmaps = 4,
    effects = {
      {
        type = "unlock-recipe",
        recipe = "nullius-beacon-1"
      }
    },
    unit = {
      count = 100,
      ingredients = {
        {"nullius-climatology-pack", 1}, {"nullius-electrical-pack", 1}
      },
      time = 30
    },
    prerequisites = {"nullius-optimization-2", "nullius-traffic-control"}
  },
  {
    type = "technology",
    name = "nullius-climatology-2",
    order = "nullius-dh",
    icons = {
      {
        icon = "__base__/graphics/technology/chemical-science-pack.png",
        icon_size = 256,
        icon_mipmaps = 4
      },
      {
        icon = "__base__/graphics/icons/fluid/steam.png",
        icon_size = 64,
        icon_mipmaps = 4,
        scale = 1.8,
        shift = {0, 34},
        tint = {r=1, g=1, b=1, a=0.5}
      }
    },
    effects = {
      {
        type = "unlock-recipe",
        recipe = "nullius-climatology-pack-2"
      }
    },
    unit = {
      count = 150,
      ingredients = {
        {"nullius-climatology-pack", 3},
        {"nullius-mechanical-pack", 1}, {"nullius-electrical-pack", 1}
      },
      time = 30
    },
    prerequisites = {"nullius-checkpoint-volcanic-gas", "nullius-nitrogen-chemistry-1"}
  },
  {
    type = "technology",
    name = "nullius-locomotion-1",
    order = "nullius-dh",
    icon = "__base__/graphics/technology/exoskeleton-equipment.png",
    icon_size = 256,
    icon_mipmaps = 4,
    effects = {
      {
        type = "character-running-speed",
        modifier = 0.1
      },
      {
        type = "unlock-recipe",
        recipe = "nullius-jump-boots"
      }
    },
    unit = {
      count = 180,
      ingredients = {
        {"nullius-mechanical-pack", 1}, {"nullius-electrical-pack", 1}
      },
      time = 30
    },
    prerequisites = {"nullius-parallel-computing-1", "nullius-construction-robot-1"},
  },
  {
    type = "technology",
    name = "nullius-glassmaking-1",
    order = "nullius-dh",
    icon = "__angelssmelting__/graphics/technology/glass-tech.png",
    icon_size = 256,
    icon_mipmaps = 4,
    effects = {
      {
        type = "unlock-recipe",
        recipe = "nullius-soda-lime-glass-1"
      }
    },
    unit = {
      count = 70,
      ingredients = {
        {"nullius-geology-pack", 1}, {"nullius-climatology-pack", 1},
        {"nullius-mechanical-pack", 1}, {"nullius-electrical-pack", 1}
      },
      time = 30
    },
    prerequisites = {"nullius-limestone-processing-1", "nullius-silica-processing-2", "nullius-nitrogen-chemistry-1"}
  },
  {
    type = "technology",
    name = "nullius-concrete-1",
    order = "nullius-dh",
    icon = "__base__/graphics/technology/concrete.png",
    icon_size = 256,
    icon_mipmaps = 4,
    effects = {
      {
        type = "unlock-recipe",
        recipe = "nullius-cement-1"
      },
      {
        type = "unlock-recipe",
        recipe = "nullius-concrete-1"
      },
      {
        type = "unlock-recipe",
        recipe = "nullius-mortar"
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
    prerequisites = {"nullius-limestone-processing-1", "nullius-metalworking-2"},
  },
  {
    type = "technology",
    name = "nullius-weaving-1",
    order = "nullius-dh",
    icon_size = 32,
    icon = "__angelssmelting__/graphics/icons/wire-silver.png",
    effects = {
      {
        type = "unlock-recipe",
        recipe = "nullius-steel-wire"
      },
      {
        type = "unlock-recipe",
        recipe = "nullius-steel-cable"
      }
    },
    unit = {
      count = 140,
      ingredients = {
        {"nullius-geology-pack", 1}, {"nullius-mechanical-pack", 1}
      },
      time = 30
    },
    prerequisites = {"nullius-automation-2", "nullius-metalworking-2"},
  },

  {
    type = "technology",
    name = "nullius-water-filtration-3",
    order = "nullius-dh",
    icon_size = 256,
    icon = "__angelsrefining__/graphics/technology/water-treatment.png",
    effects = {
      {
        type = "unlock-recipe",
        recipe = "nullius-hydro-plant-2"
      },
      {
        type = "unlock-recipe",
        recipe = "nullius-seawater-intake-2"
      },
      {
        type = "unlock-recipe",
        recipe = "nullius-wastewater-filtration"
      }
    },
    unit = {
      count = 160,
      ingredients = {
        {"nullius-climatology-pack", 1},
        {"nullius-mechanical-pack", 1}, {"nullius-electrical-pack", 1}
      },
      time = 30
    },
    prerequisites = {"nullius-climatology-2", "nullius-mass-production-3"},
  },
  {
    type = "technology",
    name = "nullius-geothermal-power-1",
    order = "nullius-di",
    icon_size = 64,
    icon = "__angelssmelting__/graphics/icons/chemical-furnace.png",
    effects = {
      {
        type = "unlock-recipe",
        recipe = "nullius-geothermal-plant-1"
      },
      {
        type = "unlock-recipe",
        recipe = "nullius-stirling-engine-1"
      }
    },
    unit = {
      count = 120,
      ingredients = {
        {"nullius-geology-pack", 2}, {"nullius-climatology-pack", 1},
        {"nullius-mechanical-pack", 1}, {"nullius-electrical-pack", 1}
      },
      time = 30
    },
    prerequisites = {"nullius-checkpoint-heat-pipe", "nullius-land-fill-3"}
  },
  {
    type = "technology",
    name = "nullius-logistic-robot-1",
    order = "nullius-di",
    icon = "__base__/graphics/technology/logistic-robotics.png",
    icon_size = 256,
    icon_mipmaps = 4,
    effects = {
      {
        type = "unlock-recipe",
        recipe = "nullius-logistic-bot-1"
      },
      {
        type = "unlock-recipe",
        recipe = "nullius-small-supply-chest-1"
      },
      {
        type = "character-logistic-requests",
        modifier = true
      },
      {
        type = "character-logistic-trash-slots",
        modifier = 10
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
    prerequisites = {"nullius-checkpoint-robotics", "nullius-broadcasting-1"}
  },
  {
    type = "technology",
    name = "nullius-land-fill-3",
    order = "nullius-di",
    icon = "__base__/graphics/technology/landfill.png",
    icon_size = 256,
    icon_mipmaps = 4,
    effects = {
      {
        type = "unlock-recipe",
        recipe = "nullius-land-fill-grey"
      }
    },
    unit = {
      count = 150,
      ingredients = {
        {"nullius-geology-pack", 4}, {"nullius-climatology-pack", 1},
        {"nullius-mechanical-pack", 1}
      },
      time = 30
    },
    prerequisites = {"nullius-concrete-1", "nullius-explosives-1"},
  },
  {
    type = "technology",
    name = "nullius-solar-power-1",
    order = "nullius-di",
    icon = "__base__/graphics/technology/solar-energy.png",
    icon_size = 256,
    icon_mipmaps = 4,
    effects = {
      {
        type = "unlock-recipe",
        recipe = "nullius-solar-panel-1"
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
    prerequisites = {"nullius-climatology-2", "nullius-glassmaking-1"},
  },
  {
    type = "technology",
    name = "nullius-sensors-2",
    order = "nullius-di",
    icon_size = 64,
    icon_mipmaps = 4,
    icon = "__base__/graphics/icons/radar.png",
    effects = {
      {
        type = "unlock-recipe",
        recipe = "nullius-sensor-node-1"
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
    prerequisites = {"nullius-parallel-computing-1", "nullius-glassmaking-1", "nullius-broadcasting-1"}
  },
  {
    type = "technology",
    name = "nullius-wind-power-2",
    order = "nullius-di",
    icon_size = 254,
    icon = TECHPATH .. "tech_windturbine2.png",
    effects = {
      {
        type = "unlock-recipe",
        recipe = "nullius-wind-turbine-2"
      }
    },
    unit = {
      count = 180,
      ingredients = {
        {"nullius-climatology-pack", 1},
        {"nullius-mechanical-pack", 1}, {"nullius-electrical-pack", 1}
      },
      time = 30
    },
    prerequisites = {"nullius-climatology-2", "nullius-weaving-1", "nullius-checkpoint-concrete"}
  },

  {
    type = "technology",
    name = "nullius-distillation-2",
    order = "nullius-dj",
    icon = "__base__/graphics/technology/oil-processing.png",
    icon_size = 256,
    icon_mipmaps = 4,
    effects = {
      {
        type = "unlock-recipe",
        recipe = "nullius-distillery-2"
      },
      {
        type = "unlock-recipe",
        recipe = "nullius-condensation"
      }
    },
    unit = {
      count = 170,
      ingredients = {
        {"nullius-geology-pack", 1}, {"nullius-climatology-pack", 1},
        {"nullius-mechanical-pack", 1}, {"nullius-electrical-pack", 1}
      },
      time = 30
    },
    prerequisites = {"nullius-water-filtration-3", "nullius-checkpoint-heat-pipe"}
  },
  {
    type = "technology",
    name = "nullius-mass-production-3",
    order = "nullius-dj",
    icon = "__base__/graphics/technology/automation-2.png",
    icon_size = 256,
    icon_mipmaps = 4,
    effects = {
      {
        type = "unlock-recipe",
        recipe = "nullius-large-miner-1"
      },
      {
        type = "unlock-recipe",
        recipe = "nullius-large-assembler-1"
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
    prerequisites = {
      "nullius-logistic-robot-1", "nullius-concrete-1", "nullius-weaving-1"
    }
  },
  {
    type = "technology",
    name = "nullius-sulfur-processing-1",
    order = "nullius-dj",
    icons = data.raw.technology["angels-sulfur-processing-1"].icons,
    effects = {
      {
        type = "unlock-recipe",
        recipe = "nullius-volcanic-separation-1"
      },
      {
        type = "unlock-recipe",
        recipe = "nullius-acid-sulfuric"
      },
      {
        type = "unlock-recipe",
        recipe = "nullius-dust-disposal-2"
      }
    },
    unit = {
      count = 120,
      ingredients = {
        {"nullius-geology-pack", 1}, {"nullius-climatology-pack", 5},
        {"nullius-mechanical-pack", 1}
      },
      time = 30
    },
    prerequisites = {"nullius-geothermal-power-1", "nullius-distillation-2", "nullius-air-filtration-2"},
  },
  {
    type = "technology",
    name = "nullius-energy-distribution-3",
    order = "nullius-dj",
    icon = "__base__/graphics/technology/electric-energy-distribution-2.png",
    icon_size = 256,
    icon_mipmaps = 4,
    effects = {
      {
        type = "unlock-recipe",
        recipe = "nullius-substation-1"
      },
      {
        type = "unlock-recipe",
        recipe = "nullius-transformer"
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
    prerequisites = {"nullius-wind-power-2", "nullius-solar-power-1", "nullius-geothermal-power-1"},
  },
  {
    type = "technology",
    name = "nullius-air-filtration-2",
    order = "nullius-dj",
    icon_size = 128,
    icon = "__angelspetrochem__/graphics/technology/air-filter-tech.png",
    effects = {
      {
        type = "unlock-recipe",
        recipe = "nullius-air-filter-2"
      },
      {
        type = "unlock-recipe",
        recipe = "nullius-compressed-air"
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
    prerequisites = {"nullius-wind-power-2", "nullius-water-filtration-3"},
  },

  {
    type = "technology",
    name = "nullius-flotation-2",
    order = "nullius-dk",
    icon_size = 256,
    icon = "__angelsrefining__/graphics/technology/hydro-refining.png",
    effects = {
      {
        type = "unlock-recipe",
        recipe = "nullius-flotation-cell-2"
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
    prerequisites = {"nullius-silica-processing-2", "nullius-distillation-2"}
  },
  {
    type = "technology",
    name = "nullius-cybernetics-2",
    order = "nullius-dk",
    icon = "__base__/graphics/technology/night-vision-equipment.png",
    icon_size = 256,
    icon_mipmaps = 4,
    effects = {
      {
        type = "unlock-recipe",
        recipe = "nullius-night-vision-1"
      },
      {
        type = "unlock-recipe",
        recipe = "nullius-levitation-field-1"
      },
      {
        type = "character-health-bonus",
        modifier = 50
      }
    },
    unit = {
      count = 190,
      ingredients = {
        {"nullius-geology-pack", 1}, {"nullius-climatology-pack", 1},
        {"nullius-mechanical-pack", 1}, {"nullius-electrical-pack", 1}
      },
      time = 30
    },
    prerequisites = {"nullius-checkpoint-sensor", "nullius-locomotion-1", "nullius-checkpoint-logistic-robot"}
  },
  {
    type = "technology",
    name = "nullius-distribution-1",
    order = "nullius-dk",
    icon = "__base__/graphics/technology/logistic-system.png",
    icon_size = 256,
    icon_mipmaps = 4,
    effects = {
      {
        type = "unlock-recipe",
        recipe = "nullius-small-demand-chest-1"
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
    prerequisites = {"nullius-mass-production-3", "nullius-cybernetics-2"}
  },
  {
    type = "technology",
    name = "nullius-thermal-storage-1",
    order = "nullius-dl",
    icon = "__nullius__/graphics/icons/entity/thermaltank1.png",
	icon_size = 64,
    effects = {
      {
        type = "unlock-recipe",
        recipe = "nullius-thermal-tank-1"
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
    prerequisites = {"nullius-energy-distribution-3", "nullius-flotation-2"}
  },
  {
    type = "technology",
    name = "nullius-barreling-2",
    order = "nullius-dk",
    icon_size = 128,
    icon = "__angelsrefining__/graphics/technology/barrel-tech.png",
    effects = {
      {
        type = "unlock-recipe",
        recipe = "nullius-barrel-2"
      },
      {
        type = "unlock-recipe",
        recipe = "fill-nullius-air-barrel"
      },
      {
        type = "unlock-recipe",
        recipe = "empty-nullius-air-barrel"
      },
      {
        type = "unlock-recipe",
        recipe = "fill-nullius-residual-gas-barrel"
      },
      {
        type = "unlock-recipe",
        recipe = "empty-nullius-residual-gas-barrel"
      },
      {
        type = "unlock-recipe",
        recipe = "fill-nullius-trace-gas-barrel"
      },
      {
        type = "unlock-recipe",
        recipe = "empty-nullius-trace-gas-barrel"
      },
      {
        type = "unlock-recipe",
        recipe = "fill-nullius-volcanic-gas-barrel"
      },
      {
        type = "unlock-recipe",
        recipe = "empty-nullius-volcanic-gas-barrel"
      },
      {
        type = "unlock-recipe",
        recipe = "fill-nullius-nitrogen-barrel"
      },
      {
        type = "unlock-recipe",
        recipe = "empty-nullius-nitrogen-barrel"
      },
      {
        type = "unlock-recipe",
        recipe = "fill-nullius-argon-barrel"
      },
      {
        type = "unlock-recipe",
        recipe = "empty-nullius-argon-barrel"
      },
      {
        type = "unlock-recipe",
        recipe = "fill-nullius-helium-barrel"
      },
      {
        type = "unlock-recipe",
        recipe = "empty-nullius-helium-barrel"
      },
      {
        type = "unlock-recipe",
        recipe = "fill-nullius-carbon-dioxide-barrel"
      },
      {
        type = "unlock-recipe",
        recipe = "empty-nullius-carbon-dioxide-barrel"
      },
      {
        type = "unlock-recipe",
        recipe = "fill-nullius-carbon-monoxide-barrel"
      },
      {
        type = "unlock-recipe",
        recipe = "empty-nullius-carbon-monoxide-barrel"
      },
      {
        type = "unlock-recipe",
        recipe = "fill-nullius-methane-barrel"
      },
      {
        type = "unlock-recipe",
        recipe = "empty-nullius-methane-barrel"
      },
      {
        type = "unlock-recipe",
        recipe = "fill-nullius-ethylene-barrel"
      },
      {
        type = "unlock-recipe",
        recipe = "empty-nullius-ethylene-barrel"
      },
      {
        type = "unlock-recipe",
        recipe = "fill-nullius-propene-barrel"
      },
      {
        type = "unlock-recipe",
        recipe = "empty-nullius-propene-barrel"
      },
      {
        type = "unlock-recipe",
        recipe = "fill-nullius-butadiene-barrel"
      },
      {
        type = "unlock-recipe",
        recipe = "empty-nullius-butadiene-barrel"
      },
      {
        type = "unlock-recipe",
        recipe = "fill-nullius-hydrogen-barrel"
      },
      {
        type = "unlock-recipe",
        recipe = "empty-nullius-hydrogen-barrel"
      },
      {
        type = "unlock-recipe",
        recipe = "fill-nullius-deuterium-barrel"
      },
      {
        type = "unlock-recipe",
        recipe = "empty-nullius-deuterium-barrel"
      },
      {
        type = "unlock-recipe",
        recipe = "fill-nullius-tritium-barrel"
      },
      {
        type = "unlock-recipe",
        recipe = "empty-nullius-tritium-barrel"
      },
      {
        type = "unlock-recipe",
        recipe = "fill-nullius-oxygen-barrel"
      },
      {
        type = "unlock-recipe",
        recipe = "empty-nullius-oxygen-barrel"
      },
      {
        type = "unlock-recipe",
        recipe = "fill-nullius-hydrogen-chloride-barrel"
      },
      {
        type = "unlock-recipe",
        recipe = "empty-nullius-hydrogen-chloride-barrel"
      },
      {
        type = "unlock-recipe",
        recipe = "fill-nullius-sulfur-dioxide-barrel"
      },
      {
        type = "unlock-recipe",
        recipe = "empty-nullius-sulfur-dioxide-barrel"
      },
      {
        type = "unlock-recipe",
        recipe = "fill-nullius-ammonia-barrel"
      },
      {
        type = "unlock-recipe",
        recipe = "empty-nullius-ammonia-barrel"
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
    prerequisites = {"nullius-air-filtration-2", "nullius-flotation-2"},
  },
  {
    type = "technology",
    name = "nullius-chemical-engineering-2",
    order = "nullius-dk",
    icon_size = 128,
    icon = "__angelspetrochem__/graphics/technology/chemical-plant-tech.png",
    effects = {
      {
        type = "unlock-recipe",
        recipe = "nullius-chemical-plant-2"
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
    prerequisites = {"nullius-distillation-2", "nullius-checkpoint-sensor"},
  },
  {
    type = "technology",
    name = "nullius-braking-1",
    order = "nullius-dk",
    icon = "__base__/graphics/technology/braking-force.png",
    icon_size = 256,
    icon_mipmaps = 4,
    effects = {
      {
        type = "train-braking-force-bonus",
        modifier = 0.1
      }
    },
    unit = {
      count = 200,
      ingredients = {
        {"nullius-geology-pack", 1}, {"nullius-climatology-pack", 1},
        {"nullius-mechanical-pack", 1}
      },
      time = 30
    },
    prerequisites = {"nullius-thermal-storage-1", "nullius-robot-speed-1"},
    upgrade = true
  },
  {
    type = "technology",
    name = "nullius-limestone-processing-2",
    order = "nullius-dk",
    icons = data.raw.fluid["nullius-calcium-chloride-solution"].icons,
    effects = {
      {
        type = "unlock-recipe",
        recipe = "nullius-calcium-chloride-1"
      },
      {
        type = "unlock-recipe",
        recipe = "nullius-gypsum-decomposition"
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
    prerequisites = {"nullius-sulfur-processing-1", "nullius-checkpoint-chemical-engineering"}
  },

  {
    type = "technology",
    name = "nullius-toolmaking-4",
    order = "nullius-dl",
    icon = "__base__/graphics/technology/steel-axe.png",
    icon_size = 256,
    icon_mipmaps = 4,
    effects = {
      {
        type = "character-mining-speed",
        modifier = 0.2
      },
      {
        type = "character-crafting-speed",
        modifier = 0.25
      },
      {
        type = "unlock-recipe",
        recipe = "nullius-multi-tool-1"
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
    prerequisites = {"nullius-cybernetics-2"}
  },
  {
    type = "technology",
    name = "nullius-plumbing-4",
    order = "nullius-dl",
    icon = "__base__/graphics/technology/fluid-handling.png",
    icon_size = 256,
    icon_mipmaps = 4,
    effects = {
      {
        type = "unlock-recipe",
        recipe = "nullius-large-tank-1"
      },
      {
        type = "unlock-recipe",
        recipe = "nullius-one-way-valve-2"
      },
      {
        type = "unlock-recipe",
        recipe = "nullius-decompress-air"
      },
      {
        type = "unlock-recipe",
        recipe = "nullius-decompress-nitrogen"
      },
      {
        type = "unlock-recipe",
        recipe = "nullius-decompress-hydrogen"
      }
    },
    unit = {
      count = 250,
      ingredients = {
        {"nullius-geology-pack", 1}, {"nullius-climatology-pack", 2},
        {"nullius-mechanical-pack", 1}
      },
      time = 30
    },
    prerequisites = {"nullius-barreling-2", "nullius-sulfur-processing-1"}
  },
  {
    type = "technology",
    name = "nullius-chirality-2",
	localised_description = {"technology-description.nullius-chirality", 2,
	    {"technology-description.nullius-chirality-2"}},
    order = "nullius-dl",
    icon_size = 254,
    icon = TECHPATH .. "chiral.png",
    effects = { },
    unit = {
      count = 160,
      ingredients = {
        {"nullius-climatology-pack", 1},
        {"nullius-mechanical-pack", 1}, {"nullius-electrical-pack", 1}
      },
      time = 30
    },
    prerequisites = {"nullius-empiricism-2", "nullius-flotation-2"}
  },
  {
    type = "technology",
    name = "nullius-explosives-1",
    order = "nullius-dg",
    icon = "__base__/graphics/technology/explosives.png",
    icon_size = 256,
    icon_mipmaps = 4,
    effects = {
      {
        type = "unlock-recipe",
        recipe = "nullius-improvised-explosive"
      },
	  {
        type = "unlock-recipe",
        recipe = "fill-nullius-chlorine-barrel"
      },
      {
        type = "unlock-recipe",
        recipe = "empty-nullius-chlorine-barrel"
      }
    },
    unit = {
      count = 40,
      ingredients = {
        {"nullius-geology-pack", 1}, {"nullius-climatology-pack", 1},
        {"nullius-mechanical-pack", 1}, {"nullius-electrical-pack", 1}
      },
      time = 30
    },
    prerequisites = {"nullius-aesthetics-1", "nullius-energy-storage-2"}
  },
  {
    type = "technology",
    name = "nullius-robot-speed-1",
    order = "nullius-dl",
    icon = "__base__/graphics/technology/worker-robots-speed.png",
    icon_size = 256,
    icon_mipmaps = 4,
    effects = {
      {
        type = "worker-robot-speed",
        modifier = 0.1
      }
    },
    unit = {
      count = 250,
      ingredients = {
        {"nullius-climatology-pack", 1},
        {"nullius-mechanical-pack", 1}, {"nullius-electrical-pack", 1}
      },
      time = 30
    },
    prerequisites = {"nullius-distribution-1", "nullius-energy-distribution-3"},
    upgrade = true
  },
  {
    type = "technology",
    name = "nullius-projection-1",
    order = "nullius-dl",
    icon = "__base__/graphics/technology/discharge-defense-equipment.png",
    icon_size = 256,
    icon_mipmaps = 4,
    effects = {
      {
        type = "character-reach-distance",
        modifier = 2
      },
      {
        type = "character-build-distance",
        modifier = 2
      },
      {
        type = "character-item-drop-distance",
        modifier = 1
      },
      {
        type = "character-resource-reach-distance",
        modifier = 1
      },
      {
        type = "character-loot-pickup-distance",
        modifier = 0.5
      },
      {
        type = "character-item-pickup-distance",
        modifier = 0.5
      },
      {
        type = "unlock-recipe",
        recipe = "nullius-telekinesis-field-1"
      }
    },
    unit = {
      count = 240,
      ingredients = {
        {"nullius-geology-pack", 1}, {"nullius-climatology-pack", 1},
        {"nullius-mechanical-pack", 1}, {"nullius-electrical-pack", 1}
      },
      time = 30
    },
    prerequisites = {"nullius-empiricism-2", "nullius-robot-speed-1", "nullius-toolmaking-4"}
  },
  {
    type = "technology",
    name = "nullius-empiricism-2",
    order = "nullius-dl",
    icon = "__base__/graphics/technology/research-speed.png",
    icon_size = 256,
    icon_mipmaps = 4,
    effects = {
      {
        type = "laboratory-speed",
        modifier = 0.2
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
    prerequisites = {"nullius-chemical-engineering-2", "nullius-energy-distribution-3", "nullius-cybernetics-2"}
  },

  {
    type = "technology",
    name = "nullius-experimental-chemistry",
    localised_name = {"", {"technology-name.nullius-experimental-chemistry"}, " ", 1},
    order = "nullius-eb",
    icon = "__base__/graphics/technology/logistic-science-pack.png",
    icon_size = 256,
    icon_mipmaps = 4,
    effects = {
      {
        type = "unlock-recipe",
        recipe = "nullius-chemical-pack"
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
    prerequisites = {"nullius-plumbing-4", "nullius-chirality-2", "nullius-checkpoint-chemical-engineering"}
  },

  {
    type = "technology",
    name = "nullius-metallurgy-3",
    order = "nullius-ec",
    icon_size = 64,
    icon_mipmaps = 4,
    icon = "__base__/graphics/icons/electric-furnace.png",
    effects = {
      {
        type = "unlock-recipe",
        recipe = "nullius-small-furnace-3"
      },
      {
        type = "unlock-recipe",
        recipe = "nullius-medium-furnace-2"
      }
    },
    unit = {
      count = 100,
      ingredients = {
        {"nullius-geology-pack", 1}, {"nullius-climatology-pack", 1},
        {"nullius-mechanical-pack", 1}, {"nullius-electrical-pack", 1},
        {"nullius-chemical-pack", 1}
      },
      time = 30
    },
    prerequisites = {"nullius-thermal-storage-1", "nullius-experimental-chemistry"}
  },
  {
    type = "technology",
    name = "nullius-sodium-processing",
    order = "nullius-ec",
    icon_size = 128,
    icon = "__angelspetrochem__/graphics/technology/sodium-tech.png",
    effects = {
      {
        type = "unlock-recipe",
        recipe = "nullius-salt"
      },
      {
        type = "unlock-recipe",
        recipe = "nullius-boiling-brine"
      },
      {
        type = "unlock-recipe",
        recipe = "nullius-salination"
      },
      {
        type = "unlock-recipe",
        recipe = "nullius-salt-electrolysis"
      },
      {
        type = "unlock-recipe",
        recipe = "nullius-sodium-hydroxide-electrolysis"
      }
    },
    unit = {
      count = 80,
      ingredients = {
        {"nullius-geology-pack", 1}, {"nullius-climatology-pack", 1},
        {"nullius-mechanical-pack", 1}, {"nullius-electrical-pack", 1},
        {"nullius-chemical-pack", 1}
      },
      time = 30
    },
    prerequisites = {"nullius-experimental-chemistry", "nullius-limestone-processing-2"}
  },
  {
    type = "technology",
    name = "nullius-air-separation-2",
    order = "nullius-ec",
    icons = data.raw.fluid["nullius-argon"].icons,
    effects = {
      {
        type = "unlock-recipe",
        recipe = "nullius-air-separation-2"
      },
      {
        type = "unlock-recipe",
        recipe = "nullius-residual-separation"
      },
      {
        type = "unlock-recipe",
        recipe = "nullius-compressed-argon"
      },
      {
        type = "unlock-recipe",
        recipe = "nullius-decompress-argon"
      }
    },
    unit = {
      count = 90,
      ingredients = {
        {"nullius-climatology-pack", 1},
        {"nullius-mechanical-pack", 1}, {"nullius-electrical-pack", 1},
        {"nullius-chemical-pack", 1}
      },
      time = 30
    },
    prerequisites = {"nullius-experimental-chemistry", "nullius-checkpoint-chirality"},
  },

  {
    type = "technology",
    name = "nullius-nitrogen-chemistry-2",
    icons = data.raw.technology["angels-nitrogen-processing-1"].icons,
    order = "nullius-ed",
    effects = {
      {
        type = "unlock-recipe",
        recipe = "nullius-acid-nitric"
      },
      {
        type = "unlock-recipe",
        recipe = "nullius-acrylonitrile"
      }
    },
    unit = {
      count = 120,
      ingredients = {
        {"nullius-climatology-pack", 1},
        {"nullius-mechanical-pack", 1}, {"nullius-electrical-pack", 1},
        {"nullius-chemical-pack", 1}
      },
      time = 30
    },
    prerequisites = {"nullius-air-separation-2"}
  },
  {
    type = "technology",
    name = "nullius-aluminum-production-2",
    order = "nullius-ed",
    icon = "__angelssmelting__/graphics/technology/smelting-aluminium-tech.png",
    icon_size = 256,
    icon_mipmaps = 4,
    effects = {
      {
        type = "unlock-recipe",
        recipe = "nullius-alumina-2"
      },
      {
        type = "unlock-recipe",
        recipe = "nullius-aluminum-ingot-2"
      }
    },
    unit = {
      count = 120,
      ingredients = {
        {"nullius-geology-pack", 1}, {"nullius-climatology-pack", 1},
        {"nullius-mechanical-pack", 1}, {"nullius-electrical-pack", 1},
        {"nullius-chemical-pack", 1}
      },
      time = 30
    },
    prerequisites = {"nullius-checkpoint-aluminum-carbide"}
  },
  {
    type = "technology",
    name = "nullius-pyrolysis",
    order = "nullius-ed",
    icon_size = 64,
    icon = "__base__/graphics/icons/coal.png",
    effects = {
      {
        type = "unlock-recipe",
        recipe = "nullius-methane-to-graphite"
      },
      {
        type = "unlock-recipe",
        recipe = "nullius-ethylene-pyrolysis"
      },
      {
        type = "unlock-recipe",
        recipe = "nullius-propene-pyrolysis"
      }
    },
    unit = {
      count = 100,
      ingredients = {
        {"nullius-geology-pack", 1}, {"nullius-climatology-pack", 1},
        {"nullius-electrical-pack", 1}, {"nullius-chemical-pack", 1}
      },
      time = 30
    },
    prerequisites = {"nullius-checkpoint-propene"}
  },
  {
    type = "technology",
    name = "nullius-iron-smelting-3",
    order = "nullius-ed",
    icon = "__angelssmelting__/graphics/technology/smelting-iron-tech.png",
    icon_size = 256,
    icon_mipmaps = 4,
    effects = {
      {
        type = "unlock-recipe",
        recipe = "nullius-iron-oxide"
      },
      {
        type = "unlock-recipe",
        recipe = "nullius-iron-ingot-3"
      }
    },
    unit = {
      count = 110,
      ingredients = {
        {"nullius-geology-pack", 1}, {"nullius-climatology-pack", 1},
        {"nullius-mechanical-pack", 1}, {"nullius-electrical-pack", 1},
        {"nullius-chemical-pack", 1}
      },
      time = 30
    },
    prerequisites = {"nullius-checkpoint-crushed-iron-ore", "nullius-sodium-processing"},
  },
  {
    type = "technology",
    name = "nullius-sulfur-processing-2",
    order = "nullius-ed",
    icons = data.raw.technology["angels-sulfur-processing-1"].icons,
    effects = {
      {
        type = "unlock-recipe",
        recipe = "nullius-sodium-sulfate-1"
      },
      {
        type = "unlock-recipe",
        recipe = "nullius-sodium-sulfate-2"
      },
      {
        type = "unlock-recipe",
        recipe = "nullius-soda-ash-2"
      },
      {
        type = "unlock-recipe",
        recipe = "nullius-volcanic-separation-2"
      }
    },
    unit = {
      count = 100,
      ingredients = {
        {"nullius-geology-pack", 1}, {"nullius-climatology-pack", 5},
        {"nullius-mechanical-pack", 1}, {"nullius-electrical-pack", 1},
        {"nullius-chemical-pack", 1}
      },
      time = 30
    },
    prerequisites = {"nullius-sodium-processing"}
  },
  {
    type = "technology",
    name = "nullius-nanotechnology-1",
    order = "nullius-ed",
    icon_size = 64,
    icon = "__angelsrefining__/graphics/icons/crystallizer.png",
    effects = {
      {
        type = "unlock-recipe",
        recipe = "nullius-nanofabricator-1"
      }
    },
    unit = {
      count = 150,
      ingredients = {
        {"nullius-geology-pack", 1}, {"nullius-climatology-pack", 1},
        {"nullius-mechanical-pack", 1}, {"nullius-electrical-pack", 1},
        {"nullius-chemical-pack", 1}
      },
      time = 30
    },
    prerequisites = {"nullius-air-separation-2", "nullius-projection-1"}
  },

  {
    type = "technology",
    name = "nullius-empiricism-3",
    order = "nullius-ee",
    icon = "__base__/graphics/technology/research-speed.png",
    icon_size = 256,
    icon_mipmaps = 4,
    effects = {
      {
        type = "laboratory-speed",
        modifier = 0.2
      }
    },
    unit = {
      count = 160,
      ingredients = {
        {"nullius-geology-pack", 1}, {"nullius-climatology-pack", 1},
        {"nullius-mechanical-pack", 1}, {"nullius-electrical-pack", 1},
        {"nullius-chemical-pack", 1}
      },
      time = 30
    },
    prerequisites = {"nullius-nanotechnology-1"}
  },
  {
    type = "technology",
    name = "nullius-limestone-processing-3",
    order = "nullius-ee",
    icon_size = 32,
    icon = "__angelssmelting__/graphics/icons/solid-lime.png",
    effects = {
      {
        type = "unlock-recipe",
        recipe = "nullius-gypsum-1"
      },
      {
        type = "unlock-recipe",
        recipe = "nullius-gypsum-2"
      },
      {
        type = "unlock-recipe",
        recipe = "nullius-calcium-chloride-dehydration"
      },
      {
        type = "unlock-recipe",
        recipe = "nullius-calcium-chloride-decomposition"
      },
      {
        type = "unlock-recipe",
        recipe = "nullius-limestone-precipitation"
      }
    },
    unit = {
      count = 130,
      ingredients = {
        {"nullius-geology-pack", 1}, {"nullius-climatology-pack", 1},
        {"nullius-mechanical-pack", 1}, {"nullius-electrical-pack", 1},
        {"nullius-chemical-pack", 1}
      },
      time = 30
    },
    prerequisites = {"nullius-checkpoint-soda-ash", "nullius-pyrolysis"}
  },
  {
    type = "technology",
    name = "nullius-silicon-production-2",
    order = "nullius-ee",
    icon_size = 64,
    icon = ICONPATH .. "mono.png",
    effects = {
      {
        type = "unlock-recipe",
        recipe = "nullius-silicon-ingot-2"
      },
      {
        type = "unlock-recipe",
        recipe = "nullius-monocrystalline-silicon"
      }
    },
    unit = {
      count = 180,
      ingredients = {
        {"nullius-geology-pack", 1}, {"nullius-climatology-pack", 1},
        {"nullius-electrical-pack", 1},
        {"nullius-chemical-pack", 1}
      },
      time = 30
    },
    prerequisites = {"nullius-nanotechnology-1", "nullius-pyrolysis"}
  },
  {
    type = "technology",
    name = "nullius-venting-2",
    order = "nullius-ee",
	icons = {{
      icon = "__angelspetrochem__/graphics/technology/flare-stack-tech.png",
      icon_size = 256,
	  icon_mipmaps = 4
	}},
    effects = {
      {
        type = "unlock-recipe",
        recipe = "nullius-outfall-2"
      },
      {
        type = "unlock-recipe",
        recipe = "nullius-chimney-2"
      }
    },
    unit = {
      count = 140,
      ingredients = {
        {"nullius-geology-pack", 1}, {"nullius-climatology-pack", 1},
        {"nullius-mechanical-pack", 1}, {"nullius-electrical-pack", 1},
        {"nullius-chemical-pack", 1}
      },
      time = 30
    },
    prerequisites = {"nullius-nitrogen-chemistry-2", "nullius-checkpoint-soda-ash"}
  },
  {
    type = "technology",
    name = "nullius-metalworking-3",
    order = "nullius-ee",
    icons = data.raw.fluid["nullius-acid-hydrochloric"].icons,
    effects = {
      {
        type = "unlock-recipe",
        recipe = "nullius-iron-plate-2"
      },
      {
        type = "unlock-recipe",
        recipe = "nullius-steel-plate-2"
      },
      {
        type = "unlock-recipe",
        recipe = "nullius-aluminum-plate-2"
      },
      {
        type = "unlock-recipe",
        recipe = "nullius-iron-rod-2"
      },
      {
        type = "unlock-recipe",
        recipe = "nullius-steel-rod-2"
      },
      {
        type = "unlock-recipe",
        recipe = "nullius-aluminum-rod-2"
      }
    },
    unit = {
      count = 150,
      ingredients = {
        {"nullius-geology-pack", 1}, {"nullius-climatology-pack", 1},
        {"nullius-mechanical-pack", 1}, {"nullius-electrical-pack", 1},
        {"nullius-chemical-pack", 1}
      },
      time = 30
    },
    prerequisites = {"nullius-iron-smelting-3", "nullius-aluminum-production-2", "nullius-sulfur-processing-2"}
  },
  {
    type = "technology",
    name = "nullius-organic-chemistry-4",
    order = "nullius-ee",
    icon = "__base__/graphics/technology/plastics.png",
    icon_size = 256,
    icon_mipmaps = 4,
    effects = {
      {
        type = "unlock-recipe",
        recipe = "nullius-solvent"
      },
      {
        type = "unlock-recipe",
        recipe = "nullius-rubber-nbr"
      },
      {
        type = "unlock-recipe",
        recipe = "nullius-carbon-monoxide-to-dioxide"
	  }
    },
    unit = {
      count = 200,
      ingredients = {
        {"nullius-climatology-pack", 1},
        {"nullius-mechanical-pack", 1}, {"nullius-electrical-pack", 1},
        {"nullius-chemical-pack", 1}
      },
      time = 30
    },
    prerequisites = {"nullius-nitrogen-chemistry-2", "nullius-pyrolysis"},
  },

  {
    type = "technology",
    name = "nullius-distribution-2",
    order = "nullius-ef",
    icon = "__base__/graphics/technology/logistic-system.png",
    icon_size = 256,
    icon_mipmaps = 4,
    effects = {
      {
        type = "unlock-recipe",
        recipe = "nullius-large-storage-chest-1"
      },
      {
        type = "unlock-recipe",
        recipe = "nullius-large-supply-chest-1"
      },
      {
        type = "unlock-recipe",
        recipe = "nullius-large-demand-chest-1"
      }
    },
    unit = {
      count = 160,
      ingredients = {
        {"nullius-geology-pack", 1}, {"nullius-climatology-pack", 1},
        {"nullius-mechanical-pack", 1}, {"nullius-electrical-pack", 1},
        {"nullius-chemical-pack", 1}
      },
      time = 30
    },
    prerequisites = {"nullius-empiricism-3", "nullius-aluminum-production-2"}
  },
  {
    type = "technology",
    name = "nullius-ceramics",
    localised_name = {"", {"technology-name.nullius-ceramics"}, " ", 1},
    order = "nullius-ef",
    icon = "__angelssmelting__/graphics/icons/powder-platinum.png",
    icon_size = 64,
    icon_mipmaps = 4,
    effects = {
      {
        type = "unlock-recipe",
        recipe = "nullius-ceramic-powder"
      },
      {
        type = "unlock-recipe",
        recipe = "nullius-refractory-brick-2"
      },
      {
        type = "unlock-recipe",
        recipe = "nullius-boron"
      }
    },
    unit = {
      count = 180,
      ingredients = {
        {"nullius-geology-pack", 1}, {"nullius-climatology-pack", 1},
        {"nullius-mechanical-pack", 1}, {"nullius-electrical-pack", 1},
        {"nullius-chemical-pack", 1}
      },
      time = 30
    },
    prerequisites = {"nullius-venting-2", "nullius-silicon-production-2"}
  },
  {
    type = "technology",
    name = "nullius-glassmaking-2",
    order = "nullius-ef",
    icon = "__angelssmelting__/graphics/technology/glass-tech.png",
    icon_size = 256,
    icon_mipmaps = 4,
    effects = {
      {
        type = "unlock-recipe",
        recipe = "nullius-soda-lime-glass-2"
      },
      {
        type = "unlock-recipe",
        recipe = "nullius-hard-glass"
      },
      {
        type = "unlock-recipe",
        recipe = "nullius-glass-fiber"
      }
    },
    unit = {
      count = 200,
      ingredients = {
        {"nullius-geology-pack", 1}, {"nullius-climatology-pack", 1},
        {"nullius-mechanical-pack", 1},
        {"nullius-chemical-pack", 1}
      },
      time = 30
    },
    prerequisites = {"nullius-limestone-processing-3", "nullius-silicon-production-2", "nullius-checkpoint-soda-ash"},
  },
  {
    type = "technology",
    name = "nullius-titanium-production-1",
    order = "nullius-ef",
    icon_size = 32,
    icon = "__angelssmelting__/graphics/icons/ore-rutile.png",
    effects = {
      {
        type = "unlock-recipe",
        recipe = "nullius-silica-2"
      },
      {
        type = "unlock-recipe",
        recipe = "nullius-rutile"
      }
    },
    unit = {
      count = 300,
      ingredients = {
        {"nullius-geology-pack", 1}, {"nullius-climatology-pack", 1},
        {"nullius-mechanical-pack", 1}, {"nullius-electrical-pack", 1},
        {"nullius-chemical-pack", 1}
      },
      time = 30
    },
    prerequisites = {"nullius-silicon-production-2", "nullius-metalworking-3"},
  },
  {
    type = "technology",
    name = "nullius-weaving-2",
    order = "nullius-ef",
    icon = "__angelssmelting__/graphics/icons/roll-zinc.png",
    icon_size = 64,
    icon_mipmaps = 4,
    effects = {
      {
        type = "unlock-recipe",
        recipe = "nullius-acrylic-fiber"
      },
      {
        type = "unlock-recipe",
        recipe = "nullius-carbon-fiber"
      },
      {
        type = "unlock-recipe",
        recipe = "nullius-textile-1"
      }
    },
    unit = {
      count = 250,
      ingredients = {
        {"nullius-climatology-pack", 1},
        {"nullius-mechanical-pack", 1}, {"nullius-electrical-pack", 1},
        {"nullius-chemical-pack", 1}
      },
      time = 30
    },
    prerequisites = {"nullius-organic-chemistry-4", "nullius-sulfur-processing-2"}
  },
  {
    type = "technology",
    name = "nullius-steelmaking-2",
    order = "nullius-ef",
    icon = "__base__/graphics/technology/steel-processing.png",
    icon_size = 256,
    icon_mipmaps = 4,
    effects = {
      {
        type = "unlock-recipe",
        recipe = "nullius-steel-ingot-2"
      },
      {
        type = "unlock-recipe",
        recipe = "nullius-iron-oxidation"
      }
    },
    unit = {
      count = 300,
      ingredients = {
        {"nullius-geology-pack", 1}, {"nullius-climatology-pack", 1},
        {"nullius-mechanical-pack", 1}, {"nullius-electrical-pack", 1},
        {"nullius-chemical-pack", 1}
      },
      time = 30
    },
    prerequisites = {"nullius-metalworking-3"},
  },
  {
    type = "technology",
    name = "nullius-chirality-3",
	localised_description = {"technology-description.nullius-chirality", 3,
	    {"technology-description.nullius-chirality-3"}},
    order = "nullius-ef",
    icon_size = 254,
    icon = TECHPATH .. "chiral.png",
    effects = { },
    unit = {
      count = 200,
      ingredients = {
        {"nullius-mechanical-pack", 1}, {"nullius-chemical-pack", 1}
      },
      time = 30
    },
    prerequisites = {"nullius-organic-chemistry-4", "nullius-limestone-processing-3", "nullius-empiricism-3"},
  },

  {
    type = "technology",
    name = "nullius-braking-2",
    order = "nullius-eg",
    icon = "__base__/graphics/technology/braking-force.png",
    icon_size = 256,
    icon_mipmaps = 4,
    effects = {
      {
        type = "train-braking-force-bonus",
        modifier = 0.1
      }
    },
    unit = {
      count = 280,
      ingredients = {
        {"nullius-geology-pack", 1}, {"nullius-climatology-pack", 1},
        {"nullius-mechanical-pack", 1},
        {"nullius-chemical-pack", 1}
      },
      time = 30
    },
    prerequisites = {"nullius-checkpoint-ceramic-powder", "nullius-braking-1"},
    upgrade = true
  },
  {
    type = "technology",
    name = "nullius-illumination-2",
    order = "nullius-eg",
    icon = "__base__/graphics/technology/optics.png",
    icon_size = 256,
    icon_mipmaps = 4,
    effects = {
      {
        type = "unlock-recipe",
        recipe = "nullius-lamp-1b"
      },
      {
        type = "unlock-recipe",
        recipe = "nullius-lamp-2"
      }
    },
    unit = {
      count = 240,
      ingredients = {
        {"nullius-geology-pack", 1}, {"nullius-climatology-pack", 1},
        {"nullius-electrical-pack", 1},
        {"nullius-chemical-pack", 1}
      },
      time = 30
    },
    prerequisites = {"nullius-glassmaking-2", "nullius-ceramics", "nullius-weaving-2"}
  },
  {
    type = "technology",
    name = "nullius-waste-reclamation",
    order = "nullius-eg",
    icon_size = 64,
    icon = ICONPATH .. "fluid/sludge.png",
    effects = {
      {
        type = "unlock-recipe",
        recipe = "nullius-limestone-recovery"
      },
      {
        type = "unlock-recipe",
        recipe = "nullius-iron-recovery"
      },
      {
        type = "unlock-recipe",
        recipe = "nullius-bauxite-recovery"
      },
      {
        type = "unlock-recipe",
        recipe = "nullius-sand-recovery"
      },
      {
        type = "unlock-recipe",
        recipe = "nullius-stone-recovery"
      },
      {
        type = "unlock-recipe",
        recipe = "nullius-barrel-recycling"
      }
    },
    unit = {
      count = 220,
      ingredients = {
        {"nullius-geology-pack", 1}, {"nullius-climatology-pack", 1},
        {"nullius-mechanical-pack", 1}, {"nullius-electrical-pack", 1},
        {"nullius-chemical-pack", 1}
      },
      time = 30
    },
    prerequisites = {"nullius-venting-2", "nullius-titanium-production-1", "nullius-chirality-3"}
  },
  {
    type = "technology",
    name = "nullius-titanium-production-2",
    order = "nullius-eg",
    icon = "__angelssmelting__/graphics/technology/smelting-titanium-tech.png",
    icon_size = 256,
    icon_mipmaps = 4,
    effects = {
      {
        type = "unlock-recipe",
        recipe = "nullius-titanium-tetrachloride"
      },
      {
        type = "unlock-recipe",
        recipe = "nullius-titanium-ingot-1"
      },
      {
        type = "unlock-recipe",
        recipe = "nullius-titanium-plate"
      }
    },
    unit = {
      count = 350,
      ingredients = {
        {"nullius-geology-pack", 1}, {"nullius-climatology-pack", 1},
        {"nullius-mechanical-pack", 1}, {"nullius-electrical-pack", 1},
        {"nullius-chemical-pack", 1}
      },
      time = 30
    },
    prerequisites = {"nullius-titanium-production-1", "nullius-steelmaking-2"},
  },
  {
    type = "technology",
    name = "nullius-battery-storage-1",
    order = "nullius-eg",
    icon = "__base__/graphics/technology/battery.png",
    icon_size = 256,
    icon_mipmaps = 4,
    effects = {
      {
        type = "unlock-recipe",
        recipe = "nullius-battery-1"
      }
    },
    unit = {
      count = 320,
      ingredients = {
        {"nullius-geology-pack", 1}, {"nullius-climatology-pack", 1},
        {"nullius-mechanical-pack", 1}, {"nullius-electrical-pack", 1},
        {"nullius-chemical-pack", 1}
      },
      time = 30
    },
    prerequisites = {"nullius-weaving-2", "nullius-iron-smelting-3"}
  },
  {
    type = "technology",
    name = "nullius-organic-chemistry-5",
    order = "nullius-eg",
    icon_size = 32,
    icon = "__angelspetrochem__/graphics/icons/solid-resin.png",
    effects = {
      {
        type = "unlock-recipe",
        recipe = "nullius-bpa"
      },
      {
        type = "unlock-recipe",
        recipe = "nullius-ech"
      },
      {
        type = "unlock-recipe",
        recipe = "nullius-epoxy"
      },
      {
        type = "unlock-recipe",
        recipe = "nullius-plastic-pc-abs"
      },
      {
        type = "unlock-recipe",
        recipe = "nullius-carbon-gasification-1"
      }
    },
    unit = {
      count = 360,
      ingredients = {
        {"nullius-geology-pack", 1}, {"nullius-climatology-pack", 1},
        {"nullius-mechanical-pack", 1}, {"nullius-electrical-pack", 1},
        {"nullius-chemical-pack", 1}
      },
      time = 30
    },
    prerequisites = {"nullius-chirality-3", "nullius-illumination-2"}
  },
  {
    type = "technology",
    name = "nullius-personal-storage-1",
    order = "nullius-eg",
    icon = "__base__/graphics/technology/toolbelt.png",
    icon_size = 256,
    icon_mipmaps = 4,
    effects = {
      {
        type = "character-inventory-slots-bonus",
        modifier = 10
      },
      {
        type = "unlock-recipe",
        recipe = "nullius-large-cargo-pod-2"
      }
    },
    unit = {
      count = 300,
      ingredients = {
        {"nullius-geology-pack", 1}, {"nullius-climatology-pack", 1},
        {"nullius-mechanical-pack", 1},
        {"nullius-chemical-pack", 1}
      },
      time = 30
    },
    prerequisites = {"nullius-weaving-2", "nullius-distribution-2"}
  },

  {
    type = "technology",
    name = "nullius-boiling-2",
    order = "nullius-eh",
    icon_size = 64,
    icon = ENTICONPATH .. "boiler-blue.png",
    effects = {
      {
        type = "unlock-recipe",
        recipe = "nullius-boiler-1"
      },
      {
        type = "unlock-recipe",
        recipe = "nullius-boiling-wastewater"
      }
    },
    unit = {
      count = 400,
      ingredients = {
        {"nullius-climatology-pack", 2}, {"nullius-mechanical-pack", 1},
        {"nullius-electrical-pack", 1}, {"nullius-chemical-pack", 1}
      },
      time = 30
    },
    prerequisites = {"nullius-waste-reclamation", "nullius-checkpoint-ceramic-powder"}
  },
  {
    type = "technology",
    name = "nullius-packaging-1",
    order = "nullius-eh",
    icon_size = 64,
    icon = ICONPATH .. "crate.png",
    effects = {
      {
        type = "unlock-recipe",
        recipe = "nullius-box-graphite"
      },
      {
        type = "unlock-recipe",
        recipe = "nullius-unbox-graphite"
      },
      {
        type = "unlock-recipe",
        recipe = "nullius-box-iron-ore"
      },
      {
        type = "unlock-recipe",
        recipe = "nullius-unbox-iron-ore"
      },
      {
        type = "unlock-recipe",
        recipe = "nullius-box-crushed-iron-ore"
      },
      {
        type = "unlock-recipe",
        recipe = "nullius-unbox-crushed-iron-ore"
      },
      {
        type = "unlock-recipe",
        recipe = "nullius-box-iron-oxide"
      },
      {
        type = "unlock-recipe",
        recipe = "nullius-unbox-iron-oxide"
      },
      {
        type = "unlock-recipe",
        recipe = "nullius-box-iron-ingot"
      },
      {
        type = "unlock-recipe",
        recipe = "nullius-unbox-iron-ingot"
      },
      {
        type = "unlock-recipe",
        recipe = "nullius-box-steel-ingot"
      },
      {
        type = "unlock-recipe",
        recipe = "nullius-unbox-steel-ingot"
      },
      {
        type = "unlock-recipe",
        recipe = "nullius-box-bauxite"
      },
      {
        type = "unlock-recipe",
        recipe = "nullius-unbox-bauxite"
      },
      {
        type = "unlock-recipe",
        recipe = "nullius-box-crushed-bauxite"
      },
      {
        type = "unlock-recipe",
        recipe = "nullius-unbox-crushed-bauxite"
      },
      {
        type = "unlock-recipe",
        recipe = "nullius-box-aluminum-hydroxide"
      },
      {
        type = "unlock-recipe",
        recipe = "nullius-unbox-aluminum-hydroxide"
      },
      {
        type = "unlock-recipe",
        recipe = "nullius-box-alumina"
      },
      {
        type = "unlock-recipe",
        recipe = "nullius-unbox-alumina"
      },
      {
        type = "unlock-recipe",
        recipe = "nullius-box-aluminum-carbide"
      },
      {
        type = "unlock-recipe",
        recipe = "nullius-unbox-aluminum-carbide"
      },
      {
        type = "unlock-recipe",
        recipe = "nullius-box-aluminum-ingot"
      },
      {
        type = "unlock-recipe",
        recipe = "nullius-unbox-aluminum-ingot"
      },
      {
        type = "unlock-recipe",
        recipe = "nullius-box-rutile"
      },
      {
        type = "unlock-recipe",
        recipe = "nullius-unbox-rutile"
      },
      {
        type = "unlock-recipe",
        recipe = "nullius-box-titanium-ingot"
      },
      {
        type = "unlock-recipe",
        recipe = "nullius-unbox-titanium-ingot"
      },
      {
        type = "unlock-recipe",
        recipe = "nullius-box-sandstone"
      },
      {
        type = "unlock-recipe",
        recipe = "nullius-unbox-sandstone"
      },
      {
        type = "unlock-recipe",
        recipe = "nullius-box-sand"
      },
      {
        type = "unlock-recipe",
        recipe = "nullius-unbox-sand"
      },
      {
        type = "unlock-recipe",
        recipe = "nullius-box-silica"
      },
      {
        type = "unlock-recipe",
        recipe = "nullius-unbox-silica"
      },
      {
        type = "unlock-recipe",
        recipe = "nullius-box-silicon-ingot"
      },
      {
        type = "unlock-recipe",
        recipe = "nullius-unbox-silicon-ingot"
      },
      {
        type = "unlock-recipe",
        recipe = "nullius-box-limestone"
      },
      {
        type = "unlock-recipe",
        recipe = "nullius-unbox-limestone"
      },
      {
        type = "unlock-recipe",
        recipe = "nullius-box-crushed-limestone"
      },
      {
        type = "unlock-recipe",
        recipe = "nullius-unbox-crushed-limestone"
      },
      {
        type = "unlock-recipe",
        recipe = "nullius-box-gypsum"
      },
      {
        type = "unlock-recipe",
        recipe = "nullius-unbox-gypsum"
      },
      {
        type = "unlock-recipe",
        recipe = "nullius-box-lime"
      },
      {
        type = "unlock-recipe",
        recipe = "nullius-unbox-lime"
      },
      {
        type = "unlock-recipe",
        recipe = "nullius-box-stone"
      },
      {
        type = "unlock-recipe",
        recipe = "nullius-unbox-stone"
      },
      {
        type = "unlock-recipe",
        recipe = "nullius-box-gravel"
      },
      {
        type = "unlock-recipe",
        recipe = "nullius-unbox-gravel"
      },
      {
        type = "unlock-recipe",
        recipe = "nullius-box-mineral-dust"
      },
      {
        type = "unlock-recipe",
        recipe = "nullius-unbox-mineral-dust"
      },
      {
        type = "unlock-recipe",
        recipe = "nullius-box-plastic"
      },
      {
        type = "unlock-recipe",
        recipe = "nullius-unbox-plastic"
      },
      {
        type = "unlock-recipe",
        recipe = "nullius-box-rubber"
      },
      {
        type = "unlock-recipe",
        recipe = "nullius-unbox-rubber"
      },
      {
        type = "unlock-recipe",
        recipe = "nullius-box-stone-brick"
      },
      {
        type = "unlock-recipe",
        recipe = "nullius-unbox-stone-brick"
      },
      {
        type = "unlock-recipe",
        recipe = "nullius-box-refractory-brick"
      },
      {
        type = "unlock-recipe",
        recipe = "nullius-unbox-refractory-brick"
      },
      {
        type = "unlock-recipe",
        recipe = "nullius-box-sodium-hydroxide"
      },
      {
        type = "unlock-recipe",
        recipe = "nullius-unbox-sodium-hydroxide"
      }
    },
    unit = {
      count = 400,
      ingredients = {
        {"nullius-geology-pack", 1}, {"nullius-climatology-pack", 1},
        {"nullius-mechanical-pack", 1},
        {"nullius-chemical-pack", 1}
      },
      time = 30
    },
    prerequisites = {"nullius-personal-storage-1", "nullius-titanium-production-2", "nullius-waste-reclamation"}
  },
  {
    type = "technology",
    name = "nullius-cybernetics-3",
    order = "nullius-eh",
    icon = "__base__/graphics/technology/power-armor.png",
    icon_size = 256,
    icon_mipmaps = 4,
    effects = {
      {
        type = "unlock-recipe",
        recipe = "nullius-chassis-3"
      },
      {
        type = "unlock-recipe",
        recipe = "nullius-portable-generator-2"
      },
      {
        type = "unlock-recipe",
        recipe = "nullius-portable-generator-backup"
      },
      {
        type = "unlock-recipe",
        recipe = "nullius-portable-generator-reprioritization"
      },
      {
        type = "unlock-recipe",
        recipe = "nullius-trash-compactor"
      },
      {
        type = "character-health-bonus",
        modifier = 50
      }
    },
    unit = {
      count = 450,
      ingredients = {
        {"nullius-geology-pack", 1}, {"nullius-climatology-pack", 1},
        {"nullius-mechanical-pack", 1}, {"nullius-electrical-pack", 1},
        {"nullius-chemical-pack", 1}
      },
      time = 30
    },
    prerequisites = {
        "nullius-titanium-production-2", "nullius-personal-storage-1",
        "nullius-illumination-2", "nullius-battery-storage-1"
    }
  },
  {
    type = "technology",
    name = "nullius-battery-storage-2",
    order = "nullius-eh",
    icon = "__base__/graphics/technology/electric-energy-acumulators.png",
    icon_size = 256,
    icon_mipmaps = 4,
    effects = {
      {
        type = "unlock-recipe",
        recipe = "nullius-grid-battery-1"
      }
    },
    unit = {
      count = 400,
      ingredients = {
        {"nullius-geology-pack", 1}, {"nullius-climatology-pack", 1},
        {"nullius-electrical-pack", 1},
        {"nullius-chemical-pack", 1}
      },
      time = 30
    },
    prerequisites = {"nullius-battery-storage-1", "nullius-steelmaking-2"}
  },
  {
    type = "technology",
    name = "nullius-explosives-2",
    order = "nullius-eh",
    icon = "__base__/graphics/technology/explosives.png",
    icon_size = 256,
    icon_mipmaps = 4,
    effects = {
      {
        type = "unlock-recipe",
        recipe = "nullius-glycerol"
      },
      {
        type = "unlock-recipe",
        recipe = "nullius-explosive"
      }
    },
    unit = {
      count = 350,
      ingredients = {
        {"nullius-geology-pack", 1}, {"nullius-climatology-pack", 1},
        {"nullius-mechanical-pack", 1}, {"nullius-electrical-pack", 1},
        {"nullius-chemical-pack", 1}
      },
      time = 30
    },
    prerequisites = {"nullius-organic-chemistry-5", "nullius-steelmaking-2", "nullius-boiling-2"}
  },
  {
    type = "technology",
    name = "nullius-composites-1",
    order = "nullius-eh",
    icon = "__angelssmelting__/graphics/technology/smelting-zinc-tech.png",
    icon_size = 256,
    icon_mipmaps = 4,
    effects = {
      {
        type = "unlock-recipe",
        recipe = "nullius-fiberglass"
      }
    },
    unit = {
      count = 550,
      ingredients = {
        {"nullius-geology-pack", 1}, {"nullius-climatology-pack", 1},
        {"nullius-mechanical-pack", 1},
        {"nullius-chemical-pack", 1}
      },
      time = 30
    },
    prerequisites = {"nullius-organic-chemistry-5", "nullius-boiling-2"}
  },

  {
    type = "technology",
    name = "nullius-packaging-2",
    order = "nullius-ei",
    icon_size = 64,
    icon = ICONPATH .. "crate.png",
    effects = {
      {
        type = "unlock-recipe",
        recipe = "nullius-box-concrete"
      },
      {
        type = "unlock-recipe",
        recipe = "nullius-unbox-concrete"
      },
      {
        type = "unlock-recipe",
        recipe = "nullius-box-land-fill-gravel"
      },
      {
        type = "unlock-recipe",
        recipe = "nullius-unbox-land-fill-gravel"
      },
      {
        type = "unlock-recipe",
        recipe = "nullius-box-land-fill-sand"
      },
      {
        type = "unlock-recipe",
        recipe = "nullius-unbox-land-fill-sand"
      },
      {
        type = "unlock-recipe",
        recipe = "nullius-box-land-fill-bauxite"
      },
      {
        type = "unlock-recipe",
        recipe = "nullius-unbox-land-fill-bauxite"
      },
      {
        type = "unlock-recipe",
        recipe = "nullius-box-land-fill-iron"
      },
      {
        type = "unlock-recipe",
        recipe = "nullius-unbox-land-fill-iron"
      },
      {
        type = "unlock-recipe",
        recipe = "nullius-box-land-fill-limestone"
      },
      {
        type = "unlock-recipe",
        recipe = "nullius-unbox-land-fill-limestone"
      },
      {
        type = "unlock-recipe",
        recipe = "nullius-box-insulated-wire"
      },
      {
        type = "unlock-recipe",
        recipe = "nullius-unbox-insulated-wire"
      },
      {
        type = "unlock-recipe",
        recipe = "nullius-box-iron-plate"
      },
      {
        type = "unlock-recipe",
        recipe = "nullius-unbox-iron-plate"
      },
      {
        type = "unlock-recipe",
        recipe = "nullius-box-iron-rod"
      },
      {
        type = "unlock-recipe",
        recipe = "nullius-unbox-iron-rod"
      },
      {
        type = "unlock-recipe",
        recipe = "nullius-box-iron-sheet"
      },
      {
        type = "unlock-recipe",
        recipe = "nullius-unbox-iron-sheet"
      },
      {
        type = "unlock-recipe",
        recipe = "nullius-box-iron-wire"
      },
      {
        type = "unlock-recipe",
        recipe = "nullius-unbox-iron-wire"
      },
      {
        type = "unlock-recipe",
        recipe = "nullius-box-iron-gear"
      },
      {
        type = "unlock-recipe",
        recipe = "nullius-unbox-iron-gear"
      },
      {
        type = "unlock-recipe",
        recipe = "nullius-box-steel-plate"
      },
      {
        type = "unlock-recipe",
        recipe = "nullius-unbox-steel-plate"
      },
      {
        type = "unlock-recipe",
        recipe = "nullius-box-steel-rod"
      },
      {
        type = "unlock-recipe",
        recipe = "nullius-unbox-steel-rod"
      },
      {
        type = "unlock-recipe",
        recipe = "nullius-box-steel-sheet"
      },
      {
        type = "unlock-recipe",
        recipe = "nullius-unbox-steel-sheet"
      },
      {
        type = "unlock-recipe",
        recipe = "nullius-box-steel-wire"
      },
      {
        type = "unlock-recipe",
        recipe = "nullius-unbox-steel-wire"
      },
      {
        type = "unlock-recipe",
        recipe = "nullius-box-steel-cable"
      },
      {
        type = "unlock-recipe",
        recipe = "nullius-unbox-steel-cable"
      },
      {
        type = "unlock-recipe",
        recipe = "nullius-box-steel-beam"
      },
      {
        type = "unlock-recipe",
        recipe = "nullius-unbox-steel-beam"
      },
      {
        type = "unlock-recipe",
        recipe = "nullius-box-steel-gear"
      },
      {
        type = "unlock-recipe",
        recipe = "nullius-unbox-steel-gear"
      },
      {
        type = "unlock-recipe",
        recipe = "nullius-box-aluminum-plate"
      },
      {
        type = "unlock-recipe",
        recipe = "nullius-unbox-aluminum-plate"
      },
      {
        type = "unlock-recipe",
        recipe = "nullius-box-aluminum-rod"
      },
      {
        type = "unlock-recipe",
        recipe = "nullius-unbox-aluminum-rod"
      },
      {
        type = "unlock-recipe",
        recipe = "nullius-box-aluminum-sheet"
      },
      {
        type = "unlock-recipe",
        recipe = "nullius-unbox-aluminum-sheet"
      },
      {
        type = "unlock-recipe",
        recipe = "nullius-box-aluminum-wire"
      },
      {
        type = "unlock-recipe",
        recipe = "nullius-unbox-aluminum-wire"
      },
      {
        type = "unlock-recipe",
        recipe = "nullius-box-titanium-plate"
      },
      {
        type = "unlock-recipe",
        recipe = "nullius-unbox-titanium-plate"
      },
      {
        type = "unlock-recipe",
        recipe = "nullius-box-titanium-rod"
      },
      {
        type = "unlock-recipe",
        recipe = "nullius-unbox-titanium-rod"
      },
      {
        type = "unlock-recipe",
        recipe = "nullius-box-titanium-sheet"
      },
      {
        type = "unlock-recipe",
        recipe = "nullius-unbox-titanium-sheet"
      },
      {
        type = "unlock-recipe",
        recipe = "nullius-box-glass"
      },
      {
        type = "unlock-recipe",
        recipe = "nullius-unbox-glass"
      },
      {
        type = "unlock-recipe",
        recipe = "nullius-box-hard-glass"
      },
      {
        type = "unlock-recipe",
        recipe = "nullius-unbox-hard-glass"
      },
      {
        type = "unlock-recipe",
        recipe = "nullius-box-polycrystalline-silicon"
      },
      {
        type = "unlock-recipe",
        recipe = "nullius-unbox-polycrystalline-silicon"
      },
      {
        type = "unlock-recipe",
        recipe = "nullius-box-monocrystalline-silicon"
      },
      {
        type = "unlock-recipe",
        recipe = "nullius-unbox-monocrystalline-silicon"
      },
      {
        type = "unlock-recipe",
        recipe = "nullius-box-acid-boric"
      },
      {
        type = "unlock-recipe",
        recipe = "nullius-unbox-acid-boric"
      },
      {
        type = "unlock-recipe",
        recipe = "nullius-box-boron"
      },
      {
        type = "unlock-recipe",
        recipe = "nullius-unbox-boron"
      },
      {
        type = "unlock-recipe",
        recipe = "nullius-box-ceramic-powder"
      },
      {
        type = "unlock-recipe",
        recipe = "nullius-unbox-ceramic-powder"
      },
      {
        type = "unlock-recipe",
        recipe = "nullius-box-cement"
      },
      {
        type = "unlock-recipe",
        recipe = "nullius-unbox-cement"
      },
      {
        type = "unlock-recipe",
        recipe = "nullius-box-pipe-1"
      },
      {
        type = "unlock-recipe",
        recipe = "nullius-unbox-pipe-1"
      },
      {
        type = "unlock-recipe",
        recipe = "nullius-box-pipe-2"
      },
      {
        type = "unlock-recipe",
        recipe = "nullius-unbox-pipe-2"
      },
      {
        type = "unlock-recipe",
        recipe = "nullius-box-pipe-3"
      },
      {
        type = "unlock-recipe",
        recipe = "nullius-unbox-pipe-3"
      }
    },
    unit = {
      count = 400,
      ingredients = {
        {"nullius-geology-pack", 1}, {"nullius-climatology-pack", 1},
        {"nullius-mechanical-pack", 1}, {"nullius-electrical-pack", 1},
        {"nullius-chemical-pack", 1}
      },
      time = 30
    },
    prerequisites = {"nullius-packaging-1", "nullius-distribution-1"}
  },
  {
    type = "technology",
    name = "nullius-robotics-2",
    order = "nullius-ei",
    icon = "__base__/graphics/technology/robotics.png",
    icon_size = 256,
    icon_mipmaps = 4,
    effects = {
      {
        type = "unlock-recipe",
        recipe = "nullius-hangar-2"
      },
      {
        type = "unlock-recipe",
        recipe = "nullius-charger-2"
      },
      {
        type = "unlock-recipe",
        recipe = "nullius-relay-2"
      },
      {
        type = "unlock-recipe",
        recipe = "nullius-robot-frame-2"
      }
    },
    unit = {
      count = 500,
      ingredients = {
        {"nullius-geology-pack", 1}, {"nullius-climatology-pack", 1},
        {"nullius-mechanical-pack", 1}, {"nullius-electrical-pack", 1},
        {"nullius-chemical-pack", 1}
      },
      time = 30
    },
    prerequisites = {"nullius-checkpoint-battery", "nullius-braking-2",
	    "nullius-composites-1", "nullius-cybernetics-3"}
  },
  {
    type = "technology",
    name = "nullius-solar-power-2",
    order = "nullius-ei",
    icon = "__base__/graphics/technology/solar-energy.png",
    icon_size = 256,
    icon_mipmaps = 4,
    effects = {
      {
        type = "unlock-recipe",
        recipe = "nullius-solar-panel-2"
      }
    },
    unit = {
      count = 550,
      ingredients = {
        {"nullius-geology-pack", 1}, {"nullius-climatology-pack", 1},
        {"nullius-mechanical-pack", 1}, {"nullius-electrical-pack", 1},
        {"nullius-chemical-pack", 1}
      },
      time = 30
    },
    prerequisites = {"nullius-organic-chemistry-5", "nullius-boiling-2", "nullius-battery-storage-2"}
  },
  {
    type = "technology",
    name = "nullius-electronics-2",
    order = "nullius-ei",
    icon = "__base__/graphics/technology/advanced-electronics.png",
    icon_size = 256,
    icon_mipmaps = 4,
    effects = {
      {
        type = "unlock-recipe",
        recipe = "nullius-processor-1"
      },
      {
        type = "unlock-recipe",
        recipe = "nullius-optical-cable"
      }
    },
    unit = {
      count = 600,
      ingredients = {
        {"nullius-geology-pack", 1}, {"nullius-climatology-pack", 1},
        {"nullius-mechanical-pack", 1}, {"nullius-electrical-pack", 1},
        {"nullius-chemical-pack", 1}
      },
      time = 30
    },
    prerequisites = {"nullius-composites-1", "nullius-solar-power-2", "nullius-toolmaking-5"},
  },
  {
    type = "technology",
    name = "nullius-concrete-2",
    order = "nullius-ei",
    icon = "__base__/graphics/technology/concrete.png",
    icon_size = 256,
    icon_mipmaps = 4,
    effects = {
      {
        type = "unlock-recipe",
        recipe = "nullius-cement-2"
      },
      {
        type = "unlock-recipe",
        recipe = "nullius-concrete-2"
      },
      {
        type = "unlock-recipe",
        recipe = "nullius-reinforced-concrete"
      }
    },
    unit = {
      count = 400,
      ingredients = {
        {"nullius-geology-pack", 1}, {"nullius-climatology-pack", 1},
        {"nullius-mechanical-pack", 1},
        {"nullius-chemical-pack", 1}
      },
      time = 30
    },
    prerequisites = {"nullius-composites-1"}
  },
  {
    type = "technology",
    name = "nullius-toolmaking-5",
    order = "nullius-ei",
    icon = "__base__/graphics/technology/personal-laser-defense-equipment.png",
    icon_size = 256,
    icon_mipmaps = 4,
    effects = {
      {
        type = "character-mining-speed",
        modifier = 0.2
      },
      {
        type = "character-crafting-speed",
        modifier = 0.25
      },
      {
        type = "character-resource-reach-distance",
        modifier = 1
      }
    },
    unit = {
      count = 600,
      ingredients = {
        {"nullius-geology-pack", 1}, {"nullius-climatology-pack", 1},
        {"nullius-mechanical-pack", 1}, {"nullius-electrical-pack", 1},
        {"nullius-chemical-pack", 1}
      },
      time = 30
    },
    prerequisites = {"nullius-cybernetics-3"}
  },

  {
    type = "technology",
    name = "nullius-packaging-3",
    order = "nullius-ej",
    icon_size = 64,
    icon = ICONPATH .. "crate.png",
    effects = {
      {
        type = "unlock-recipe",
        recipe = "nullius-box-filter-1"
      },
      {
        type = "unlock-recipe",
        recipe = "nullius-unbox-filter-1"
      },
      {
        type = "unlock-recipe",
        recipe = "nullius-box-logic-circuit"
      },
      {
        type = "unlock-recipe",
        recipe = "nullius-unbox-logic-circuit"
      },
      {
        type = "unlock-recipe",
        recipe = "nullius-box-memory-circuit"
      },
      {
        type = "unlock-recipe",
        recipe = "nullius-unbox-memory-circuit"
      },
      {
        type = "unlock-recipe",
        recipe = "nullius-box-arithmetic-circuit"
      },
      {
        type = "unlock-recipe",
        recipe = "nullius-unbox-arithmetic-circuit"
      },
      {
        type = "unlock-recipe",
        recipe = "nullius-box-red-wire"
      },
      {
        type = "unlock-recipe",
        recipe = "nullius-unbox-red-wire"
      },
      {
        type = "unlock-recipe",
        recipe = "nullius-box-green-wire"
      },
      {
        type = "unlock-recipe",
        recipe = "nullius-unbox-green-wire"
      },
      {
        type = "unlock-recipe",
        recipe = "nullius-box-bpa"
      },
      {
        type = "unlock-recipe",
        recipe = "nullius-unbox-bpa"
      },
      {
        type = "unlock-recipe",
        recipe = "nullius-box-acrylic-fiber"
      },
      {
        type = "unlock-recipe",
        recipe = "nullius-unbox-acrylic-fiber"
      },
      {
        type = "unlock-recipe",
        recipe = "nullius-box-carbon-fiber"
      },
      {
        type = "unlock-recipe",
        recipe = "nullius-unbox-carbon-fiber"
      },
      {
        type = "unlock-recipe",
        recipe = "nullius-box-capacitor"
      },
      {
        type = "unlock-recipe",
        recipe = "nullius-unbox-capacitor"
      },
      {
        type = "unlock-recipe",
        recipe = "nullius-box-glass-fiber"
      },
      {
        type = "unlock-recipe",
        recipe = "nullius-unbox-glass-fiber"
      },
      {
        type = "unlock-recipe",
        recipe = "nullius-box-optical-cable"
      },
      {
        type = "unlock-recipe",
        recipe = "nullius-unbox-optical-cable"
      },
      {
        type = "unlock-recipe",
        recipe = "nullius-box-insulation"
      },
      {
        type = "unlock-recipe",
        recipe = "nullius-unbox-insulation"
      },
      {
        type = "unlock-recipe",
        recipe = "nullius-box-soda-ash"
      },
      {
        type = "unlock-recipe",
        recipe = "nullius-unbox-soda-ash"
      },
      {
        type = "unlock-recipe",
        recipe = "nullius-box-calcium-chloride"
      },
      {
        type = "unlock-recipe",
        recipe = "nullius-unbox-calcium-chloride"
      },
      {
        type = "unlock-recipe",
        recipe = "nullius-box-sodium-sulfate"
      },
      {
        type = "unlock-recipe",
        recipe = "nullius-unbox-sodium-sulfate"
      },
      {
        type = "unlock-recipe",
        recipe = "nullius-box-sodium"
      },
      {
        type = "unlock-recipe",
        recipe = "nullius-unbox-sodium"
      },
      {
        type = "unlock-recipe",
        recipe = "nullius-box-salt"
      },
      {
        type = "unlock-recipe",
        recipe = "nullius-unbox-salt"
      },
      {
        type = "unlock-recipe",
        recipe = "nullius-box-reinforced-concrete"
      },
      {
        type = "unlock-recipe",
        recipe = "nullius-unbox-reinforced-concrete"
      },
      {
        type = "unlock-recipe",
        recipe = "nullius-box-textile"
      },
      {
        type = "unlock-recipe",
        recipe = "nullius-unbox-textile"
      },
      {
        type = "unlock-recipe",
        recipe = "nullius-box-lamp-1"
      },
      {
        type = "unlock-recipe",
        recipe = "nullius-unbox-lamp-1"
      },
      {
        type = "unlock-recipe",
        recipe = "nullius-box-lamp-2"
      },
      {
        type = "unlock-recipe",
        recipe = "nullius-unbox-lamp-2"
      },
      {
        type = "unlock-recipe",
        recipe = "nullius-box-sensor-1"
      },
      {
        type = "unlock-recipe",
        recipe = "nullius-unbox-sensor-1"
      },
      {
        type = "unlock-recipe",
        recipe = "nullius-box-fiberglass"
      },
      {
        type = "unlock-recipe",
        recipe = "nullius-unbox-fiberglass"
      },
      {
        type = "unlock-recipe",
        recipe = "nullius-box-processor-1"
      },
      {
        type = "unlock-recipe",
        recipe = "nullius-unbox-processor-1"
      },
      {
        type = "unlock-recipe",
        recipe = "nullius-box-sensor-2"
      },
      {
        type = "unlock-recipe",
        recipe = "nullius-unbox-sensor-2"
      },
      {
        type = "unlock-recipe",
        recipe = "nullius-box-battery-1"
      },
      {
        type = "unlock-recipe",
        recipe = "nullius-unbox-battery-1"
      },
      {
        type = "unlock-recipe",
        recipe = "nullius-box-antenna"
      },
      {
        type = "unlock-recipe",
        recipe = "nullius-unbox-antenna"
      },
      {
        type = "unlock-recipe",
        recipe = "nullius-box-bearing"
      },
      {
        type = "unlock-recipe",
        recipe = "nullius-unbox-bearing"
      },
      {
        type = "unlock-recipe",
        recipe = "nullius-box-underground-pipe-1"
      },
      {
        type = "unlock-recipe",
        recipe = "nullius-unbox-underground-pipe-1"
      },
      {
        type = "unlock-recipe",
        recipe = "nullius-box-underground-pipe-2"
      },
      {
        type = "unlock-recipe",
        recipe = "nullius-unbox-underground-pipe-2"
      },
      {
        type = "unlock-recipe",
        recipe = "nullius-box-underground-pipe-3"
      },
      {
        type = "unlock-recipe",
        recipe = "nullius-unbox-underground-pipe-3"
      },
      {
        type = "unlock-recipe",
        recipe = "nullius-box-motor-1"
      },
      {
        type = "unlock-recipe",
        recipe = "nullius-unbox-motor-1"
      },
      {
        type = "unlock-recipe",
        recipe = "nullius-box-motor-2"
      },
      {
        type = "unlock-recipe",
        recipe = "nullius-unbox-motor-2"
      },
      {
        type = "unlock-recipe",
        recipe = "nullius-box-one-way-valve"
      },
      {
        type = "unlock-recipe",
        recipe = "nullius-unbox-one-way-valve"
      },
      {
        type = "unlock-recipe",
        recipe = "nullius-box-repair-pack"
      },
      {
        type = "unlock-recipe",
        recipe = "nullius-unbox-repair-pack"
      },
      {
        type = "unlock-recipe",
        recipe = "nullius-box-fabrication-tool-1"
      },
      {
        type = "unlock-recipe",
        recipe = "nullius-unbox-fabrication-tool-1"
      },
      {
        type = "unlock-recipe",
        recipe = "nullius-box-fabrication-tool-2"
      },
      {
        type = "unlock-recipe",
        recipe = "nullius-unbox-fabrication-tool-2"
      },
      {
        type = "unlock-recipe",
        recipe = "nullius-box-transformer"
      },
      {
        type = "unlock-recipe",
        recipe = "nullius-unbox-transformer"
      },
      {
        type = "unlock-recipe",
        recipe = "nullius-box-power-switch"
      },
      {
        type = "unlock-recipe",
        recipe = "nullius-unbox-power-switch"
      }
    },
    unit = {
      count = 500,
      ingredients = {
        {"nullius-geology-pack", 1}, {"nullius-climatology-pack", 1},
        {"nullius-mechanical-pack", 1}, {"nullius-electrical-pack", 1},
        {"nullius-chemical-pack", 1}
      },
      time = 30
    },
    prerequisites = {"nullius-packaging-2"}
  },
  {
    type = "technology",
    name = "nullius-logistic-robot-2",
    order = "nullius-ej",
    icon = "__base__/graphics/technology/logistic-robotics.png",
    icon_size = 256,
    icon_mipmaps = 4,
    effects = {
      {
        type = "unlock-recipe",
        recipe = "nullius-logistic-bot-2"
      },
      {
        type = "character-logistic-trash-slots",
        modifier = 10
      }
    },
    unit = {
      count = 600,
      ingredients = {
        {"nullius-geology-pack", 1}, {"nullius-climatology-pack", 1},
        {"nullius-mechanical-pack", 1}, {"nullius-electrical-pack", 1},
        {"nullius-chemical-pack", 1}
      },
      time = 30
    },
    prerequisites = {"nullius-checkpoint-logistic-robot-2"},
  },
  {
    type = "technology",
    name = "nullius-actuation-3",
    order = "nullius-ej",
    icon = "__base__/graphics/technology/stack-inserter.png",
    icon_size = 256,
    icon_mipmaps = 4,
    effects = {
      {
        type = "unlock-recipe",
        recipe = "nullius-inserter-3"
      },
      {
        type = "unlock-recipe",
        recipe = "nullius-filter-inserter-3"
      },
      {
        type = "stack-inserter-capacity-bonus",
        modifier = 1
      }
    },
    unit = {
      count = 500,
      ingredients = {
        {"nullius-mechanical-pack", 1}, {"nullius-electrical-pack", 1}
      },
      time = 30
    },
    prerequisites = {"nullius-checkpoint-logistic-robot-2",
	    "nullius-packaging-3", "nullius-ceramics-2"}
  },
  {
    type = "technology",
    name = "nullius-energy-distribution-4",
    order = "nullius-ej",
    icon = "__base__/graphics/technology/electric-energy-distribution-1.png",
    icon_size = 256,
    icon_mipmaps = 4,
    effects = {
      {
        type = "unlock-recipe",
        recipe = "nullius-power-pole-3"
      },
      {
        type = "unlock-recipe",
        recipe = "nullius-pylon-2"
      },
      {
        type = "unlock-recipe",
        recipe = "nullius-substation-2"
      }
    },
    unit = {
      count = 550,
      ingredients = {
        {"nullius-geology-pack", 1}, {"nullius-climatology-pack", 1},
        {"nullius-mechanical-pack", 1}, {"nullius-electrical-pack", 1},
        {"nullius-chemical-pack", 1}
      },
      time = 30
    },
    prerequisites = {"nullius-concrete-2", "nullius-checkpoint-battery", "nullius-electronics-2"},
  },
  {
    type = "technology",
    name = "nullius-plumbing-5",
    order = "nullius-ej",
    icon = "__base__/graphics/technology/fluid-handling.png",
    icon_size = 256,
    icon_mipmaps = 4,
    effects = {
      {
        type = "unlock-recipe",
        recipe = "nullius-medium-tank-3"
      },
      {
        type = "unlock-recipe",
        recipe = "nullius-small-tank-2"
      },
      {
        type = "unlock-recipe",
        recipe = "nullius-large-tank-2"
      },
      {
        type = "unlock-recipe",
        recipe = "nullius-pipe-3"
      },
      {
        type = "unlock-recipe",
        recipe = "nullius-underground-pipe-3"
      }
    },
    unit = {
      count = 500,
      ingredients = {
        {"nullius-geology-pack", 1}, {"nullius-climatology-pack", 1},
        {"nullius-mechanical-pack", 1},
        {"nullius-chemical-pack", 1}
      },
      time = 30
    },
    prerequisites = {"nullius-concrete-2", "nullius-ceramics-2"}
  },
  {
    type = "technology",
    name = "nullius-optimization-3",
    order = "nullius-ej",
    icon = "__base__/graphics/technology/module.png",
    icon_size = 256,
    icon_mipmaps = 4,
    effects = {
      {
        type = "unlock-recipe",
        recipe = "nullius-haste-module-2"
      },
      {
        type = "unlock-recipe",
        recipe = "nullius-efficiency-module-2"
      },
      {
        type = "unlock-recipe",
        recipe = "nullius-yield-module-2"
      }
    },
    unit = {
      count = 700,
      ingredients = {
        {"nullius-mechanical-pack", 1}, {"nullius-electrical-pack", 1},
        {"nullius-chemical-pack", 1}
      },
      time = 30
    },
    prerequisites = {"nullius-checkpoint-monocrystalline-silicon"}
  },
  {
    type = "technology",
    name = "nullius-demolitions-1",
    order = "nullius-ej",
    icon = "__base__/graphics/technology/military.png",
    icon_size = 256,
    icon_mipmaps = 4,
    effects = {
      {
        type = "unlock-recipe",
        recipe = "nullius-missile-launcher"
      },
      {
        type = "unlock-recipe",
        recipe = "nullius-missile-1"
      },
      {
        type = "unlock-recipe",
        recipe = "nullius-gun"
      },
      {
        type = "unlock-recipe",
        recipe = "nullius-magazine"
      }
    },
    unit = {
      count = 500,
      ingredients = {
        {"nullius-geology-pack", 1}, {"nullius-climatology-pack", 1},
        {"nullius-mechanical-pack", 1}, {"nullius-electrical-pack", 1},
        {"nullius-chemical-pack", 1}
      },
      time = 30
    },
    prerequisites = {"nullius-toolmaking-5", "nullius-explosives-2"}
  },
  {
    type = "technology",
    name = "nullius-ceramics-2",
    order = "nullius-ej",
    icon = ICONPATH .. "bearing.png",
    icon_size = 64,
    effects = {
      {
        type = "unlock-recipe",
        recipe = "nullius-bearing"
      },
      {
        type = "unlock-recipe",
        recipe = "nullius-crucible-2"
      }
    },
    unit = {
      count = 350,
      ingredients = {
        {"nullius-geology-pack", 1}, {"nullius-climatology-pack", 1},
        {"nullius-mechanical-pack", 1}, {"nullius-chemical-pack", 1}
      },
      time = 30
    },
    prerequisites = {"nullius-composites-1",
	    "nullius-toolmaking-5", "nullius-packaging-2"}
  },

  {
    type = "technology",
    name = "nullius-construction-robot-2",
    order = "nullius-ek",
    icon = "__base__/graphics/technology/construction-robotics.png",
    icon_size = 256,
    icon_mipmaps = 4,
    effects = {
      {
        type = "unlock-recipe",
        recipe = "nullius-construction-bot-2"
      },
      {
        type = "ghost-time-to-live",
        modifier = 60 * 60 * 60 * 10
      }
    },
    unit = {
      count = 600,
      ingredients = {
        {"nullius-geology-pack", 1}, {"nullius-climatology-pack", 1},
        {"nullius-mechanical-pack", 1}, {"nullius-electrical-pack", 1},
        {"nullius-chemical-pack", 1}
      },
      time = 30
    },
    prerequisites = {"nullius-checkpoint-construction-robot"}
  },
  {
    type = "technology",
    name = "nullius-packaging-4",
    order = "nullius-ek",
    icon_size = 64,
    icon = ICONPATH .. "crate.png",
    effects = {
      {
        type = "unlock-recipe",
        recipe = "nullius-box-heat-pipe-1"
      },
      {
        type = "unlock-recipe",
        recipe = "nullius-unbox-heat-pipe-1"
      },
      {
        type = "unlock-recipe",
        recipe = "nullius-box-heat-pipe-2"
      },
      {
        type = "unlock-recipe",
        recipe = "nullius-unbox-heat-pipe-2"
      },
      {
        type = "unlock-recipe",
        recipe = "nullius-box-white-concrete"
      },
      {
        type = "unlock-recipe",
        recipe = "nullius-unbox-white-concrete"
      },
      {
        type = "unlock-recipe",
        recipe = "nullius-box-red-concrete"
      },
      {
        type = "unlock-recipe",
        recipe = "nullius-unbox-red-concrete"
      },
      {
        type = "unlock-recipe",
        recipe = "nullius-box-blue-concrete"
      },
      {
        type = "unlock-recipe",
        recipe = "nullius-unbox-blue-concrete"
      },
      {
        type = "unlock-recipe",
        recipe = "nullius-box-yellow-concrete"
      },
      {
        type = "unlock-recipe",
        recipe = "nullius-unbox-yellow-concrete"
      },
      {
        type = "unlock-recipe",
        recipe = "nullius-box-orange-concrete"
      },
      {
        type = "unlock-recipe",
        recipe = "nullius-unbox-orange-concrete"
      },
      {
        type = "unlock-recipe",
        recipe = "nullius-box-green-concrete"
      },
      {
        type = "unlock-recipe",
        recipe = "nullius-unbox-green-concrete"
      },
      {
        type = "unlock-recipe",
        recipe = "nullius-box-purple-concrete"
      },
      {
        type = "unlock-recipe",
        recipe = "nullius-unbox-purple-concrete"
      },
      {
        type = "unlock-recipe",
        recipe = "nullius-box-brown-concrete"
      },
      {
        type = "unlock-recipe",
        recipe = "nullius-unbox-brown-concrete"
      },
      {
        type = "unlock-recipe",
        recipe = "nullius-box-black-concrete"
      },
      {
        type = "unlock-recipe",
        recipe = "nullius-unbox-black-concrete"
      },
      {
        type = "unlock-recipe",
        recipe = "nullius-box-hazard-concrete"
      },
      {
        type = "unlock-recipe",
        recipe = "nullius-unbox-hazard-concrete"
      },
      {
        type = "unlock-recipe",
        recipe = "nullius-box-priority-valve"
      },
      {
        type = "unlock-recipe",
        recipe = "nullius-unbox-priority-valve"
      },
      {
        type = "unlock-recipe",
        recipe = "nullius-box-top-up-valve"
      },
      {
        type = "unlock-recipe",
        recipe = "nullius-unbox-top-up-valve"
      },
      {
        type = "unlock-recipe",
        recipe = "nullius-box-relief-valve"
      },
      {
        type = "unlock-recipe",
        recipe = "nullius-unbox-relief-valve"
      },
      {
        type = "unlock-recipe",
        recipe = "nullius-box-barrel"
      },
      {
        type = "unlock-recipe",
        recipe = "nullius-unbox-barrel"
      },
      {
        type = "unlock-recipe",
        recipe = "nullius-box-canister"
      },
      {
        type = "unlock-recipe",
        recipe = "nullius-unbox-canister"
      },
      {
        type = "unlock-recipe",
        recipe = "nullius-box-hydrogen-canister"
      },
      {
        type = "unlock-recipe",
        recipe = "nullius-unbox-hydrogen-canister"
      },
      {
        type = "unlock-recipe",
        recipe = "nullius-box-methanol-canister"
      },
      {
        type = "unlock-recipe",
        recipe = "nullius-unbox-methanol-canister"
      },
      {
        type = "unlock-recipe",
        recipe = "nullius-box-water-canister"
      },
      {
        type = "unlock-recipe",
        recipe = "nullius-unbox-water-canister"
      },
      {
        type = "unlock-recipe",
        recipe = "nullius-box-repair-pack"
      },
      {
        type = "unlock-recipe",
        recipe = "nullius-unbox-repair-pack"
      },
      {
        type = "unlock-recipe",
        recipe = "nullius-box-chain-signal"
      },
      {
        type = "unlock-recipe",
        recipe = "nullius-unbox-chain-signal"
      },
      {
        type = "unlock-recipe",
        recipe = "nullius-box-rail-signal"
      },
      {
        type = "unlock-recipe",
        recipe = "nullius-unbox-rail-signal"
      },
      {
        type = "unlock-recipe",
        recipe = "nullius-box-inserter-1"
      },
      {
        type = "unlock-recipe",
        recipe = "nullius-unbox-inserter-1"
      },
      {
        type = "unlock-recipe",
        recipe = "nullius-box-inserter-2"
      },
      {
        type = "unlock-recipe",
        recipe = "nullius-unbox-inserter-2"
      },
      {
        type = "unlock-recipe",
        recipe = "nullius-box-filter-inserter-2"
      },
      {
        type = "unlock-recipe",
        recipe = "nullius-unbox-filter-inserter-2"
      },
      {
        type = "unlock-recipe",
        recipe = "nullius-box-inserter-3"
      },
      {
        type = "unlock-recipe",
        recipe = "nullius-unbox-inserter-3"
      },
      {
        type = "unlock-recipe",
        recipe = "nullius-box-filter-inserter-3"
      },
      {
        type = "unlock-recipe",
        recipe = "nullius-unbox-filter-inserter-3"
      },
      {
        type = "unlock-recipe",
        recipe = "nullius-box-belt-1"
      },
      {
        type = "unlock-recipe",
        recipe = "nullius-unbox-belt-1"
      },
      {
        type = "unlock-recipe",
        recipe = "nullius-box-belt-2"
      },
      {
        type = "unlock-recipe",
        recipe = "nullius-unbox-belt-2"
      },
      {
        type = "unlock-recipe",
        recipe = "nullius-box-belt-3"
      },
      {
        type = "unlock-recipe",
        recipe = "nullius-unbox-belt-3"
      },
      {
        type = "unlock-recipe",
        recipe = "nullius-box-power-pole-1"
      },
      {
        type = "unlock-recipe",
        recipe = "nullius-unbox-power-pole-1"
      },
      {
        type = "unlock-recipe",
        recipe = "nullius-box-power-pole-2"
      },
      {
        type = "unlock-recipe",
        recipe = "nullius-unbox-power-pole-2"
      },
      {
        type = "unlock-recipe",
        recipe = "nullius-box-power-pole-3"
      },
      {
        type = "unlock-recipe",
        recipe = "nullius-unbox-power-pole-3"
      },
      {
        type = "unlock-recipe",
        recipe = "nullius-box-pump-1"
      },
      {
        type = "unlock-recipe",
        recipe = "nullius-unbox-pump-1"
      },
      {
        type = "unlock-recipe",
        recipe = "nullius-box-pump-2"
      },
      {
        type = "unlock-recipe",
        recipe = "nullius-unbox-pump-2"
      },
      {
        type = "unlock-recipe",
        recipe = "nullius-box-small-pump-1"
      },
      {
        type = "unlock-recipe",
        recipe = "nullius-unbox-small-pump-1"
      },
      {
        type = "unlock-recipe",
        recipe = "nullius-box-turbine-open-1"
      },
      {
        type = "unlock-recipe",
        recipe = "nullius-unbox-turbine-open-1"
      },
      {
        type = "unlock-recipe",
        recipe = "nullius-box-turbine-closed-1"
      },
      {
        type = "unlock-recipe",
        recipe = "nullius-unbox-turbine-closed-1"
      },
      {
        type = "unlock-recipe",
        recipe = "nullius-box-turbine-open-2"
      },
      {
        type = "unlock-recipe",
        recipe = "nullius-unbox-turbine-open-2"
      },
      {
        type = "unlock-recipe",
        recipe = "nullius-box-turbine-closed-2"
      },
      {
        type = "unlock-recipe",
        recipe = "nullius-unbox-turbine-closed-2"
      },
      {
        type = "unlock-recipe",
        recipe = "nullius-box-wall"
      },
      {
        type = "unlock-recipe",
        recipe = "nullius-unbox-wall"
      },
      {
        type = "unlock-recipe",
        recipe = "nullius-box-relay-1"
      },
      {
        type = "unlock-recipe",
        recipe = "nullius-unbox-relay-1"
      },
      {
        type = "unlock-recipe",
        recipe = "nullius-box-relay-2"
      },
      {
        type = "unlock-recipe",
        recipe = "nullius-unbox-relay-2"
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
    prerequisites = {"nullius-packaging-3", "nullius-logistic-robot-2"}
  },
  {
    type = "technology",
    name = "nullius-sensors-3",
    order = "nullius-ek",
    icon_size = 64,
    icon = "__base__/graphics/icons/radar.png",
    effects = {
      {
        type = "unlock-recipe",
        recipe = "nullius-sensor-2"
      },
      {
        type = "unlock-recipe",
        recipe = "nullius-sensor-node-2"
      }
    },
    unit = {
      count = 750,
      ingredients = {
        {"nullius-geology-pack", 1}, {"nullius-climatology-pack", 1},
        {"nullius-mechanical-pack", 1}, {"nullius-electrical-pack", 1},
        {"nullius-chemical-pack", 1}
      },
      time = 35
    },
    prerequisites = {"nullius-checkpoint-monocrystalline-silicon", "nullius-energy-distribution-4"}
  },
  {
    type = "technology",
    name = "nullius-braking-3",
    order = "nullius-ek",
    icon = "__base__/graphics/technology/braking-force.png",
    icon_size = 256,
    icon_mipmaps = 4,
    effects = {
      {
        type = "train-braking-force-bonus",
        modifier = 0.1
      }
    },
    unit = {
      count = 700,
      ingredients = {
        {"nullius-geology-pack", 1}, {"nullius-climatology-pack", 1},
        {"nullius-mechanical-pack", 1},
        {"nullius-chemical-pack", 1}
      },
      time = 35
    },
    prerequisites = {"nullius-titanium-working"},
    upgrade = true
  },
  {
    type = "technology",
    name = "nullius-logistics-3",
    order = "nullius-ek",
    icon = "__base__/graphics/technology/logistics-3.png",
    icon_size = 256,
    icon_mipmaps = 4,
    effects = {
      {
        type = "unlock-recipe",
        recipe = "nullius-conveyor-belt-3"
      },
      {
        type = "unlock-recipe",
        recipe = "nullius-underground-belt-3"
      },
      {
        type = "unlock-recipe",
        recipe = "nullius-splitter-3"
      }
    },
    unit = {
      count = 550,
      ingredients = {
        {"nullius-geology-pack", 1}, {"nullius-climatology-pack", 1},
        {"nullius-mechanical-pack", 1}, {"nullius-electrical-pack", 1},
        {"nullius-chemical-pack", 1}
      },
      time = 35
    },
    prerequisites = {"nullius-actuation-3", "nullius-plumbing-5"},
  },
  {
    type = "technology",
    name = "nullius-energy-storage-3",
    order = "nullius-ek",
    icon_size = 128,
    icon = "__angelsrefining__/graphics/technology/thermal-extractor.png",
    effects = {
      {
        type = "unlock-recipe",
        recipe = "nullius-compressor-2"
      },
      {
        type = "unlock-recipe",
        recipe = "nullius-combustion-chamber-3"
      },
      {
        type = "unlock-recipe",
        recipe = "nullius-hydrogen-combustion-3"
      },
      {
        type = "unlock-recipe",
        recipe = "nullius-graphite-combustion"
      },
      {
        type = "unlock-recipe",
        recipe = "nullius-hydrogen-canister-2"
      },
      {
        type = "unlock-recipe",
        recipe = "nullius-methanol-canister-2"
      },
      {
        type = "unlock-recipe",
        recipe = "nullius-compressed-oxygen"
      },
	  {
        type = "unlock-recipe",
        recipe = "nullius-decompress-oxygen"
      }
    },
    unit = {
      count = 750,
      ingredients = {
        {"nullius-geology-pack", 1}, {"nullius-climatology-pack", 1},
        {"nullius-mechanical-pack", 1}, {"nullius-electrical-pack", 1},
        {"nullius-chemical-pack", 1}
      },
      time = 35
    },
    prerequisites = {"nullius-checkpoint-large-tank", "nullius-checkpoint-explosive", "nullius-checkpoint-substation"}
  },
  {
    type = "technology",
    name = "nullius-titanium-working",
    order = "nullius-ek",
    icon = "__angelssmelting__/graphics/icons/roll-titanium.png",
    icon_size = 64,
    icon_mipmaps = 4,
    effects = {
      {
        type = "unlock-recipe",
        recipe = "nullius-titanium-rod"
      },
      {
        type = "unlock-recipe",
        recipe = "nullius-titanium-sheet"
      }
    },
    unit = {
      count = 700,
      ingredients = {
        {"nullius-geology-pack", 1}, {"nullius-climatology-pack", 1},
        {"nullius-mechanical-pack", 1}, {"nullius-electrical-pack", 1},
        {"nullius-chemical-pack", 1}
      },
      time = 35
    },
    prerequisites = {"nullius-actuation-3", "nullius-aluminum-working-2"}
  },
  {
    type = "technology",
    name = "nullius-insulation-2",
    order = "nullius-ek",
    icon = "__angelssmelting__/graphics/icons/roll-manganese.png",
    icon_size = 64,
    icon_mipmaps = 4,
    effects = {
      {
        type = "unlock-recipe",
        recipe = "nullius-insulation"
      }
    },
    unit = {
      count = 400,
      ingredients = {
        {"nullius-geology-pack", 1}, {"nullius-climatology-pack", 1},
        {"nullius-mechanical-pack", 1}, {"nullius-chemical-pack", 1}
      },
      time = 30
    },
    prerequisites = {"nullius-concrete-2", "nullius-packaging-3"}
  },
  {
    type = "technology",
    name = "nullius-aluminum-working-2",
    order = "nullius-ek",
    icon = "__angelssmelting__/graphics/icons/powder-aluminium.png",
    icon_size = 64,
    icon_mipmaps = 4,
    effects = {
      {
        type = "unlock-recipe",
        recipe = "nullius-aluminum-powder"
      },
      {
        type = "unlock-recipe",
        recipe = "nullius-aluminum-oxidation"
      },
      {
        type = "unlock-recipe",
        recipe = "nullius-aluminum-carbide"
      },
      {
        type = "unlock-recipe",
        recipe = "nullius-box-aluminum-powder"
      },
      {
        type = "unlock-recipe",
        recipe = "nullius-unbox-aluminum-powder"
      }
    },
    unit = {
      count = 300,
      ingredients = {
        {"nullius-geology-pack", 1}, {"nullius-climatology-pack", 1},
        {"nullius-mechanical-pack", 1}, {"nullius-electrical-pack", 1},
		{"nullius-chemical-pack", 1}
      },
      time = 30
    },
    prerequisites = {"nullius-checkpoint-titanium-ingot", "nullius-ceramics-2"}
  },

  {
    type = "technology",
    name = "nullius-architecture-1",
    localised_name = {"technology-name.nullius-architecture"},
    order = "nullius-el",
    icon = "__base__/graphics/technology/gate.png",
    icon_size = 256,
    icon_mipmaps = 4,
    effects = {
      {
        type = "unlock-recipe",
        recipe = "nullius-wall"
      },
      {
        type = "unlock-recipe",
        recipe = "nullius-gate"
      },
      {
        type = "ghost-time-to-live",
        modifier = 60 * 60 * 60 * 12
      }
    },
    unit = {
      count = 700,
      ingredients = {
        {"nullius-geology-pack", 1}, {"nullius-climatology-pack", 1},
        {"nullius-mechanical-pack", 1}, {"nullius-electrical-pack", 1},
        {"nullius-chemical-pack", 1}
      },
      time = 35
    },
    prerequisites = {"nullius-insulation-2", "nullius-construction-robot-2", "nullius-energy-distribution-4"}
  },
  {
    type = "technology",
    name = "nullius-freight-transportation-2",
    order = "nullius-el",
    icon = "__base__/graphics/technology/railway.png",
    icon_size = 256,
    icon_mipmaps = 4,
    effects = {
      {
        type = "unlock-recipe",
        recipe = "nullius-locomotive-2"
      },
      {
        type = "unlock-recipe",
        recipe = "nullius-cargo-wagon-2"
      },
      {
        type = "unlock-recipe",
        recipe = "nullius-fluid-wagon-2"
      }
    },
    unit = {
      count = 850,
      ingredients = {
        {"nullius-geology-pack", 1}, {"nullius-climatology-pack", 1},
        {"nullius-mechanical-pack", 1}, {"nullius-electrical-pack", 1},
        {"nullius-chemical-pack", 1}
      },
      time = 35
    },
    prerequisites = {"nullius-braking-3", "nullius-energy-storage-3"}
  },
  {
    type = "technology",
    name = "nullius-storage-3",
    order = "nullius-el",
    icon_size = 64,
    icon = ENTICONPATH .. "chest3.png",
    effects = {
      {
        type = "unlock-recipe",
        recipe = "nullius-small-chest-3"
      },
      {
        type = "unlock-recipe",
        recipe = "nullius-large-chest-2"
      }
    },
    unit = {
      count = 900,
      ingredients = {
        {"nullius-geology-pack", 1}, {"nullius-climatology-pack", 1},
        {"nullius-mechanical-pack", 1},
        {"nullius-chemical-pack", 1}
      },
      time = 35
    },
    prerequisites = {"nullius-titanium-working", "nullius-logistics-3", "nullius-packaging-4"},
  },
  {
    type = "technology",
    name = "nullius-inserter-capacity-1",
    order = "nullius-el",
    icon = "__base__/graphics/technology/inserter-capacity.png",
    icon_size = 256,
    icon_mipmaps = 4,
    effects = {
      {
        type = "stack-inserter-capacity-bonus",
        modifier = 1
      }
    },
    unit = {
      count = 800,
      ingredients = {
        {"nullius-geology-pack", 1},
        {"nullius-mechanical-pack", 1}, {"nullius-electrical-pack", 1}
      },
      time = 35
    },
    prerequisites = {"nullius-checkpoint-logistics-2"}
  },
  {
    type = "technology",
    name = "nullius-optimization-4",
    order = "nullius-el",
    icon = "__base__/graphics/technology/productivity-module-2.png",
    icon_size = 256,
    icon_mipmaps = 4,
    effects = {
      {
        type = "unlock-recipe",
        recipe = "nullius-speed-module-2"
      },
      {
        type = "unlock-recipe",
        recipe = "nullius-productivity-module-1"
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
    prerequisites = {"nullius-optimization-3", "nullius-sensors-3"}
  },

  {
    type = "technology",
    name = "nullius-mass-production-4",
    order = "nullius-em",
    icon = "__base__/graphics/technology/advanced-material-processing-2.png",
    icon_size = 256,
    icon_mipmaps = 4,
    effects = {
      {
        type = "unlock-recipe",
        recipe = "nullius-large-furnace-1"
      },
      {
        type = "unlock-recipe",
        recipe = "nullius-boxed-crushed-iron-ore"
      },
      {
        type = "unlock-recipe",
        recipe = "nullius-boxed-iron-oxide"
      },
      {
        type = "unlock-recipe",
        recipe = "nullius-boxed-iron-ingot"
      },
      {
        type = "unlock-recipe",
        recipe = "nullius-boxed-iron-plate"
      },
      {
        type = "unlock-recipe",
        recipe = "nullius-boxed-iron-rod"
      },
      {
        type = "unlock-recipe",
        recipe = "nullius-boxed-iron-sheet"
      },
      {
        type = "unlock-recipe",
        recipe = "nullius-boxed-iron-wire"
      },
      {
        type = "unlock-recipe",
        recipe = "nullius-boxed-iron-gear"
      },
      {
        type = "unlock-recipe",
        recipe = "nullius-boxed-steel-ingot-1"
      },
      {
        type = "unlock-recipe",
        recipe = "nullius-boxed-steel-plate"
      },
      {
        type = "unlock-recipe",
        recipe = "nullius-boxed-steel-rod"
      },
      {
        type = "unlock-recipe",
        recipe = "nullius-boxed-steel-sheet"
      },
      {
        type = "unlock-recipe",
        recipe = "nullius-boxed-steel-wire"
      },
      {
        type = "unlock-recipe",
        recipe = "nullius-boxed-steel-cable"
      },
      {
        type = "unlock-recipe",
        recipe = "nullius-boxed-steel-gear"
      },
      {
        type = "unlock-recipe",
        recipe = "nullius-boxed-steel-beam"
      },
      {
        type = "unlock-recipe",
        recipe = "nullius-boxed-crushed-bauxite"
      },
      {
        type = "unlock-recipe",
        recipe = "nullius-boxed-bauxite-flotation-1"
      },
      {
        type = "unlock-recipe",
        recipe = "nullius-boxed-alumina"
      },
      {
        type = "unlock-recipe",
        recipe = "nullius-boxed-aluminum-carbide"
      },
      {
        type = "unlock-recipe",
        recipe = "nullius-boxed-aluminum-ingot-1"
      },
      {
        type = "unlock-recipe",
        recipe = "nullius-boxed-aluminum-plate"
      },
      {
        type = "unlock-recipe",
        recipe = "nullius-boxed-aluminum-rod"
      },
      {
        type = "unlock-recipe",
        recipe = "nullius-boxed-aluminum-sheet"
      },
      {
        type = "unlock-recipe",
        recipe = "nullius-boxed-aluminum-wire"
      },
      {
        type = "unlock-recipe",
        recipe = "nullius-boxed-crushed-sandstone"
      },
      {
        type = "unlock-recipe",
        recipe = "nullius-boxed-silica-1"
      },
      {
        type = "unlock-recipe",
        recipe = "nullius-boxed-silicon-ingot"
      },
      {
        type = "unlock-recipe",
        recipe = "nullius-boxed-polycrystalline-silicon"
      },
      {
        type = "unlock-recipe",
        recipe = "nullius-boxed-crushed-limestone-1"
      },
      {
        type = "unlock-recipe",
        recipe = "nullius-boxed-lime"
      },
      {
        type = "unlock-recipe",
        recipe = "nullius-boxed-gravel"
      },
      {
        type = "unlock-recipe",
        recipe = "nullius-boxed-mineral-dust"
      },
      {
        type = "unlock-recipe",
        recipe = "nullius-boxed-slag-reprocessing"
      },
      {
        type = "unlock-recipe",
        recipe = "nullius-boxed-graphite"
      },
      {
        type = "unlock-recipe",
        recipe = "nullius-boxed-carbon-gasification-1"
      },
      {
        type = "unlock-recipe",
        recipe = "nullius-boxed-stone-brick"
      },
      {
        type = "unlock-recipe",
        recipe = "nullius-boxed-sludge-1"
      },
      {
        type = "unlock-recipe",
        recipe = "nullius-boxed-sludge-2"
      },
      {
        type = "unlock-recipe",
        recipe = "nullius-boxed-brine-electrolysis"
      },
      {
        type = "unlock-recipe",
        recipe = "nullius-boxed-caustic-solution"
      },
      {
        type = "unlock-recipe",
        recipe = "nullius-boxed-bpa"
      },
      {
        type = "unlock-recipe",
        recipe = "nullius-boxed-plastic"
      },
      {
        type = "unlock-recipe",
        recipe = "nullius-boxed-rubber"
      },
      {
        type = "unlock-recipe",
        recipe = "nullius-boxed-canister"
      },
      {
        type = "unlock-recipe",
        recipe = "nullius-boxed-hydrogen-canister-1"
      },
      {
        type = "unlock-recipe",
        recipe = "nullius-boxed-methanol-canister-1"
      },
      {
        type = "unlock-recipe",
        recipe = "nullius-boxed-canister-emptying"
      }
    },
    unit = {
      count = 900,
      ingredients = {
        {"nullius-geology-pack", 1}, {"nullius-climatology-pack", 1},
        {"nullius-mechanical-pack", 1}, {"nullius-electrical-pack", 1},
        {"nullius-chemical-pack", 1}
      },
      time = 35
    },
    prerequisites = {"nullius-architecture-1", "nullius-inserter-capacity-1", "nullius-optimization-3"}
  },
  {
    type = "technology",
    name = "nullius-aesthetics-2",
    order = "nullius-em",
    icon_size = 64,
    icon = "__base__/graphics/icons/refined-hazard-concrete.png",
    effects = {
      {
        type = "unlock-recipe",
        recipe = "nullius-hazard-concrete"
      },
      {
        type = "unlock-recipe",
        recipe = "nullius-white-concrete"
      },
      {
        type = "unlock-recipe",
        recipe = "nullius-red-concrete"
      },
      {
        type = "unlock-recipe",
        recipe = "nullius-blue-concrete"
      },
      {
        type = "unlock-recipe",
        recipe = "nullius-yellow-concrete"
      },
      {
        type = "unlock-recipe",
        recipe = "nullius-purple-concrete"
      },
      {
        type = "unlock-recipe",
        recipe = "nullius-orange-concrete"
      },
      {
        type = "unlock-recipe",
        recipe = "nullius-green-concrete"
      },
      {
        type = "unlock-recipe",
        recipe = "nullius-brown-concrete"
      },
      {
        type = "unlock-recipe",
        recipe = "nullius-black-concrete"
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
    prerequisites = {"nullius-architecture-1", "nullius-sensors-3"},
  },
  {
    type = "technology",
    name = "nullius-broadcasting-2",
    order = "nullius-em",
    icon = "__base__/graphics/technology/effect-transmission.png",
    icon_size = 256,
    icon_mipmaps = 4,
    effects = {
      {
        type = "unlock-recipe",
        recipe = "nullius-beacon-2"
      },
      {
        type = "unlock-recipe",
        recipe = "nullius-large-beacon-1"
      }
    },
    unit = {
      count = 900,
      ingredients = {
        {"nullius-climatology-pack", 1},
        {"nullius-electrical-pack", 1},
        {"nullius-chemical-pack", 1}
      },
      time = 35
    },
    prerequisites = {"nullius-logistic-robot-2", "nullius-optimization-4"}
  },
  {
    type = "technology",
    name = "nullius-personal-transportation-2",
    order = "nullius-em",
    icon = "__base__/graphics/technology/tank.png",
    icon_size = 256,
    icon_mipmaps = 4,
    effects = {
      {
        type = "unlock-recipe",
        recipe = "nullius-car-2"
      },
      {
        type = "unlock-recipe",
        recipe = "nullius-truck-1"
      }
    },
    unit = {
      count = 900,
      ingredients = {
        {"nullius-geology-pack", 1}, {"nullius-climatology-pack", 1},
        {"nullius-mechanical-pack", 1}, {"nullius-electrical-pack", 1},
        {"nullius-chemical-pack", 1}
      },
      time = 35
    },
    prerequisites = {"nullius-freight-transportation-2", "nullius-aesthetics-2"},
  },
  {
    type = "technology",
    name = "nullius-pressure-containment",
    order = "nullius-em",
    icons = data.raw.fluid["nullius-compressed-air"].icons,
    effects = {
      {
        type = "unlock-recipe",
        recipe = "nullius-compressed-carbon-dioxide"
      },
      {
        type = "unlock-recipe",
        recipe = "nullius-compressed-carbon-monoxide"
      },
      {
        type = "unlock-recipe",
        recipe = "nullius-compressed-methane"
      },
      {
        type = "unlock-recipe",
        recipe = "nullius-compressed-residual-gas"
      },
      {
        type = "unlock-recipe",
        recipe = "nullius-methane-combustion-2"
      },
      {
        type = "unlock-recipe",
        recipe = "nullius-decompress-carbon-dioxide"
      },
      {
        type = "unlock-recipe",
        recipe = "nullius-decompress-carbon-monoxide"
      },
      {
        type = "unlock-recipe",
        recipe = "nullius-decompress-methane"
      },
      {
        type = "unlock-recipe",
        recipe = "nullius-decompress-residual-gas"
      }
    },
    unit = {
      count = 900,
      ingredients = {
        {"nullius-geology-pack", 1}, {"nullius-climatology-pack", 1},
        {"nullius-mechanical-pack", 1}, {"nullius-electrical-pack", 1},
        {"nullius-chemical-pack", 1}
      },
      time = 35
    },
    prerequisites = {"nullius-storage-3", "nullius-solar-thermal-power-2"}
  },

  {
    type = "technology",
    name = "nullius-thermal-storage-2",
    order = "nullius-en",
    icon = "__nullius__/graphics/icons/entity/thermaltank2.png",
	icon_size = 64,
    effects = {
      {
        type = "unlock-recipe",
        recipe = "nullius-eutectic-salt"
      },
      {
        type = "unlock-recipe",
        recipe = "nullius-heat-pipe-2"
      },
      {
        type = "unlock-recipe",
        recipe = "nullius-thermal-tank-2"
      },
      {
        type = "unlock-recipe",
        recipe = "nullius-box-eutectic-salt"
      },
      {
        type = "unlock-recipe",
        recipe = "nullius-unbox-eutectic-salt"
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
    prerequisites = {"nullius-insulation-2", "nullius-energy-storage-3", "nullius-logistics-3"}
  },
  {
    type = "technology",
    name = "nullius-solar-thermal-power-2",
    order = "nullius-en",
    icon = ENTICONPATH .. "collector2.png",
    icon_size = 64,
    effects = {
      {
        type = "unlock-recipe",
        recipe = "nullius-solar-collector-2"
      },
      {
        type = "unlock-recipe",
        recipe = "nullius-box-solar-collector-2"
      },
      {
        type = "unlock-recipe",
        recipe = "nullius-unbox-solar-collector-2"
      },
      {
        type = "unlock-recipe",
        recipe = "nullius-heat-exchanger-2"
      }
    },
    unit = {
      count = 750,
      ingredients = {
        {"nullius-geology-pack", 1}, {"nullius-climatology-pack", 2},
        {"nullius-mechanical-pack", 1}, {"nullius-electrical-pack", 1},
        {"nullius-chemical-pack", 1}
      },
      time = 35
    },
    prerequisites = {"nullius-thermal-storage-2", "nullius-titanium-working"}
  },
  {
    type = "technology",
    name = "nullius-packaging-5",
    order = "nullius-en",
    icon_size = 64,
    icon = ICONPATH .. "crate.png",
    effects = {
      {
        type = "unlock-recipe",
        recipe = "nullius-box-explosive"
      },
      {
        type = "unlock-recipe",
        recipe = "nullius-unbox-explosive"
      },
      {
        type = "unlock-recipe",
        recipe = "nullius-box-magazine"
      },
      {
        type = "unlock-recipe",
        recipe = "nullius-unbox-magazine"
      },
      {
        type = "unlock-recipe",
        recipe = "nullius-box-missile-1"
      },
      {
        type = "unlock-recipe",
        recipe = "nullius-unbox-missile-1"
      },
      {
        type = "unlock-recipe",
        recipe = "nullius-box-robot-frame-1"
      },
      {
        type = "unlock-recipe",
        recipe = "nullius-unbox-robot-frame-1"
      },
      {
        type = "unlock-recipe",
        recipe = "nullius-box-robot-frame-2"
      },
      {
        type = "unlock-recipe",
        recipe = "nullius-unbox-robot-frame-2"
      },
      {
        type = "unlock-recipe",
        recipe = "nullius-box-logistic-bot-1"
      },
      {
        type = "unlock-recipe",
        recipe = "nullius-unbox-logistic-bot-1"
      },
      {
        type = "unlock-recipe",
        recipe = "nullius-box-logistic-bot-2"
      },
      {
        type = "unlock-recipe",
        recipe = "nullius-unbox-logistic-bot-2"
      },
      {
        type = "unlock-recipe",
        recipe = "nullius-box-construction-bot-1"
      },
      {
        type = "unlock-recipe",
        recipe = "nullius-unbox-construction-bot-1"
      },
      {
        type = "unlock-recipe",
        recipe = "nullius-box-construction-bot-2"
      },
      {
        type = "unlock-recipe",
        recipe = "nullius-unbox-construction-bot-2"
      },
      {
        type = "unlock-recipe",
        recipe = "nullius-box-night-vision-1"
      },
      {
        type = "unlock-recipe",
        recipe = "nullius-unbox-night-vision-1"
      },
      {
        type = "unlock-recipe",
        recipe = "nullius-box-levitation-field-1"
      },
      {
        type = "unlock-recipe",
        recipe = "nullius-unbox-levitation-field-1"
      },
      {
        type = "unlock-recipe",
        recipe = "nullius-box-rail"
      },
      {
        type = "unlock-recipe",
        recipe = "nullius-unbox-rail"
      },
      {
        type = "unlock-recipe",
        recipe = "nullius-box-train-stop"
      },
      {
        type = "unlock-recipe",
        recipe = "nullius-unbox-train-stop"
      },
      {
        type = "unlock-recipe",
        recipe = "nullius-box-underground-belt-1"
      },
      {
        type = "unlock-recipe",
        recipe = "nullius-unbox-underground-belt-1"
      },
      {
        type = "unlock-recipe",
        recipe = "nullius-box-underground-belt-2"
      },
      {
        type = "unlock-recipe",
        recipe = "nullius-unbox-underground-belt-2"
      },
      {
        type = "unlock-recipe",
        recipe = "nullius-box-underground-belt-3"
      },
      {
        type = "unlock-recipe",
        recipe = "nullius-unbox-underground-belt-3"
      },
      {
        type = "unlock-recipe",
        recipe = "nullius-box-haste-module-1"
      },
      {
        type = "unlock-recipe",
        recipe = "nullius-unbox-haste-module-1"
      },
      {
        type = "unlock-recipe",
        recipe = "nullius-box-efficiency-module-1"
      },
      {
        type = "unlock-recipe",
        recipe = "nullius-unbox-efficiency-module-1"
      },
      {
        type = "unlock-recipe",
        recipe = "nullius-box-speed-module-1"
      },
      {
        type = "unlock-recipe",
        recipe = "nullius-unbox-speed-module-1"
      },
      {
        type = "unlock-recipe",
        recipe = "nullius-box-yield-module-1"
      },
      {
        type = "unlock-recipe",
        recipe = "nullius-unbox-yield-module-1"
      },
      {
        type = "unlock-recipe",
        recipe = "nullius-box-haste-module-2"
      },
      {
        type = "unlock-recipe",
        recipe = "nullius-unbox-haste-module-2"
      },
      {
        type = "unlock-recipe",
        recipe = "nullius-box-efficiency-module-2"
      },
      {
        type = "unlock-recipe",
        recipe = "nullius-unbox-efficiency-module-2"
      },
      {
        type = "unlock-recipe",
        recipe = "nullius-box-speed-module-2"
      },
      {
        type = "unlock-recipe",
        recipe = "nullius-unbox-speed-module-2"
      },
      {
        type = "unlock-recipe",
        recipe = "nullius-box-yield-module-2"
      },
      {
        type = "unlock-recipe",
        recipe = "nullius-unbox-yield-module-2"
      },
      {
        type = "unlock-recipe",
        recipe = "nullius-box-productivity-module-1"
      },
      {
        type = "unlock-recipe",
        recipe = "nullius-unbox-productivity-module-1"
      },
      {
        type = "unlock-recipe",
        recipe = "nullius-box-solar-collector-1"
      },
      {
        type = "unlock-recipe",
        recipe = "nullius-unbox-solar-collector-1"
      },
      {
        type = "unlock-recipe",
        recipe = "nullius-box-solar-panel-1"
      },
      {
        type = "unlock-recipe",
        recipe = "nullius-unbox-solar-panel-1"
      },
      {
        type = "unlock-recipe",
        recipe = "nullius-box-solar-panel-2"
      },
      {
        type = "unlock-recipe",
        recipe = "nullius-unbox-solar-panel-2"
      },
      {
        type = "unlock-recipe",
        recipe = "nullius-box-grid-battery-1"
      },
      {
        type = "unlock-recipe",
        recipe = "nullius-unbox-grid-battery-1"
      },
      {
        type = "unlock-recipe",
        recipe = "nullius-box-pylon-1"
      },
      {
        type = "unlock-recipe",
        recipe = "nullius-unbox-pylon-1"
      },
      {
        type = "unlock-recipe",
        recipe = "nullius-box-pylon-2"
      },
      {
        type = "unlock-recipe",
        recipe = "nullius-unbox-pylon-2"
      },
      {
        type = "unlock-recipe",
        recipe = "nullius-box-wind-turbine-1"
      },
      {
        type = "unlock-recipe",
        recipe = "nullius-unbox-wind-turbine-1"
      },
      {
        type = "unlock-recipe",
        recipe = "nullius-box-wind-turbine-2"
      },
      {
        type = "unlock-recipe",
        recipe = "nullius-unbox-wind-turbine-2"
      },
      {
        type = "unlock-recipe",
        recipe = "nullius-box-small-tank-1"
      },
      {
        type = "unlock-recipe",
        recipe = "nullius-unbox-small-tank-1"
      },
      {
        type = "unlock-recipe",
        recipe = "nullius-box-small-tank-2"
      },
      {
        type = "unlock-recipe",
        recipe = "nullius-unbox-small-tank-2"
      },
      {
        type = "unlock-recipe",
        recipe = "nullius-box-medium-tank-1"
      },
      {
        type = "unlock-recipe",
        recipe = "nullius-unbox-medium-tank-1"
      },
      {
        type = "unlock-recipe",
        recipe = "nullius-box-medium-tank-2"
      },
      {
        type = "unlock-recipe",
        recipe = "nullius-unbox-medium-tank-2"
      },
      {
        type = "unlock-recipe",
        recipe = "nullius-box-medium-tank-3"
      },
      {
        type = "unlock-recipe",
        recipe = "nullius-unbox-medium-tank-3"
      },
      {
        type = "unlock-recipe",
        recipe = "nullius-box-gate"
      },
      {
        type = "unlock-recipe",
        recipe = "nullius-unbox-gate"
      },
      {
        type = "unlock-recipe",
        recipe = "nullius-box-geology-pack"
      },
      {
        type = "unlock-recipe",
        recipe = "nullius-unbox-geology-pack"
      },
      {
        type = "unlock-recipe",
        recipe = "nullius-box-climatology-pack"
      },
      {
        type = "unlock-recipe",
        recipe = "nullius-unbox-climatology-pack"
      },
      {
        type = "unlock-recipe",
        recipe = "nullius-box-mechanical-pack"
      },
      {
        type = "unlock-recipe",
        recipe = "nullius-unbox-mechanical-pack"
      },
      {
        type = "unlock-recipe",
        recipe = "nullius-box-electrical-pack"
      },
      {
        type = "unlock-recipe",
        recipe = "nullius-unbox-electrical-pack"
      },
      {
        type = "unlock-recipe",
        recipe = "nullius-box-chemical-pack"
      },
      {
        type = "unlock-recipe",
        recipe = "nullius-unbox-chemical-pack"
      },
      {
        type = "unlock-recipe",
        recipe = "nullius-box-charger-1"
      },
      {
        type = "unlock-recipe",
        recipe = "nullius-unbox-charger-1"
      },
      {
        type = "unlock-recipe",
        recipe = "nullius-box-charger-2"
      },
      {
        type = "unlock-recipe",
        recipe = "nullius-unbox-charger-2"
      }
    },
    unit = {
      count = 700,
      ingredients = {
        {"nullius-geology-pack", 1}, {"nullius-climatology-pack", 1},
        {"nullius-mechanical-pack", 1}, {"nullius-electrical-pack", 1},
        {"nullius-chemical-pack", 1}
      },
      time = 35
    },
    prerequisites = {"nullius-packaging-4", "nullius-mass-production-4"}
  },
  {
    type = "technology",
    name = "nullius-robot-speed-2",
    order = "nullius-en",
    icon = "__base__/graphics/technology/worker-robots-speed.png",
    icon_size = 256,
    icon_mipmaps = 4,
    effects = {
      {
        type = "worker-robot-speed",
        modifier = 0.1
      }
    },
    unit = {
      count = 800,
      ingredients = {
        {"nullius-geology-pack", 1}, {"nullius-climatology-pack", 1},
        {"nullius-mechanical-pack", 1}, {"nullius-electrical-pack", 1}
      },
      time = 35
    },
    prerequisites = {"nullius-mass-production-4", "nullius-optimization-4"},
    upgrade = true
  },
  {
    type = "technology",
    name = "nullius-land-fill-4",
    order = "nullius-en",
    icon = "__base__/graphics/technology/landfill.png",
    icon_size = 256,
    icon_mipmaps = 4,
    effects = {
      {
        type = "unlock-recipe",
        recipe = "nullius-land-fill-tan"
      },
      {
        type = "unlock-recipe",
        recipe = "nullius-land-fill-brown"
      },
      {
        type = "unlock-recipe",
        recipe = "nullius-land-fill-red"
      },
      {
        type = "unlock-recipe",
        recipe = "nullius-land-fill-beige"
      }
    },
    unit = {
      count = 800,
      ingredients = {
        {"nullius-geology-pack", 4}, {"nullius-climatology-pack", 1},
        {"nullius-mechanical-pack", 1}, {"nullius-chemical-pack", 1}
      },
      time = 35
    },
    prerequisites = {"nullius-aesthetics-2", "nullius-mining-productivity-14"}
  },
  {
    type = "technology",
    name = "nullius-mass-production-5",
    order = "nullius-en",
    icon = "__base__/graphics/technology/automation-2.png",
    icon_size = 256,
    icon_mipmaps = 4,
    effects = {
      {
        type = "unlock-recipe",
        recipe = "nullius-boxed-lubricant"
      },
      {
        type = "unlock-recipe",
        recipe = "nullius-boxed-epoxy"
      },
      {
        type = "unlock-recipe",
        recipe = "nullius-boxed-insulated-wire-1"
      },
      {
        type = "unlock-recipe",
        recipe = "nullius-boxed-filter-1"
      },
      {
        type = "unlock-recipe",
        recipe = "nullius-boxed-motor-1"
      },
      {
        type = "unlock-recipe",
        recipe = "nullius-boxed-motor-2"
      },
      {
        type = "unlock-recipe",
        recipe = "nullius-boxed-one-way-valve"
      },
      {
        type = "unlock-recipe",
        recipe = "nullius-boxed-priority-valve"
      },
      {
        type = "unlock-recipe",
        recipe = "nullius-boxed-relief-valve"
      },
      {
        type = "unlock-recipe",
        recipe = "nullius-boxed-top-up-valve"
      },
      {
        type = "unlock-recipe",
        recipe = "nullius-boxed-barrel-1"
      },
	  {
        type = "unlock-recipe",
        recipe = "nullius-boxed-barrel-2"
      },
      {
        type = "unlock-recipe",
        recipe = "nullius-boxed-pipe-1"
      },
      {
        type = "unlock-recipe",
        recipe = "nullius-boxed-pipe-iron"
      },
      {
        type = "unlock-recipe",
        recipe = "nullius-boxed-underground-pipe-1"
      },
      {
        type = "unlock-recipe",
        recipe = "nullius-boxed-pipe-2"
      },
      {
        type = "unlock-recipe",
        recipe = "nullius-boxed-pipe-steel"
      },
      {
        type = "unlock-recipe",
        recipe = "nullius-boxed-underground-pipe-2"
      },
      {
        type = "unlock-recipe",
        recipe = "nullius-boxed-volcanic"
      },
      {
        type = "unlock-recipe",
        recipe = "nullius-boxed-boron"
      },
      {
        type = "unlock-recipe",
        recipe = "nullius-boxed-ceramic-powder"
      },
      {
        type = "unlock-recipe",
        recipe = "nullius-boxed-refractory-brick"
      },
      {
        type = "unlock-recipe",
        recipe = "nullius-boxed-capacitor"
      },
      {
        type = "unlock-recipe",
        recipe = "nullius-boxed-logic-circuit"
      },
      {
        type = "unlock-recipe",
        recipe = "nullius-boxed-memory-circuit"
      },
      {
        type = "unlock-recipe",
        recipe = "nullius-boxed-arithmetic-circuit"
      },
      {
        type = "unlock-recipe",
        recipe = "nullius-boxed-power-switch"
      },
      {
        type = "unlock-recipe",
        recipe = "nullius-boxed-antenna"
      },
      {
        type = "unlock-recipe",
        recipe = "nullius-boxed-red-wire"
      },
      {
        type = "unlock-recipe",
        recipe = "nullius-boxed-green-wire"
      },
      {
        type = "unlock-recipe",
        recipe = "nullius-boxed-rail"
      },
      {
        type = "unlock-recipe",
        recipe = "nullius-boxed-salt"
      },
      {
        type = "unlock-recipe",
        recipe = "nullius-boxed-salination"
      },
      {
        type = "unlock-recipe",
        recipe = "nullius-boxed-sodium-1"
      },
      {
        type = "unlock-recipe",
        recipe = "nullius-boxed-sodium-2"
      },
      {
        type = "unlock-recipe",
        recipe = "nullius-boxed-sodium-sulfate-1"
      },
      {
        type = "unlock-recipe",
        recipe = "nullius-boxed-sodium-sulfate-2"
      },
      {
        type = "unlock-recipe",
        recipe = "nullius-boxed-soda-ash"
      },
      {
        type = "unlock-recipe",
        recipe = "nullius-boxed-gypsum-1"
      },
      {
        type = "unlock-recipe",
        recipe = "nullius-boxed-gypsum-2"
      },
      {
        type = "unlock-recipe",
        recipe = "nullius-boxed-gypsum-decomposition"
      },
      {
        type = "unlock-recipe",
        recipe = "nullius-boxed-calcium-chloride-1"
      },
      {
        type = "unlock-recipe",
        recipe = "nullius-boxed-calcium-chloride-dehydration"
      },
      {
        type = "unlock-recipe",
        recipe = "nullius-boxed-calcium-chloride-decomposition"
      },
      {
        type = "unlock-recipe",
        recipe = "nullius-boxed-limestone-precipitation"
      },
      {
        type = "unlock-recipe",
        recipe = "nullius-boxed-cement"
      },
      {
        type = "unlock-recipe",
        recipe = "nullius-boxed-mortar"
      },
      {
        type = "unlock-recipe",
        recipe = "nullius-boxed-concrete"
      },
      {
        type = "unlock-recipe",
        recipe = "nullius-boxed-glass"
      },
      {
        type = "unlock-recipe",
        recipe = "nullius-boxed-pump-1"
      },
      {
        type = "unlock-recipe",
        recipe = "nullius-boxed-pump-2"
      },
      {
        type = "unlock-recipe",
        recipe = "nullius-boxed-small-pump-1"
      },
      {
        type = "unlock-recipe",
        recipe = "nullius-boxed-glycerol"
      },
      {
        type = "unlock-recipe",
        recipe = "nullius-boxed-inserter-1"
      },
      {
        type = "unlock-recipe",
        recipe = "nullius-boxed-inserter-2"
      },
      {
        type = "unlock-recipe",
        recipe = "nullius-boxed-filter-inserter-2"
      },
      {
        type = "unlock-recipe",
        recipe = "nullius-boxed-inserter-3"
      },
      {
        type = "unlock-recipe",
        recipe = "nullius-boxed-filter-inserter-3"
      },
      {
        type = "unlock-recipe",
        recipe = "nullius-boxed-repair-pack"
      },
      {
        type = "unlock-recipe",
        recipe = "nullius-boxed-fabrication-tool-1"
      },
      {
        type = "unlock-recipe",
        recipe = "nullius-boxed-fabrication-tool-2"
      },
      {
        type = "unlock-recipe",
        recipe = "nullius-boxed-belt-1"
      },
      {
        type = "unlock-recipe",
        recipe = "nullius-boxed-underground-belt-1"
      },
      {
        type = "unlock-recipe",
        recipe = "nullius-boxed-splitter-1"
      }
    },
    unit = {
      count = 900,
      ingredients = {
        {"nullius-geology-pack", 1}, {"nullius-climatology-pack", 1},
        {"nullius-mechanical-pack", 1}, {"nullius-electrical-pack", 1},
        {"nullius-chemical-pack", 1}
      },
      time = 35
    },
    prerequisites = {"nullius-mass-production-4", "nullius-freight-transportation-2", "nullius-thermal-storage-2"}
  },
  {
    type = "technology",
    name = "nullius-braking-4",
    order = "nullius-en",
    icon = "__base__/graphics/technology/braking-force.png",
    icon_size = 256,
    icon_mipmaps = 4,
    effects = {
      {
        type = "train-braking-force-bonus",
        modifier = 0.1
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
    prerequisites = {"nullius-personal-transportation-2", "nullius-inserter-capacity-1"},
    upgrade = true
  },

  {
    type = "technology",
    name = "nullius-toolmaking-6",
    order = "nullius-eo",
    icon = "__base__/graphics/technology/steel-axe.png",
    icon_size = 256,
    icon_mipmaps = 4,
    effects = {
      {
        type = "character-mining-speed",
        modifier = 0.2
      },
      {
        type = "character-crafting-speed",
        modifier = 0.25
      }
    },
    unit = {
      count = 750,
      ingredients = {
        {"nullius-geology-pack", 1}, {"nullius-climatology-pack", 1},
        {"nullius-mechanical-pack", 1}, {"nullius-electrical-pack", 1},
        {"nullius-chemical-pack", 1}
      },
      time = 35
    },
    prerequisites = {"nullius-mass-production-5", "nullius-checkpoint-productivity-module"}
  },
  {
    type = "technology",
    name = "nullius-locomotion-2",
    order = "nullius-eo",
    icon = "__base__/graphics/technology/exoskeleton-equipment.png",
    icon_size = 256,
    icon_mipmaps = 4,
    effects = {
      {
        type = "character-running-speed",
        modifier = 0.1
      },
      {
        type = "unlock-recipe",
        recipe = "nullius-shackle"
      }
    },
    unit = {
      count = 900,
      ingredients = {
        {"nullius-geology-pack", 1}, {"nullius-climatology-pack", 1},
        {"nullius-mechanical-pack", 1}, {"nullius-electrical-pack", 1},
        {"nullius-chemical-pack", 1}
      },
      time = 35
    },
    prerequisites = {"nullius-checkpoint-productivity-module", "nullius-robot-speed-2"}
  },
  {
    type = "technology",
    name = "nullius-distribution-3",
    order = "nullius-eo",
    icon = "__base__/graphics/technology/logistic-system.png",
    icon_size = 256,
    icon_mipmaps = 4,
    effects = {
      {
        type = "unlock-recipe",
        recipe = "nullius-small-buffer-chest-1"
      },
      {
        type = "unlock-recipe",
        recipe = "nullius-large-buffer-chest-1"
      },
      {
        type = "unlock-recipe",
        recipe = "nullius-small-dispatch-chest-1"
      },
      {
        type = "unlock-recipe",
        recipe = "nullius-large-dispatch-chest-1"
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
    prerequisites = {"nullius-packaging-5", "nullius-storage-3", "nullius-robot-speed-2"}
  },
  {
    type = "technology",
    name = "nullius-inserter-capacity-2",
    order = "nullius-eo",
    icon = "__base__/graphics/technology/inserter-capacity.png",
    icon_size = 256,
    icon_mipmaps = 4,
    effects = {
      {
        type = "stack-inserter-capacity-bonus",
        modifier = 1
      }
    },
    unit = {
      count = 950,
      ingredients = {
        {"nullius-geology-pack", 1},
        {"nullius-mechanical-pack", 1}, {"nullius-electrical-pack", 1}
      },
      time = 35
    },
    prerequisites = {"nullius-mass-production-5", "nullius-packaging-5"}
  },
  {
    type = "technology",
    name = "nullius-exploration-1",
    order = "nullius-eo",
    icons = data.raw.ammo["nullius-scout-drone-1"].icons,
    effects = {
      {
        type = "unlock-recipe",
        recipe = "nullius-drone-launcher-1"
      },
      {
        type = "unlock-recipe",
        recipe = "nullius-scout-drone-1"
      },
      {
        type = "unlock-recipe",
        recipe = "nullius-scout-remote"
      }
    },
    unit = {
      count = 750,
      ingredients = {
        {"nullius-geology-pack", 1}, {"nullius-climatology-pack", 1},
        {"nullius-mechanical-pack", 1}, {"nullius-electrical-pack", 1},
        {"nullius-chemical-pack", 1}
      },
      time = 35
    },
    prerequisites = {"nullius-robot-speed-2", "nullius-personal-transportation-2"}
  },
  {
    type = "technology",
    name = "nullius-geothermal-power-2",
    order = "nullius-eo",
    icon_size = 64,
    icon = "__angelssmelting__/graphics/icons/chemical-furnace.png",
    effects = {
      {
        type = "unlock-recipe",
        recipe = "nullius-geothermal-plant-2"
      },
      {
        type = "unlock-recipe",
        recipe = "nullius-stirling-engine-2"
      }
    },
    unit = {
      count = 900,
      ingredients = {
        {"nullius-geology-pack", 2}, {"nullius-climatology-pack", 1},
        {"nullius-mechanical-pack", 1}, {"nullius-electrical-pack", 1},
        {"nullius-chemical-pack", 1}
      },
      time = 35
    },
    prerequisites = {"nullius-pressure-containment", "nullius-land-fill-4"}
  },
  {
    type = "technology",
    name = "nullius-high-pressure-chemistry",
	localised_name = {"", {"technology-name.nullius-high-pressure-chemistry"}, " ", 1},
    order = "nullius-eo",
    icons = angelsmods.functions.create_liquid_fluid_icon(nil,
      {element_tint["carbon"], element_tint["oxygen"], element_tint["oxygen"]}
    ),
    effects = {
      {
        type = "unlock-recipe",
        recipe = "nullius-pressure-water-electrolysis"
      },
      {
        type = "unlock-recipe",
        recipe = "nullius-pressure-steam-electrolysis"
      },
      {
        type = "unlock-recipe",
        recipe = "nullius-pressure-air-separation"
      },
      {
        type = "unlock-recipe",
        recipe = "nullius-pressure-residual-separation"
      },
      {
        type = "unlock-recipe",
        recipe = "nullius-pressure-carbon-dioxide"
      },
      {
        type = "unlock-recipe",
        recipe = "nullius-pressure-carbon-monoxide"
      },
      {
        type = "unlock-recipe",
        recipe = "nullius-pressure-methane"
      },
      {
        type = "unlock-recipe",
        recipe = "nullius-pressure-ethylene"
      },
      {
        type = "unlock-recipe",
        recipe = "nullius-pressure-alkene-synthesis"
      },
      {
        type = "unlock-recipe",
        recipe = "nullius-pressure-methanol"
      },
      {
        type = "unlock-recipe",
        recipe = "nullius-pressure-solvent"
      },
      {
        type = "unlock-recipe",
        recipe = "nullius-pressure-monoxide-to-graphite"
      },
      {
        type = "unlock-recipe",
        recipe = "nullius-pressure-methane-to-graphite"
      },
      {
        type = "unlock-recipe",
        recipe = "nullius-pressure-bpa"
      },
      {
        type = "unlock-recipe",
        recipe = "nullius-pressure-filter-1"
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
    prerequisites = {"nullius-mass-production-5", "nullius-geothermal-power-2"}
  },

  {
    type = "technology",
    name = "nullius-braking-5",
    order = "nullius-ep",
    icon = "__base__/graphics/technology/braking-force.png",
    icon_size = 256,
    icon_mipmaps = 4,
    effects = {
      {
        type = "train-braking-force-bonus",
        modifier = 0.1
      }
    },
    unit = {
      count = 950,
      ingredients = {
        {"nullius-geology-pack", 1}, {"nullius-climatology-pack", 1},
        {"nullius-mechanical-pack", 1}, {"nullius-electrical-pack", 1},
        {"nullius-chemical-pack", 1}
      },
      time = 35
    },
    prerequisites = {"nullius-checkpoint-truck", "nullius-distribution-3", "nullius-exploration-1"},
    upgrade = true
  },
  {
    type = "technology",
    name = "nullius-empiricism-4",
    order = "nullius-ep",
    icon = "__base__/graphics/technology/research-speed.png",
    icon_size = 256,
    icon_mipmaps = 4,
    effects = {
      {
        type = "unlock-recipe",
        recipe = "nullius-lab-2"
      }
    },
    unit = {
      count = 1100,
      ingredients = {
        {"nullius-geology-pack", 1}, {"nullius-climatology-pack", 1},
        {"nullius-mechanical-pack", 1}, {"nullius-electrical-pack", 1},
        {"nullius-chemical-pack", 1}
      },
      time = 35
    },
    prerequisites = {"nullius-parallel-computing-2", "nullius-checkpoint-exploration"}
  },
  {
    type = "technology",
    name = "nullius-mass-production-6",
    order = "nullius-ep",
    icon = "__base__/graphics/technology/automation-2.png",
    icon_size = 256,
    icon_mipmaps = 4,
    effects = {
      {
        type = "unlock-recipe",
        recipe = "nullius-boxed-eutectic-salt"
      },
      {
        type = "unlock-recipe",
        recipe = "nullius-boxed-hard-glass"
      },
      {
        type = "unlock-recipe",
        recipe = "nullius-boxed-glass-fiber"
      },
      {
        type = "unlock-recipe",
        recipe = "nullius-boxed-fiberglass"
      },
      {
        type = "unlock-recipe",
        recipe = "nullius-boxed-insulation"
      },
      {
        type = "unlock-recipe",
        recipe = "nullius-boxed-pipe-3"
      },
      {
        type = "unlock-recipe",
        recipe = "nullius-boxed-underground-pipe-3"
      },
      {
        type = "unlock-recipe",
        recipe = "nullius-boxed-heat-pipe-1"
      },
      {
        type = "unlock-recipe",
        recipe = "nullius-boxed-heat-pipe-2"
      },
      {
        type = "unlock-recipe",
        recipe = "nullius-boxed-optical-cable"
      },
      {
        type = "unlock-recipe",
        recipe = "nullius-boxed-acrylic-fiber"
      },
      {
        type = "unlock-recipe",
        recipe = "nullius-boxed-carbon-fiber"
      },
      {
        type = "unlock-recipe",
        recipe = "nullius-boxed-textile-1"
      },
      {
        type = "unlock-recipe",
        recipe = "nullius-boxed-bearing"
      },
      {
        type = "unlock-recipe",
        recipe = "nullius-boxed-transformer"
      },
      {
        type = "unlock-recipe",
        recipe = "nullius-boxed-monocrystalline-silicon"
      },
      {
        type = "unlock-recipe",
        recipe = "nullius-boxed-processor-1"
      },
      {
        type = "unlock-recipe",
        recipe = "nullius-boxed-silica-2"
      },
      {
        type = "unlock-recipe",
        recipe = "nullius-boxed-rutile"
      },
      {
        type = "unlock-recipe",
        recipe = "nullius-boxed-titanium-tetrachloride"
      },
      {
        type = "unlock-recipe",
        recipe = "nullius-boxed-titanium-ingot-1"
      },
      {
        type = "unlock-recipe",
        recipe = "nullius-boxed-titanium-plate"
      },
      {
        type = "unlock-recipe",
        recipe = "nullius-boxed-titanium-rod"
      },
      {
        type = "unlock-recipe",
        recipe = "nullius-boxed-titanium-sheet"
      },
	  {
        type = "unlock-recipe",
        recipe = "nullius-boxed-aluminum-powder"
      },
      {
        type = "unlock-recipe",
        recipe = "nullius-boxed-aluminum-carbide-2"
      },
	  {
        type = "unlock-recipe",
        recipe = "nullius-boxed-aluminum-oxidation"
      },
	  {
        type = "unlock-recipe",
        recipe = "nullius-boxed-iron-oxidation"
      },
	  {
        type = "unlock-recipe",
        recipe = "nullius-boxed-graphite-combustion"
      },
      {
        type = "unlock-recipe",
        recipe = "nullius-boxed-lamp-1"
      },
      {
        type = "unlock-recipe",
        recipe = "nullius-boxed-lamp-2"
      },
      {
        type = "unlock-recipe",
        recipe = "nullius-boxed-sensor-1"
      },
      {
        type = "unlock-recipe",
        recipe = "nullius-boxed-sensor-2"
      },
      {
        type = "unlock-recipe",
        recipe = "nullius-boxed-train-stop"
      },
      {
        type = "unlock-recipe",
        recipe = "nullius-boxed-rail-signal"
      },
      {
        type = "unlock-recipe",
        recipe = "nullius-boxed-chain-signal"
      },
      {
        type = "unlock-recipe",
        recipe = "nullius-boxed-battery-1"
      },
      {
        type = "unlock-recipe",
        recipe = "nullius-boxed-battery-recharging-1"
      },
      {
        type = "unlock-recipe",
        recipe = "nullius-boxed-reinforced-concrete"
      },
      {
        type = "unlock-recipe",
        recipe = "nullius-boxed-white-concrete"
      },
      {
        type = "unlock-recipe",
        recipe = "nullius-boxed-red-concrete"
      },
      {
        type = "unlock-recipe",
        recipe = "nullius-boxed-blue-concrete"
      },
      {
        type = "unlock-recipe",
        recipe = "nullius-boxed-yellow-concrete"
      },
      {
        type = "unlock-recipe",
        recipe = "nullius-boxed-green-concrete"
      },
      {
        type = "unlock-recipe",
        recipe = "nullius-boxed-purple-concrete"
      },
      {
        type = "unlock-recipe",
        recipe = "nullius-boxed-orange-concrete"
      },
      {
        type = "unlock-recipe",
        recipe = "nullius-boxed-brown-concrete"
      },
      {
        type = "unlock-recipe",
        recipe = "nullius-boxed-black-concrete"
      },
      {
        type = "unlock-recipe",
        recipe = "nullius-boxed-hazard-concrete"
      },
      {
        type = "unlock-recipe",
        recipe = "nullius-boxed-land-fill-gravel"
      },
      {
        type = "unlock-recipe",
        recipe = "nullius-boxed-land-fill-grey"
      },
      {
        type = "unlock-recipe",
        recipe = "nullius-boxed-land-fill-sand"
      },
      {
        type = "unlock-recipe",
        recipe = "nullius-boxed-land-fill-tan"
      },
      {
        type = "unlock-recipe",
        recipe = "nullius-boxed-land-fill-brown"
      },
      {
        type = "unlock-recipe",
        recipe = "nullius-boxed-land-fill-sludge"
      },
      {
        type = "unlock-recipe",
        recipe = "nullius-boxed-land-fill-red"
      },
      {
        type = "unlock-recipe",
        recipe = "nullius-boxed-land-fill-beige"
      },
      {
        type = "unlock-recipe",
        recipe = "nullius-boxed-power-pole-1"
      },
      {
        type = "unlock-recipe",
        recipe = "nullius-boxed-power-pole-2"
      },
      {
        type = "unlock-recipe",
        recipe = "nullius-boxed-power-pole-3"
      },
      {
        type = "unlock-recipe",
        recipe = "nullius-boxed-explosive"
      },
      {
        type = "unlock-recipe",
        recipe = "nullius-boxed-magazine"
      },
      {
        type = "unlock-recipe",
        recipe = "nullius-boxed-missile-1"
      },
      {
        type = "unlock-recipe",
        recipe = "nullius-boxed-belt-2"
      },
      {
        type = "unlock-recipe",
        recipe = "nullius-boxed-underground-belt-2"
      },
      {
        type = "unlock-recipe",
        recipe = "nullius-boxed-splitter-2"
      },
      {
        type = "unlock-recipe",
        recipe = "nullius-boxed-relay-1"
      },
      {
        type = "unlock-recipe",
        recipe = "nullius-boxed-relay-2"
      }
    },
    unit = {
      count = 950,
      ingredients = {
        {"nullius-geology-pack", 1}, {"nullius-climatology-pack", 1},
        {"nullius-mechanical-pack", 1}, {"nullius-electrical-pack", 1},
        {"nullius-chemical-pack", 1}
      },
      time = 35
    },
    prerequisites = {"nullius-high-pressure-chemistry", "nullius-checkpoint-large-beacon"}
  },
  {
    type = "technology",
    name = "nullius-robot-cargo-1",
    order = "nullius-ep",
    icon = "__base__/graphics/technology/worker-robots-storage.png",
    icon_size = 256,
    icon_mipmaps = 4,
    effects = {
      {
        type = "worker-robot-storage",
        modifier = 1
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
    prerequisites = {"nullius-exploration-1", "nullius-inserter-capacity-2", "nullius-locomotion-2"},
    upgrade = true
  },
  {
    type = "technology",
    name = "nullius-parallel-computing-2",
    order = "nullius-ep",
    icon = EQUIPPATH .. "coprocessor/productivity2.png",
    icon_size = 64,
    effects = {
      {
        type = "unlock-recipe",
        recipe = "nullius-coprocessor-speed-2"
      },
	  {
        type = "unlock-recipe",
        recipe = "nullius-coprocessor-efficiency-2"
      },
	  {
        type = "unlock-recipe",
        recipe = "nullius-coprocessor-productivity-2"
      }
    },
    unit = {
      count = 800,
      ingredients = {
        {"nullius-climatology-pack", 1},
        {"nullius-mechanical-pack", 1}, {"nullius-electrical-pack", 2}
      },
      time = 35
    },
    prerequisites = {"nullius-locomotion-2", "nullius-toolmaking-6"}
  },
  {
    type = "technology",
    name = "nullius-packaging-6",
    order = "nullius-ep",
    icon = "__angelssmelting__/graphics/technology/powder-mixer-tech.png",
    icon_size = 256,
    icon_mipmaps = 2,
    effects = {
      {
        type = "unlock-recipe",
        recipe = "nullius-boxer"
      }
    },
    unit = {
      count = 800,
      ingredients = {
        {"nullius-geology-pack", 1}, {"nullius-climatology-pack", 1},
        {"nullius-mechanical-pack", 1}, {"nullius-chemical-pack", 1}
      },
      time = 35
    },
    prerequisites = {"nullius-inserter-capacity-2", "nullius-distribution-3", "nullius-toolmaking-6"}
  },

  {
    type = "technology",
    name = "nullius-barreling-3",
    order = "nullius-eq",
    icon_size = 128,
    icon = "__angelsrefining__/graphics/technology/barrel-tech.png",
    effects = {
      {
        type = "unlock-recipe",
        recipe = "fill-nullius-steam-barrel"
      },
      {
        type = "unlock-recipe",
        recipe = "empty-nullius-steam-barrel"
      },
      {
        type = "unlock-recipe",
        recipe = "fill-nullius-compressed-nitrogen-barrel"
      },
      {
        type = "unlock-recipe",
        recipe = "empty-nullius-compressed-nitrogen-barrel"
      },
      {
        type = "unlock-recipe",
        recipe = "fill-nullius-compressed-hydrogen-barrel"
      },
      {
        type = "unlock-recipe",
        recipe = "empty-nullius-compressed-hydrogen-barrel"
      },
      {
        type = "unlock-recipe",
        recipe = "fill-nullius-compressed-air-barrel"
      },
      {
        type = "unlock-recipe",
        recipe = "empty-nullius-compressed-air-barrel"
      },
      {
        type = "unlock-recipe",
        recipe = "fill-nullius-compressed-residual-gas-barrel"
      },
      {
        type = "unlock-recipe",
        recipe = "empty-nullius-compressed-residual-gas-barrel"
      },
      {
        type = "unlock-recipe",
        recipe = "fill-nullius-compressed-argon-barrel"
      },
      {
        type = "unlock-recipe",
        recipe = "empty-nullius-compressed-argon-barrel"
      },
      {
        type = "unlock-recipe",
        recipe = "fill-nullius-compressed-oxygen-barrel"
      },
      {
        type = "unlock-recipe",
        recipe = "empty-nullius-compressed-oxygen-barrel"
      },
      {
        type = "unlock-recipe",
        recipe = "fill-nullius-compressed-carbon-dioxide-barrel"
      },
      {
        type = "unlock-recipe",
        recipe = "empty-nullius-compressed-carbon-dioxide-barrel"
      },
      {
        type = "unlock-recipe",
        recipe = "fill-nullius-compressed-carbon-monoxide-barrel"
      },
      {
        type = "unlock-recipe",
        recipe = "empty-nullius-compressed-carbon-monoxide-barrel"
      },
      {
        type = "unlock-recipe",
        recipe = "fill-nullius-compressed-methane-barrel"
      },
      {
        type = "unlock-recipe",
        recipe = "empty-nullius-compressed-methane-barrel"
      }
    },
    unit = {
      count = 900,
      ingredients = {
        {"nullius-geology-pack", 1}, {"nullius-climatology-pack", 1},
        {"nullius-mechanical-pack", 1}, {"nullius-electrical-pack", 1},
        {"nullius-chemical-pack", 1}
      },
      time = 35
    },
    prerequisites = {"nullius-pressure-containment", "nullius-packaging-6"},
  },
  {
    type = "technology",
    name = "nullius-organic-chemistry-6",
    order = "nullius-eq",
    icons = data.raw.recipe["nullius-alkene-synthesis-light"].icons,
    effects = {
      {
        type = "unlock-recipe",
        recipe = "nullius-alkene-synthesis-light"
      },
      {
        type = "unlock-recipe",
        recipe = "nullius-methane-reforming"
      },
      {
        type = "unlock-recipe",
        recipe = "nullius-benzene-reforming"
      },
      {
        type = "unlock-recipe",
        recipe = "nullius-plastic-pex"
      },
      {
        type = "unlock-recipe",
        recipe = "nullius-boxed-plastic-pex"
      }
    },
    unit = {
      count = 500,
      ingredients = {
        {"nullius-geology-pack", 1}, {"nullius-climatology-pack", 2},
        {"nullius-mechanical-pack", 1}, {"nullius-electrical-pack", 1},
        {"nullius-chemical-pack", 2}
      },
      time = 35
    },
    prerequisites = {"nullius-checkpoint-benzene", "nullius-empiricism-4"}
  },
  {
    type = "technology",
    name = "nullius-cybernetics-4",
    order = "nullius-eq",
    icon = "__base__/graphics/technology/exoskeleton-equipment.png",
    icon_size = 256,
    icon_mipmaps = 4,
    effects = {
      {
        type = "unlock-recipe",
        recipe = "nullius-leg-augmentation-1"
      },
      {
        type = "unlock-recipe",
        recipe = "nullius-quadrupedal-adaptation-1"
      },
      {
        type = "unlock-recipe",
        recipe = "nullius-night-vision-2"
      },
      {
        type = "character-health-bonus",
        modifier = 100
      }
    },
    unit = {
      count = 900,
      ingredients = {
        {"nullius-geology-pack", 1}, {"nullius-climatology-pack", 1},
        {"nullius-mechanical-pack", 1}, {"nullius-electrical-pack", 1},
        {"nullius-chemical-pack", 1}
      },
      time = 35
    },
    prerequisites = {"nullius-parallel-computing-2", "nullius-braking-5", "nullius-robot-cargo-1"}
  },
  {
    type = "technology",
    name = "nullius-mass-production-7",
    order = "nullius-eq",
    icon = "__base__/graphics/technology/automation-2.png",
    icon_size = 256,
    icon_mipmaps = 4,
    effects = {
      {
        type = "unlock-recipe",
        recipe = "nullius-boxed-pressure-graphite"
      },
      {
        type = "unlock-recipe",
        recipe = "nullius-boxed-pressure-bpa"
      },
      {
        type = "unlock-recipe",
        recipe = "nullius-boxed-limestone-disposal"
      },
	  {
        type = "unlock-recipe",
        recipe = "nullius-boxed-iron-disposal"
      },
	  {
        type = "unlock-recipe",
        recipe = "nullius-boxed-bauxite-disposal"
      },	  
      {
        type = "unlock-recipe",
        recipe = "nullius-boxed-pressure-filter-1"
      },
      {
        type = "unlock-recipe",
        recipe = "nullius-boxed-hydrogen-canister-2"
      },
      {
        type = "unlock-recipe",
        recipe = "nullius-boxed-methanol-canister-2"
      },
      {
        type = "unlock-recipe",
        recipe = "nullius-boxed-belt-3"
      },
      {
        type = "unlock-recipe",
        recipe = "nullius-boxed-underground-belt-3"
      },
      {
        type = "unlock-recipe",
        recipe = "nullius-boxed-splitter-3"
      },
      {
        type = "unlock-recipe",
        recipe = "nullius-boxed-pylon-1"
      },
      {
        type = "unlock-recipe",
        recipe = "nullius-boxed-pylon-2"
      },
      {
        type = "unlock-recipe",
        recipe = "nullius-boxed-medium-tank-1"
      },
      {
        type = "unlock-recipe",
        recipe = "nullius-boxed-medium-tank-2"
      },
      {
        type = "unlock-recipe",
        recipe = "nullius-boxed-medium-tank-3"
      },
      {
        type = "unlock-recipe",
        recipe = "nullius-boxed-small-tank-1"
      },
      {
        type = "unlock-recipe",
        recipe = "nullius-boxed-small-tank-2"
      },
      {
        type = "unlock-recipe",
        recipe = "nullius-boxed-wind-turbine-1"
      },
      {
        type = "unlock-recipe",
        recipe = "nullius-boxed-wind-turbine-2"
      },
      {
        type = "unlock-recipe",
        recipe = "nullius-boxed-solar-collector-1"
      },
      {
        type = "unlock-recipe",
        recipe = "nullius-boxed-solar-collector-2"
      },
      {
        type = "unlock-recipe",
        recipe = "nullius-boxed-solar-panel-1"
      },
      {
        type = "unlock-recipe",
        recipe = "nullius-boxed-solar-panel-2"
      },
      {
        type = "unlock-recipe",
        recipe = "nullius-boxed-grid-battery-1"
      },
      {
        type = "unlock-recipe",
        recipe = "nullius-boxed-turbine-open-1"
      },
      {
        type = "unlock-recipe",
        recipe = "nullius-boxed-turbine-open-2"
      },
      {
        type = "unlock-recipe",
        recipe = "nullius-boxed-turbine-closed-1"
      },
      {
        type = "unlock-recipe",
        recipe = "nullius-boxed-turbine-closed-2"
      },
      {
        type = "unlock-recipe",
        recipe = "nullius-boxed-substation-1"
      },
      {
        type = "unlock-recipe",
        recipe = "nullius-boxed-substation-2"
      },
      {
        type = "unlock-recipe",
        recipe = "nullius-boxed-sensor-node-1"
      },
      {
        type = "unlock-recipe",
        recipe = "nullius-boxed-sensor-node-2"
      },
      {
        type = "unlock-recipe",
        recipe = "nullius-boxed-beacon-1"
      },
      {
        type = "unlock-recipe",
        recipe = "nullius-boxed-beacon-2"
      },
      {
        type = "unlock-recipe",
        recipe = "nullius-boxed-robot-frame-1"
      },
      {
        type = "unlock-recipe",
        recipe = "nullius-boxed-robot-frame-2"
      },
      {
        type = "unlock-recipe",
        recipe = "nullius-boxed-construction-bot-1"
      },
      {
        type = "unlock-recipe",
        recipe = "nullius-boxed-construction-bot-2"
      },
      {
        type = "unlock-recipe",
        recipe = "nullius-boxed-logistic-bot-1"
      },
      {
        type = "unlock-recipe",
        recipe = "nullius-boxed-logistic-bot-2"
      },
      {
        type = "unlock-recipe",
        recipe = "nullius-boxed-night-vision-1"
      },
      {
        type = "unlock-recipe",
        recipe = "nullius-boxed-levitation-field-1"
      },
      {
        type = "unlock-recipe",
        recipe = "nullius-boxed-haste-module-1"
      },
      {
        type = "unlock-recipe",
        recipe = "nullius-boxed-efficiency-module-1"
      },
      {
        type = "unlock-recipe",
        recipe = "nullius-boxed-speed-module-1"
      },
      {
        type = "unlock-recipe",
        recipe = "nullius-boxed-yield-module-1"
      },
      {
        type = "unlock-recipe",
        recipe = "nullius-boxed-haste-module-2"
      },
      {
        type = "unlock-recipe",
        recipe = "nullius-boxed-efficiency-module-2"
      },
      {
        type = "unlock-recipe",
        recipe = "nullius-boxed-speed-module-2"
      },
      {
        type = "unlock-recipe",
        recipe = "nullius-boxed-yield-module-2"
      },
      {
        type = "unlock-recipe",
        recipe = "nullius-boxed-productivity-module-1"
      },
      {
        type = "unlock-recipe",
        recipe = "nullius-boxed-wall"
      },
      {
        type = "unlock-recipe",
        recipe = "nullius-boxed-gate"
      },
      {
        type = "unlock-recipe",
        recipe = "nullius-boxed-geology-pack"
      },
      {
        type = "unlock-recipe",
        recipe = "nullius-boxed-climatology-pack"
      },
      {
        type = "unlock-recipe",
        recipe = "nullius-boxed-mechanical-pack-1"
      },
      {
        type = "unlock-recipe",
        recipe = "nullius-boxed-electrical-pack"
      },
      {
        type = "unlock-recipe",
        recipe = "nullius-boxed-chemical-pack"
      },
      {
        type = "unlock-recipe",
        recipe = "nullius-boxed-charger-1"
      },
      {
        type = "unlock-recipe",
        recipe = "nullius-boxed-charger-2"
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
    prerequisites = {"nullius-mass-production-6", "nullius-checkpoint-large-furnace", "nullius-robot-cargo-1"}
  },
  {
    type = "technology",
    name = "nullius-exploration-2",
    order = "nullius-eq",
    icon = "__base__/graphics/technology/artillery.png",
    icon_size = 256,
    icon_mipmaps = 4,
    effects = {
      {
        type = "unlock-recipe",
        recipe = "nullius-drone-carrier-1"
      }
    },
    unit = {
      count = 850,
      ingredients = {
        {"nullius-geology-pack", 1}, {"nullius-climatology-pack", 1},
        {"nullius-mechanical-pack", 1}, {"nullius-electrical-pack", 1},
        {"nullius-chemical-pack", 1}
      },
      time = 35
    },
    prerequisites = {"nullius-cybernetics-4", "nullius-checkpoint-exploration"}
  },

  {
    type = "technology",
    name = "nullius-physics",
    order = "nullius-fb",
    icons = {
      {
        icon = "__base__/graphics/technology/space-science-pack.png",
        icon_size = 256,
        icon_mipmaps = 4
      },
      {
        icon = "__base__/graphics/icons/tooltips/tooltip-category-nuclear.png",
        icon_size = 40,
        scale = 2.5,
        shift = {-4, 36},
        tint = {r=0.6, g=0.3, b=0.2, a=1}
      }
    },
    effects = {
      {
        type = "unlock-recipe",
        recipe = "nullius-physics-pack"
      },
      {
        type = "unlock-recipe",
        recipe = "nullius-box-physics-pack"
      },
      {
        type = "unlock-recipe",
        recipe = "nullius-unbox-physics-pack"
      }
    },
    unit = {
      count = 1200,
      ingredients = {
        {"nullius-geology-pack", 1}, {"nullius-climatology-pack", 1},
        {"nullius-mechanical-pack", 1}, {"nullius-electrical-pack", 1},
        {"nullius-chemical-pack", 1}
      },
      time = 40
    },
    prerequisites = {"nullius-mass-production-7", "nullius-exploration-2", "nullius-checkpoint-lab-2"}
  },

  {
    type = "technology",
    name = "nullius-electromagnetism-3",
    order = "nullius-fc",
    icon = "__base__/graphics/technology/electric-engine.png",
    icon_size = 256,
    icon_mipmaps = 4,
    effects = {
      {
        type = "unlock-recipe",
        recipe = "nullius-motor-3"
      },
      {
        type = "unlock-recipe",
        recipe = "nullius-boxed-motor-3"
      },
      {
        type = "unlock-recipe",
        recipe = "nullius-box-motor-3"
      },
      {
        type = "unlock-recipe",
        recipe = "nullius-unbox-motor-3"
      }
    },
    unit = {
      count = 800,
      ingredients = {
        {"nullius-geology-pack", 1}, {"nullius-climatology-pack", 1},
        {"nullius-mechanical-pack", 2}, {"nullius-electrical-pack", 1},
        {"nullius-chemical-pack", 1}, {"nullius-physics-pack", 1}
      },
      time = 40
    },
    prerequisites = {"nullius-physics"}
  },
  {
    type = "technology",
    name = "nullius-composites-2",
    order = "nullius-fc",
    icons = data.raw.item["nullius-carbon-composite"].icons,
    effects = {
      {
        type = "unlock-recipe",
        recipe = "nullius-carbon-composite"
      },
      {
        type = "unlock-recipe",
        recipe = "nullius-boxed-carbon-composite"
      },
      {
        type = "unlock-recipe",
        recipe = "nullius-box-carbon-composite"
      },
      {
        type = "unlock-recipe",
        recipe = "nullius-unbox-carbon-composite"
      }
    },
    unit = {
      count = 800,
      ingredients = {
        {"nullius-geology-pack", 1}, {"nullius-climatology-pack", 1},
        {"nullius-mechanical-pack", 1}, {"nullius-electrical-pack", 1},
        {"nullius-chemical-pack", 2}, {"nullius-physics-pack", 2}
      },
      time = 40
    },
    prerequisites = {"nullius-physics"}
  },

  {
    type = "technology",
    name = "nullius-mining-3",
    order = "nullius-fd",
    icon = "__base__/graphics/technology/mining-productivity.png",
    icon_size = 256,
    icon_mipmaps = 4,
    effects = {
      {
        type = "unlock-recipe",
        recipe = "nullius-small-miner-3"
      },
      {
        type = "unlock-recipe",
        recipe = "nullius-medium-miner-3"
      },
      {
        type = "unlock-recipe",
        recipe = "nullius-large-miner-2"
      }
    },
    unit = {
      count = 1000,
      ingredients = {
        {"nullius-geology-pack", 2}, {"nullius-climatology-pack", 1},
        {"nullius-mechanical-pack", 1}, {"nullius-electrical-pack", 1},
        {"nullius-chemical-pack", 1}, {"nullius-physics-pack", 1}
      },
      time = 40
    },
    prerequisites = {"nullius-electromagnetism-3", "nullius-checkpoint-large-miner"}
  },
  {
    type = "technology",
    name = "nullius-single-layer-materials",
    order = "nullius-fd",
    icons = data.raw.item["nullius-graphene"].icons,
    effects = {
      {
        type = "unlock-recipe",
        recipe = "nullius-graphene"
      },
      {
        type = "unlock-recipe",
        recipe = "nullius-boxed-graphene"
      },
      {
        type = "unlock-recipe",
        recipe = "nullius-box-graphene"
      },
      {
        type = "unlock-recipe",
        recipe = "nullius-unbox-graphene"
      }
    },
    unit = {
      count = 1000,
      ingredients = {
        {"nullius-geology-pack", 1}, {"nullius-climatology-pack", 1},
        {"nullius-mechanical-pack", 2}, {"nullius-electrical-pack", 1},
        {"nullius-chemical-pack", 1}, {"nullius-physics-pack", 2}
      },
      time = 40
    },
    prerequisites = {"nullius-composites-2", "nullius-organic-chemistry-6"}
  },
  {
    type = "technology",
    name = "nullius-actuation-4",
    order = "nullius-fd",
    icon_size = 128,
    icon = "__boblogistics__/graphics/icons/technology/green-inserter.png",
    effects = {
      {
        type = "unlock-recipe",
        recipe = "nullius-inserter-4"
      },
      {
        type = "unlock-recipe",
        recipe = "nullius-filter-inserter-4"
      },
      {
        type = "unlock-recipe",
        recipe = "nullius-box-inserter-4"
      },
      {
        type = "unlock-recipe",
        recipe = "nullius-box-filter-inserter-4"
      },
      {
        type = "unlock-recipe",
        recipe = "nullius-unbox-inserter-4"
      },
      {
        type = "unlock-recipe",
        recipe = "nullius-unbox-filter-inserter-4"
      },
      {
        type = "unlock-recipe",
        recipe = "nullius-boxed-inserter-4"
      },
      {
        type = "unlock-recipe",
        recipe = "nullius-boxed-filter-inserter-4"
      }
    },
    unit = {
      count = 1100,
      ingredients = {
        {"nullius-geology-pack", 1}, {"nullius-climatology-pack", 1},
        {"nullius-mechanical-pack", 1}, {"nullius-electrical-pack", 1},
        {"nullius-chemical-pack", 1}, {"nullius-physics-pack", 1}
      },
      time = 40
    },
    prerequisites = {"nullius-composites-2", "nullius-electromagnetism-3"}
  },

  {
    type = "technology",
    name = "nullius-inserter-capacity-3",
    order = "nullius-fe",
    icon = "__base__/graphics/technology/inserter-capacity.png",
    icon_size = 256,
    icon_mipmaps = 4,
    effects = {
      {
        type = "stack-inserter-capacity-bonus",
        modifier = 1
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
  },
  {
    type = "technology",
    name = "nullius-plumbing-6",
    order = "nullius-fe",
    icon = "__base__/graphics/technology/fluid-handling.png",
    icon_size = 256,
    icon_mipmaps = 4,
    effects = {
      {
        type = "unlock-recipe",
        recipe = "nullius-large-tank-3"
      },
      {
        type = "unlock-recipe",
        recipe = "nullius-pipe-4"
      },
      {
        type = "unlock-recipe",
        recipe = "nullius-underground-pipe-4"
      },
      {
        type = "unlock-recipe",
        recipe = "nullius-boxed-pipe-4"
      },
      {
        type = "unlock-recipe",
        recipe = "nullius-boxed-underground-pipe-4"
      },
      {
        type = "unlock-recipe",
        recipe = "nullius-box-pipe-4"
      },
      {
        type = "unlock-recipe",
        recipe = "nullius-box-underground-pipe-4"
      },
      {
        type = "unlock-recipe",
        recipe = "nullius-unbox-pipe-4"
      },
      {
        type = "unlock-recipe",
        recipe = "nullius-unbox-underground-pipe-4"
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
    prerequisites = {"nullius-single-layer-materials", "nullius-barreling-3"}
  },
  {
    type = "technology",
    name = "nullius-toolmaking-7",
    order = "nullius-fe",
    icon = "__base__/graphics/technology/steel-axe.png",
    icon_size = 256,
    icon_mipmaps = 4,
    effects = {
      {
        type = "character-mining-speed",
        modifier = 0.15
      },
      {
        type = "character-crafting-speed",
        modifier = 0.5
      },
      {
        type = "character-resource-reach-distance",
        modifier = 1
      },
      {
        type = "unlock-recipe",
        recipe = "nullius-fabrication-tool-3"
      },
      {
        type = "unlock-recipe",
        recipe = "nullius-mining-tool-2"
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
    prerequisites = {"nullius-actuation-4", "nullius-mining-3"}
  },

  {
    type = "technology",
    name = "nullius-locomotion-3",
    order = "nullius-ff",
    icon = "__base__/graphics/technology/exoskeleton-equipment.png",
    icon_size = 256,
    icon_mipmaps = 4,
    effects = {
      {
        type = "character-running-speed",
        modifier = 0.1
      }
    },
    unit = {
      count = 1400,
      ingredients = {
        {"nullius-geology-pack", 1}, {"nullius-climatology-pack", 1},
        {"nullius-mechanical-pack", 1}, {"nullius-electrical-pack", 1},
        {"nullius-chemical-pack", 1}, {"nullius-physics-pack", 1}
      },
      time = 40
    },
    prerequisites = {"nullius-inserter-capacity-3"}
  },
  {
    type = "technology",
    name = "nullius-automation-3",
    order = "nullius-ff",
    icon = "__base__/graphics/technology/automation-3.png",
    icon_size = 256,
    icon_mipmaps = 4,
    effects = {
      {
        type = "unlock-recipe",
        recipe = "nullius-small-assembler-3"
      },
      {
        type = "unlock-recipe",
        recipe = "nullius-medium-assembler-3"
      },
      {
        type = "unlock-recipe",
        recipe = "nullius-large-assembler-2"
      }
    },
    unit = {
      count = 1400,
      ingredients = {
        {"nullius-geology-pack", 1}, {"nullius-climatology-pack", 1},
        {"nullius-mechanical-pack", 1}, {"nullius-electrical-pack", 1},
        {"nullius-chemical-pack", 1}, {"nullius-physics-pack", 1}
      },
      time = 40
    },
    prerequisites = {"nullius-toolmaking-7"}
  },
  {
    type = "technology",
    name = "nullius-logistics-4",
    order = "nullius-ff",
    icon_size = 254,
    icon = TECHPATH .. "logistics-4.png",
    effects = {
      {
        type = "unlock-recipe",
        recipe = "nullius-conveyor-belt-4"
      },
      {
        type = "unlock-recipe",
        recipe = "nullius-underground-belt-4"
      },
      {
        type = "unlock-recipe",
        recipe = "nullius-splitter-4"
      },
      {
        type = "unlock-recipe",
        recipe = "nullius-boxed-conveyor-belt-4"
      },
      {
        type = "unlock-recipe",
        recipe = "nullius-boxed-underground-belt-4"
      },
      {
        type = "unlock-recipe",
        recipe = "nullius-boxed-splitter-4"
      },
      {
        type = "unlock-recipe",
        recipe = "nullius-box-belt-4"
      },
      {
        type = "unlock-recipe",
        recipe = "nullius-box-underground-belt-4"
      },
      {
        type = "unlock-recipe",
        recipe = "nullius-unbox-belt-4"
      },
      {
        type = "unlock-recipe",
        recipe = "nullius-unbox-underground-belt-4"
      }
    },
    unit = {
      count = 1400,
      ingredients = {
        {"nullius-geology-pack", 1}, {"nullius-climatology-pack", 1},
        {"nullius-mechanical-pack", 1}, {"nullius-electrical-pack", 1},
        {"nullius-chemical-pack", 1}, {"nullius-physics-pack", 1}
      },
      time = 40
    },
    prerequisites = {"nullius-plumbing-6", "nullius-inserter-capacity-3"}
  },
  {
    type = "technology",
    name = "nullius-filtration-2",
    order = "nullius-ff",
    icons = data.raw.item["nullius-filter-2"].icons,
    effects = {
      {
        type = "unlock-recipe",
        recipe = "nullius-filter-2"
      },
      {
        type = "unlock-recipe",
        recipe = "nullius-boxed-filter-2"
      },
      {
        type = "unlock-recipe",
        recipe = "nullius-box-filter-2"
      },
      {
        type = "unlock-recipe",
        recipe = "nullius-unbox-filter-2"
      }
    },
    unit = {
      count = 1000,
      ingredients = {
        {"nullius-geology-pack", 1}, {"nullius-climatology-pack", 1},
        {"nullius-mechanical-pack", 2}, {"nullius-electrical-pack", 1},
        {"nullius-chemical-pack", 2}, {"nullius-physics-pack", 1}
      },
      time = 40
    },
    prerequisites = {"nullius-plumbing-6"}
  },
  {
    type = "technology",
    name = "nullius-reconnaissance-1",
    order = "nullius-ff",
    icon = "__base__/graphics/technology/artillery-range.png",
    icon_size = 256,
    icon_mipmaps = 4,
    effects = {
      {
        type = "artillery-range",
        modifier = 0.25
      }
    },
    unit = {
      count = 1400,
      ingredients = {
        {"nullius-geology-pack", 1}, {"nullius-climatology-pack", 1},
        {"nullius-mechanical-pack", 1}, {"nullius-electrical-pack", 1},
        {"nullius-physics-pack", 1}
      },
      time = 40
    },
    prerequisites = {"nullius-single-layer-materials", "nullius-toolmaking-7"}
  },
  {
    type = "technology",
    name = "nullius-pumping-3",
    order = "nullius-ff",
    icon_size = 64,
    icon = "__base__/graphics/icons/pump.png",
    effects = {
      {
        type = "unlock-recipe",
        recipe = "nullius-pump-3"
      },
      {
        type = "unlock-recipe",
        recipe = "nullius-small-pump-2"
      },
      {
        type = "unlock-recipe",
        recipe = "nullius-boxed-pump-3"
      },
      {
        type = "unlock-recipe",
        recipe = "nullius-boxed-small-pump-2"
      },
      {
        type = "unlock-recipe",
        recipe = "nullius-box-pump-3"
      },
      {
        type = "unlock-recipe",
        recipe = "nullius-box-small-pump-2"
      },
      {
        type = "unlock-recipe",
        recipe = "nullius-unbox-pump-3"
      },
      {
        type = "unlock-recipe",
        recipe = "nullius-unbox-small-pump-2"
      }
    },
    unit = {
      count = 1400,
      ingredients = {
        {"nullius-geology-pack", 1}, {"nullius-climatology-pack", 1},
        {"nullius-mechanical-pack", 1}, {"nullius-electrical-pack", 1},
        {"nullius-chemical-pack", 1}, {"nullius-physics-pack", 1}
      },
      time = 40
    },
    prerequisites = {"nullius-plumbing-6", "nullius-checkpoint-pumping"}
  },

  {
    type = "technology",
    name = "nullius-mechanical-engineering-2",
    order = "nullius-fg",
    icons = {
      {
        icon = "__base__/graphics/technology/automation-science-pack.png",
        icon_size = 256,
        icon_mipmaps = 4
      },
      {
        icon = "__base__/graphics/icons/iron-gear-wheel.png",
        icon_size = 64,
        scale = 1.6,
        shift = {0, 40},
        tint = {r=0.6, g=1, b=1, a=0.5}
      }
    },
    effects = {
      {
        type = "unlock-recipe",
        recipe = "nullius-mechanical-pack-2"
      },
      {
        type = "unlock-recipe",
        recipe = "nullius-boxed-mechanical-pack-2"
      }
    },
    unit = {
      count = 1500,
      ingredients = {
        {"nullius-geology-pack", 1},
        {"nullius-mechanical-pack", 3}, {"nullius-physics-pack", 1}
      },
      time = 40
    },
    prerequisites = {"nullius-automation-3", "nullius-pumping-3", "nullius-checkpoint-logistics-3"}
  },
  {
    type = "technology",
    name = "nullius-water-filtration-4",
    order = "nullius-fg",
    icon_size = 256,
    icon = "__angelsrefining__/graphics/technology/water-treatment.png",
    effects = {
      {
        type = "unlock-recipe",
        recipe = "nullius-hydro-plant-3"
      }
    },
    unit = {
      count = 1200,
      ingredients = {
        {"nullius-geology-pack", 1}, {"nullius-climatology-pack", 2},
        {"nullius-mechanical-pack", 1}, {"nullius-electrical-pack", 1},
        {"nullius-chemical-pack", 2}, {"nullius-physics-pack", 1}
      },
      time = 40
    },
    prerequisites = {"nullius-pumping-3", "nullius-checkpoint-filter", "nullius-automation-3"}
  },
  {
    type = "technology",
    name = "nullius-air-filtration-3",
    order = "nullius-fg",
    icon_size = 128,
    icon = "__angelspetrochem__/graphics/technology/air-filter-tech.png",
    effects = {
      {
        type = "unlock-recipe",
        recipe = "nullius-air-filter-3"
      }
    },
    unit = {
      count = 1400,
      ingredients = {
        {"nullius-geology-pack", 1}, {"nullius-climatology-pack", 2},
        {"nullius-mechanical-pack", 1}, {"nullius-electrical-pack", 1},
        {"nullius-chemical-pack", 1}, {"nullius-physics-pack", 1}
      },
      time = 40
    },
    prerequisites = {"nullius-pumping-3", "nullius-checkpoint-filter"}
  },
  {
    type = "technology",
    name = "nullius-mineral-processing-3",
    order = "nullius-fg",
    icon_size = 256,
    icon = "__angelsrefining__/graphics/technology/ore-sorting.png",
    effects = {
      {
        type = "unlock-recipe",
        recipe = "nullius-crusher-3"
      }
    },
    unit = {
      count = 1400,
      ingredients = {
        {"nullius-geology-pack", 2}, {"nullius-climatology-pack", 1},
        {"nullius-mechanical-pack", 1}, {"nullius-electrical-pack", 1},
        {"nullius-chemical-pack", 1}, {"nullius-physics-pack", 1}
      },
      time = 40
    },
    prerequisites = {"nullius-toolmaking-7", "nullius-logistics-4"}
  },
  {
    type = "technology",
    name = "nullius-barreling-4",
    order = "nullius-fg",
    icon_size = 128,
    icon = "__angelsrefining__/graphics/technology/barrel-tech.png",
    effects = {
      {
        type = "unlock-recipe",
        recipe = "nullius-barrel-pump-2"
      }
    },
    unit = {
      count = 1400,
      ingredients = {
        {"nullius-geology-pack", 1}, {"nullius-climatology-pack", 1},
        {"nullius-mechanical-pack", 2}, {"nullius-chemical-pack", 2},
        {"nullius-physics-pack", 1}
      },
      time = 40
    },
    prerequisites = {"nullius-pumping-3"}
  },

  {
    type = "technology",
    name = "nullius-artificial-intelligence-1",
    order = "nullius-fh",
    icon = ICONPATH .. "android1.png",
    icon_size = 64,
    effects = {
      {
        type = "unlock-recipe",
        recipe = "nullius-android-1"
      }
    },
    unit = {
      count = 1500,
      ingredients = {
        {"nullius-geology-pack", 1}, {"nullius-climatology-pack", 1},
        {"nullius-mechanical-pack", 1}, {"nullius-electrical-pack", 2},
        {"nullius-chemical-pack", 1}, {"nullius-physics-pack", 1}
      },
      time = 45
    },
    prerequisites = {"nullius-locomotion-3", "nullius-mechanical-engineering-2",
	    "nullius-checkpoint-automation", "nullius-reconnaissance-1"}
  },
  {
    type = "technology",
    name = "nullius-hydrology-2",
    order = "nullius-fh",
    icon_size = 64,
    icon = ICONPATH .. "fluid/purewater.png",
    effects = {
      {
        type = "unlock-recipe",
        recipe = "nullius-well-2"
      }
    },
    unit = {
      count = 1500,
      ingredients = {
        {"nullius-geology-pack", 2}, {"nullius-climatology-pack", 3},
        {"nullius-mechanical-pack", 1}, {"nullius-chemical-pack", 1}
      },
      time = 45
    },
    prerequisites = {"nullius-flotation-3", "nullius-water-filtration-4", "nullius-reconnaissance-1"}
  },
  {
    type = "technology",
    name = "nullius-metallurgy-4",
    order = "nullius-fh",
    icon = "__base__/graphics/technology/advanced-material-processing-2.png",
    icon_size = 256,
    icon_mipmaps = 4,
    effects = {
      {
        type = "unlock-recipe",
        recipe = "nullius-medium-furnace-3"
      },
      {
        type = "unlock-recipe",
        recipe = "nullius-large-furnace-2"
      }
    },
    unit = {
      count = 1500,
      ingredients = {
        {"nullius-geology-pack", 2}, {"nullius-climatology-pack", 1},
        {"nullius-mechanical-pack", 1}, {"nullius-electrical-pack", 1},
        {"nullius-chemical-pack", 1}, {"nullius-physics-pack", 1}
      },
      time = 45
    },
    prerequisites = {"nullius-mineral-processing-3", "nullius-air-filtration-3"}
  },
  {
    type = "technology",
    name = "nullius-flotation-3",
    order = "nullius-fh",
    icon_size = 256,
    icon = "__angelsrefining__/graphics/technology/hydro-refining.png",
    effects = {
      {
        type = "unlock-recipe",
        recipe = "nullius-flotation-cell-3"
      }
    },
    unit = {
      count = 1600,
      ingredients = {
        {"nullius-geology-pack", 1}, {"nullius-climatology-pack", 1},
        {"nullius-mechanical-pack", 1}, {"nullius-electrical-pack", 1},
        {"nullius-chemical-pack", 1}, {"nullius-physics-pack", 1}
      },
      time = 45
    },
    prerequisites = {"nullius-mineral-processing-3", "nullius-barreling-4"},
  },
  {
    type = "technology",
    name = "nullius-distillation-3",
    order = "nullius-fh",
    icon = "__base__/graphics/technology/oil-processing.png",
    icon_size = 256,
    icon_mipmaps = 4,
    effects = {
      {
        type = "unlock-recipe",
        recipe = "nullius-distillery-3"
      },
      {
        type = "unlock-recipe",
        recipe = "nullius-desalination-2"
      }
    },
    unit = {
      count = 1500,
      ingredients = {
        {"nullius-geology-pack", 1}, {"nullius-climatology-pack", 1},
        {"nullius-mechanical-pack", 1}, {"nullius-electrical-pack", 1},
        {"nullius-chemical-pack", 2}, {"nullius-physics-pack", 1}
      },
      time = 45
    },
    prerequisites = {"nullius-water-filtration-4", "nullius-air-filtration-3"}
  },
  {
    type = "technology",
    name = "nullius-energy-storage-4",
    order = "nullius-fh",
    icon_size = 128,
    icon = "__angelsrefining__/graphics/technology/thermal-extractor.png",
    effects = {
      {
        type = "unlock-recipe",
        recipe = "nullius-compressor-3"
      },
      {
        type = "unlock-recipe",
        recipe = "nullius-turbine-open-3"
      },
      {
        type = "unlock-recipe",
        recipe = "nullius-turbine-closed-3"
      },
      {
        type = "unlock-recipe",
        recipe = "nullius-boxed-turbine-open-3"
      },
      {
        type = "unlock-recipe",
        recipe = "nullius-box-turbine-open-3"
      },
      {
        type = "unlock-recipe",
        recipe = "nullius-unbox-turbine-open-3"
      },
      {
        type = "unlock-recipe",
        recipe = "nullius-boxed-turbine-closed-3"
      },
      {
        type = "unlock-recipe",
        recipe = "nullius-box-turbine-closed-3"
      },
      {
        type = "unlock-recipe",
        recipe = "nullius-unbox-turbine-closed-3"
      }
    },
    unit = {
      count = 1600,
      ingredients = {
        {"nullius-geology-pack", 1}, {"nullius-climatology-pack", 1},
        {"nullius-mechanical-pack", 1}, {"nullius-electrical-pack", 1},
        {"nullius-chemical-pack", 1}, {"nullius-physics-pack", 1}
      },
      time = 45
    },
    prerequisites = {"nullius-barreling-4", "nullius-mechanical-engineering-2", "nullius-air-filtration-3"}
  },

  {
    type = "technology",
    name = "nullius-robot-speed-3",
    order = "nullius-fi",
    icon = "__base__/graphics/technology/worker-robots-speed.png",
    icon_size = 256,
    icon_mipmaps = 4,
    effects = {
      {
        type = "worker-robot-speed",
        modifier = 0.1
      }
    },
    unit = {
      count = 1600,
      ingredients = {
        {"nullius-geology-pack", 1}, {"nullius-climatology-pack", 1},
        {"nullius-mechanical-pack", 1}, {"nullius-electrical-pack", 1},
        {"nullius-chemical-pack", 1}, {"nullius-physics-pack", 1}
      },
      time = 40
    },
    prerequisites = {"nullius-checkpoint-android", "nullius-wind-power-3"},
    upgrade = true
  },
  {
    type = "technology",
    name = "nullius-limestone-processing-4",
    order = "nullius-fi",
    icons = data.raw.item["nullius-gypsum"].icons,
    effects = {
      {
        type = "unlock-recipe",
        recipe = "nullius-crushed-limestone-2"
      },
      {
        type = "unlock-recipe",
        recipe = "nullius-boxed-crushed-limestone-2"
      },
      {
        type = "unlock-recipe",
        recipe = "nullius-calcium-chloride-2"
      },
      {
        type = "unlock-recipe",
        recipe = "nullius-boxed-calcium-chloride-2"
      }
    },
    unit = {
      count = 1600,
      ingredients = {
        {"nullius-geology-pack", 2}, {"nullius-climatology-pack", 1},
        {"nullius-mechanical-pack", 1}, {"nullius-electrical-pack", 1},
        {"nullius-chemical-pack", 1}, {"nullius-physics-pack", 1}
      },
      time = 45
    },
    prerequisites = {"nullius-flotation-3", "nullius-mechanical-engineering-2"}
  },
  {
    type = "technology",
    name = "nullius-chemical-engineering-3",
    order = "nullius-fi",
    icon_size = 128,
    icon = "__angelspetrochem__/graphics/technology/chemical-plant-tech.png",
    effects = {
      {
        type = "unlock-recipe",
        recipe = "nullius-chemical-plant-3"
      }
    },
    unit = {
      count = 1000,
      ingredients = {
        {"nullius-geology-pack", 1}, {"nullius-climatology-pack", 1},
        {"nullius-mechanical-pack", 1}, {"nullius-electrical-pack", 1},
        {"nullius-chemical-pack", 3}, {"nullius-physics-pack", 1}
      },
      time = 45
    },
    prerequisites = {"nullius-distillation-3", "nullius-hydrology-2",
        "nullius-artificial-intelligence-1"}
  },
  {
    type = "technology",
    name = "nullius-lithium-production",
    order = "nullius-fi",
    icon_size = 64,
    icon = ICONPATH .. "lithium.png",
    effects = {
      {
        type = "unlock-recipe",
        recipe = "nullius-lithium-chloride"
      },
      {
        type = "unlock-recipe",
        recipe = "nullius-boxed-lithium-chloride"
      },
      {
        type = "unlock-recipe",
        recipe = "nullius-box-lithium-chloride"
      },
      {
        type = "unlock-recipe",
        recipe = "nullius-unbox-lithium-chloride"
      },
      {
        type = "unlock-recipe",
        recipe = "nullius-lithium"
      },
      {
        type = "unlock-recipe",
        recipe = "nullius-boxed-lithium"
      },
      {
        type = "unlock-recipe",
        recipe = "nullius-box-lithium"
      },
      {
        type = "unlock-recipe",
        recipe = "nullius-unbox-lithium"
      },
      {
        type = "unlock-recipe",
        recipe = "nullius-calcium-chloride-hydration"
      },
      {
        type = "unlock-recipe",
        recipe = "nullius-boxed-calcium-chloride-hydration"
      }
    },
    unit = {
      count = 1800,
      ingredients = {
        {"nullius-geology-pack", 2}, {"nullius-climatology-pack", 2},
        {"nullius-mechanical-pack", 1}, {"nullius-electrical-pack", 1},
        {"nullius-chemical-pack", 1}, {"nullius-physics-pack", 1}
      },
      time = 45
    },
    prerequisites = {"nullius-hydrology-2", "nullius-metallurgy-4"}
  },
  {
    type = "technology",
    name = "nullius-wind-power-3",
    order = "nullius-fi",
    icon_size = 254,
    icon = TECHPATH .. "tech_windturbine3.png",
    effects = {
      {
        type = "unlock-recipe",
        recipe = "nullius-wind-turbine-3"
      },
      {
        type = "unlock-recipe",
        recipe = "nullius-boxed-wind-turbine-3"
      },
      {
        type = "unlock-recipe",
        recipe = "nullius-box-wind-turbine-3"
      },
      {
        type = "unlock-recipe",
        recipe = "nullius-unbox-wind-turbine-3"
      }
    },
    unit = {
      count = 1600,
      ingredients = {
        {"nullius-geology-pack", 1}, {"nullius-climatology-pack", 1},
        {"nullius-mechanical-pack", 2}, {"nullius-electrical-pack", 1},
        {"nullius-chemical-pack", 1}, {"nullius-physics-pack", 1}
      },
      time = 45
    },
    prerequisites = {"nullius-energy-storage-4"}
  },
  {
    type = "technology",
    name = "nullius-metalworking-4",
    order = "nullius-fi",
    icon = "__angelssmelting__/graphics/technology/induction-furnace-tech.png",
    icon_size = 256,
    icon_mipmaps = 2,
    effects = {
      {
        type = "unlock-recipe",
        recipe = "nullius-foundry-3"
      }
    },
    unit = {
      count = 1800,
      ingredients = {
        {"nullius-geology-pack", 1}, {"nullius-climatology-pack", 1},
        {"nullius-mechanical-pack", 1}, {"nullius-electrical-pack", 1},
        {"nullius-chemical-pack", 1}, {"nullius-physics-pack", 1}
      },
      time = 45
    },
    prerequisites = {"nullius-metallurgy-4", "nullius-automation-3"}
  },

  {
    type = "technology",
    name = "nullius-braking-6",
    order = "nullius-fj",
    icon = "__base__/graphics/technology/braking-force.png",
    icon_size = 256,
    icon_mipmaps = 4,
    effects = {
      {
        type = "train-braking-force-bonus",
        modifier = 0.1
      }
    },
    unit = {
      count = 1600,
      ingredients = {
        {"nullius-geology-pack", 1}, {"nullius-climatology-pack", 1},
        {"nullius-mechanical-pack", 1}, {"nullius-electrical-pack", 1},
        {"nullius-chemical-pack", 1}, {"nullius-physics-pack", 1}
      },
      time = 45
    },
    prerequisites = {"nullius-robot-speed-3"},
    upgrade = true
  },
  {
    type = "technology",
    name = "nullius-aluminum-production-3",
    order = "nullius-fj",
    icon = "__angelssmelting__/graphics/technology/smelting-aluminium-tech.png",
    icon_size = 256,
    icon_mipmaps = 4,
    effects = {
      {
        type = "unlock-recipe",
        recipe = "nullius-aluminum-ingot-3"
      },
      {
        type = "unlock-recipe",
        recipe = "nullius-boxed-aluminum-ingot-2"
      },
      {
        type = "unlock-recipe",
        recipe = "nullius-bauxite-flotation-2"
      },
      {
        type = "unlock-recipe",
        recipe = "nullius-boxed-bauxite-flotation-2"
      },
      {
        type = "unlock-recipe",
        recipe = "nullius-aluminum-ingot-electrolytic"
      }
    },
    unit = {
      count = 2000,
      ingredients = {
        {"nullius-geology-pack", 1}, {"nullius-climatology-pack", 1},
        {"nullius-mechanical-pack", 1}, {"nullius-electrical-pack", 1},
        {"nullius-chemical-pack", 1}, {"nullius-physics-pack", 1}
      },
      time = 45
    },
    prerequisites = {"nullius-metalworking-4", "nullius-flotation-3"}
  },
  {
    type = "technology",
    name = "nullius-calcium-production",
    order = "nullius-fj",
    icon = ICONPATH .. "calcium.png",
    icon_size = 64,
    effects = {
      {
        type = "unlock-recipe",
        recipe = "nullius-calcium"
      },
      {
        type = "unlock-recipe",
        recipe = "nullius-boxed-calcium"
      },
      {
        type = "unlock-recipe",
        recipe = "nullius-box-calcium"
      },
      {
        type = "unlock-recipe",
        recipe = "nullius-unbox-calcium"
      }
    },
    unit = {
      count = 1800,
      ingredients = {
        {"nullius-geology-pack", 1}, {"nullius-climatology-pack", 1},
        {"nullius-mechanical-pack", 1}, {"nullius-electrical-pack", 1},
        {"nullius-chemical-pack", 2}, {"nullius-physics-pack", 1}
      },
      time = 45
    },
    prerequisites = {"nullius-metalworking-4", "nullius-limestone-processing-4"}
  },
  {
    type = "technology",
    name = "nullius-air-separation-3",
    order = "nullius-fj",
    icons = data.raw.fluid["nullius-helium"].icons,
    effects = {
      {
        type = "unlock-recipe",
        recipe = "nullius-trace-separation"
      },
      {
        type = "unlock-recipe",
        recipe = "nullius-pressure-trace-separation"
      },
      {
        type = "unlock-recipe",
        recipe = "nullius-compressed-helium"
      },
      {
        type = "unlock-recipe",
        recipe = "nullius-decompress-helium"
      },
      {
        type = "unlock-recipe",
        recipe = "nullius-compressed-trace-gas"
      },
      {
        type = "unlock-recipe",
        recipe = "nullius-decompress-trace-gas"
      },
      {
        type = "unlock-recipe",
        recipe = "fill-nullius-compressed-helium-barrel"
      },
      {
        type = "unlock-recipe",
        recipe = "empty-nullius-compressed-helium-barrel"
      },
      {
        type = "unlock-recipe",
        recipe = "fill-nullius-compressed-trace-gas-barrel"
      },
      {
        type = "unlock-recipe",
        recipe = "empty-nullius-compressed-trace-gas-barrel"
      }
    },
    unit = {
      count = 2000,
      ingredients = {
        {"nullius-climatology-pack", 2},
        {"nullius-mechanical-pack", 1}, {"nullius-electrical-pack", 1},
        {"nullius-chemical-pack", 1}, {"nullius-physics-pack", 1}
      },
      time = 45
    },
    prerequisites = {"nullius-wind-power-3", "nullius-distillation-3"}
  },
  {
    type = "technology",
    name = "nullius-battery-storage-3",
    order = "nullius-fj",
    icon = "__base__/graphics/technology/battery.png",
    icon_size = 256,
    icon_mipmaps = 4,
    effects = {
      {
        type = "unlock-recipe",
        recipe = "nullius-battery-2"
      },
      {
        type = "unlock-recipe",
        recipe = "nullius-battery-recharging-2"
      },
      {
        type = "unlock-recipe",
        recipe = "nullius-boxed-battery-2"
      },
      {
        type = "unlock-recipe",
        recipe = "nullius-box-battery-2"
      },
      {
        type = "unlock-recipe",
        recipe = "nullius-unbox-battery-2"
      },
      {
        type = "unlock-recipe",
        recipe = "nullius-boxed-battery-recharging-2"
      }
    },
    unit = {
      count = 1500,
      ingredients = {
        {"nullius-geology-pack", 1}, {"nullius-climatology-pack", 1},
        {"nullius-mechanical-pack", 1}, {"nullius-electrical-pack", 2},
        {"nullius-chemical-pack", 2}, {"nullius-physics-pack", 1}
      },
      time = 45
    },
    prerequisites = {"nullius-lithium-production", "nullius-chemical-engineering-3", "nullius-energy-storage-4"}
  },
  {
    type = "technology",
    name = "nullius-venting-3",
    order = "nullius-fj",
	icons = {{
      icon = "__angelspetrochem__/graphics/technology/flare-stack-tech.png",
      icon_size = 256,
	  icon_mipmaps = 4
	}},
    effects = {
      {
        type = "unlock-recipe",
        recipe = "nullius-outfall-3"
      },
      {
        type = "unlock-recipe",
        recipe = "nullius-chimney-3"
      }
    },
    unit = {
      count = 1600,
      ingredients = {
        {"nullius-geology-pack", 1}, {"nullius-climatology-pack", 2},
        {"nullius-mechanical-pack", 1},
        {"nullius-chemical-pack", 1}, {"nullius-physics-pack", 1}
      },
      time = 45
    },
    prerequisites = {"nullius-air-separation-3", "nullius-lithium-production"}
  },

  {
    type = "technology",
    name = "nullius-robot-battery-1",
    order = "nullius-fk",
    icons = {{
      icon = "__base__/graphics/technology/worker-robots-storage.png",
      icon_size = 256,
      icon_mipmaps = 4,
      tint = {0.6, 0.9, 1}
    }},
    effects = {
      {
        type = "worker-robot-battery",
        modifier = 0.1
      }
    },
    unit = {
      count = 2200,
      ingredients = {
        {"nullius-geology-pack", 1}, {"nullius-climatology-pack", 1},
        {"nullius-mechanical-pack", 1}, {"nullius-electrical-pack", 1},
        {"nullius-chemical-pack", 1}, {"nullius-physics-pack", 1}
      },
      time = 45
    },
    prerequisites = {"nullius-checkpoint-battery-2", "nullius-robot-speed-3"},
    upgrade = true
  },
  {
    type = "technology",
    name = "nullius-experimental-chemistry-2",
    order = "nullius-fk",
    icon = "__base__/graphics/technology/logistic-science-pack.png",
    icon_size = 256,
    icon_mipmaps = 4,
    effects = {
      {
        type = "unlock-recipe",
        recipe = "nullius-chemical-pack-2"
      }
    },
    unit = {
      count = 1800,
      ingredients = {
        {"nullius-geology-pack", 1}, {"nullius-climatology-pack", 1},
        {"nullius-mechanical-pack", 1}, {"nullius-electrical-pack", 1},
		{"nullius-chemical-pack", 3}, {"nullius-physics-pack", 1}
      },
      time = 45
    },
    prerequisites = {"nullius-battery-storage-3", "nullius-calcium-production"}
  },
  {
    type = "technology",
    name = "nullius-volcanism-2",
    order = "nullius-fk",
    icon = "__base__/graphics/technology/oil-gathering.png",
    icon_size = 256,
    icon_mipmaps = 4,
    effects = {
      {
        type = "unlock-recipe",
        recipe = "nullius-extractor-2"
      },
      {
        type = "unlock-recipe",
        recipe = "nullius-volcanic-separation-3"
      },
	  {
        type = "unlock-recipe",
        recipe = "nullius-boxed-volcanic-2"
      }
    },
    unit = {
      count = 2200,
      ingredients = {
        {"nullius-geology-pack", 2}, {"nullius-climatology-pack", 2},
        {"nullius-mechanical-pack", 1}, {"nullius-chemical-pack", 1},
        {"nullius-physics-pack", 1}
      },
      time = 45
    },
    prerequisites = {"nullius-venting-3", "nullius-experimental-chemistry-2"}
  },
  {
    type = "technology",
    name = "nullius-steelmaking-3",
    order = "nullius-fk",
    icon = "__base__/graphics/technology/steel-processing.png",
    icon_size = 256,
    icon_mipmaps = 4,
    effects = {
      {
        type = "unlock-recipe",
        recipe = "nullius-steel-ingot-3"
      },
      {
        type = "unlock-recipe",
        recipe = "nullius-boxed-steel-ingot-2"
      },
      {
        type = "unlock-recipe",
        recipe = "nullius-steel-ingot-hydrogen"
      },
      {
        type = "unlock-recipe",
        recipe = "nullius-thermite"
      },
	  {
        type = "unlock-recipe",
        recipe = "nullius-boxed-thermite"
      }
    },
    unit = {
      count = 2200,
      ingredients = {
        {"nullius-geology-pack", 1}, {"nullius-climatology-pack", 1},
        {"nullius-mechanical-pack", 1}, {"nullius-electrical-pack", 1},
        {"nullius-chemical-pack", 1}, {"nullius-physics-pack", 1}
      },
      time = 45
    },
    prerequisites = {"nullius-checkpoint-calcium", "nullius-aluminum-production-3"}
  },
  {
    type = "technology",
    name = "nullius-energy-distribution-5",
    order = "nullius-fk",
    icon = "__base__/graphics/technology/electric-energy-distribution-2.png",
    icon_size = 256,
    icon_mipmaps = 4,
    effects = {
      {
        type = "unlock-recipe",
        recipe = "nullius-power-pole-4"
      },
      {
        type = "unlock-recipe",
        recipe = "nullius-pylon-3"
      },
      {
        type = "unlock-recipe",
        recipe = "nullius-substation-3"
      },
      {
        type = "unlock-recipe",
        recipe = "nullius-boxed-power-pole-4"
      },
      {
        type = "unlock-recipe",
        recipe = "nullius-box-power-pole-4"
      },
      {
        type = "unlock-recipe",
        recipe = "nullius-unbox-power-pole-4"
      },
      {
        type = "unlock-recipe",
        recipe = "nullius-boxed-pylon-3"
      },
      {
        type = "unlock-recipe",
        recipe = "nullius-box-pylon-3"
      },
      {
        type = "unlock-recipe",
        recipe = "nullius-unbox-pylon-3"
      },
      {
        type = "unlock-recipe",
        recipe = "nullius-boxed-substation-3"
      }
    },
    unit = {
      count = 2000,
      ingredients = {
        {"nullius-geology-pack", 1}, {"nullius-climatology-pack", 1},
        {"nullius-mechanical-pack", 1}, {"nullius-electrical-pack", 2},
        {"nullius-chemical-pack", 1}, {"nullius-physics-pack", 1}
      },
      time = 45
    },
    prerequisites = {"nullius-wind-power-3", "nullius-calcium-production"}
  },
  {
    type = "technology",
    name = "nullius-silicon-production-3",
    order = "nullius-fk",
	icons = data.raw.item["nullius-polycrystalline-silicon"].icons,
    effects = {
      {
        type = "unlock-recipe",
        recipe = "nullius-polycrystalline-silicon-2"
      },
      {
        type = "unlock-recipe",
        recipe = "nullius-boxed-polycrystalline-silicon-2"
      }
    },
    unit = {
      count = 2200,
      ingredients = {
        {"nullius-geology-pack", 1}, {"nullius-climatology-pack", 1},
        {"nullius-mechanical-pack", 1}, {"nullius-electrical-pack", 1},
        {"nullius-chemical-pack", 1}, {"nullius-physics-pack", 1}
      },
      time = 45
    },
    prerequisites = {"nullius-checkpoint-helium", "nullius-chemical-engineering-3"}
  },

  {
    type = "technology",
    name = "nullius-inserter-capacity-4",
    order = "nullius-fl",
    icon = "__base__/graphics/technology/inserter-capacity.png",
    icon_size = 256,
    icon_mipmaps = 4,
    effects = {
      {
        type = "stack-inserter-capacity-bonus",
        modifier = 1
      },
      {
        type = "inserter-stack-size-bonus",
        modifier = 1
      }
    },
    unit = {
      count = 2500,
      ingredients = {
        {"nullius-geology-pack", 1}, {"nullius-mechanical-pack", 2},
        {"nullius-electrical-pack", 1}, {"nullius-physics-pack", 1}
      },
      time = 45
    },
    prerequisites = {"nullius-steelmaking-3"}
  },
  {
    type = "technology",
    name = "nullius-titanium-production-3",
    order = "nullius-fl",
    icon = "__angelssmelting__/graphics/technology/smelting-titanium-tech.png",
    icon_size = 256,
    icon_mipmaps = 4,
    effects = {
      {
        type = "unlock-recipe",
        recipe = "nullius-titanium-ingot-2"
      },
      {
        type = "unlock-recipe",
        recipe = "nullius-boxed-titanium-ingot-2"
      },
      {
        type = "unlock-recipe",
        recipe = "nullius-rutile-disposal"
      },
      {
        type = "unlock-recipe",
        recipe = "nullius-boxed-rutile-disposal"
      }
    },
    unit = {
      count = 2400,
      ingredients = {
        {"nullius-geology-pack", 1}, {"nullius-climatology-pack", 1},
        {"nullius-mechanical-pack", 1}, {"nullius-electrical-pack", 1},
        {"nullius-chemical-pack", 1}, {"nullius-physics-pack", 1}
      },
      time = 45
    },
    prerequisites = {"nullius-steelmaking-3", "nullius-silicon-production-3", "nullius-venting-3"}
  },
  {
    type = "technology",
    name = "nullius-battery-storage-4",
    order = "nullius-fl",
    icon = "__base__/graphics/technology/electric-energy-acumulators.png",
    icon_size = 256,
    icon_mipmaps = 4,
    effects = {
      {
        type = "unlock-recipe",
        recipe = "nullius-grid-battery-2"
      },
      {
        type = "unlock-recipe",
        recipe = "nullius-boxed-grid-battery-2"
      },
      {
        type = "unlock-recipe",
        recipe = "nullius-box-grid-battery-2"
      },
      {
        type = "unlock-recipe",
        recipe = "nullius-unbox-grid-battery-2"
      }
    },
    unit = {
      count = 2400,
      ingredients = {
        {"nullius-geology-pack", 1}, {"nullius-climatology-pack", 1},
        {"nullius-mechanical-pack", 1}, {"nullius-electrical-pack", 1},
        {"nullius-chemical-pack", 1}, {"nullius-physics-pack", 1}
      },
      time = 45
    },
    prerequisites = {"nullius-robot-battery-1", "nullius-energy-distribution-5"}
  },
  {
    type = "technology",
    name = "nullius-thermal-storage-3",
    order = "nullius-fl",
    icon = "__nullius__/graphics/icons/entity/thermaltank3.png",
	icon_size = 64,
    effects = {
      {
        type = "unlock-recipe",
        recipe = "nullius-heat-pipe-3"
      },
      {
        type = "unlock-recipe",
        recipe = "nullius-boxed-heat-pipe-3"
      },
      {
        type = "unlock-recipe",
        recipe = "nullius-box-heat-pipe-3"
      },
      {
        type = "unlock-recipe",
        recipe = "nullius-unbox-heat-pipe-3"
      },
      {
        type = "unlock-recipe",
        recipe = "nullius-thermal-tank-3"
      }
    },
    unit = {
      count = 2400,
      ingredients = {
        {"nullius-geology-pack", 1}, {"nullius-climatology-pack", 1},
        {"nullius-mechanical-pack", 1}, {"nullius-electrical-pack", 1},
        {"nullius-chemical-pack", 1}, {"nullius-physics-pack", 1}
      },
      time = 45
    },
    prerequisites = {"nullius-checkpoint-helium", "nullius-energy-distribution-5", "nullius-steelmaking-3"}
  },
  {
    type = "technology",
    name = "nullius-electrolysis-4",
    order = "nullius-fl",
    icon_size = 128,
    icon = "__angelspetrochem__/graphics/technology/electrolyser-tech.png",
    effects = {
      {
        type = "unlock-recipe",
        recipe = "nullius-electrolyzer-3"
      }
    },
    unit = {
      count = 2400,
      ingredients = {
        {"nullius-geology-pack", 1}, {"nullius-climatology-pack", 1},
        {"nullius-mechanical-pack", 1}, {"nullius-electrical-pack", 1},
        {"nullius-chemical-pack", 1}, {"nullius-physics-pack", 1}
      },
      time = 45
    },
    prerequisites = {"nullius-energy-distribution-5", "nullius-air-separation-3"}
  },

  {
    type = "technology",
    name = "nullius-electronics-3",
    order = "nullius-fm",
    icon = "__base__/graphics/technology/advanced-electronics-2.png",
    icon_size = 256,
    icon_mipmaps = 4,
    effects = {
      {
        type = "unlock-recipe",
        recipe = "nullius-processor-2"
      },
      {
        type = "unlock-recipe",
        recipe = "nullius-boxed-processor-2"
      },
      {
        type = "unlock-recipe",
        recipe = "nullius-box-processor-2"
      },
      {
        type = "unlock-recipe",
        recipe = "nullius-unbox-processor-2"
      }
    },
    unit = {
      count = 2200,
      ingredients = {
        {"nullius-geology-pack", 1}, {"nullius-climatology-pack", 1},
        {"nullius-mechanical-pack", 1}, {"nullius-electrical-pack", 2},
        {"nullius-chemical-pack", 1}, {"nullius-physics-pack", 1}
      },
      time = 50
    },
    prerequisites = {"nullius-titanium-production-3", "nullius-thermal-storage-3", "nullius-checkpoint-battery-2"}
  },
  {
    type = "technology",
    name = "nullius-geothermal-power-3",
    order = "nullius-fm",
    icon_size = 64,
    icon = "__angelssmelting__/graphics/icons/chemical-furnace.png",
    effects = {
      {
        type = "unlock-recipe",
        recipe = "nullius-geothermal-plant-3"
      },
      {
        type = "unlock-recipe",
        recipe = "nullius-stirling-engine-3"
      }
    },
    unit = {
      count = 2500,
      ingredients = {
        {"nullius-geology-pack", 2}, {"nullius-climatology-pack", 1},
        {"nullius-mechanical-pack", 1}, {"nullius-electrical-pack", 1},
        {"nullius-chemical-pack", 1}, {"nullius-physics-pack", 1}
      },
      time = 50
    },
    prerequisites = {"nullius-volcanism-2", "nullius-thermal-storage-3", "nullius-battery-storage-4"}
  },
  {
    type = "technology",
    name = "nullius-isotope-separation",
    order = "nullius-fm",
    icon_size = 72,
    icon = "__angelspetrochem__/graphics/icons/molecules/semiheavy-water.png",
    effects = {
      {
        type = "unlock-recipe",
        recipe = "nullius-heavy-water"
      },
      {
        type = "unlock-recipe",
        recipe = "nullius-deuterium"
      }
    },
    unit = {
      count = 2400,
      ingredients = {
        {"nullius-geology-pack", 1}, {"nullius-climatology-pack", 1},
        {"nullius-mechanical-pack", 1}, {"nullius-electrical-pack", 1},
        {"nullius-chemical-pack", 1}, {"nullius-physics-pack", 2}
      },
      time = 50
    },
    prerequisites = {"nullius-electrolysis-4", "nullius-checkpoint-helium", "nullius-experimental-chemistry-2"}
  },
  {
    type = "technology",
    name = "nullius-personal-storage-2",
    order = "nullius-fm",
    icon = "__base__/graphics/technology/toolbelt.png",
    icon_size = 256,
    icon_mipmaps = 4,
    effects = {
      {
        type = "character-inventory-slots-bonus",
        modifier = 10
      },
      {
        type = "unlock-recipe",
        recipe = "nullius-small-cargo-pod-2"
      },
	  {
        type = "unlock-recipe",
        recipe = "nullius-trash-compactor-2"
      }
    },
    unit = {
      count = 2500,
      ingredients = {
        {"nullius-geology-pack", 1}, {"nullius-climatology-pack", 1},
        {"nullius-mechanical-pack", 1}, {"nullius-electrical-pack", 1},
        {"nullius-chemical-pack", 1}, {"nullius-physics-pack", 1}
      },
      time = 50
    },
    prerequisites = {"nullius-distribution-4"}
  },

  {
    type = "technology",
    name = "nullius-air-separation-4",
    order = "nullius-fn",
    icons = data.raw.fluid["nullius-compressed-residual-gas"].icons,
    effects = {
      {
        type = "unlock-recipe",
        recipe = "nullius-residual-gas"
      }
    },
    unit = {
      count = 2700,
      ingredients = {
        {"nullius-climatology-pack", 2}, {"nullius-mechanical-pack", 1},
        {"nullius-chemical-pack", 1}, {"nullius-physics-pack", 1}
      },
      time = 50
    },
    prerequisites = {"nullius-isotope-separation"}
  },
  {
    type = "technology",
    name = "nullius-solar-thermal-power-3",
    order = "nullius-fn",
    icon = ENTICONPATH .. "collector3.png",
    icon_size = 64,
    effects = {
      {
        type = "unlock-recipe",
        recipe = "nullius-solar-collector-3"
      },
      {
        type = "unlock-recipe",
        recipe = "nullius-box-solar-collector-3"
      },
      {
        type = "unlock-recipe",
        recipe = "nullius-unbox-solar-collector-3"
      },
      {
        type = "unlock-recipe",
        recipe = "nullius-boxed-solar-collector-3"
      }
    },
    unit = {
      count = 2400,
      ingredients = {
        {"nullius-geology-pack", 1}, {"nullius-climatology-pack", 2},
        {"nullius-mechanical-pack", 1}, {"nullius-electrical-pack", 1},
        {"nullius-chemical-pack", 1}, {"nullius-physics-pack", 1}
      },
      time = 50
    },
    prerequisites = {"nullius-geothermal-power-3", "nullius-silicon-production-3"}
  },
  {
    type = "technology",
    name = "nullius-robot-cargo-2",
    order = "nullius-fn",
    icon = "__base__/graphics/technology/worker-robots-storage.png",
    icon_size = 256,
    icon_mipmaps = 4,
    effects = {
      {
        type = "worker-robot-storage",
        modifier = 1
      }
    },
    unit = {
      count = 2500,
      ingredients = {
        {"nullius-geology-pack", 1}, {"nullius-climatology-pack", 1},
        {"nullius-mechanical-pack", 2}, {"nullius-electrical-pack", 1},
        {"nullius-chemical-pack", 1}, {"nullius-physics-pack", 1}
      },
      time = 50
    },
    prerequisites = {"nullius-titanium-production-3", "nullius-inserter-capacity-4", "nullius-robot-battery-1"},
    upgrade = true
  },
  {
    type = "technology",
    name = "nullius-empiricism-5",
    order = "nullius-fn",
    icon = "__base__/graphics/technology/research-speed.png",
    icon_size = 256,
    icon_mipmaps = 4,
    effects = {
      {
        type = "laboratory-speed",
        modifier = 0.2
      }
    },
    unit = {
      count = 2500,
      ingredients = {
        {"nullius-geology-pack", 1}, {"nullius-climatology-pack", 1},
        {"nullius-mechanical-pack", 1}, {"nullius-electrical-pack", 2},
        {"nullius-chemical-pack", 1}, {"nullius-physics-pack", 1}
      },
      time = 50
    },
    prerequisites = {"nullius-electronics-3"}
  },
  {
    type = "technology",
    name = "nullius-distribution-4",
    order = "nullius-fn",
    icon = "__base__/graphics/technology/logistic-system.png",
    icon_size = 256,
    icon_mipmaps = 4,
    effects = {
      {
        type = "unlock-recipe",
        recipe = "nullius-small-storage-chest-2"
      },
      {
        type = "unlock-recipe",
        recipe = "nullius-small-supply-chest-2"
      },
      {
        type = "unlock-recipe",
        recipe = "nullius-small-demand-chest-2"
      },
      {
        type = "unlock-recipe",
        recipe = "nullius-small-buffer-chest-2"
      },
      {
        type = "unlock-recipe",
        recipe = "nullius-small-dispatch-chest-2"
      }
    },
    unit = {
      count = 2700,
      ingredients = {
        {"nullius-geology-pack", 1}, {"nullius-climatology-pack", 1},
        {"nullius-mechanical-pack", 1}, {"nullius-electrical-pack", 1},
        {"nullius-chemical-pack", 1}, {"nullius-physics-pack", 1}
      },
      time = 50
    },
    prerequisites = {"nullius-electronics-3", "nullius-robot-cargo-2"}
  },

  {
    type = "technology",
    name = "nullius-nuclear-power-1",
    order = "nullius-fo",
    icon = "__base__/graphics/technology/nuclear-power.png",
    icon_size = 256,
    icon_mipmaps = 4,
    effects = {
      {
        type = "unlock-recipe",
        recipe = "nullius-reactor"
      },
      {
        type = "unlock-recipe",
        recipe = "nullius-fusion-cell"
      },
      {
        type = "unlock-recipe",
        recipe = "nullius-fusion-recycling"
      },
      {
        type = "unlock-recipe",
        recipe = "nullius-portable-reactor"
      }
    },
    unit = {
      count = 2700,
      ingredients = {
        {"nullius-geology-pack", 1}, {"nullius-climatology-pack", 1},
        {"nullius-mechanical-pack", 1}, {"nullius-electrical-pack", 1},
        {"nullius-chemical-pack", 1}, {"nullius-physics-pack", 2}
      },
      time = 50
    },
    prerequisites = {"nullius-checkpoint-tritium", "nullius-checkpoint-thermal-tank", "nullius-empiricism-5"}
  },
  {
    type = "technology",
    name = "nullius-optimization-5",
    order = "nullius-fo",
    icon = "__base__/graphics/technology/module.png",
    icon_size = 256,
    icon_mipmaps = 4,
    effects = {
      {
        type = "unlock-recipe",
        recipe = "nullius-haste-module-3"
      },
      {
        type = "unlock-recipe",
        recipe = "nullius-efficiency-module-3"
      },
      {
        type = "unlock-recipe",
        recipe = "nullius-yield-module-3"
      },
      {
        type = "unlock-recipe",
        recipe = "nullius-speed-module-3"
      },
      {
        type = "unlock-recipe",
        recipe = "nullius-productivity-module-2"
      },
      {
        type = "unlock-recipe",
        recipe = "nullius-boxed-haste-module-3"
      },
      {
        type = "unlock-recipe",
        recipe = "nullius-boxed-efficiency-module-3"
      },
      {
        type = "unlock-recipe",
        recipe = "nullius-boxed-yield-module-3"
      },
      {
        type = "unlock-recipe",
        recipe = "nullius-boxed-speed-module-3"
      },
      {
        type = "unlock-recipe",
        recipe = "nullius-boxed-productivity-module-2"
      },
      {
        type = "unlock-recipe",
        recipe = "nullius-box-haste-module-3"
      },
      {
        type = "unlock-recipe",
        recipe = "nullius-box-efficiency-module-3"
      },
      {
        type = "unlock-recipe",
        recipe = "nullius-box-yield-module-3"
      },
      {
        type = "unlock-recipe",
        recipe = "nullius-box-speed-module-3"
      },
      {
        type = "unlock-recipe",
        recipe = "nullius-box-productivity-module-2"
      },
      {
        type = "unlock-recipe",
        recipe = "nullius-unbox-haste-module-3"
      },
      {
        type = "unlock-recipe",
        recipe = "nullius-unbox-efficiency-module-3"
      },
      {
        type = "unlock-recipe",
        recipe = "nullius-unbox-yield-module-3"
      },
      {
        type = "unlock-recipe",
        recipe = "nullius-unbox-speed-module-3"
      },
      {
        type = "unlock-recipe",
        recipe = "nullius-unbox-productivity-module-2"
      }
    },
    unit = {
      count = 2700,
      ingredients = {
        {"nullius-mechanical-pack", 1}, {"nullius-electrical-pack", 2},
        {"nullius-chemical-pack", 1}, {"nullius-physics-pack", 1}
      },
      time = 50
    },
    prerequisites = {"nullius-empiricism-5", "nullius-battery-storage-4"}
  },
  {
    type = "technology",
    name = "nullius-distribution-5",
    order = "nullius-fo",
    icon = "__base__/graphics/technology/logistic-system.png",
    icon_size = 256,
    icon_mipmaps = 4,
    effects = {
      {
        type = "unlock-recipe",
        recipe = "nullius-large-storage-chest-2"
      },
      {
        type = "unlock-recipe",
        recipe = "nullius-large-supply-chest-2"
      },
      {
        type = "unlock-recipe",
        recipe = "nullius-large-demand-chest-2"
      },
      {
        type = "unlock-recipe",
        recipe = "nullius-large-buffer-chest-2"
      },
      {
        type = "unlock-recipe",
        recipe = "nullius-large-dispatch-chest-2"
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
    prerequisites = {"nullius-distribution-4", "nullius-robot-cargo-2"}
  },

  {
    type = "technology",
    name = "nullius-boiling-3",
    order = "nullius-fp",
	icon = ENTICONPATH .. "exchanger3.png",
	icon_size = 64,
    effects = {
      {
        type = "unlock-recipe",
        recipe = "nullius-heat-exchanger-3"
      },
	  {
        type = "unlock-recipe",
        recipe = "nullius-pressure-boiling-water"
      },
	  {
        type = "unlock-recipe",
        recipe = "nullius-pressure-boiling-saline"
      },
	  {
        type = "unlock-recipe",
        recipe = "nullius-pressure-boiling-brine"
      },
	  {
        type = "unlock-recipe",
        recipe = "nullius-pressure-boiling-seawater"
      },
	  {
        type = "unlock-recipe",
        recipe = "nullius-pressure-boiling-freshwater"
      },
	  {
        type = "unlock-recipe",
        recipe = "nullius-pressure-boiling-wastewater"
      },
	  {
        type = "unlock-recipe",
        recipe = "nullius-decompress-steam"
      }
    },
    unit = {
      count = 3000,
      ingredients = {
        {"nullius-geology-pack", 1}, {"nullius-climatology-pack", 1},
        {"nullius-mechanical-pack", 2},
        {"nullius-chemical-pack", 1}, {"nullius-physics-pack", 1}
      },
      time = 50
    },
    prerequisites = {"nullius-nuclear-power-1", "nullius-solar-thermal-power-3"}
  },
  {
    type = "technology",
    name = "nullius-braking-7",
    order = "nullius-fp",
    icon = "__base__/graphics/technology/braking-force.png",
    icon_size = 256,
    icon_mipmaps = 4,
    effects = {
      {
        type = "train-braking-force-bonus",
        modifier = 0.1
      }
    },
    unit = {
      count = 3200,
      ingredients = {
        {"nullius-geology-pack", 1}, {"nullius-climatology-pack", 1},
        {"nullius-mechanical-pack", 1}, {"nullius-electrical-pack", 1},
        {"nullius-chemical-pack", 1}, {"nullius-physics-pack", 1}
      },
      time = 50
    },
    prerequisites = {"nullius-braking-6", "nullius-robot-cargo-2"},
    upgrade = true
  },
  {
    type = "technology",
    name = "nullius-nanotechnology-2",
    order = "nullius-fp",
    icon_size = 64,
    icon = "__angelsrefining__/graphics/icons/crystallizer.png",
    effects = {
      {
        type = "unlock-recipe",
        recipe = "nullius-nanofabricator-2"
      }
    },
    unit = {
      count = 3000,
      ingredients = {
        {"nullius-geology-pack", 1}, {"nullius-climatology-pack", 1},
        {"nullius-mechanical-pack", 1}, {"nullius-electrical-pack", 1},
        {"nullius-chemical-pack", 1}, {"nullius-physics-pack", 2}
      },
      time = 50
    },
    prerequisites = {"nullius-distribution-5", "nullius-air-separation-4"}
  },
  {
    type = "technology",
    name = "nullius-robotics-3",
    order = "nullius-fp",
    icon = "__base__/graphics/technology/robotics.png",
    icon_size = 256,
    icon_mipmaps = 4,
    effects = {
      {
        type = "unlock-recipe",
        recipe = "nullius-hangar-3"
      },
      {
        type = "unlock-recipe",
        recipe = "nullius-charger-3"
      },
      {
        type = "unlock-recipe",
        recipe = "nullius-relay-3"
      },
      {
        type = "unlock-recipe",
        recipe = "nullius-robot-frame-3"
      },
      {
        type = "unlock-recipe",
        recipe = "nullius-boxed-charger-3"
      },
      {
        type = "unlock-recipe",
        recipe = "nullius-box-charger-3"
      },
      {
        type = "unlock-recipe",
        recipe = "nullius-unbox-charger-3"
      },
      {
        type = "unlock-recipe",
        recipe = "nullius-boxed-relay-3"
      },
      {
        type = "unlock-recipe",
        recipe = "nullius-box-relay-3"
      },
      {
        type = "unlock-recipe",
        recipe = "nullius-unbox-relay-3"
      },
      {
        type = "unlock-recipe",
        recipe = "nullius-boxed-robot-frame-3"
      },
      {
        type = "unlock-recipe",
        recipe = "nullius-box-robot-frame-3"
      },
      {
        type = "unlock-recipe",
        recipe = "nullius-unbox-robot-frame-3"
      }
    },
    unit = {
      count = 3200,
      ingredients = {
        {"nullius-geology-pack", 1}, {"nullius-climatology-pack", 1},
        {"nullius-mechanical-pack", 1}, {"nullius-electrical-pack", 1},
        {"nullius-chemical-pack", 1}, {"nullius-physics-pack", 1}
      },
      time = 50
    },
    prerequisites = {"nullius-distribution-5", "nullius-optimization-5"}
  },

  {
    type = "technology",
    name = "nullius-high-pressure-chemistry-2",
    order = "nullius-fq",
    icon = ICONPATH .. "fluid/steam2.png",
    icon_size = 64,
    effects = {
      {
        type = "unlock-recipe",
        recipe = "nullius-pressure-benzene-reforming"
      },
	  {
        type = "unlock-recipe",
        recipe = "nullius-pressure-butadiene"
      },
	  {
        type = "unlock-recipe",
        recipe = "nullius-desalination-3"
      },
      {
        type = "unlock-recipe",
        recipe = "nullius-high-pressure-steam-electrolysis"
      },
      {
        type = "unlock-recipe",
        recipe = "nullius-carbon-gasification-2"
      },
      {
        type = "unlock-recipe",
        recipe = "nullius-boxed-carbon-gasification-2"
      },
      {
        type = "unlock-recipe",
        recipe = "nullius-sludge-dehydration"
      }
    },
    unit = {
      count = 3000,
      ingredients = {
        {"nullius-geology-pack", 1}, {"nullius-climatology-pack", 1},
        {"nullius-mechanical-pack", 2}, {"nullius-electrical-pack", 1},
        {"nullius-chemical-pack", 2}, {"nullius-physics-pack", 1}
      },
      time = 50
    },
    prerequisites = {"nullius-boiling-3"}
  },
  {
    type = "technology",
    name = "nullius-toolmaking-8",
    order = "nullius-fq",
    icon = "__base__/graphics/technology/personal-laser-defense-equipment.png",
    icon_size = 256,
    icon_mipmaps = 4,
    effects = {
      {
        type = "character-mining-speed",
        modifier = 0.15
      },
      {
        type = "character-crafting-speed",
        modifier = 0.5
      },
      {
        type = "unlock-recipe",
        recipe = "nullius-multi-tool-2"
      }
    },
    unit = {
      count = 3500,
      ingredients = {
        {"nullius-mechanical-pack", 1}, {"nullius-electrical-pack", 1},
		{"nullius-physics-pack", 1}
      },
      time = 50
    },
    prerequisites = {"nullius-checkpoint-processor-2", "nullius-locomotion-4"}
  },
  {
    type = "technology",
    name = "nullius-miniaturization-1",
    order = "nullius-fq",
    icon = "__base__/graphics/technology/electronics.png",
    icon_size = 256,
    icon_mipmaps = 4,
    effects = {
      {
        type = "unlock-recipe",
        recipe = "nullius-capacitor-2"
      },
      {
        type = "unlock-recipe",
        recipe = "nullius-memory-circuit-2"
      }
    },
    unit = {
      count = 3400,
      ingredients = {
        {"nullius-geology-pack", 1}, {"nullius-climatology-pack", 1},
        {"nullius-mechanical-pack", 1}, {"nullius-electrical-pack", 1},
        {"nullius-chemical-pack", 1}, {"nullius-physics-pack", 1}
      },
      time = 50
    },
    prerequisites = {"nullius-nanotechnology-2", "nullius-checkpoint-processor-2"}
  },
  {
    type = "technology",
    name = "nullius-logistic-robot-3",
    order = "nullius-fq",
    icon = "__base__/graphics/technology/logistic-robotics.png",
    icon_size = 256,
    icon_mipmaps = 4,
    effects = {
      {
        type = "unlock-recipe",
        recipe = "nullius-logistic-bot-3"
      },
      {
        type = "unlock-recipe",
        recipe = "nullius-boxed-logistic-bot-3"
      },
      {
        type = "unlock-recipe",
        recipe = "nullius-box-logistic-bot-3"
      },
      {
        type = "unlock-recipe",
        recipe = "nullius-unbox-logistic-bot-3"
      },
      {
        type = "character-logistic-trash-slots",
        modifier = 10
      }
    },
    unit = {
      count = 3400,
      ingredients = {
        {"nullius-geology-pack", 1}, {"nullius-climatology-pack", 1},
        {"nullius-mechanical-pack", 1}, {"nullius-electrical-pack", 1},
        {"nullius-chemical-pack", 1}, {"nullius-physics-pack", 1}
      },
      time = 50
    },
    prerequisites = {"nullius-robotics-3", "nullius-personal-storage-2"}
  },
  {
    type = "technology",
    name = "nullius-construction-robot-3",
    order = "nullius-fq",
    icon = "__base__/graphics/technology/construction-robotics.png",
    icon_size = 256,
    icon_mipmaps = 4,
    effects = {
      {
        type = "unlock-recipe",
        recipe = "nullius-construction-bot-3"
      },
      {
        type = "unlock-recipe",
        recipe = "nullius-boxed-construction-bot-3"
      },
      {
        type = "unlock-recipe",
        recipe = "nullius-box-construction-bot-3"
      },
      {
        type = "unlock-recipe",
        recipe = "nullius-unbox-construction-bot-3"
      },
      {
        type = "ghost-time-to-live",
        modifier = 60 * 60 * 60 * 24 * 6
      }
    },
    unit = {
      count = 3400,
      ingredients = {
        {"nullius-geology-pack", 1}, {"nullius-climatology-pack", 1},
        {"nullius-mechanical-pack", 1}, {"nullius-electrical-pack", 1},
        {"nullius-chemical-pack", 1}, {"nullius-physics-pack", 1}
      },
      time = 50
    },
    prerequisites = {"nullius-robotics-3"}
  },
  {
    type = "technology",
    name = "nullius-locomotion-4",
    order = "nullius-fq",
    icon = "__base__/graphics/technology/exoskeleton-equipment.png",
    icon_size = 256,
    icon_mipmaps = 4,
    effects = {
      {
        type = "character-running-speed",
        modifier = 0.1
      }
    },
    unit = {
      count = 3400,
      ingredients = {
        {"nullius-geology-pack", 1}, {"nullius-climatology-pack", 1},
        {"nullius-mechanical-pack", 1}, {"nullius-electrical-pack", 1},
        {"nullius-chemical-pack", 1}, {"nullius-physics-pack", 1}
      },
      time = 50
    },
    prerequisites = {"nullius-braking-7", "nullius-personal-storage-2"}
  },

  {
    type = "technology",
    name = "nullius-electrical-engineering-2",
    order = "nullius-fr",
    icons = {
      {
        icon = "__base__/graphics/technology/production-science-pack.png",
        icon_size = 256,
        icon_mipmaps = 4
      },
      {
        icon = "__base__/graphics/icons/processing-unit.png",
        icon_size = 64,
        icon_mipmaps = 4,
        scale = 1.1,
        shift = {0, 34},
        tint = {r=1, g=1, b=1, a=0.5}
      }
    },
    effects = {
      {
        type = "unlock-recipe",
        recipe = "nullius-electrical-pack-2"
      },
      {
        type = "unlock-recipe",
        recipe = "nullius-boxed-electrical-pack-2"
      }
    },
    unit = {
      count = 3000,
      ingredients = {
        {"nullius-geology-pack", 1}, {"nullius-climatology-pack", 1},
        {"nullius-mechanical-pack", 1}, {"nullius-electrical-pack", 3},
        {"nullius-chemical-pack", 1}, {"nullius-physics-pack", 1}
      },
      time = 55
    },
    prerequisites = {"nullius-miniaturization-1", "nullius-toolmaking-8"}
  },
  {
    type = "technology",
    name = "nullius-inserter-capacity-5",
    order = "nullius-fr",
    icon = "__base__/graphics/technology/inserter-capacity.png",
    icon_size = 256,
    icon_mipmaps = 4,
    effects = {
      {
        type = "stack-inserter-capacity-bonus",
        modifier = 1
      }
    },
    unit = {
      count = 3500,
      ingredients = {
        {"nullius-geology-pack", 1}, {"nullius-climatology-pack", 1},
        {"nullius-mechanical-pack", 2}, {"nullius-electrical-pack", 1},
        {"nullius-chemical-pack", 1}, {"nullius-physics-pack", 1}
      },
      time = 55
    },
    prerequisites = {"nullius-robotics-3", "nullius-locomotion-4"}
  },
  {
    type = "technology",
    name = "nullius-demolitions-2",
    order = "nullius-fr",
    icon = "__base__/graphics/technology/atomic-bomb.png",
    icon_size = 256,
    icon_mipmaps = 4,
    effects = {
      {
        type = "unlock-recipe",
        recipe = "nullius-missile-2"
      },
      {
        type = "unlock-recipe",
        recipe = "nullius-boxed-missile-2"
      },
      {
        type = "unlock-recipe",
        recipe = "nullius-box-missile-2"
      },
      {
        type = "unlock-recipe",
        recipe = "nullius-unbox-missile-2"
      }
    },
    unit = {
      count = 3600,
      ingredients = {
        {"nullius-geology-pack", 1}, {"nullius-climatology-pack", 1},
        {"nullius-mechanical-pack", 1}, {"nullius-electrical-pack", 1},
        {"nullius-chemical-pack", 1}, {"nullius-physics-pack", 1}
      },
      time = 55
    },
    prerequisites = {"nullius-nuclear-power-1", "nullius-construction-robot-3"}
  },
  {
    type = "technology",
    name = "nullius-freight-transportation-3",
    order = "nullius-fr",
    icon = "__base__/graphics/technology/railway.png",
    icon_size = 256,
    icon_mipmaps = 4,
    effects = {
      {
        type = "unlock-recipe",
        recipe = "nullius-locomotive-3"
      },
      {
        type = "unlock-recipe",
        recipe = "nullius-solar-locomotive"
      },
      {
        type = "unlock-recipe",
        recipe = "nullius-cargo-wagon-3"
      },
      {
        type = "unlock-recipe",
        recipe = "nullius-fluid-wagon-3"
      }
    },
    unit = {
      count = 3500,
      ingredients = {
        {"nullius-geology-pack", 1}, {"nullius-climatology-pack", 1},
        {"nullius-mechanical-pack", 2}, {"nullius-electrical-pack", 1},
        {"nullius-chemical-pack", 1}, {"nullius-physics-pack", 1}
      },
      time = 55
    },
    prerequisites = {"nullius-logistic-robot-3", "nullius-braking-7", "nullius-boiling-3"}
  },
  {
    type = "technology",
    name = "nullius-broadcasting-3",
    order = "nullius-fr",
    icon = "__base__/graphics/technology/effect-transmission.png",
    icon_size = 256,
    icon_mipmaps = 4,
    effects = {
      {
        type = "unlock-recipe",
        recipe = "nullius-beacon-3"
      },
      {
        type = "unlock-recipe",
        recipe = "nullius-boxed-beacon-3"
      }
    },
    unit = {
      count = 3500,
      ingredients = {
        {"nullius-geology-pack", 1}, {"nullius-climatology-pack", 1},
        {"nullius-mechanical-pack", 1}, {"nullius-electrical-pack", 2},
        {"nullius-chemical-pack", 1}, {"nullius-physics-pack", 1}
      },
      time = 55
    },
    prerequisites = {"nullius-logistic-robot-3", "nullius-toolmaking-8"}
  },

  {
    type = "technology",
    name = "nullius-nuclear-power-2",
    order = "nullius-fs",
    icon = "__nullius__/graphics/icons/aneutronic-cell.png",
    icon_size = 64,
    effects = {
      {
        type = "unlock-recipe",
        recipe = "nullius-aneutronic-cell"
      }
    },
    unit = {
      count = 3000,
      ingredients = {
        {"nullius-geology-pack", 1}, {"nullius-climatology-pack", 1},
        {"nullius-mechanical-pack", 1}, {"nullius-electrical-pack", 1},
        {"nullius-chemical-pack", 1}, {"nullius-physics-pack", 2}
      },
      time = 55
    },
    prerequisites = {"nullius-high-pressure-chemistry-2", "nullius-broadcasting-3"}
  },
  {
    type = "technology",
    name = "nullius-rocket-science-1",
    order = "nullius-fs",
    icon = "__base__/graphics/technology/rocket-fuel.png",
    icon_size = 256,
    icon_mipmaps = 4,
    effects = {
      {
        type = "unlock-recipe",
        recipe = "nullius-rocket-fuel"
      },
      {
        type = "unlock-recipe",
        recipe = "nullius-boxed-rocket-fuel"
      },
      {
        type = "unlock-recipe",
        recipe = "nullius-box-rocket-fuel"
      },
      {
        type = "unlock-recipe",
        recipe = "nullius-unbox-rocket-fuel"
      }
    },
    unit = {
      count = 3500,
      ingredients = {
        {"nullius-geology-pack", 1}, {"nullius-climatology-pack", 1},
        {"nullius-mechanical-pack", 1}, {"nullius-electrical-pack", 1},
        {"nullius-chemical-pack", 2}, {"nullius-physics-pack", 2}
      },
      time = 55
    },
    prerequisites = {"nullius-freight-transportation-3", "nullius-demolitions-2",
		"nullius-high-pressure-chemistry-2"}
  },
  {
    type = "technology",
    name = "nullius-parallel-computing-3",
    order = "nullius-fs",
    icon = EQUIPPATH .. "coprocessor/efficiency3.png",
    icon_size = 64,
    effects = {
      {
        type = "unlock-recipe",
        recipe = "nullius-coprocessor-speed-3"
      },
	  {
        type = "unlock-recipe",
        recipe = "nullius-coprocessor-efficiency-3"
      },
	  {
        type = "unlock-recipe",
        recipe = "nullius-coprocessor-productivity-3"
      }
    },
    unit = {
      count = 3200,
      ingredients = {
        {"nullius-climatology-pack", 1},
        {"nullius-mechanical-pack", 1}, {"nullius-electrical-pack", 2},
        {"nullius-physics-pack", 1}
      },
      time = 55
    },
    prerequisites = {"nullius-electrical-engineering-2", "nullius-logistic-robot-3"}
  },
  {
    type = "technology",
    name = "nullius-personal-transportation-3",
    order = "nullius-fs",
    icon = "__base__/graphics/technology/tank.png",
    icon_size = 256,
    icon_mipmaps = 4,
    effects = {
      {
        type = "unlock-recipe",
        recipe = "nullius-car-3"
      },
      {
        type = "unlock-recipe",
        recipe = "nullius-truck-2"
      }
    },
    unit = {
      count = 3500,
      ingredients = {
        {"nullius-geology-pack", 1}, {"nullius-climatology-pack", 1},
        {"nullius-mechanical-pack", 2}, {"nullius-electrical-pack", 1},
        {"nullius-chemical-pack", 1}, {"nullius-physics-pack", 1}
      },
      time = 55
    },
    prerequisites = {"nullius-freight-transportation-3", "nullius-toolmaking-8"}
  },
  {
    type = "technology",
    name = "nullius-sensors-4",
    order = "nullius-fs",
    icon_size = 64,
    icon = "__base__/graphics/icons/radar.png",
    effects = {
      {
        type = "unlock-recipe",
        recipe = "nullius-sensor-node-3"
      }
    },
    unit = {
      count = 3800,
      ingredients = {
        {"nullius-geology-pack", 1}, {"nullius-climatology-pack", 1},
        {"nullius-mechanical-pack", 1}, {"nullius-electrical-pack", 1},
        {"nullius-chemical-pack", 1}, {"nullius-physics-pack", 1}
      },
      time = 55
    },
    prerequisites = {"nullius-broadcasting-3", "nullius-electrical-engineering-2"}
  },

  {
    type = "technology",
    name = "nullius-robot-speed-4",
    order = "nullius-ft",
    icon = "__base__/graphics/technology/worker-robots-speed.png",
    icon_size = 256,
    icon_mipmaps = 4,
    effects = {
      {
        type = "worker-robot-speed",
        modifier = 0.1
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
    prerequisites = {"nullius-rocket-science-1", "nullius-parallel-computing-3"},
    upgrade = true
  },
  {
    type = "technology",
    name = "nullius-exploration-3",
    order = "nullius-ft",
    icons = data.raw.ammo["nullius-scout-drone-1"].icons,
    effects = {
      {
        type = "unlock-recipe",
        recipe = "nullius-drone-launcher-2"
      },
      {
        type = "unlock-recipe",
        recipe = "nullius-drone-carrier-2"
      },
      {
        type = "unlock-recipe",
        recipe = "nullius-scout-drone-2"
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
    prerequisites = {"nullius-sensors-4", "nullius-personal-transportation-3", "nullius-parallel-computing-3"}
  },
  {
    type = "technology",
    name = "nullius-projection-2",
    order = "nullius-ft",
    icon = "__base__/graphics/technology/discharge-defense-equipment.png",
    icon_size = 256,
    icon_mipmaps = 4,
    effects = {
      {
        type = "character-reach-distance",
        modifier = 2
      },
      {
        type = "character-build-distance",
        modifier = 2
      },
      {
        type = "character-item-drop-distance",
        modifier = 1
      },
      {
        type = "character-resource-reach-distance",
        modifier = 1
      },
      {
        type = "character-loot-pickup-distance",
        modifier = 0.5
      },
      {
        type = "character-item-pickup-distance",
        modifier = 0.5
      },
	  {
        type = "unlock-recipe",
        recipe = "nullius-telekinesis-field-2"
      }
    },
    unit = {
      count = 3600,
      ingredients = {
        {"nullius-geology-pack", 1}, {"nullius-climatology-pack", 1},
        {"nullius-mechanical-pack", 1}, {"nullius-electrical-pack", 1},
        {"nullius-chemical-pack", 1}, {"nullius-physics-pack", 2}
      },
      time = 55
    },
    prerequisites = {"nullius-sensors-4", "nullius-inserter-capacity-5", "nullius-nuclear-power-2"}
  },

  {
    type = "technology",
    name = "nullius-cybernetics-5",
    order = "nullius-fu",
    icon = "__base__/graphics/technology/power-armor-mk2.png",
    icon_size = 256,
    icon_mipmaps = 4,
    effects = {
      {
        type = "unlock-recipe",
        recipe = "nullius-chassis-4"
      },
      {
        type = "unlock-recipe",
        recipe = "nullius-leg-augmentation-2"
      },
      {
        type = "unlock-recipe",
        recipe = "nullius-quadrupedal-adaptation-2"
      },
      {
        type = "unlock-recipe",
        recipe = "nullius-night-vision-3"
      },
      {
        type = "unlock-recipe",
        recipe = "nullius-stabilizer-1"
      },
      {
        type = "character-health-bonus",
        modifier = 100
      }
    },
    unit = {
      count = 4200,
      ingredients = {
        {"nullius-geology-pack", 1}, {"nullius-climatology-pack", 1},
        {"nullius-mechanical-pack", 1}, {"nullius-electrical-pack", 1},
        {"nullius-chemical-pack", 1}, {"nullius-physics-pack", 1}
      },
      time = 55
    },
    prerequisites = {"nullius-personal-transportation-3", "nullius-projection-2", "nullius-parallel-computing-3"}
  },
  {
    type = "technology",
    name = "nullius-reconnaissance-2",
    order = "nullius-fu",
    icon = "__base__/graphics/technology/artillery-range.png",
    icon_size = 256,
    icon_mipmaps = 4,
    effects = {
      {
        type = "artillery-range",
        modifier = 0.25
      }
    },
    unit = {
      count = 4200,
      ingredients = {
        {"nullius-geology-pack", 1}, {"nullius-climatology-pack", 1},
        {"nullius-mechanical-pack", 1}, {"nullius-electrical-pack", 1},
        {"nullius-chemical-pack", 1}, {"nullius-physics-pack", 1}
      },
      time = 55
    },
    prerequisites = {"nullius-exploration-3", "nullius-projection-2"}
  },
  {
    type = "technology",
    name = "nullius-empiricism-6",
    order = "nullius-fu",
    icon = "__base__/graphics/technology/research-speed.png",
    icon_size = 256,
    icon_mipmaps = 4,
    effects = {
      {
        type = "unlock-recipe",
        recipe = "nullius-lab-3"
      }
    },
    unit = {
      count = 4200,
      ingredients = {
        {"nullius-geology-pack", 1}, {"nullius-climatology-pack", 1},
        {"nullius-mechanical-pack", 1}, {"nullius-electrical-pack", 1},
        {"nullius-chemical-pack", 1}, {"nullius-physics-pack", 1}
      },
      time = 55
    },
    prerequisites = {"nullius-exploration-3", "nullius-rocket-science-1"}
  },
  {
    type = "technology",
    name = "nullius-terraforming-1",
    order = "nullius-fu",
    icon = "__base__/graphics/technology/atomic-bomb.png",
    icon_size = 256,
    icon_mipmaps = 4,
    effects = {
      {
        type = "unlock-recipe",
        recipe = "nullius-demolition-drone"
      },
      {
        type = "unlock-recipe",
        recipe = "nullius-demolition-remote"
      },
      {
        type = "unlock-recipe",
        recipe = "nullius-shallow-excavation-drone"
      },
      {
        type = "unlock-recipe",
        recipe = "nullius-excavation-drone"
      },
      {
        type = "unlock-recipe",
        recipe = "nullius-shallow-excavation-remote"
      },
      {
        type = "unlock-recipe",
        recipe = "nullius-excavation-remote"
      }
    },
    unit = {
      count = 4000,
      ingredients = {
        {"nullius-geology-pack", 2}, {"nullius-climatology-pack", 1},
        {"nullius-mechanical-pack", 1}, {"nullius-electrical-pack", 1},
        {"nullius-chemical-pack", 1}, {"nullius-physics-pack", 1}
      },
      time = 55
    },
    prerequisites = {"nullius-robot-speed-4", "nullius-exploration-3", "nullius-checkpoint-demolitions"}
  },

  {
    type = "technology",
    name = "nullius-terraforming-2",
    order = "nullius-fv",
    icon = "__base__/graphics/technology/landfill.png",
    icon_size = 256,
    icon_mipmaps = 4,
    effects = {
      {
        type = "unlock-recipe",
        recipe = "nullius-terraforming-drone-grey"
      },
      {
        type = "unlock-recipe",
        recipe = "nullius-terraforming-remote-grey"
      },
      {
        type = "unlock-recipe",
        recipe = "nullius-terraforming-drone-tan"
      },
      {
        type = "unlock-recipe",
        recipe = "nullius-terraforming-remote-tan"
      },
      {
        type = "unlock-recipe",
        recipe = "nullius-terraforming-drone-brown"
      },
      {
        type = "unlock-recipe",
        recipe = "nullius-terraforming-remote-brown"
      },
      {
        type = "unlock-recipe",
        recipe = "nullius-terraforming-drone-red"
      },
      {
        type = "unlock-recipe",
        recipe = "nullius-terraforming-remote-red"
      },
      {
        type = "unlock-recipe",
        recipe = "nullius-terraforming-drone-beige"
      },
      {
        type = "unlock-recipe",
        recipe = "nullius-terraforming-remote-beige"
      }
    },
    unit = {
      count = 4200,
      ingredients = {
        {"nullius-geology-pack", 2}, {"nullius-climatology-pack", 1},
        {"nullius-mechanical-pack", 1}, {"nullius-electrical-pack", 1},
        {"nullius-chemical-pack", 1}, {"nullius-physics-pack", 1}
      },
      time = 55
    },
    prerequisites = {"nullius-terraforming-1", "nullius-empiricism-6"}
  },
  {
    type = "technology",
    name = "nullius-personal-transportation-4",
    order = "nullius-fv",
    icon = "__base__/graphics/technology/spidertron.png",
    icon_size = 256,
    icon_mipmaps = 4,
    effects = {
      {
        type = "unlock-recipe",
        recipe = "nullius-mecha"
      },
      {
        type = "unlock-recipe",
        recipe = "nullius-mecha-remote"
      }
    },
    unit = {
      count = 4500,
      ingredients = {
        {"nullius-geology-pack", 1}, {"nullius-climatology-pack", 1},
        {"nullius-mechanical-pack", 1}, {"nullius-electrical-pack", 1},
        {"nullius-chemical-pack", 1}, {"nullius-physics-pack", 1}
      },
      time = 55
    },
    prerequisites = {"nullius-terraforming-1", "nullius-cybernetics-5", "nullius-reconnaissance-2"}
  },
  {
    type = "technology",
    name = "nullius-braking-8",
    order = "nullius-fv",
    icon = "__base__/graphics/technology/braking-force.png",
    icon_size = 256,
    icon_mipmaps = 4,
    effects = {
      {
        type = "train-braking-force-bonus",
        modifier = 0.1
      }
    },
    unit = {
      count = 4500,
      ingredients = {
        {"nullius-geology-pack", 1}, {"nullius-climatology-pack", 1},
        {"nullius-mechanical-pack", 1}, {"nullius-electrical-pack", 1},
        {"nullius-chemical-pack", 1}, {"nullius-physics-pack", 1}
      },
      time = 55
    },
    prerequisites = {"nullius-checkpoint-rocket-fuel", "nullius-cybernetics-5"},
    upgrade = true
  },
  {
    type = "technology",
    name = "nullius-broadcasting-4",
    order = "nullius-fv",
    icon = "__base__/graphics/technology/effect-transmission.png",
    icon_size = 256,
    icon_mipmaps = 4,
    effects = {
      {
        type = "unlock-recipe",
        recipe = "nullius-large-beacon-2"
      }
    },
    unit = {
      count = 4000,
      ingredients = {
        {"nullius-climatology-pack", 1}, {"nullius-electrical-pack", 1},
        {"nullius-physics-pack", 1}
      },
      time = 55
    },
    prerequisites = {"nullius-reconnaissance-2", "nullius-empiricism-6"}
  },

  {
    type = "technology",
    name = "nullius-land-fill-5",
    order = "nullius-fw",
    icon = ENTICONPATH.."landfill-grey.png",
    icon_size = 64,
    effects = {
      {
        type = "unlock-recipe",
        recipe = "nullius-land-fill-dust"
      },
      {
        type = "unlock-recipe",
        recipe = "nullius-chlorine-sink"
      },
	  {
        type = "unlock-recipe",
        recipe = "nullius-boron-sink"
      },
      {
        type = "unlock-recipe",
        recipe = "nullius-dumping-rock"
      },
      {
        type = "unlock-recipe",
        recipe = "nullius-dumping-dirt"
      },
      {
        type = "unlock-recipe",
        recipe = "nullius-dumping-sand"
      }
    },
    unit = {
      count = 4000,
      ingredients = {
        {"nullius-geology-pack", 3}, {"nullius-climatology-pack", 2},
        {"nullius-mechanical-pack", 1},
		{"nullius-chemical-pack", 1}, {"nullius-physics-pack", 1}
      },
      time = 60
    },
    prerequisites = {"nullius-terraforming-2", "nullius-checkpoint-excavation-drone"}
  },
  {
    type = "technology",
    name = "nullius-terraforming-3",
    order = "nullius-fw",
    icon = "__base__/graphics/technology/concrete.png",
    icon_size = 256,
    icon_mipmaps = 4,
    effects = {
      {
        type = "unlock-recipe",
        recipe = "nullius-paving-drone-grey"
      },
      {
        type = "unlock-recipe",
        recipe = "nullius-paving-remote-grey"
      },
      {
        type = "unlock-recipe",
        recipe = "nullius-paving-drone-white"
      },
      {
        type = "unlock-recipe",
        recipe = "nullius-paving-remote-white"
      },
      {
        type = "unlock-recipe",
        recipe = "nullius-paving-drone-red"
      },
      {
        type = "unlock-recipe",
        recipe = "nullius-paving-remote-red"
      },
      {
        type = "unlock-recipe",
        recipe = "nullius-paving-drone-blue"
      },
      {
        type = "unlock-recipe",
        recipe = "nullius-paving-remote-blue"
      },
      {
        type = "unlock-recipe",
        recipe = "nullius-paving-drone-yellow"
      },
      {
        type = "unlock-recipe",
        recipe = "nullius-paving-remote-yellow"
      },
      {
        type = "unlock-recipe",
        recipe = "nullius-paving-drone-green"
      },
      {
        type = "unlock-recipe",
        recipe = "nullius-paving-remote-green"
      },
      {
        type = "unlock-recipe",
        recipe = "nullius-paving-drone-purple"
      },
      {
        type = "unlock-recipe",
        recipe = "nullius-paving-remote-purple"
      },
      {
        type = "unlock-recipe",
        recipe = "nullius-paving-drone-brown"
      },
      {
        type = "unlock-recipe",
        recipe = "nullius-paving-remote-brown"
      },
      {
        type = "unlock-recipe",
        recipe = "nullius-paving-drone-black"
      },
      {
        type = "unlock-recipe",
        recipe = "nullius-paving-remote-black"
      },
      {
        type = "unlock-recipe",
        recipe = "nullius-paving-drone-hazard"
      },
      {
        type = "unlock-recipe",
        recipe = "nullius-paving-remote-hazard"
      }
    },
    unit = {
      count = 4500,
      ingredients = {
        {"nullius-geology-pack", 2}, {"nullius-climatology-pack", 1},
        {"nullius-mechanical-pack", 1}, {"nullius-electrical-pack", 1},
        {"nullius-chemical-pack", 1}, {"nullius-physics-pack", 1}
      },
      time = 60
    },
    prerequisites = {"nullius-terraforming-2"}
  },
  {
    type = "technology",
    name = "nullius-rocket-science-2",
    order = "nullius-fw",
    icon = "__base__/graphics/technology/rocket-silo.png",
    icon_size = 256,
    icon_mipmaps = 4,
    effects = {
      {
        type = "unlock-recipe",
        recipe = "nullius-silo"
      },
      {
        type = "unlock-recipe",
        recipe = "nullius-rocket"
      }
    },
    unit = {
      count = 4800,
      ingredients = {
        {"nullius-geology-pack", 1}, {"nullius-climatology-pack", 1},
        {"nullius-mechanical-pack", 1}, {"nullius-electrical-pack", 1},
        {"nullius-chemical-pack", 1}, {"nullius-physics-pack", 1}
      },
      time = 60
    },
    prerequisites = {"nullius-personal-transportation-4", "nullius-braking-8"}
  },

  {
    type = "technology",
    name = "nullius-astronomy",
    order = "nullius-gb",
    icons = {{
        icon = "__base__/graphics/technology/military-science-pack.png",
        icon_size = 256,
        icon_mipmaps = 4,
        tint = {0.75, 0.72, 0.78}
    }},
    effects = {
      {
        type = "unlock-recipe",
        recipe = "nullius-satellite"
      },
      {
        type = "unlock-recipe",
        recipe = "nullius-box-astronomy-pack"
      },
      {
        type = "unlock-recipe",
        recipe = "nullius-unbox-astronomy-pack"
      }
    },
    unit = {
      count = 5000,
      ingredients = {
        {"nullius-mechanical-pack", 1}, {"nullius-electrical-pack", 1},
        {"nullius-chemical-pack", 1}, {"nullius-physics-pack", 2}
      },
      time = 60
    },
    prerequisites = {"nullius-rocket-science-2", "nullius-terraforming-3", "nullius-broadcasting-4"}
  },

  {
    type = "technology",
    name = "nullius-genetic-archive-1",
    order = "nullius-gc",
    icons = {
	  {
        icon = "__base__/graphics/technology/military-science-pack.png",
        icon_size = 256,
        icon_mipmaps = 4,
        tint = {0.75, 0.72, 0.78}
      },
	  {
	    icon = ICONPATH .. "genome.png",
        icon_size = 64,
		scale = 3
	  }
	},
    effects = {
      {
        type = "unlock-recipe",
        recipe = "nullius-bacteria-genome-2"
      },
	  {
        type = "unlock-recipe",
        recipe = "nullius-algae-genome-2"
      },
	  {
        type = "unlock-recipe",
        recipe = "nullius-grass-genome-2"
      }
    },
    unit = {
      count = 5000,
      ingredients = {
		{"nullius-geology-pack", 2}, {"nullius-climatology-pack", 2},
		{"nullius-mechanical-pack", 1}, {"nullius-electrical-pack", 1},
		{"nullius-chemical-pack", 1}, {"nullius-physics-pack", 1},
		{"nullius-astronomy-pack", 2}
      },
      time = 60
    },
    prerequisites = { "nullius-astronomy", "nullius-biochemistry-7" }
  },
  {
    type = "technology",
    name = "nullius-genetic-archive-2",
    order = "nullius-ge",
    icons = {
	  {
        icon = "__base__/graphics/technology/military-science-pack.png",
        icon_size = 256,
        icon_mipmaps = 4,
        tint = {0.75, 0.72, 0.78}
      },
	  {
	    icon = ICONPATH .. "genome.png",
        icon_size = 64,
		scale = 4
	  }
	},
    effects = {
      {
        type = "unlock-recipe",
        recipe = "nullius-worm-genome-2"
      },
	  {
        type = "unlock-recipe",
        recipe = "nullius-tree-genome-2"
      },
	  {
        type = "unlock-recipe",
        recipe = "nullius-fish-genome-2"
      }
    },
    unit = {
      count = 10000,
      ingredients = {
		{"nullius-geology-pack", 2}, {"nullius-climatology-pack", 2},
		{"nullius-mechanical-pack", 1}, {"nullius-electrical-pack", 1},
		{"nullius-chemical-pack", 1}, {"nullius-physics-pack", 1},
		{"nullius-astronomy-pack", 2}
      },
      time = 60
    },
    prerequisites = { "nullius-evolution-2", "nullius-optimization-6" }
  },
  {
    type = "technology",
    name = "nullius-asteroid-mining-1",
    order = "nullius-gc",
    icon = "__base__/graphics/technology/atomic-bomb.png",
    icon_size = 256,
    icon_mipmaps = 4,
    effects = {
      {
        type = "unlock-recipe",
        recipe = "nullius-asteroid-miner-1"
      },
      {
        type = "unlock-recipe",
        recipe = "nullius-guide-remote-iron"
      },
      {
        type = "unlock-recipe",
        recipe = "nullius-guide-remote-sandstone"
      },
      {
        type = "unlock-recipe",
        recipe = "nullius-guide-remote-bauxite"
      },
      {
        type = "unlock-recipe",
        recipe = "nullius-guide-remote-limestone"
      },
      {
        type = "unlock-recipe",
        recipe = "nullius-guide-remote-copper"
      },
      {
        type = "unlock-recipe",
        recipe = "nullius-guide-remote-uranium"
      }
    },
    unit = {
      count = 4000,
      ingredients = {
        {"nullius-geology-pack", 2}, {"nullius-mechanical-pack", 1},
        {"nullius-electrical-pack", 1}, {"nullius-chemical-pack", 1},
        {"nullius-physics-pack", 1}, {"nullius-astronomy-pack", 2}
      },
      time = 60
    },
    prerequisites = {"nullius-astronomy", "nullius-mining-productivity-20"}
  },
  {
    type = "technology",
    name = "nullius-biochemistry-1",
    order = "nullius-gc",
    icons = data.raw.fluid["nullius-nucleotides"].icons,
    effects = {
      {
        type = "unlock-recipe",
        recipe = "nullius-biology-lab"
      },
      {
        type = "unlock-recipe",
        recipe = "nullius-sugar-1"
      },
      {
        type = "unlock-recipe",
        recipe = "nullius-amino-acids"
      },
      {
        type = "unlock-recipe",
        recipe = "nullius-fatty-acids"
      },
      {
        type = "unlock-recipe",
        recipe = "nullius-nucleotides"
      },
      {
        type = "unlock-recipe",
        recipe = "nullius-box-sugar"
      },
      {
        type = "unlock-recipe",
        recipe = "nullius-unbox-sugar"
      },
      {
        type = "unlock-recipe",
        recipe = "nullius-biochemistry-pack"
      }
    },
    unit = {
      count = 1000,
      ingredients = {
        {"nullius-geology-pack", 1}, {"nullius-climatology-pack", 1},
        {"nullius-mechanical-pack", 1}, {"nullius-electrical-pack", 1},
        {"nullius-chemical-pack", 2}, {"nullius-physics-pack", 1}
      },
      time = 40
    },
    prerequisites = {"nullius-physics", "nullius-organic-chemistry-6"}
  },
  {
    type = "technology",
    name = "nullius-nuclear-power-3",
    order = "nullius-gc",
    icon = "__base__/graphics/technology/nuclear-power.png",
    icon_size = 256,
    icon_mipmaps = 4,
    effects = {
      {
        type = "unlock-recipe",
        recipe = "nullius-breeder-cell"
      },
      {
        type = "unlock-recipe",
        recipe = "nullius-breeder-recycling"
      }
    },
    unit = {
      count = 4000,
      ingredients = {
        {"nullius-geology-pack", 1}, {"nullius-climatology-pack", 1},
        {"nullius-mechanical-pack", 1}, {"nullius-electrical-pack", 1},
        {"nullius-chemical-pack", 1}, {"nullius-physics-pack", 2},
        {"nullius-astronomy-pack", 1}
      },
      time = 60
    },
    prerequisites = {"nullius-astronomy"}
  },
  {
    type = "technology",
    name = "nullius-inserter-capacity-6",
    order = "nullius-gc",
    icon = "__base__/graphics/technology/inserter-capacity.png",
    icon_size = 256,
    icon_mipmaps = 4,
    effects = {
      {
        type = "stack-inserter-capacity-bonus",
        modifier = 1
      }
    },
    unit = {
      count = 5000,
      ingredients = {
        {"nullius-geology-pack", 1},
        {"nullius-mechanical-pack", 1}, {"nullius-electrical-pack", 1},
        {"nullius-physics-pack", 1}, {"nullius-astronomy-pack", 1}
      },
      time = 60
    },
    prerequisites = {"nullius-astronomy", "nullius-checkpoint-mecha"}
  },

  {
    type = "technology",
    name = "nullius-reconnaissance-3",
    order = "nullius-gd",
    icon = "__base__/graphics/technology/artillery-range.png",
    icon_size = 256,
    icon_mipmaps = 4,
    effects = {
      {
        type = "artillery-range",
        modifier = 0.25
      }
    },
	unit = {
      count = 6000,
      ingredients = {
        {"nullius-geology-pack", 1}, {"nullius-climatology-pack", 1},
        {"nullius-mechanical-pack", 1}, {"nullius-electrical-pack", 1},
        {"nullius-chemical-pack", 1}, {"nullius-physics-pack", 1},
        {"nullius-astronomy-pack", 1}
      },
      time = 60
    },
    prerequisites = {"nullius-asteroid-mining-1", "nullius-land-fill-5"}
  },
  {
    type = "technology",
    name = "nullius-toolmaking-9",
    order = "nullius-gd",
    icon = "__base__/graphics/technology/personal-laser-defense-equipment.png",
    icon_size = 256,
    icon_mipmaps = 4,
    effects = {
      {
        type = "character-mining-speed",
        modifier = 0.2
      },
      {
        type = "character-crafting-speed",
        modifier = 0.5
      }
    },
    unit = {
      count = 8000,
      ingredients = {
        {"nullius-geology-pack", 1}, {"nullius-climatology-pack", 1},
        {"nullius-mechanical-pack", 2}, {"nullius-electrical-pack", 2},
        {"nullius-chemical-pack", 1}, {"nullius-physics-pack", 1},
        {"nullius-astronomy-pack", 1}
      },
      time = 60
    },
    prerequisites = {"nullius-checkpoint-cybernetics"},
    upgrade = true
  },
  {
    type = "technology",
    name = "nullius-copper-production",
    order = "nullius-gd",
    icon = "__angelssmelting__/graphics/technology/smelting-copper-tech.png",
    icon_size = 256,
    icon_mipmaps = 4,
    effects = {
      {
        type = "unlock-recipe",
        recipe = "nullius-copper-solution"
      },
      {
        type = "unlock-recipe",
        recipe = "nullius-copper-ingot"
      },
      {
        type = "unlock-recipe",
        recipe = "nullius-copper-wire"
      },
      {
        type = "unlock-recipe",
        recipe = "nullius-copper-sheet"
      },
      {
        type = "unlock-recipe",
        recipe = "nullius-boxed-copper-solution"
      },
      {
        type = "unlock-recipe",
        recipe = "nullius-boxed-copper-ingot"
      },
      {
        type = "unlock-recipe",
        recipe = "nullius-boxed-copper-wire"
      },
      {
        type = "unlock-recipe",
        recipe = "nullius-boxed-copper-sheet"
      },
      {
        type = "unlock-recipe",
        recipe = "nullius-box-copper-ingot"
      },
      {
        type = "unlock-recipe",
        recipe = "nullius-unbox-copper-ingot"
      },
      {
        type = "unlock-recipe",
        recipe = "nullius-box-copper-wire"
      },
      {
        type = "unlock-recipe",
        recipe = "nullius-unbox-copper-wire"
      },
      {
        type = "unlock-recipe",
        recipe = "nullius-box-copper-sheet"
      },
      {
        type = "unlock-recipe",
        recipe = "nullius-unbox-copper-sheet"
      },
      {
        type = "unlock-recipe",
        recipe = "nullius-copper-heat-pipe"
      },
      {
        type = "unlock-recipe",
        recipe = "nullius-boxed-copper-heat-pipe"
      }
    },
    unit = {
      count = 7000,
      ingredients = {
        {"nullius-geology-pack", 2}, {"nullius-climatology-pack", 1},
        {"nullius-mechanical-pack", 1}, {"nullius-electrical-pack", 1},
        {"nullius-chemical-pack", 1}, {"nullius-physics-pack", 1},
        {"nullius-astronomy-pack", 1}
      },
      time = 60
    },
    prerequisites = {"nullius-checkpoint-copper-ore"}
  },
  {
    type = "technology",
    name = "nullius-boiling-4",
    order = "nullius-gd",
    icon = ENTICONPATH .. "boiler2.png",
	icon_size = 64,
    effects = {
      {
        type = "unlock-recipe",
        recipe = "nullius-boiler-2"
      },
      {
        type = "unlock-recipe",
        recipe = "fill-nullius-pressure-steam-barrel"
      },
      {
        type = "unlock-recipe",
        recipe = "empty-nullius-pressure-steam-barrel"
      },
	  {
        type = "unlock-recipe",
        recipe = "nullius-pressure-steam"
      }
    },
	unit = {
      count = 5000,
      ingredients = {
        {"nullius-geology-pack", 1}, {"nullius-climatology-pack", 2},
        {"nullius-mechanical-pack", 2}, {"nullius-electrical-pack", 1},
        {"nullius-chemical-pack", 1}, {"nullius-physics-pack", 1},
        {"nullius-astronomy-pack", 1}
      },
      time = 60
    },
    prerequisites = {"nullius-checkpoint-pressure-steam"}
  },
  {
    type = "technology",
    name = "nullius-uranium-processing",
    order = "nullius-gd",
    icon = "__base__/graphics/technology/kovarex-enrichment-process.png",
    icon_size = 256,
    icon_mipmaps = 4,
    effects = {
      {
        type = "unlock-recipe",
        recipe = "nullius-yellowcake"
      },
      {
        type = "unlock-recipe",
        recipe = "nullius-uranium"
      },
      {
        type = "unlock-recipe",
        recipe = "nullius-enriched-uranium"
      }
    },
    unit = {
      count = 6000,
      ingredients = {
        {"nullius-geology-pack", 1}, {"nullius-climatology-pack", 1},
        {"nullius-mechanical-pack", 1}, {"nullius-electrical-pack", 1},
        {"nullius-chemical-pack", 2}, {"nullius-physics-pack", 2},
        {"nullius-astronomy-pack", 1}
      },
      time = 60
    },
    prerequisites = {"nullius-checkpoint-uranium-ore", "nullius-nuclear-power-3"}
  },
  {
    type = "technology",
    name = "nullius-biology-1",
    order = "nullius-gd",
    icon = ICONPATH .. "genome.png",
    icon_size = 64,
    effects = {
      {
        type = "unlock-recipe",
        recipe = "nullius-protocell-1"
      },
      {
        type = "unlock-recipe",
        recipe = "nullius-bacteria-genome"
      },
      {
        type = "unlock-recipe",
        recipe = "nullius-bacteria-1"
      },
      {
        type = "unlock-recipe",
        recipe = "nullius-bacteria-2"
      },
      {
        type = "unlock-recipe",
        recipe = "nullius-cellulose"
      },
      {
        type = "unlock-recipe",
        recipe = "nullius-box-cellulose"
      },
      {
        type = "unlock-recipe",
        recipe = "nullius-unbox-cellulose"
      }
    },
    unit = {
      count = 3,
      ingredients = {
        {"nullius-biochemistry-pack", 1}
      },
      time = 600
    },
    prerequisites = {"nullius-biochemistry-1", "nullius-single-layer-materials"}
  },
  {
    type = "technology",
    name = "nullius-carbon-sequestration-3",
    order = "nullius-gd",
    icon = "__angelspetrochem__/graphics/icons/molecules/oxygen.png",
    icon_size = 72,
    effects = {
      {
        type = "unlock-recipe",
        recipe = "nullius-carbon-dioxide-electrolysis"
      },
      {
        type = "unlock-recipe",
        recipe = "nullius-carbon-deposition"
      },
      {
        type = "unlock-recipe",
        recipe = "nullius-carbon-sink"
      }
    },
    unit = {
      count = 5000,
      ingredients = {
        {"nullius-geology-pack", 1}, {"nullius-climatology-pack", 2},
        {"nullius-electrical-pack", 1},
        {"nullius-chemical-pack", 1}, {"nullius-physics-pack", 1}
      },
      time = 60
    },
    prerequisites = {"nullius-astronomy", "nullius-land-fill-5"}
  },

  {
    type = "technology",
    name = "nullius-robot-speed-5",
    order = "nullius-ge",
    icon = "__base__/graphics/technology/worker-robots-speed.png",
    icon_size = 256,
    icon_mipmaps = 4,
    effects = {
      {
        type = "worker-robot-speed",
        modifier = 0.1
      }
    },
    unit = {
      count = 10000,
      ingredients = {
        {"nullius-geology-pack", 1}, {"nullius-climatology-pack", 1},
        {"nullius-mechanical-pack", 2}, {"nullius-electrical-pack", 1},
        {"nullius-chemical-pack", 1}, {"nullius-physics-pack", 1},
        {"nullius-astronomy-pack", 1}
      },
      time = 60
    },
    prerequisites = {"nullius-copper-production",
	    "nullius-inserter-capacity-6", "nullius-reconnaissance-3"}
  },
  {
    type = "technology",
    name = "nullius-biology-2",
    order = "nullius-ge",
    icon = ICONPATH .. "algae.png",
    icon_size = 64,
    effects = {
      {
        type = "unlock-recipe",
        recipe = "nullius-algae-genome"
      },
      {
        type = "unlock-recipe",
        recipe = "nullius-algae-progenitor"
      },
      {
        type = "unlock-recipe",
        recipe = "nullius-algae-1"
      },
      {
        type = "unlock-recipe",
        recipe = "nullius-algae-2"
      },
      {
        type = "unlock-recipe",
        recipe = "nullius-algae-spore"
      },
      {
        type = "unlock-recipe",
        recipe = "nullius-algae-spore-disposal"
      },
      {
        type = "unlock-recipe",
        recipe = "nullius-microbiology-pack"
      },
	  {
        type = "unlock-recipe",
        recipe = "nullius-composting-cellulose"
      },
	  {
        type = "unlock-recipe",
        recipe = "nullius-boxed-composting-cellulose"
      }
    },
    unit = {
      count = 5,
      ingredients = {
        {"nullius-biochemistry-pack", 1}
      },
      time = 600
    },
    prerequisites = {"nullius-biology-1", "nullius-filtration-2", "nullius-barreling-4"}
  },
  {
    type = "technology",
    name = "nullius-ecology-1",
    order = "nullius-gf",
	icons = {
      {
        icon = ICONPATH .. "target.png",
        icon_size = 64
      },
      {
        icon = "__base__/graphics/icons/defender.png",
        icon_size = 64,
        icon_mipmaps = 4,
		scale = 0.95
      },
      {
        icon = ICONPATH .. "algae.png",
        icon_size = 64,
        scale = 0.7,
        shift = {4, 4}
      }
    },
    effects = {
      {
        type = "unlock-recipe",
        recipe = "nullius-algaculture-drone"
      },
      {
        type = "unlock-recipe",
        recipe = "nullius-algaculture-remote"
      }
    },
    unit = {
      count = 30,
      ingredients = {
        {"nullius-biochemistry-pack", 1}, {"nullius-microbiology-pack", 2},
        {"nullius-botany-pack", 1}
      },
      time = 600
    },
    prerequisites = {"nullius-zoology-1", "nullius-robot-cargo-2"}
  },
  {
    type = "technology",
    name = "nullius-nuclear-power-4",
    order = "nullius-ge",
    icon = "__base__/graphics/technology/uranium-processing.png",
    icon_size = 256,
    icon_mipmaps = 4,
    effects = {
      {
        type = "unlock-recipe",
        recipe = "nullius-fission-cell"
      },
      {
        type = "unlock-recipe",
        recipe = "nullius-fission-recycling"
      }
    },
    unit = {
      count = 9000,
      ingredients = {
        {"nullius-geology-pack", 1}, {"nullius-climatology-pack", 1},
        {"nullius-mechanical-pack", 1}, {"nullius-electrical-pack", 2},
        {"nullius-chemical-pack", 1}, {"nullius-physics-pack", 1},
        {"nullius-astronomy-pack", 1}
      },
      time = 60
    },
    prerequisites = {"nullius-uranium-processing", "nullius-checkpoint-breeder-cell", "nullius-boiling-4"}
  },
  {
    type = "technology",
    name = "nullius-electronics-4",
    order = "nullius-ge",
    icon = "__base__/graphics/technology/advanced-electronics-2.png",
    icon_size = 256,
    icon_mipmaps = 4,
    effects = {
      {
        type = "unlock-recipe",
        recipe = "nullius-processor-3"
      },
      {
        type = "unlock-recipe",
        recipe = "nullius-insulated-wire-2"
      },
      {
        type = "unlock-recipe",
        recipe = "nullius-boxed-processor-3"
      },
      {
        type = "unlock-recipe",
        recipe = "nullius-box-processor-3"
      },
      {
        type = "unlock-recipe",
        recipe = "nullius-unbox-processor-3"
      },
      {
        type = "unlock-recipe",
        recipe = "nullius-boxed-insulated-wire-2"
      }
    },
    unit = {
      count = 9000,
      ingredients = {
        {"nullius-geology-pack", 1}, {"nullius-climatology-pack", 1},
        {"nullius-mechanical-pack", 1}, {"nullius-electrical-pack", 2},
        {"nullius-chemical-pack", 1}, {"nullius-physics-pack", 1},
        {"nullius-astronomy-pack", 1}
      },
      time = 60
    },
    prerequisites = {"nullius-checkpoint-copper-ingot", "nullius-toolmaking-9"}
  },
  {
    type = "technology",
    name = "nullius-personal-storage-3",
    order = "nullius-gi",
	icon = "__nullius__/graphics/equipment/large-pod-3.png",
    icon_size = 256,
    effects = {
      {
        type = "unlock-recipe",
        recipe = "nullius-large-cargo-pod-3"
      }
    },
    unit = {
      count = 10000,
      ingredients = {
        {"nullius-geology-pack", 1}, {"nullius-climatology-pack", 1},
        {"nullius-mechanical-pack", 1},
        {"nullius-chemical-pack", 1}, {"nullius-physics-pack", 1}
      },
      time = 60
    },
    prerequisites = {"nullius-toolmaking-9", "nullius-robot-speed-5"}
  },

  {
    type = "technology",
    name = "nullius-robotics-4",
    order = "nullius-gf",
    icon = "__base__/graphics/technology/robotics.png",
    icon_size = 256,
    icon_mipmaps = 4,
    effects = {
      {
        type = "unlock-recipe",
        recipe = "nullius-robot-frame-4"
      },
      {
        type = "unlock-recipe",
        recipe = "nullius-boxed-robot-frame-4"
      },
      {
        type = "unlock-recipe",
        recipe = "nullius-box-robot-frame-4"
      },
      {
        type = "unlock-recipe",
        recipe = "nullius-unbox-robot-frame-4"
      },
      {
        type = "unlock-recipe",
        recipe = "nullius-levitation-field-2"
      }
    },
    unit = {
      count = 12500,
      ingredients = {
        {"nullius-geology-pack", 1}, {"nullius-climatology-pack", 1},
        {"nullius-mechanical-pack", 1}, {"nullius-electrical-pack", 1},
        {"nullius-chemical-pack", 1}, {"nullius-physics-pack", 1},
        {"nullius-astronomy-pack", 1}
      },
      time = 60
    },
    prerequisites = {"nullius-electronics-4", "nullius-robot-speed-5"}
  },
  {
    type = "technology",
    name = "nullius-nitrogen-chemistry-3",
    order = "nullius-gf",
    icons = data.raw.technology["angels-nitrogen-processing-1"].icons,
    effects = {
      {
        type = "unlock-recipe",
        recipe = "nullius-fertilizer"
      },
      {
        type = "unlock-recipe",
        recipe = "nullius-box-fertilizer"
      },
      {
        type = "unlock-recipe",
        recipe = "nullius-unbox-fertilizer"
      }
    },
    unit = {
      count = 4,
      ingredients = {
        {"nullius-biochemistry-pack", 2}, {"nullius-microbiology-pack", 1}
      },
      time = 600
    },
    prerequisites = {"nullius-biology-2", "nullius-distillation-3"}
  },
  {
    type = "technology",
    name = "nullius-solar-power-3",
    order = "nullius-gf",
    icon = "__base__/graphics/technology/solar-energy.png",
    icon_size = 256,
    icon_mipmaps = 4,
    effects = {
      {
        type = "unlock-recipe",
        recipe = "nullius-solar-panel-3"
      },
      {
        type = "unlock-recipe",
        recipe = "nullius-boxed-solar-panel-3"
      },
      {
        type = "unlock-recipe",
        recipe = "nullius-box-solar-panel-3"
      },
      {
        type = "unlock-recipe",
        recipe = "nullius-unbox-solar-panel-3"
      }
    },
    unit = {
      count = 12500,
      ingredients = {
        {"nullius-climatology-pack", 1},
        {"nullius-electrical-pack", 1},
        {"nullius-chemical-pack", 1}, {"nullius-physics-pack", 1},
        {"nullius-astronomy-pack", 1}
      },
      time = 60
    },
    prerequisites = {"nullius-electronics-4"}
  },
  {
    type = "technology",
    name = "nullius-optimization-6",
    order = "nullius-gf",
    icon = "__base__/graphics/technology/speed-module-3.png",
    icon_size = 256,
    icon_mipmaps = 4,
    effects = {
      {
        type = "unlock-recipe",
        recipe = "nullius-haste-module-4"
      },
      {
        type = "unlock-recipe",
        recipe = "nullius-boxed-haste-module-4"
      },
      {
        type = "unlock-recipe",
        recipe = "nullius-box-haste-module-4"
      },
      {
        type = "unlock-recipe",
        recipe = "nullius-unbox-haste-module-4"
      },
      {
        type = "unlock-recipe",
        recipe = "nullius-speed-module-4"
      },
      {
        type = "unlock-recipe",
        recipe = "nullius-boxed-speed-module-4"
      },
      {
        type = "unlock-recipe",
        recipe = "nullius-box-speed-module-4"
      },
      {
        type = "unlock-recipe",
        recipe = "nullius-unbox-speed-module-4"
      }
    },
    unit = {
      count = 12500,
      ingredients = {
        {"nullius-mechanical-pack", 1}, {"nullius-electrical-pack", 2},
        {"nullius-physics-pack", 1}, {"nullius-astronomy-pack", 1}
      },
      time = 60
    },
    prerequisites = {"nullius-electronics-4"}
  },
  {
    type = "technology",
    name = "nullius-botany-1",
    order = "nullius-gf",
    icon = ICONPATH .. "grass.png",
    icon_size = 64,
    effects = {
      {
        type = "unlock-recipe",
        recipe = "nullius-grass-genome"
      },
      {
        type = "unlock-recipe",
        recipe = "nullius-grass-progenitor"
      },
      {
        type = "unlock-recipe",
        recipe = "nullius-grass-1"
      },
      {
        type = "unlock-recipe",
        recipe = "nullius-grass-2"
      },
      {
        type = "unlock-recipe",
        recipe = "nullius-grass-seed"
      },
      {
        type = "unlock-recipe",
        recipe = "nullius-boxed-grass-seed"
      },
      {
        type = "unlock-recipe",
        recipe = "nullius-box-grass-seed"
      },
      {
        type = "unlock-recipe",
        recipe = "nullius-unbox-grass-seed"
      },
      {
        type = "unlock-recipe",
        recipe = "nullius-botany-pack"
      }
    },
    unit = {
      count = 8,
      ingredients = {
        {"nullius-biochemistry-pack", 1}, {"nullius-microbiology-pack", 2}
      },
      time = 600
    },
    prerequisites = {"nullius-nitrogen-chemistry-3", "nullius-mining-productivity-17"}
  },
  {
    type = "technology",
    name = "nullius-ecology-2",
    order = "nullius-gg",
	icons = {
      {
        icon = ICONPATH .. "target.png",
        icon_size = 64
      },
      {
        icon = "__base__/graphics/icons/defender.png",
        icon_size = 64,
        icon_mipmaps = 4,
		scale = 0.95
      },
      {
        icon = ICONPATH .. "grass.png",
        icon_size = 64,
        scale = 0.7,
        shift = {4, 4}
      }
    },
    effects = {
      {
        type = "unlock-recipe",
        recipe = "nullius-horticulture-drone"
      },
      {
        type = "unlock-recipe",
        recipe = "nullius-horticulture-remote"
      }
    },
    unit = {
      count = 60,
      ingredients = {
        {"nullius-biochemistry-pack", 1}, {"nullius-microbiology-pack", 1},
        {"nullius-botany-pack", 2}, {"nullius-nematology-pack", 1}
      },
      time = 600
    },
    prerequisites = { "nullius-woodworking", "nullius-checkpoint-algae",
	    "nullius-mining-productivity-19" }
  },
  {
    type = "technology",
    name = "nullius-biochemistry-2",
    order = "nullius-gf",
    icons = data.raw.fluid["nullius-oil"].icons,
    effects = {
      {
        type = "unlock-recipe",
        recipe = "nullius-oil"
      },
      {
        type = "unlock-recipe",
        recipe = "nullius-algae-harvest"
      },
      {
        type = "unlock-recipe",
        recipe = "nullius-cellulose-burning"
      },
      {
        type = "unlock-recipe",
        recipe = "nullius-boxed-cellulose-burning"
      },
      {
        type = "unlock-recipe",
        recipe = "nullius-fatty-acid-combustion"
      }
    },
    unit = {
      count = 5,
      ingredients = {
        {"nullius-biochemistry-pack", 1}, {"nullius-microbiology-pack", 1}
      },
      time = 600
    },
    prerequisites = {"nullius-biology-2", "nullius-energy-storage-4"}
  },

  {
    type = "technology",
    name = "nullius-wildlife-management-1",
    order = "nullius-gg",
    icon = "__base__/graphics/technology/military.png",
    icon_size = 256,
    icon_mipmaps = 4,
    effects = {
      {
        type = "unlock-recipe",
        recipe = "nullius-rifle"
      },
      {
        type = "unlock-recipe",
        recipe = "nullius-magazine-2"
      },
      {
        type = "unlock-recipe",
        recipe = "nullius-armor-plate"
      }
    },
    unit = {
      count = 8000,
      ingredients = {
        {"nullius-geology-pack", 1}, {"nullius-climatology-pack", 1},
        {"nullius-mechanical-pack", 1}, {"nullius-electrical-pack", 1},
        {"nullius-chemical-pack", 1}, {"nullius-physics-pack", 1}
      },
      time = 60
    },
    prerequisites = {"nullius-checkpoint-copper-ingot", "nullius-uranium-processing",
	    "nullius-checkpoint-worm", "nullius-personal-storage-3" }
  },
  {
    type = "technology",
    name = "nullius-miniaturization-2",
    order = "nullius-gg",
    icon = "__base__/graphics/technology/electronics.png",
    icon_size = 256,
    icon_mipmaps = 4,
    effects = {
      {
        type = "unlock-recipe",
        recipe = "nullius-logic-circuit-2"
      },
	  {
        type = "unlock-recipe",
        recipe = "nullius-boxed-battery-1-copper"
      }
    },
    unit = {
      count = 15000,
      ingredients = {
        {"nullius-geology-pack", 1}, {"nullius-climatology-pack", 1},
        {"nullius-mechanical-pack", 1}, {"nullius-electrical-pack", 1},
        {"nullius-chemical-pack", 1}, {"nullius-physics-pack", 1},
        {"nullius-astronomy-pack", 1}
      },
      time = 60
    },
    prerequisites = {"nullius-checkpoint-processor-3"}
  },
  {
    type = "technology",
    name = "nullius-logistic-robot-4",
    order = "nullius-gg",
    icon = "__base__/graphics/technology/logistic-robotics.png",
    icon_size = 256,
    icon_mipmaps = 4,
    effects = {
      {
        type = "unlock-recipe",
        recipe = "nullius-logistic-bot-4"
      },
      {
        type = "unlock-recipe",
        recipe = "nullius-boxed-logistic-bot-4"
      },
      {
        type = "unlock-recipe",
        recipe = "nullius-box-logistic-bot-4"
      },
      {
        type = "unlock-recipe",
        recipe = "nullius-unbox-logistic-bot-4"
      },
      {
        type = "character-logistic-trash-slots",
        modifier = 10
      }
    },
    unit = {
      count = 15000,
      ingredients = {
        {"nullius-geology-pack", 1}, {"nullius-climatology-pack", 1},
        {"nullius-mechanical-pack", 2}, {"nullius-electrical-pack", 1},
        {"nullius-chemical-pack", 1}, {"nullius-physics-pack", 1},
        {"nullius-astronomy-pack", 1}
      },
      time = 60
    },
    prerequisites = {"nullius-robotics-4", "nullius-optimization-6", "nullius-personal-storage-3"}
  },
  {
    type = "technology",
    name = "nullius-biochemistry-3",
    order = "nullius-gg",
    icons = data.raw.item["nullius-sugar"].icons,
    effects = {
      {
        type = "unlock-recipe",
        recipe = "nullius-grass-seed-milling"
      },
      {
        type = "unlock-recipe",
        recipe = "nullius-boxed-grass-seed-milling"
      },
      {
        type = "unlock-recipe",
        recipe = "nullius-sugar-2"
      },
      {
        type = "unlock-recipe",
        recipe = "nullius-boxed-sugar"
      },
      {
        type = "unlock-recipe",
        recipe = "nullius-cellulose-pyrolysis"
      },
      {
        type = "unlock-recipe",
        recipe = "nullius-boxed-cellulose-pyrolysis"
      },
      {
        type = "unlock-recipe",
        recipe = "nullius-explosive-2"
      },
      {
        type = "unlock-recipe",
        recipe = "nullius-boxed-explosive-2"
      }
    },
    unit = {
      count = 6,
      ingredients = {
        {"nullius-biochemistry-pack", 2}, {"nullius-microbiology-pack", 1},
        {"nullius-botany-pack", 1}
      },
      time = 600
    },
    prerequisites = {"nullius-botany-1", "nullius-biochemistry-2", "nullius-experimental-chemistry-2"}
  },
  {
    type = "technology",
    name = "nullius-evolution-1",
    order = "nullius-gg",
    icons = data.raw.item["nullius-bacteria-genome"].icons,
    effects = {
      {
        type = "unlock-recipe",
        recipe = "nullius-bacteria-3"
      }
    },
    unit = {
      count = 100,
      ingredients = {
        {"nullius-biochemistry-pack", 1}, {"nullius-microbiology-pack", 2},
		{"nullius-botany-pack", 1}, {"nullius-nematology-pack", 1}
      },
      time = 600
    },
    prerequisites = { "nullius-genetic-archive-1", "nullius-ecology-3" }
  },
  {
    type = "technology",
    name = "nullius-antimatter-containment",
    order = "nullius-gg",
    icon = ICONPATH .. "antimatter.png",
    icon_size = 64,
    effects = {
      {
        type = "unlock-recipe",
        recipe = "nullius-antimatter-trap"
      }
    },
    unit = {
      count = 25000,
      ingredients = {
        {"nullius-geology-pack", 1}, {"nullius-climatology-pack", 1},
        {"nullius-mechanical-pack", 1}, {"nullius-electrical-pack", 1},
        {"nullius-chemical-pack", 1}, {"nullius-physics-pack", 2},
        {"nullius-astronomy-pack", 1}
      },
      time = 60
    },
    prerequisites = {"nullius-solar-power-3", "nullius-checkpoint-enriched-uranium"}
  },
  {
    type = "technology",
    name = "nullius-zoology-1",
    order = "nullius-gg",
    icon = "__base__/graphics/icons/small-worm.png",
    icon_size = 64,
    icon_mipmaps = 4,
    effects = {
      {
        type = "unlock-recipe",
        recipe = "nullius-worm-genome"
      },
      {
        type = "unlock-recipe",
        recipe = "nullius-worm-progenitor"
      },
      {
        type = "unlock-recipe",
        recipe = "nullius-worm-1"
      },
      {
        type = "unlock-recipe",
        recipe = "nullius-worm-2"
      },
      {
        type = "unlock-recipe",
        recipe = "nullius-worm-disposal"
      },
      {
        type = "unlock-recipe",
        recipe = "nullius-worm-egg-disposal"
      },
      {
        type = "unlock-recipe",
        recipe = "nullius-nematology-pack"
      }
    },
    unit = {
      count = 12,
      ingredients = {
        {"nullius-biochemistry-pack", 1}, {"nullius-microbiology-pack", 1},
        {"nullius-botany-pack", 1}
      },
      time = 600
    },
    prerequisites = {"nullius-botany-1", "nullius-volcanism-2"}
  },
  {
    type = "technology",
    name = "nullius-ecology-3",
    order = "nullius-gh",
	icons = {
      {
        icon = ICONPATH .. "target.png",
        icon_size = 64
      },
      {
        icon = "__base__/graphics/icons/defender.png",
        icon_size = 64,
        icon_mipmaps = 4,
		scale = 0.95
      },
      {
		icon = "__base__/graphics/icons/small-worm.png",
        icon_size = 64,
        icon_mipmaps = 4,
        scale = 0.7,
        shift = {4, 4}
      }
    },
    effects = {
      {
        type = "unlock-recipe",
        recipe = "nullius-entomology-drone"
      },
      {
        type = "unlock-recipe",
        recipe = "nullius-entomology-remote"
      }
    },
    unit = {
      count = 100,
      ingredients = {
        {"nullius-biochemistry-pack", 1}, {"nullius-microbiology-pack", 1},
        {"nullius-botany-pack", 1}, {"nullius-nematology-pack", 2},
		{"nullius-ichthyology-pack", 1}
      },
      time = 600
    },
    prerequisites = { "nullius-biochemistry-7", "nullius-checkpoint-oxygen-partial" }
  },
  {
    type = "technology",
    name = "nullius-optimization-7",
    order = "nullius-gg",
    icon = "__base__/graphics/technology/productivity-module-3.png",
    icon_size = 256,
    icon_mipmaps = 4,
    effects = {
      {
        type = "unlock-recipe",
        recipe = "nullius-productivity-module-3"
      },
      {
        type = "unlock-recipe",
        recipe = "nullius-boxed-productivity-module-3"
      },
      {
        type = "unlock-recipe",
        recipe = "nullius-box-productivity-module-3"
      },
      {
        type = "unlock-recipe",
        recipe = "nullius-unbox-productivity-module-3"
      },
      {
        type = "unlock-recipe",
        recipe = "nullius-yield-module-4"
      },
      {
        type = "unlock-recipe",
        recipe = "nullius-boxed-yield-module-4"
      },
      {
        type = "unlock-recipe",
        recipe = "nullius-box-yield-module-4"
      },
      {
        type = "unlock-recipe",
        recipe = "nullius-unbox-yield-module-4"
      }
    },
    unit = {
      count = 15000,
      ingredients = {
        {"nullius-geology-pack", 1}, {"nullius-climatology-pack", 1},
        {"nullius-mechanical-pack", 1}, {"nullius-electrical-pack", 2},
        {"nullius-chemical-pack", 1}, {"nullius-physics-pack", 1},
        {"nullius-astronomy-pack", 1}
      },
      time = 60
    },
    prerequisites = {"nullius-checkpoint-processor-3"}
  },

  {
    type = "technology",
    name = "nullius-biochemistry-4",
    order = "nullius-gh",
    icons = data.raw.fluid["nullius-amino-acids"].icons,
    effects = {
      {
        type = "unlock-recipe",
        recipe = "nullius-worm-harvest"
      },
      {
        type = "unlock-recipe",
        recipe = "nullius-worm-egg-harvest"
      },
      {
        type = "unlock-recipe",
        recipe = "nullius-fermentation"
      },
      {
        type = "unlock-recipe",
        recipe = "nullius-boxed-fermentation"
      },
      {
        type = "unlock-recipe",
        recipe = "nullius-amino-acid-metabolism"
      },
      {
        type = "unlock-recipe",
        recipe = "nullius-protocell-2"
      }
    },
    unit = {
      count = 10,
      ingredients = {
        {"nullius-biochemistry-pack", 1}, {"nullius-microbiology-pack", 1},
        {"nullius-nematology-pack", 1}
      },
      time = 600
    },
    prerequisites = {"nullius-biochemistry-3", "nullius-zoology-1", "nullius-empiricism-5"}
  },
  {
    type = "technology",
    name = "nullius-inserter-capacity-7",
    order = "nullius-gh",
    icon = "__base__/graphics/technology/inserter-capacity.png",
    icon_size = 256,
    icon_mipmaps = 4,
    effects = {
      {
        type = "stack-inserter-capacity-bonus",
        modifier = 1
      },
      {
        type = "inserter-stack-size-bonus",
        modifier = 1
      }
    },
    unit = {
      count = 17500,
      ingredients = {
        {"nullius-geology-pack", 1}, {"nullius-climatology-pack", 1},
        {"nullius-mechanical-pack", 2}, {"nullius-electrical-pack", 1},
        {"nullius-chemical-pack", 1}, {"nullius-physics-pack", 1},
        {"nullius-astronomy-pack", 1}
      },
      time = 60
    },
    prerequisites = {"nullius-checkpoint-logistic-robot-3", "nullius-miniaturization-2"}
  },
  {
    type = "technology",
    name = "nullius-parallel-computing-4",
    order = "nullius-gh",
    icon = EQUIPPATH .. "coprocessor/quantum.png",
    icon_size = 64,
    effects = {
      {
        type = "unlock-recipe",
        recipe = "nullius-coprocessor-quantum"
      }
    },
    unit = {
      count = 20000,
      ingredients = {
        {"nullius-geology-pack", 1}, {"nullius-climatology-pack", 1},
        {"nullius-mechanical-pack", 1}, {"nullius-electrical-pack", 2},
        {"nullius-chemical-pack", 1}, {"nullius-physics-pack", 1},
        {"nullius-astronomy-pack", 1}
      },
      time = 60
    },
    prerequisites = {"nullius-miniaturization-2", "nullius-optimization-7", "nullius-antimatter-containment"}
  },
  {
    type = "technology",
    name = "nullius-construction-robot-4",
    order = "nullius-gh",
    icon = "__base__/graphics/technology/construction-robotics.png",
    icon_size = 256,
    icon_mipmaps = 4,
    effects = {
      {
        type = "unlock-recipe",
        recipe = "nullius-construction-bot-4"
      },
      {
        type = "unlock-recipe",
        recipe = "nullius-boxed-construction-bot-4"
      },
      {
        type = "unlock-recipe",
        recipe = "nullius-box-construction-bot-4"
      },
      {
        type = "unlock-recipe",
        recipe = "nullius-unbox-construction-bot-4"
      }
    },
    unit = {
      count = 17500,
      ingredients = {
        {"nullius-geology-pack", 1}, {"nullius-climatology-pack", 1},
        {"nullius-mechanical-pack", 2}, {"nullius-electrical-pack", 1},
        {"nullius-chemical-pack", 1}, {"nullius-physics-pack", 1},
        {"nullius-astronomy-pack", 1}
      },
      time = 60
    },
    prerequisites = {"nullius-robotics-4", "nullius-optimization-7",
	    "nullius-wildlife-management-1"}
  },
  {
    type = "technology",
    name = "nullius-weaving-3",
    order = "nullius-gh",
    icon = "__angelssmelting__/graphics/icons/roll-zinc.png",
    icon_size = 64,
    icon_mipmaps = 4,
    effects = {
      {
        type = "unlock-recipe",
        recipe = "nullius-textile-2"
      },
      {
        type = "unlock-recipe",
        recipe = "nullius-boxed-textile-2"
      },
      {
        type = "unlock-recipe",
        recipe = "nullius-cellulose-pyrolysis-2"
      },
      {
        type = "unlock-recipe",
        recipe = "nullius-boxed-cellulose-pyrolysis-2"
      }
    },
    unit = {
      count = 16,
      ingredients = {
        {"nullius-biochemistry-pack", 1}, {"nullius-microbiology-pack", 1},
        {"nullius-botany-pack", 2}
      },
      time = 600
    },
    prerequisites = {"nullius-biochemistry-3", "nullius-personal-storage-2"}
  },
  {
    type = "technology",
    name = "nullius-botany-2",
    order = "nullius-gh",
    icon = "__base__/graphics/icons/tree-08.png",
    icon_size = 64,
    icon_mipmaps = 4,
    effects = {
      {
        type = "unlock-recipe",
        recipe = "nullius-tree-genome"
      },
      {
        type = "unlock-recipe",
        recipe = "nullius-tree-progenitor"
      },
      {
        type = "unlock-recipe",
        recipe = "nullius-tree-1"
      },
      {
        type = "unlock-recipe",
        recipe = "nullius-tree-2"
      },
      {
        type = "unlock-recipe",
        recipe = "nullius-wood"
      },
      {
        type = "unlock-recipe",
        recipe = "nullius-wood-chipping"
      },
      {
        type = "unlock-recipe",
        recipe = "nullius-wood-chip-burning"
      },
      {
        type = "unlock-recipe",
        recipe = "nullius-tree-seed-harvest"
      },
      {
        type = "unlock-recipe",
        recipe = "nullius-boxed-wood"
      },
      {
        type = "unlock-recipe",
        recipe = "nullius-box-wood"
      },
      {
        type = "unlock-recipe",
        recipe = "nullius-unbox-wood"
      },
      {
        type = "unlock-recipe",
        recipe = "nullius-box-wood-chip"
      },
      {
        type = "unlock-recipe",
        recipe = "nullius-unbox-wood-chip"
      },
      {
        type = "unlock-recipe",
        recipe = "nullius-boxed-wood-chipping"
      },
      {
        type = "unlock-recipe",
        recipe = "nullius-boxed-wood-chip-burning"
      },
      {
        type = "unlock-recipe",
        recipe = "nullius-dendrology-pack"
      },
	  {
        type = "unlock-recipe",
        recipe = "nullius-composting-wood"
      },
	  {
        type = "unlock-recipe",
        recipe = "nullius-boxed-composting-wood"
      }
    },
    unit = {
      count = 15,
      ingredients = {
        {"nullius-biochemistry-pack", 1}, {"nullius-microbiology-pack", 1},
        {"nullius-botany-pack", 2}, {"nullius-nematology-pack", 1}
      },
      time = 600
    },
    prerequisites = {"nullius-zoology-1", "nullius-solar-thermal-power-3"}
  },
  {
    type = "technology",
    name = "nullius-ecology-4",
    order = "nullius-gi",
	icons = {
      {
        icon = ICONPATH .. "target.png",
        icon_size = 64
      },
      {
        icon = "__base__/graphics/icons/defender.png",
        icon_size = 64,
        icon_mipmaps = 4,
		scale = 0.95
      },
      {
		icon = "__base__/graphics/icons/tree-08.png",
        icon_size = 64,
        icon_mipmaps = 4,
        scale = 0.7,
        shift = {4, 4}
      }
    },
    effects = {
      {
        type = "unlock-recipe",
        recipe = "nullius-arboriculture-drone"
      },
      {
        type = "unlock-recipe",
        recipe = "nullius-arboriculture-remote"
      }
    },
    unit = {
      count = 200,
	  ingredients = {
        {"nullius-biochemistry-pack", 1}, {"nullius-microbiology-pack", 1},
        {"nullius-botany-pack", 1}, {"nullius-dendrology-pack", 2},
        {"nullius-nematology-pack", 1}
      },
      time = 600
    },
    prerequisites = { "nullius-evolution-2", "nullius-solar-power-3",
	    "nullius-checkpoint-worm" }
  },
  {
    type = "technology",
    name = "nullius-zoology-2",
    order = "nullius-gh",
    icon = "__base__/graphics/icons/fish.png",
    icon_size = 64,
    icon_mipmaps = 4,
    effects = {
      {
        type = "unlock-recipe",
        recipe = "nullius-fish-genome"
      },
      {
        type = "unlock-recipe",
        recipe = "nullius-fish-progenitor"
      },
      {
        type = "unlock-recipe",
        recipe = "nullius-fish-1"
      },
      {
        type = "unlock-recipe",
        recipe = "nullius-fish-2"
      },
      {
        type = "unlock-recipe",
        recipe = "nullius-fish-disposal"
      },
      {
        type = "unlock-recipe",
        recipe = "nullius-fish-egg-disposal"
      },
      {
        type = "unlock-recipe",
        recipe = "nullius-ichthyology-pack"
      }
    },
    unit = {
      count = 30,
      ingredients = {
        {"nullius-biochemistry-pack", 1}, {"nullius-microbiology-pack", 1},
        {"nullius-botany-pack", 1}, {"nullius-nematology-pack", 2}
      },
      time = 600
    },
    prerequisites = {"nullius-sensors-4", "nullius-biochemistry-4"}
  },
  {
    type = "technology",
    name = "nullius-ecology-5",
    order = "nullius-gi",
	icons = {
      {
        icon = ICONPATH .. "target.png",
        icon_size = 64
      },
      {
        icon = "__base__/graphics/icons/defender.png",
        icon_size = 64,
        icon_mipmaps = 4,
		scale = 0.95
      },
      {
		icon = "__base__/graphics/icons/fish.png",
        icon_size = 64,
        icon_mipmaps = 4,
        scale = 0.7,
        shift = {4, 4}
      }
    },
    effects = {
      {
        type = "unlock-recipe",
        recipe = "nullius-aquaculture-drone"
      },
      {
        type = "unlock-recipe",
        recipe = "nullius-aquaculture-remote"
      }
    },
    unit = {
      count = 250,
	  ingredients = {
        {"nullius-biochemistry-pack", 1}, {"nullius-microbiology-pack", 1},
        {"nullius-botany-pack", 1}, {"nullius-nematology-pack", 1},
		{"nullius-ichthyology-pack", 2}
      },
      time = 600
    },
    prerequisites = { "nullius-checkpoint-oxygen-partial-2" }
  },

  {
    type = "technology",
    name = "nullius-biochemistry-5",
    order = "nullius-gi",
	icons = {
      {
        icon = ICONPATH .. "rubber.png",
        icon_size = 64
      },
      {
        icon = "__base__/graphics/icons/tree-08.png",
        icon_size = 64,
        icon_mipmaps = 4,
        scale = 0.6,
        shift = {-8, -8}
      }
    },
    effects = {
      {
        type = "unlock-recipe",
        recipe = "nullius-latex"
      },
      {
        type = "unlock-recipe",
        recipe = "nullius-boxed-latex"
      },
      {
        type = "unlock-recipe",
        recipe = "nullius-wood-burning"
      },
      {
        type = "unlock-recipe",
        recipe = "nullius-boxed-wood-burning"
      },
      {
        type = "unlock-recipe",
        recipe = "nullius-wood-pulping"
      },
      {
        type = "unlock-recipe",
        recipe = "nullius-boxed-wood-pulping"
      },
      {
        type = "unlock-recipe",
        recipe = "nullius-wood-chip-pyrolysis"
      },
      {
        type = "unlock-recipe",
        recipe = "nullius-boxed-wood-chip-pyrolysis"
      }
    },
    unit = {
      count = 25,
      ingredients = {
        {"nullius-biochemistry-pack", 1}, {"nullius-microbiology-pack", 1},
        {"nullius-botany-pack", 1}, {"nullius-dendrology-pack", 2},
        {"nullius-nematology-pack", 1}
      },
      time = 600
    },
    prerequisites = {"nullius-botany-2", "nullius-biochemistry-4",
	    "nullius-high-pressure-chemistry-2"}
  },
  {
    type = "technology",
    name = "nullius-biochemistry-6",
    order = "nullius-gi",
    icons = data.raw.fluid["nullius-fatty-acids"].icons,
    effects = {
      {
        type = "unlock-recipe",
        recipe = "nullius-fish-harvest"
      },
      {
        type = "unlock-recipe",
        recipe = "nullius-fish-egg-harvest"
      },
      {
        type = "unlock-recipe",
        recipe = "nullius-oil-cracking"
      },
      {
        type = "unlock-recipe",
        recipe = "nullius-biodiesel"
      },
      {
        type = "unlock-recipe",
        recipe = "nullius-biodiesel-combustion"
      },
      {
        type = "unlock-recipe",
        recipe = "nullius-glycerol-reforming"
      },
      {
        type = "unlock-recipe",
        recipe = "nullius-biodiesel-canister"
      },
      {
        type = "unlock-recipe",
        recipe = "nullius-boxed-biodiesel-canister"
      },
      {
        type = "unlock-recipe",
        recipe = "nullius-box-biodiesel-canister"
      },
      {
        type = "unlock-recipe",
        recipe = "nullius-unbox-biodiesel-canister"
      },
      {
        type = "unlock-recipe",
        recipe = "nullius-biodiesel-canister-flushing"
      },
      {
        type = "unlock-recipe",
        recipe = "nullius-fertilizer-2"
      },
      {
        type = "unlock-recipe",
        recipe = "nullius-lithium-chloride-disposal"
      },
      {
        type = "unlock-recipe",
        recipe = "nullius-oil-incineration"
      }
    },
    unit = {
      count = 40,
      ingredients = {
        {"nullius-biochemistry-pack", 1}, {"nullius-microbiology-pack", 1},
        {"nullius-botany-pack", 1}, {"nullius-dendrology-pack", 1},
        {"nullius-nematology-pack", 1}, {"nullius-ichthyology-pack", 2}
      },
      time = 600
    },
    prerequisites = {"nullius-zoology-2", "nullius-biochemistry-5"}
  },
  {
    type = "technology",
    name = "nullius-zoology-3",
    order = "nullius-gi",
    icon = "__base__/graphics/icons/small-biter.png",
    icon_size = 64,
    icon_mipmaps = 4,
    effects = {
      {
        type = "unlock-recipe",
        recipe = "nullius-arthropod-genome"
      },
      {
        type = "unlock-recipe",
        recipe = "nullius-arthropod-progenitor"
      },
      {
        type = "unlock-recipe",
        recipe = "nullius-arthropod-1"
      },
      {
        type = "unlock-recipe",
        recipe = "nullius-arthropod-2"
      },
      {
        type = "unlock-recipe",
        recipe = "nullius-arthropod-disposal"
      },
      {
        type = "unlock-recipe",
        recipe = "nullius-boxed-arthropod-disposal"
      },
      {
        type = "unlock-recipe",
        recipe = "nullius-arthropod-egg-disposal"
      },
      {
        type = "unlock-recipe",
        recipe = "nullius-zoology-pack"
      }
    },
    unit = {
      count = 150,
      ingredients = {
        {"nullius-biochemistry-pack", 1}, {"nullius-microbiology-pack", 1},
        {"nullius-botany-pack", 1}, {"nullius-dendrology-pack", 1},
        {"nullius-nematology-pack", 1}, {"nullius-ichthyology-pack", 2}
      },
      time = 600
    },
    prerequisites = { "nullius-genetic-archive-1", "nullius-checkpoint-cybernetics" }
  },
  {
    type = "technology",
    name = "nullius-ecology-6",
    order = "nullius-gj",
	icons = {
      {
        icon = ICONPATH .. "target.png",
        icon_size = 64
      },
      {
        icon = "__base__/graphics/icons/defender.png",
        icon_size = 64,
        icon_mipmaps = 4,
		scale = 0.95
      },
      {
		icon = "__base__/graphics/icons/small-biter.png",
        icon_size = 64,
        icon_mipmaps = 4,
        scale = 0.7,
        shift = {4, 4}
      }
    },
    effects = {
      {
        type = "unlock-recipe",
        recipe = "nullius-husbandry-drone"
      },
      {
        type = "unlock-recipe",
        recipe = "nullius-husbandry-remote"
      }
    },
    unit = {
      count = 300,
	  ingredients = {
        {"nullius-biochemistry-pack", 1}, {"nullius-microbiology-pack", 1},
        {"nullius-botany-pack", 1}, {"nullius-dendrology-pack", 1},
        {"nullius-nematology-pack", 1}, {"nullius-ichthyology-pack", 1},
        {"nullius-zoology-pack", 2}
      },
      time = 600
    },
    prerequisites = { "nullius-cybernetics-6", "nullius-evolution-4",
	    "nullius-checkpoint-oxygen-partial-3" }
  },
  {
    type = "technology",
    name = "nullius-woodworking",
    order = "nullius-gi",
    icon = "__base__/graphics/icons/wood.png",
    icon_size = 64,
    icon_mipmaps = 4,
    effects = {
      {
        type = "unlock-recipe",
        recipe = "nullius-wooden-chest"
      },
      {
        type = "unlock-recipe",
        recipe = "nullius-wooden-power-pole-1"
      },
      {
        type = "unlock-recipe",
        recipe = "nullius-wooden-power-pole-2"
      },
      {
        type = "unlock-recipe",
        recipe = "nullius-wooden-rail"
      },
      {
        type = "unlock-recipe",
        recipe = "nullius-wood-paneling"
      },
      {
        type = "unlock-recipe",
        recipe = "nullius-wooden-wall"
      },
      {
        type = "unlock-recipe",
        recipe = "nullius-wooden-medium-assembler-1"
      },
      {
        type = "unlock-recipe",
        recipe = "nullius-wooden-medium-miner-1"
      },
      {
        type = "unlock-recipe",
        recipe = "nullius-particle-board"
      },
      {
        type = "unlock-recipe",
        recipe = "nullius-boxed-wooden-power-pole-1"
      },
      {
        type = "unlock-recipe",
        recipe = "nullius-boxed-wooden-power-pole-2"
      },
      {
        type = "unlock-recipe",
        recipe = "nullius-boxed-wooden-rail"
      },
      {
        type = "unlock-recipe",
        recipe = "nullius-boxed-wood-paneling"
      },
      {
        type = "unlock-recipe",
        recipe = "nullius-boxed-wooden-wall"
      },
      {
        type = "unlock-recipe",
        recipe = "nullius-boxed-particle-board"
      }
    },
    unit = {
      count = 20,
      ingredients = {
        {"nullius-biochemistry-pack", 1}, {"nullius-microbiology-pack", 1},
        {"nullius-botany-pack", 1}, {"nullius-dendrology-pack", 2}
      },
      time = 600
    },
    prerequisites = {"nullius-botany-2", "nullius-weaving-3", "nullius-inserter-capacity-5"}
  },
  {
    type = "technology",
    name = "nullius-evolution-2",
    order = "nullius-gh",
    icons = data.raw.item["nullius-algae-genome"].icons,
    effects = {
      {
        type = "unlock-recipe",
        recipe = "nullius-algae-3"
      },
      {
        type = "unlock-recipe",
        recipe = "nullius-algae-progenitor-2"
      }
    },
    unit = {
      count = 160,
      ingredients = {
        {"nullius-biochemistry-pack", 1}, {"nullius-microbiology-pack", 1},
		{"nullius-botany-pack", 1}, {"nullius-nematology-pack", 1},
		{"nullius-ichthyology-pack", 1}
      },
      time = 600
    },
    prerequisites = {"nullius-biochemistry-8", "nullius-checkpoint-carbon-sequestration"}
  },
  {
    type = "technology",
    name = "nullius-evolution-3",
    order = "nullius-gi",
    icons = data.raw.item["nullius-grass-genome"].icons,
    effects = {
      {
        type = "unlock-recipe",
        recipe = "nullius-grass-3"
      },
      {
        type = "unlock-recipe",
        recipe = "nullius-grass-progenitor-2"
      }
    },
	unit = {
      count = 250,
      ingredients = {
        {"nullius-biochemistry-pack", 1}, {"nullius-microbiology-pack", 1},
		{"nullius-botany-pack", 2}, {"nullius-nematology-pack", 1},
		{"nullius-dendrology-pack", 1}
      },
      time = 600
    },
    prerequisites = { "nullius-ecology-4", "nullius-genetic-archive-2" }
  },
  {
    type = "technology",
    name = "nullius-cybernetics-6",
    order = "nullius-gi",
    icon = "__base__/graphics/technology/power-armor-mk2.png",
    icon_size = 256,
    icon_mipmaps = 4,
    effects = {
      {
        type = "unlock-recipe",
        recipe = "nullius-chassis-5"
      },
      {
        type = "unlock-recipe",
        recipe = "nullius-leg-augmentation-3"
      },
      {
        type = "unlock-recipe",
        recipe = "nullius-quadrupedal-adaptation-3"
      },
      {
        type = "unlock-recipe",
        recipe = "nullius-multi-tool-3"
      },
      {
        type = "unlock-recipe",
        recipe = "nullius-telekinesis-field-3"
      },
      {
        type = "character-health-bonus",
        modifier = 150
      }
    },
    unit = {
      count = 25000,
      ingredients = {
        {"nullius-geology-pack", 1}, {"nullius-climatology-pack", 1},
        {"nullius-mechanical-pack", 2}, {"nullius-electrical-pack", 1},
        {"nullius-chemical-pack", 1}, {"nullius-physics-pack", 1},
        {"nullius-astronomy-pack", 1}
      },
      time = 60
    },
    prerequisites = {"nullius-personal-storage-4"}
  },
  {
    type = "technology",
    name = "nullius-personal-storage-4",
    order = "nullius-gi",
    icon = "__base__/graphics/technology/toolbelt.png",
    icon_size = 256,
    icon_mipmaps = 4,
    effects = {
      {
        type = "character-inventory-slots-bonus",
        modifier = 10
      }
    },
    unit = {
      count = 20000,
      ingredients = {
        {"nullius-geology-pack", 1}, {"nullius-climatology-pack", 1},
        {"nullius-mechanical-pack", 1}, {"nullius-electrical-pack", 1},
        {"nullius-chemical-pack", 1}, {"nullius-physics-pack", 1},
        {"nullius-astronomy-pack", 1}
      },
      time = 60
    },
    prerequisites = {"nullius-inserter-capacity-7", "nullius-construction-robot-4"}
  },

  {
    type = "technology",
    name = "nullius-evolution-4",
    order = "nullius-gj",
    icons = data.raw.item["nullius-worm-genome"].icons,
    effects = {
      {
        type = "unlock-recipe",
        recipe = "nullius-worm-3"
      },
      {
        type = "unlock-recipe",
        recipe = "nullius-worm-progenitor-2"
      }
    },
    unit = {
      count = 300,
      ingredients = {
        {"nullius-biochemistry-pack", 1}, {"nullius-microbiology-pack", 1},
		{"nullius-botany-pack", 1}, {"nullius-nematology-pack", 2},
		{"nullius-dendrology-pack", 1}, {"nullius-ichthyology-pack", 1}
      },
      time = 600
    },
    prerequisites = { "nullius-biochemistry-9", "nullius-checkpoint-fish" }
  },
  {
    type = "technology",
    name = "nullius-carbon-sequestration-4",
    order = "nullius-gj",
    icon = "__base__/graphics/technology/coal-liquefaction.png",
    icon_size = 256,
    icon_mipmaps = 4,
    effects = {
      {
        type = "unlock-recipe",
        recipe = "nullius-coal"
      },
      {
        type = "unlock-recipe",
        recipe = "nullius-petroleum"
      },
      {
        type = "unlock-recipe",
        recipe = "nullius-boxed-coal"
      },
      {
        type = "unlock-recipe",
        recipe = "nullius-box-coal"
      },
      {
        type = "unlock-recipe",
        recipe = "nullius-unbox-coal"
      },
      {
        type = "unlock-recipe",
        recipe = "nullius-sequestration-coal-drone"
      },
      {
        type = "unlock-recipe",
        recipe = "nullius-sequestration-coal-remote"
      },
      {
        type = "unlock-recipe",
        recipe = "nullius-sequestration-petroleum-drone"
      },
      {
        type = "unlock-recipe",
        recipe = "nullius-sequestration-petroleum-remote"
      }
    },
    unit = {
      count = 120,
      ingredients = {
        {"nullius-biochemistry-pack", 2}, {"nullius-microbiology-pack", 2},
        {"nullius-dendrology-pack", 1}, {"nullius-ichthyology-pack", 1}
      },
      time = 600
    },
    prerequisites = {"nullius-evolution-1", "nullius-carbon-sequestration-3"}
  },
  {
    type = "technology",
    name = "nullius-air-separation-5",
    order = "nullius-gj",
	icons = data.raw.recipe["nullius-oxygen-separation"].icons,
    effects = {
      {
        type = "unlock-recipe",
        recipe = "nullius-oxygen-separation"
      },
      {
        type = "unlock-recipe",
        recipe = "nullius-pressure-oxygen-separation"
      }
    },
    unit = {
      count = 10000,
      ingredients = {
        {"nullius-climatology-pack", 3}, {"nullius-mechanical-pack", 1},
		{"nullius-electrical-pack", 1}, {"nullius-chemical-pack", 1},
		{"nullius-physics-pack", 1}
      },
      time = 60
    },
    prerequisites = {"nullius-checkpoint-oxygen"}
  },
  {
    type = "technology",
    name = "nullius-biochemistry-7",
    order = "nullius-gj",
	icons = {
      {
		icon = "__base__/graphics/icons/fluid/lubricant.png",
		icon_size = 64,
		icon_mipmaps = 4
      },
      {
        icon = "__base__/graphics/icons/fluid/light-oil.png",
        icon_size = 64,
        icon_mipmaps = 4,
        scale = 0.4,
        shift = {-12, -10}
      }
    },
    effects = {
      {
        type = "unlock-recipe",
        recipe = "nullius-fatty-acid-pyrolysis"
      },
      {
        type = "unlock-recipe",
        recipe = "nullius-boxed-fatty-acid-pyrolysis"
      },
      {
        type = "unlock-recipe",
        recipe = "nullius-glycerol-to-ech"
      },
      {
        type = "unlock-recipe",
        recipe = "nullius-biolubricant"
      }
    },
    unit = {
      count = 80,
      ingredients = {
        {"nullius-biochemistry-pack", 2}, {"nullius-microbiology-pack", 1},
        {"nullius-botany-pack", 1}, {"nullius-dendrology-pack", 1},
        {"nullius-nematology-pack", 1}, {"nullius-ichthyology-pack", 1}
      },
      time = 600
    },
    prerequisites = {"nullius-biochemistry-6", "nullius-checkpoint-wood", "nullius-empiricism-6"}
  },
  {
    type = "technology",
    name = "nullius-biochemistry-8",
    order = "nullius-gk",
    icons = data.raw.item["nullius-graphene"].icons,
    effects = {
      {
        type = "unlock-recipe",
        recipe = "nullius-plastic-pyrolysis"
      },
      {
        type = "unlock-recipe",
        recipe = "nullius-rubber-pyrolysis"
      },
      {
        type = "unlock-recipe",
        recipe = "nullius-arthropod-harvest"
      },
      {
        type = "unlock-recipe",
        recipe = "nullius-arthropod-egg-harvest"
      },
      {
        type = "unlock-recipe",
        recipe = "nullius-boxed-plastic-pyrolysis"
      },
      {
        type = "unlock-recipe",
        recipe = "nullius-boxed-arthropod-harvest"
      }
    },
    unit = {
      count = 200,
      ingredients = {
        {"nullius-biochemistry-pack", 2}, {"nullius-microbiology-pack", 1},
        {"nullius-botany-pack", 1}, {"nullius-dendrology-pack", 1},
        {"nullius-nematology-pack", 1}, {"nullius-ichthyology-pack", 1},
        {"nullius-zoology-pack", 2}
      },
      time = 600
    },
    prerequisites = { "nullius-zoology-3", "nullius-carbon-sequestration-3" }
  },
  {
    type = "technology",
    name = "nullius-locomotion-5",
    order = "nullius-gj",
    icon = "__base__/graphics/technology/exoskeleton-equipment.png",
    icon_size = 256,
    icon_mipmaps = 4,
    effects = {
      {
        type = "character-running-speed",
        modifier = 0.1
      }
    },
    unit = {
      count = 300,
      ingredients = {
        {"nullius-nematology-pack", 1}, {"nullius-ichthyology-pack", 1},
        {"nullius-zoology-pack", 2}
      },
      time = 600
    },
    prerequisites = {"nullius-cybernetics-6", "nullius-parallel-computing-4", "nullius-checkpoint-arthropod"}
  },
  {
    type = "technology",
    name = "nullius-wildlife-management-2",
    order = "nullius-gj",
    icon = "__base__/graphics/technology/laser-turret.png",
    icon_size = 256,
    icon_mipmaps = 4,
    effects = {
      {
        type = "unlock-recipe",
        recipe = "nullius-turret"
      },
      {
        type = "unlock-recipe",
        recipe = "nullius-shield"
      }
    },
    unit = {
      count = 180,
      ingredients = {
        {"nullius-microbiology-pack", 1}, {"nullius-botany-pack", 1},
        {"nullius-dendrology-pack", 1}, {"nullius-nematology-pack", 1},
        {"nullius-ichthyology-pack", 1}, {"nullius-zoology-pack", 2}
      },
      time = 600
    },
    prerequisites = {"nullius-ecology-6", "nullius-checkpoint-antimatter"}
  },

  {
    type = "technology",
    name = "nullius-evolution-5",
    order = "nullius-gk",
    icons = data.raw.item["nullius-fish-genome"].icons,
    effects = {
      {
        type = "unlock-recipe",
        recipe = "nullius-fish-3"
      },
      {
        type = "unlock-recipe",
        recipe = "nullius-fish-progenitor-2"
      }
    },
    unit = {
      count = 400,
      ingredients = {
        {"nullius-biochemistry-pack", 1}, {"nullius-microbiology-pack", 1},
		{"nullius-botany-pack", 1}, {"nullius-nematology-pack", 1},
		{"nullius-ichthyology-pack", 2}, {"nullius-zoology-pack", 1}
      },
      time = 600
    },
    prerequisites = { "nullius-checkpoint-arthropod" }
  },
  {
    type = "technology",
    name = "nullius-evolution-6",
    order = "nullius-gl",
    icons = data.raw.item["nullius-tree-genome"].icons,
    effects = {
      {
        type = "unlock-recipe",
        recipe = "nullius-tree-3"
      },
      {
        type = "unlock-recipe",
        recipe = "nullius-tree-progenitor-2"
      }
    },
    unit = {
      count = 450,
      ingredients = {
        {"nullius-biochemistry-pack", 1}, {"nullius-microbiology-pack", 1},
		{"nullius-botany-pack", 1}, {"nullius-nematology-pack", 1},
		{"nullius-dendrology-pack", 2}, {"nullius-zoology-pack", 1}
      },
      time = 600
    },
    prerequisites = {"nullius-checkpoint-solar-panel", "nullius-evolution-5"}
  },
  {
    type = "technology",
    name = "nullius-evolution-7",
    order = "nullius-gm",
    icons = data.raw.item["nullius-arthropod-genome"].icons,
    effects = {
      {
        type = "unlock-recipe",
        recipe = "nullius-arthropod-3"
      },
      {
        type = "unlock-recipe",
        recipe = "nullius-arthropod-progenitor-2"
      }
    },
    unit = {
      count = 500,
      ingredients = {
        {"nullius-biochemistry-pack", 1}, {"nullius-microbiology-pack", 1},
		{"nullius-botany-pack", 1}, {"nullius-nematology-pack", 1},
		{"nullius-dendrology-pack", 1}, {"nullius-ichthyology-pack", 1},
		{"nullius-zoology-pack", 2}
      },
      time = 600
    },
    prerequisites = {"nullius-checkpoint-android-2", "nullius-evolution-6"}
  },
  {
    type = "technology",
    name = "nullius-biochemistry-9",
    order = "nullius-gl",
    icons = data.raw.recipe["nullius-biomass-cultivation"].icons,
    effects = {
      {
        type = "unlock-recipe",
        recipe = "nullius-biomass-cultivation"
      },
      {
        type = "unlock-recipe",
        recipe = "nullius-nucleotide-metabolism"
      },
      {
        type = "unlock-recipe",
        recipe = "nullius-boxed-biomass-cultivation"
      },
      {
        type = "unlock-recipe",
        recipe = "nullius-glycolysis"
      },
      {
        type = "unlock-recipe",
        recipe = "nullius-boxed-glycolysis"
      },
      {
        type = "unlock-recipe",
        recipe = "nullius-carbon-nanotubes"
      },
      {
        type = "unlock-recipe",
        recipe = "nullius-boxed-carbon-nanotubes"
      }
    },
    unit = {
      count = 250,
      ingredients = {
        {"nullius-biochemistry-pack", 1}, {"nullius-microbiology-pack", 1},
        {"nullius-botany-pack", 1}, {"nullius-dendrology-pack", 1},
        {"nullius-nematology-pack", 1}, {"nullius-ichthyology-pack", 1},
        {"nullius-zoology-pack", 1}
      },
      time = 600
    },
    prerequisites = { "nullius-evolution-3" }
  },
  {
    type = "technology",
    name = "nullius-asteroid-mining-2",
    order = "nullius-gk",
    icon = ICONPATH .. "asteroid-miner-1.png",
    icon_size = 64,
    effects = {
      {
        type = "unlock-recipe",
        recipe = "nullius-asteroid-miner-2"
      },
      {
        type = "unlock-recipe",
        recipe = "nullius-guide-drone-iron-redeploy"
      },
      {
        type = "unlock-recipe",
        recipe = "nullius-guide-drone-sandstone-redeploy"
      },
      {
        type = "unlock-recipe",
        recipe = "nullius-guide-drone-bauxite-redeploy"
      },
      {
        type = "unlock-recipe",
        recipe = "nullius-guide-drone-limestone-redeploy"
      },
      {
        type = "unlock-recipe",
        recipe = "nullius-guide-drone-copper-redeploy"
      },
      {
        type = "unlock-recipe",
        recipe = "nullius-guide-drone-uranium-redeploy"
      }
    },
    unit = {
      count = 40000,
      ingredients = {
        {"nullius-geology-pack", 2}, {"nullius-mechanical-pack", 1},
        {"nullius-electrical-pack", 1}, {"nullius-physics-pack", 1},
        {"nullius-astronomy-pack", 2}
      },
      time = 60
    },
    prerequisites = {"nullius-wildlife-management-2"}
  },
  {
    type = "technology",
    name = "nullius-artificial-intelligence-2",
    order = "nullius-gk",
    icon = "__base__/graphics/technology/rocket-control-unit.png",
    icon_size = 256,
    icon_mipmaps = 4,
    effects = {
      {
        type = "unlock-recipe",
        recipe = "nullius-android-2"
      }
    },
    unit = {
      count = 50000,
      ingredients = {
        {"nullius-electrical-pack", 2}, {"nullius-mechanical-pack", 1},
        {"nullius-physics-pack", 1}, {"nullius-astronomy-pack", 1}
      },
      time = 60
    },
    prerequisites = {"nullius-locomotion-5"}
  },

  {
    type = "technology",
    name = "nullius-rocket-science-3",
    order = "nullius-gl",
    icon = "__base__/graphics/technology/explosive-rocketry.png",
    icon_size = 256,
    icon_mipmaps = 4,
    effects = {
      {
        type = "unlock-recipe",
        recipe = "nullius-probe"
      }
    },
    unit = {
      count = 100000,
      ingredients = {
        {"nullius-geology-pack", 1}, {"nullius-climatology-pack", 1},
        {"nullius-mechanical-pack", 1}, {"nullius-electrical-pack", 1},
        {"nullius-chemical-pack", 1}, {"nullius-physics-pack", 1},
        {"nullius-astronomy-pack", 1}
      },
      time = 60
    },
    prerequisites = {"nullius-asteroid-mining-2", "nullius-checkpoint-android-2"}
  },
  {
    type = "technology",
    name = "nullius-asteroid-mining-3",
    order = "nullius-gl",
    icon = ICONPATH .. "asteroid-miner-2.png",
    icon_size = 64,
    effects = {
      {
        type = "unlock-recipe",
        recipe = "nullius-guide-drone-iron-2"
      },
      {
        type = "unlock-recipe",
        recipe = "nullius-guide-drone-sandstone-2"
      },
      {
        type = "unlock-recipe",
        recipe = "nullius-guide-drone-bauxite-2"
      },
      {
        type = "unlock-recipe",
        recipe = "nullius-guide-drone-limestone-2"
      },
      {
        type = "unlock-recipe",
        recipe = "nullius-guide-drone-copper-2"
      },
      {
        type = "unlock-recipe",
        recipe = "nullius-guide-drone-uranium-2"
      }
    },
    unit = {
      count = 80000,
      ingredients = {
        {"nullius-geology-pack", 1}, {"nullius-climatology-pack", 1},
        {"nullius-mechanical-pack", 1}, {"nullius-electrical-pack", 1},
        {"nullius-chemical-pack", 1}, {"nullius-physics-pack", 1},
        {"nullius-astronomy-pack", 1}
      },
      time = 60
    },
    prerequisites = {"nullius-checkpoint-asteroid-mining", "nullius-air-separation-5"}
  },
  {
    type = "technology",
    name = "nullius-miniaturization-3",
    order = "nullius-gl",
    icon = ICONPATH .. "hangar.png",
    icon_size = 64,
    effects = {
      {
        type = "unlock-recipe",
        recipe = "nullius-charger-4"
      },
      {
        type = "unlock-recipe",
        recipe = "nullius-hangar-4"
      },
      {
        type = "unlock-recipe",
        recipe = "nullius-leg-augmentation-4"
      },
      {
        type = "unlock-recipe",
        recipe = "nullius-quadrupedal-adaptation-4"
      },
      {
        type = "unlock-recipe",
        recipe = "nullius-boxed-charger-4"
      },
      {
        type = "unlock-recipe",
        recipe = "nullius-box-charger-4"
      },
      {
        type = "unlock-recipe",
        recipe = "nullius-unbox-charger-4"
      }
    },
    unit = {
      count = 300000,
      ingredients = {
        {"nullius-geology-pack", 1}, {"nullius-climatology-pack", 1},
        {"nullius-mechanical-pack", 2}, {"nullius-electrical-pack", 2},
        {"nullius-chemical-pack", 1}, {"nullius-physics-pack", 2},
        {"nullius-astronomy-pack", 1}
      },
      time = 60
    },
    prerequisites = {"nullius-checkpoint-probe"}
  },

  {
    type = "technology",
    name = "nullius-battery-storage-5",
    order = "nullius-gm",
    icon = ICONPATH .. "battery3.png",
    icon_size = 64,
    effects = {
      {
        type = "unlock-recipe",
        recipe = "nullius-battery-3"
      },
      {
        type = "unlock-recipe",
        recipe = "nullius-battery-recharging-3"
      }
    },
    unit = {
      count = 500000,
      ingredients = {
        {"nullius-geology-pack", 1}, {"nullius-climatology-pack", 1},
        {"nullius-mechanical-pack", 1}, {"nullius-electrical-pack", 2},
        {"nullius-chemical-pack", 2}, {"nullius-physics-pack", 1}
      },
      time = 60
    },
    prerequisites = {"nullius-asteroid-mining-3", "nullius-checkpoint-solar-panel"}
  },
  {
    type = "technology",
    name = "nullius-battery-storage-6",
    order = "nullius-gm",
    icon = "__base__/graphics/technology/electric-energy-acumulators.png",
    icon_size = 256,
    icon_mipmaps = 4,
    effects = {
      {
        type = "unlock-recipe",
        recipe = "nullius-grid-battery-3"
      }
    },
    unit = {
      count = 1000000,
      ingredients = {
        {"nullius-climatology-pack", 1},
        {"nullius-mechanical-pack", 1}, {"nullius-electrical-pack", 1},
        {"nullius-chemical-pack", 1}, {"nullius-astronomy-pack", 1}
      },
      time = 60
    },
    prerequisites = {"nullius-battery-storage-5"}
  },
  {
    type = "technology",
    name = "nullius-broadcasting-5",
    localised_description = {"technology-description.nullius-broadcasting-5"},
    order = "nullius-gm",
    icon = "__boblogistics__/graphics/entity/roboport/logistic-zone-expander-3.png",
    icon_size = 128,
    effects = {
      {
        type = "unlock-recipe",
        recipe = "nullius-relay-4"
      }
    },
    unit = {
      count = 750000,
      ingredients = {
        {"nullius-geology-pack", 1}, {"nullius-climatology-pack", 1},
        {"nullius-mechanical-pack", 1}, {"nullius-electrical-pack", 2},
        {"nullius-chemical-pack", 1}, {"nullius-physics-pack", 1},
        {"nullius-astronomy-pack", 1}
      },
      time = 60
    },
    prerequisites = {"nullius-miniaturization-3"}
  },
  {
    type = "technology",
    name = "nullius-solar-power-4",
    order = "nullius-gm",
    icon = "__base__/graphics/technology/solar-energy.png",
    icon_size = 256,
    icon_mipmaps = 4,
    effects = {
      {
        type = "unlock-recipe",
        recipe = "nullius-solar-panel-4"
      }
    },
    unit = {
      count = 2000000,
      ingredients = {
        {"nullius-geology-pack", 1}, {"nullius-climatology-pack", 1},
        {"nullius-mechanical-pack", 1}, {"nullius-electrical-pack", 1},
        {"nullius-chemical-pack", 1}, {"nullius-physics-pack", 1},
        {"nullius-astronomy-pack", 1}
      },
      time = 60
    },
    prerequisites = {"nullius-battery-storage-5", "nullius-miniaturization-3", "nullius-evolution-6"}
  },
  {
    type = "technology",
    name = "nullius-cybernetics-7",
    order = "nullius-gm",
    icon = "__base__/graphics/technology/power-armor-mk2.png",
    icon_size = 256,
    icon_mipmaps = 4,
    effects = {
      {
        type = "unlock-recipe",
        recipe = "nullius-chassis-6"
      },
      {
        type = "unlock-recipe",
        recipe = "nullius-stabilizer-2"
      }
    },
    unit = {
      count = 3000000,
      ingredients = {
        {"nullius-geology-pack", 1}, {"nullius-climatology-pack", 1},
        {"nullius-mechanical-pack", 2}, {"nullius-electrical-pack", 1},
        {"nullius-chemical-pack", 1}, {"nullius-physics-pack", 1},
        {"nullius-astronomy-pack", 1}
      },
      time = 60
    },
    prerequisites = {"nullius-solar-power-4", "nullius-broadcasting-5", "nullius-evolution-7"}
  },
  {
    type = "technology",
    name = "nullius-personal-transportation-5",
    order = "nullius-gm",
    icon = "__base__/graphics/technology/spidertron.png",
    icon_size = 256,
    icon_mipmaps = 4,
    effects = {
      {
        type = "unlock-recipe",
        recipe = "nullius-mecha-2"
      }
    },
    unit = {
      count = 10000,
      ingredients = {
        {"nullius-biochemistry-pack", 1}, {"nullius-dendrology-pack", 1},
        {"nullius-zoology-pack", 2}
      },
      time = 600
    },
    prerequisites = {"nullius-checkpoint-cybernetics-2", "nullius-checkpoint-grid-battery"}
  }
})
