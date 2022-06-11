local ICONPATH = "__nullius__/graphics/icons/"
local BASEICON = "__base__/graphics/icons/"

data:extend({
  {
    type = "technology",
    name = "nullius-checkpoint-iron-ingot",
    localised_name = {"technology-name.nullius-checkpoint", {"technology-name.nullius-assay",
	    {"item-name.nullius-iron-ingot"}}},
    localised_description = {"technology-description.nullius-produce",
	    {"technology-description.nullius-item", 16, "nullius-iron-ingot", {"item-name.nullius-iron-ingot"}}},
    order = "nullius-yb",
    icons = {
      {
        icon = "__angelssmelting__/graphics/technology/smelting-iron-tech.png",
        icon_size = 256,
        icon_mipmaps = 4
      },
      {
        icon = ICONPATH .. "checkpoint.png",
        icon_size = 64,
        icon_mipmaps = 4,
		scale = 4,
		tint = {0.6, 0.6, 0.6, 0.6}
      }
    },
    unit = {
      count = 1,
      ingredients = {{"nullius-checkpoint", 1}, {"nullius-geology-pack", 1}},
      time = 1
    },
    prerequisites = {"nullius-iron-smelting-1"},
    ignore_tech_cost_multiplier = true
  },
  {
    type = "technology",
    name = "nullius-checkpoint-stone-brick",
    localised_name = {"technology-name.nullius-checkpoint", {"technology-name.nullius-specimen",
	    {"item-name.stone-brick"}}},
    localised_description = {"technology-description.nullius-produce",
	    {"technology-description.nullius-item", 40, "stone-brick", {"item-name.stone-brick"}}},
    order = "nullius-yb",
    icons = {
      {
        icon = BASEICON .. "stone-brick.png",
        icon_size = 64,
        icon_mipmaps = 4
      },
      {
        icon = ICONPATH .. "checkpoint.png",
        icon_size = 64,
        icon_mipmaps = 4,
		tint = {0.6, 0.6, 0.6, 0.6}
      }
    },
    unit = {
      count = 1,
      ingredients = {{"nullius-checkpoint", 1}, {"nullius-geology-pack", 1}},
      time = 1
    },
    prerequisites = {"nullius-masonry-2"},
    ignore_tech_cost_multiplier = true
  },
  {
    type = "technology",
    name = "nullius-checkpoint-plastic",
    localised_name = {"technology-name.nullius-checkpoint", {"technology-name.nullius-specimen",
	    {"item-name.nullius-plastic"}}},
    localised_description = {"technology-description.nullius-produce",
	    {"technology-description.nullius-item", 5, "nullius-plastic", {"item-name.nullius-plastic"}}},
    order = "nullius-yb",
    icons = {
      {
        icon = BASEICON .. "plastic-bar.png",
        icon_size = 64,
        icon_mipmaps = 4
      },
      {
        icon = ICONPATH .. "checkpoint.png",
        icon_size = 64,
        icon_mipmaps = 4,
		tint = {0.6, 0.6, 0.6, 0.6}
      }
    },
    unit = {
      count = 1,
      ingredients = {{"nullius-checkpoint", 1}, {"nullius-climatology-pack", 1}},
      time = 1
    },
    prerequisites = {"nullius-organic-chemistry-1"},
    ignore_tech_cost_multiplier = true
  },
  {
    type = "technology",
    name = "nullius-checkpoint-iron-ore",
    localised_name = {"technology-name.nullius-checkpoint", {"technology-name.nullius-assay",
	    {"item-name.iron-ore"}}},
    localised_description = {"technology-description.nullius-produce",
	    {"technology-description.nullius-item", 400, "iron-ore", {"item-name.iron-ore"}}},
    order = "nullius-yb",
    icons = {
      {
        icon = BASEICON .. "iron-ore.png",
        icon_size = 64,
        icon_mipmaps = 4
      },
      {
        icon = ICONPATH .. "checkpoint.png",
        icon_size = 64,
        icon_mipmaps = 4,
		tint = {0.6, 0.6, 0.6, 0.6}
      }
    },
    unit = {
      count = 1,
      ingredients = {{"nullius-checkpoint", 1}, {"nullius-geology-pack", 1}},
      time = 1
    },
    prerequisites = {"nullius-mining-productivity-1"},
    ignore_tech_cost_multiplier = true
  },
  {
    type = "technology",
    name = "nullius-checkpoint-hydrogen",
    localised_name = {"technology-name.nullius-checkpoint", {"technology-name.nullius-sample",
	    {"fluid-name.nullius-hydrogen"}}},
    localised_description = {"technology-description.nullius-produce",
	    {"technology-description.nullius-fluid", 1000, "nullius-hydrogen", {"fluid-name.nullius-hydrogen"}}},
    order = "nullius-yb",
    icons = {
      {
        icon = "__angelspetrochem__/graphics/icons/molecules/hydrogen.png",
        icon_size = 72
      },
      {
        icon = ICONPATH .. "checkpoint.png",
        icon_size = 64,
        icon_mipmaps = 4,
		scale = 1.125,
		tint = {0.6, 0.6, 0.6, 0.6}
      }
    },
    unit = {
      count = 1,
      ingredients = {{"nullius-checkpoint", 1}, {"nullius-climatology-pack", 1}},
      time = 1
    },
    prerequisites = {"nullius-electrolysis-1"},
    ignore_tech_cost_multiplier = true
  },
  {
    type = "technology",
    name = "nullius-checkpoint-carbon-dioxide",
    localised_name = {"technology-name.nullius-checkpoint", {"technology-name.nullius-sample",
	    {"fluid-name.nullius-carbon-dioxide"}}},
    localised_description = {"technology-description.nullius-produce",
	    {"technology-description.nullius-fluid", 1000, "nullius-carbon-dioxide", {"fluid-name.nullius-carbon-dioxide"}}},
    order = "nullius-yb",
    icons = {
      {
        icon = "__angelspetrochem__/graphics/icons/molecules/carbon-dioxide.png",
        icon_size = 72
      },
      {
        icon = ICONPATH .. "checkpoint.png",
        icon_size = 64,
        icon_mipmaps = 4,
		scale = 1.125,
		tint = {0.6, 0.6, 0.6, 0.6}
      }
    },
    unit = {
      count = 1,
      ingredients = {{"nullius-checkpoint", 1}, {"nullius-climatology-pack", 1}},
      time = 1
    },
    prerequisites = {"nullius-air-separation-1"},
    ignore_tech_cost_multiplier = true
  },
  {
    type = "technology",
    name = "nullius-checkpoint-furnace",
    localised_name = {"technology-name.nullius-checkpoint", {"technology-name.nullius-demonstration",
	    {"entity-name.nullius-small-furnace-1"}}},
    localised_description = {"technology-description.nullius-build",
	    {"technology-description.nullius-item", 4, "nullius-small-furnace-1", {"entity-name.nullius-small-furnace-1"}}},
    order = "nullius-yb",
    icons = {
      {
        icon = BASEICON .. "blueprint.png",
        icon_size = 64,
        icon_mipmaps = 4
      },
      {
        icon = BASEICON .. "stone-furnace.png",
        icon_size = 64,
        icon_mipmaps = 4
      }
    },
    unit = {
      count = 1,
      ingredients = {{"nullius-checkpoint", 1}, {"nullius-requirement-build", 1}, {"nullius-geology-pack", 1}},
      time = 1
    },
    prerequisites = {"nullius-metallurgy-1"},
    ignore_tech_cost_multiplier = true
  },

  {
    type = "technology",
    name = "nullius-checkpoint-water",
    localised_name = {"technology-name.nullius-checkpoint", {"technology-name.nullius-utilization",
	    {"fluid-name.nullius-water"}}},
    localised_description = {"technology-description.nullius-consume",
	    {"technology-description.nullius-fluid", 5000, "nullius-water", {"fluid-name.nullius-water"}}},
    order = "nullius-yc",
    icons = {
      {
        icon = ICONPATH .. "fluid/unbarrel.png",
        icon_size = 64
      },
      {
        icon = ICONPATH .. "fluid/purewater.png",
        icon_size = 64,
        icon_mipmaps = 4,
		scale = 0.8
      }
    },
    unit = {
      count = 1,
      ingredients = {{"nullius-checkpoint", 1}, {"nullius-requirement-consume", 1}, {"nullius-mechanical-pack", 1}},
      time = 1
    },
    prerequisites = {"nullius-electrolysis-2"},
    ignore_tech_cost_multiplier = true
  },
  {
    type = "technology",
    name = "nullius-checkpoint-caustic-solution",
    localised_name = {"technology-name.nullius-checkpoint", {"technology-name.nullius-utilization",
	    {"fluid-name.nullius-caustic-solution"}}},
    localised_description = {"technology-description.nullius-consume",
	    {"technology-description.nullius-fluid", 250, "nullius-caustic-solution",
		    {"fluid-name.nullius-caustic-solution"}}},
    order = "nullius-yc",
    icons = {
      {
        icon = ICONPATH .. "fluid/unbarrel.png",
        icon_size = 64
      },
      {
        icon = ICONPATH .. "fluid/sodium-hydroxide.png",
        icon_size = 64,
		scale = 0.64
      }
    },
    unit = {
      count = 1,
      ingredients = {{"nullius-checkpoint", 1}, {"nullius-requirement-consume", 1}, {"nullius-mechanical-pack", 1}},
      time = 1
    },
    prerequisites = {"nullius-checkpoint-water", "nullius-chemical-engineering-1"},
    ignore_tech_cost_multiplier = true
  },
  {
    type = "technology",
    name = "nullius-checkpoint-sandstone",
    localised_name = {"technology-name.nullius-checkpoint", {"technology-name.nullius-assay",
	    {"item-name.nullius-sandstone"}}},
    localised_description = {"technology-description.nullius-produce",
	    {"technology-description.nullius-item", 1000, "nullius-sandstone", {"item-name.nullius-sandstone"}}},
    order = "nullius-yc",
    icons = {
	  data.raw.item["nullius-sandstone"].icons[1],
      {
        icon = ICONPATH .. "checkpoint.png",
        icon_size = 64,
        icon_mipmaps = 4,
		tint = {0.6, 0.6, 0.6, 0.6}
      }
    },
    unit = {
      count = 1,
      ingredients = {{"nullius-checkpoint", 1}, {"nullius-mechanical-pack", 1}},
      time = 1
    },
    prerequisites = {"nullius-mining-productivity-4"},
    ignore_tech_cost_multiplier = true
  },
  {
    type = "technology",
    name = "nullius-checkpoint-bauxite",
    localised_name = {"technology-name.nullius-checkpoint", {"technology-name.nullius-assay",
	    {"item-name.nullius-bauxite"}}},
    localised_description = {"technology-description.nullius-produce",
	    {"technology-description.nullius-item", 2000, "nullius-bauxite", {"item-name.nullius-bauxite"}}},
    order = "nullius-yc",
    icons = {
	  data.raw.item["nullius-bauxite"].icons[1],
      {
        icon = ICONPATH .. "checkpoint.png",
        icon_size = 64,
        icon_mipmaps = 4,
		scale = 0.5,
		tint = {0.6, 0.6, 0.6, 0.6}
      }
    },
    unit = {
      count = 1,
      ingredients = {{"nullius-checkpoint", 1}, {"nullius-mechanical-pack", 1}},
      time = 1
    },
    prerequisites = {"nullius-mining-productivity-7"},
    ignore_tech_cost_multiplier = true
  },
  {
    type = "technology",
    name = "nullius-checkpoint-wind-power",
    localised_name = {"technology-name.nullius-checkpoint", {"technology-name.nullius-demonstration",
	    {"technology-name.nullius-wind-power"}}},
    localised_description = {"technology-description.nullius-build",
	    {"technology-description.nullius-item", 5, "nullius-wind-turbine-1", {"entity-name.nullius-wind-base-1"}}},
    order = "nullius-yc",
    icons = {
      {
        icon = BASEICON .. "blueprint.png",
        icon_size = 64,
        icon_mipmaps = 4
      },
	  {
	    icon = "__nullius__/graphics/technology/tech_windturbine1.png",
	    icon_size = 254,
		scale = 0.2519
      }
    },
    unit = {
      count = 1,
      ingredients = {{"nullius-checkpoint", 1}, {"nullius-requirement-build", 1}, {"nullius-mechanical-pack", 1}},
      time = 1
    },
    prerequisites = {"nullius-wind-power-1"},
    ignore_tech_cost_multiplier = true
  },
  {
    type = "technology",
    name = "nullius-checkpoint-energy-storage",
    localised_name = {"technology-name.nullius-checkpoint", {"technology-name.nullius-demonstration",
	    {"technology-name.nullius-energy-storage"}}},
    localised_description = {"",
	    {"technology-description.nullius-consume", {"technology-description.nullius-fluid",
		    1000, "nullius-steam", {"fluid-name.nullius-steam"}}}, "\n",
	    {"technology-description.nullius-build", {"technology-description.nullius-item",
		    1, "nullius-surge-electrolyzer-1", {"entity-name.nullius-surge-electrolyzer-1"}}}, "\n",
	    {"technology-description.nullius-build", {"technology-description.nullius-item",
		    1, "nullius-backup-turbine-1", {"entity-name.nullius-backup-turbine-1"}}}},
    order = "nullius-yc",
    icons = {
      {
        icon = BASEICON .. "steam-turbine.png",
        icon_size = 64,
        icon_mipmaps = 4
      },
      {
        icon = BASEICON .. "fluid/steam.png",
        icon_size = 64,
        icon_mipmaps = 4,
		scale = 0.9,
		tint = {0.75, 0.75, 0.75, 0.75}
      }
    },
    unit = {
      count = 1,
      ingredients = {{"nullius-checkpoint", 1}, {"nullius-requirement-consume", 1},
	      {"nullius-requirement-build", 1}, {"nullius-mechanical-pack", 1}},
      time = 1
    },
    prerequisites = {"nullius-energy-storage-1"},
    ignore_tech_cost_multiplier = true
  },
  {
    type = "technology",
    name = "nullius-checkpoint-iron-ingot-2",
    localised_name = {"technology-name.nullius-checkpoint", {"technology-name.nullius-utilization",
	    {"item-name.nullius-iron-ingot"}}},
    localised_description = {"technology-description.nullius-consume",
	    {"technology-description.nullius-item", 1500, "nullius-iron-ingot", {"item-name.nullius-iron-ingot"}}},
    order = "nullius-yc",
    icons = {
      {
        icon = ICONPATH .. "uncrate.png",
        icon_size = 64,
        icon_mipmaps = 4
      },
      {
        icon = "__angelssmelting__/graphics/technology/smelting-iron-tech.png",
        icon_size = 256,
        icon_mipmaps = 4,
		scale = 0.2
      }
    },
    unit = {
      count = 1,
      ingredients = {{"nullius-checkpoint", 1}, {"nullius-requirement-consume", 1}, {"nullius-mechanical-pack", 1}},
      time = 1
    },
    prerequisites = {"nullius-steelmaking-1"},
    ignore_tech_cost_multiplier = true
  },
  {
    type = "technology",
    name = "nullius-checkpoint-steel-ingot",
    localised_name = {"technology-name.nullius-checkpoint", {"technology-name.nullius-assay",
	    {"item-name.nullius-steel-ingot"}}},
    localised_description = {"technology-description.nullius-produce",
	    {"technology-description.nullius-item", 20, "nullius-steel-ingot", {"item-name.nullius-steel-ingot"}}},
    order = "nullius-yc",
    icons = {
      {
        icon = "__angelssmelting__/graphics/icons/ingot-steel.png",
        icon_size = 64,
        icon_mipmaps = 4
      },
      {
        icon = ICONPATH .. "checkpoint.png",
        icon_size = 64,
        icon_mipmaps = 4,
		tint = {0.6, 0.6, 0.6, 0.6}
      }
    },
    unit = {
      count = 1,
      ingredients = {{"nullius-checkpoint", 1}, {"nullius-mechanical-pack", 1}},
      time = 1
    },
    prerequisites = {"nullius-steelmaking-1"},
    ignore_tech_cost_multiplier = true
  },
  {
    type = "technology",
    name = "nullius-checkpoint-glass",
    localised_name = {"technology-name.nullius-checkpoint", {"technology-name.nullius-specimen",
	    {"item-name.nullius-glass"}}},
    localised_description = {"technology-description.nullius-produce",
	    {"technology-description.nullius-item", 50, "nullius-glass", {"item-name.nullius-glass"}}},
    order = "nullius-yc",
    icons = {
	  data.raw.item["nullius-glass"].icons[1],
      {
        icon = ICONPATH .. "checkpoint.png",
        icon_size = 64,
        icon_mipmaps = 4,
		scale = 0.5,
		tint = {0.6, 0.6, 0.6, 0.6}
      }
    },
    unit = {
      count = 1,
      ingredients = {{"nullius-checkpoint", 1}, {"nullius-mechanical-pack", 1}},
      time = 1
    },
    prerequisites = {"nullius-silica-processing-1"},
    ignore_tech_cost_multiplier = true
  },
  {
    type = "technology",
    name = "nullius-checkpoint-plastic-2",
    localised_name = {"technology-name.nullius-checkpoint", {"technology-name.nullius-utilization",
	    {"item-name.nullius-plastic"}}},
    localised_description = {"technology-description.nullius-consume",
	    {"technology-description.nullius-item", 250, "nullius-plastic", {"item-name.nullius-plastic"}}},
    order = "nullius-yc",
    icons = {
      {
        icon = ICONPATH .. "uncrate.png",
        icon_size = 64,
        icon_mipmaps = 4
      },
      {
        icon = BASEICON .. "plastic-bar.png",
        icon_size = 64,
        icon_mipmaps = 4,
		scale = 0.8
      }
    },
    unit = {
      count = 1,
      ingredients = {{"nullius-checkpoint", 1}, {"nullius-requirement-consume", 1}, {"nullius-mechanical-pack", 1}},
      time = 1
    },
    prerequisites = {"nullius-organic-chemistry-2"},
    ignore_tech_cost_multiplier = true
  },
  {
    type = "technology",
    name = "nullius-checkpoint-rubber",
    localised_name = {"technology-name.nullius-checkpoint", {"technology-name.nullius-specimen",
	    {"item-name.nullius-rubber"}}},
    localised_description = {"technology-description.nullius-produce",
	    {"technology-description.nullius-item", 20, "nullius-rubber", {"item-name.nullius-rubber"}}},
    order = "nullius-yc",
    icons = {
      {
        icon = ICONPATH .. "rubber.png",
        icon_size = 64
      },
      {
        icon = ICONPATH .. "checkpoint.png",
        icon_size = 64,
        icon_mipmaps = 4,
		tint = {0.6, 0.6, 0.6, 0.6}
      }
    },
    unit = {
      count = 1,
      ingredients = {{"nullius-checkpoint", 1}, {"nullius-mechanical-pack", 1}},
      time = 1
    },
    prerequisites = {"nullius-organic-chemistry-3"},
    ignore_tech_cost_multiplier = true
  },
  {
    type = "technology",
    name = "nullius-checkpoint-aluminum-ingot",
    localised_name = {"technology-name.nullius-checkpoint", {"technology-name.nullius-assay",
	    {"item-name.nullius-aluminum-ingot"}}},
    localised_description = {"technology-description.nullius-produce",
	    {"technology-description.nullius-item", 50, "nullius-aluminum-ingot", {"item-name.nullius-aluminum-ingot"}}},
    order = "nullius-yc",
    icons = {
      {
        icon = "__angelssmelting__/graphics/icons/ingot-aluminium.png",
        icon_size = 64,
        icon_mipmaps = 4
      },
      {
        icon = ICONPATH .. "checkpoint.png",
        icon_size = 64,
        icon_mipmaps = 4,
		tint = {0.6, 0.6, 0.6, 0.6}
      }
    },
    unit = {
      count = 1,
      ingredients = {{"nullius-checkpoint", 1}, {"nullius-mechanical-pack", 1}},
      time = 1
    },
    prerequisites = {"nullius-aluminum-working"},
    ignore_tech_cost_multiplier = true
  },
  {
    type = "technology",
    name = "nullius-checkpoint-polycrystalline-silicon",
    localised_name = {"technology-name.nullius-checkpoint", {"technology-name.nullius-specimen",
    {"item-name.nullius-polycrystalline-silicon"}}},
    localised_description = {"technology-description.nullius-produce",
	    {"technology-description.nullius-item", 20, "nullius-polycrystalline-silicon",
		    {"item-name.nullius-polycrystalline-silicon"}}},
    order = "nullius-yc",
    icons = {
	  data.raw.item["nullius-polycrystalline-silicon"].icons[1],
      {
        icon = ICONPATH .. "checkpoint.png",
        icon_size = 64,
        icon_mipmaps = 4,
		scale = 0.5,
		tint = {0.6, 0.6, 0.6, 0.6}
      }
    },
    unit = {
      count = 1,
      ingredients = {{"nullius-checkpoint", 1}, {"nullius-mechanical-pack", 1}},
      time = 1
    },
    prerequisites = {"nullius-silicon-production-1"},
    ignore_tech_cost_multiplier = true
  },
  {
    type = "technology",
    name = "nullius-checkpoint-mineral-dust",
    localised_name = {"technology-name.nullius-checkpoint", {"technology-name.nullius-disposal",
	    {"item-name.nullius-gravel"}}},
    localised_description = {"technology-description.nullius-consume",
	    {"technology-description.nullius-item", 200, "nullius-mineral-dust", {"item-name.nullius-mineral-dust"}}},
    order = "nullius-yc",
    icons = {
      {
        icon = ICONPATH .. "uncrate.png",
        icon_size = 64,
        icon_mipmaps = 4
      },
      {
        icon = "__angelssmelting__/graphics/icons/powder-tungsten.png",
        icon_size = 64,
        icon_mipmaps = 4,
		scale = 0.8
      }
    },
    unit = {
      count = 1,
      ingredients = {{"nullius-checkpoint", 1}, {"nullius-requirement-consume", 1}, {"nullius-mechanical-pack", 1}},
      time = 1
    },
    prerequisites = {"nullius-waste-management", "nullius-inorganic-chemistry-2"},
    ignore_tech_cost_multiplier = true
  },
  {
    type = "technology",
    name = "nullius-checkpoint-mass-production",
    localised_name = {"technology-name.nullius-checkpoint", {"technology-name.nullius-demonstration",
	    {"technology-name.nullius-mass-production"}}},
    localised_description = {"",
	    {"technology-description.nullius-build", {"technology-description.nullius-item",
		    4, "nullius-medium-furnace-1", {"entity-name.nullius-medium-furnace-1"}}}, "\n",
	    {"technology-description.nullius-build", {"technology-description.nullius-item",
		    6, "nullius-medium-assembler-1", {"entity-name.nullius-medium-assembler-1"}}}},
    order = "nullius-yc",
    icons = {
      {
        icon = BASEICON .. "blueprint.png",
        icon_size = 64,
        icon_mipmaps = 4
      },
      {
        icon = "__base__/graphics/technology/automation-1.png",
        icon_size = 256,
        icon_mipmaps = 4,
		scale = 0.25
      }
    },
    unit = {
      count = 1,
      ingredients = {{"nullius-checkpoint", 1}, {"nullius-requirement-build", 1}, {"nullius-mechanical-pack", 1}},
      time = 1
    },
    prerequisites = {"nullius-mass-production-1"},
    ignore_tech_cost_multiplier = true
  },
  {
    type = "technology",
    name = "nullius-checkpoint-freight-transportation",
    localised_name = {"technology-name.nullius-checkpoint", {"technology-name.nullius-demonstration",
	    {"technology-name.nullius-freight-transportation"}}},
    localised_description = {"",
	    {"technology-description.nullius-consume", {"technology-description.nullius-item",
		    3, "nullius-hydrogen-canister", {"item-name.nullius-hydrogen-canister"}}}, "\n",
	    {"technology-description.nullius-consume", {"technology-description.nullius-item",
		    2, "nullius-water-canister", {"item-name.nullius-water-canister"}}}},
    order = "nullius-yc",
    icons = {
      {
        icon = "__base__/graphics/technology/railway.png",
        icon_size = 256,
        icon_mipmaps = 4
      },
      {
        icon = ICONPATH .. "checkpoint.png",
        icon_size = 64,
        icon_mipmaps = 4,
		tint = {0.6, 0.6, 0.6, 0.6},
		scale = 4
      }
    },
    unit = {
      count = 1,
      ingredients = {{"nullius-checkpoint", 1}, {"nullius-requirement-consume", 1}, {"nullius-mechanical-pack", 1}},
      time = 1
    },
    prerequisites = {"nullius-freight-transportation-1"},
    ignore_tech_cost_multiplier = true
  },
  {
    type = "technology",
    name = "nullius-checkpoint-lubricant",
    localised_name = {"technology-name.nullius-checkpoint", {"technology-name.nullius-analysis",
	    {"fluid-name.nullius-lubricant"}}},
    localised_description = {"technology-description.nullius-produce",
	    {"technology-description.nullius-fluid", 250, "nullius-lubricant", {"fluid-name.nullius-lubricant"}}},
    order = "nullius-yc",
    icons = {
      {
        icon = BASEICON .. "fluid/lubricant.png",
        icon_size = 64,
        icon_mipmaps = 4
      },
      {
        icon = ICONPATH .. "checkpoint.png",
        icon_size = 64,
        icon_mipmaps = 4,
		tint = {0.6, 0.6, 0.6, 0.6}
      }
    },
    unit = {
      count = 1,
      ingredients = {{"nullius-checkpoint", 1}, {"nullius-mechanical-pack", 1}},
      time = 1
    },
    prerequisites = {"nullius-lubrication"},
    ignore_tech_cost_multiplier = true
  },

  {
    type = "technology",
    name = "nullius-checkpoint-volcanic-gas",
    localised_name = {"technology-name.nullius-checkpoint", {"technology-name.nullius-analysis",
	    {"fluid-name.nullius-volcanic-gas"}}},
    localised_description = {"technology-description.nullius-produce",
	    {"technology-description.nullius-fluid", 5000, "nullius-volcanic-gas", {"fluid-name.nullius-volcanic-gas"}}},
    order = "nullius-yd",
    icons = {
      {
        icon = "__base__/graphics/technology/oil-gathering.png",
        icon_size = 256,
        icon_mipmaps = 4
      },
      {
        icon = ICONPATH .. "checkpoint.png",
        icon_size = 64,
        icon_mipmaps = 4,
		scale = 4,
		tint = {0.6, 0.6, 0.6, 0.6}
      }
    },
    unit = {
      count = 1,
      ingredients = {{"nullius-checkpoint", 1}, {"nullius-electrical-pack", 1}},
      time = 1
    },
    prerequisites = {"nullius-volcanism-1"},
    ignore_tech_cost_multiplier = true
  },
  {
    type = "technology",
    name = "nullius-checkpoint-lab",
    localised_name = {"technology-name.nullius-checkpoint", {"technology-name.nullius-demonstration",
	    {"entity-name.nullius-lab-1"}}},
    localised_description = {"technology-description.nullius-build",
	    {"technology-description.nullius-item", 3, "nullius-lab-1", {"entity-name.nullius-lab-1"}}},
    order = "nullius-yd",
    icons = {
      {
        icon = BASEICON .. "blueprint.png",
        icon_size = 64,
        icon_mipmaps = 4
      },
	  data.raw.item["nullius-lab-1"].icons[1]
    },
    unit = {
      count = 1,
      ingredients = {{"nullius-checkpoint", 1}, {"nullius-requirement-build", 1}, {"nullius-electrical-pack", 1}},
      time = 1
    },
    prerequisites = {"nullius-empiricism-1"},
    ignore_tech_cost_multiplier = true
  },
  {
    type = "technology",
    name = "nullius-checkpoint-sensor",
    localised_name = {"technology-name.nullius-checkpoint", {"technology-name.nullius-prototype",
	    {"item-name.nullius-sensor-1"}}},
    localised_description = {"technology-description.nullius-consume",
	    {"technology-description.nullius-item", 100, "nullius-sensor-1", {"item-name.nullius-sensor-1"}}},
    order = "nullius-yd",
    icons = {
      {
        icon = ICONPATH .. "uncrate.png",
        icon_size = 64,
        icon_mipmaps = 4
      },
      {
        icon = "__base__/graphics/icons/discharge-defense-equipment-controller.png",
        icon_size = 64,
        icon_mipmaps = 4,
		scale = 0.8
      }
    },
    unit = {
      count = 1,
      ingredients = {{"nullius-checkpoint", 1}, {"nullius-requirement-consume", 1}, {"nullius-electrical-pack", 1}},
      time = 1
    },
    prerequisites = {"nullius-sensors-2"},
    ignore_tech_cost_multiplier = true
  },
  {
    type = "technology",
    name = "nullius-checkpoint-freight-logistics",
    localised_name = {"technology-name.nullius-checkpoint", {"technology-name.nullius-demonstration",
	    {"technology-name.nullius-freight-logistics"}}},
    localised_description = {"",
	    {"technology-description.nullius-build", {"technology-description.nullius-item",
		    2, "train-stop", {"entity-name.train-stop"}}}, "\n",
	    {"technology-description.nullius-build", {"technology-description.nullius-item",
		    150, "rail", {"item-name.rail"}}}},
    order = "nullius-yd",
    icons = {
      {
        icon = BASEICON .. "blueprint.png",
        icon_size = 64,
        icon_mipmaps = 4
      },
      {
        icon = "__base__/graphics/technology/automated-rail-transportation.png",
        icon_size = 256,
        icon_mipmaps = 4,
		scale = 0.25
      }
    },
    unit = {
      count = 1,
      ingredients = {{"nullius-checkpoint", 1}, {"nullius-requirement-build", 1}, {"nullius-electrical-pack", 1}},
      time = 1
    },
    prerequisites = {"nullius-freight-logistics"},
    ignore_tech_cost_multiplier = true
  },
  {
    type = "technology",
    name = "nullius-checkpoint-limestone",
    localised_name = {"technology-name.nullius-checkpoint", {"technology-name.nullius-assay",
	    {"item-name.nullius-limestone"}}},
    localised_description = {"technology-description.nullius-produce",
	    {"technology-description.nullius-item", 500, "nullius-limestone", {"item-name.nullius-limestone"}}},
    order = "nullius-yd",
    icons = {
	  data.raw.item["nullius-limestone"].icons[1],
      {
        icon = ICONPATH .. "checkpoint.png",
        icon_size = 64,
        icon_mipmaps = 4,
		tint = {0.6, 0.6, 0.6, 0.6}
      }
    },
    unit = {
      count = 1,
      ingredients = {{"nullius-checkpoint", 1}, {"nullius-electrical-pack", 1}},
      time = 1
    },
    prerequisites = {"nullius-mining-2"},
    ignore_tech_cost_multiplier = true
  },
  {
    type = "technology",
    name = "nullius-checkpoint-optimization",
    localised_name = {"technology-name.nullius-checkpoint", {"technology-name.nullius-demonstration",
	    {"technology-name.nullius-optimization"}}},
    localised_description = {"",
	    {"technology-description.nullius-produce", {"technology-description.nullius-item",
		    5, "nullius-haste-module-1", {"item-name.nullius-haste-module-1"}}}, "\n",
	    {"technology-description.nullius-produce", {"technology-description.nullius-item",
		    5, "nullius-efficiency-module-1", {"item-name.nullius-efficiency-module-1"}}}},
    order = "nullius-yd",
    icons = {
      {
		icon = "__base__/graphics/technology/module.png",
        icon_size = 256,
        icon_mipmaps = 4
      },
      {
        icon = ICONPATH .. "checkpoint.png",
        icon_size = 64,
        icon_mipmaps = 4,
		scale = 4,
		tint = {0.6, 0.6, 0.6, 0.6}
      }
    },
    unit = {
      count = 1,
      ingredients = {{"nullius-checkpoint", 1}, {"nullius-electrical-pack", 1}},
      time = 1
    },
    prerequisites = {"nullius-optimization-1"},
    ignore_tech_cost_multiplier = true
  },
  {
    type = "technology",
    name = "nullius-checkpoint-compressed-nitrogen",
    localised_name = {"technology-name.nullius-checkpoint", {"technology-name.nullius-utilization",
	    {"technology-name.nullius-energy-storage"}}},
    localised_description = {"technology-description.nullius-consume",
	    {"technology-description.nullius-fluid", 1000, "nullius-compressed-nitrogen", {"fluid-name.nullius-compressed-nitrogen"}}},
    order = "nullius-yd",
    icons = {
      {
        icon = BASEICON .. "steam-turbine.png",
        icon_size = 64,
        icon_mipmaps = 4
      },
      {
        icon = "__angelspetrochem__/graphics/icons/molecules/nitrogen.png",
        icon_size = 64,
		scale = 0.64,
		tint = {0.85, 0.85, 0.85, 0.85}
      }
    },
    unit = {
      count = 1,
      ingredients = {{"nullius-checkpoint", 1}, {"nullius-requirement-consume", 1}, {"nullius-electrical-pack", 1}},
      time = 1
    },
    prerequisites = {"nullius-energy-storage-2"},
    ignore_tech_cost_multiplier = true
  },
  {
    type = "technology",
    name = "nullius-checkpoint-freshwater",
    localised_name = {"technology-name.nullius-checkpoint", {"technology-name.nullius-utilization",
	    {"fluid-name.nullius-freshwater"}}},
    localised_description = {"technology-description.nullius-consume",
	    {"technology-description.nullius-fluid", 2000, "nullius-freshwater", {"fluid-name.nullius-freshwater"}}},
    order = "nullius-yd",
    icons = {
      {
        icon = ICONPATH .. "fluid/unbarrel.png",
        icon_size = 64
      },
      {
        icon = ICONPATH .. "fluid/freshwater.png",
        icon_size = 64,
        icon_mipmaps = 4,
		scale = 0.8
      }
    },
    unit = {
      count = 1,
      ingredients = {{"nullius-checkpoint", 1}, {"nullius-requirement-consume", 1}, {"nullius-electrical-pack", 1}},
      time = 1
    },
    prerequisites = {"nullius-hydrology-1"},
    ignore_tech_cost_multiplier = true
  },
  {
    type = "technology",
    name = "nullius-checkpoint-robotics",
    localised_name = {"technology-name.nullius-checkpoint", {"technology-name.nullius-demonstration",
	    {"technology-name.nullius-robotics"}}},
    localised_description = {"",
	    {"technology-description.nullius-produce", {"technology-description.nullius-item",
		    1, "nullius-hangar-1", {"equipment-name.nullius-hangar-1"}}}, "\n",
	    {"technology-description.nullius-produce", {"technology-description.nullius-item",
		    6, "nullius-robot-frame-1", {"item-name.nullius-robot-frame-1"}}}},
    order = "nullius-yd",
    icons = {
      {
        icon = "__base__/graphics/technology/robotics.png",
        icon_size = 256,
        icon_mipmaps = 4
      },
      {
        icon = ICONPATH .. "checkpoint.png",
        icon_size = 64,
        icon_mipmaps = 4,
		scale = 4,
		tint = {0.6, 0.6, 0.6, 0.6}
      }
    },
    unit = {
      count = 1,
      ingredients = {{"nullius-checkpoint", 1}, {"nullius-electrical-pack", 1}},
      time = 1
    },
    prerequisites = {"nullius-robotics-1"},
    ignore_tech_cost_multiplier = true
  },
  {
    type = "technology",
    name = "nullius-checkpoint-logistic-robot",
    localised_name = {"technology-name.nullius-checkpoint", {"technology-name.nullius-prototype",
	    {"technology-name.nullius-logistic-robot"}}},
    localised_description = {"",
	    {"technology-description.nullius-produce", {"technology-description.nullius-item",
		    8, "nullius-logistic-bot-1", {"entity-name.nullius-logistic-bot-1"}}}, "\n",
	    {"technology-description.nullius-build", {"technology-description.nullius-item",
		    2, "nullius-small-supply-chest-1", {"entity-name.nullius-small-supply-chest-1"}}}},
    order = "nullius-yd",
    icons = {
      {
        icon = BASEICON .. "blueprint.png",
        icon_size = 64,
        icon_mipmaps = 4
      },
      {
        icon = "__base__/graphics/technology/logistic-robotics.png",
        icon_size = 256,
        icon_mipmaps = 4,
		scale = 0.25
      }
    },
    unit = {
      count = 1,
      ingredients = {{"nullius-checkpoint", 1}, {"nullius-requirement-build", 1}, {"nullius-electrical-pack", 1}},
      time = 1
    },
    prerequisites = {"nullius-logistic-robot-1"},
    ignore_tech_cost_multiplier = true
  },
  {
    type = "technology",
    name = "nullius-checkpoint-logistics",
    localised_name = {"technology-name.nullius-checkpoint", {"technology-name.nullius-demonstration",
	    {"technology-name.nullius-logistics"}}},
    localised_description = {"",
	    {"technology-description.nullius-build", {"technology-description.nullius-item",
		    10, "turbo-inserter", {"entity-name.nullius-inserter-2"}}}, "\n",
	    {"technology-description.nullius-build", {"technology-description.nullius-item",
		    10, "fast-underground-belt", {"entity-name.nullius-underground-belt-2"}}}},
    order = "nullius-yd",
    icons = {
      {
        icon = BASEICON .. "blueprint.png",
        icon_size = 64,
        icon_mipmaps = 4
      },
      {
        icon = "__base__/graphics/technology/logistics-2.png",
        icon_size = 256,
        icon_mipmaps = 4,
		scale = 0.25
      }
    },
    unit = {
      count = 1,
      ingredients = {{"nullius-checkpoint", 1}, {"nullius-requirement-build", 1}, {"nullius-electrical-pack", 1}},
      time = 1
    },
    prerequisites = {"nullius-logistics-2"},
    ignore_tech_cost_multiplier = true
  },
  {
    type = "technology",
    name = "nullius-checkpoint-concrete",
    localised_name = {"technology-name.nullius-checkpoint", {"technology-name.nullius-analysis",
	    {"item-name.concrete"}}},
	localised_description = {"technology-description.nullius-produce",
	    {"technology-description.nullius-item", 1000, "concrete", {"item-name.concrete"}}},
    order = "nullius-yd",
    icons = {
	  {
        icon = BASEICON .. "concrete.png",
        icon_size = 64,
		icon_mipmaps = 4
	  },
      {
        icon = ICONPATH .. "checkpoint.png",
        icon_size = 64,
        icon_mipmaps = 4,
		tint = {0.6, 0.6, 0.6, 0.6}
      }
    },
    unit = {
      count = 1,
      ingredients = {{"nullius-checkpoint", 1}, {"nullius-electrical-pack", 1}},
      time = 1
    },
    prerequisites = {"nullius-concrete-1"},
    ignore_tech_cost_multiplier = true
  },
  {
    type = "technology",
    name = "nullius-checkpoint-heat-pipe",
    localised_name = {"technology-name.nullius-checkpoint", {"technology-name.nullius-prototype",
	    {"entity-name.nullius-heat-pipe-1"}}},
	localised_description = {"technology-description.nullius-produce",
	    {"technology-description.nullius-item", 50, "nullius-heat-pipe-1", {"entity-name.nullius-heat-pipe-1"}}},
    order = "nullius-yd",
    icons = {
	  data.raw.item["nullius-heat-pipe-1"].icons[1],
      {
        icon = ICONPATH .. "checkpoint.png",
        icon_size = 64,
        icon_mipmaps = 4,
		tint = {0.6, 0.6, 0.6, 0.6}
      }
    },
    unit = {
      count = 1,
      ingredients = {{"nullius-checkpoint", 1}, {"nullius-electrical-pack", 1}},
      time = 1
    },
    prerequisites = {"nullius-climatology-2"},
    ignore_tech_cost_multiplier = true
  },
  {
    type = "technology",
    name = "nullius-checkpoint-chemical-engineering",
    localised_name = {"technology-name.nullius-checkpoint", {"technology-name.nullius-deployment",
	    {"technology-name.nullius-chemical-engineering"}}},
    localised_description = {"technology-description.nullius-build",
	    {"technology-description.nullius-item", 10, "nullius-chemical-plant-2", {"entity-name.nullius-chemical-plant-2"}}},
    order = "nullius-yd",
    icons = {
      {
        icon = BASEICON .. "blueprint.png",
        icon_size = 64,
        icon_mipmaps = 4
      },
	  {
        icon = "__angelspetrochem__/graphics/technology/chemical-plant-tech.png",
	    icon_size = 128,
		scale = 0.5
      }
    },
    unit = {
      count = 1,
      ingredients = {{"nullius-checkpoint", 1}, {"nullius-requirement-build", 1}, {"nullius-electrical-pack", 1}},
      time = 1
    },
    prerequisites = {"nullius-chemical-engineering-2"},
    ignore_tech_cost_multiplier = true
  },

  {
    type = "technology",
    name = "nullius-checkpoint-argon",
    localised_name = {"technology-name.nullius-checkpoint", {"technology-name.nullius-sample",
	    {"fluid-name.nullius-argon"}}},
    localised_description = {"technology-description.nullius-produce",
	    {"technology-description.nullius-fluid", 1000, "nullius-argon", {"fluid-name.nullius-argon"}}},
    order = "nullius-ye",
    icons = {
      {
        icon = ICONPATH .. "fluid/atom.png",
        icon_size = 64,
        tint = {164, 140, 204}
      },
      {
        icon = ICONPATH .. "checkpoint.png",
        icon_size = 64,
        icon_mipmaps = 4,
		tint = {0.6, 0.6, 0.6, 0.6}
      }
    },
    unit = {
      count = 1,
      ingredients = {{"nullius-checkpoint", 1}, {"nullius-chemical-pack", 1}},
      time = 1
    },
    prerequisites = {"nullius-nitrogen-chemistry-2"},
    ignore_tech_cost_multiplier = true
  },
  {
    type = "technology",
    name = "nullius-checkpoint-propene",
    localised_name = {"technology-name.nullius-checkpoint", {"technology-name.nullius-utilization",
	    {"fluid-name.nullius-propene"}}},
    localised_description = {"technology-description.nullius-consume",
	    {"technology-description.nullius-fluid", 20000, "nullius-propene", {"fluid-name.nullius-propene"}}},
    order = "nullius-ye",
    icons = {
      {
        icon = ICONPATH .. "fluid/unbarrel.png",
        icon_size = 64
      },
      {
        icon = "__angelspetrochem__/graphics/icons/molecules/propene.png",
        icon_size = 72,
		scale = 0.568
      }
    },
    unit = {
      count = 1,
      ingredients = {{"nullius-checkpoint", 1}, {"nullius-requirement-consume", 1}, {"nullius-chemical-pack", 1}},
      time = 1
    },
    prerequisites = {"nullius-metallurgy-3", "nullius-explosives-1"},
    ignore_tech_cost_multiplier = true
  },
  {
    type = "technology",
    name = "nullius-checkpoint-titanium-ingot",
    localised_name = {"technology-name.nullius-checkpoint", {"technology-name.nullius-assay",
	    {"item-name.nullius-titanium-ingot"}}},
    localised_description = {"technology-description.nullius-produce",
	    {"technology-description.nullius-item", 100, "nullius-titanium-ingot", {"item-name.nullius-titanium-ingot"}}},
    order = "nullius-ye",
    icons = {
	  {
        icon = "__angelssmelting__/graphics/icons/ingot-titanium.png",
        icon_size = 64,
        icon_mipmaps = 4
	  },
      {
        icon = ICONPATH .. "checkpoint.png",
        icon_size = 64,
        icon_mipmaps = 4,
		tint = {0.6, 0.6, 0.6, 0.6}
      }
    },
    unit = {
      count = 1,
      ingredients = {{"nullius-checkpoint", 1}, {"nullius-chemical-pack", 1}},
      time = 1
    },
    prerequisites = {"nullius-toolmaking-5"},
    ignore_tech_cost_multiplier = true
  },
  {
    type = "technology",
    name = "nullius-checkpoint-soda-ash",
    localised_name = {"technology-name.nullius-checkpoint", {"technology-name.nullius-analysis",
	    {"item-name.nullius-soda-ash"}}},
    localised_description = {"technology-description.nullius-produce",
	    {"technology-description.nullius-item", 1000, "nullius-soda-ash", {"item-name.nullius-soda-ash"}}},
    order = "nullius-ye",
    icons = {
	  {
        icon = "__angelspetrochem__/graphics/icons/solid-sodium-carbonate.png",
        icon_size = 32
	  },
      {
        icon = ICONPATH .. "checkpoint.png",
        icon_size = 64,
        icon_mipmaps = 4,
		scale = 0.5,
		tint = {0.6, 0.6, 0.6, 0.6}
      }
    },
    unit = {
      count = 1,
      ingredients = {{"nullius-checkpoint", 1}, {"nullius-chemical-pack", 1}},
      time = 1
    },
    prerequisites = {"nullius-sulfur-processing-2"},
    ignore_tech_cost_multiplier = true
  },
  {
    type = "technology",
    name = "nullius-checkpoint-monocrystalline-silicon",
    localised_name = {"technology-name.nullius-checkpoint", {"technology-name.nullius-analysis",
	    {"item-name.nullius-monocrystalline-silicon"}}},
    localised_description = {"technology-description.nullius-produce",
	    {"technology-description.nullius-item", 20, "nullius-monocrystalline-silicon",
		    {"item-name.nullius-monocrystalline-silicon"}}},
    order = "nullius-ye",
    icons = {
	  data.raw.item["nullius-monocrystalline-silicon"].icons[1],
      {
        icon = ICONPATH .. "checkpoint.png",
        icon_size = 64,
        icon_mipmaps = 4,
		tint = {0.6, 0.6, 0.6, 0.6}
      }
    },
    unit = {
      count = 1,
      ingredients = {{"nullius-checkpoint", 1}, {"nullius-chemical-pack", 1}},
      time = 1
    },
    prerequisites = {"nullius-glassmaking-2", "nullius-checkpoint-ceramic-powder"},
    ignore_tech_cost_multiplier = true
  },
  {
    type = "technology",
    name = "nullius-checkpoint-crushed-iron-ore",
    localised_name = {"technology-name.nullius-checkpoint", {"technology-name.nullius-utilization",
	    {"item-name.nullius-crushed-iron-ore"}}},
    localised_description = {"technology-description.nullius-consume",
	    {"technology-description.nullius-item", 5000, "nullius-crushed-iron-ore", {"item-name.nullius-crushed-iron-ore"}}},
    order = "nullius-ye",
    icons = {
      {
        icon = ICONPATH .. "uncrate.png",
        icon_size = 64,
        icon_mipmaps = 4
      },
	  {
        icon = "__angelsrefining__/graphics/icons/iron-pebbles.png",
        icon_size = 32,
		scale = 1.6
      }
    },
    unit = {
      count = 1,
      ingredients = {{"nullius-checkpoint", 1}, {"nullius-requirement-consume", 1}, {"nullius-chemical-pack", 1}},
      time = 1
    },
    prerequisites = {"nullius-metallurgy-3"},
    ignore_tech_cost_multiplier = true
  },
  {
    type = "technology",
    name = "nullius-checkpoint-aluminum-carbide",
    localised_name = {"technology-name.nullius-checkpoint", {"technology-name.nullius-utilization",
	    {"item-name.nullius-aluminum-carbide"}}},
    localised_description = {"technology-description.nullius-consume",
	    {"technology-description.nullius-item", 5000, "nullius-aluminum-carbide", {"item-name.nullius-aluminum-carbide"}}},
    order = "nullius-ye",
    icons = {
      {
        icon = ICONPATH .. "uncrate.png",
        icon_size = 64,
        icon_mipmaps = 4
      },
	  {
        icon = "__angelssmelting__/graphics/icons/powder-lead.png",
        icon_size = 64,
        icon_mipmaps = 4,
		scale = 0.8
      }
    },
    unit = {
      count = 1,
      ingredients = {{"nullius-checkpoint", 1}, {"nullius-requirement-consume", 1}, {"nullius-chemical-pack", 1}},
      time = 1
    },
    prerequisites = {"nullius-metallurgy-3"},
    ignore_tech_cost_multiplier = true
  },
  {
    type = "technology",
    name = "nullius-checkpoint-exploration",
    localised_name = {"technology-name.nullius-checkpoint", {"technology-name.nullius-demonstration",
	    {"technology-name.nullius-exploration"}}},
    localised_description = {"technology-description.nullius-consume",
	    {"technology-description.nullius-item", 8, "nullius-scout-drone-1", {"item-name.nullius-scout-drone-1"}}},
    order = "nullius-ye",
    icons = {
	  {
        icon = "__base__/graphics/technology/artillery.png",
        icon_size = 256,
        icon_mipmaps = 4
      },
      {
        icon = ICONPATH .. "checkpoint.png",
        icon_size = 64,
        icon_mipmaps = 4,
		scale = 4,
		tint = {0.6, 0.6, 0.6, 0.6}
      }
    },
    unit = {
      count = 1,
      ingredients = {{"nullius-checkpoint", 1}, {"nullius-requirement-consume", 1}, {"nullius-chemical-pack", 1}},
      time = 1
    },
    prerequisites = {"nullius-exploration-1"},
    ignore_tech_cost_multiplier = true
  },
  {
    type = "technology",
    name = "nullius-checkpoint-carbon-fiber",
    localised_name = {"technology-name.nullius-checkpoint", {"technology-name.nullius-sample",
	    {"item-name.nullius-carbon-fiber"}}},
    localised_description = {"technology-description.nullius-produce",
	    {"technology-description.nullius-item", 50, "nullius-carbon-fiber", {"item-name.nullius-carbon-fiber"}}},
    order = "nullius-ye",
    icons = {
	  data.raw.item["nullius-carbon-fiber"].icons[1],
      {
        icon = ICONPATH .. "checkpoint.png",
        icon_size = 64,
        icon_mipmaps = 4,
		scale = 0.5,
		tint = {0.6, 0.6, 0.6, 0.6}
      }
    },
    unit = {
      count = 1,
      ingredients = {{"nullius-checkpoint", 1}, {"nullius-chemical-pack", 1}},
      time = 1
    },
    prerequisites = {"nullius-weaving-2"},
    ignore_tech_cost_multiplier = true
  },
  {
    type = "technology",
    name = "nullius-checkpoint-fiberglass",
    localised_name = {"technology-name.nullius-checkpoint", {"technology-name.nullius-specimen",
	    {"item-name.nullius-fiberglass"}}},
    localised_description = {"technology-description.nullius-produce",
	    {"technology-description.nullius-item", 100, "nullius-fiberglass", {"item-name.nullius-fiberglass"}}},
    order = "nullius-ye",
    icons = {
	  data.raw.item["nullius-fiberglass"].icons[1],
      {
        icon = ICONPATH .. "checkpoint.png",
        icon_size = 64,
        icon_mipmaps = 4,
		scale = 0.5,
		tint = {0.6, 0.6, 0.6, 0.6}
      }
    },
    unit = {
      count = 1,
      ingredients = {{"nullius-checkpoint", 1}, {"nullius-chemical-pack", 1}},
      time = 1
    },
    prerequisites = {"nullius-composites-1"},
    ignore_tech_cost_multiplier = true
  },
  {
    type = "technology",
    name = "nullius-checkpoint-battery",
    localised_name = {"technology-name.nullius-checkpoint", {"technology-name.nullius-prototype",
	    {"item-name.nullius-battery-1"}}},
    localised_description = {"technology-description.nullius-produce",
	    {"technology-description.nullius-item", 100, "nullius-battery-1", {"item-name.nullius-battery-1"}}},
    order = "nullius-ye",
    icons = {
	  {
        icon = "__base__/graphics/icons/battery-equipment.png",
        icon_size = 64,
        icon_mipmaps = 4
	  },
      {
        icon = ICONPATH .. "checkpoint.png",
        icon_size = 64,
        icon_mipmaps = 4,
		tint = {0.6, 0.6, 0.6, 0.6}
      }
    },
    unit = {
      count = 1,
      ingredients = {{"nullius-checkpoint", 1}, {"nullius-chemical-pack", 1}},
      time = 1
    },
    prerequisites = {"nullius-battery-storage-2"},
    ignore_tech_cost_multiplier = true
  },
  {
    type = "technology",
    name = "nullius-checkpoint-ceramic-powder",
    localised_name = {"technology-name.nullius-checkpoint", {"technology-name.nullius-utilization",
	    {"item-name.nullius-ceramic-powder"}}},
    localised_description = {"technology-description.nullius-consume",
	    {"technology-description.nullius-item", 100, "nullius-ceramic-powder", {"item-name.nullius-ceramic-powder"}}},
    order = "nullius-ye",
    icons = {
      {
        icon = ICONPATH .. "uncrate.png",
        icon_size = 64,
        icon_mipmaps = 4
      },
	  {
        icon = "__angelssmelting__/graphics/icons/powder-platinum.png",
        icon_size = 64,
        icon_mipmaps = 4,
		scale = 0.8
      }
    },
    unit = {
      count = 1,
      ingredients = {{"nullius-checkpoint", 1}, {"nullius-requirement-consume", 1}, {"nullius-chemical-pack", 1}},
      time = 1
    },
    prerequisites = {"nullius-ceramics"},
    ignore_tech_cost_multiplier = true
  },
  {
    type = "technology",
    name = "nullius-checkpoint-explosive",
    localised_name = {"technology-name.nullius-checkpoint", {"technology-name.nullius-deployment",
	    {"item-name.nullius-explosive"}}},
    localised_description = {"technology-description.nullius-consume",
	    {"technology-description.nullius-item", 25, "cliff-explosives", {"item-name.nullius-explosive"}}},
    order = "nullius-ye",
    icons = {
      {
        icon = ICONPATH .. "uncrate.png",
        icon_size = 64,
        icon_mipmaps = 4
      },
	  {
		icon = "__base__/graphics/technology/explosives.png",
		icon_size = 256,
		icon_mipmaps = 4,
		scale = 0.2
      }
    },
    unit = {
      count = 1,
      ingredients = {{"nullius-checkpoint", 1}, {"nullius-requirement-consume", 1}, {"nullius-chemical-pack", 1}},
      time = 1
    },
    prerequisites = {"nullius-demolitions-1"},
    ignore_tech_cost_multiplier = true
  },
  {
    type = "technology",
    name = "nullius-checkpoint-logistic-robot-2",
    localised_name = {"technology-name.nullius-checkpoint", {"technology-name.nullius-deployment",
	    {"technology-name.nullius-logistic-robot"}}},
    localised_description = {"",
	    {"technology-description.nullius-produce", {"technology-description.nullius-item",
		    60, "nullius-logistic-bot-1", {"entity-name.nullius-logistic-bot-1"}}}, "\n",
	    {"technology-description.nullius-build", {"technology-description.nullius-item",
		    6, "nullius-charger-2", {"entity-name.nullius-charger-2"}}}, "\n",
	    {"technology-description.nullius-build", {"technology-description.nullius-item",
		    4, "nullius-small-demand-chest-1", {"entity-name.nullius-small-demand-chest-1"}}}},
    order = "nullius-ye",
    icons = {
      {
        icon = BASEICON .. "blueprint.png",
        icon_size = 64,
        icon_mipmaps = 4
      },
      {
        icon = "__base__/graphics/technology/logistic-robotics.png",
        icon_size = 256,
        icon_mipmaps = 4,
		scale = 0.25
      }
    },
    unit = {
      count = 1,
      ingredients = {{"nullius-checkpoint", 1}, {"nullius-requirement-build", 1}, {"nullius-chemical-pack", 1}},
      time = 1
    },
    prerequisites = {"nullius-robotics-2", "nullius-packaging-2"},
    ignore_tech_cost_multiplier = true
  },
  {
    type = "technology",
    name = "nullius-checkpoint-construction-robot",
    localised_name = {"technology-name.nullius-checkpoint", {"technology-name.nullius-deployment",
	    {"technology-name.nullius-construction-robot"}}},
    localised_description = {"",
	    {"technology-description.nullius-produce", {"technology-description.nullius-item",
		    25, "nullius-construction-bot-1", {"entity-name.nullius-construction-bot-1"}}}, "\n",
	    {"technology-description.nullius-build", {"technology-description.nullius-item",
		    4, "nullius-relay-2", {"entity-name.nullius-relay-2"}}}},
    order = "nullius-ye",
    icons = {
      {
        icon = BASEICON .. "blueprint.png",
        icon_size = 64,
        icon_mipmaps = 4
      },
      {
        icon = "__base__/graphics/technology/construction-robotics.png",
        icon_size = 256,
        icon_mipmaps = 4,
		scale = 0.25
      }
    },
    unit = {
      count = 1,
      ingredients = {{"nullius-checkpoint", 1}, {"nullius-requirement-build", 1}, {"nullius-chemical-pack", 1}},
      time = 1
    },
    prerequisites = {"nullius-robotics-2", "nullius-demolitions-1"},
    ignore_tech_cost_multiplier = true
  },
  {
    type = "technology",
    name = "nullius-checkpoint-processor",
    localised_name = {"technology-name.nullius-checkpoint", {"technology-name.nullius-prototype",
	    {"item-name.nullius-processor-1"}}},
    localised_description = {"technology-description.nullius-produce",
	    {"technology-description.nullius-item", 100, "nullius-processor-1", {"item-name.nullius-processor-1"}}},
    order = "nullius-ye",
    icons = {
	  {
        icon = "__base__/graphics/icons/electronic-circuit.png",
        icon_size = 64,
        icon_mipmaps = 4
	  },
      {
        icon = ICONPATH .. "checkpoint.png",
        icon_size = 64,
        icon_mipmaps = 4,
		tint = {0.6, 0.6, 0.6, 0.6}
      }
    },
    unit = {
      count = 1,
      ingredients = {{"nullius-checkpoint", 1}, {"nullius-chemical-pack", 1}},
      time = 1
    },
    prerequisites = {"nullius-electronics-2"},
    ignore_tech_cost_multiplier = true
  },
  {
    type = "technology",
    name = "nullius-checkpoint-large-tank",
    localised_name = {"technology-name.nullius-checkpoint", {"technology-name.nullius-demonstration",
	    {"entity-name.nullius-large-tank-2"}}},
    localised_description = {"technology-description.nullius-build",
	    {"technology-description.nullius-item", 4, "nullius-large-tank-2", {"entity-name.nullius-large-tank-2"}}},
    order = "nullius-ye",
    icons = {
      {
        icon = BASEICON .. "blueprint.png",
        icon_size = 64,
        icon_mipmaps = 4
      },
	  {
        icon = "__angelspetrochem__/graphics/icons/petrochem-gas-tank.png",
        icon_size = 64,
	    icon_mipmaps = 4
      }
    },
    unit = {
      count = 1,
      ingredients = {{"nullius-checkpoint", 1}, {"nullius-requirement-build", 1}, {"nullius-chemical-pack", 1}},
      time = 1
    },
    prerequisites = {"nullius-plumbing-5"},
    ignore_tech_cost_multiplier = true
  },
  {
    type = "technology",
    name = "nullius-checkpoint-substation",
    localised_name = {"technology-name.nullius-checkpoint", {"technology-name.nullius-prototype",
	    {"entity-name.nullius-substation-2"}}},
    localised_description = {"technology-description.nullius-build",
	    {"technology-description.nullius-item", 4, "nullius-substation-2", {"entity-name.nullius-substation-2"}}},
    order = "nullius-ye",
    icons = {
      {
        icon = BASEICON .. "blueprint.png",
        icon_size = 64,
        icon_mipmaps = 4
      },
	  {
        icon = "__base__/graphics/icons/substation.png",
        icon_size = 64,
	    icon_mipmaps = 4
      }
    },
    unit = {
      count = 1,
      ingredients = {{"nullius-checkpoint", 1}, {"nullius-requirement-build", 1}, {"nullius-chemical-pack", 1}},
      time = 1
    },
    prerequisites = {"nullius-energy-distribution-4"},
    ignore_tech_cost_multiplier = true
  },
  {
    type = "technology",
    name = "nullius-checkpoint-logistics-2",
    localised_name = {"technology-name.nullius-checkpoint", {"technology-name.nullius-deployment",
	    {"", {"technology-name.nullius-logistics"}, " ", 2}}},
    localised_description = {"",
	    {"technology-description.nullius-build", {"technology-description.nullius-item",
		    40, "stack-inserter", {"entity-name.nullius-inserter-3"}}}, "\n",
	    {"technology-description.nullius-build", {"technology-description.nullius-item",
		    40, "express-underground-belt", {"entity-name.nullius-underground-belt-3"}}}},
    order = "nullius-ye",
    icons = {
      {
        icon = BASEICON .. "blueprint.png",
        icon_size = 64,
        icon_mipmaps = 4
      },
      {
        icon = "__base__/graphics/technology/logistics-3.png",
        icon_size = 256,
        icon_mipmaps = 4,
		scale = 0.25
      }
    },
    unit = {
      count = 1,
      ingredients = {{"nullius-checkpoint", 1}, {"nullius-requirement-build", 1}, {"nullius-chemical-pack", 1}},
      time = 1
    },
    prerequisites = {"nullius-logistics-3"},
    ignore_tech_cost_multiplier = true
  },
  {
    type = "technology",
    name = "nullius-checkpoint-lab-2",
    localised_name = {"technology-name.nullius-checkpoint", {"technology-name.nullius-demonstration",
	    {"entity-name.nullius-lab-2"}}},
    localised_description = {"technology-description.nullius-build",
	    {"technology-description.nullius-item", 10, "nullius-lab-2", {"entity-name.nullius-lab-2"}}},
    order = "nullius-ye",
    icons = {
      {
        icon = BASEICON .. "blueprint.png",
        icon_size = 64,
        icon_mipmaps = 4
      },
	  data.raw.item["nullius-lab-2"].icons[1]
    },
    unit = {
      count = 1,
      ingredients = {{"nullius-checkpoint", 1}, {"nullius-requirement-build", 1}, {"nullius-chemical-pack", 1}},
      time = 1
    },
    prerequisites = {"nullius-empiricism-4"},
    ignore_tech_cost_multiplier = true
  },
  {
    type = "technology",
    name = "nullius-checkpoint-productivity-module",
    localised_name = {"technology-name.nullius-checkpoint", {"technology-name.nullius-prototype",
	    {"item-name.nullius-productivity-module-1"}}},
    localised_description = {"technology-description.nullius-produce",
	    {"technology-description.nullius-item", 20, "nullius-productivity-module-1",
		    {"item-name.nullius-productivity-module-1"}}},
    order = "nullius-ye",
    icons = {
      {
        icon = "__base__/graphics/technology/productivity-module-2.png",
        icon_size = 256,
        icon_mipmaps = 4
      },
      {
        icon = ICONPATH .. "checkpoint.png",
        icon_size = 64,
        icon_mipmaps = 4,
		scale = 4,
		tint = {0.6, 0.6, 0.6, 0.6}
      }
    },
    unit = {
      count = 1,
      ingredients = {{"nullius-checkpoint", 1}, {"nullius-chemical-pack", 1}},
      time = 1
    },
    prerequisites = {"nullius-optimization-4"},
    ignore_tech_cost_multiplier = true
  },
  {
    type = "technology",
    name = "nullius-checkpoint-truck",
    localised_name = {"technology-name.nullius-checkpoint", {"technology-name.nullius-demonstration",
	    {"entity-name.nullius-truck-1"}}},
    localised_description = {"technology-description.nullius-build",
	    {"technology-description.nullius-item", 1, "nullius-truck-1",
		    {"entity-name.nullius-truck-1"}}},
    order = "nullius-ye",
    icons = {
      {
        icon = BASEICON .. "blueprint.png",
        icon_size = 64,
        icon_mipmaps = 4
      },
      {
        icon = "__base__/graphics/technology/tank.png",
        icon_size = 256,
        icon_mipmaps = 4,
		scale = 0.25
      }
    },
    unit = {
      count = 1,
      ingredients = {{"nullius-checkpoint", 1}, {"nullius-requirement-build", 1}, {"nullius-chemical-pack", 1}},
      time = 1
    },
    prerequisites = {"nullius-braking-4"},
    ignore_tech_cost_multiplier = true
  },
  {
    type = "technology",
    name = "nullius-checkpoint-stirling-engine",
    localised_name = {"technology-name.nullius-checkpoint", {"technology-name.nullius-demonstration",
	    {"entity-name.nullius-stirling-engine-2"}}},
    localised_description = {"technology-description.nullius-build",
	    {"technology-description.nullius-item", 20, "nullius-stirling-engine-2",
		    {"entity-name.nullius-stirling-engine-2"}}},
    order = "nullius-ye",
    icons = {
	  data.raw.item["nullius-stirling-engine-2"].icons[1],
      {
        icon = ICONPATH .. "checkpoint.png",
        icon_size = 64,
        icon_mipmaps = 4,
		tint = {0.6, 0.6, 0.6, 0.6}
      }
    },
    unit = {
      count = 1,
      ingredients = {{"nullius-checkpoint", 1}, {"nullius-requirement-build", 1}, {"nullius-chemical-pack", 1}},
      time = 1
    },
    prerequisites = {"nullius-geothermal-power-2", "nullius-high-pressure-chemistry"},
    ignore_tech_cost_multiplier = true
  },
  {
    type = "technology",
    name = "nullius-checkpoint-large-beacon",
    localised_name = {"technology-name.nullius-checkpoint", {"technology-name.nullius-demonstration",
	    {"technology-name.nullius-broadcasting"}}},
    localised_description = {"",
	    {"technology-description.nullius-build", {"technology-description.nullius-item",
		    8, "nullius-large-beacon-1", {"entity-name.nullius-large-beacon-1"}}}, "\n",
	    {"technology-description.nullius-build", {"technology-description.nullius-item",
		    12, "nullius-beacon-2", {"entity-name.nullius-beacon-2"}}}},
    order = "nullius-ye",
    icons = {
      {
        icon = BASEICON .. "blueprint.png",
        icon_size = 64,
        icon_mipmaps = 4
      },
	  data.raw.item["nullius-large-beacon-1"].icons[1]
    },
    unit = {
      count = 1,
      ingredients = {{"nullius-checkpoint", 1}, {"nullius-requirement-build", 1}, {"nullius-chemical-pack", 1}},
      time = 1
    },
    prerequisites = {"nullius-optimization-4"},
    ignore_tech_cost_multiplier = true
  },
  {
    type = "technology",
    name = "nullius-checkpoint-large-furnace",
    localised_name = {"technology-name.nullius-checkpoint", {"technology-name.nullius-demonstration",
	    {"entity-name.nullius-large-furnace-1"}}},
    localised_description = {"technology-description.nullius-produce",
	    {"technology-description.nullius-item", 10, "nullius-box-iron-ingot",
			{"item-name.nullius-box", {"item-name.nullius-iron-ingot"}}}},
    order = "nullius-ye",
    icons = {
	  {
        icon = "__base__/graphics/icons/electric-furnace.png",
        icon_size = 64,
        icon_mipmaps = 4
	  },
      {
        icon = ICONPATH .. "checkpoint.png",
        icon_size = 64,
        icon_mipmaps = 4,
		tint = {0.6, 0.6, 0.6, 0.6}
      }
    },
    unit = {
      count = 1,
      ingredients = {{"nullius-checkpoint", 1}, {"nullius-chemical-pack", 1}},
      time = 1
    },
    prerequisites = {"nullius-packaging-6"},
    ignore_tech_cost_multiplier = true
  },
  {
    type = "technology",
    name = "nullius-checkpoint-benzene",
    localised_name = {"technology-name.nullius-checkpoint", {"technology-name.nullius-utilization",
	    {"fluid-name.nullius-benzene"}}},
    localised_description = {"technology-description.nullius-consume",
	    {"technology-description.nullius-fluid", 20000, "nullius-benzene", {"fluid-name.nullius-benzene"}}},
    order = "nullius-ye",
    icons = {
      {
        icon = ICONPATH .. "fluid/unbarrel.png",
        icon_size = 64
      },
      {
        icon = "__angelspetrochem__/graphics/icons/molecules/benzene.png",
        icon_size = 72,
		scale = 0.568
      }
    },
    unit = {
      count = 1,
      ingredients = {{"nullius-checkpoint", 1}, {"nullius-requirement-consume", 1}, {"nullius-chemical-pack", 1}},
      time = 1
    },
    prerequisites = {"nullius-high-pressure-chemistry"},
    ignore_tech_cost_multiplier = true
  },

  {
    type = "technology",
    name = "nullius-checkpoint-large-miner",
    localised_name = {"technology-name.nullius-checkpoint", {"technology-name.nullius-deployment",
	    {"entity-name.nullius-large-miner-1"}}},
    localised_description = {"technology-description.nullius-build",
	    {"technology-description.nullius-item", 50, "nullius-large-miner-1",
		    {"entity-name.nullius-large-miner-1"}}},
    order = "nullius-yf",
    icons = {
      {
        icon = BASEICON .. "blueprint.png",
        icon_size = 64,
        icon_mipmaps = 4
      },
	  {
        icon = "__base__/graphics/icons/electric-mining-drill.png",
        icon_size = 64,
        icon_mipmaps = 4
      }
    },
    unit = {
      count = 1,
      ingredients = {{"nullius-checkpoint", 1}, {"nullius-requirement-build", 1}, {"nullius-physics-pack", 1}},
      time = 1
    },
    prerequisites = {"nullius-physics"},
    ignore_tech_cost_multiplier = true
  },
  {
    type = "technology",
    name = "nullius-checkpoint-filter",
    localised_name = {"technology-name.nullius-checkpoint", {"technology-name.nullius-specimen",
	    {"item-name.nullius-filter-2"}}},
    localised_description = {"technology-description.nullius-produce",
	    {"technology-description.nullius-item-boxable", 100, "nullius-filter-2",
		    "nullius-box-filter-2", {"item-name.nullius-filter-2"}}},
    order = "nullius-yf",
    icons = {
	  data.raw.item["nullius-filter-2"].icons[1],
      {
        icon = ICONPATH .. "checkpoint.png",
        icon_size = 64,
        icon_mipmaps = 4,
		scale = 0.5,
		tint = {0.6, 0.6, 0.6, 0.6}
      }
    },
    unit = {
      count = 1,
      ingredients = {{"nullius-checkpoint", 1}, {"nullius-physics-pack", 1}},
      time = 1
    },
    prerequisites = {"nullius-filtration-2"},
    ignore_tech_cost_multiplier = true
  },
  {
    type = "technology",
    name = "nullius-checkpoint-pumping",
    localised_name = {"technology-name.nullius-checkpoint", {"technology-name.nullius-deployment",
	    {"technology-name.nullius-pumping"}}},
    localised_description = {"technology-description.nullius-build",
	    {"technology-description.nullius-item", 40, "nullius-pump-2", {"entity-name.nullius-pump-2"}}},
    order = "nullius-yf",
    icons = {
      {
        icon = BASEICON .. "blueprint.png",
        icon_size = 64,
        icon_mipmaps = 4
      },
	  {
        icon = "__base__/graphics/icons/pump.png",
        icon_size = 64,
        icon_mipmaps = 4
      }
    },
    unit = {
      count = 1,
      ingredients = {{"nullius-checkpoint", 1}, {"nullius-requirement-build", 1}, {"nullius-physics-pack", 1}},
      time = 1
    },
    prerequisites = {"nullius-electromagnetism-3"},
    ignore_tech_cost_multiplier = true
  },
  {
    type = "technology",
    name = "nullius-checkpoint-logistics-3",
    localised_name = {"technology-name.nullius-checkpoint", {"technology-name.nullius-demonstration",
	    {"", {"technology-name.nullius-logistics"}, " ", 3}}},
    localised_description = {"technology-description.nullius-build", {"technology-description.nullius-item",
		    10, "ultimate-splitter", {"entity-name.nullius-splitter-4"}}},
    order = "nullius-yf",
    icons = {
      {
        icon = BASEICON .. "blueprint.png",
        icon_size = 64,
        icon_mipmaps = 4
      },
      {
        icon = "__nullius__/graphics/technology/logistics-4.png",
	    icon_size = 254,
		scale = 0.2519
      }
    },
    unit = {
      count = 1,
      ingredients = {{"nullius-checkpoint", 1}, {"nullius-requirement-build", 1}, {"nullius-physics-pack", 1}},
      time = 1
    },
    prerequisites = {"nullius-logistics-4"},
    ignore_tech_cost_multiplier = true
  },
  {
    type = "technology",
    name = "nullius-checkpoint-automation",
    localised_name = {"technology-name.nullius-checkpoint", {"technology-name.nullius-deployment",
	    {"technology-name.nullius-automation"}}},
    localised_description = {"technology-description.nullius-build", {"technology-description.nullius-item",
		    20, "nullius-large-assembler-2", {"entity-name.nullius-large-assembler-2"}}},
    order = "nullius-yf",
    icons = {
      {
        icon = BASEICON .. "blueprint.png",
        icon_size = 64,
        icon_mipmaps = 4
      },
      {
        icon = "__base__/graphics/icons/assembling-machine-3.png",
        icon_size = 64,
        icon_mipmaps = 4
      }
    },
    unit = {
      count = 1,
      ingredients = {{"nullius-checkpoint", 1}, {"nullius-requirement-build", 1}, {"nullius-physics-pack", 1}},
      time = 1
    },
    prerequisites = {"nullius-automation-3"},
    ignore_tech_cost_multiplier = true
  },
  {
    type = "technology",
    name = "nullius-checkpoint-mining",
    localised_name = {"technology-name.nullius-checkpoint", {"technology-name.nullius-utilization",
	    {"technology-name.nullius-mining"}}},
    localised_description = {"",
	    {"technology-description.nullius-consume", {"technology-description.nullius-item-boxable",
		    250000, "iron-ore", "nullius-box-iron-ore", {"item-name.iron-ore"}}}, "\n",
	    {"technology-description.nullius-consume", {"technology-description.nullius-item-boxable",
		    200000, "nullius-sandstone", "nullius-box-sandstone", {"item-name.nullius-sandstone"}}}, "\n",
	    {"technology-description.nullius-consume", {"technology-description.nullius-item-boxable",
		    150000, "nullius-bauxite", "nullius-box-bauxite", {"item-name.nullius-bauxite"}}}, "\n",
	    {"technology-description.nullius-consume", {"technology-description.nullius-item-boxable",
		    100000, "nullius-limestone", "nullius-box-limestone", {"item-name.nullius-limestone"}}}},			
    order = "nullius-yf",
    icons = {
	  {
        icon = "__base__/graphics/technology/mining-productivity.png",
        icon_size = 256,
        icon_mipmaps = 4
      },
      {
        icon = ICONPATH .. "checkpoint.png",
        icon_size = 64,
        icon_mipmaps = 4,
		tint = {0.6, 0.6, 0.6, 0.6},
		scale = 4
      }
    },
    unit = {
      count = 1,
      ingredients = {{"nullius-checkpoint", 1}, {"nullius-requirement-consume", 1}, {"nullius-physics-pack", 1}},
      time = 1
    },
    prerequisites = {"nullius-mining-productivity-16", "nullius-mineral-processing-3"},
    ignore_tech_cost_multiplier = true
  },
  {
    type = "technology",
    name = "nullius-checkpoint-android",
    localised_name = {"technology-name.nullius-checkpoint", {"technology-name.nullius-prototype",
	    {"item-name.nullius-android"}}},
    localised_description = {"technology-description.nullius-build", {"technology-description.nullius-item",
		    1, "nullius-android-1", {"", {"item-name.nullius-android"}, " ", 1}}},
    order = "nullius-yf",
    icons = {
      {
        icon = BASEICON .. "blueprint.png",
        icon_size = 64,
        icon_mipmaps = 4
      },
      {
        icon = ICONPATH .. "android1.png",
        icon_size = 64,
        icon_mipmaps = 4
      }
    },
    unit = {
      count = 1,
      ingredients = {{"nullius-checkpoint", 1}, {"nullius-requirement-build", 1}, {"nullius-physics-pack", 1}},
      time = 1
    },
    prerequisites = {"nullius-artificial-intelligence-1"},
    ignore_tech_cost_multiplier = true
  },
  {
    type = "technology",
    name = "nullius-checkpoint-battery-2",
    localised_name = {"technology-name.nullius-checkpoint", {"technology-name.nullius-prototype",
	    {"item-name.nullius-battery-2"}}},
    localised_description = {"technology-description.nullius-produce",
	    {"technology-description.nullius-item-boxable", 200, "nullius-battery-2",
		    "nullius-box-battery-2", {"item-name.nullius-battery-2"}}},
    order = "nullius-yf",
    icons = {
	  {
        icon = "__base__/graphics/icons/battery-equipment.png",
        icon_size = 64,
        icon_mipmaps = 4
	  },
      {
        icon = ICONPATH .. "checkpoint.png",
        icon_size = 64,
        icon_mipmaps = 4,
		tint = {0.6, 0.6, 0.6, 0.6}
      }
    },
    unit = {
      count = 1,
      ingredients = {{"nullius-checkpoint", 1}, {"nullius-physics-pack", 1}},
      time = 1
    },
    prerequisites = {"nullius-battery-storage-3"},
    ignore_tech_cost_multiplier = true
  },
  {
    type = "technology",
    name = "nullius-checkpoint-calcium",
    localised_name = {"technology-name.nullius-checkpoint", {"technology-name.nullius-assay",
	    {"item-name.nullius-calcium"}}},
    localised_description = {"technology-description.nullius-produce",
	    {"technology-description.nullius-item-boxable", 250, "nullius-calcium",
		    "nullius-box-calcium", {"item-name.nullius-calcium"}}},
    order = "nullius-yf",
    icons = {
	  {
	    icon = ICONPATH .. "calcium.png",
        icon_size = 64
	  },
      {
        icon = ICONPATH .. "checkpoint.png",
        icon_size = 64,
        icon_mipmaps = 4,
		tint = {0.6, 0.6, 0.6, 0.6}
      }
    },
    unit = {
      count = 1,
      ingredients = {{"nullius-checkpoint", 1}, {"nullius-physics-pack", 1}},
      time = 1
    },
    prerequisites = {"nullius-calcium-production"},
    ignore_tech_cost_multiplier = true
  },
  {
    type = "technology",
    name = "nullius-checkpoint-helium",
    localised_name = {"technology-name.nullius-checkpoint", {"technology-name.nullius-sample",
	    {"fluid-name.nullius-compressed-helium"}}},
    localised_description = {"technology-description.nullius-produce",
	    {"technology-description.nullius-fluid-compressible", 2500, "nullius-helium",
		    "nullius-compressed-helium", {"fluid-name.nullius-helium"}}},
    order = "nullius-yf",
    icons = {
      {
        icon = ICONPATH .. "fluid/atom.png",
        icon_size = 64,
        tint = {224, 200, 255}
      },
      {
        icon = ICONPATH .. "checkpoint.png",
        icon_size = 64,
        icon_mipmaps = 4,
		tint = {0.6, 0.6, 0.6, 0.6}
      }
    },
    unit = {
      count = 1,
      ingredients = {{"nullius-checkpoint", 1}, {"nullius-physics-pack", 1}},
      time = 1
    },
    prerequisites = {"nullius-air-separation-3"},
    ignore_tech_cost_multiplier = true
  },
  {
    type = "technology",
    name = "nullius-checkpoint-thermal-tank",
    localised_name = {"technology-name.nullius-checkpoint", {"technology-name.nullius-prototype",
	    {"entity-name.nullius-thermal-tank-3"}}},
    localised_description = {"technology-description.nullius-produce",
	    {"technology-description.nullius-item", 10, "nullius-thermal-tank-3",
		    {"entity-name.nullius-thermal-tank-3"}}},
    order = "nullius-yf",
    icons = {
	  {
        icon = "__nullius__/graphics/icons/entity/thermaltank3.png",
	    icon_size = 64
	  },
      {
        icon = ICONPATH .. "checkpoint.png",
        icon_size = 64,
        icon_mipmaps = 4,
		tint = {0.6, 0.6, 0.6, 0.6}
      }
    },
    unit = {
      count = 1,
      ingredients = {{"nullius-checkpoint", 1}, {"nullius-physics-pack", 1}},
      time = 1
    },
    prerequisites = {"nullius-geothermal-power-3"},
    ignore_tech_cost_multiplier = true
  },
  {
    type = "technology",
    name = "nullius-checkpoint-tritium",
    localised_name = {"technology-name.nullius-checkpoint", {"technology-name.nullius-analysis",
	    {"fluid-name.nullius-tritium"}}},
    localised_description = {"technology-description.nullius-produce",
	    {"technology-description.nullius-fluid", 40, "nullius-tritium", {"fluid-name.nullius-tritium"}}},
    order = "nullius-yf",
    icons = {
      {
        icon = "__angelspetrochem__/graphics/icons/molecules/semiheavy-water.png",
        icon_size = 72
      },
      {
        icon = ICONPATH .. "checkpoint.png",
        icon_size = 64,
        icon_mipmaps = 4,
		scale = 1.125,
		tint = {0.6, 0.6, 0.6, 0.6}
      }
    },
    unit = {
      count = 1,
      ingredients = {{"nullius-checkpoint", 1}, {"nullius-physics-pack", 1}},
      time = 1
    },
    prerequisites = {"nullius-isotope-separation"},
    ignore_tech_cost_multiplier = true
  },
  {
    type = "technology",
    name = "nullius-checkpoint-processor-2",
    localised_name = {"technology-name.nullius-checkpoint", {"technology-name.nullius-utilization",
	    {"item-name.nullius-processor-2"}}},
    localised_description = {"technology-description.nullius-consume",
	    {"technology-description.nullius-item-boxable", 1000, "nullius-processor-2",
		    "nullius-box-processor-2", {"item-name.nullius-processor-2"}}},
    order = "nullius-yf",
    icons = {
      {
        icon = ICONPATH .. "uncrate.png",
        icon_size = 64,
        icon_mipmaps = 4
      },
	  {
        icon = "__base__/graphics/technology/advanced-electronics-2.png",
        icon_size = 256,
        icon_mipmaps = 4,
		scale = 0.2
      }
    },
    unit = {
      count = 1,
      ingredients = {{"nullius-checkpoint", 1}, {"nullius-requirement-consume", 1}, {"nullius-physics-pack", 1}},
      time = 1
    },
    prerequisites = {"nullius-optimization-5"},
    ignore_tech_cost_multiplier = true
  },
  {
    type = "technology",
    name = "nullius-checkpoint-demolitions",
    localised_name = {"technology-name.nullius-checkpoint", {"technology-name.nullius-demonstration",
	    {"technology-name.nullius-demolitions"}}},
    localised_description = {"technology-description.nullius-consume",
	    {"technology-description.nullius-item", 1, "nullius-missile-2", {"item-name.nullius-missile-2"}}},
    order = "nullius-yf",
    icons = {
      {
        icon = ICONPATH .. "uncrate.png",
        icon_size = 64,
        icon_mipmaps = 4
      },
	  {
        icon = "__base__/graphics/icons/atomic-bomb.png",
        icon_size = 64,
        icon_mipmaps = 4,
		scale = 0.8
      }
    },
    unit = {
      count = 1,
      ingredients = {{"nullius-checkpoint", 1}, {"nullius-requirement-consume", 1}, {"nullius-physics-pack", 1}},
      time = 1
    },
    prerequisites = {"nullius-demolitions-2"},
    ignore_tech_cost_multiplier = true
  },
  {
    type = "technology",
    name = "nullius-checkpoint-rocket-fuel",
    localised_name = {"technology-name.nullius-checkpoint", {"technology-name.nullius-analysis",
	    {"item-name.rocket-fuel"}}},
    localised_description = {"technology-description.nullius-consume",
	    {"technology-description.nullius-item", 5, "rocket-fuel", {"item-name.rocket-fuel"}}},
    order = "nullius-yf",
    icons = {
      {
        icon = ICONPATH .. "uncrate.png",
        icon_size = 64,
        icon_mipmaps = 4
      },
	  {
        icon = "__base__/graphics/technology/rocket-fuel.png",
        icon_size = 256,
        icon_mipmaps = 4,
		scale = 0.2
      }
    },
    unit = {
      count = 1,
      ingredients = {{"nullius-checkpoint", 1}, {"nullius-requirement-consume", 1}, {"nullius-physics-pack", 1}},
      time = 1
    },
    prerequisites = {"nullius-rocket-science-1"},
    ignore_tech_cost_multiplier = true
  },
  {
    type = "technology",
    name = "nullius-checkpoint-mecha",
    localised_name = {"technology-name.nullius-checkpoint", {"technology-name.nullius-prototype",
	    {"entity-name.nullius-mecha"}}},
    localised_description = {"technology-description.nullius-build", {"technology-description.nullius-item",
		    1, "nullius-mecha", {"", {"entity-name.nullius-mecha"}, " ", 1}}},
    order = "nullius-yf",
    icons = {
      {
        icon = BASEICON .. "blueprint.png",
        icon_size = 64,
        icon_mipmaps = 4
      },
      {
        icon = "__base__/graphics/icons/spidertron.png",
        icon_size = 64,
        icon_mipmaps = 4
      }
    },
    unit = {
      count = 1,
      ingredients = {{"nullius-checkpoint", 1}, {"nullius-requirement-build", 1}, {"nullius-physics-pack", 1}},
      time = 1
    },
    prerequisites = {"nullius-personal-transportation-4"},
    ignore_tech_cost_multiplier = true
  },
  {
    type = "technology",
    name = "nullius-checkpoint-excavation-drone",
    localised_name = {"technology-name.nullius-checkpoint", {"technology-name.nullius-demonstration",
	    {"item-name.nullius-excavation-drone"}}},
    localised_description = {"technology-description.nullius-consume",
	    {"technology-description.nullius-item", 1, "nullius-excavation-drone",
		    {"item-name.nullius-excavation-drone"}}},
    order = "nullius-yf",
    icons = {
      {
        icon = ICONPATH .. "uncrate.png",
        icon_size = 64,
        icon_mipmaps = 4
      },
	  {
        icon = ICONPATH .. "excavation.png",
        icon_size = 64,
        icon_mipmaps = 4,
		scale = 0.8
      }
    },
    unit = {
      count = 1,
      ingredients = {{"nullius-checkpoint", 1}, {"nullius-requirement-consume", 1}, {"nullius-physics-pack", 1}},
      time = 1
    },
    prerequisites = {"nullius-terraforming-1"},
    ignore_tech_cost_multiplier = true
  },

  {
    type = "technology",
    name = "nullius-checkpoint-cybernetics",
    localised_name = {"technology-name.nullius-checkpoint", {"technology-name.nullius-demonstration",
	    {"technology-name.nullius-cybernetics"}}},
    localised_description = {"technology-description.nullius-produce", {"technology-description.nullius-item",
		    1, "nullius-chassis-4", {"item-name.nullius-chassis-4"}}},
    order = "nullius-yg",
    icons = {
      {
        icon = "__base__/graphics/technology/power-armor-mk2.png",
        icon_size = 256,
        icon_mipmaps = 4
      },
      {
        icon = ICONPATH .. "checkpoint.png",
        icon_size = 64,
        icon_mipmaps = 4,
		scale = 4,
		tint = {0.6, 0.6, 0.6, 0.6}
      }
    },
    unit = {
      count = 1,
      ingredients = {{"nullius-checkpoint", 1}, {"nullius-astronomy-pack", 1}},
      time = 1
    },
    prerequisites = {"nullius-inserter-capacity-6"},
    ignore_tech_cost_multiplier = true
  },
  {
    type = "technology",
    name = "nullius-checkpoint-uranium-ore",
    localised_name = {"technology-name.nullius-checkpoint", {"technology-name.nullius-assay",
	    {"item-name.uranium-ore"}}},
    localised_description = {"technology-description.nullius-consume",
	    {"technology-description.nullius-item", 1, "nullius-guide-drone-uranium-1",
		    {"", {"item-name.nullius-guide-drone-uranium"}, " ", 1}}},
    order = "nullius-yg",
    icons = {
	  {
        icon = BASEICON .. "uranium-ore.png",
        icon_size = 64,
        icon_mipmaps = 4
	  },
      {
        icon = ICONPATH .. "checkpoint.png",
        icon_size = 64,
        icon_mipmaps = 4,
		tint = {0.6, 0.6, 0.6, 0.6}
      }
    },
    unit = {
      count = 1,
      ingredients = {{"nullius-checkpoint", 1}, {"nullius-requirement-consume", 1}, {"nullius-astronomy-pack", 1}},
      time = 1
    },
    prerequisites = {"nullius-asteroid-mining-1"},
    ignore_tech_cost_multiplier = true
  },
  {
    type = "technology",
    name = "nullius-checkpoint-copper-ore",
    localised_name = {"technology-name.nullius-checkpoint", {"technology-name.nullius-assay",
	    {"item-name.copper-ore"}}},
    localised_description = {"technology-description.nullius-consume",
	    {"technology-description.nullius-item", 1, "nullius-guide-drone-copper-1",
		    {"", {"item-name.nullius-guide-drone-copper"}, " ", 1}}},
    order = "nullius-yg",
    icons = {
	  {
        icon = BASEICON .. "copper-ore.png",
        icon_size = 64,
        icon_mipmaps = 4
	  },
      {
        icon = ICONPATH .. "checkpoint.png",
        icon_size = 64,
        icon_mipmaps = 4,
		tint = {0.6, 0.6, 0.6, 0.6}
      }
    },
    unit = {
      count = 1,
      ingredients = {{"nullius-checkpoint", 1}, {"nullius-requirement-consume", 1}, {"nullius-astronomy-pack", 1}},
      time = 1
    },
    prerequisites = {"nullius-asteroid-mining-1"},
    ignore_tech_cost_multiplier = true
  },
  {
    type = "technology",
    name = "nullius-checkpoint-breeder-cell",
    localised_name = {"technology-name.nullius-checkpoint", {"technology-name.nullius-utilization",
	    {"item-name.nullius-spent-breeder-cell"}}},
    localised_description = {"technology-description.nullius-consume",
	    {"technology-description.nullius-item", 25, "nullius-spent-breeder-cell",
		    {"item-name.nullius-spent-breeder-cell"}}},
    order = "nullius-yg",
    icons = {
      {
        icon = ICONPATH .. "uncrate.png",
        icon_size = 64,
        icon_mipmaps = 4
      },
	  {
        icon = ICONPATH .. "breeder-spent.png",
        icon_size = 64,
        icon_mipmaps = 4,
		scale = 0.8
      }
    },
    unit = {
      count = 1,
      ingredients = {{"nullius-checkpoint", 1}, {"nullius-requirement-consume", 1}, {"nullius-astronomy-pack", 1}},
      time = 1
    },
    prerequisites = {"nullius-nuclear-power-2"},
    ignore_tech_cost_multiplier = true
  },
  {
    type = "technology",
    name = "nullius-checkpoint-enriched-uranium",
    localised_name = {"technology-name.nullius-checkpoint", {"technology-name.nullius-analysis",
	    {"item-name.nullius-enriched-uranium"}}},
    localised_description = {"technology-description.nullius-produce",
	    {"technology-description.nullius-item", 250, "nullius-enriched-uranium",
		    {"item-name.nullius-enriched-uranium"}}},
    order = "nullius-yg",
    icons = {
	  data.raw.item["nullius-enriched-uranium"].icons[1],
      {
        icon = ICONPATH .. "checkpoint.png",
        icon_size = 64,
        icon_mipmaps = 4,
		tint = {0.6, 0.6, 0.6, 0.6}
      }
    },
    unit = {
      count = 1,
      ingredients = {{"nullius-checkpoint", 1}, {"nullius-astronomy-pack", 1}},
      time = 1
    },
    prerequisites = {"nullius-nuclear-power-3"},
    ignore_tech_cost_multiplier = true
  },
  {
    type = "technology",
    name = "nullius-checkpoint-antimatter",
    localised_name = {"technology-name.nullius-checkpoint", {"technology-name.nullius-utilization",
	    {"item-name.nullius-antimatter"}}},
    localised_description = {"technology-description.nullius-consume",
	    {"technology-description.nullius-item", 1, "nullius-antimatter", {"item-name.nullius-antimatter"}}},
    order = "nullius-yg",
    icons = {
      {
        icon = ICONPATH .. "uncrate.png",
        icon_size = 64,
        icon_mipmaps = 4
      },
	  {
        icon = ICONPATH .. "antimatter.png",
        icon_size = 64,
        icon_mipmaps = 4,
		scale = 0.8
      }
    },
    unit = {
      count = 1,
      ingredients = {{"nullius-checkpoint", 1}, {"nullius-requirement-consume", 1}, {"nullius-astronomy-pack", 1}},
      time = 1
    },
    prerequisites = {"nullius-antimatter-containment"},
    ignore_tech_cost_multiplier = true
  },
  {
    type = "technology",
    name = "nullius-checkpoint-copper-ingot",
    localised_name = {"technology-name.nullius-checkpoint", {"technology-name.nullius-assay",
	    {"item-name.nullius-copper-ingot"}}},
    localised_description = {"technology-description.nullius-produce",
	    {"technology-description.nullius-item-boxable", 1000, "nullius-copper-ingot",
		    "nullius-box-copper-ingot", {"item-name.nullius-copper-ingot"}}},
    order = "nullius-yg",
    icons = {
	  {
        icon = "__angelssmelting__/graphics/icons/ingot-copper.png",
        icon_size = 64,
        icon_mipmaps = 4
	  },
      {
        icon = ICONPATH .. "checkpoint.png",
        icon_size = 64,
        icon_mipmaps = 4,
		tint = {0.6, 0.6, 0.6, 0.6}
      }
    },
    unit = {
      count = 1,
      ingredients = {{"nullius-checkpoint", 1}, {"nullius-astronomy-pack", 1}},
      time = 1
    },
    prerequisites = {"nullius-copper-production"},
    ignore_tech_cost_multiplier = true
  },
  {
    type = "technology",
    name = "nullius-checkpoint-processor-3",
    localised_name = {"technology-name.nullius-checkpoint", {"technology-name.nullius-utilization",
	    {"item-name.nullius-processor-3"}}},
    localised_description = {"technology-description.nullius-consume",
	    {"technology-description.nullius-item-boxable", 2000, "nullius-processor-3",
		    "nullius-box-processor-3", {"item-name.nullius-processor-3"}}},
    order = "nullius-yg",
    icons = {
      {
        icon = ICONPATH .. "uncrate.png",
        icon_size = 64,
        icon_mipmaps = 4
      },
	  {
        icon = "__base__/graphics/technology/advanced-electronics-2.png",
        icon_size = 256,
        icon_mipmaps = 4,
		scale = 0.2
      }
    },
    unit = {
      count = 1,
      ingredients = {{"nullius-checkpoint", 1}, {"nullius-requirement-consume", 1}, {"nullius-astronomy-pack", 1}},
      time = 1
    },
    prerequisites = {"nullius-optimization-6"},
    ignore_tech_cost_multiplier = true
  },
  {
    type = "technology",
    name = "nullius-checkpoint-wood",
    localised_name = {"technology-name.nullius-checkpoint", {"technology-name.nullius-utilization",
	    {"item-name.nullius-wood"}}},
    localised_description = {"technology-description.nullius-consume",
	    {"technology-description.nullius-item-boxable", 200000, "nullius-wood",
		    "nullius-box-wood", {"item-name.nullius-wood"}}},
    order = "nullius-yg",
    icons = {
      {
        icon = ICONPATH .. "uncrate.png",
        icon_size = 64,
        icon_mipmaps = 4
      },
	  {
        icon = "__base__/graphics/icons/wood.png",
        icon_size = 64,
        icon_mipmaps = 4,
		scale = 0.8
      }
    },
    unit = {
      count = 1,
      ingredients = {{"nullius-checkpoint", 1}, {"nullius-requirement-consume", 1}, {"nullius-astronomy-pack", 1}},
      time = 1
    },
    prerequisites = {"nullius-woodworking"},
    ignore_tech_cost_multiplier = true
  },
  {
    type = "technology",
    name = "nullius-checkpoint-logistic-robot-3",
    localised_name = {"technology-name.nullius-checkpoint", {"technology-name.nullius-analysis",
	    {"technology-name.nullius-logistic-robot"}}},
    localised_description = {"technology-description.nullius-produce", {"technology-description.nullius-item-boxable",
		    1000, "nullius-logistic-bot-4", "nullius-box-logistic-bot-4", {"entity-name.nullius-logistic-bot-4"}}},
    order = "nullius-yg",
    icons = {
      {
        icon = "__base__/graphics/technology/logistic-robotics.png",
        icon_size = 256,
        icon_mipmaps = 4
      },
      {
        icon = ICONPATH .. "checkpoint.png",
        icon_size = 64,
        icon_mipmaps = 4,
		scale = 4,
		tint = {0.6, 0.6, 0.6, 0.6}
      }
    },
    unit = {
      count = 1,
      ingredients = {{"nullius-checkpoint", 1}, {"nullius-astronomy-pack", 1}},
      time = 1
    },
    prerequisites = {"nullius-logistic-robot-4"},
    ignore_tech_cost_multiplier = true
  },
  {
    type = "technology",
    name = "nullius-checkpoint-android-2",
    localised_name = {"technology-name.nullius-checkpoint", {"technology-name.nullius-demonstration",
	    {"item-name.nullius-android"}}},
    localised_description = {"technology-description.nullius-build", {"technology-description.nullius-item",
		    1, "nullius-android-2", {"", {"item-name.nullius-android"}, " ", 2}}},
    order = "nullius-yg",
    icons = {
      {
        icon = BASEICON .. "blueprint.png",
        icon_size = 64,
        icon_mipmaps = 4
      },
      {
        icon = ICONPATH .. "android2.png",
        icon_size = 64,
        icon_mipmaps = 4
      }
    },
    unit = {
      count = 1,
      ingredients = {{"nullius-checkpoint", 1}, {"nullius-requirement-build", 1}, {"nullius-astronomy-pack", 1}},
      time = 1
    },
    prerequisites = {"nullius-artificial-intelligence-2"},
    ignore_tech_cost_multiplier = true
  },
  {
    type = "technology",
    name = "nullius-checkpoint-asteroid-mining",
    localised_name = {"technology-name.nullius-checkpoint", {"technology-name.nullius-utilization",
	    {"technology-name.nullius-asteroid-mining"}}},
    localised_description = {"technology-description.nullius-consume", {"technology-description.nullius-item",
		    20, "nullius-asteroid-miner-2", {"item-name.nullius-asteroid-miner-2"}}},
    order = "nullius-yg",
    icons = {
      {
        icon = ICONPATH .. "uncrate.png",
        icon_size = 64,
        icon_mipmaps = 4
      },
      {
        icon = ICONPATH .. "asteroid-miner-2.png",
        icon_size = 64,
		scale = 0.8
      }
    },
    unit = {
      count = 1,
      ingredients = {{"nullius-checkpoint", 1}, {"nullius-requirement-consume", 1}, {"nullius-astronomy-pack", 1}},
      time = 1
    },
    prerequisites = {"nullius-asteroid-mining-2"},
    ignore_tech_cost_multiplier = true
  },
  {
    type = "technology",
    name = "nullius-checkpoint-probe",
    localised_name = {"technology-name.nullius-checkpoint", {"technology-name.nullius-deployment",
	    {"item-name.nullius-probe"}}},
    localised_description = {"technology-description.nullius-consume", {"technology-description.nullius-item",
		    1, "nullius-probe", {"item-name.nullius-probe"}}},
    order = "nullius-yg",
    icons = {
      {
        icon = ICONPATH .. "uncrate.png",
        icon_size = 64,
        icon_mipmaps = 4
      },
      {
        icon = "__base__/graphics/icons/crash-site-spaceship.png",
        icon_size = 64,
        icon_mipmaps = 4,
		scale = 0.8
      }
    },
    unit = {
      count = 1,
      ingredients = {{"nullius-checkpoint", 1}, {"nullius-requirement-consume", 1}, {"nullius-astronomy-pack", 1}},
      time = 1
    },
    prerequisites = {"nullius-rocket-science-3"},
    ignore_tech_cost_multiplier = true
  },
  {
    type = "technology",
    name = "nullius-checkpoint-solar-panel",
    localised_name = {"technology-name.nullius-checkpoint", {"technology-name.nullius-deployment",
	    {"technology-name.nullius-solar-power"}}},
    localised_description = {"technology-description.nullius-build", {"technology-description.nullius-item",
		    1000, "nullius-solar-panel-3", {"entity-name.nullius-solar-panel-3"}}},
    order = "nullius-yg",
    icons = {
      {
        icon = BASEICON .. "blueprint.png",
        icon_size = 64,
        icon_mipmaps = 4
      },
      {
        icon = "__base__/graphics/technology/solar-energy.png",
        icon_size = 256,
        icon_mipmaps = 4,
		scale = 0.25
      }
    },
    unit = {
      count = 1,
      ingredients = {{"nullius-checkpoint", 1}, {"nullius-requirement-build", 1}, {"nullius-astronomy-pack", 1}},
      time = 1
    },
    prerequisites = {"nullius-biochemistry-7"},
    ignore_tech_cost_multiplier = true
  },
  {
    type = "technology",
    name = "nullius-checkpoint-grid-battery",
    localised_name = {"technology-name.nullius-checkpoint", {"technology-name.nullius-deployment",
	    {"technology-name.nullius-battery-storage"}}},
    localised_description = {"technology-description.nullius-build", {"technology-description.nullius-item",
		    500, "nullius-grid-battery-3", {"entity-name.nullius-grid-battery-3"}}},
    order = "nullius-yg",
    icons = {
      {
        icon = BASEICON .. "blueprint.png",
        icon_size = 64,
        icon_mipmaps = 4
      },
      {
        icon = "__base__/graphics/technology/electric-energy-acumulators.png",
        icon_size = 256,
        icon_mipmaps = 4,
		scale = 0.25
      }
    },
    unit = {
      count = 1,
      ingredients = {{"nullius-checkpoint", 1}, {"nullius-requirement-build", 1}, {"nullius-astronomy-pack", 1}},
      time = 1
    },
    prerequisites = {"nullius-battery-storage-6"},
    ignore_tech_cost_multiplier = true
  },
  {
    type = "technology",
    name = "nullius-checkpoint-cybernetics-2",
    localised_name = {"technology-name.nullius-checkpoint", {"technology-name.nullius-prototype",
	    {"technology-name.nullius-cybernetics"}}},
    localised_description = {"technology-description.nullius-produce", {"technology-description.nullius-item",
		    1, "nullius-chassis-6", {"item-name.nullius-chassis-6"}}},
    order = "nullius-yg",
    icons = {
      {
        icon = "__base__/graphics/technology/power-armor-mk2.png",
        icon_size = 256,
        icon_mipmaps = 4
      },
      {
        icon = ICONPATH .. "checkpoint.png",
        icon_size = 64,
        icon_mipmaps = 4,
		scale = 4,
		tint = {0.6, 0.6, 0.6, 0.6}
      }
    },
    unit = {
      count = 1,
      ingredients = {{"nullius-checkpoint", 1}, {"nullius-astronomy-pack", 1}},
      time = 1
    },
    prerequisites = {"nullius-cybernetics-7"},
    ignore_tech_cost_multiplier = true
  },
  {
    type = "technology",
    name = "nullius-checkpoint-carbon-sequestration",
    localised_name = {"technology-name.nullius-checkpoint", {"technology-name.nullius-deployment",
	    {"technology-name.nullius-carbon-sequestration"}}},
    localised_description = {"",
	    {"technology-description.nullius-consume", {"technology-description.nullius-fluid-compressible",
		    2000000000, "nullius-carbon-dioxide", "nullius-compressed-carbon-dioxide",
			    {"fluid-name.nullius-carbon-dioxide"}}},"\n",
	    {"technology-description.nullius-produce", {"technology-description.nullius-fluid-compressible",
		    3000000000, "nullius-oxygen", "nullius-compressed-oxygen", {"fluid-name.nullius-oxygen"}}}},
    order = "nullius-yg",
    icons = {
      {
        icon = ICONPATH .. "fluid/unbarrel.png",
        icon_size = 64
      },
      {
        icon = "__angelspetrochem__/graphics/icons/molecules/carbon-dioxide.png",
        icon_size = 72,
		scale = 0.568
      }
    },
    unit = {
      count = 1,
      ingredients = {{"nullius-checkpoint", 1}, {"nullius-requirement-consume", 1}, {"nullius-astronomy-pack", 1}},
      time = 1
    },
    prerequisites = {"nullius-carbon-sequestration-3"},
    ignore_tech_cost_multiplier = true
  }
})
