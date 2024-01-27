local ICONPATH = "__nullius__/graphics/icons/"
local ENTITYPATH = "__nullius__/graphics/entity/"

data:extend({
  {
    type = "technology",
    name = "nullius-mining-productivity-1",
    order = "nullius-xb",
	icons = data.raw.technology["mining-productivity-1"].icons,
    effects = {{
        type = "mining-drill-productivity-bonus",
        modifier = 0.02
    }},
    unit = {
      count = 2,
      ingredients = {{"nullius-geology-pack", 1}},
      time = 5
    },
    prerequisites = {"nullius-mining-tools", "nullius-masonry-1"},
    upgrade = true
  },
  {
    type = "technology",
    name = "nullius-mining-productivity-2",
    order = "nullius-xb",
	icons = data.raw.technology["mining-productivity-1"].icons,
    effects = {{
        type = "mining-drill-productivity-bonus",
        modifier = 0.01
    }},
    unit = {
      count = 3,
      ingredients = {{"nullius-geology-pack", 1}},
      time = 5
    },
    prerequisites = {"nullius-mining-productivity-1"},
    upgrade = true
  },
  {
    type = "technology",
    name = "nullius-mining-productivity-3",
    order = "nullius-xb",
	icons = data.raw.technology["mining-productivity-1"].icons,
    effects = {
	  {
        type = "character-mining-speed",
        modifier = 0.1
      },
	  {
        type = "mining-drill-productivity-bonus",
        modifier = 0.02
      }
	},
    unit = {
      count = 5,
      ingredients = {{"nullius-geology-pack", 1}},
      time = 10
    },
    prerequisites = {"nullius-mining-productivity-2", "nullius-checkpoint-iron-ore"},
    upgrade = true
  },
  {
    type = "technology",
    name = "nullius-mining-productivity-4",
    order = "nullius-xb",
	icons = data.raw.technology["mining-productivity-1"].icons,
    effects = {{
        type = "mining-drill-productivity-bonus",
        modifier = 0.02
    }},
    unit = {
      count = 3,
      ingredients = {{"nullius-geology-pack", 2}, {"nullius-climatology-pack", 1}},
      time = 10
    },
    prerequisites = {"nullius-land-fill-1", "nullius-mining-1", "nullius-mining-productivity-3"},
    upgrade = true
  },
  {
    type = "technology",
    name = "nullius-mining-productivity-5",
    order = "nullius-xb",
	icons = data.raw.technology["mining-productivity-1"].icons,
	effects = {
	  {
        type = "character-mining-speed",
        modifier = 0.1
      },
	  {
        type = "mining-drill-productivity-bonus",
        modifier = 0.01
      }
	},
    unit = {
      count = 4,
      ingredients = {{"nullius-geology-pack", 2}, {"nullius-climatology-pack", 1}},
      time = 10
    },
    prerequisites = {"nullius-mining-productivity-4"},
    upgrade = true
  },
  {
    type = "technology",
    name = "nullius-mining-productivity-6",
    order = "nullius-xb",
	icons = data.raw.technology["mining-productivity-1"].icons,
    effects = {{
        type = "mining-drill-productivity-bonus",
        modifier = 0.02
    }},
    unit = {
      count = 6,
      ingredients = {{"nullius-geology-pack", 2}, {"nullius-climatology-pack", 1}},
      time = 15
    },
    prerequisites = {"nullius-mining-productivity-5", "nullius-checkpoint-sandstone"},
    upgrade = true
  },
  {
    type = "technology",
    name = "nullius-mining-productivity-7",
    order = "nullius-xb",
	icons = data.raw.technology["mining-productivity-1"].icons,
    effects = {{
        type = "mining-drill-productivity-bonus",
        modifier = 0.02
    }},
    unit = {
      count = 6,
      ingredients = {
        {"nullius-geology-pack", 3}, {"nullius-climatology-pack", 1},
        {"nullius-mechanical-pack", 1}
      },
      time = 15
    },
    prerequisites = {"nullius-toolmaking-2", "nullius-land-fill-2", "nullius-mining-productivity-6"},
    upgrade = true
  },
  {
    type = "technology",
    name = "nullius-mining-productivity-8",
    order = "nullius-xb",
	icons = data.raw.technology["mining-productivity-1"].icons,
	effects = {
	  {
        type = "character-mining-speed",
        modifier = 0.1
      },
	  {
        type = "mining-drill-productivity-bonus",
        modifier = 0.01
      }
	},
    unit = {
      count = 12,
      ingredients = {
        {"nullius-geology-pack", 3}, {"nullius-climatology-pack", 1},
        {"nullius-mechanical-pack", 1}
      },
      time = 15
    },
    prerequisites = {"nullius-mining-productivity-7"},
    upgrade = true
  },
  {
    type = "technology",
    name = "nullius-mining-productivity-9",
    order = "nullius-xb",
	icons = data.raw.technology["mining-productivity-1"].icons,
    effects = {{
        type = "mining-drill-productivity-bonus",
        modifier = 0.02
    }},
    unit = {
      count = 25,
      ingredients = {
        {"nullius-geology-pack", 3}, {"nullius-climatology-pack", 1},
        {"nullius-mechanical-pack", 1}
      },
      time = 20
    },
    prerequisites = {"nullius-mining-productivity-8", "nullius-checkpoint-bauxite"},
    upgrade = true
  },
  {
    type = "technology",
    name = "nullius-mining-productivity-10",
    order = "nullius-xb",
	icons = data.raw.technology["mining-productivity-1"].icons,
    effects = {{
        type = "mining-drill-productivity-bonus",
        modifier = 0.02
    }},
    unit = {
      count = 60,
      ingredients = {
        {"nullius-geology-pack", 3}, {"nullius-climatology-pack", 1},
        {"nullius-mechanical-pack", 1}, {"nullius-electrical-pack", 1}
      },
      time = 25
    },
    prerequisites = {"nullius-checkpoint-limestone", "nullius-mining-productivity-9"},
    upgrade = true
  },
  {
    type = "technology",
    name = "nullius-mining-productivity-11",
    order = "nullius-xb",
	icons = data.raw.technology["mining-productivity-1"].icons,
	effects = {
	  {
        type = "character-mining-speed",
        modifier = 0.1
      },
	  {
        type = "mining-drill-productivity-bonus",
        modifier = 0.01
      }
	},
    unit = {
      count = 100,
      ingredients = {
        {"nullius-geology-pack", 3}, {"nullius-climatology-pack", 1},
        {"nullius-mechanical-pack", 1}, {"nullius-electrical-pack", 1}
      },
      time = 30
    },
    prerequisites = {"nullius-mining-productivity-10", "nullius-silica-processing-2"},
    upgrade = true
  },
  {
    type = "technology",
    name = "nullius-mining-productivity-12",
    order = "nullius-xb",
	icons = data.raw.technology["mining-productivity-1"].icons,
    effects = {{
        type = "mining-drill-productivity-bonus",
        modifier = 0.02
    }},
    unit = {
      count = 150,
      ingredients = {
        {"nullius-geology-pack", 3}, {"nullius-climatology-pack", 1},
        {"nullius-mechanical-pack", 1}, {"nullius-electrical-pack", 1}
      },
      time = 30
    },
    prerequisites = {"nullius-mining-productivity-11", "nullius-land-fill-3"},
    upgrade = true
  },
  {
    type = "technology",
    name = "nullius-mining-productivity-13",
    order = "nullius-xb",
	icons = data.raw.technology["mining-productivity-1"].icons,
    effects = {{
        type = "mining-drill-productivity-bonus",
        modifier = 0.02
    }},
    unit = {
      count = 150,
      ingredients = {
        {"nullius-geology-pack", 4}, {"nullius-climatology-pack", 1},
        {"nullius-mechanical-pack", 1}, {"nullius-electrical-pack", 1},
        {"nullius-chemical-pack", 1}
      },
      time = 30
    },
    prerequisites = {"nullius-aluminum-production-2", "nullius-mining-productivity-12"},
    upgrade = true
  },
  {
    type = "technology",
    name = "nullius-mining-productivity-14",
    order = "nullius-xb",
	icons = data.raw.technology["mining-productivity-1"].icons,
	effects = {
	  {
        type = "character-mining-speed",
        modifier = 0.1
      },
	  {
        type = "mining-drill-productivity-bonus",
        modifier = 0.01
      }
	},
    unit = {
      count = 300,
      ingredients = {
        {"nullius-geology-pack", 4}, {"nullius-climatology-pack", 1},
        {"nullius-mechanical-pack", 1}, {"nullius-electrical-pack", 1},
        {"nullius-chemical-pack", 1}
      },
      time = 35
    },
    prerequisites = {"nullius-mining-productivity-13", "nullius-waste-reclamation"},
    upgrade = true
  },
  {
    type = "technology",
    name = "nullius-mining-productivity-15",
    order = "nullius-xb",
	icons = data.raw.technology["mining-productivity-1"].icons,
    effects = {{
        type = "mining-drill-productivity-bonus",
        modifier = 0.02
    }},
    unit = {
      count = 600,
      ingredients = {
        {"nullius-geology-pack", 4}, {"nullius-climatology-pack", 1},
        {"nullius-mechanical-pack", 1}, {"nullius-electrical-pack", 1},
        {"nullius-chemical-pack", 1}
      },
      time = 40
    },
    prerequisites = {"nullius-land-fill-4"},
    upgrade = true
  },
  {
    type = "technology",
    name = "nullius-mining-productivity-16",
    order = "nullius-xb",
	icons = data.raw.technology["mining-productivity-1"].icons,
    effects = {{
        type = "mining-drill-productivity-bonus",
        modifier = 0.01
    }},
    unit = {
      count = 1000,
      ingredients = {
        {"nullius-geology-pack", 3}, {"nullius-climatology-pack", 1},
        {"nullius-mechanical-pack", 1}, {"nullius-electrical-pack", 1},
        {"nullius-chemical-pack", 1}, {"nullius-physics-pack", 1}
      },
      time = 40
    },
    prerequisites = {"nullius-mining-3", "nullius-mining-productivity-15"},
    upgrade = true
  },
  {
    type = "technology",
    name = "nullius-mining-productivity-17",
    order = "nullius-xb",
	icons = data.raw.technology["mining-productivity-1"].icons,
    effects = {{
        type = "mining-drill-productivity-bonus",
        modifier = 0.01
    }},
    unit = {
      count = 1500,
      ingredients = {
        {"nullius-geology-pack", 3}, {"nullius-climatology-pack", 1},
        {"nullius-mechanical-pack", 1}, {"nullius-electrical-pack", 1},
        {"nullius-chemical-pack", 1}, {"nullius-physics-pack", 1}
      },
      time = 45
    },
    prerequisites = {"nullius-checkpoint-mining", "nullius-limestone-processing-4"},
    upgrade = true
  },
  {
    type = "technology",
    name = "nullius-mining-productivity-18",
    order = "nullius-xb",
	icons = data.raw.technology["mining-productivity-1"].icons,
    effects = {{
        type = "mining-drill-productivity-bonus",
        modifier = 0.01
    }},
    unit = {
      count = 2000,
      ingredients = {
        {"nullius-geology-pack", 3}, {"nullius-climatology-pack", 1},
        {"nullius-mechanical-pack", 1}, {"nullius-electrical-pack", 1},
        {"nullius-chemical-pack", 1}, {"nullius-physics-pack", 1}
      },
      time = 50
    },
    prerequisites = {"nullius-mining-productivity-17", "nullius-volcanism-2"},
    upgrade = true
  },
  {
    type = "technology",
    name = "nullius-mining-productivity-19",
    order = "nullius-xb",
	icons = data.raw.technology["mining-productivity-1"].icons,
    effects = {{
        type = "mining-drill-productivity-bonus",
        modifier = 0.01
    }},
    unit = {
      count = 3000,
      ingredients = {
        {"nullius-geology-pack", 3}, {"nullius-climatology-pack", 1},
        {"nullius-mechanical-pack", 1}, {"nullius-electrical-pack", 1},
        {"nullius-chemical-pack", 1}, {"nullius-physics-pack", 1}
      },
      time = 55
    },
    prerequisites = {"nullius-mining-productivity-18", "nullius-construction-robot-3"},
    upgrade = true
  },
  {
    type = "technology",
    name = "nullius-mining-productivity-20",
    order = "nullius-xb",
	icons = data.raw.technology["mining-productivity-1"].icons,
    effects = {{
        type = "mining-drill-productivity-bonus",
        modifier = 0.01
    }},
    unit = {
      count = 5000,
      ingredients = {
        {"nullius-geology-pack", 3}, {"nullius-climatology-pack", 1},
        {"nullius-mechanical-pack", 1}, {"nullius-electrical-pack", 1},
        {"nullius-chemical-pack", 1}, {"nullius-physics-pack", 1}
      },
      time = 60
    },
    prerequisites = {"nullius-mining-productivity-19", "nullius-terraforming-2", "nullius-checkpoint-excavation-drone"},
    upgrade = true
  },

  {
    type = "technology",
    name = "nullius-mining-productivity-21",
    order = "nullius-xb",
	icons = data.raw.technology["mining-productivity-1"].icons,
    effects = {{
        type = "mining-drill-productivity-bonus",
        modifier = 0.02
    }},
    unit = {
      count_formula = "10000*(1.25892541179417^(L-21))",
      ingredients = {
        {"nullius-geology-pack", 2}, {"nullius-climatology-pack", 1},
        {"nullius-mechanical-pack", 1}, {"nullius-electrical-pack", 1},
        {"nullius-chemical-pack", 1}, {"nullius-physics-pack", 1},
        {"nullius-astronomy-pack", 1}
      },
      time = 60
    },
    prerequisites = {"nullius-optimization-7"},
    max_level = "infinite",
    upgrade = true
  },

  {
    type = "technology",
    name = "nullius-empiricism-7",
    order = "nullius-xc",
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
      count_formula = "6250*(2^(L-7))",
      ingredients = {
        {"nullius-geology-pack", 1}, {"nullius-climatology-pack", 1},
        {"nullius-mechanical-pack", 1}, {"nullius-electrical-pack", 2},
        {"nullius-chemical-pack", 1}, {"nullius-physics-pack", 1},
        {"nullius-astronomy-pack", 2}
      },
      time = 60
    },
    prerequisites = {"nullius-parallel-computing-4"},
    max_level = "infinite",
    upgrade = true
  },

  {
    type = "technology",
    name = "nullius-braking-9",
    order = "nullius-xc",
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
      count_formula = "10000*(1.732050807569^(L-9))",
      ingredients = {
        {"nullius-geology-pack", 1}, {"nullius-climatology-pack", 1},
        {"nullius-mechanical-pack", 2}, {"nullius-electrical-pack", 1},
        {"nullius-chemical-pack", 1}, {"nullius-physics-pack", 1},
        {"nullius-astronomy-pack", 1}
      },
      time = 60
    },
    prerequisites = {"nullius-checkpoint-copper-ingot"},
    max_level = "infinite",
    upgrade = true
  },

  {
    type = "technology",
    name = "nullius-inserter-capacity-8",
    order = "nullius-xc",
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
      count_formula = "50000*(2^(L-8))",
      ingredients = {
        {"nullius-geology-pack", 1}, {"nullius-climatology-pack", 1},
        {"nullius-mechanical-pack", 2}, {"nullius-electrical-pack", 1},
        {"nullius-chemical-pack", 1}, {"nullius-physics-pack", 1},
        {"nullius-astronomy-pack", 1}
      },
      time = 60
    },
    prerequisites = {"nullius-inserter-capacity-7", "nullius-locomotion-5"},
    max_level = "infinite",
    upgrade = true
  },

  {
    type = "technology",
    name = "nullius-toolmaking-10",
    order = "nullius-xc",
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
      },
      {
        type = "character-health-bonus",
        modifier = 50
      }
    },
    unit = {
      count_formula = "12500*(2^(L-10))",
      ingredients = {
        {"nullius-geology-pack", 1}, {"nullius-climatology-pack", 1},
        {"nullius-mechanical-pack", 1}, {"nullius-electrical-pack", 2},
        {"nullius-chemical-pack", 1}, {"nullius-physics-pack", 1},
        {"nullius-astronomy-pack", 1}
      },
      time = 60
    },
    prerequisites = {"nullius-cybernetics-6"},
    max_level = "infinite",
    upgrade = true
  },

  {
    type = "technology",
    name = "nullius-robot-speed-6",
    order = "nullius-xc",
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
      count_formula = "25000*(2^(L-6))",
      ingredients = {
        {"nullius-geology-pack", 1}, {"nullius-climatology-pack", 2},
        {"nullius-mechanical-pack", 1}, {"nullius-electrical-pack", 1},
        {"nullius-chemical-pack", 1}, {"nullius-physics-pack", 1},
        {"nullius-astronomy-pack", 1}
      },
      time = 60
    },
    prerequisites = {"nullius-locomotion-5"},
    max_level = "infinite",
    upgrade = true
  },

  {
    type = "technology",
    name = "nullius-robot-cargo-3",
    order = "nullius-xc",
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
      count_formula = "40000*(5^(L-3))",
      ingredients = {
        {"nullius-geology-pack", 1}, {"nullius-climatology-pack", 1},
        {"nullius-mechanical-pack", 1}, {"nullius-electrical-pack", 1},
        {"nullius-chemical-pack", 1}, {"nullius-physics-pack", 2},
        {"nullius-astronomy-pack", 1}
      },
      time = 60
    },
    prerequisites = {"nullius-personal-storage-4"},
    max_level = "infinite",
    upgrade = true
  },

  {
    type = "technology",
    name = "nullius-robot-battery-2",
    order = "nullius-xc",
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
      count_formula = "12500*(2^(L-2))",
      ingredients = {
        {"nullius-geology-pack", 1}, {"nullius-climatology-pack", 1},
        {"nullius-mechanical-pack", 1}, {"nullius-electrical-pack", 1},
        {"nullius-chemical-pack", 2}, {"nullius-physics-pack", 1},
        {"nullius-astronomy-pack", 1}
      },
      time = 60
    },
    prerequisites = {"nullius-construction-robot-4"},
    max_level = "infinite",
    upgrade = true
  },

  {
    type = "technology",
    name = "nullius-extermination-1",
    order = "nullius-xc",
    icon = "__base__/graphics/technology/energy-weapons-damage.png",
    icon_size = 256,
    icon_mipmaps = 4,
    effects = {
      {
        type = "gun-speed",
        ammo_category = "laser",
        modifier = 0.25
      },
      {
        type = "ammo-damage",
        ammo_category = "laser",
        modifier = 0.5
      },
      {
        type = "gun-speed",
        ammo_category = "bullet",
        modifier = 0.1
      },
      {
        type = "ammo-damage",
        ammo_category = "bullet",
        modifier = 0.25
      }
    },
    unit = {
      count_formula = "25000*(2^(L-1))",
      ingredients = {
        {"nullius-geology-pack", 1}, {"nullius-climatology-pack", 1},
        {"nullius-mechanical-pack", 1}, {"nullius-electrical-pack", 1},
        {"nullius-chemical-pack", 1}, {"nullius-physics-pack", 2},
        {"nullius-astronomy-pack", 1}
      },
      time = 60
    },
    prerequisites = {"nullius-wildlife-management-2", "nullius-checkpoint-arthropod"},
    max_level = "infinite",
    upgrade = true
  },

  {
    type = "technology",
    name = "nullius-reconnaissance-4",
    order = "nullius-xc",
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
      count_formula = "25000*(2^(L-4))",
      ingredients = {
        {"nullius-geology-pack", 2}, {"nullius-climatology-pack", 2},
        {"nullius-mechanical-pack", 1}, {"nullius-electrical-pack", 1},
        {"nullius-chemical-pack", 1}, {"nullius-physics-pack", 2},
        {"nullius-astronomy-pack", 1}
      },
      time = 60
    },
    prerequisites = {"nullius-wildlife-management-2"},
    max_level = "infinite",
    upgrade = true
  },

  {
    type = "technology",
    name = "nullius-artificial-intuition-1",
    order = "nullius-xc",
    icon = "__base__/graphics/technology/optics.png",
    icon_size = 256,
    icon_mipmaps = 4,
    effects = {
      {
        type = "laboratory-productivity",
        modifier = 0.02
      }
    },
    unit = {
      count_formula = "100*(2^(L-1))",
      ingredients = {
        {"nullius-biochemistry-pack", 1}, {"nullius-microbiology-pack", 1},
        {"nullius-botany-pack", 1}, {"nullius-dendrology-pack", 1},
        {"nullius-nematology-pack", 1}, {"nullius-ichthyology-pack", 1},
        {"nullius-zoology-pack", 1}
      },
      time = 600
    },
    prerequisites = { "nullius-artificial-intelligence-2", "nullius-evolution-5" },
    max_level = "infinite",
    upgrade = true
  },

  {
    type = "technology",
    name = "nullius-personal-storage-5",
    order = "nullius-xc",
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
      count_formula = "100000*(10^(L-5))",
      ingredients = {
        {"nullius-geology-pack", 1}, {"nullius-climatology-pack", 1},
        {"nullius-mechanical-pack", 2}, {"nullius-electrical-pack", 1},
        {"nullius-chemical-pack", 2}, {"nullius-physics-pack", 1},
        {"nullius-astronomy-pack", 1}
      },
      time = 60
    },
    prerequisites = {"nullius-personal-storage-4"},
    max_level = "infinite",
    upgrade = true
  },

  {
    type = "technology",
    name = "nullius-projection-3",
    order = "nullius-xc",
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
      }
    },
    unit = {
      count_formula = "7500*(2^(L-3))",
      ingredients = {
        {"nullius-geology-pack", 1}, {"nullius-climatology-pack", 1},
        {"nullius-mechanical-pack", 1}, {"nullius-electrical-pack", 2},
        {"nullius-chemical-pack", 1}, {"nullius-physics-pack", 2},
        {"nullius-astronomy-pack", 1}
      },
      time = 60
    },
    prerequisites = {"nullius-checkpoint-antimatter", "nullius-inserter-capacity-7"},
    max_level = "infinite",
    upgrade = true
  },
  {
    type = "technology",
    name = "nullius-locomotion-6",
    order = "nullius-xc",
    icon = "__base__/graphics/technology/exoskeleton-equipment.png",
    icon_size = 256,
    icon_mipmaps = 4,
    effects = {
      {
        type = "character-running-speed",
        modifier = 0.05
      }
    },
	unit = {
      count_formula = "250*(2^(L-6))",
      ingredients = {
        {"nullius-biochemistry-pack", 1}, {"nullius-microbiology-pack", 1},
        {"nullius-botany-pack", 1}, {"nullius-dendrology-pack", 1},
        {"nullius-nematology-pack", 1}, {"nullius-ichthyology-pack", 1},
        {"nullius-zoology-pack", 2}
      },
      time = 600
    },
    prerequisites = {"nullius-checkpoint-android-2"},
    max_level = "infinite",
    upgrade = true
  }
})
