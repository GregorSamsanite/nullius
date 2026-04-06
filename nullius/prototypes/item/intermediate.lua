local ICONPATH = "__nullius__/graphics/icons/"
local ENTITYPATH = "__nullius__/graphics/entity/"
local FLUIDPATH = ICONPATH .. "fluid/"

data:extend({
  {
    type = "item",
    name = "nullius-bauxite",
    icons = {{
      icon = "__angelssmeltinggraphics__/graphics/icons/ore-bauxite.png",
      icon_size = 32
    }},
    subgroup = "aluminum-ingot",
    order = "nullius-b",
    stack_size = 50
  },
  {
    type = "item",
    name = "nullius-sandstone",
    icons = {{
        icon = "__angelsrefininggraphics__/graphics/icons/angels-ore6/angels-ore6-2.png",
        icon_size = 64,
        tint = {184, 125, 73}
    }},
    subgroup = "silicon-product",
    order = "nullius-b",
    stack_size = 50
  },
  {
    type = "item",
    name = "nullius-limestone",
    icons = {{
      icon = "__angelsrefininggraphics__/graphics/icons/angels-ore6/angels-ore6-3.png",
      icon_size = 64,
      tint = {0.898, 0.773, 0.688}
    }},
    subgroup = "calcium-product",
    order = "nullius-b",
    stack_size = 50
  },
  {
    type = "item",
    name = "nullius-gypsum",
    icons = {
      {
        icon = "__angelsrefininggraphics__/graphics/icons/crushed/crushed-4.png",
        icon_size = 64,
        tint = {1, 1, 0.8}
      }
    },
    subgroup = "calcium-product",
    order = "nullius-f",
    stack_size = 50
  },
  {
    type = "item",
    name = "nullius-graphite",
    icon = "__base__/graphics/icons/coal-dark-background.png",
    icon_size = 64,
    
    subgroup = "organic-material-1",
    order = "nullius-b",
    stack_size = 100
  },

  {
    type = "tool",
    name = "nullius-checkpoint",
    order = "nullius-y",
    icons = {
      {
        icon = ICONPATH .. "checkpoint.png",
        icon_size = 64,
        
      }
    },
    hidden = true,
    subgroup = "other",
    stack_size = 1,
    durability = 1,
    durability_description_key = "description.science-pack-remaining-amount-key",
    durability_description_value = "description.science-pack-remaining-amount-value"
  },
  {
    type = "tool",
    name = "nullius-requirement-build",
    order = "nullius-arb",
    icons = {
      {
        icon = "__base__/graphics/icons/construction-robot.png",
        icon_size = 64,
        
      }
    },
	  hidden = true,
    subgroup = "other",
    stack_size = 1,
    durability = 1,
    durability_description_key = "description.science-pack-remaining-amount-key",
    durability_description_value = "description.science-pack-remaining-amount-value"
  },
  {
    type = "tool",
    name = "nullius-requirement-consume",
    order = "nullius-arc",
    icons = {
      {
        icon = ICONPATH .. "unboxing.png",
        icon_size = 64
      }
    },
	  hidden = true,
    subgroup = "other",
    stack_size = 1,
    durability = 1,
    durability_description_key = "description.science-pack-remaining-amount-key",
    durability_description_value = "description.science-pack-remaining-amount-value"
  },

  {
    type = "tool",
    name = "nullius-geology-pack",
    order = "nullius-b",
    icons = {
      {
        icon = "__base__/graphics/icons/utility-science-pack.png",
        icon_size = 64,
        
      },
      {
        icon = "__base__/graphics/icons/stone.png",
        icon_size = 64,
        
        scale = 0.25,
        shift = {0, 7},
        tint = {r=0.6, g=0.4, b=0.2, a=0.75}
      }
    },
    subgroup = "research-pack",
    stack_size = 200,
    durability = 1,
    durability_description_key = "description.science-pack-remaining-amount-key",
    durability_description_value = "description.science-pack-remaining-amount-value"
  },
  {
    type = "recipe",
    name = "nullius-geology-pack",
	  localised_name = {"", {"item-name.nullius-geology-pack"}, " ", tostring(1)},
    show_amount_in_title = false,
    always_show_products = true,
    always_show_made_in = true,
    enabled = false,
    category = "small-crafting",
    energy_required = 30,
    ingredients = {
      {type = "item", name = "nullius-bauxite", amount = 4},
      {type = "item", name = "nullius-sandstone", amount = 4},
      {type = "item", name = "iron-ore", amount = 4}
    },
    results = {
      {type = "item", name = "nullius-geology-pack", amount = 1}
    }
  },
  {
    type = "recipe",
    name = "nullius-geology-pack-2",
	  localised_name = {"", {"item-name.nullius-geology-pack"}, " ", tostring(2)},
	  hide_from_signal_gui = false,
    icons = {
      {
        icon = "__base__/graphics/icons/utility-science-pack.png",
        icon_size = 64,
        
      },
      {
		icon = "__angelsrefininggraphics__/graphics/icons/iron-pebbles.png",
		icon_size = 32,
        scale = 0.55,
        shift = {0, 6},
        tint = {r=0.85, g=0.85, b=0.7, a=0.85}
      }
    },
    show_amount_in_title = false,
    always_show_products = true,
    always_show_made_in = true,
    enabled = false,
    category = "small-crafting",
    subgroup = "research-pack-2",
    energy_required = 8,
    ingredients = {
      {type = "item", name = "nullius-crushed-iron-ore", amount = 1},
      {type = "item", name = "nullius-crushed-bauxite", amount = 1},
      {type = "item", name = "nullius-crushed-limestone", amount = 1},
      {type = "item", name = "nullius-sand", amount = 1},
      {type = "item", name = "nullius-mineral-dust", amount = 4}
    },
    results = {
      {type = "item", name = "nullius-geology-pack", amount = 1}
    }
  },
  {
    type = "recipe",
    name = "nullius-boxed-geology-pack",
    show_amount_in_title = false,
    always_show_products = true,
    always_show_made_in = true,
    hide_from_signal_gui = false,
    enabled = false,
    category = "large-assembly",
    subgroup = "boxed-science",
    energy_required = 40,
    ingredients = {
      {type = "item", name = "nullius-box-crushed-iron-ore", amount = 1},
      {type = "item", name = "nullius-box-crushed-bauxite", amount = 1},
      {type = "item", name = "nullius-box-crushed-limestone", amount = 1},
      {type = "item", name = "nullius-box-sand", amount = 1},
      {type = "item", name = "nullius-box-mineral-dust", amount = 4}
    },
    results = {
      {type = "item", name = "nullius-box-geology-pack", amount = 1}
    }
  },

  {
    type = "tool",
    name = "nullius-mechanical-pack",
    order = "nullius-d",
    icons = {
      {
        icon = "__base__/graphics/icons/automation-science-pack.png",
        icon_size = 64,
        
      },
      {
        icon = "__base__/graphics/icons/iron-gear-wheel.png",
        icon_size = 64,
        
        scale = 0.22,
        shift = {1, 6},
        tint = {r=0.9, g=1, b=1, a=0.8}
      }
    },
    subgroup = "research-pack",
    stack_size = 200,
    durability = 1,
    durability_description_key = "description.science-pack-remaining-amount-key",
    durability_description_value = "description.science-pack-remaining-amount-value"
  },
  {
    type = "recipe",
    name = "nullius-mechanical-pack",
    localised_name = {"", {"item-name.nullius-mechanical-pack"}, " ", tostring(1)},
    enabled = false,
    always_show_made_in = true,
    show_amount_in_title = false,
    always_show_products = true,
    category = "medium-crafting",
    order = "nullius-db",
    energy_required = 15,
    ingredients = {
      {type = "item", name = "nullius-motor-1", amount = 1},
      {type = "item", name = "nullius-iron-gear", amount = 3}
    },
    results = {
      {type = "item", name = "nullius-mechanical-pack", amount = 1}
    }
  },
  {
    type = "recipe",
    name = "nullius-boxed-mechanical-pack-1",
    localised_name = {"", {"item-name.nullius-box", {"item-name.nullius-mechanical-pack"}}, " ", tostring(1)},
    enabled = false,
    always_show_made_in = true,
    show_amount_in_title = false,
    always_show_products = true,
    hide_from_signal_gui = false,
    category = "large-assembly",
    subgroup = "boxed-science",
    order = "nullius-db",
    energy_required = 75,
    ingredients = {
      {type = "item", name = "nullius-box-motor-1", amount = 1},
      {type = "item", name = "nullius-box-iron-gear", amount = 3}
    },
    results = {
      {type = "item", name = "nullius-box-mechanical-pack", amount = 1}
    }
  },
  {
    type = "recipe",
    name = "nullius-mechanical-pack-2",
    localised_name = {"", {"item-name.nullius-mechanical-pack"}, " ", tostring(2)},
    hide_from_signal_gui = false,
    icons = {
      {
        icon = "__base__/graphics/icons/automation-science-pack.png",
        icon_size = 64,
        
      },
      {
        icon = "__angelssmeltinggraphics__/graphics/icons/wire-silver.png",
        icon_size = 32,
        scale = 0.48,
        shift = {0, 6},
        tint = {r=0.8, g=0.9, b=0.9, a=0.95}
      }
    },
    enabled = false,
    always_show_made_in = true,
    show_amount_in_title = false,
    always_show_products = true,
    category = "medium-crafting",
    subgroup = "research-pack-2",
    order = "nullius-dc",
    energy_required = 60,
    ingredients = {
      {type = "item", name = "pump", amount = 1},
      {type = "item", name = "nullius-steel-cable", amount = 3}
    },
    results = {
      {type = "item", name = "nullius-mechanical-pack", amount = 25}
    }
  },
  {
    type = "recipe",
    name = "nullius-boxed-mechanical-pack-2",
    localised_name = {"", {"item-name.nullius-box", {"item-name.nullius-mechanical-pack"}}, " ", tostring(2)},
    hide_from_signal_gui = false,
    icons = {
      {
        icon = ICONPATH .. "crate.png",
        icon_size = 64
      },
      {
        icon = "__base__/graphics/icons/automation-science-pack.png",
        icon_size = 64,
        
        scale = 0.45
      },
      {
        icon = "__angelssmeltinggraphics__/graphics/icons/wire-silver.png",
        icon_size = 32,
        scale = 0.44,
        shift = {0, 5.4},
        tint = {r=0.8, g=0.9, b=0.9, a=0.95}
      }
    },
    enabled = false,
    always_show_made_in = true,
    show_amount_in_title = false,
    always_show_products = true,
    category = "large-assembly",
    subgroup = "boxed-science",
    order = "nullius-dc",
    energy_required = 300,
    ingredients = {
      {type = "item", name = "nullius-box-pump-3", amount = 1},
      {type = "item", name = "nullius-box-steel-cable", amount = 3}
    },
    results = {
      {type = "item", name = "nullius-box-mechanical-pack", amount = 25}
    }
  },

  {
    type = "tool",
    name = "nullius-electrical-pack",
    order = "nullius-e",
    icons = {
      {
        icon = "__base__/graphics/icons/production-science-pack.png",
        icon_size = 64,
        
      },
      {
        icon = "__base__/graphics/icons/processing-unit.png",
        icon_size = 64,
        
        scale = 0.18,
        shift = {0, 6},
        tint = {r=1, g=1, b=1, a=0.5}
      }
    },
    subgroup = "research-pack",
    stack_size = 200,
    durability = 1,
    durability_description_key = "description.science-pack-remaining-amount-key",
    durability_description_value = "description.science-pack-remaining-amount-value"
  },
  {
    type = "recipe",
    name = "nullius-electrical-pack",
    localised_name = {"", {"item-name.nullius-electrical-pack"}, " ", tostring(1)},
    enabled = false,
    always_show_made_in = true,
    show_amount_in_title = false,
    always_show_products = true,
    category = "small-crafting",
    energy_required = 12,
    ingredients = {
      {type = "item", name = "decider-combinator", amount = 1},
      {type = "item", name = "small-lamp", amount = 1},
      {type = "item", name = "copper-cable", amount = 2},
      {type = "item", name = "nullius-capacitor", amount = 1}
    },
    results = {
      {type = "item", name = "nullius-electrical-pack", amount = 1}
    }
  },
  {
    type = "recipe",
    name = "nullius-boxed-electrical-pack",
    localised_name = {"", {"item-name.nullius-box", {"item-name.nullius-electrical-pack"}}, " ", tostring(1)},
    enabled = false,
    always_show_made_in = true,
    show_amount_in_title = false,
    always_show_products = true,
    hide_from_signal_gui = false,
    category = "large-assembly",
    subgroup = "boxed-science",
    energy_required = 60,
    ingredients = {
      {type = "item", name = "nullius-box-logic-circuit", amount = 1},
      {type = "item", name = "nullius-box-lamp-1", amount = 1},
      {type = "item", name = "nullius-box-insulated-wire", amount = 2},
      {type = "item", name = "nullius-box-capacitor", amount = 1}
    },
    results = {
      {type = "item", name = "nullius-box-electrical-pack", amount = 1}
    }
  },
  {
    type = "recipe",
    name = "nullius-electrical-pack-2",
    localised_name = {"", {"item-name.nullius-electrical-pack"}, " ", tostring(2)},
    hide_from_signal_gui = false,
    icons = {
      {
        icon = "__base__/graphics/icons/production-science-pack.png",
        icon_size = 64,
        
      },
      {
        icon = "__base__/graphics/icons/advanced-circuit.png",
        icon_size = 64,
        
        scale = 0.18,
        shift = {0, 6},
        tint = {r=1, g=1, b=1, a=0.8}
      }
    },
    enabled = false,
    always_show_made_in = true,
    show_amount_in_title = false,
    always_show_products = true,
    category = "tiny-crafting",
    subgroup = "research-pack-2",
    order = "nullius-ed",
    energy_required = 160,
    ingredients = {
      {type = "item", name = "nullius-processor-2", amount = 1},
      {type = "item", name = "nullius-sensor-2", amount = 1},
      {type = "item", name = "nullius-battery-2", amount = 1}
    },
	  results = {
      {type = "item", name = "nullius-electrical-pack", amount = 50}
    }
  },
  {
    type = "recipe",
    name = "nullius-boxed-electrical-pack-2",
    localised_name = {"", {"item-name.nullius-box", {"item-name.nullius-electrical-pack"}}, " ", tostring(2)},
    hide_from_signal_gui = false,
    icons = {
      {
        icon = ICONPATH .. "crate.png",
        icon_size = 64
      },
      {
        icon = "__base__/graphics/icons/production-science-pack.png",
        icon_size = 64,
        
		scale = 0.45
      },
      {
        icon = "__base__/graphics/icons/advanced-circuit.png",
        icon_size = 64,
        
        scale = 0.162,
        shift = {0, 5.4},
        tint = {r=1, g=1, b=1, a=0.8}
      }
    },
    enabled = false,
    always_show_made_in = true,
    show_amount_in_title = false,
    always_show_products = true,
    category = "tiny-assembly",
    subgroup = "boxed-science",
    order = "nullius-ed",
    energy_required = 800,
    ingredients = {
      {type = "item", name = "nullius-box-processor-2", amount = 1},
      {type = "item", name = "nullius-box-sensor-2", amount = 1},
      {type = "item", name = "nullius-box-battery-2", amount = 1}
    },
	  results = {
      {type = "item", name = "nullius-box-electrical-pack", amount = 50}
    }
  },

  {
    type = "tool",
    name = "nullius-physics-pack",
    icons = {
      {
        icon = "__base__/graphics/icons/space-science-pack.png",
        icon_size = 64,
        
      },
      {
        icon = "__base__/graphics/icons/tooltips/tooltip-category-nuclear.png",
        icon_size = 40,
        scale = 0.42,
        shift = {0, 6},
        tint = {r=0.6, g=0.3, b=0.2, a=1}
      }
    },
    subgroup = "research-pack",
    order = "nullius-g",
    stack_size = 200,
    durability = 1,
    durability_description_key = "description.science-pack-remaining-amount-key",
    durability_description_value = "description.science-pack-remaining-amount-value"
  },
  {
    type = "recipe",
    name = "nullius-physics-pack",
    localised_name = {"item-name.nullius-physics-pack"},
    enabled = false,
    category = "huge-assembly",
    subgroup = "research-pack",
    order = "nullius-g",
    always_show_made_in = true,
    show_amount_in_title = false,
    always_show_products = true,
    energy_required = 900,
    ingredients = {
      {type = "item", name = "nullius-stirling-engine-2", amount = 1},
      {type = "item", name = "nullius-nanofabricator-1", amount = 1},
      {type = "item", name = "nullius-box-underground-belt-3", amount = 1},
      {type = "item", name = "nullius-lab-2", amount = 1},
      {type = "item", name = "nullius-combustion-chamber-3", amount = 1},
      {type = "item", name = "nullius-substation-2", amount = 1},
      {type = "item", name = "nullius-drone-launcher-1", amount = 1},
      {type = "item", name = "nullius-box-missile-1", amount = 3}
    },
    results = {
      {type = "item", name = "nullius-box-physics-pack", amount = 25}
    }
  },

  {
    type = "tool",
    name = "nullius-astronomy-pack",
    icons = {
      {
        icon = "__base__/graphics/icons/military-science-pack.png",
        icon_size = 64,
        
        tint = {0.75, 0.72, 0.78}
      }
    },
    subgroup = "research-pack",
    order = "nullius-h",
    stack_size = 200,
    durability = 1,
    durability_description_key = "description.science-pack-remaining-amount-key",
    durability_description_value = "description.science-pack-remaining-amount-value"
  },

  {
    type = "item",
    name = "nullius-crushed-copper-ore",
    icon = "__angelsrefininggraphics__/graphics/icons/copper-pebbles.png",
    icon_size = 32,
    subgroup = "copper",
    order = "nullius-c",
    stack_size = 50
  },
  {
    type = "recipe",
    name = "nullius-crushed-copper-ore",
    enabled = false,
    category = "ore-crushing",
    energy_required = 4,
    ingredients = {{type = "item", name = "copper-ore", amount = 4}},
    results = {
      {type="item", name="nullius-crushed-copper-ore", amount=3},
      {type="item", name="stone", amount=1}
    },
    main_product = "nullius-crushed-copper-ore"
  },
  {
    type = "recipe",
    name = "nullius-boxed-crushed-copper-ore",
    enabled = false,
    hide_from_signal_gui = false,
    category = "ore-crushing",
    subgroup = "boxed-copper",
    energy_required = 20,
    ingredients = {{type = "item", name = "nullius-box-copper-ore", amount = 4}},
    results = {
      {type="item", name="nullius-box-crushed-copper-ore", amount=3},
      {type="item", name="nullius-box-stone", amount=1}
    },
    main_product = "nullius-box-crushed-copper-ore"
  },
  {
    type = "recipe",
    name = "nullius-copper-solution",
    enabled = false,
    icon_size = 32,
    category = "ore-flotation",
    subgroup = "copper",
    order = "nullius-d",
    energy_required = 15,
    ingredients = {
      {type="item", name="nullius-crushed-copper-ore", amount=5},
      {type="fluid", name="nullius-acid-sulfuric", amount=25},
      {type="fluid", name="nullius-solvent", amount=15}
    },
    results = {
      {type="fluid", name="nullius-copper-solution", amount=40},
      {type="fluid", name="nullius-sludge", amount=20}
    },
    main_product = "nullius-copper-solution"
  },
  {
    type = "recipe",
    name = "nullius-boxed-copper-solution",
    localised_name = {"recipe-name.nullius-boxed", {"fluid-name.nullius-copper-solution"}},
    icons = {
      {
        icon = ICONPATH .. "crate.png",
        icon_size = 64
      },
      data.raw.fluid["nullius-copper-solution"].icons[2],
      data.raw.fluid["nullius-copper-solution"].icons[3],
      data.raw.fluid["nullius-copper-solution"].icons[4]
    },
    enabled = false,
    icon_size = 32,
    category = "ore-flotation",
    subgroup = "boxed-copper",
    order = "nullius-pd",
    energy_required = 15,
    ingredients = {
      {type="item", name="nullius-box-crushed-copper-ore", amount=1},
      {type="fluid", name="nullius-acid-sulfuric", amount=25},
      {type="fluid", name="nullius-solvent", amount=15}
    },
    results = {
      {type="fluid", name="nullius-copper-solution", amount=40},
      {type="fluid", name="nullius-sludge", amount=20}
    },
    main_product = "nullius-copper-solution"
  },
  {
    type = "recipe",
    name = "nullius-copper-ingot",
    enabled = false,
    category = "nullius-electrolysis",
    energy_required = 1,
    ingredients = {
      {type="fluid", name="nullius-copper-solution", amount=20}
    },
    results = {
      {type="item", name="nullius-copper-ingot", amount=3},
      {type="fluid", name="nullius-wastewater", amount=10, fluidbox_index=1}
    },
    main_product = "nullius-copper-ingot"
  },
  {
    type = "recipe",
    name = "nullius-boxed-copper-ingot",
    enabled = false,
    category = "nullius-electrolysis",
    subgroup = "boxed-copper",
    energy_required = 5,
    ingredients = {
      {type="fluid", name="nullius-copper-solution", amount=100}
    },
    results = {
      {type="item", name="nullius-box-copper-ingot", amount=3},
      {type="fluid", name="nullius-wastewater", amount=50, fluidbox_index=1}
    },
    main_product = "nullius-box-copper-ingot"
  },
  {
    type = "recipe",
    name = "nullius-copper-wire",
    enabled = false,
    show_amount_in_title = false,
    always_show_products = true,
    category = "machine-casting",
    energy_required = 1,
    ingredients = {
      {type="item", name="nullius-copper-ingot", amount=1},
      {type="fluid", name="nullius-lubricant", amount=1}
    },
    results = {
      {type = "item", name = "nullius-copper-wire", amount = 2}
    }
  },
  {
    type = "recipe",
    name = "nullius-boxed-copper-wire",
    enabled = false,
    show_amount_in_title = false,
    always_show_products = true,
    category = "machine-casting",
    subgroup = "boxed-copper",
    energy_required = 5,
    ingredients = {
      {type="item", name="nullius-box-copper-ingot", amount=1},
      {type="fluid", name="nullius-lubricant", amount=5}
    },
    results = {
      {type = "item", name = "nullius-box-copper-wire", amount = 2}
    }
  },
  {
    type = "recipe",
    name = "nullius-copper-sheet",
    enabled = false,
    show_amount_in_title = false,
    always_show_products = true,
    category = "machine-casting",
    energy_required = 1,
    ingredients = {
      {type="item", name="nullius-copper-ingot", amount=1},
      {type="fluid", name="nullius-acid-sulfuric", amount=1}
    },
    results = {
      {type = "item", name = "nullius-copper-sheet", amount = 1}
    }
  },
  {
    type = "recipe",
    name = "nullius-boxed-copper-sheet",
    enabled = false,
    show_amount_in_title = false,
    always_show_products = true,
    category = "machine-casting",
    subgroup = "boxed-copper",
    energy_required = 5,
    ingredients = {
      {type="item", name="nullius-box-copper-ingot", amount=1},
      {type="fluid", name="nullius-acid-sulfuric", amount=5}
    },
    results = {
      {type = "item", name = "nullius-box-copper-sheet", amount = 1}
    }
  },

  {
    type = "item",
    name = "nullius-crushed-iron-ore",
    icon = "__angelsrefininggraphics__/graphics/icons/iron-pebbles.png",
    icon_size = 32,
    subgroup = "iron-ingot",
    order = "nullius-c",
    stack_size = 50
  },
  {
    type = "recipe",
    name = "nullius-crushed-iron-ore",
    enabled = false,
    category = "ore-crushing",
    energy_required = 5,
    ingredients = {{type="item", name="iron-ore", amount = 6}},
    results = {
      {type="item", name="nullius-crushed-iron-ore", amount=5},
      {type="item", name="stone", amount=1}
    },
    main_product = "nullius-crushed-iron-ore"
  },
  {
    type = "recipe",
    name = "nullius-boxed-crushed-iron-ore",
    enabled = false,
    category = "ore-crushing",
    subgroup = "boxed-iron",
    energy_required = 25,
    ingredients = {{type="item", name="nullius-box-iron-ore", amount = 6}},
    results = {
      {type="item", name="nullius-box-crushed-iron-ore", amount=5},
      {type="item", name="nullius-box-stone", amount=1}
    },
    main_product = "nullius-box-crushed-iron-ore"
  },
  {
    type = "item",
    name = "nullius-iron-oxide",
    icons = {{
      icon = "__angelssmeltinggraphics__/graphics/icons/solid-iron-hydroxide.png",
      icon_size = 32,
      tint = {0.77, 0.54, 0.48}
    }},
    subgroup = "iron-ingot",
    order = "nullius-d",
    stack_size = 100
  },
  {
    type = "recipe",
    name = "nullius-iron-oxide",
    enabled = false,
    category = "ore-flotation",
    energy_required = 4,
    ingredients = {
      {type="item", name="nullius-crushed-iron-ore", amount=6},
      {type="fluid", name="nullius-caustic-solution", amount=30, fluidbox_index=1}
    },
    results = {
      {type="item", name="nullius-iron-oxide", amount=5},
      {type="fluid", name="nullius-sludge", amount=15, fluidbox_index=1}
    },
    main_product = "nullius-iron-oxide"
  },
  {
    type = "recipe",
    name = "nullius-boxed-iron-oxide",
    enabled = false,
    category = "ore-flotation",
    subgroup = "boxed-iron",
    energy_required = 20,
    ingredients = {
      {type="item", name="nullius-box-crushed-iron-ore", amount=6},
      {type="fluid", name="nullius-caustic-solution", amount=150, fluidbox_index=1}
    },
    results = {
      {type="item", name="nullius-box-iron-oxide", amount=5},
      {type="fluid", name="nullius-sludge", amount=75, fluidbox_index=1}
    },
    main_product = "nullius-box-iron-oxide"
  },
  {
    type = "recipe",
    name = "nullius-iron-oxidation",
	  localised_name = {"recipe-name.nullius-oxidation", {"item-name.nullius-iron"}},
	  icons = {
      {
	      icon = "__angelssmeltinggraphics__/graphics/icons/solid-iron-hydroxide.png",
        icon_size = 32,
        tint = {0.77, 0.54, 0.48}
      },
      {
	      icon = "__angelssmeltinggraphics__/graphics/icons/ingot-iron.png",
        icon_size = 64,
		    scale = 0.3,
        shift = {-7, -7}
	  }
    },
    enabled = false,
	  no_productivity = true,
	  show_amount_in_title = false,
    always_show_products = true,
    hide_from_signal_gui = false,
    category = "ore-flotation",
	  order = "nullius-o",
    energy_required = 3,
    ingredients = {
      {type="item", name="nullius-iron-wire", amount=11},
      {type="fluid", name="nullius-water", amount=20},
      {type="fluid", name="nullius-oxygen", amount=40}
    },
    results = {
      {type = "item", name = "nullius-iron-oxide", amount = 2}
    }
  },
  {
    type = "recipe",
    name = "nullius-boxed-iron-oxidation",
	  localised_name = {"recipe-name.nullius-boxed",
	    {"recipe-name.nullius-oxidation", {"item-name.nullius-iron"}}},
	  icons = {
      {
        icon = ICONPATH .. "crate.png",
        icon_size = 64
      },
      {
	      icon = "__angelssmeltinggraphics__/graphics/icons/solid-iron-hydroxide.png",
        icon_size = 32,
        tint = {0.77, 0.54, 0.48},
		    scale = 0.9
      },
      {
	      icon = "__angelssmeltinggraphics__/graphics/icons/ingot-iron.png",
        icon_size = 64, 
		    scale = 0.27,
        shift = {-6, -6}
	  }
    },
    enabled = false,
	  no_productivity = true,
	  show_amount_in_title = false,
    always_show_products = true,
    category = "ore-flotation",
	  subgroup = "boxed-iron",
	  order = "nullius-o",
    energy_required = 15,
    ingredients = {
      {type="item", name="nullius-box-iron-wire", amount=11},
      {type="fluid", name="nullius-water", amount=100},
      {type="fluid", name="nullius-oxygen", amount=200}
    },
    results = {
      {type = "item", name = "nullius-box-iron-oxide", amount = 2}
    }
  },

  {
    type = "item",
    name = "nullius-crushed-limestone",
    icon = "__angelsrefininggraphics__/graphics/icons/solid-limestone.png",
    icon_size = 32,
    subgroup = "calcium-product",
    order = "nullius-d",
    stack_size = 50
  },
  {
    type = "recipe",
    name = "nullius-crushed-limestone",
    localised_name = {"", {"item-name.nullius-crushed-limestone"}, " ", tostring(1)},
    enabled = false,
    icon_size = 32,
    category = "ore-crushing",
    order = "nullius-db",
    energy_required = 4,
    ingredients = {{type="item", name="nullius-limestone", amount = 8}},
    results = {
      {type="item", name="nullius-crushed-limestone", amount=5},
      {type="item", name="stone", amount=3}
    },
    main_product = "nullius-crushed-limestone"
  },
  {
    type = "recipe",
    name = "nullius-boxed-crushed-limestone-1",
    localised_name = {"", {"item-name.nullius-box", {"item-name.nullius-crushed-limestone"}}, " ", tostring(1)},
    enabled = false,
    icon_size = 32,
    category = "ore-crushing",
    subgroup = "boxed-calcium",
    order = "nullius-cb",
    energy_required = 20,
    ingredients = {{type="item", name="nullius-box-limestone", amount = 8}},
    results = {
      {type="item", name="nullius-box-crushed-limestone", amount=5},
      {type="item", name="nullius-box-stone", amount=3}
    },
    main_product = "nullius-box-crushed-limestone"
  },
  {
    type = "recipe",
    name = "nullius-crushed-limestone-2",
    localised_name = {"", {"item-name.nullius-crushed-limestone"}, " ", tostring(2)},
    hide_from_signal_gui = false,
    icons = {
      {
        icon = "__angelsrefininggraphics__/graphics/icons/solid-limestone.png",
        icon_size = 32
      },
      {
        icon = "__angelsrefininggraphics__/graphics/icons/crushed/crushed-4.png",
        icon_size = 64,
        tint = {1, 1, 0.8},
        scale = 0.2,
        shift = {10, 10}
      }
    },
    enabled = false,
    icon_size = 32,
    category = "ore-crushing",
    order = "nullius-dc",
    energy_required = 7,
    ingredients = {{type="item", name="nullius-limestone", amount = 15}},
    results = {
      {type="item", name="nullius-crushed-limestone", amount=10},
      {type="item", name="nullius-gypsum", amount=1},
      {type="item", name="stone", amount=5}
    },
    main_product = "nullius-crushed-limestone"
  },
  {
    type = "recipe",
    name = "nullius-boxed-crushed-limestone-2",
    localised_name = {"", {"item-name.nullius-box", {"item-name.nullius-crushed-limestone"}}, " ", tostring(2)},
    icons = {
      {
        icon = ICONPATH .. "crate.png",
        icon_size = 64
      },
      {
        icon = "__angelsrefininggraphics__/graphics/icons/solid-limestone.png",
        icon_size = 32,
        scale = 0.9
      },
      {
        icon = "__angelsrefininggraphics__/graphics/icons/crushed/crushed-4.png",
        icon_size = 64,
        tint = {1, 1, 0.8},
        scale = 0.18,
        shift = {9, 9}
      }
    },
    enabled = false,
    icon_size = 32,
    category = "ore-crushing",
    subgroup = "boxed-calcium",
    order = "nullius-cc",
    energy_required = 35,
    ingredients = {{type="item", name="nullius-box-limestone", amount = 15}},
    results = {
      {type="item", name="nullius-box-crushed-limestone", amount=10},
      {type="item", name="nullius-box-gypsum", amount=1},
      {type="item", name="nullius-box-stone", amount=5}
    },
    main_product = "nullius-box-crushed-limestone"
  },

  {
    type = "item",
    name = "nullius-crushed-bauxite",
    icons = {
      {
        icon_size = 64,
        icon = "__angelsrefininggraphics__/graphics/icons/crushed/crushed-6.png",
        tint = {0.867, 0.820, 0.609}
      }
    },
    subgroup = "aluminum-ingot",
    order = "nullius-c",
    stack_size = 50
  },
  {
    type = "recipe",
    name = "nullius-crushed-bauxite",
    enabled = false,
    category = "ore-crushing",
	  subgroup = "alumina",
    energy_required = 5,
    ingredients = {{type="item", name="nullius-bauxite", amount = 7}},
    results = {
      {type="item", name="nullius-crushed-bauxite", amount=5},
      {type="item", name="nullius-crushed-iron-ore", amount=1},
      {type="item", name="nullius-sand", amount=1}
    },
    main_product = "nullius-crushed-bauxite"
  },
  {
    type = "recipe",
    name = "nullius-boxed-crushed-bauxite",
    enabled = false,
    category = "ore-crushing",
    subgroup = "boxed-aluminum-1",
    order = "nullius-b",
    energy_required = 25,
    ingredients = {{type="item", name="nullius-box-bauxite", amount = 7}},
    results = {
      {type="item", name="nullius-box-crushed-bauxite", amount=5},
      {type="item", name="nullius-box-crushed-iron-ore", amount=1},
      {type="item", name="nullius-box-sand", amount=1}
    },
    main_product = "nullius-box-crushed-bauxite"
  },

  {
    type = "item",
    name = "nullius-sand",
    icon = ICONPATH .. "sand.png",
    icon_size = 64,
    subgroup = "silicon-product",
    order = "nullius-c",
    stack_size = 100
  },
  {
    type = "recipe",
    name = "nullius-sand",
    localised_name = {"item-name.nullius-sand"},
    enabled = false,
    category = "hand-crushing",
    always_show_made_in = true,
    allow_decomposition = false,
    hide_from_signal_gui = false,
    energy_required = 4,
    ingredients = {{type="item", name="nullius-sandstone", amount = 5}},
    results = {
      {type="item", name="nullius-sand", amount=4},
      {type="item", name="stone", amount=1}
    },
    main_product = "nullius-sand"
  },
  {
    type = "recipe",
    name = "nullius-boxed-crushed-sandstone",
    enabled = false,
    category = "ore-crushing",
    subgroup = "boxed-silicon",
    always_show_made_in = true,
    allow_decomposition = false,
    energy_required = 20,
    ingredients = {{type="item", name="nullius-box-sandstone", amount = 5}},
    results = {
      {type="item", name="nullius-box-sand", amount=4},
      {type="item", name="nullius-box-stone", amount=1}
    },
    main_product = "nullius-box-sand"
  },

  {
    type = "recipe",
    name = "nullius-gravel",
    localised_name = {"item-name.nullius-gravel"},
    enabled = false,
    icon_size = 32,
    category = "hand-crushing",
    always_show_made_in = true,
    show_amount_in_title = false,
    always_show_products = true,
    allow_decomposition = false,
    hide_from_signal_gui = false,
    energy_required = 0.5,
    ingredients = {{type="item", name="stone", amount = 1}},
    results = {
      {type = "item", name = "nullius-gravel", amount = 1}
    }
  },
  {
    type = "recipe",
    name = "nullius-boxed-gravel",
    enabled = false,
    icon_size = 32,
    category = "ore-crushing",
    subgroup = "boxed-silicon",
    always_show_made_in = true,
    show_amount_in_title = false,
    always_show_products = true,
    allow_decomposition = false,
    energy_required = 2.5,
    ingredients = {{type="item", name="nullius-box-stone", amount = 1}},
    results = {
      {type = "item", name = "nullius-box-gravel", amount = 1}
    }
  },

  {
    type = "item",
    name = "nullius-mineral-dust",
    icon = "__angelssmeltinggraphics__/graphics/icons/powder-tungsten.png",
    icon_size = 64,
    
    subgroup = "masonry-material",
    order = "nullius-m",
    stack_size = 100
  },
  {
    type = "recipe",
    name = "nullius-mineral-dust",
    localised_name = {"recipe-name.nullius-gravel-disposal"},
    show_amount_in_title = false,
    always_show_products = true,
    hide_from_signal_gui = false,
    enabled = false,
    icon_size = 32,
    category = "ore-crushing",
    order = "nullius-nb",
    energy_required = 3,
    ingredients = {{type="item", name="nullius-gravel", amount = 6}},
    results = {
      {type = "item", name = "nullius-mineral-dust", amount = 5}
    }
  },
  {
    type = "recipe",
    name = "nullius-boxed-mineral-dust",
    show_amount_in_title = false,
    always_show_products = true,
    enabled = false,
    icon_size = 32,
    category = "ore-crushing",
    subgroup = "boxed-silicon",
    order = "nullius-nb",
    energy_required = 15,
    ingredients = {{type="item", name="nullius-box-gravel", amount = 6}},
    results = {
      {type = "item", name = "nullius-box-mineral-dust", amount = 5}
    }
  },
  {
    type = "recipe",
    name = "nullius-slag-reprocessing",
    localised_name = {"recipe-name.nullius-slag-reprocessing"},
    icons = {
      {
        icon = "__angelssmeltinggraphics__/graphics/icons/powder-tungsten.png",
        icon_size = 64,
        
      },
      {
        icon = ICONPATH .. "sand.png",
        icon_size = 64,
        scale = 0.3,
        shift = {7, 7}
      }
    },
    show_amount_in_title = false,
    always_show_products = true,
    hide_from_signal_gui = false,
    enabled = false,
    icon_size = 32,
    category = "ore-crushing",
    subgroup = "masonry-material",
    order = "nullius-nc",
    energy_required = 6,
    ingredients = {{type="item", name="nullius-gravel", amount = 8}},
    results = {
      {type="item", name="nullius-sand", amount=3},
      {type="item", name="nullius-mineral-dust", amount=6}
    },
    main_product = "nullius-sand"
  },
  {
    type = "recipe",
    name = "nullius-boxed-slag-reprocessing",
    localised_name = {"recipe-name.nullius-boxed", {"recipe-name.nullius-slag-reprocessing"}},
    icons = {
      {
        icon = ICONPATH .. "crate.png",
        icon_size = 64
      },
      {
        icon = "__angelssmeltinggraphics__/graphics/icons/powder-tungsten.png",
        icon_size = 64,
        
        scale = 0.45
      },
      {
        icon = ICONPATH .. "sand.png",
        icon_size = 64,
        scale = 0.27,
        shift = {6, 6}
      }
    },
    show_amount_in_title = false,
    always_show_products = true,
    enabled = false,
    icon_size = 32,
    category = "ore-crushing",
    subgroup = "boxed-silicon",
    order = "nullius-nc",
    energy_required = 30,
    ingredients = {{type="item", name="nullius-box-gravel", amount = 8}},
    results = {
      {type="item", name="nullius-box-sand", amount=3},
      {type="item", name="nullius-box-mineral-dust", amount=6}
    },
    main_product = "nullius-box-sand"
  },

  {
    type = "recipe",
    name = "nullius-iron-disposal",
    localised_name = {"recipe-name.nullius-iron-disposal"},
    icons = {
      {
        icon = "__angelsrefininggraphics__/graphics/icons/stone-crushed.png",
		icon_size = 32,
        tint = {r=0.95, g=0.85, b=0.75}
      },
      {
        icon = "__angelsrefininggraphics__/graphics/icons/iron-pebbles.png",
		icon_size = 32,
        scale = 0.5,
        shift = {10, -9}
      }
    },
    show_amount_in_title = false,
    always_show_products = true,
    enabled = false,
    category = "ore-crushing",
    subgroup = "iron-product",
    order = "nullius-n",
    no_productivity = true,
    energy_required = 2,
    ingredients = {{type="item", name="nullius-crushed-iron-ore", amount = 4}},
    results = {
      {type = "item", name = "nullius-gravel", amount = 3}
    }
  },
  {
    type = "recipe",
    name = "nullius-boxed-iron-disposal",
    localised_name = {"recipe-name.nullius-boxed", {"recipe-name.nullius-iron-disposal"}},
    icons = {
      {
        icon = ICONPATH .. "crate.png",
        icon_size = 64
      },
      {
        icon = "__angelsrefininggraphics__/graphics/icons/stone-crushed.png",
		icon_size = 32,
		scale = 0.9,
        tint = {r=0.95, g=0.85, b=0.75}
      },
      {
        icon = "__angelsrefininggraphics__/graphics/icons/iron-pebbles.png",
		icon_size = 32,
        scale = 0.45,
        shift = {9, -8}
      }
    },
    show_amount_in_title = false,
    always_show_products = true,
    enabled = false,
	  no_productivity = true,
    category = "ore-crushing",
	  subgroup = "boxed-aluminum-1",
    order = "nullius-n",
    energy_required = 10,
    ingredients = {{type="item", name="nullius-box-crushed-iron-ore", amount = 4}},
    results = {
      {type = "item", name = "nullius-box-gravel", amount = 3}
    }
  },
  {
    type = "recipe",
    name = "nullius-bauxite-disposal",
    localised_name = {"recipe-name.nullius-bauxite-disposal"},
    icons = {
      {
        icon = "__angelssmeltinggraphics__/graphics/icons/powder-tungsten.png",
        icon_size = 64,
        
      },
      {
        icon = "__angelsrefininggraphics__/graphics/icons/crushed/crushed-6.png",
        icon_size = 64,
        tint = {0.867, 0.820, 0.609},
        scale = 0.25,
        shift = {10, -9}
      }
    },
    show_amount_in_title = false,
    always_show_products = true,
    hide_from_signal_gui = false,
    enabled = false,
    category = "ore-crushing",
	  subgroup = "alumina",
    order = "nullius-n",
    energy_required = 2,
    ingredients = {{type="item", name="nullius-crushed-bauxite", amount = 5}},
    results = {
      {type = "item", name = "nullius-mineral-dust", amount = 4}
    }
  },
  {
    type = "recipe",
    name = "nullius-boxed-bauxite-disposal",
    localised_name = {"recipe-name.nullius-boxed",
	    {"recipe-name.nullius-bauxite-disposal"}},
    icons = {
      {
        icon = ICONPATH .. "crate.png",
        icon_size = 64
      },
      {
        icon = "__angelssmeltinggraphics__/graphics/icons/powder-tungsten.png",
        icon_size = 64,
		    scale = 0.45
      },
      {
        icon = "__angelsrefininggraphics__/graphics/icons/crushed/crushed-6.png",
        icon_size = 64,
        tint = {0.867, 0.820, 0.609},
        scale = 0.22,
        shift = {9, -8}
      }
    },
    show_amount_in_title = false,
    always_show_products = true,
    enabled = false,
    category = "ore-crushing",
	  subgroup = "boxed-aluminum-1",
    order = "nullius-l",
    energy_required = 10,
    ingredients = {{type="item", name="nullius-box-crushed-bauxite", amount = 5}},
    results = {
      {type = "item", name = "nullius-box-mineral-dust", amount = 4}
    }
  },
  {
    type = "recipe",
    name = "nullius-rutile-disposal",
    localised_name = {"recipe-name.nullius-disposal", {"item-name.nullius-rutile"}},
    icons = {
      {
        icon = "__angelssmeltinggraphics__/graphics/icons/powder-tungsten.png",
        icon_size = 64,
        
      },
      {
        icon = "__angelssmeltinggraphics__/graphics/icons/powder-titanium.png",
        icon_size = 64,
        
        scale = 0.25,
        shift = {10, -9}
      }
    },
    show_amount_in_title = false,
    always_show_products = true,
    no_productivity = true,
    hide_from_signal_gui = false,
    enabled = false,
    category = "ore-crushing",
    subgroup = "titanium-product",
    order = "nullius-xr",
    energy_required = 5,
    ingredients = {{type="item", name="nullius-rutile", amount = 8}},
    results = {
      {type = "item", name = "nullius-mineral-dust", amount = 7}
    }
  },
  {
    type = "recipe",
    name = "nullius-boxed-rutile-disposal",
    localised_name = {"recipe-name.nullius-boxed", {"recipe-name.nullius-disposal",
	    {"item-name.nullius-rutile"}}},
    icons = {
      {
        icon = ICONPATH .. "crate.png",
        icon_size = 64
      },
      {
        icon = "__angelssmeltinggraphics__/graphics/icons/powder-tungsten.png",
        icon_size = 64,
		    scale = 0.45
      },
      {
        icon = "__angelssmeltinggraphics__/graphics/icons/powder-titanium.png",
        icon_size = 64,
        scale = 0.22,
        shift = {9, -8}
      }
    },
    show_amount_in_title = false,
    always_show_products = true,
    no_productivity = true,
    enabled = false,
    category = "ore-crushing",
    subgroup = "boxed-titanium",
    order = "nullius-xr",
    energy_required = 25,
    ingredients = {{type="item", name="nullius-box-rutile", amount = 8}},
    results = {
      {type = "item", name = "nullius-box-mineral-dust", amount = 7}
    }
  },
  {
    type = "recipe",
    name = "nullius-limestone-disposal",
    localised_name = {"recipe-name.nullius-limestone-disposal"},
    icons = {
      {
        icon = "__angelssmeltinggraphics__/graphics/icons/powder-tungsten.png",
        icon_size = 64,
        
      },
      {
        icon = "__angelsrefininggraphics__/graphics/icons/solid-limestone.png",
        icon_size = 32,
        scale = 0.5,
        shift = {10, -9}
      }
    },
    show_amount_in_title = false,
    always_show_products = true,
    hide_from_signal_gui = false,
    enabled = false,
    category = "ore-crushing",
    subgroup = "calcium-product",
    order = "nullius-m",
    energy_required = 2,
    ingredients = {{type="item", name="nullius-crushed-limestone", amount = 3}},
    results = {
      {type = "item", name = "nullius-mineral-dust", amount = 3}
    }
  },
  {
    type = "recipe",
    name = "nullius-boxed-limestone-disposal",
    localised_name = {"recipe-name.nullius-boxed", {"recipe-name.nullius-limestone-disposal"}},
    icons = {
      {
        icon = ICONPATH .. "crate.png",
        icon_size = 64
      },
      {
        icon = "__angelssmeltinggraphics__/graphics/icons/powder-tungsten.png",
        icon_size = 64,
        
        scale = 0.45
      },
      {
        icon = "__angelsrefininggraphics__/graphics/icons/solid-limestone.png",
        icon_size = 32,
        scale = 0.45,
        shift = {9, -8}
      }
    },
    show_amount_in_title = false,
    always_show_products = true,
    enabled = false,
    category = "ore-crushing",
    subgroup = "boxed-calcium",
    order = "nullius-y",
    energy_required = 10,
    ingredients = {{type="item", name="nullius-box-crushed-limestone", amount = 3}},
    results = {
      {type = "item", name = "nullius-box-mineral-dust", amount = 3}
    }
  },

  {
    type = "item",
    name = "nullius-iron-ingot",
    icon = "__angelssmeltinggraphics__/graphics/icons/ingot-iron.png",
    icon_size = 64,
    
    subgroup = "iron-ingot",
    order = "nullius-e",
    stack_size = 100
  },
  {
    type = "recipe",
    name = "nullius-iron-ingot",
    localised_name = {"recipe-name.nullius-iron-ingot-1"},
    enabled = false,
    category = "dry-smelting",
    order = "nullius-eb",
    energy_required = 8,
    ingredients = {
      {type="item", name="iron-ore", amount = 5}
    },
    results = {
      {type="item", name="nullius-iron-ingot", amount=2},
      {type="item", name="nullius-gravel", amount=1}
    },
    main_product = "nullius-iron-ingot"
  },
  {
    type = "recipe",
    name = "nullius-iron-ingot-2",
    localised_name = {"recipe-name.nullius-iron-ingot-2"},
    hide_from_signal_gui = false,
    icons = {
      {
        icon = "__angelssmeltinggraphics__/graphics/icons/ingot-iron.png",
        icon_size = 64,
        
      },
      {
        icon = "__base__/graphics/icons/coal.png",
        icon_size = 64,
        
        scale = 0.25,
        shift = {10, -10}
      }
    },
    enabled = false,
    category = "dry-smelting",
    order = "nullius-ec",
    energy_required = 18,
    ingredients = {
      {type="item", name="nullius-crushed-iron-ore", amount = 11},
      {type="item", name="nullius-graphite", amount = 1}
    },
    results = {
      {type="item", name="nullius-iron-ingot", amount=8},
      {type="item", name="nullius-gravel", amount=2}
    },
    main_product = "nullius-iron-ingot"
  },
  {
    type = "recipe",
    name = "nullius-iron-ingot-3",
    localised_name = {"recipe-name.nullius-iron-ingot-3"},
    hide_from_signal_gui = false,
    icons = {
      {
        icon = "__angelssmeltinggraphics__/graphics/icons/ingot-iron.png",
        icon_size = 64,
        
      },
      {
        icon = "__angelssmeltinggraphics__/graphics/icons/solid-iron-hydroxide.png",
        icon_size = 32,
        tint = {0.77, 0.54, 0.48},
        scale = 0.5,
        shift = {10, -10}
      }
    },
    enabled = false,
    category = "vent-smelting",
    order = "nullius-ed",
    energy_required = 20,
    ingredients = {
      {type="item", name="nullius-iron-oxide", amount = 8},
      {type="item", name="nullius-crushed-limestone", amount = 2},
      {type="item", name="nullius-graphite", amount = 1}
    },
    results = {
      {type="item", name="nullius-iron-ingot", amount=10},
      {type="item", name="nullius-gravel", amount=2},
      {type="item", name="nullius-lime", amount=1},
      {type="fluid", name="nullius-carbon-dioxide", amount=30}
    },
    main_product = "nullius-iron-ingot"
  },
  {
    type = "recipe",
    name = "nullius-boxed-iron-ingot",
    enabled = false,
    category = "bulk-smelting",
    subgroup = "boxed-iron",
    order = "nullius-ed",
    energy_required = 20,
    ingredients = {
      {type="item", name="nullius-box-iron-oxide", amount = 8},
      {type="item", name="nullius-box-crushed-limestone", amount = 2},
      {type="item", name="nullius-box-graphite", amount = 1}
    },
    results = {
      {type="item", name="nullius-box-iron-ingot", amount=10},
      {type="item", name="nullius-box-gravel", amount=2},
      {type="item", name="nullius-box-lime", amount=1},
      {type="fluid", name="nullius-carbon-dioxide", amount=150}
    },
    main_product = "nullius-box-iron-ingot"
  },

  {
    type = "recipe",
    name = "nullius-thermite",
	  localised_name = {"recipe-name.nullius-aluminothermic", {"item-name.nullius-iron-ingot"}},
	  hide_from_signal_gui = false,
    icons = {
      {
        icon = "__angelssmeltinggraphics__/graphics/icons/ingot-iron.png",
        icon_size = 64,
        
      },
      {
        icon = "__angelssmeltinggraphics__/graphics/icons/ingot-aluminium.png",
        icon_size = 64,
        
        scale = 0.25,
        shift = {10, -10}
      }
    },
    enabled = false,
    category = "machine-casting",
    order = "nullius-ee",
    energy_required = 6,
    ingredients = {
      {type="item", name="nullius-iron-oxide", amount = 17},
      {type="item", name="nullius-aluminum-ingot", amount = 12},
      {type="item", name="nullius-graphite", amount = 1}
    },
    results = {
      {type="item", name="nullius-iron-ingot", amount=21},
      {type="item", name="nullius-alumina", amount=6},
      {type="item", name="nullius-mineral-dust", amount=2}
    },
    main_product = "nullius-iron-ingot"
  },
  {
    type = "recipe",
    name = "nullius-boxed-thermite",
	  localised_name = {"recipe-name.nullius-aluminothermic",
	    {"item-name.nullius-box", {"item-name.nullius-iron-ingot"}}},
    icons = {
      {
        icon = ICONPATH .. "crate.png",
        icon_size = 64
      },
      {
        icon = "__angelssmeltinggraphics__/graphics/icons/ingot-iron.png",
        icon_size = 64,
        
		scale = 0.45
      },
      {
        icon = "__angelssmeltinggraphics__/graphics/icons/ingot-aluminium.png",
        icon_size = 64,
        
        scale = 0.22,
        shift = {9, -9}
      }
    },
    enabled = false,
    category = "machine-casting",
    subgroup = "boxed-iron",
    order = "nullius-ee",
    energy_required = 25,
    ingredients = {
      {type="item", name="nullius-box-iron-oxide", amount = 13},
      {type="item", name="nullius-box-aluminum-ingot", amount = 10},
      {type="item", name="nullius-box-graphite", amount = 1}
    },
    results = {
      {type="item", name="nullius-box-iron-ingot", amount=16},
      {type="item", name="nullius-box-alumina", amount=5},
      {type="item", name="nullius-box-mineral-dust", amount=1}
    },
    main_product = "nullius-box-iron-ingot"
  },

  {
    type = "item",
    name = "nullius-steel-ingot",
    icon = "__angelssmeltinggraphics__/graphics/icons/ingot-steel.png",
    icon_size = 64,
    
    subgroup = "iron-ingot",
    order = "nullius-f",
    stack_size = 100
  },
  {
    type = "recipe",
    name = "nullius-steel-ingot",
    localised_name = {"recipe-name.nullius-steel-ingot-1"},
    enabled = false,
    category = "machine-casting",
    energy_required = 12,
    ingredients = {
      {type="item", name="nullius-iron-ingot", amount=6},
      {type="fluid", name="nullius-oxygen", amount=60}
    },
    results = {
      {type="item", name="nullius-steel-ingot", amount=2},
      {type="item", name="nullius-gravel", amount=1},
      {type="fluid", name="nullius-carbon-dioxide", amount=25}
    },
    main_product = "nullius-steel-ingot"
  },
  {
    type = "recipe",
    name = "nullius-steel-ingot-2",
    localised_name = {"recipe-name.nullius-steel-ingot-2"},
    hide_from_signal_gui = false,
    icons = {
      {
        icon = "__angelssmeltinggraphics__/graphics/icons/ingot-steel.png",
        icon_size = 64,
        
      },
      {
        icon = "__angelssmeltinggraphics__/graphics/icons/solid-lime.png",
        icon_size = 32,
        scale = 0.5,
        shift = {10, -10}
      }
    },
    enabled = false,
    category = "wet-smelting",
    energy_required = 25,
    ingredients = {
      {type="item", name="nullius-iron-ingot", amount=13},
      {type="item", name="nullius-lime", amount=2},
      {type="fluid", name="nullius-oxygen", amount=100}
    },
    results = {
      {type="item", name="nullius-steel-ingot", amount=6},
      {type="item", name="nullius-gravel", amount=2},
      {type="item", name="nullius-crushed-limestone", amount=1}
    },
    main_product = "nullius-steel-ingot"
  },
  {
    type = "recipe",
    name = "nullius-boxed-steel-ingot-1",
    localised_name = {"", {"item-name.nullius-box", {"item-name.nullius-steel-ingot"}}, " ", tostring(1)},
    enabled = false,
    category = "bulk-smelting",
    subgroup = "boxed-steel",
    order = "nullius-ab",
    energy_required = 25,
    ingredients = {
      {type="item", name="nullius-box-iron-ingot", amount=13},
      {type="item", name="nullius-box-lime", amount=2},
      {type="fluid", name="nullius-oxygen", amount=500}
    },
    results = {
      {type="item", name="nullius-box-steel-ingot", amount=6},
      {type="item", name="nullius-box-gravel", amount=2},
      {type="item", name="nullius-box-crushed-limestone", amount=1}
    },
    main_product = "nullius-box-steel-ingot"
  },
  {
    type = "recipe",
    name = "nullius-steel-ingot-3",
    localised_name = {"", {"item-name.nullius-steel-ingot"}, " ", tostring(3)},
    hide_from_signal_gui = false,
    icons = {
      {
        icon = "__angelssmeltinggraphics__/graphics/icons/ingot-steel.png",
        icon_size = 64,
        
      },
      {
        icon = ICONPATH .. "calcium.png",
        icon_size = 64,
        scale = 0.25,
        shift = {9, -11}
      }
    },
    enabled = false,
    category = "wet-smelting",
    energy_required = 60,
    ingredients = {
      {type="item", name="nullius-iron-ingot", amount=36},
      {type="item", name="nullius-calcium", amount=5},
      {type="item", name="nullius-boron", amount=1},
      {type="fluid", name="nullius-oxygen", amount=300}
    },
    results = {
      {type="item", name="nullius-steel-ingot", amount=25},
      {type="item", name="nullius-gravel", amount=5},
      {type="item", name="nullius-crushed-limestone", amount=4}
    },
    main_product = "nullius-steel-ingot"
  },
  {
    type = "recipe",
    name = "nullius-boxed-steel-ingot-2",
    localised_name = {"", {"item-name.nullius-box", {"item-name.nullius-steel-ingot"}}, " ", tostring(2)},
    icons = {
      {
        icon = ICONPATH .. "crate.png",
        icon_size = 64
      },
      {
        icon = "__angelssmeltinggraphics__/graphics/icons/ingot-steel.png",
        icon_size = 64,
        
        scale = 0.45
      },
      {
        icon = ICONPATH .. "calcium.png",
        icon_size = 64,
        scale = 0.2,
        shift = {8, -10}
      }
    },
    enabled = false,
    category = "bulk-smelting",
    subgroup = "boxed-steel",
    order = "nullius-ac",
    energy_required = 60,
    ingredients = {
      {type="item", name="nullius-box-iron-ingot", amount=36},
      {type="item", name="nullius-box-calcium", amount=5},
      {type="item", name="nullius-box-boron", amount=1},
      {type="fluid", name="nullius-oxygen", amount=1500}
    },
    results = {
      {type="item", name="nullius-box-steel-ingot", amount=25},
      {type="item", name="nullius-box-gravel", amount=5},
      {type="item", name="nullius-box-crushed-limestone", amount=4}
    },
    main_product = "nullius-box-steel-ingot"
  },
  {
    type = "recipe",
    name = "nullius-steel-ingot-hydrogen",
    localised_name = {"recipe-name.nullius-hydrogen", {"item-name.nullius-box", {"item-name.nullius-steel-ingot"}}},
    hide_from_signal_gui = false,
    icons = {
      {
        icon = ICONPATH .. "crate.png",
        icon_size = 64
      },
      {
        icon = "__angelssmeltinggraphics__/graphics/icons/ingot-steel.png",
        icon_size = 64,
        
        scale = 0.45
      },
      {
        icon = "__angelspetrochemgraphics__/graphics/icons/molecules/hydrogen.png",
        icon_size = 72,
        scale = 0.18,
        shift = {8, -10}
      }
    },
    enabled = false,
    category = "bulk-smelting",
    subgroup = "boxed-steel",
    order = "nullius-ad",
    energy_required = 60,
    ingredients = {
      {type="item", name="nullius-box-iron-oxide", amount=11},
      {type="item", name="nullius-graphite", amount=1},
      {type="fluid", name="nullius-compressed-hydrogen", amount=250}
    },
    results = {
      {type="item", name="nullius-box-steel-ingot", amount=10},
      {type="fluid", name="nullius-sludge", amount=80}
    },
    main_product = "nullius-box-steel-ingot"
  },

  {
    type = "item",
    name = "nullius-silicon-ingot",
    icons = {{
      icon = "__angelssmeltinggraphics__/graphics/icons/ingot-silicon.png",
      icon_size = 64,
      
      tint = {1, 0.925, 0.85}
    }},
    subgroup = "silicon-product",
    order = "nullius-e",
    stack_size = 100
  },
  {
    type = "item",
    name = "nullius-copper-ingot",
    icon = "__angelssmeltinggraphics__/graphics/icons/ingot-copper.png",
    icon_size = 64,
    
    subgroup = "copper",
    order = "nullius-e",
    stack_size = 100
  },
  {
    type = "item",
    name = "nullius-aluminum-ingot",
    icon = "__angelssmeltinggraphics__/graphics/icons/ingot-aluminium.png",
    icon_size = 64,
    
    subgroup = "aluminum-ingot",
    order = "nullius-g",
    stack_size = 100
  },
  {
    type = "item",
    name = "nullius-aluminum-hydroxide",
    icon = "__angelssmeltinggraphics__/graphics/icons/solid-aluminium-hydroxide.png",
    icon_size = 32,
    subgroup = "aluminum-ingot",
    order = "nullius-d",
    stack_size = 100
  },
  {
    type = "item",
    name = "nullius-sodium-hydroxide",
    icon = ICONPATH .. "lye.png",
    icon_size = 64,
    subgroup = "sodium-product",
    order = "nullius-c",
    stack_size = 100
  },
  {
    type = "item",
    name = "nullius-calcium-chloride",
    icons = {{
      icon = "__angelspetrochemgraphics__/graphics/icons/solid-calcium-chloride.png",
      icon_size = 32
    }},
    subgroup = "calcium-product",
    order = "nullius-i",
    stack_size = 100
  },
  {
    type = "item",
    name = "nullius-calcium",
    icon = ICONPATH .. "calcium.png",
    icon_size = 64,
    subgroup = "calcium-product",
    order = "nullius-j",
    stack_size = 100
  },

  {
    type = "item",
    name = "nullius-lime",
    icon = "__angelssmeltinggraphics__/graphics/icons/solid-lime.png",
    icon_size = 32,
    subgroup = "masonry-material",
    order = "nullius-b",
    stack_size = 100
  },
  {
    type = "recipe",
    name = "nullius-lime",
    icons = {
      {
        icon = "__angelssmeltinggraphics__/graphics/icons/solid-lime.png",
        icon_size = 32
      },
      {
        icon = "__angelsrefininggraphics__/graphics/icons/solid-limestone.png",
        icon_size = 32,
        scale = 0.4,
        shift = {-11, -11}
      }
    },
    enabled = false,
    category = "vent-smelting",
    hide_from_signal_gui = false,
    energy_required = 5,
    ingredients = {{type="item", name="nullius-crushed-limestone", amount = 3}},
    results = {
      {type="item", name="nullius-lime", amount=2},
      {type="fluid", name="nullius-carbon-dioxide", amount=40}
    },
    main_product = "nullius-lime"
  },
  {
    type = "recipe",
    name = "nullius-boxed-lime",
    enabled = false,
    category = "bulk-smelting",
    subgroup = "boxed-calcium",
    energy_required = 5,
    ingredients = {{type="item", name="nullius-box-crushed-limestone", amount = 3}},
    results = {
      {type="item", name="nullius-box-lime", amount=2},
      {type="fluid", name="nullius-carbon-dioxide", amount=200}
    },
    main_product = "nullius-box-lime"
  },
  {
    type = "recipe",
    name = "nullius-limestone-precipitation",
    localised_name = {"recipe-name.nullius-limestone-precipitation"},
    hide_from_signal_gui = false,
    icons = {
      {
        icon = "__angelsrefininggraphics__/graphics/icons/solid-limestone.png",
        icon_size = 32
      },
      {
        icon = "__angelssmeltinggraphics__/graphics/icons/solid-lime.png",
        icon_size = 32,
        scale = 0.4,
        shift = {-11, -11}
      }
    },
    enabled = false,
    no_productivity = true,
    category = "ore-flotation",
    order = "nullius-dd",
    energy_required = 6,
    ingredients = {
      {type="item", name="nullius-lime", amount=4},
      {type="fluid", name="nullius-carbon-dioxide", amount=100},
      {type="fluid", name="nullius-water", amount=25}
    },
    results = {
      {type="item", name="nullius-crushed-limestone", amount=4},
      {type="fluid", name="nullius-wastewater", amount=25}
    },
    main_product = "nullius-crushed-limestone"
  },
  {
    type = "recipe",
    name = "nullius-boxed-limestone-precipitation",
    localised_name = {"recipe-name.nullius-boxed", {"recipe-name.nullius-limestone-precipitation"}},
    icons = {
      {
        icon = ICONPATH .. "crate.png",
        icon_size = 64
      },
      {
        icon = "__angelsrefininggraphics__/graphics/icons/solid-limestone.png",
        icon_size = 32,
        scale = 0.9
      },
      {
        icon = "__angelssmeltinggraphics__/graphics/icons/solid-lime.png",
        icon_size = 32,
        scale = 0.36,
        shift = {-10, -10}
      }
    },
    enabled = false,
    no_productivity = true,
    category = "ore-flotation",
    subgroup = "boxed-calcium",
    order = "nullius-cd",
    energy_required = 30,
    ingredients = {
      {type="item", name="nullius-box-lime", amount=4},
      {type="fluid", name="nullius-carbon-dioxide", amount=500},
      {type="fluid", name="nullius-water", amount=125}
    },
    results = {
      {type="item", name="nullius-box-crushed-limestone", amount=4},
      {type="fluid", name="nullius-wastewater", amount=125}
    },
    main_product = "nullius-box-crushed-limestone"
  },

  {
    type = "recipe",
    name = "nullius-gypsum-decomposition",
    localised_name = {"recipe-name.nullius-gypsum-decomposition"},
    hide_from_signal_gui = false,
    icons = {
      {
        icon = "__angelssmeltinggraphics__/graphics/icons/solid-lime.png",
        icon_size = 32
      },
      {
        icon = "__angelspetrochemgraphics__/graphics/icons/molecules/sulfur-dioxide.png",
        icon_size = 72,
        scale = 0.16,
        shift = {12, 13}
      }
    },
    enabled = false,
    icon_size = 32,
    category = "vent-smelting",
    order = "nullius-bc",
    energy_required = 3,
    ingredients = {{type="item", name="nullius-gypsum", amount = 2}},
    results = {
      {type="item", name="nullius-lime", amount=1},
      {type="fluid", name="nullius-sulfur-dioxide", amount=10}
    },
    main_product = "nullius-lime"
  },
  {
    type = "recipe",
    name = "nullius-boxed-gypsum-decomposition",
    localised_name = {"recipe-name.nullius-boxed",
        {"recipe-name.nullius-gypsum-decomposition"}},
    icons = {
      {
        icon = ICONPATH .. "crate.png",
        icon_size = 64
      },
      {
        icon = "__angelssmeltinggraphics__/graphics/icons/solid-lime.png",
        icon_size = 32,
        scale = 0.9
      },
      {
        icon = "__angelspetrochemgraphics__/graphics/icons/molecules/sulfur-dioxide.png",
        icon_size = 72,
        scale = 0.14,
        shift = {11, 12}
      }
    },
    enabled = false,
    category = "bulk-smelting",
    subgroup = "boxed-calcium",
    order = "nullius-dc",
    energy_required = 3,
    ingredients = {{type="item", name="nullius-box-gypsum", amount = 2}},
    results = {
      {type="item", name="nullius-box-lime", amount=1},
      {type="fluid", name="nullius-sulfur-dioxide", amount=60}
    },
    main_product = "nullius-box-lime"
  },

  {
    type = "recipe",
    name = "nullius-gypsum",
    localised_name = {"recipe-name.nullius-gypsum-1"},
    icons = {
      {
        icon = "__angelsrefininggraphics__/graphics/icons/crushed/crushed-4.png",
        icon_size = 64,
        tint = {1, 1, 0.8}
      },
      {
        icon = "__angelspetrochemgraphics__/graphics/icons/molecules/sulfuric-acid.png",
        icon_size = 72,
        scale = 0.22,
        shift = {-9, -11}
      }
    },
    enabled = false,
    always_show_made_in = true,
    category = "ore-flotation",
    crafting_machine_tint = {
      primary = data.raw.fluid["nullius-acid-sulfuric"].flow_color,
      secondary = data.raw.fluid["nullius-acid-sulfuric"].flow_color
    },
    energy_required = 4,
    ingredients = {
      {type="item", name="nullius-lime", amount=3},
      {type="fluid", name="nullius-acid-sulfuric", amount=40, fluidbox_index=1}
    },
    results = {
      {type="item", name="nullius-gypsum", amount=2},
      {type="fluid", name="nullius-wastewater", amount=30, fluidbox_index=1}
    },
    main_product = "nullius-gypsum"
  },
  {
    type = "recipe",
    name = "nullius-boxed-gypsum-1",
    localised_name = {"", {"item-name.nullius-box", {"item-name.nullius-gypsum"}}, " ", tostring(1)},
    icons = {
      {
        icon = ICONPATH .. "crate.png",
        icon_size = 64
      },
      {
        icon = "__angelsrefininggraphics__/graphics/icons/crushed/crushed-4.png",
        icon_size = 64,
        tint = {1, 1, 0.8},
        scale = 0.45
      },
      {
        icon = "__angelspetrochemgraphics__/graphics/icons/molecules/sulfuric-acid.png",
        icon_size = 72,
        scale = 0.2,
        shift = {-8, -10}
      }
    },
    enabled = false,
    always_show_made_in = true,
    category = "ore-flotation",
    subgroup = "boxed-glass",
    order = "nullius-ef",
    crafting_machine_tint = {
      primary = data.raw.fluid["nullius-acid-sulfuric"].flow_color,
      secondary = data.raw.fluid["nullius-acid-sulfuric"].flow_color
    },
    energy_required = 20,
    ingredients = {
      {type="item", name="nullius-box-lime", amount=3},
      {type="fluid", name="nullius-acid-sulfuric", amount=200, fluidbox_index=1}
    },
    results = {
      {type="item", name="nullius-box-gypsum", amount=2},
      {type="fluid", name="nullius-wastewater", amount=150, fluidbox_index=1}
    },
    main_product = "nullius-box-gypsum"
  },
  {
    type = "recipe",
    name = "nullius-gypsum-2",
    localised_name = {"recipe-name.nullius-gypsum-2"},
    hide_from_signal_gui = false,
    icons = {
      {
        icon = "__angelsrefininggraphics__/graphics/icons/crushed/crushed-4.png",
        icon_size = 64,
        tint = {1, 1, 0.8}
      },
      {
        icon = "__angelspetrochemgraphics__/graphics/icons/solid-sodium-sulfate.png",
        icon_size = 32,
        scale = 0.55,
        shift = {-9, -9}
      }
    },
    enabled = false,
    always_show_made_in = true,
    category = "ore-flotation",
    crafting_machine_tint = {
      primary = data.raw.fluid["nullius-acid-sulfuric"].flow_color,
      secondary = data.raw.fluid["nullius-brine"].flow_color
    },
    energy_required = 3,
    ingredients = {
      {type="item", name="nullius-sodium-sulfate", amount=3},
      {type="fluid", name="nullius-calcium-chloride-solution", amount=25, fluidbox_index=1}
    },
    results = {
      {type="item", name="nullius-gypsum", amount=2},
      {type="fluid", name="nullius-brine", amount=20, fluidbox_index=1}
    },
    main_product = "nullius-gypsum"
  },
  {
    type = "recipe",
    name = "nullius-boxed-gypsum-2",
    localised_name = {"", {"item-name.nullius-box", {"item-name.nullius-gypsum"}}, " ", tostring(2)},
    icons = {
      {
        icon = ICONPATH .. "crate.png",
        icon_size = 64
      },
      {
        icon = "__angelsrefininggraphics__/graphics/icons/crushed/crushed-4.png",
        icon_size = 64,
        tint = {1, 1, 0.8},
        scale = 0.45
      },
      {
        icon = "__angelspetrochemgraphics__/graphics/icons/solid-sodium-sulfate.png",
        icon_size = 32,
        scale = 0.5,
        shift = {-8, -8}
      }
    },
    enabled = false,
    always_show_made_in = true,
    category = "ore-flotation",
    subgroup = "boxed-glass",
    order = "nullius-eg",
    crafting_machine_tint = {
      primary = data.raw.fluid["nullius-acid-sulfuric"].flow_color,
      secondary = data.raw.fluid["nullius-brine"].flow_color
    },
    energy_required = 15,
    ingredients = {
      {type="item", name="nullius-box-sodium-sulfate", amount=3},
      {type="fluid", name="nullius-calcium-chloride-solution", amount=125, fluidbox_index=1}
    },
    results = {
      {type="item", name="nullius-box-gypsum", amount=2},
      {type="fluid", name="nullius-brine", amount=100, fluidbox_index=1}
    },
    main_product = "nullius-box-gypsum"
  },

  {
    type = "recipe",
    name = "nullius-calcium-chloride-1",
    localised_name = {"", {"item-name.nullius-calcium-chloride"}, " ", tostring(1)},
    hide_from_signal_gui = false,
    category = "basic-chemistry",
    subgroup = "chlorine-chemistry",
    order = "nullius-fb",
    enabled = false,
    always_show_made_in = true,
    crafting_machine_tint = {
      primary = data.raw.fluid["nullius-acid-hydrochloric"].flow_color,
      secondary = data.raw.fluid["nullius-carbon-dioxide"].flow_color
    },
    energy_required = 1,
    ingredients = {
      {type="item", name="nullius-crushed-limestone", amount=1},
      {type="fluid", name="nullius-acid-hydrochloric", amount=25, fluidbox_index=1}
    },
    results = {
      {type="fluid", name="nullius-calcium-chloride-solution", amount=16},
      {type="fluid", name="nullius-carbon-dioxide", amount=10}
    },
    main_product = "nullius-calcium-chloride-solution"
  },
  {
    type = "recipe",
    name = "nullius-boxed-calcium-chloride-1",
    localised_name = {"recipe-name.nullius-boxed", {"", {"item-name.nullius-calcium-chloride"}, " ", tostring(1)}},
    icons = {
      {
        icon = ICONPATH .. "crate.png",
        icon_size = 64
      },
      data.raw.fluid["nullius-calcium-chloride-solution"].icons[2],
      data.raw.fluid["nullius-calcium-chloride-solution"].icons[3],
      data.raw.fluid["nullius-calcium-chloride-solution"].icons[4]
    },
    category = "basic-chemistry",
    subgroup = "boxed-fluid",
    order = "nullius-ccb",
    enabled = false,
    always_show_made_in = true,
    crafting_machine_tint = {
      primary = data.raw.fluid["nullius-acid-hydrochloric"].flow_color,
      secondary = data.raw.fluid["nullius-carbon-dioxide"].flow_color
    },
    energy_required = 5,
    ingredients = {
      {type="item", name="nullius-box-crushed-limestone", amount=1},
      {type="fluid", name="nullius-acid-hydrochloric", amount=125, fluidbox_index=1}
    },
    results = {
      {type="fluid", name="nullius-calcium-chloride-solution", amount=80},
      {type="fluid", name="nullius-carbon-dioxide", amount=50}
    },
    main_product = "nullius-calcium-chloride-solution"
  },
  {
    type = "recipe",
    name = "nullius-calcium-chloride-2",
    localised_name = {"", {"item-name.nullius-calcium-chloride"}, " ", tostring(2)},
    hide_from_signal_gui = false,
    icons = {
      data.raw.fluid["nullius-calcium-chloride-solution"].icons[2],
      data.raw.fluid["nullius-calcium-chloride-solution"].icons[3],
      data.raw.fluid["nullius-calcium-chloride-solution"].icons[4],
      {
        icon = "__angelssmeltinggraphics__/graphics/icons/solid-lime.png",
        icon_size = 32,
        scale = 0.4,
        shift = {-11, -12}
      }
    },
    enabled = false,
    category = "basic-chemistry",
    subgroup = "chlorine-chemistry",
    order = "nullius-fc",
    crafting_machine_tint = {
      primary = data.raw.fluid["nullius-acid-hydrochloric"].flow_color,
      secondary = data.raw.fluid["nullius-oxygen"].flow_color
    },
    energy_required = 2,
    ingredients = {
      {type="item", name="nullius-lime", amount=3},
      {type="fluid", name="nullius-chlorine", amount=50},
      {type="fluid", name="nullius-water", amount=60}
    },
    results = {
      {type="fluid", name="nullius-calcium-chloride-solution", amount=60},
      {type="fluid", name="nullius-oxygen", amount=20}
    },
    main_product = "nullius-calcium-chloride-solution"
  },
  {
    type = "recipe",
    name = "nullius-boxed-calcium-chloride-2",
    localised_name = {"recipe-name.nullius-boxed", {"", {"item-name.nullius-calcium-chloride"}, " ", tostring(2)}},
    icons = {
      {
        icon = ICONPATH .. "crate.png",
        icon_size = 64
      },
      data.raw.fluid["nullius-calcium-chloride-solution"].icons[2],
      data.raw.fluid["nullius-calcium-chloride-solution"].icons[3],
      data.raw.fluid["nullius-calcium-chloride-solution"].icons[4],
      {
        icon = "__angelssmeltinggraphics__/graphics/icons/solid-lime.png",
        icon_size = 32,
        scale = 0.36,
        shift = {-10, -11}
      }
    },
    enabled = false,
    category = "basic-chemistry",
    subgroup = "boxed-fluid",
    order = "nullius-ccc",
    crafting_machine_tint = {
      primary = data.raw.fluid["nullius-acid-hydrochloric"].flow_color,
      secondary = data.raw.fluid["nullius-oxygen"].flow_color
    },
    energy_required = 10,
    ingredients = {
      {type="item", name="nullius-box-lime", amount=3},
      {type="fluid", name="nullius-chlorine", amount=250},
      {type="fluid", name="nullius-water", amount=300}
    },
    results = {
      {type="fluid", name="nullius-calcium-chloride-solution", amount=300},
      {type="fluid", name="nullius-oxygen", amount=100}
    },
    main_product = "nullius-calcium-chloride-solution"
  },
  {
    type = "recipe",
    name = "nullius-calcium-chloride",
    localised_name = {"recipe-name.nullius-dehydration", {"item-name.nullius-calcium-chloride"}},
    enabled = false,
	  no_productivity = true,
    category = "distillation",
    order = "nullius-ic",
    crafting_machine_tint = {
      primary = data.raw.fluid["nullius-calcium-chloride-solution"].flow_color,
      secondary = data.raw.fluid["nullius-steam"].flow_color
    },
    energy_required = 1,
    ingredients = {
      {type="fluid", name="nullius-calcium-chloride-solution", amount=33}
    },
    results = {
      {type="item", name="nullius-calcium-chloride", amount=2},
      {type="fluid", name="nullius-steam", amount=30, fluidbox_index=2}
    },
    main_product = "nullius-calcium-chloride"
  },
  {
    type = "recipe",
    name = "nullius-boxed-calcium-chloride-dehydration",
    localised_name = {"recipe-name.nullius-dehydration",
      {"item-name.nullius-box", {"item-name.nullius-calcium-chloride"}}},
    enabled = false,
	  no_productivity = true,
    category = "distillation",
    subgroup = "boxed-calcium",
    order = "nullius-fc",
    crafting_machine_tint = {
      primary = data.raw.fluid["nullius-calcium-chloride-solution"].flow_color,
      secondary = data.raw.fluid["nullius-steam"].flow_color
    },
    energy_required = 5,
    ingredients = {
      {type="fluid", name="nullius-calcium-chloride-solution", amount=165}
    },
    results = {
      {type="item", name="nullius-box-calcium-chloride", amount=2},
      {type="fluid", name="nullius-steam", amount=150, fluidbox_index=2}
    },
    main_product = "nullius-box-calcium-chloride"
  },
  {
    type = "recipe",
    name = "nullius-legacy-calcium-chloride-dehydration",
    localised_name = {"recipe-name.nullius-dehydration", {"item-name.nullius-calcium-chloride"}},
    enabled = false,
	  hidden = true,
    allow_decomposition = false,
    allow_as_intermediate = false,
    category = "distillation",
    order = "nullius-ic",
    crafting_machine_tint = {
      primary = data.raw.fluid["nullius-calcium-chloride-solution"].flow_color,
      secondary = data.raw.fluid["nullius-steam"].flow_color
    },
    energy_required = 1,
    ingredients = {
      {type="fluid", name="nullius-calcium-chloride-solution", amount=40}
    },
    results = {
      {type="item", name="nullius-calcium-chloride", amount=2},
      {type="fluid", name="nullius-steam", amount=30, fluidbox_index=2}
    },
    main_product = "nullius-calcium-chloride"
  },
  {
    type = "recipe",
    name = "nullius-legacy-boxed-calcium-chloride-dehydration",
    localised_name = {"recipe-name.nullius-dehydration",
      {"item-name.nullius-box", {"item-name.nullius-calcium-chloride"}}},
    enabled = false,
	  hidden = true,
    allow_decomposition = false,
    allow_as_intermediate = false,
    category = "distillation",
    subgroup = "boxed-calcium",
    order = "nullius-fc",
    crafting_machine_tint = {
      primary = data.raw.fluid["nullius-calcium-chloride-solution"].flow_color,
      secondary = data.raw.fluid["nullius-steam"].flow_color
    },
    energy_required = 5,
    ingredients = {
      {type="fluid", name="nullius-calcium-chloride-solution", amount=200}
    },
    results = {
      {type="item", name="nullius-box-calcium-chloride", amount=2},
      {type="fluid", name="nullius-steam", amount=150, fluidbox_index=2}
    },
    main_product = "nullius-box-calcium-chloride"
  },
  {
    type = "recipe",
    name = "nullius-calcium-chloride-hydration",
    localised_name = {"recipe-name.nullius-hydration", {"item-name.nullius-calcium-chloride"}},
	icons = {
      data.raw.fluid["nullius-calcium-chloride-solution"].icons[2],
      data.raw.fluid["nullius-calcium-chloride-solution"].icons[3],
      data.raw.fluid["nullius-calcium-chloride-solution"].icons[4],
      {
		icon = "__angelspetrochemgraphics__/graphics/icons/solid-calcium-chloride.png",
        icon_size = 32,
        scale = 0.4,
        shift = {-11, -12}
      }
    },
    enabled = false,
	no_productivity = true,
	show_amount_in_title = false,
    always_show_products = true,
    category = "ore-flotation",
	subgroup = "chlorine-chemistry",
    order = "nullius-fd",
    energy_required = 1,
    ingredients = {
      {type="item", name="nullius-calcium-chloride", amount=4},
      {type="fluid", name="nullius-water", amount=60, fluidbox_index=2}
	},
	results = {
      {type="fluid", name="nullius-calcium-chloride-solution", amount=65}
    }
  },
  {
    type = "recipe",
    name = "nullius-boxed-calcium-chloride-hydration",
    localised_name = {"recipe-name.nullius-hydration",
      {"item-name.nullius-box", {"item-name.nullius-calcium-chloride"}}},
	  icons = {
      {
        icon = ICONPATH .. "crate.png",
        icon_size = 64
      },
      data.raw.fluid["nullius-calcium-chloride-solution"].icons[2],
      data.raw.fluid["nullius-calcium-chloride-solution"].icons[3],
      data.raw.fluid["nullius-calcium-chloride-solution"].icons[4],
      {
	    icon = "__angelspetrochemgraphics__/graphics/icons/solid-calcium-chloride.png",
        icon_size = 32,
        scale = 0.36,
        shift = {-10, -11}
      }
    },
    enabled = false,
	  no_productivity = true,
	  show_amount_in_title = false,
    always_show_products = true,
    category = "ore-flotation",
	  subgroup = "boxed-fluid",
    order = "nullius-cd",
    energy_required = 5,
    ingredients = {
      {type="item", name="nullius-box-calcium-chloride", amount=4},
      {type="fluid", name="nullius-water", amount=300, fluidbox_index=2}
	},
	results = {
      {type="fluid", name="nullius-calcium-chloride-solution", amount=325}
    }
  },
  {
    type = "recipe",
    name = "nullius-calcium-chloride-decomposition",
    localised_name = {"recipe-name.nullius-calcium-chloride-decomposition"},
    hide_from_signal_gui = false,
    icons = {
      {
        icon = "__angelssmeltinggraphics__/graphics/icons/solid-lime.png",
        icon_size = 32
      },
      {
        icon = "__angelspetrochemgraphics__/graphics/icons/molecules/hydrogen-chloride.png",
        icon_size = 72,
        scale = 0.15,
        shift = {12, 12}
      }
    },
    enabled = false,
    icon_size = 32,
    category = "wet-smelting",
    order = "nullius-bd",
    energy_required = 2,
    ingredients = {
      {type="item", name="nullius-calcium-chloride", amount=2},
      {type="fluid", name="nullius-steam", amount=100}
    },
    results = {
      {type="item", name="nullius-lime", amount=1},
      {type="fluid", name="nullius-hydrogen-chloride", amount=10}
    },
    main_product = "nullius-lime"
  },
  {
    type = "recipe",
    name = "nullius-boxed-calcium-chloride-decomposition",
    localised_name = {"recipe-name.nullius-boxed",
        {"recipe-name.nullius-calcium-chloride-decomposition"}},
    icons = {
      {
        icon = ICONPATH .. "crate.png",
        icon_size = 64
      },
      {
        icon = "__angelssmeltinggraphics__/graphics/icons/solid-lime.png",
        icon_size = 32,
        scale = 0.9
      },
      {
        icon = "__angelspetrochemgraphics__/graphics/icons/molecules/hydrogen-chloride.png",
        icon_size = 72,
        scale = 0.13,
        shift = {11, 11}
      }
    },
    enabled = false,
    icon_size = 32,
    category = "bulk-smelting",
    subgroup = "boxed-calcium",
    order = "nullius-dd",
    energy_required = 2,
    ingredients = {
      {type="item", name="nullius-box-calcium-chloride", amount=2},
      {type="fluid", name="nullius-steam", amount=500}
    },
    results = {
      {type="item", name="nullius-box-lime", amount=1},
      {type="fluid", name="nullius-hydrogen-chloride", amount=50}
    },
    main_product = "nullius-box-lime"
  },
  {
    type = "recipe",
    name = "nullius-calcium",
    enabled = false,
    category = "nullius-electrolysis",
    energy_required = 2,
    ingredients = {
      {type="item", name="nullius-calcium-chloride", amount=4}
    },
    results = {
      {type="item", name="nullius-calcium", amount=3},
      {type="fluid", name="nullius-chlorine", amount=12, fluidbox_index=1}
    },
    main_product = "nullius-calcium"
  },
  {
    type = "recipe",
    name = "nullius-boxed-calcium",
    enabled = false,
    category = "nullius-electrolysis",
    subgroup = "boxed-calcium",
    energy_required = 10,
    ingredients = {
      {type="item", name="nullius-box-calcium-chloride", amount=4}
    },
    results = {
      {type="item", name="nullius-box-calcium", amount=3},
      {type="fluid", name="nullius-chlorine", amount=60, fluidbox_index=1}
    },
    main_product = "nullius-box-calcium"
  },

  {
    type = "item",
    name = "nullius-silica",
    subgroup = "silicon-product",
    order = "nullius-d",
    icons = {{
      icon = "__angelssmeltinggraphics__/graphics/icons/powder-silica.png",
      icon_size = 64,
      
    }},
    stack_size = 100
  },
  {
    type = "item",
    name = "nullius-rutile",
    subgroup = "titanium-product",
    order = "nullius-b",
    icon = "__angelssmeltinggraphics__/graphics/icons/powder-titanium.png",
    icon_size = 64,
    
    stack_size = 100
  },
  {
    type = "recipe",
    name = "nullius-silica",
    localised_name = {"recipe-name.nullius-silica-1"},
    enabled = false,
    category = "ore-flotation",
    energy_required = 5,
    ingredients = {
      {type="item", name="nullius-sand", amount=8},
      {type="fluid", name="nullius-saline", amount=60, fluidbox_index=1}
    },
    results = {
      {type="item", name="nullius-silica", amount=6},
      {type="fluid", name="nullius-wastewater", amount=50, fluidbox_index=1}
    },
    main_product = "nullius-silica"
  },
  {
    type = "recipe",
    name = "nullius-silica-2",
    localised_name = {"recipe-name.nullius-silica-2"},
    hide_from_signal_gui = false,
    icons = {
      {
        icon = "__angelssmeltinggraphics__/graphics/icons/powder-silica.png",
        icon_size = 64,
        
      },
      {
        icon = "__angelssmeltinggraphics__/graphics/icons/powder-titanium.png",
        icon_size = 64,
        
        scale = 0.25,
        shift = {9, 9}
      }
    },
    enabled = false,
    category = "ore-flotation",
    energy_required = 15,
    ingredients = {
      {type="item", name="nullius-sand", amount=15},
      {type="fluid", name="nullius-caustic-solution", amount=60},
      {type="fluid", name="nullius-acid-hydrochloric", amount=75}
    },
    results = {
      {type="item", name="nullius-silica", amount=12},
      {type="item", name="nullius-rutile", amount=1},
      {type="fluid", name="nullius-wastewater", amount=120, fluidbox_index=1}
    },
    main_product = "nullius-silica"
  },
  {
    type = "recipe",
    name = "nullius-boxed-silica-1",
    localised_name = {"", {"item-name.nullius-box", {"item-name.nullius-silica"}}, " ", tostring(1)},
    enabled = false,
    category = "ore-flotation",
    subgroup = "boxed-silicon",
    energy_required = 25,
    ingredients = {
      {type="item", name="nullius-box-sand", amount=8},
      {type="fluid", name="nullius-saline", amount=300, fluidbox_index=1}
    },
    results = {
      {type="item", name="nullius-box-silica", amount=6},
      {type="fluid", name="nullius-wastewater", amount=250, fluidbox_index=1}
    },
    main_product = "nullius-box-silica"
  },
  {
    type = "recipe",
    name = "nullius-boxed-silica-2",
    localised_name = {"", {"item-name.nullius-box", {"item-name.nullius-silica"}}, " ", tostring(2)},
    icons = {
      {
        icon = ICONPATH .. "crate.png",
        icon_size = 64
      },
      {
        icon = "__angelssmeltinggraphics__/graphics/icons/powder-silica.png",
        icon_size = 64,
        
        scale = 0.45
      },
      {
        icon = "__angelssmeltinggraphics__/graphics/icons/powder-titanium.png",
        icon_size = 64,
        
        scale = 0.23,
        shift = {8, 8}
      }
    },
    enabled = false,
    category = "ore-flotation",
    subgroup = "boxed-silicon",
    energy_required = 75,
    ingredients = {
      {type="item", name="nullius-box-sand", amount=15},
      {type="fluid", name="nullius-caustic-solution", amount=300},
      {type="fluid", name="nullius-acid-hydrochloric", amount=375}
    },
    results = {
      {type="item", name="nullius-box-silica", amount=12},
      {type="item", name="nullius-box-rutile", amount=1},
      {type="fluid", name="nullius-wastewater", amount=600, fluidbox_index=1}
    },
    main_product = "nullius-box-silica"
  },
  {
    type = "recipe",
    name = "nullius-rutile",
    enabled = false,
    category = "ore-flotation",
    energy_required = 3,
    ingredients = {
      {type="item", name="nullius-sand", amount=5},
      {type="fluid", name="nullius-acid-sulfuric", amount=15, fluidbox_index=1}
    },
    results = {
      {type="item", name="nullius-rutile", amount=1},
      {type="fluid", name="nullius-sludge", amount=10},
      {type="fluid", name="nullius-carbon-dioxide", amount=5}
    },
    main_product = "nullius-rutile"
  },
  {
    type = "recipe",
    name = "nullius-boxed-rutile",
    enabled = false,
    category = "ore-flotation",
    subgroup = "boxed-titanium",
    order = "nullius-bb",
    energy_required = 15,
    ingredients = {
      {type="item", name="nullius-box-sand", amount=5},
      {type="fluid", name="nullius-acid-sulfuric", amount=75, fluidbox_index=1}
    },
    results = {
      {type="item", name="nullius-box-rutile", amount=1},
      {type="fluid", name="nullius-sludge", amount=50},
      {type="fluid", name="nullius-carbon-dioxide", amount=25}
    },
    main_product = "nullius-box-rutile"
  },

  {
    type = "item",
    name = "nullius-glass",
    icons = {{
      icon = "__angelssmeltinggraphics__/graphics/icons/plate-glass.png",
      icon_size = 32,
      tint = {0.8, 0.8, 0.9}
    }},
    subgroup = "glass-product",
    order = "nullius-b",
    stack_size = 100
  },
  {
    type = "recipe",
    name = "nullius-glass",
    localised_name = {"recipe-name.nullius-silica-glass"},
    show_amount_in_title = false,
    always_show_products = true,
    enabled = false,
    category = "machine-casting",
    order = "nullius-bb",
    energy_required = 30,
    ingredients = {{type="item", name="nullius-silica", amount = 3}},
    results = {
      {type = "item", name = "nullius-glass", amount = 1}
    }
  },
  {
    type = "recipe",
    name = "nullius-soda-lime-glass-1",
    localised_name = {"recipe-name.nullius-soda-lime-glass-1"},
    hide_from_signal_gui = false,
    icons = {
      {
        icon = "__angelssmeltinggraphics__/graphics/icons/plate-glass.png",
        icon_size = 32,
        tint = {0.8, 0.8, 0.9}
      },
      {
        icon = "__angelspetrochemgraphics__/graphics/icons/solid-sodium-carbonate.png",
        icon_size = 32,
        scale = 0.4,
        shift = {10, -11}
      }
    },
    show_amount_in_title = false,
    always_show_products = true,
    enabled = false,
    category = "machine-casting",
    order = "nullius-bc",
    energy_required = 36,
    ingredients = {
      {type="item", name="nullius-silica", amount = 9},
      {type="item", name="nullius-soda-ash", amount = 2},
      {type="item", name="nullius-lime", amount = 1}
    },
    results = {
      {type="item", name="nullius-glass", amount=6},
      {type="fluid", name="nullius-carbon-dioxide", amount=20}
    },
    main_product = "nullius-glass"
  },
  {
    type = "recipe",
    name = "nullius-soda-lime-glass-2",
    localised_name = {"recipe-name.nullius-soda-lime-glass-2"},
    hide_from_signal_gui = false,
    icons = {
      {
        icon = "__angelssmeltinggraphics__/graphics/icons/plate-glass.png",
        icon_size = 32,
        tint = {0.8, 0.8, 0.9}
      },
      {
        icon = "__angelssmeltinggraphics__/graphics/icons/solid-aluminium-oxide.png",
        icon_size = 32,
        scale = 0.4,
        shift = {10, -11}
      }
    },
    show_amount_in_title = false,
    always_show_products = true,
    enabled = false,
    category = "machine-casting",
    order = "nullius-bd",
    energy_required = 45,
    ingredients = {
      {type="item", name="nullius-silica", amount = 12},
      {type="item", name="nullius-alumina", amount = 3},
      {type="item", name="nullius-lime", amount = 3},
      {type="item", name="nullius-soda-ash", amount = 3},
      {type="item", name="nullius-sodium-sulfate", amount = 1}
    },
    results = {
      {type="item", name="nullius-glass", amount=16},
      {type="fluid", name="nullius-carbon-dioxide", amount=40}
    },
    main_product = "nullius-glass"
  },
  {
    type = "recipe",
    name = "nullius-boxed-glass",
    show_amount_in_title = false,
    always_show_products = true,
    enabled = false,
    category = "machine-casting",
    subgroup = "boxed-glass",
    energy_required = 225,
    ingredients = {
      {type="item", name="nullius-box-silica", amount = 12},
      {type="item", name="nullius-box-alumina", amount = 3},
      {type="item", name="nullius-box-lime", amount = 3},
      {type="item", name="nullius-box-soda-ash", amount = 3},
      {type="item", name="nullius-box-sodium-sulfate", amount = 1}
    },
    results = {
      {type="item", name="nullius-box-glass", amount=16},
      {type="fluid", name="nullius-carbon-dioxide", amount=200}
    },
    main_product = "nullius-box-glass"
  },

  {
    type = "item",
    name = "nullius-hard-glass",
    icons = {{
      icon = "__angelssmeltinggraphics__/graphics/icons/plate-glass.png",
      icon_size = 32,
      tint = {1, 1, 1, 0.5}
    }},
    subgroup = "glass-product",
    order = "nullius-c",
    stack_size = 100
  },
  {
    type = "recipe",
    name = "nullius-hard-glass",
    show_amount_in_title = false,
    always_show_products = true,
    enabled = false,
    category = "dry-smelting",
    energy_required = 50,
    ingredients = {
      {type="item", name="nullius-silica", amount = 5},
      {type="item", name="nullius-alumina", amount = 3},
      {type="item", name="nullius-lime", amount = 2},
      {type="item", name="nullius-acid-boric", amount = 1}
    },
    results = {
      {type = "item", name = "nullius-hard-glass", amount = 4}
    }
  },
  {
    type = "recipe",
    name = "nullius-boxed-hard-glass",
    show_amount_in_title = false,
    always_show_products = true,
    enabled = false,
    category = "bulk-smelting",
    subgroup = "boxed-glass",
    energy_required = 50,
    ingredients = {
      {type="item", name="nullius-box-silica", amount = 5},
      {type="item", name="nullius-box-alumina", amount = 3},
      {type="item", name="nullius-box-lime", amount = 2},
      {type="item", name="nullius-box-acid-boric", amount = 1}
    },
    results = {
      {type = "item", name = "nullius-box-hard-glass", amount = 4}
    }
  },

  {
    type = "item",
    name = "nullius-glass-fiber",
    icon = "__angelssmeltinggraphics__/graphics/icons/wire-coil-glass.png",
    icon_size = 64,
    
    subgroup = "glass-product",
    order = "nullius-d",
    stack_size = 100
  },
  {
    type = "recipe",
    name = "nullius-glass-fiber",
    show_amount_in_title = false,
    always_show_products = true,
    enabled = false,
    category = "machine-casting",
    energy_required = 18,
    ingredients = {
      {type="item", name="nullius-hard-glass", amount=2},
      {type="fluid", name="nullius-water", amount=20}
    },
    results = {
      {type="item", name="nullius-glass-fiber", amount=3},
      {type="fluid", name="nullius-steam", amount=50}
    },
    main_product = "nullius-glass-fiber"
  },
  {
    type = "recipe",
    name = "nullius-boxed-glass-fiber",
    show_amount_in_title = false,
    always_show_products = true,
    enabled = false,
    category = "machine-casting",
    subgroup = "boxed-glass",
    energy_required = 90,
    ingredients = {
      {type="item", name="nullius-box-hard-glass", amount=2},
      {type="fluid", name="nullius-water", amount=100}
    },
    results = {
      {type="item", name="nullius-box-glass-fiber", amount=3},
      {type="fluid", name="nullius-steam", amount=250}
    },
    main_product = "nullius-box-glass-fiber"
  },

  {
    type = "item",
    name = "nullius-boron",
    icons = {{
      icon = ICONPATH .. "lye.png",
      icon_size = 64,
      tint = {0.4, 0.35, 0.3}
    }},
    subgroup = "glass-product",
    order = "nullius-k",
    stack_size = 100
  },
  {
    type = "item",
    name = "nullius-acid-boric",
    icons = {{
      icon = ICONPATH .. "lye.png",
      icon_size = 64,
      tint = { 240, 172, 172 }
    }},
    subgroup = "glass-product",
    order = "nullius-j",
    stack_size = 100
  },
  {
    type = "recipe",
    name = "nullius-boron",
    enabled = false,
    category = "vent-smelting",
    energy_required = 10,
    ingredients = {
      {type="item", name="nullius-acid-boric", amount=4},
      {type="item", name="nullius-aluminum-ingot", amount=4}
    },
    results = {
      {type="item", name="nullius-boron", amount=3},
      {type="item", name="nullius-alumina", amount=2},
      {type="fluid", name="nullius-wastewater", amount=5}
    },
    main_product = "nullius-boron"
  },
  {
    type = "recipe",
    name = "nullius-boxed-boron",
    enabled = false,
    category = "bulk-smelting",
    subgroup = "boxed-glass",
    energy_required = 10,
    ingredients = {
      {type="item", name="nullius-box-acid-boric", amount=4},
      {type="item", name="nullius-box-aluminum-ingot", amount=4}
    },
    results = {
      {type="item", name="nullius-box-boron", amount=3},
      {type="item", name="nullius-box-alumina", amount=2},
      {type="fluid", name="nullius-wastewater", amount=25}
    },
    main_product = "nullius-box-boron"
  },

  {
    type = "item",
    name = "nullius-gravel",
    subgroup = "masonry-material",
    order = "nullius-l",
    icons = {{
      icon = "__angelsrefininggraphics__/graphics/icons/stone-crushed.png",
      icon_size = 32,
      tint = {r=0.95, g=0.85, b=0.75}
    }},
    stack_size = 100
  },

  {
    type = "item",
    name = "nullius-iron-plate",
    icons = {{
      icon = "__base__/graphics/icons/iron-plate.png",
      icon_size = 64,
      
      tint = {r=0.75, g=0.85, b=0.95}
    }},
    subgroup = "iron-product",
    order = "nullius-b",
    stack_size = 100
  },
  {
    type = "item",
    name = "nullius-iron-rod",
    icons = {{
      icon = "__base__/graphics/icons/iron-stick.png",
      icon_size = 64,
      
      tint = {r=0.65, g=0.75, b=0.8}
    }},
    subgroup = "iron-product",
    order = "nullius-c",
    stack_size = 200
  },
  {
    type = "item",
    name = "nullius-steel-rod",
    icon = "__angelssmeltinggraphics__/graphics/icons/rod-steel.png",
    icon_size = 32,
    subgroup = "steel-product",
    order = "nullius-e",
    stack_size = 200
  },
  {
    type = "item",
    name = "nullius-aluminum-rod",
    icon = "__angelssmeltinggraphics__/graphics/icons/rod-aluminium.png",
    icon_size = 32,
    subgroup = "aluminum-product",
    order = "nullius-g",
    stack_size = 200
  },
  {
    type = "recipe",
    name = "nullius-iron-rod",
    localised_name = {"item-name.nullius-iron-rod"},
    enabled = false,
    show_amount_in_title = false,
    always_show_products = true,
    category = "machine-casting",
    energy_required = 4,
    ingredients = {
      {type = "item", name = "nullius-iron-ingot", amount = 4}
    },
    results = {
      {type = "item", name = "nullius-iron-rod", amount = 5}
    }
  },
  {
    type = "recipe",
    name = "nullius-iron-rod-2",
    localised_name = {"recipe-name.nullius-iron-rod-2"},
    hide_from_signal_gui = false,
    icons = {
      {
        icon = "__base__/graphics/icons/iron-stick.png",
        icon_size = 64,
        
        tint = {r=0.65, g=0.75, b=0.8}
      },
      {
        icon = "__angelspetrochemgraphics__/graphics/icons/molecules/hydrogen-chloride.png",
        icon_size = 72,
        scale = 0.16,
        shift = {11, -12}
      }
    },
    enabled = false,
    category = "machine-casting",
    energy_required = 4,
    ingredients = {
      {type="item", name="nullius-iron-ingot", amount=5},
      {type="fluid", name="nullius-acid-hydrochloric", amount=4}
    },
    results = {
      {type="item", name="nullius-iron-rod", amount=7},
      {type="fluid", name="nullius-sludge", amount=1}
    },
    main_product = "nullius-iron-rod"
  },
  {
    type = "recipe",
    name = "nullius-boxed-iron-rod",
    enabled = false,
    category = "machine-casting",
    subgroup = "boxed-iron",
    energy_required = 20,
    ingredients = {
      {type="item", name="nullius-box-iron-ingot", amount=5},
      {type="fluid", name="nullius-acid-hydrochloric", amount=20}
    },
    results = {
      {type="item", name="nullius-box-iron-rod", amount=7},
      {type="fluid", name="nullius-sludge", amount=5}
    },
    main_product = "nullius-box-iron-rod"
  },

  {
    type = "recipe",
    name = "nullius-steel-rod",
    localised_name = {"item-name.nullius-steel-rod"},
    enabled = false,
    show_amount_in_title = false,
    always_show_products = true,
    category = "machine-casting",
    energy_required = 5,
    ingredients = {
      {type = "item", name = "nullius-steel-ingot", amount = 4}
    },
    results = {
      {type = "item", name = "nullius-steel-rod", amount = 5}
    }
  },
  {
    type = "recipe",
    name = "nullius-steel-rod-2",
    localised_name = {"recipe-name.nullius-steel-rod-2"},
    hide_from_signal_gui = false,
    icons = {
      {
        icon = "__angelssmeltinggraphics__/graphics/icons/rod-steel.png",
        icon_size = 32
      },
      {
        icon = "__angelspetrochemgraphics__/graphics/icons/molecules/sulfuric-acid.png",
        icon_size = 72,
        scale = 0.18,
        shift = {-10, -11}
      }
    },
    enabled = false,
    category = "machine-casting",
    energy_required = 5,
    ingredients = {
      {type="item", name="nullius-steel-ingot", amount=5},
      {type="fluid", name="nullius-acid-sulfuric", amount=3}
    },
    results = {
      {type="item", name="nullius-steel-rod", amount=7},
      {type="fluid", name="nullius-sludge", amount=2}
    },
    main_product = "nullius-steel-rod"
  },
  {
    type = "recipe",
    name = "nullius-boxed-steel-rod",
    enabled = false,
    category = "machine-casting",
    subgroup = "boxed-steel",
    energy_required = 25,
    ingredients = {
      {type="item", name="nullius-box-steel-ingot", amount=5},
      {type="fluid", name="nullius-acid-sulfuric", amount=15}
    },
    results = {
      {type="item", name="nullius-box-steel-rod", amount=7},
      {type="fluid", name="nullius-sludge", amount=10}
    },
    main_product = "nullius-box-steel-rod"
  },

  {
    type = "recipe",
    name = "nullius-aluminum-rod",
    localised_name = {"item-name.nullius-aluminum-rod"},
    enabled = false,
    show_amount_in_title = false,
    always_show_products = true,
    category = "machine-casting",
    energy_required = 4,
    ingredients = {
      {type = "item", name = "nullius-aluminum-ingot", amount = 4}
    },
    results = {
      {type = "item", name = "nullius-aluminum-rod", amount = 5}
    }
  },
  {
    type = "recipe",
    name = "nullius-aluminum-rod-2",
    localised_name = {"recipe-name.nullius-aluminum-rod-2"},
    hide_from_signal_gui = false,
    icons = {
      {
        icon = "__angelssmeltinggraphics__/graphics/icons/rod-aluminium.png",
        icon_size = 32
      },
      {
        icon = ICONPATH .. "fluid/sodium-hydroxide.png",
        icon_size = 64,
        scale = 0.2,
        shift = {-11, -12}
      }
    },
    enabled = false,
    category = "machine-casting",
    energy_required = 4,
    ingredients = {
      {type="item", name="nullius-aluminum-ingot", amount=5},
      {type="fluid", name="nullius-caustic-solution", amount=2}
    },
    results = {
      {type="item", name="nullius-aluminum-rod", amount=7},
      {type="fluid", name="nullius-wastewater", amount=2}
    },
    main_product = "nullius-aluminum-rod"
  },
  {
    type = "recipe",
    name = "nullius-boxed-aluminum-rod",
    enabled = false,
    category = "machine-casting",
    subgroup = "boxed-aluminum-2",
    energy_required = 20,
    ingredients = {
      {type="item", name="nullius-box-aluminum-ingot", amount=5},
      {type="fluid", name="nullius-caustic-solution", amount=10}
    },
    results = {
      {type="item", name="nullius-box-aluminum-rod", amount=7},
      {type="fluid", name="nullius-wastewater", amount=10}
    },
    main_product = "nullius-box-aluminum-rod"
  },

  {
    type = "item",
    name = "nullius-steel-beam",
    icon = "__base__/graphics/icons/steel-plate.png",
    icon_size = 64,
    
    subgroup = "steel-product",
    order = "nullius-l",
    stack_size = 100
  },
  {
    type = "recipe",
    name = "nullius-steel-beam",
    enabled = false,
    show_amount_in_title = false,
    always_show_products = true,
    category = "machine-casting",
    energy_required = 2,
    ingredients = {
      {type = "item", name = "nullius-steel-ingot", amount = 3}
    },
    results = {
      {type = "item", name = "nullius-steel-beam", amount = 2}
    }
  },
  {
    type = "recipe",
    name = "nullius-boxed-steel-beam",
    enabled = false,
    show_amount_in_title = false,
    always_show_products = true,
    category = "machine-casting",
    subgroup = "boxed-steel",
    energy_required = 10,
    ingredients = {
      {type = "item", name = "nullius-box-steel-ingot", amount = 3}
    },
    results = {
      {type = "item", name = "nullius-box-steel-beam", amount = 2}
    }
  },

  {
    type = "item",
    name = "nullius-aluminum-plate",
    icon = "__angelssmeltinggraphics__/graphics/icons/plate-aluminium.png",
    icon_size = 32,
    subgroup = "aluminum-product",
    order = "nullius-f",
    stack_size = 100
  },
  {
    type = "item",
    name = "nullius-steel-plate",
    icon = "__angelssmeltinggraphics__/graphics/icons/plate-steel.png",
    icon_size = 32,
    subgroup = "steel-product",
    order = "nullius-c",
    stack_size = 100
  },
  {
    type = "recipe",
    name = "nullius-aluminum-plate",
    localised_name = {"item-name.nullius-aluminum-plate"},
    enabled = false,
    show_amount_in_title = false,
    always_show_products = true,
    category = "machine-casting",
    energy_required = 4,
    ingredients = {
      {type = "item", name = "nullius-aluminum-ingot", amount = 4}
    },
    results = {
      {type = "item", name = "nullius-aluminum-plate", amount = 3}
    }
  },
  {
    type = "recipe",
    name = "nullius-aluminum-plate-2",
    localised_name = {"recipe-name.nullius-aluminum-plate-2"},
    hide_from_signal_gui = false,
    icons = {
      {
        icon = "__angelssmeltinggraphics__/graphics/icons/plate-aluminium.png",
        icon_size = 32
      },
      {
        icon = ICONPATH .. "fluid/sodium-hydroxide.png",
        icon_size = 64,
        scale = 0.2,
        shift = {11, -12}
      }
    },
    enabled = false,
    category = "machine-casting",
    energy_required = 4,
    ingredients = {
      {type="item", name="nullius-aluminum-ingot", amount=6},
      {type="fluid", name="nullius-caustic-solution", amount=3}
    },
    results = {
      {type="item", name="nullius-aluminum-plate", amount=5},
      {type="fluid", name="nullius-wastewater", amount=3}
    },
    main_product = "nullius-aluminum-plate"
  },
  {
    type = "recipe",
    name = "nullius-boxed-aluminum-plate",
    enabled = false,
    category = "machine-casting",
    subgroup = "boxed-aluminum-2",
    energy_required = 20,
    ingredients = {
      {type="item", name="nullius-box-aluminum-ingot", amount=6},
      {type="fluid", name="nullius-caustic-solution", amount=15}
    },
    results = {
      {type="item", name="nullius-box-aluminum-plate", amount=5},
      {type="fluid", name="nullius-wastewater", amount=15}
    },
    main_product = "nullius-box-aluminum-plate"
  },

  {
    type = "recipe",
    name = "nullius-iron-plate",
    localised_name = {"item-name.nullius-iron-plate"},
    enabled = false,
    show_amount_in_title = false,
    always_show_products = true,
    category = "machine-casting",
    energy_required = 3,
    ingredients = {
      {type = "item", name = "nullius-iron-ingot", amount = 4}
    },
    results = {
      {type = "item", name = "nullius-iron-plate", amount = 3}
    },
  },
  {
    type = "recipe",
    name = "nullius-iron-plate-2",
    localised_name = {"recipe-name.nullius-iron-plate-2"},
    hide_from_signal_gui = false,
    icons = {
      {
        icon = "__base__/graphics/icons/iron-plate.png",
        icon_size = 64,
        
        tint = {r=0.75, g=0.85, b=0.95}
      },
      {
        icon = "__angelspetrochemgraphics__/graphics/icons/molecules/hydrogen-chloride.png",
        icon_size = 72,
        scale = 0.16,
        shift = {11, -12}
      }
    },
    enabled = false,
    category = "machine-casting",
    energy_required = 3,
    ingredients = {
      {type="item", name="nullius-iron-ingot", amount=6},
      {type="fluid", name="nullius-acid-hydrochloric", amount=3}
    },
    results = {
      {type="item", name="nullius-iron-plate", amount=5},
      {type="fluid", name="nullius-sludge", amount=1}
    },
    main_product = "nullius-iron-plate"
  },
  {
    type = "recipe",
    name = "nullius-boxed-iron-plate",
    enabled = false,
    category = "machine-casting",
    subgroup = "boxed-iron",
    energy_required = 15,
    ingredients = {
      {type="item", name="nullius-box-iron-ingot", amount=6},
      {type="fluid", name="nullius-acid-hydrochloric", amount=15}
    },
    results = {
      {type="item", name="nullius-box-iron-plate", amount=5},
      {type="fluid", name="nullius-sludge", amount=5}
    },
    main_product = "nullius-box-iron-plate"
  },

  {
    type = "recipe",
    name = "nullius-steel-plate",
    localised_name = {"item-name.nullius-steel-plate"},
    enabled = false,
    show_amount_in_title = false,
    always_show_products = true,
    category = "machine-casting",
    energy_required = 4,
    ingredients = {
      {type = "item", name = "nullius-steel-ingot", amount = 4}
    },
    results = {
      {type = "item", name = "nullius-steel-plate", amount = 3}
    }
  },
  {
    type = "recipe",
    name = "nullius-steel-plate-2",
    localised_name = {"recipe-name.nullius-steel-plate-2"},
    hide_from_signal_gui = false,
    icons = {
      {
        icon = "__angelssmeltinggraphics__/graphics/icons/plate-steel.png",
        icon_size = 32
      },
      {
        icon = "__angelspetrochemgraphics__/graphics/icons/molecules/sulfuric-acid.png",
        icon_size = 72,
        scale = 0.18,
        shift = {10, -11}
      }
    },
    enabled = false,
    category = "machine-casting",
    energy_required = 4,
    ingredients = {
      {type="item", name="nullius-steel-ingot", amount=5},
      {type="fluid", name="nullius-acid-sulfuric", amount=2}
    },
    results = {
      {type="item", name="nullius-steel-plate", amount=4},
      {type="fluid", name="nullius-sludge", amount=1}
    },
    main_product = "nullius-steel-plate"
  },
  {
    type = "recipe",
    name = "nullius-boxed-steel-plate",
    enabled = false,
    category = "machine-casting",
    subgroup = "boxed-steel",
    energy_required = 20,
    ingredients = {
      {type="item", name="nullius-box-steel-ingot", amount=5},
      {type="fluid", name="nullius-acid-sulfuric", amount=10}
    },
    results = {
      {type="item", name="nullius-box-steel-plate", amount=4},
      {type="fluid", name="nullius-sludge", amount=5}
    },
    main_product = "nullius-box-steel-plate"
  },

  {
    type = "item",
    name = "nullius-iron-sheet",
    icon = "__angelssmeltinggraphics__/graphics/icons/roll-iron.png",
    icon_size = 64,
    
    subgroup = "iron-product",
    order = "nullius-d",
    stack_size = 100
  },
  {
    type = "item",
    name = "nullius-steel-sheet",
    order = "nullius-f",
    icon = "__angelssmeltinggraphics__/graphics/icons/roll-steel.png",
    icon_size = 64,
    
    subgroup = "steel-product",
    stack_size = 100
  },
  {
    type = "item",
    name = "nullius-aluminum-sheet",
    order = "nullius-e",
    icon = "__angelssmeltinggraphics__/graphics/icons/roll-aluminium.png",
    icon_size = 64,
    
    subgroup = "aluminum-product",
    order = "nullius-h",
    stack_size = 100
  },
  {
    type = "item",
    name = "nullius-copper-sheet",
    icon = "__angelssmeltinggraphics__/graphics/icons/roll-copper.png",
    icon_size = 64,
    
    subgroup = "copper",
    order = "nullius-f",
    stack_size = 100
  },
  {
    type = "recipe",
    name = "nullius-iron-sheet",
    localised_name = {"item-name.nullius-iron-sheet"},
    enabled = false,
    category = "hand-casting",
    always_show_made_in = true,
    show_amount_in_title = false,
    always_show_products = true,
    energy_required = 5,
    ingredients = {
      {type = "item", name = "nullius-iron-plate", amount = 5}
    },
    results = {
      {type = "item", name = "nullius-iron-sheet", amount = 6}
    }
  },
  {
    type = "recipe",
    name = "nullius-iron-sheet-2",
    localised_name = {"recipe-name.nullius-iron-sheet-2"},
    hide_from_signal_gui = false,
    icons = {
      {
        icon = "__angelssmeltinggraphics__/graphics/icons/roll-iron.png",
        icon_size = 64,
        
      },
      {
        icon = "__base__/graphics/icons/fluid/lubricant.png",
        icon_size = 64,
        
        scale = 0.25,
        shift = {12, -10}
      }
    },
    enabled = false,
    show_amount_in_title = false,
    always_show_products = true,
    allow_decomposition = false,
    allow_as_intermediate = false,
    category = "machine-casting",
    energy_required = 4,
    ingredients = {
      {type="item", name="nullius-iron-plate", amount=6},
      {type="fluid", name="nullius-lubricant", amount=1}
    },
    results = {
      {type = "item", name = "nullius-iron-sheet", amount = 8}
    }
  },
  {
    type = "recipe",
    name = "nullius-boxed-iron-sheet",
    enabled = false,
    show_amount_in_title = false,
    always_show_products = true,
    allow_decomposition = false,
    allow_as_intermediate = false,
    category = "machine-casting",
    subgroup = "boxed-iron",
    energy_required = 20,
    ingredients = {
      {type="item", name="nullius-box-iron-plate", amount=6},
      {type="fluid", name="nullius-lubricant", amount=5}
    },
    results = {
      {type = "item", name = "nullius-box-iron-sheet", amount = 8}
    }
  },

  {
    type = "recipe",
    name = "nullius-steel-sheet",
    localised_name = {"item-name.nullius-steel-sheet"},
    enabled = false,
    category = "hand-casting",
    always_show_made_in = true,
    show_amount_in_title = false,
    always_show_products = true,
    energy_required = 5,
    ingredients = {
      {type = "item", name = "nullius-steel-plate", amount = 5}
    },
    results = {
      {type = "item", name = "nullius-steel-sheet", amount = 6}
    }
  },
  {
    type = "recipe",
    name = "nullius-steel-sheet-2",
    localised_name = {"recipe-name.nullius-steel-sheet-2"},
    hide_from_signal_gui = false,
    icons = {
      {
        icon = "__angelssmeltinggraphics__/graphics/icons/roll-steel.png",
        icon_size = 64,
        
      },
      {
        icon = "__base__/graphics/icons/fluid/lubricant.png",
        icon_size = 64,
        
        scale = 0.25,
        shift = {12, -10}
      }
    },
    enabled = false,
    show_amount_in_title = false,
    always_show_products = true,
    allow_decomposition = false,
    allow_as_intermediate = false,
    category = "machine-casting",
    energy_required = 5,
    ingredients = {
      {type="item", name="nullius-steel-plate", amount=5},
      {type="fluid", name="nullius-lubricant", amount=2}
    },
    results = {
      {type = "item", name = "nullius-steel-sheet", amount = 7}
    }
  },
  {
    type = "recipe",
    name = "nullius-boxed-steel-sheet",
    enabled = false,
    show_amount_in_title = false,
    always_show_products = true,
    allow_decomposition = false,
    allow_as_intermediate = false,
    category = "machine-casting",
    subgroup = "boxed-steel",
    energy_required = 25,
    ingredients = {
      {type="item", name="nullius-box-steel-plate", amount=5},
      {type="fluid", name="nullius-lubricant", amount=10}
    },
    results = {
      {type = "item", name = "nullius-box-steel-sheet", amount = 7}
    }
  },

  {
    type = "recipe",
    name = "nullius-aluminum-sheet",
    localised_name = {"item-name.nullius-aluminum-sheet"},
    enabled = false,
    category = "hand-casting",
    always_show_made_in = true,
    show_amount_in_title = false,
    always_show_products = true,
    energy_required = 4,
    ingredients = {
      {type = "item", name = "nullius-aluminum-plate", amount = 4}
    },
    results = {
      {type = "item", name = "nullius-aluminum-sheet", amount = 5}
    }
  },
  {
    type = "recipe",
    name = "nullius-aluminum-sheet-2",
    localised_name = {"recipe-name.nullius-aluminum-sheet-2"},
    hide_from_signal_gui = false,
    icons = {
      {
        icon = "__angelssmeltinggraphics__/graphics/icons/roll-aluminium.png",
        icon_size = 64,
        
      },
      {
        icon = "__base__/graphics/icons/fluid/lubricant.png",
        icon_size = 64,
        
        scale = 0.25,
        shift = {12, -10}
      }
    },
    enabled = false,
    show_amount_in_title = false,
    always_show_products = true,
    allow_decomposition = false,
    allow_as_intermediate = false,
    category = "machine-casting",
    energy_required = 4,
    ingredients = {
      {type="item", name="nullius-aluminum-plate", amount=5},
      {type="fluid", name="nullius-lubricant", amount=1}
    },
    results = {
      {type = "item", name = "nullius-aluminum-sheet", amount = 7}
    }
  },
  {
    type = "recipe",
    name = "nullius-boxed-aluminum-sheet",
    enabled = false,
    show_amount_in_title = false,
    always_show_products = true,
    allow_decomposition = false,
    allow_as_intermediate = false,
    category = "machine-casting",
    subgroup = "boxed-aluminum-2",
    energy_required = 20,
    ingredients = {
      {type="item", name="nullius-box-aluminum-plate", amount=5},
      {type="fluid", name="nullius-lubricant", amount=5}
    },
    results = {
      {type = "item", name = "nullius-box-aluminum-sheet", amount = 7}
    }
  },

  {
    type = "item",
    name = "nullius-iron-gear",
    icons = {{
      icon = "__base__/graphics/icons/iron-gear-wheel.png",
      icon_size = 64,
      
      tint = {r=0.8, g=0.9, b=1}
    }},
    subgroup = "iron-product",
    order = "nullius-k",
    stack_size = 100
  },
  {
    type = "recipe",
    name = "nullius-iron-gear",
    enabled = false,
    category = "small-crafting",
    always_show_made_in = true,
    show_amount_in_title = false,
    always_show_products = true,
    energy_required = 4,
    ingredients = {
      {type = "item", name = "nullius-iron-plate", amount = 2},
      {type = "item", name = "nullius-iron-rod", amount = 1}
    },
    results = {
      {type = "item", name = "nullius-iron-gear", amount = 2}
    }
  },
  {
    type = "recipe",
    name = "nullius-boxed-iron-gear",
    enabled = false,
    category = "large-assembly",
    subgroup = "boxed-iron",
    always_show_made_in = true,
    show_amount_in_title = false,
    always_show_products = true,
    energy_required = 20,
    ingredients = {
      {type = "item", name = "nullius-box-iron-plate", amount = 2},
      {type = "item", name = "nullius-box-iron-rod", amount = 1}
    },
    results = {
      {type = "item", name = "nullius-box-iron-gear", amount = 2}
    }
  },

  {
    type = "item",
    name = "nullius-steel-gear",
    icon = ICONPATH .. "steel-gear.png",
    icon_size = 64,
    subgroup = "steel-product",
    order = "nullius-k",
    stack_size = 100
  },
  {
    type = "recipe",
    name = "nullius-steel-gear",
    enabled = false,
    category = "small-crafting",
    always_show_made_in = true,
    show_amount_in_title = false,
    always_show_products = true,
    energy_required = 6,
    ingredients = {
      {type = "item", name = "nullius-steel-plate", amount = 2},
      {type = "item", name = "nullius-steel-rod", amount = 1}
    },
    results = {
      {type = "item", name = "nullius-steel-gear", amount = 2}
    }
  },
  {
    type = "recipe",
    name = "nullius-boxed-steel-gear",
    enabled = false,
    category = "large-assembly",
    subgroup = "boxed-steel",
    always_show_made_in = true,
    show_amount_in_title = false,
    always_show_products = true,
    energy_required = 30,
    ingredients = {
      {type = "item", name = "nullius-box-steel-plate", amount = 2},
      {type = "item", name = "nullius-box-steel-rod", amount = 1}
    },
    results = {
      {type = "item", name = "nullius-box-steel-gear", amount = 2}
    }
  },

  {
    type = "item",
    name = "nullius-iron-wire",
    icons = {
      {
        icon = "__angelssmeltinggraphics__/graphics/icons/wire-coil-silver.png",
        icon_size = 64,
        
        tint = {0.8, 0.825, 0.85}
      }
    },
    subgroup = "iron-product",
    order = "nullius-e",
    stack_size = 200
  },
  {
    type = "item",
    name = "nullius-copper-wire",
    icons = {{
      icon = "__angelssmeltinggraphics__/graphics/icons/wire-coil-copper.png",
      icon_size = 64,
      
    }},
    subgroup = "copper",
    order = "nullius-g",
    stack_size = 200
  },
  {
    type = "item",
    name = "nullius-aluminum-wire",
    icons = {
      {
        icon = "__angelssmeltinggraphics__/graphics/icons/wire-coil-gold.png",
        icon_size = 64,
        
        tint = {r=0.8, g=0.9, b=1}
      }
    },
    subgroup = "aluminum-product",
    order = "nullius-i",
    stack_size = 200
  },
  {
    type = "item",
    name = "nullius-aluminum-powder",
    icons = {
      {
        icon = "__angelssmeltinggraphics__/graphics/icons/powder-aluminium.png",
        icon_size = 64,
        
      }
    },
    subgroup = "aluminum-product",
    order = "nullius-j",
    stack_size = 200
  },
  {
    type = "item",
    name = "nullius-steel-wire",
    icons = {
      {
        icon = "__angelssmeltinggraphics__/graphics/icons/wire-coil-platinum.png",
        icon_size = 64,
        
        tint = {r=0.75, g=0.875, b=1}
      }
    },
    subgroup = "steel-product",
    order = "nullius-h",
    stack_size = 200
  },
  {
    type = "item",
    name = "nullius-steel-cable",
    icon = "__angelssmeltinggraphics__/graphics/icons/wire-silver.png",
    icon_size = 32,
    subgroup = "steel-product",
    order = "nullius-i",
    stack_size = 100
  },
  {
    type = "recipe",
    name = "nullius-iron-wire",
    localised_name = {"item-name.nullius-iron-wire"},
    enabled = false,
    category = "hand-casting",
    always_show_made_in = true,
    show_amount_in_title = false,
    always_show_products = true,
    energy_required = 4,
    ingredients = {
      {type = "item", name = "nullius-iron-rod", amount = 3}
    },
    results = {
      {type = "item", name = "nullius-iron-wire", amount = 4}
    }
  },
  {
    type = "recipe",
    name = "nullius-iron-wire-2",
    localised_name = {"recipe-name.nullius-iron-wire-2"},
    hide_from_signal_gui = false,
    icons = {
      {
        icon = "__angelssmeltinggraphics__/graphics/icons/wire-coil-silver.png",
        icon_size = 64,
        
        tint = {0.8, 0.825, 0.85}
      },
      {
        icon = "__base__/graphics/icons/fluid/lubricant.png",
        icon_size = 64,
        
        scale = 0.25,
        shift = {12, -10}
      }
    },
    enabled = false,
    show_amount_in_title = false,
    always_show_products = true,
    allow_decomposition = false,
    allow_as_intermediate = false,
    category = "machine-casting",
    energy_required = 5,
    ingredients = {
      {type="item", name="nullius-iron-rod", amount=5},
      {type="fluid", name="nullius-lubricant", amount=1}
    },
    results = {
      {type = "item", name = "nullius-iron-wire", amount = 8}
    }
  },
  {
    type = "recipe",
    name = "nullius-boxed-iron-wire",
    enabled = false,
    show_amount_in_title = false,
    always_show_products = true,
    allow_decomposition = false,
    allow_as_intermediate = false,
    category = "machine-casting",
    subgroup = "boxed-iron",
    energy_required = 25,
    ingredients = {
      {type="item", name="nullius-box-iron-rod", amount=5},
      {type="fluid", name="nullius-lubricant", amount=5}
    },
    results = {
      {type = "item", name = "nullius-box-iron-wire", amount = 8}
    }
  },

  {
    type = "recipe",
    name = "nullius-aluminum-wire",
    localised_name = {"item-name.nullius-aluminum-wire"},
    enabled = false,
    category = "hand-casting",
    always_show_made_in = true,
    show_amount_in_title = false,
    always_show_products = true,
    energy_required = 5,
    ingredients = {
      {type = "item", name = "nullius-aluminum-rod", amount = 5}
    },
    results = {
      {type = "item", name = "nullius-aluminum-wire", amount = 7}
    }
  },
  {
    type = "recipe",
    name = "nullius-aluminum-wire-2",
    localised_name = {"recipe-name.nullius-aluminum-wire-2"},
    hide_from_signal_gui = false,
    icons = {
      {
        icon = "__angelssmeltinggraphics__/graphics/icons/wire-coil-gold.png",
        icon_size = 64,
        
        tint = {r=0.8, g=0.9, b=1}
      },
      {
        icon = "__base__/graphics/icons/fluid/lubricant.png",
        icon_size = 64,
        
        scale = 0.25,
        shift = {12, -10}
      }
    },
    enabled = false,
    show_amount_in_title = false,
    always_show_products = true,
    allow_decomposition = false,
    allow_as_intermediate = false,
    category = "machine-casting",
    energy_required = 4,
    ingredients = {
      {type="item", name="nullius-aluminum-rod", amount=6},
      {type="fluid", name="nullius-lubricant", amount=1}
    },
    results = {
      {type = "item", name = "nullius-aluminum-wire", amount = 10}
    }
  },
  {
    type = "recipe",
    name = "nullius-boxed-aluminum-wire",
    enabled = false,
    show_amount_in_title = false,
    always_show_products = true,
    allow_decomposition = false,
    allow_as_intermediate = false,
    category = "machine-casting",
    subgroup = "boxed-aluminum-2",
    energy_required = 20,
    ingredients = {
      {type="item", name="nullius-box-aluminum-rod", amount=6},
      {type="fluid", name="nullius-lubricant", amount=5}
    },
    results = {
      {type = "item", name = "nullius-box-aluminum-wire", amount = 10}
    }
  },
  {
    type = "recipe",
    name = "nullius-aluminum-powder",
    enabled = false,
    always_show_made_in = true,
    show_amount_in_title = false,
    always_show_products = true,
    category = "ore-crushing",
    energy_required = 3,
    ingredients = {
	  {type="item", name="nullius-aluminum-wire", amount=2},
      {type="fluid", name="nullius-nitrogen", amount=12}
    },
    results = {
      {type = "item", name = "nullius-aluminum-powder", amount = 3}
    }
  },
  {
    type = "recipe",
    name = "nullius-boxed-aluminum-powder",
    enabled = false,
    show_amount_in_title = false,
    always_show_products = true,
    allow_decomposition = false,
    allow_as_intermediate = false,
    category = "ore-crushing",
    subgroup = "boxed-aluminum-2",
    energy_required = 15,
    ingredients = {
      {type="item", name="nullius-box-aluminum-wire", amount=2},
      {type="fluid", name="nullius-nitrogen", amount=60}
    },
    results = {
      {type = "item", name = "nullius-box-aluminum-powder", amount = 3}
    }
  },

  {
    type = "recipe",
    name = "nullius-steel-wire",
    enabled = false,
    show_amount_in_title = false,
    always_show_products = true,
    category = "machine-casting",
    energy_required = 3,
    ingredients = {
      {type="item", name="nullius-steel-rod", amount=2},
      {type="fluid", name="nullius-lubricant", amount=1}
    },
    results = {
      {type = "item", name = "nullius-steel-wire", amount = 3}
    }
  },
  {
    type = "recipe",
    name = "nullius-boxed-steel-wire",
    enabled = false,
    show_amount_in_title = false,
    always_show_products = true,
    category = "machine-casting",
    subgroup = "boxed-steel",
    energy_required = 15,
    ingredients = {
      {type="item", name="nullius-box-steel-rod", amount=2},
      {type="fluid", name="nullius-lubricant", amount=5}
    },
    results = {
      {type = "item", name = "nullius-box-steel-wire", amount = 3}
    }
  },
  {
    type = "recipe",
    name = "nullius-steel-cable",
    enabled = false,
    show_amount_in_title = false,
    always_show_products = true,
    category = "large-fluid-assembly",
    energy_required = 5,
    ingredients = {
      {type="item", name="nullius-steel-wire", amount=7},
      {type="fluid", name="nullius-lubricant", amount=2, fluidbox_index=1}
    },
    results = {
      {type = "item", name = "nullius-steel-cable", amount = 2}
    }
  },
  {
    type = "recipe",
    name = "nullius-boxed-steel-cable",
    enabled = false,
    show_amount_in_title = false,
    always_show_products = true,
    category = "huge-fluid-assembly",
    subgroup = "boxed-steel",
    energy_required = 25,
    ingredients = {
      {type="item", name="nullius-box-steel-wire", amount=7},
      {type="fluid", name="nullius-lubricant", amount=10, fluidbox_index=1}
    },
    results = {
      {type = "item", name = "nullius-box-steel-cable", amount = 2}
    }
  },
  {
    type = "recipe",
    name = "nullius-insulated-wire-1",
    localised_name = {"", {"item-name.nullius-insulated-wire"}, " ", tostring(1)},
    enabled = false,
    category = "small-crafting",
    always_show_made_in = true,
    show_amount_in_title = false,
    always_show_products = true,
    energy_required = 6,
    ingredients = {
      {type = "item", name = "nullius-aluminum-wire", amount = 3},
      {type = "item", name = "nullius-rubber", amount = 2}
    },
    results = {
      {type = "item", name = "copper-cable", amount = 4}
    }
  },
  {
    type = "recipe",
    name = "nullius-boxed-insulated-wire-1",
    localised_name = {"", {"item-name.nullius-box", {"item-name.nullius-insulated-wire"}}, " ", tostring(1)},
    enabled = false,
    category = "large-assembly",
    subgroup = "boxed-electrical",
    always_show_made_in = true,
    show_amount_in_title = false,
    always_show_products = true,
    energy_required = 30,
    ingredients = {
      {type = "item", name = "nullius-box-aluminum-wire", amount = 3},
      {type = "item", name = "nullius-box-rubber", amount = 2}
    },
    results = {
      {type = "item", name = "nullius-box-insulated-wire", amount = 4}
    }
  },
  {
    type = "recipe",
    name = "nullius-insulated-wire-2",
    localised_name = {"", {"item-name.nullius-insulated-wire"}, " ", tostring(2)},
    hide_from_signal_gui = false,
	  icons = {
      {
        icon = "__angelssmeltinggraphics__/graphics/icons/wire-coil-tin.png",
        icon_size = 64,
        
      },
      {
		icon = "__angelssmeltinggraphics__/graphics/icons/ingot-copper.png",
        icon_size = 64,
        
        scale = 0.25,
        shift = {12, -10}
      }
    },
    enabled = false,
    always_show_made_in = true,
    show_amount_in_title = false,
    always_show_products = true,
    category = "small-crafting",
    energy_required = 4,
    ingredients = {
      {type = "item", name = "nullius-copper-wire", amount = 1},
      {type = "item", name = "nullius-rubber", amount = 2}
    },
    results = {
      {type = "item", name = "copper-cable", amount = 6}
    }
  },
  {
    type = "recipe",
    name = "nullius-boxed-insulated-wire-2",
    localised_name = {"", {"item-name.nullius-box", {"item-name.nullius-insulated-wire"}}, " ", tostring(2)},
	icons = {
      {
        icon = ICONPATH .. "crate.png",
        icon_size = 64
      },
      {
        icon = "__angelssmeltinggraphics__/graphics/icons/wire-coil-tin.png",
        icon_size = 64,
        
		scale = 0.45
      },
      {
		icon = "__angelssmeltinggraphics__/graphics/icons/ingot-copper.png",
        icon_size = 64,
        
        scale = 0.22,
        shift = {11, -9}
      }
    },
    enabled = false,
    always_show_made_in = true,
    show_amount_in_title = false,
    always_show_products = true,
    category = "large-assembly",
    subgroup = "boxed-electrical",
    energy_required = 20,
    ingredients = {
      {type = "item", name = "nullius-box-copper-wire", amount = 1},
      {type = "item", name = "nullius-box-rubber", amount = 2}
    },
    results = {
      {type = "item", name = "nullius-box-insulated-wire", amount = 6}
    }
  },

  {
    type = "item",
    name = "nullius-optical-cable",
    icons = {{
      icon = "__angelssmeltinggraphics__/graphics/icons/wire-coil-gold.png",
      icon_size = 64,
      
      tint = {1, 0.6, 1}
    }},
    subgroup = "electronic-intermediate",
    order = "nullius-e",
    stack_size = 100
  },
  {
    type = "recipe",
    name = "nullius-optical-cable",
    enabled = false,
    category = "small-fluid-assembly",
    energy_required = 3,
    ingredients = {
      {type="item", name="nullius-red-wire", amount=2},
      {type="item", name="nullius-glass-fiber", amount=1},
      {type="item", name="nullius-plastic", amount=1},
      {type="fluid", name="nullius-epoxy", amount=1},
      {type="fluid", name="nullius-argon", amount=1}
    },
    results = {
      {type = "item", name = "nullius-optical-cable", amount = 1}
    }
  },
  {
    type = "recipe",
    name = "nullius-boxed-optical-cable",
    enabled = false,
    category = "medium-only-assembly",
    subgroup = "boxed-electrical",
    energy_required = 15,
    ingredients = {
      {type="item", name="nullius-box-red-wire", amount=2},
      {type="item", name="nullius-box-glass-fiber", amount=1},
      {type="item", name="nullius-box-plastic", amount=1},
      {type="fluid", name="nullius-epoxy", amount=5},
      {type="fluid", name="nullius-argon", amount=5}
    },
    results = {
      {type = "item", name = "nullius-box-optical-cable", amount = 1}
    }
  },

  {
    type = "item",
    name = "nullius-motor-1",
    icon = ICONPATH .. "motor1.png",
    icon_size = 64,
    subgroup = "mechanical-intermediate",
    order = "nullius-db",
    stack_size = 50
  },
  {
    type = "item",
    name = "nullius-motor-2",
    icon = "__base__/graphics/icons/electric-engine-unit.png",
    icon_size = 64,
    
    subgroup = "mechanical-intermediate",
    order = "nullius-dc",
    stack_size = 50
  },
  {
    type = "item",
    name = "nullius-motor-3",
    icon = ICONPATH .. "motor3.png",
    icon_size = 64,
    subgroup = "mechanical-intermediate",
    order = "nullius-dd",
    stack_size = 50
  },
  {
    type = "recipe",
    name = "nullius-motor-1",
    enabled = false,
    category = "medium-crafting",
    always_show_made_in = true,
    energy_required = 8,
    ingredients = {
      {type = "item", name = "nullius-iron-wire", amount = 2},
      {type = "item", name = "nullius-iron-plate", amount = 1},
      {type = "item", name = "nullius-plastic", amount = 1},
      {type = "item", name = "nullius-iron-rod", amount = 1}
    },
    results = {
      {type = "item", name = "nullius-motor-1", amount = 1}
    }
  },
  {
    type = "recipe",
    name = "nullius-boxed-motor-1",
    enabled = false,
    category = "huge-assembly",
    subgroup = "boxed-mechanical",
    order = "nullius-cb",
    always_show_made_in = true,
    energy_required = 30,
    ingredients = {
      {type = "item", name = "nullius-box-insulated-wire", amount = 1},
      {type = "item", name = "nullius-box-iron-plate", amount = 1},
      {type = "item", name = "nullius-box-iron-rod", amount = 1}
    },
    results = {
      {type = "item", name = "nullius-box-motor-1", amount = 1}
    }
  },
  {
    type = "recipe",
    name = "nullius-motor-2",
    enabled = false,
    category = "large-fluid-assembly",
    energy_required = 12,
    ingredients = {
      {type="item", name="copper-cable", amount=2},
      {type="item", name="nullius-steel-plate", amount=1},
      {type="item", name="nullius-steel-gear", amount=1},
      {type="item", name="nullius-steel-rod", amount=1},
      {type="fluid", name="nullius-lubricant", amount=5, fluidbox_index=1}
    },
    results = {
      {type = "item", name = "nullius-motor-2", amount = 1}
    }
  },
  {
    type = "recipe",
    name = "nullius-boxed-motor-2",
    enabled = false,
    category = "huge-fluid-assembly",
    subgroup = "boxed-mechanical",
    order = "nullius-cc",
    energy_required = 60,
    ingredients = {
      {type="item", name="nullius-box-insulated-wire", amount=3},
      {type="item", name="nullius-box-steel-plate", amount=2},
      {type="item", name="nullius-box-steel-gear", amount=1},
      {type="item", name="nullius-box-steel-rod", amount=1},
      {type="fluid", name="nullius-lubricant", amount=30, fluidbox_index=1}
    },
    results = {
      {type = "item", name = "nullius-box-motor-2", amount = 1}
    }
  },
  {
    type = "recipe",
    name = "nullius-motor-3",
    enabled = false,
    category = "large-fluid-assembly",
    energy_required = 16,
    ingredients = {
      {type="item", name="nullius-motor-2", amount=1},
      {type="item", name="nullius-aluminum-wire", amount=6},
      {type="item", name="nullius-heat-pipe-2", amount=1},
      {type="item", name="nullius-titanium-plate", amount=3},
      {type="item", name="nullius-textile", amount=2},
      {type="item", name="nullius-bearing", amount=1},
      {type="fluid", name="nullius-epoxy", amount=5, fluidbox_index=1}
    },
    results = {
      {type = "item", name = "nullius-motor-3", amount = 1}
    }
  },
  {
    type = "recipe",
    name = "nullius-boxed-motor-3",
    enabled = false,
    category = "huge-fluid-assembly",
    subgroup = "boxed-mechanical",
    order = "nullius-cd",
    energy_required = 80,
    ingredients = {
      {type="item", name="nullius-box-motor-2", amount=1},
      {type="item", name="nullius-box-aluminum-wire", amount=6},
      {type="item", name="nullius-box-heat-pipe-2", amount=1},
      {type="item", name="nullius-box-titanium-plate", amount=3},
      {type="item", name="nullius-box-textile", amount=2},
      {type="item", name="nullius-box-bearing", amount=1},
      {type="fluid", name="nullius-epoxy", amount=25, fluidbox_index=1}
    },
    results = {
      {type = "item", name = "nullius-box-motor-3", amount = 1}
    }
  },

  {
    type = "item",
    name = "nullius-refractory-brick",
    icon = "__angelssmeltinggraphics__/graphics/icons/brick-clay.png",
    icon_size = 32,
    subgroup = "masonry",
    order = "nullius-c",
    stack_size = 500,
    place_as_tile = {
      result = "nullius-tile-clay-brick",
      condition_size = 1,
      condition = { layers = {water_tile=true} }
    }
  },
  {
    type = "recipe",
    name = "nullius-refractory-brick",
    localised_name = {"", {"item-name.nullius-refractory-brick"}, " ", tostring(1)},
    order = "nullius-cb",
    enabled = false,
    show_amount_in_title = false,
    always_show_products = true,
    category = "dry-smelting",
    energy_required = 15,
    ingredients = {
      {type = "item", name = "nullius-silica", amount = 3}
    },
    results = {
      {type = "item", name = "nullius-refractory-brick", amount = 5}
    }
  },
  {
    type = "recipe",
    name = "nullius-refractory-brick-2",
    localised_name = {"", {"item-name.nullius-refractory-brick"}, " ", tostring(2)},
    hide_from_signal_gui = false,
    icons = {
      {
        icon = "__angelssmeltinggraphics__/graphics/icons/brick-clay.png",
        icon_size = 32
      },
      {
        icon = "__angelssmeltinggraphics__/graphics/icons/powder-platinum.png",
        icon_size = 64,
        
        scale = 0.2,
        shift = {-10, -12}
      }
    },
    order = "nullius-cc",
    enabled = false,
    show_amount_in_title = false,
    always_show_products = true,
    category = "dry-smelting",
    energy_required = 8,
    ingredients = {
      {type = "item", name = "nullius-ceramic-powder", amount = 2}
    },
    results = {
      {type = "item", name = "nullius-refractory-brick", amount = 12}
    }
  },
  {
    type = "recipe",
    name = "nullius-boxed-refractory-brick",
    enabled = false,
    show_amount_in_title = false,
    always_show_products = true,
    category = "bulk-smelting",
    subgroup = "boxed-terrain",
    energy_required = 8,
    ingredients = {
      {type = "item", name = "nullius-box-ceramic-powder", amount = 2}
    },
    results = {
      {type = "item", name = "nullius-box-refractory-brick", amount = 6}
    }
  },

  {
    type = "item",
    name = "nullius-crucible",
    icons = {{
      icon = "__angelssmeltinggraphics__/graphics/icons/silicon-crucible.png",
      icon_size = 32,
      tint = {1, 1, 1, 0.6}
    }},
    subgroup = "mechanical-intermediate",
    order = "nullius-f",
    stack_size = 50
  },
  {
    type = "recipe",
    name = "nullius-crucible",
	  localised_name = {"", {"item-name.nullius-crucible"}, " ", tostring(1)},
    enabled = false,
    show_amount_in_title = false,
    always_show_products = true,
    order = "nullius-fb",
    category = "machine-casting",
    energy_required = 50,
    ingredients = {
      {type = "item", name = "nullius-silica", amount = 12}
    },
    results = {
      {type = "item", name = "nullius-crucible", amount = 1}
    }
  },
  {
    type = "recipe",
    name = "nullius-crucible-2",
    localised_name = {"", {"item-name.nullius-crucible"}, " ", tostring(2)},
    hide_from_signal_gui = false,
    icons = {
      {
        icon = "__angelssmeltinggraphics__/graphics/icons/silicon-crucible.png",
        icon_size = 32,
        tint = {1, 1, 1, 0.6}
      },
      {
        icon = "__angelssmeltinggraphics__/graphics/icons/powder-platinum.png",
        icon_size = 64,
        
        scale = 0.2,
        shift = {-10, -12}
      }
    },
    enabled = false,
    show_amount_in_title = false,
    always_show_products = true,
    order = "nullius-fc",
    category = "machine-casting",
    energy_required = 75,
    ingredients = {
      {type="item", name="nullius-box-alumina", amount=3},
      {type="item", name="nullius-box-ceramic-powder", amount=1},
	  {type="item", name="nullius-mortar", amount=2},
	  {type="item", name="nullius-graphite", amount=1},
      {type="fluid", name="nullius-water", amount=10}
    },
    results = {
      {type="item", name="nullius-crucible", amount=8},
      {type="fluid", name="nullius-sludge", amount=6}
    },
    main_product = "nullius-crucible"
  },

  {
    type = "item",
    name = "nullius-aluminum-carbide",
    icon = "__angelssmeltinggraphics__/graphics/icons/powder-lead.png",
    icon_size = 64,
    
    subgroup = "aluminum-ingot",
    order = "nullius-f",
    stack_size = 100
  },
  {
    type = "item",
    name = "nullius-alumina",
    icon = "__angelssmeltinggraphics__/graphics/icons/solid-aluminium-oxide.png",
    icon_size = 32,
    subgroup = "aluminum-ingot",
    order = "nullius-e",
    stack_size = 100
  },
  {
    type = "recipe",
    name = "nullius-bauxite-flotation-1",
    localised_name = {"", {"item-name.nullius-aluminum-hydroxide"}, " ", tostring(1)},
    enabled = false,
    category = "ore-flotation",
	  subgroup = "alumina",
    order = "nullius-db",
    energy_required = 5,
    ingredients = {
      {type="item", name="nullius-crushed-bauxite", amount=4},
      {type="fluid", name="nullius-caustic-solution", amount=30, fluidbox_index=1}
    },
    results = {
      {type="item", name="nullius-aluminum-hydroxide", amount=3},
      {type="fluid", name="nullius-sludge", amount=12, fluidbox_index=1}
    },
    main_product = "nullius-aluminum-hydroxide"
  },
  {
    type = "recipe",
    name = "nullius-boxed-bauxite-flotation-1",
    localised_name = {"", {"item-name.nullius-box", {"item-name.nullius-aluminum-hydroxide"}}, " ", tostring(1)},
    enabled = false,
    category = "ore-flotation",
    subgroup = "boxed-aluminum-1",
    order = "nullius-db",
    energy_required = 25,
    ingredients = {
      {type="item", name="nullius-box-crushed-bauxite", amount=4},
      {type="fluid", name="nullius-caustic-solution", amount=150, fluidbox_index=1}
    },
    results = {
      {type="item", name="nullius-box-aluminum-hydroxide", amount=3},
      {type="fluid", name="nullius-sludge", amount=60, fluidbox_index=1}
    },
    main_product = "nullius-box-aluminum-hydroxide"
  },
  {
    type = "recipe",
    name = "nullius-bauxite-flotation-2",
    localised_name = {"", {"item-name.nullius-aluminum-hydroxide"}, " ", tostring(2)},
    hide_from_signal_gui = false,
    icons = {
      {
        icon = "__angelssmeltinggraphics__/graphics/icons/solid-aluminium-hydroxide.png",
        icon_size = 32
      },
      {
        icon = "__angelspetrochemgraphics__/graphics/icons/molecules/sulfuric-acid.png",
        icon_size = 72,
        scale = 0.19,
        shift = {10, -11}
      }
    },
    enabled = false,
    category = "ore-flotation",
	  subgroup = "alumina",
    order = "nullius-dc",
    energy_required = 7,
    ingredients = {
      {type="item", name="nullius-crushed-bauxite", amount=7},
      {type="fluid", name="nullius-caustic-solution", amount=40},
      {type="fluid", name="nullius-acid-sulfuric", amount=10}
    },
    results = {
      {type="item", name="nullius-aluminum-hydroxide", amount=6},
      {type="fluid", name="nullius-sludge", amount=25},
      {type="fluid", name="nullius-sulfur-dioxide", amount=2}
    },
    main_product = "nullius-aluminum-hydroxide"
  },
  {
    type = "recipe",
    name = "nullius-boxed-bauxite-flotation-2",
    localised_name = {"", {"item-name.nullius-box", {"item-name.nullius-aluminum-hydroxide"}}, " ", tostring(2)},
    icons = {
      {
        icon = ICONPATH .. "crate.png",
        icon_size = 64
      },
      {
        icon = "__angelssmeltinggraphics__/graphics/icons/solid-aluminium-hydroxide.png",
        icon_size = 32,
        scale = 0.9
      },
      {
        icon = "__angelspetrochemgraphics__/graphics/icons/molecules/sulfuric-acid.png",
        icon_size = 72,
        scale = 0.17,
        shift = {9, -10}
      }
    },
    enabled = false,
    category = "ore-flotation",
    subgroup = "boxed-aluminum-1",
    order = "nullius-dc",
    energy_required = 35,
    ingredients = {
      {type="item", name="nullius-box-crushed-bauxite", amount=7},
      {type="fluid", name="nullius-caustic-solution", amount=200},
      {type="fluid", name="nullius-acid-sulfuric", amount=50}
    },
    results = {
      {type="item", name="nullius-box-aluminum-hydroxide", amount=6},
      {type="fluid", name="nullius-sludge", amount=125},
      {type="fluid", name="nullius-sulfur-dioxide", amount=10}
    },
    main_product = "nullius-box-aluminum-hydroxide"
  },

  {
    type = "recipe",
    name = "nullius-alumina-1",
    localised_name = {"recipe-name.nullius-alumina-1"},
    enabled = false,
    show_amount_in_title = false,
    always_show_products = true,
    category = "dry-smelting",
	  subgroup = "alumina",
    order = "nullius-eb",
    energy_required = 2,
    ingredients = {
      {type = "item", name = "nullius-aluminum-hydroxide", amount = 4}
    },
    results = {
      {type = "item", name = "nullius-alumina", amount = 3}
    }
  },
  {
    type = "recipe",
    name = "nullius-alumina-2",
    localised_name = {"recipe-name.nullius-alumina-2"},
    hide_from_signal_gui = false,
    icons = {
      {
        icon = "__angelssmeltinggraphics__/graphics/icons/solid-aluminium-oxide.png",
        icon_size = 32
      },
      {
        icon = ICONPATH .. "fluid/purewater.png",
        icon_size = 64,
        scale = 0.25,
        shift = {12, -10}
      }
    },
    enabled = false,
    category = "wet-smelting",
	  subgroup = "alumina",
    order = "nullius-ec",
    energy_required = 2,
    ingredients = {
      {type="item", name="nullius-aluminum-hydroxide", amount=6},
      {type="fluid", name="nullius-water", amount=10}
    },
    results = {
      {type="item", name="nullius-alumina", amount=5},
      {type="fluid", name="nullius-wastewater", amount=30}
    },
    main_product = "nullius-alumina"
  },
  {
    type = "recipe",
    name = "nullius-boxed-alumina",
    enabled = false,
    category = "bulk-smelting",
    subgroup = "boxed-aluminum-1",
    order = "nullius-ec",
    energy_required = 2,
    ingredients = {
      {type="item", name="nullius-box-aluminum-hydroxide", amount=6},
      {type="fluid", name="nullius-water", amount=50}
    },
    results = {
      {type="item", name="nullius-box-alumina", amount=5},
      {type="fluid", name="nullius-wastewater", amount=150}
    },
    main_product = "nullius-box-alumina"
  },

  {
    type = "recipe",
    name = "nullius-aluminum-hydroxide",
    localised_name = {"recipe-name.nullius-aluminum-carbide-reprocessing"},
    icons = {
      {
        icon = "__angelssmeltinggraphics__/graphics/icons/solid-aluminium-hydroxide.png",
        icon_size = 32
      },
      {
        icon = "__angelssmeltinggraphics__/graphics/icons/powder-lead.png",
        icon_size = 64,
        
        scale = 0.2,
        shift = {10, -10}
      }
    },
    enabled = false,
    no_productivity = true,
    category = "basic-chemistry",
    order = "nullius-dd",
    crafting_machine_tint = {
      primary = data.raw.fluid["nullius-methane"].flow_color,
      secondary = data.raw.fluid["water"].flow_color
    },
    energy_required = 4,
    ingredients = {
      {type="item", name="nullius-aluminum-carbide", amount=6},
      {type="fluid", name="nullius-water", amount=80, fluidbox_index=2}
    },
    results = {
      {type="item", name="nullius-aluminum-hydroxide", amount=4},
      {type="fluid", name="nullius-methane", amount=80}
    },
    main_product = "nullius-aluminum-hydroxide"
  },
  {
    type = "recipe",
    name = "nullius-aluminum-ingot",
    localised_name = {"recipe-name.nullius-aluminum-ingot-1"},
    enabled = false,
    category = "dry-smelting",
    order = "nullius-gb",
    energy_required = 10,
    ingredients = {
      {type = "item", name = "nullius-alumina", amount = 9},
      {type = "item", name = "nullius-graphite", amount = 5}
    },
    results = {
      {type="item", name="nullius-aluminum-ingot", amount=3},
      {type="item", name="nullius-aluminum-carbide", amount=4}
    },
    main_product = "nullius-aluminum-ingot"
  },
  {
    type = "recipe",
    name = "nullius-aluminum-ingot-2",
    localised_name = {"recipe-name.nullius-aluminum-ingot-2"},
    hide_from_signal_gui = false,
    icons = {
      {
        icon = "__angelssmeltinggraphics__/graphics/icons/ingot-aluminium.png",
        icon_size = 64,
        
      },
      {
        icon = "__angelssmeltinggraphics__/graphics/icons/powder-lead.png",
        icon_size = 64,
        
        scale = 0.25,
        shift = {9, -9}
      }
    },
    enabled = false,
    category = "vent-smelting",
    order = "nullius-gc",
    energy_required = 25,
    ingredients = {
      {type = "item", name = "nullius-aluminum-carbide", amount = 5},
      {type = "item", name = "nullius-alumina", amount = 4}
    },
    results = {
      {type="item", name="nullius-aluminum-ingot", amount=9},
      {type="fluid", name="nullius-carbon-monoxide", amount=50}
    },
    main_product = "nullius-aluminum-ingot"
  },
  {
    type = "recipe",
    name = "nullius-boxed-aluminum-carbide",
    localised_name = {"", {"item-name.nullius-box", {"item-name.nullius-aluminum-carbide"}}, " ", tostring(1)},
	  icons = {
      {
        icon = ICONPATH .. "crate.png",
        icon_size = 64
      },
      {
        icon = "__angelssmeltinggraphics__/graphics/icons/powder-lead.png",
		    icon_size = 64,
		    scale = 0.45
      },
      {
        icon = "__angelssmeltinggraphics__/graphics/icons/solid-aluminium-oxide.png",
        icon_size = 32,
		    scale = 0.5,
        shift = {-6, -6}
      }
    },
    enabled = false,
    category = "bulk-smelting",
    subgroup = "boxed-aluminum-2",
    order = "nullius-gbb",
    energy_required = 10,
    ingredients = {
      {type = "item", name = "nullius-box-alumina", amount = 9},
      {type = "item", name = "nullius-box-graphite", amount = 5}
    },
    results = {
      {type="item", name="nullius-box-aluminum-ingot", amount=3},
      {type="item", name="nullius-box-aluminum-carbide", amount=4}
    },
    main_product = "nullius-box-aluminum-carbide"
  },
  {
    type = "recipe",
    name = "nullius-boxed-aluminum-ingot-1",
    localised_name = {"", {"item-name.nullius-box", {"item-name.nullius-aluminum-ingot"}}, " ", tostring(1)},
    enabled = false,
    category = "bulk-smelting",
    subgroup = "boxed-aluminum-2",
    order = "nullius-gc",
    energy_required = 25,
    ingredients = {
      {type = "item", name = "nullius-box-aluminum-carbide", amount = 5},
      {type = "item", name = "nullius-box-alumina", amount = 4}
    },
    results = {
      {type="item", name="nullius-box-aluminum-ingot", amount=9},
      {type="fluid", name="nullius-carbon-monoxide", amount=250}
    },
    main_product = "nullius-box-aluminum-ingot"
  },
  {
    type = "recipe",
    name = "nullius-aluminum-ingot-3",
    localised_name = {"", {"item-name.nullius-aluminum-ingot"}, " ", tostring(3)},
    hide_from_signal_gui = false,
    icons = {
      {
        icon = "__angelssmeltinggraphics__/graphics/icons/ingot-aluminium.png",
        icon_size = 64,
        
      },
      {
        icon = "__angelspetrochemgraphics__/graphics/icons/solid-sodium-carbonate.png",
        icon_size = 32,
        scale = 0.5,
        shift = {9, -9}
      }
    },
    enabled = false,
    category = "wet-smelting",
    order = "nullius-gd",
    energy_required = 12,
    ingredients = {
      {type="item", name="nullius-alumina", amount=11},
      {type="item", name="nullius-graphite", amount=7},
      {type="item", name="nullius-soda-ash", amount=1},
      {type="fluid", name="nullius-water", amount=25}
    },
    results = {
      {type="item", name="nullius-aluminum-ingot", amount=6},
      {type="item", name="nullius-aluminum-carbide", amount=7},
      {type="item", name="nullius-sodium-hydroxide", amount=1},
      {type="fluid", name="nullius-carbon-monoxide", amount=40}
    },
    main_product = "nullius-aluminum-ingot"
  },
  {
    type = "recipe",
    name = "nullius-boxed-aluminum-ingot-2",
    localised_name = {"", {"item-name.nullius-box", {"item-name.nullius-aluminum-ingot"}}, " ", tostring(2)},
    icons = {
      {
        icon = ICONPATH .. "crate.png",
        icon_size = 64
      },
      {
        icon = "__angelssmeltinggraphics__/graphics/icons/ingot-aluminium.png",
        icon_size = 64,
        
        scale = 0.45
      },
      {
        icon = "__angelspetrochemgraphics__/graphics/icons/solid-sodium-carbonate.png",
        icon_size = 32,
        scale = 0.4,
        shift = {8, -8}
      }
    },
    enabled = false,
    category = "bulk-smelting",
    subgroup = "boxed-aluminum-2",
    order = "nullius-gd",
    energy_required = 12,
    ingredients = {
      {type="item", name="nullius-box-alumina", amount=11},
      {type="item", name="nullius-box-graphite", amount=7},
      {type="item", name="nullius-box-soda-ash", amount=1},
      {type="fluid", name="nullius-water", amount=125}
    },
    results = {
      {type="item", name="nullius-box-aluminum-ingot", amount=6},
      {type="item", name="nullius-box-aluminum-carbide", amount=7},
      {type="item", name="nullius-box-sodium-hydroxide", amount=1},
      {type="fluid", name="nullius-carbon-monoxide", amount=200}
    },
    main_product = "nullius-box-aluminum-ingot"
  },
  {
    type = "recipe",
    name = "nullius-aluminum-ingot-electrolytic",
    localised_name = {"recipe-name.nullius-electrolytic",
	    {"item-name.nullius-box", {"item-name.nullius-aluminum-ingot"}}},
	  hide_from_signal_gui = false,
    icons = {
      {
        icon = "__angelssmeltinggraphics__/graphics/icons/ingot-aluminium.png",
        icon_size = 64,
        
        scale = 0.5
      },
	  {
        icon = ICONPATH .. "salt.png",
        icon_size = 64,
        tint = {0.4, 0.6, 0.8},
		    scale = 0.23,
        shift = {9, -10}
      }
    },
    enabled = false,
    subgroup = "aluminum-ingot",
    order = "nullius-ge",
    category = "nullius-electrolysis",
    energy_required = 9,
    ingredients = {
      {type="item", name="nullius-box-alumina", amount=6},
      {type="item", name="nullius-eutectic-salt", amount=1}
    },
    results = {
      {type="item", name="nullius-box-aluminum-ingot", amount=8},
      {type="fluid", name="nullius-oxygen", amount=250}
    },
    main_product = "nullius-box-aluminum-ingot"
  },
  {
    type = "recipe",
    name = "nullius-aluminum-carbide",
    enabled = false,
	  show_amount_in_title = false,
    always_show_products = true,
	  no_productivity = true,
	  hide_from_signal_gui = false,
    category = "dry-smelting",
    order = "nullius-hb",
    energy_required = 2,
    ingredients = {
      {type = "item", name = "nullius-aluminum-powder", amount = 20},
      {type = "item", name = "nullius-graphite", amount = 2}
    },
    results = {
      {type = "item", name = "nullius-aluminum-carbide", amount = 3}
    }
  },
  {
    type = "recipe",
    name = "nullius-boxed-aluminum-carbide-2",
    localised_name = {"", {"item-name.nullius-box", {"item-name.nullius-aluminum-carbide"}}, " ", tostring(2)},
	  icons = {
      {
        icon = ICONPATH .. "crate.png",
        icon_size = 64
      },
      {
        icon = "__angelssmeltinggraphics__/graphics/icons/powder-lead.png",
		    icon_size = 64,
		    scale = 0.45
      },
      {
        icon = "__angelssmeltinggraphics__/graphics/icons/powder-aluminium.png",
        icon_size = 64,
		    scale = 0.27,
        shift = {-6, -6}
      }
    },
    enabled = false,
	  show_amount_in_title = false,
    always_show_products = true,
	  no_productivity = true,
    category = "bulk-smelting",
	  subgroup = "boxed-aluminum-2",
    order = "nullius-gbc",
    energy_required = 2,
    ingredients = {
      {type = "item", name = "nullius-box-aluminum-powder", amount = 20},
      {type = "item", name = "nullius-box-graphite", amount = 2}
    },
    results = {
      {type = "item", name = "nullius-box-aluminum-carbide", amount = 3}
    }
  },

  {
    type = "recipe",
    name = "nullius-silicon-ingot",
    localised_name = {"recipe-name.nullius-silicon-ingot-1"},
    enabled = false,
    show_amount_in_title = false,
    always_show_products = true,
    category = "dry-smelting",
    energy_required = 10,
    ingredients = {
      {type = "item", name = "nullius-silica", amount = 5},
      {type = "item", name = "nullius-graphite", amount = 2}
    },
    results = {
      {type = "item", name = "nullius-silicon-ingot", amount = 3}
    }
  },
  {
    type = "recipe",
    name = "nullius-silicon-ingot-2",
    localised_name = {"recipe-name.nullius-silicon-ingot-2"},
    hide_from_signal_gui = false,
    icons = {
      {
        icon = "__angelssmeltinggraphics__/graphics/icons/ingot-silicon.png",
        icon_size = 64,
        
        tint = {1, 0.925, 0.85}
      },
      {
        icon = "__angelspetrochemgraphics__/graphics/icons/molecules/oxygen.png",
        icon_size = 72,
        scale = 0.22,
        shift = {9, -12}
      }
    },
    enabled = false,
    category = "wet-smelting",
    energy_required = 12,
    ingredients = {
      {type="item", name="nullius-silica", amount=6},
      {type="item", name="nullius-graphite", amount=3},
      {type="fluid", name="nullius-oxygen", amount=10}
    },
    results = {
      {type="item", name="nullius-silicon-ingot", amount=5},
      {type="fluid", name="nullius-carbon-monoxide", amount=50}
    },
    main_product = "nullius-silicon-ingot"
  },
  {
    type = "recipe",
    name = "nullius-boxed-silicon-ingot",
    enabled = false,
    category = "bulk-smelting",
    subgroup = "boxed-silicon",
    energy_required = 12,
    ingredients = {
      {type="item", name="nullius-box-silica", amount=6},
      {type="item", name="nullius-box-graphite", amount=3},
      {type="fluid", name="nullius-oxygen", amount=50}
    },
    results = {
      {type="item", name="nullius-box-silicon-ingot", amount=5},
      {type="fluid", name="nullius-carbon-monoxide", amount=250}
    },
    main_product = "nullius-box-silicon-ingot"
  },

  {
    type = "item",
    name = "nullius-polycrystalline-silicon",
    icons = {{
      icon = "__angelssmeltinggraphics__/graphics/icons/silicon-mono.png",
      icon_size = 32,
      tint = {0.8, 0.75, 0.7, 0.9}
    }},
    subgroup = "silicon-product",
    order = "nullius-f",
    stack_size = 100
  },
  {
    type = "item",
    name = "nullius-monocrystalline-silicon",
    icons = {{
      icon = ICONPATH .. "mono.png",
      icon_size = 64,
      tint = {0.8, 0.75, 0.7, 0.9}
    }},
    subgroup = "silicon-product",
    order = "nullius-g",
    stack_size = 100
  },
  {
    type = "recipe",
    name = "nullius-polycrystalline-silicon",
    localised_name = {"", {"item-name.nullius-polycrystalline-silicon"}, " ", tostring(1)},
    enabled = false,
    category = "basic-chemistry",
    order = "nullius-fb",
    crafting_machine_tint = {
      primary = data.raw.fluid["nullius-hydrogen"].flow_color,
      secondary = data.raw.fluid["nullius-chlorine"].flow_color
    },
    energy_required = 6,
    ingredients = {
      {type="item", name="nullius-silicon-ingot", amount=3},
      {type="fluid", name="nullius-hydrogen-chloride", amount=45, fluidbox_index=1},
      {type="fluid", name="nullius-nitrogen", amount=20, fluidbox_index=3}
    },
    results = {
      {type="item", name="nullius-polycrystalline-silicon", amount=2},
      {type="fluid", name="nullius-hydrogen", amount=15},
      {type="fluid", name="nullius-chlorine", amount=15}
    },
    main_product = "nullius-polycrystalline-silicon"
  },
  {
    type = "recipe",
    name = "nullius-boxed-polycrystalline-silicon",
    localised_name = {"", {"item-name.nullius-box", {"item-name.nullius-polycrystalline-silicon"}}, " ", tostring(1)},
    enabled = false,
    category = "basic-chemistry",
    subgroup = "boxed-silicon",
    order = "nullius-fb",
    crafting_machine_tint = {
      primary = data.raw.fluid["nullius-hydrogen"].flow_color,
      secondary = data.raw.fluid["nullius-chlorine"].flow_color
    },
    energy_required = 30,
    ingredients = {
      {type="item", name="nullius-box-silicon-ingot", amount=3},
      {type="fluid", name="nullius-hydrogen-chloride", amount=225, fluidbox_index=1},
      {type="fluid", name="nullius-nitrogen", amount=100, fluidbox_index=3}
    },
    results = {
      {type="item", name="nullius-box-polycrystalline-silicon", amount=2},
      {type="fluid", name="nullius-hydrogen", amount=75},
      {type="fluid", name="nullius-chlorine", amount=75}
    },
    main_product = "nullius-box-polycrystalline-silicon"
  },
  {
    type = "recipe",
    name = "nullius-polycrystalline-silicon-2",
    localised_name = {"", {"item-name.nullius-polycrystalline-silicon"}, " ", tostring(2)},
    hide_from_signal_gui = false,
    icons = {
	  {
        icon = "__angelssmeltinggraphics__/graphics/icons/silicon-mono.png",
        icon_size = 32,
        tint = {0.8, 0.75, 0.7, 0.9}
      },
      {
        icon = FLUIDPATH .. "atom.png",
        icon_size = 64,
        scale = 0.2,
        shift = {-11, -11},
	      tint = {164, 140, 204}
      }
    },
    enabled = false,
    category = "basic-chemistry",
    order = "nullius-fc",
    crafting_machine_tint = {
      primary = data.raw.fluid["nullius-argon"].flow_color,
      secondary = data.raw.fluid["nullius-chlorine"].flow_color
    },
    energy_required = 10,
    ingredients = {
      {type="item", name="nullius-silicon-ingot", amount=5},
      {type="fluid", name="nullius-hydrogen-chloride", amount=75, fluidbox_index=1},
      {type="fluid", name="nullius-argon", amount=4, fluidbox_index=3}
    },
    results = {
      {type="item", name="nullius-polycrystalline-silicon", amount=4},
      {type="fluid", name="nullius-hydrogen", amount=30},
      {type="fluid", name="nullius-chlorine", amount=20}
    },
    main_product = "nullius-polycrystalline-silicon"
  },
  {
    type = "recipe",
    name = "nullius-boxed-polycrystalline-silicon-2",
    localised_name = {"", {"item-name.nullius-box", {"item-name.nullius-polycrystalline-silicon"}}, " ", tostring(2)},
    icons = {
      {
        icon = ICONPATH .. "crate.png",
        icon_size = 64
      },
	  {
        icon = "__angelssmeltinggraphics__/graphics/icons/silicon-mono.png",
        icon_size = 32,
        tint = {0.8, 0.75, 0.7, 0.9},
		    scale = 0.9
      },
      {
        icon = FLUIDPATH .. "atom.png",
        icon_size = 64,
        scale = 0.18,
        shift = {-10, -10},
	      tint = {164, 140, 204}
      }
    },
    enabled = false,
    category = "basic-chemistry",
    subgroup = "boxed-silicon",
    order = "nullius-fc",
    crafting_machine_tint = {
      primary = data.raw.fluid["nullius-argon"].flow_color,
      secondary = data.raw.fluid["nullius-chlorine"].flow_color
    },
    energy_required = 50,
    ingredients = {
      {type="item", name="nullius-box-silicon-ingot", amount=5},
      {type="fluid", name="nullius-hydrogen-chloride", amount=375, fluidbox_index=1},
      {type="fluid", name="nullius-argon", amount=20, fluidbox_index=3}
    },
    results = {
      {type="item", name="nullius-box-polycrystalline-silicon", amount=4},
      {type="fluid", name="nullius-hydrogen", amount=150},
      {type="fluid", name="nullius-chlorine", amount=100}
    },
    main_product = "nullius-box-polycrystalline-silicon"
  },
  {
    type = "recipe",
    name = "nullius-monocrystalline-silicon",
    enabled = false,
    show_amount_in_title = false,
    always_show_products = true,
    category = "nanotechnology",
    energy_required = 20,
    ingredients = {
      {type="item", name="nullius-polycrystalline-silicon", amount=5},
      {type="fluid", name="nullius-argon", amount=10, fluidbox_index=1}
    },
    results = {
      {type = "item", name = "nullius-monocrystalline-silicon", amount = 3}
    }
  },
  {
    type = "recipe",
    name = "nullius-boxed-monocrystalline-silicon",
    enabled = false,
    show_amount_in_title = false,
    always_show_products = true,
    category = "nanotechnology",
    subgroup = "boxed-silicon",
    energy_required = 100,
    ingredients = {
      {type="item", name="nullius-box-polycrystalline-silicon", amount=5},
      {type="fluid", name="nullius-argon", amount=50, fluidbox_index=1}
    },
    results = {
      {type = "item", name = "nullius-box-monocrystalline-silicon", amount = 3}
    }
  },

  {
    type = "item",
    name = "nullius-canister",
    icon = ICONPATH .. "canister-empty.png",
    icon_size = 64,
    subgroup = "canisters",
    order = "nullius-c",
    stack_size = 50
  },
  {
    type = "recipe",
    name = "nullius-canister",
    enabled = false,
    category = "hand-casting",
    always_show_made_in = true,
    show_amount_in_title = false,
    always_show_products = true,
    energy_required = 8,
    ingredients = {
      {type="item", name="barrel", amount=1},
      {type="item", name="nullius-aluminum-sheet", amount=2},
      {type="item", name="nullius-one-way-valve", amount=1}
    },
    results = {
      {type = "item", name = "nullius-canister", amount = 5}
    }
  },
  {
    type = "recipe",
    name = "nullius-boxed-canister",
    enabled = false,
    category = "hand-casting",
    subgroup = "boxed-canister",
    always_show_made_in = true,
    show_amount_in_title = false,
    always_show_products = true,
    energy_required = 40,
    ingredients = {
      {type="item", name="nullius-box-barrel", amount=1},
      {type="item", name="nullius-box-aluminum-sheet", amount=2},
      {type="item", name="nullius-box-one-way-valve", amount=1}
    },
    results = {
      {type = "item", name = "nullius-box-canister", amount = 5}
    }
  },
  {
    type = "recipe",
    name = "nullius-legacy-empty-canister",
    enabled = false,
    category = "small-crafting",
    always_show_made_in = true,
    show_amount_in_title = false,
    always_show_products = true,
	  hidden = true,
    allow_decomposition = false,
    allow_as_intermediate = false,
    energy_required = 7,
    ingredients = {
      {type="item", name="barrel", amount=1},
      {type="item", name="nullius-aluminum-sheet", amount=2},
      {type="item", name="nullius-one-way-valve", amount=1}
    },
    results = {
      {type = "item", name = "nullius-canister", amount = 5}
    }
  },
  {
    type = "recipe",
    name = "nullius-legacy-boxed-canister",
    enabled = false,
    category = "large-assembly",
    subgroup = "boxed-canister",
    always_show_made_in = true,
    show_amount_in_title = false,
    always_show_products = true,
	  hidden = true,
    allow_decomposition = false,
    allow_as_intermediate = false,
    energy_required = 35,
    ingredients = {
      {type="item", name="nullius-box-barrel", amount=1},
      {type="item", name="nullius-box-aluminum-sheet", amount=2},
      {type="item", name="nullius-box-one-way-valve", amount=1}
    },
    results = {
      {type = "item", name = "nullius-box-canister", amount = 5}
    }
  },

  {
    type = "item",
    name = "nullius-filter-1",
    icons = {{
      icon = "__angelsrefininggraphics__/graphics/icons/filter-coal.png",
      icon_size = 32
    }},
    subgroup = "mechanical-intermediate",
    order = "nullius-cb",
    stack_size = 50
  },
  {
    type = "recipe",
    name = "nullius-filter-1",
    enabled = false,
    show_amount_in_title = false,
    always_show_products = true,
    category = "basic-chemistry",
    order = "nullius-cb",
    crafting_machine_tint = {
      primary = data.raw.fluid["nullius-carbon-dioxide"].flow_color,
      secondary = data.raw.fluid["nullius-carbon-dioxide"].flow_color
    },
    energy_required = 6,
    ingredients = {
      {type="item", name="nullius-plastic", amount=1},
      {type="item", name="nullius-graphite", amount=1},
      {type="item", name="nullius-iron-sheet", amount=1},
      {type="fluid", name="nullius-carbon-dioxide", amount=10, fluidbox_index=3}
    },
    results = {
      {type = "item", name = "nullius-filter-1", amount = 1}
    }
  },
  {
    type = "recipe",
    name = "nullius-boxed-filter-1",
    enabled = false,
    show_amount_in_title = false,
    always_show_products = true,
    category = "basic-chemistry",
    subgroup = "boxed-mechanical",
    order = "nullius-bb",
    crafting_machine_tint = {
      primary = data.raw.fluid["nullius-carbon-dioxide"].flow_color,
      secondary = data.raw.fluid["nullius-carbon-dioxide"].flow_color
    },
    energy_required = 30,
    ingredients = {
      {type="item", name="nullius-box-plastic", amount=1},
      {type="item", name="nullius-box-graphite", amount=1},
      {type="item", name="nullius-box-iron-sheet", amount=1},
      {type="fluid", name="nullius-carbon-dioxide", amount=50, fluidbox_index=3}
    },
    results = {
      {type = "item", name = "nullius-box-filter-1", amount = 1}
    }
  },
  {
    type = "recipe",
    name = "nullius-pressure-filter-1",
    localised_name = {"recipe-name.nullius-pressure", {"item-name.nullius-filter-1"}},
    hide_from_signal_gui = false,
    icons = {
      {
        icon = "__angelsrefininggraphics__/graphics/icons/filter-coal.png",
        icon_size = 32
      },
      {
        icon = "__angelssmeltinggraphics__/graphics/icons/roll-aluminium.png",
        icon_size = 64,
        
        scale = 0.3,
        shift = {11, -10}
      }
    },
    enabled = false,
    show_amount_in_title = false,
    always_show_products = true,
    category = "basic-chemistry",
    order = "nullius-cc",
    crafting_machine_tint = {
      primary = data.raw.fluid["nullius-carbon-dioxide"].flow_color,
      secondary = data.raw.fluid["nullius-carbon-dioxide"].flow_color
    },
    energy_required = 5,
    ingredients = {
      {type="item", name="nullius-plastic", amount=2},
      {type="item", name="nullius-graphite", amount=1},
      {type="item", name="nullius-aluminum-sheet", amount=1},
      {type="fluid", name="nullius-compressed-carbon-dioxide", amount=4, fluidbox_index=3}
    },
    results = {
      {type = "item", name = "nullius-filter-1", amount = 2}
    }
  },
  {
    type = "recipe",
    name = "nullius-boxed-pressure-filter-1",
    localised_name = {"recipe-name.nullius-pressure", {"item-name.nullius-box", {"item-name.nullius-filter-1"}}},
    icons = {
      {
        icon = ICONPATH .. "crate.png",
        icon_size = 64
      },
      {
        icon = "__angelsrefininggraphics__/graphics/icons/filter-coal.png",
        icon_size = 32,
        scale = 0.9
      },
      {
        icon = "__angelssmeltinggraphics__/graphics/icons/roll-aluminium.png",
        icon_size = 64,
        
        scale = 0.25,
        shift = {10, -9}
      }
    },
    enabled = false,
    show_amount_in_title = false,
    always_show_products = true,
    category = "basic-chemistry",
    subgroup = "boxed-mechanical",
    order = "nullius-bc",
    crafting_machine_tint = {
      primary = data.raw.fluid["nullius-carbon-dioxide"].flow_color,
      secondary = data.raw.fluid["nullius-carbon-dioxide"].flow_color
    },
    energy_required = 25,
    ingredients = {
      {type="item", name="nullius-box-plastic", amount=2},
      {type="item", name="nullius-box-graphite", amount=1},
      {type="item", name="nullius-box-aluminum-sheet", amount=1},
      {type="fluid", name="nullius-compressed-carbon-dioxide", amount=20, fluidbox_index=3}
    },
    results = {
      {type = "item", name = "nullius-box-filter-1", amount = 2}
    }
  },

  {
    type = "item",
    name = "nullius-filter-2",
    icons = {{
      icon = "__angelsrefininggraphics__/graphics/icons/filter-ceramic.png",
      icon_size = 32
    }},
    subgroup = "mechanical-intermediate",
    order = "nullius-cd",
    stack_size = 50
  },
  {
    type = "recipe",
    name = "nullius-filter-2",
    enabled = false,
    show_amount_in_title = false,
    always_show_products = true,
    always_show_made_in = true,
    category = "tiny-crafting",
    energy_required = 10,
    ingredients = {
      {type="item", name="nullius-filter-1", amount=2},
      {type="item", name="nullius-titanium-sheet", amount=1},
      {type="item", name="nullius-graphene", amount=2},
      {type="item", name="nullius-textile", amount=2},
      {type="item", name="nullius-alumina", amount=3}
    },
    results = {
      {type = "item", name = "nullius-filter-2", amount = 1}
    }
  },
  {
    type = "recipe",
    name = "nullius-boxed-filter-2",
    enabled = false,
    show_amount_in_title = false,
    always_show_products = true,
    always_show_made_in = true,
    category = "medium-only-assembly",
    subgroup = "boxed-mechanical",
    order = "nullius-bd",
    energy_required = 50,
    ingredients = {
      {type="item", name="nullius-box-filter-1", amount=2},
      {type="item", name="nullius-box-titanium-sheet", amount=1},
      {type="item", name="nullius-box-graphene", amount=2},
      {type="item", name="nullius-box-textile", amount=2},
      {type="item", name="nullius-box-alumina", amount=3}
    },
    results = {
      {type = "item", name = "nullius-box-filter-2", amount = 1}
    }
  },

  {
    type = "item",
    name = "nullius-cement",
    icon = "__angelssmeltinggraphics__/graphics/icons/solid-cement.png",
    icon_size = 32,
    subgroup = "masonry-material",
    order = "nullius-cb",
    stack_size = 100
  },
  {
    type = "item",
    name = "nullius-mortar",
    icon = "__angelsrefininggraphics__/graphics/icons/solid-sand.png",
    icon_size = 32,
    subgroup = "masonry-material",
    order = "nullius-cd",
    stack_size = 100
  },
  {
    type = "recipe",
    name = "nullius-cement",
    localised_name = {"recipe-name.nullius-cement-1"},
    enabled = false,
    show_amount_in_title = false,
    always_show_products = true,
    category = "dry-smelting",
    energy_required = 20,
    ingredients = {
      {type="item", name="nullius-lime", amount=12},
      {type="item", name="nullius-silica", amount=4},
      {type="item", name="nullius-aluminum-hydroxide", amount=1}
    },
    results = {
      {type = "item", name = "nullius-cement", amount = 4}
    }
  },
  {
    type = "recipe",
    name = "nullius-cement-2",
    localised_name = {"recipe-name.nullius-cement-2"},
    hide_from_signal_gui = false,
    icons = {
      {
        icon = "__angelssmeltinggraphics__/graphics/icons/solid-cement.png",
        icon_size = 32
      },
      {
        icon = "__angelspetrochemgraphics__/graphics/icons/solid-sodium-carbonate.png",
        icon_size = 32,
        scale = 0.45,
        shift = {-10, -10}
      }
    },
    enabled = false,
    show_amount_in_title = false,
    always_show_products = true,
    category = "dry-smelting",
    order = "nullius-cc",
    energy_required = 35,
    ingredients = {
      {type="item", name="nullius-lime", amount=16},
      {type="item", name="nullius-aluminum-hydroxide", amount=6},
      {type="item", name="nullius-silica", amount=5},
      {type="item", name="nullius-gypsum", amount=3},
      {type="item", name="nullius-iron-oxide", amount=2},
      {type="item", name="nullius-soda-ash", amount=1}
    },
    results = {
      {type = "item", name = "nullius-cement", amount = 16}
    }
  },
  {
    type = "recipe",
    name = "nullius-boxed-cement",
    enabled = false,
    show_amount_in_title = false,
    always_show_products = true,
    category = "bulk-smelting",
    subgroup = "boxed-glass",
    energy_required = 35,
    ingredients = {
      {type="item", name="nullius-box-lime", amount=16},
      {type="item", name="nullius-box-aluminum-hydroxide", amount=6},
      {type="item", name="nullius-box-silica", amount=5},
      {type="item", name="nullius-box-gypsum", amount=3},
      {type="item", name="nullius-box-iron-oxide", amount=2},
      {type="item", name="nullius-box-soda-ash", amount=1}
    },
    results = {
      {type = "item", name = "nullius-box-cement", amount = 16}
    }
  },

  {
    type = "recipe",
    name = "nullius-mortar",
    enabled = false,
    show_amount_in_title = false,
    always_show_products = true,
    category = "ore-flotation",
    energy_required = 3,
    ingredients = {
      {type="item", name="nullius-cement", amount=1},
      {type="item", name="nullius-lime", amount=1},
      {type="item", name="nullius-sand", amount=5},
      {type="fluid", name="nullius-water", amount=8, fluidbox_index=1}
    },
    results = {
      {type = "item", name = "nullius-mortar", amount = 4}
    }
  },
  {
    type = "recipe",
    name = "nullius-boxed-mortar",
    localised_name = {"recipe-name.nullius-boxed", {"item-name.nullius-mortar"}},
    icons = {
      {
        icon = ICONPATH .. "crate.png",
        icon_size = 64
      },
      {
        icon = "__angelsrefininggraphics__/graphics/icons/solid-sand.png",
        icon_size = 32,
        scale = 0.9
      }
    },
    enabled = false,
    show_amount_in_title = false,
    always_show_products = true,
    category = "ore-flotation",
    subgroup = "boxed-calcium",
    order = "nullius-x",
    energy_required = 15,
    ingredients = {
      {type="item", name="nullius-box-cement", amount=1},
      {type="item", name="nullius-box-lime", amount=1},
      {type="item", name="nullius-box-sand", amount=5},
      {type="fluid", name="nullius-water", amount=40, fluidbox_index=1}
    },
    results = {
      {type = "item", name = "nullius-mortar", amount = 20}
    }
  },

  {
    type = "recipe",
    name = "nullius-concrete-1",
    localised_name = {"", {"item-name.concrete"}, " ", tostring(1)},
    order = "nullius-bb",
    enabled = false,
    show_amount_in_title = false,
    always_show_products = true,
    category = "ore-flotation",
    energy_required = 8,
    ingredients = {
      {type="item", name="nullius-cement", amount=1},
      {type="item", name="nullius-sand", amount=2},
      {type="item", name="nullius-gravel", amount=4},
      {type="fluid", name="nullius-water", amount=6, fluidbox_index=1}
    },
    results = {
      {type = "item", name = "concrete", amount = 5}
    }
  },
  {
    type = "recipe",
    name = "nullius-concrete-2",
    localised_name = {"", {"item-name.concrete"}, " ", tostring(2)},
    hide_from_signal_gui = false,
    icons = {
      {
        icon = "__base__/graphics/icons/concrete.png",
        icon_size = 64,
        
      },
      {
        icon = ICONPATH .. "fluid/calcium-chloride.png",
        icon_size = 64,
        scale = 0.24,
        shift = {-10, -10}
      }
    },
    order = "nullius-bc",
    enabled = false,
    show_amount_in_title = false,
    always_show_products = true,
    category = "ore-flotation",
    energy_required = 20,
    ingredients = {
      {type="item", name="nullius-cement", amount=3},
      {type="item", name="nullius-sand", amount=7},
      {type="item", name="nullius-gravel", amount=15},
      {type="fluid", name="nullius-calcium-chloride-solution", amount=5},
      {type="fluid", name="nullius-water", amount=15}
    },
    results = {
      {type = "item", name = "concrete", amount = 20}
    }
  },
  {
    type = "recipe",
    name = "nullius-boxed-concrete",
    enabled = false,
    show_amount_in_title = false,
    always_show_products = true,
    category = "ore-flotation",
    subgroup = "boxed-terrain",
    order = "nullius-d",
    energy_required = 100,
    ingredients = {
      {type="item", name="nullius-box-cement", amount=3},
      {type="item", name="nullius-box-sand", amount=7},
      {type="item", name="nullius-box-gravel", amount=15},
      {type="fluid", name="nullius-calcium-chloride-solution", amount=25},
      {type="fluid", name="nullius-water", amount=75}
    },
    results = {
      {type = "item", name = "nullius-box-concrete", amount = 10}
    }
  },

  {
    type = "recipe",
    name = "nullius-reinforced-concrete",
    localised_name = {"item-name.nullius-reinforced-concrete"},
    enabled = false,
    show_amount_in_title = false,
    always_show_products = true,
    category = "ore-flotation",
    energy_required = 24,
    ingredients = {
      {type="item", name="nullius-cement", amount=3},
      {type="item", name="nullius-sand", amount=4},
      {type="item", name="nullius-gravel", amount=7},
      {type="fluid", name="nullius-water", amount=8, fluidbox_index=1},
      {type="item", name="nullius-textile", amount=1},
      {type="item", name="nullius-steel-wire", amount=2},
      {type="item", name="nullius-steel-rod", amount=2}
    },
    results = {
      {type = "item", name = "refined-concrete", amount = 10}
    }
  },
  {
    type = "recipe",
    name = "nullius-boxed-reinforced-concrete",
    enabled = false,
    show_amount_in_title = false,
    always_show_products = true,
    category = "ore-flotation",
    subgroup = "boxed-terrain",
    order = "nullius-e",
    energy_required = 120,
    ingredients = {
      {type="item", name="nullius-box-cement", amount=3},
      {type="item", name="nullius-box-sand", amount=4},
      {type="item", name="nullius-box-gravel", amount=7},
      {type="fluid", name="nullius-water", amount=40, fluidbox_index=1},
      {type="item", name="nullius-box-textile", amount=1},
      {type="item", name="nullius-box-steel-wire", amount=2},
      {type="item", name="nullius-box-steel-rod", amount=2}
    },
    results = {
      {type = "item", name = "nullius-box-reinforced-concrete", amount = 5}
    }
  },

  {
    type = "item",
    name = "nullius-red-concrete",
    icons = {{
      icon = "__base__/graphics/icons/refined-concrete.png",
      icon_size = 64, 
      tint = { r = 1.000, g = 0.266, b = 0.241 }
    }},
    subgroup = "colored-concrete",
    order = "nullius-db",
    stack_size = 500,
    place_as_tile = {
      result = "red-refined-concrete",
      condition_size = 1,
      condition = { layers = {water_tile=true} }
    }
  },
  {
    type = "recipe",
    name = "nullius-red-concrete",
    enabled = false,
    no_productivity = true,
    show_amount_in_title = false,
    always_show_products = true,
    category = "basic-chemistry",
	  crafting_machine_tint = {
      primary = {r=1, g=0, b=0},
      secondary = {r=1, g=0, b=0}
    },
    energy_required = 60,
    ingredients = {
      {type="item", name="refined-concrete", amount=60},
      {type="item", name="nullius-iron-oxide", amount=2},
      {type="fluid", name="nullius-water", amount=4},
      {type="fluid", name="nullius-epoxy", amount=3}
    },
    results = {
      {type = "item", name = "nullius-red-concrete", amount = 60}
    }
  },
  {
    type = "recipe",
    name = "nullius-boxed-red-concrete",
    enabled = false,
    no_productivity = true,
    show_amount_in_title = false,
    always_show_products = true,
    category = "basic-chemistry",
	crafting_machine_tint = {
      primary = {r=1, g=0, b=0},
      secondary = {r=1, g=0, b=0}
    },
    subgroup = "boxed-concrete",
    energy_required = 300,
    ingredients = {
      {type="item", name="nullius-box-reinforced-concrete", amount=30},
      {type="item", name="nullius-box-iron-oxide", amount=2},
      {type="fluid", name="nullius-water", amount=20},
      {type="fluid", name="nullius-epoxy", amount=15}
    },
    results = {
      {type = "item", name = "nullius-box-red-concrete", amount = 30}
    }
  },

  {
    type = "item",
    name = "nullius-blue-concrete",
    icons = {{
      icon = "__base__/graphics/icons/refined-concrete.png",
      icon_size = 64, 
      tint = { r = 0.343, g = 0.683, b = 1.000 }
    }},
    subgroup = "colored-concrete",
    order = "nullius-dc",
    stack_size = 500,
    place_as_tile = {
      result = "blue-refined-concrete",
      condition_size = 1,
      condition = { layers = {water_tile=true} }
    }
  },
  {
    type = "recipe",
    name = "nullius-blue-concrete",
    enabled = false,
    no_productivity = true,
    show_amount_in_title = false,
    always_show_products = true,
    category = "basic-chemistry",
	crafting_machine_tint = {
      primary = {r=0, g=0, b=1},
      secondary = {r=0, g=0, b=1}
    },
    energy_required = 80,
    ingredients = {
      {type="item", name="refined-concrete", amount=60},
      {type="item", name="nullius-sodium-sulfate", amount=1},
      {type="item", name="nullius-aluminum-hydroxide", amount=1},
      {type="item", name="nullius-silica", amount=1},
      {type="item", name="nullius-graphite", amount=1},
      {type="fluid", name="nullius-water", amount=3},
      {type="fluid", name="nullius-epoxy", amount=3}
    },
    results = {
      {type = "item", name = "nullius-blue-concrete", amount = 60}
    }
  },
  {
    type = "recipe",
    name = "nullius-boxed-blue-concrete",
    enabled = false,
    no_productivity = true,
    show_amount_in_title = false,
    always_show_products = true,
    category = "basic-chemistry",
	crafting_machine_tint = {
      primary = {r=0, g=0, b=1},
      secondary = {r=0, g=0, b=1}
    },
    subgroup = "boxed-concrete",
    energy_required = 400,
    ingredients = {
      {type="item", name="nullius-box-reinforced-concrete", amount=30},
      {type="item", name="nullius-box-sodium-sulfate", amount=1},
      {type="item", name="nullius-box-aluminum-hydroxide", amount=1},
      {type="item", name="nullius-box-silica", amount=1},
      {type="item", name="nullius-box-graphite", amount=1},
      {type="fluid", name="nullius-water", amount=15},
      {type="fluid", name="nullius-epoxy", amount=15}
    },
    results = {
      {type = "item", name = "nullius-box-blue-concrete", amount = 30}
    }
  },

  {
    type = "item",
    name = "nullius-yellow-concrete",
    icons = {{
      icon = ICONPATH.."entity/white-concrete.png",
      icon_size = 64, 
      tint = { r = 0.9, g = 0.8, b = 0.2 }
    }},
    subgroup = "colored-concrete",
    order = "nullius-dd",
    stack_size = 500,
    place_as_tile = {
      result = "yellow-refined-concrete",
      condition_size = 1,
      condition = { layers = {water_tile=true} }
    }
  },
  {
    type = "recipe",
    name = "nullius-yellow-concrete",
    enabled = false,
    no_productivity = true,
    show_amount_in_title = false,
    always_show_products = true,
    category = "basic-chemistry",
	crafting_machine_tint = {
      primary = {r=1, g=1, b=0},
      secondary = {r=1, g=1, b=0}
    },
    energy_required = 72,
    ingredients = {
      {type="item", name="refined-concrete", amount=60},
      {type="item", name="nullius-iron-wire", amount=1},
      {type="item", name="nullius-sodium-hydroxide", amount=1},
      {type="fluid", name="nullius-acid-hydrochloric", amount=5},
      {type="fluid", name="nullius-epoxy", amount=3}
    },
    results = {
      {type = "item", name = "nullius-yellow-concrete", amount = 60}
    }
  },
  {
    type = "recipe",
    name = "nullius-boxed-yellow-concrete",
    enabled = false,
    no_productivity = true,
    show_amount_in_title = false,
    always_show_products = true,
    category = "basic-chemistry",
	crafting_machine_tint = {
      primary = {r=1, g=1, b=0},
      secondary = {r=1, g=1, b=0}
    },
    subgroup = "boxed-concrete",
    energy_required = 360,
    ingredients = {
      {type="item", name="nullius-box-reinforced-concrete", amount=30},
      {type="item", name="nullius-box-iron-wire", amount=1},
      {type="item", name="nullius-box-sodium-hydroxide", amount=1},
      {type="fluid", name="nullius-acid-hydrochloric", amount=25},
      {type="fluid", name="nullius-epoxy", amount=15}
    },
    results = {
      {type = "item", name = "nullius-box-yellow-concrete", amount = 30}
    }
  },

  {
    type = "item",
    name = "nullius-green-concrete",
    icons = {{
      icon = "__base__/graphics/icons/refined-concrete.png",
      icon_size = 64, 
      tint = { r = 0.173, g = 0.824, b = 0.250 }
    }},
    subgroup = "colored-concrete",
    order = "nullius-dec",
    stack_size = 500,
    place_as_tile = {
      result = "green-refined-concrete",
      condition_size = 1,
      condition = { layers = {water_tile=true} }
    }
  },
  {
    type = "recipe",
    name = "nullius-green-concrete",
    enabled = false,
    no_productivity = true,
    always_show_made_in = true,
    show_amount_in_title = false,
    always_show_products = true,
    category = "large-crafting",
    energy_required = 10,
    ingredients = {
      {type="item", name="nullius-yellow-concrete", amount=15},
      {type="item", name="nullius-blue-concrete", amount=15}
    },
    results = {
      {type = "item", name = "nullius-green-concrete", amount = 30}
    }
  },
  {
    type = "recipe",
    name = "nullius-boxed-green-concrete",
    enabled = false,
    no_productivity = true,
    always_show_made_in = true,
    show_amount_in_title = false,
    always_show_products = true,
    category = "huge-assembly",
    subgroup = "boxed-concrete",
    energy_required = 20,
    ingredients = {
      {type="item", name="nullius-box-yellow-concrete", amount=3},
      {type="item", name="nullius-box-blue-concrete", amount=3}
    },
    results = {
      {type = "item", name = "nullius-box-green-concrete", amount = 6}
    }
  },

  {
    type = "item",
    name = "nullius-purple-concrete",
    icons = {{
      icon = "__base__/graphics/icons/refined-concrete.png",
      icon_size = 64, 
      tint = { r = 0.821, g = 0.440, b = 0.998 }
    }},
    subgroup = "colored-concrete",
    order = "nullius-df",
    stack_size = 500,
    place_as_tile = {
      result = "purple-refined-concrete",
      condition_size = 1,
      condition = { layers = {water_tile=true} }
    }
  },
  {
    type = "recipe",
    name = "nullius-purple-concrete",
    enabled = false,
    no_productivity = true,
    always_show_made_in = true,
    show_amount_in_title = false,
    always_show_products = true,
    category = "large-crafting",
    energy_required = 10,
    ingredients = {
      {type="item", name="nullius-red-concrete", amount=15},
      {type="item", name="nullius-blue-concrete", amount=15}
    },
    results = {
      {type = "item", name = "nullius-purple-concrete", amount = 30}
    }
  },
  {
    type = "recipe",
    name = "nullius-boxed-purple-concrete",
    enabled = false,
    no_productivity = true,
    always_show_made_in = true,
    show_amount_in_title = false,
    always_show_products = true,
    category = "huge-assembly",
    subgroup = "boxed-concrete",
    energy_required = 20,
    ingredients = {
      {type="item", name="nullius-box-red-concrete", amount=3},
      {type="item", name="nullius-box-blue-concrete", amount=3}
    },
    results = {
      {type = "item", name = "nullius-box-purple-concrete", amount = 6}
    }
  },

  {
    type = "item",
    name = "nullius-brown-concrete",
    icons = {{
      icon = "__base__/graphics/icons/refined-concrete.png",
      icon_size = 64, 
      tint = { r = 0.757, g = 0.522, b = 0.371 }
    }},
    subgroup = "colored-concrete",
    order = "nullius-dg",
    stack_size = 500,
    place_as_tile = {
      result = "brown-refined-concrete",
      condition_size = 1,
      condition = { layers = {water_tile=true} }
    }
  },
  {
    type = "recipe",
    name = "nullius-brown-concrete",
    enabled = false,
    no_productivity = true,
    always_show_made_in = true,
    show_amount_in_title = false,
    always_show_products = true,
    category = "large-crafting",
    energy_required = 10,
    ingredients = {
      {type="item", name="nullius-yellow-concrete", amount=15},
      {type="item", name="nullius-red-concrete", amount=15}
    },
    results = {
      {type = "item", name = "nullius-brown-concrete", amount = 30}
    }
  },
  {
    type = "recipe",
    name = "nullius-boxed-brown-concrete",
    enabled = false,
    no_productivity = true,
    always_show_made_in = true,
    show_amount_in_title = false,
    always_show_products = true,
    category = "huge-assembly",
    subgroup = "boxed-concrete",
    energy_required = 20,
    ingredients = {
      {type="item", name="nullius-box-yellow-concrete", amount=3},
      {type="item", name="nullius-box-red-concrete", amount=3}
    },
    results = {
      {type = "item", name = "nullius-box-brown-concrete", amount = 6}
    }
  },

  {
    type = "item",
    name = "nullius-black-concrete",
    icons = {{
      icon = "__base__/graphics/icons/refined-concrete.png",
      icon_size = 64, 
      tint = { r = 0.5, g = 0.5, b = 0.5 }
    }},
    subgroup = "colored-concrete",
    order = "nullius-dh",
    stack_size = 500,
    place_as_tile = {
      result = "black-refined-concrete",
      condition_size = 1,
      condition = { layers = {water_tile=true} }
    }
  },
  {
    type = "recipe",
    name = "nullius-black-concrete",
    enabled = false,
    no_productivity = true,
    always_show_made_in = true,
    show_amount_in_title = false,
    always_show_products = true,
    category = "large-crafting",
    energy_required = 25,
    ingredients = {
      {type="item", name="nullius-red-concrete", amount=20},
      {type="item", name="nullius-blue-concrete", amount=20},
      {type="item", name="nullius-yellow-concrete", amount=20},
      {type="item", name="nullius-graphite", amount=1}
    },
    results = {
      {type = "item", name = "nullius-black-concrete", amount = 60}
    }
  },
  {
    type = "recipe",
    name = "nullius-boxed-black-concrete",
    enabled = false,
    no_productivity = true,
    always_show_made_in = true,
    show_amount_in_title = false,
    always_show_products = true,
    category = "huge-assembly",
    subgroup = "boxed-concrete",
    energy_required = 125,
    ingredients = {
      {type="item", name="nullius-box-red-concrete", amount=10},
      {type="item", name="nullius-box-blue-concrete", amount=10},
      {type="item", name="nullius-box-yellow-concrete", amount=10},
      {type="item", name="nullius-box-graphite", amount=1}
    },
    results = {
      {type = "item", name = "nullius-box-black-concrete", amount = 30}
    }
  },
  
  {
    type = "item",
    name = "nullius-white-concrete",
    icons = {{
      icon = ICONPATH.."entity/white-concrete.png",
      icon_size = 64, 
    }},
    subgroup = "colored-concrete",
    order = "nullius-ad",
    stack_size = 500,
    place_as_tile = {
      result = "nullius-white-concrete",
      condition_size = 1,
      condition = { layers = {water_tile=true} }
    }
  },
  {
    type = "recipe",
    name = "nullius-white-concrete",
    enabled = false,
    no_productivity = true,
    show_amount_in_title = false,
    always_show_products = true,
    category = "basic-chemistry",
    energy_required = 72,
    ingredients = {
      {type="item", name="refined-concrete", amount=60},
      {type="item", name="nullius-rutile", amount=1},
	  {type="item", name="nullius-crushed-limestone", amount=1},
      {type="fluid", name="nullius-epoxy", amount=3},
      {type="fluid", name="nullius-solvent", amount=4}
    },
    results = {
      {type = "item", name = "nullius-white-concrete", amount = 60}
    }
  },
  {
    type = "recipe",
    name = "nullius-boxed-white-concrete",
    enabled = false,
    no_productivity = true,
    show_amount_in_title = false,
    always_show_products = true,
    category = "basic-chemistry",
    subgroup = "boxed-concrete",
    energy_required = 360,
    ingredients = {
      {type="item", name="nullius-box-reinforced-concrete", amount=30},
      {type="item", name="nullius-box-rutile", amount=1},
	  {type="item", name="nullius-box-crushed-limestone", amount=1},
      {type="fluid", name="nullius-epoxy", amount=15},
      {type="fluid", name="nullius-solvent", amount=20}
    },
    results = {
      {type = "item", name = "nullius-box-white-concrete", amount = 30}
    }
  },

  {
    type = "item",
    name = "nullius-orange-concrete",
    icons = {{
      icon = ICONPATH.."entity/white-concrete.png",
      icon_size = 64, 
      tint = { r = 0.9, g = 0.5, b = 0.1 }
    }},
    subgroup = "colored-concrete",
    order = "nullius-deb",
    stack_size = 500,
    place_as_tile = {
      result = "nullius-orange-concrete",
      condition_size = 1,
      condition = { layers = {water_tile=true} }
    }
  },
  {
    type = "recipe",
    name = "nullius-orange-concrete",
    enabled = false,
    no_productivity = true,
    always_show_made_in = true,
    show_amount_in_title = false,
    always_show_products = true,
    category = "large-crafting",
    energy_required = 10,
    ingredients = {
      {type="item", name="nullius-yellow-concrete", amount=15},
      {type="item", name="nullius-red-concrete", amount=10},
      {type="item", name="nullius-white-concrete", amount=5}
    },
    results = {
      {type = "item", name = "nullius-orange-concrete", amount = 30}
    }
  },
  {
    type = "recipe",
    name = "nullius-boxed-orange-concrete",
    enabled = false,
    no_productivity = true,
    always_show_made_in = true,
    show_amount_in_title = false,
    always_show_products = true,
    category = "huge-assembly",
    subgroup = "boxed-concrete",
    energy_required = 20,
    ingredients = {
      {type="item", name="nullius-box-yellow-concrete", amount=3},
      {type="item", name="nullius-box-red-concrete", amount=2},
      {type="item", name="nullius-box-white-concrete", amount=1}
    },
    results = {
      {type = "item", name = "nullius-box-orange-concrete", amount = 6}
    }
  },

  {
    type = "recipe",
    name = "nullius-hazard-concrete",
    localised_name = {"item-name.nullius-hazard-concrete"},
    enabled = false,
    category = "large-crafting",
    always_show_made_in = true,
    no_productivity = true,
    show_amount_in_title = false,
    always_show_products = true,
    energy_required = 15,
    ingredients = {
      {type="item", name="nullius-yellow-concrete", amount=24},
      {type="item", name="nullius-black-concrete", amount=16}
    },
    results = {
      {type = "item", name = "refined-hazard-concrete", amount = 40}
    }
  },
  {
    type = "recipe",
    name = "nullius-boxed-hazard-concrete",
    enabled = false,
    category = "huge-assembly",
    subgroup = "boxed-concrete",
    always_show_made_in = true,
    no_productivity = true,
    show_amount_in_title = false,
    always_show_products = true,
    energy_required = 75,
    ingredients = {
      {type="item", name="nullius-box-yellow-concrete", amount=12},
      {type="item", name="nullius-box-black-concrete", amount=8}
    },
    results = {
      {type = "item", name = "nullius-box-hazard-concrete", amount = 20}
    }
  },

  {
    type = "item",
    name = "nullius-sensor-1",
    icon = "__base__/graphics/icons/discharge-defense-equipment-controller.png",
    icon_size = 64,
    
    subgroup = "robotic-intermediate",
    order = "nullius-bb",
    stack_size = 100
  },
  {
    type = "recipe",
    name = "nullius-sensor-1",
    enabled = false,
    category = "small-crafting",
    always_show_made_in = true,
    show_amount_in_title = false,
    always_show_products = true,
    energy_required = 5,
    ingredients = {
      {type = "item", name = "arithmetic-combinator", amount = 1},
      {type = "item", name = "nullius-glass", amount = 1},
      {type = "item", name = "small-lamp", amount = 1},
      {type = "item", name = "nullius-capacitor", amount = 1},
      {type = "item", name = "nullius-polycrystalline-silicon", amount = 1},
      {type = "item", name = "nullius-red-wire", amount = 2}
    },
    results = {
      {type = "item", name = "nullius-sensor-1", amount = 2}
    }
  },
  {
    type = "recipe",
    name = "nullius-boxed-sensor-1",
    enabled = false,
    category = "large-assembly",
    subgroup = "boxed-mechanical",
    order = "nullius-gb",
    always_show_made_in = true,
    show_amount_in_title = false,
    always_show_products = true,
    energy_required = 25,
    ingredients = {
      {type = "item", name = "nullius-box-arithmetic-circuit", amount = 1},
      {type = "item", name = "nullius-box-glass", amount = 1},
      {type = "item", name = "nullius-box-lamp-1", amount = 1},
      {type = "item", name = "nullius-box-capacitor", amount = 1},
      {type = "item", name = "nullius-box-polycrystalline-silicon", amount = 1},
      {type = "item", name = "nullius-box-red-wire", amount = 2}
    },
    results = {
      {type = "item", name = "nullius-box-sensor-1", amount = 2}
    }
  },

  {
    type = "item",
    name = "nullius-sensor-2",
    icon = ICONPATH .. "sensor2.png",
    icon_size = 64,
    subgroup = "robotic-intermediate",
    order = "nullius-bc",
    stack_size = 100
  },
  {
    type = "recipe",
    name = "nullius-sensor-2",
    enabled = false,
    category = "nanotechnology",
    always_show_made_in = true,
    energy_required = 6,
    ingredients = {
      {type="item", name="nullius-sensor-1", amount=1},
      {type="item", name="nullius-processor-1", amount=1},
      {type="item", name="nullius-lamp-2", amount=1},
      {type="item", name="nullius-optical-cable", amount=1},
      {type="item", name="nullius-ceramic-powder", amount=1},
      {type="fluid", name="nullius-titanium-tetrachloride", amount=2, fluidbox_index=1},
      {type="fluid", name="nullius-oxygen", amount=8, fluidbox_index=2}
    },
    results = {
      {type="item", name="nullius-sensor-2", amount=1},
      {type="fluid", name="nullius-chlorine", amount=6}
    },
    main_product = "nullius-sensor-2"
  },
  {
    type = "recipe",
    name = "nullius-boxed-sensor-2",
    enabled = false,
    category = "nanotechnology",
    subgroup = "boxed-mechanical",
    order = "nullius-gc",
    always_show_made_in = true,
    energy_required = 30,
    ingredients = {
      {type="item", name="nullius-box-sensor-1", amount=1},
      {type="item", name="nullius-box-processor-1", amount=1},
      {type="item", name="nullius-box-lamp-2", amount=1},
      {type="item", name="nullius-box-optical-cable", amount=1},
      {type="item", name="nullius-box-ceramic-powder", amount=1},
      {type="fluid", name="nullius-titanium-tetrachloride", amount=10, fluidbox_index=1},
      {type="fluid", name="nullius-oxygen", amount=40, fluidbox_index=2}
    },
    results = {
      {type="item", name="nullius-box-sensor-2", amount=1},
      {type="fluid", name="nullius-chlorine", amount=30}
    },
    main_product = "nullius-box-sensor-2"
  },

  {
    type = "item",
    name = "nullius-ceramic-powder",
    icon = "__angelssmeltinggraphics__/graphics/icons/powder-platinum.png",
    icon_size = 64,
    
    subgroup = "glass-product",
    order = "nullius-l",
    stack_size = 100
  },
  {
    type = "recipe",
    name = "nullius-ceramic-powder",
    enabled = false,
    category = "wet-smelting",
    always_show_made_in = true,
    energy_required = 40,
    ingredients = {
      {type="item", name="nullius-silicon-ingot", amount=15},
      {type="item", name="nullius-graphite", amount=12},
      {type="item", name="nullius-boron", amount=1},
      {type="fluid", name="nullius-nitrogen", amount=200}
    },
    results = {
      {type="item", name="nullius-ceramic-powder", amount=12},
      {type="fluid", name="nullius-carbon-monoxide", amount=60}
    },
    main_product = "nullius-ceramic-powder"
  },
  {
    type = "recipe",
    name = "nullius-boxed-ceramic-powder",
    enabled = false,
    category = "bulk-smelting",
    subgroup = "boxed-glass",
    always_show_made_in = true,
    energy_required = 40,
    ingredients = {
      {type="item", name="nullius-box-silicon-ingot", amount=15},
      {type="item", name="nullius-box-graphite", amount=12},
      {type="item", name="nullius-box-boron", amount=1},
      {type="fluid", name="nullius-nitrogen", amount=1000}
    },
    results = {
      {type="item", name="nullius-box-ceramic-powder", amount=12},
      {type="fluid", name="nullius-carbon-monoxide", amount=300}
    },
    main_product = "nullius-box-ceramic-powder"
  },

  {
    type = "item",
    name = "nullius-bearing",
    icon = ICONPATH .. "bearing.png",
    icon_size = 64,
    subgroup = "mechanical-intermediate",
    order = "nullius-e",
    stack_size = 100
  },
  {
    type = "recipe",
    name = "nullius-bearing",
    enabled = false,
    category = "machine-casting",
    always_show_made_in = true,
    energy_required = 4,
    ingredients = {
      {type="item", name="nullius-ceramic-powder", amount=1},
      {type="fluid", name="nullius-lubricant", amount=1}
    },
    results = {
      {type = "item", name = "nullius-bearing", amount = 1}
    }
  },
  {
    type = "recipe",
    name = "nullius-boxed-bearing",
    enabled = false,
    category = "machine-casting",
    subgroup = "boxed-mechanical",
    always_show_made_in = true,
    energy_required = 20,
    ingredients = {
      {type="item", name="nullius-box-ceramic-powder", amount=1},
      {type="fluid", name="nullius-lubricant", amount=5}
    },
    results = {
      {type = "item", name = "nullius-box-bearing", amount = 1}
    }
  },

  {
    type = "item",
    name = "nullius-acrylic-fiber",
    icons = {{
      icon = "__angelssmeltinggraphics__/graphics/icons/wire-platinum.png",
      icon_size = 32,
      tint = { 0.4, 0.8, 0.8 }
    }},
    subgroup = "organic-material-1",
    order = "nullius-d",
    stack_size = 100
  },
  {
    type = "recipe",
    name = "nullius-acrylic-fiber",
    enabled = false,
    category = "ore-flotation",
    always_show_made_in = true,
    show_amount_in_title = false,
    always_show_products = true,
    energy_required = 3,
    ingredients = {
      {type="fluid", name="nullius-acrylonitrile", amount=4},
      {type="fluid", name="nullius-water", amount=3}
    },
    results = {
      {type = "item", name = "nullius-acrylic-fiber", amount = 1}
    }
  },
  {
    type = "recipe",
    name = "nullius-boxed-acrylic-fiber",
    enabled = false,
    category = "ore-flotation",
    subgroup = "boxed-organic-2",
    order = "nullius-f",
    always_show_made_in = true,
    show_amount_in_title = false,
    always_show_products = true,
    energy_required = 15,
    ingredients = {
      {type="fluid", name="nullius-acrylonitrile", amount=20},
      {type="fluid", name="nullius-water", amount=15}
    },
    results = {
      {type = "item", name = "nullius-box-acrylic-fiber", amount = 1}
    }
  },

  {
    type = "item",
    name = "nullius-carbon-fiber",
    icons = {{
      icon = ICONPATH .. "carbon-fiber.png",
      icon_size = 128
    }},
    subgroup = "organic-material-1",
    order = "nullius-e",
    stack_size = 100
  },
  {
    type = "recipe",
    name = "nullius-carbon-fiber",
    enabled = false,
    category = "wet-smelting",
    always_show_made_in = true,
    energy_required = 10,
    ingredients = {
      {type="item", name="nullius-acrylic-fiber", amount=3},
      {type="fluid", name="nullius-argon", amount=1}
    },
    results = {
      {type="item", name="nullius-carbon-fiber", amount=1},
      {type="fluid", name="nullius-ammonia", amount=10}
    },
    main_product = "nullius-carbon-fiber"
  },
  {
    type = "recipe",
    name = "nullius-boxed-carbon-fiber",
    enabled = false,
    category = "bulk-smelting",
    subgroup = "boxed-organic-2",
    order = "nullius-g",
    always_show_made_in = true,
    energy_required = 10,
    ingredients = {
      {type="item", name="nullius-box-acrylic-fiber", amount=3},
      {type="fluid", name="nullius-argon", amount=5}
    },
    results = {
      {type="item", name="nullius-box-carbon-fiber", amount=1},
      {type="fluid", name="nullius-ammonia", amount=50}
    },
    main_product = "nullius-box-carbon-fiber"
  },
  {
    type = "recipe",
    name = "nullius-carbon-nanotubes",
    localised_name = {"recipe-name.nullius-carbon-nanotubes"},
    icons = {
	  {
        icon = ICONPATH .. "carbon-fiber.png",
        icon_size = 128
      },
      {
        icon = ICONPATH .. "plate.png",
        icon_size = 64,
        tint = {0.4, 0.4, 0.4, 0.4},
        scale = 0.4,
        shift = {5, -8}
      }
	  },
	  enabled = false,
    always_show_made_in = true,
    show_amount_in_title = false,
    always_show_products = true,
    category = "nanotechnology",
    order = "nullius-ec",
    energy_required = 2,
    ingredients = {
      {type="item", name="nullius-graphene", amount=1}
    },
    results = {
      {type="item", name="nullius-carbon-fiber", amount=2}
    },
    main_product = "nullius-carbon-fiber"
  },
  {
    type = "recipe",
    name = "nullius-boxed-carbon-nanotubes",
    localised_name = {"recipe-name.nullius-boxed", {"recipe-name.nullius-carbon-nanotubes"}},
    icons = {
      {
        icon = ICONPATH .. "boxing.png",
        icon_size = 64
      },
	    {
	      icon = ICONPATH .. "carbon-fiber.png",
        icon_size = 128,
		    scale = 0.225
      },
      {
        icon = ICONPATH .. "plate.png",
        icon_size = 64,
        tint = {0.4, 0.4, 0.4, 0.4},
        scale = 0.36,
        shift = {4, -7}
      }
	},
	  enabled = false,
    always_show_made_in = true,
    show_amount_in_title = false,
    always_show_products = true,
    category = "nanotechnology",
    subgroup = "boxed-organic-2",
    order = "nullius-gc",
    energy_required = 10,
    ingredients = {
      {type="item", name="nullius-box-graphene", amount=1}
    },
    results = {
      {type="item", name="nullius-box-carbon-fiber", amount=2}
    },
    main_product = "nullius-box-carbon-fiber"
  },

  {
    type = "item",
    name = "nullius-textile",
    icon = "__angelssmeltinggraphics__/graphics/icons/roll-zinc.png",
    icon_size = 64,
    
    subgroup = "organic-material-2",
    order = "nullius-d",
    stack_size = 100
  },
  {
    type = "recipe",
    name = "nullius-textile",
    localised_name = {"", {"item-name.nullius-textile"}, " ", tostring(1)},
    enabled = false,
    always_show_made_in = true,
    show_amount_in_title = false,
    always_show_products = true,
    category = "medium-assembly",
    order = "nullius-db",
    energy_required = 35,
    ingredients = {
      {type="item", name="nullius-acrylic-fiber", amount=10},
      {type="item", name="nullius-sodium-sulfate", amount=1}
    },
    results = {
      {type = "item", name = "nullius-textile", amount = 5}
    }
  },
  {
    type = "recipe",
    name = "nullius-boxed-textile-1",
    localised_name = {"", {"item-name.nullius-box", {"item-name.nullius-textile"}}, " ", tostring(1)},
    enabled = false,
    always_show_made_in = true,
    show_amount_in_title = false,
    always_show_products = true,
    category = "large-assembly",
    subgroup = "boxed-organic-2",
    order = "nullius-hb",
    energy_required = 175,
    ingredients = {
      {type="item", name="nullius-box-acrylic-fiber", amount=10},
      {type="item", name="nullius-box-sodium-sulfate", amount=1}
    },
    results = {
      {type = "item", name = "nullius-box-textile", amount = 5}
    }
  },
  {
    type = "recipe",
    name = "nullius-textile-2",
    localised_name = {"", {"item-name.nullius-textile"}, " ", tostring(2)},
    hide_from_signal_gui = false,
    icons = {
      {
        icon = "__angelssmeltinggraphics__/graphics/icons/roll-zinc.png",
        icon_size = 64,
        
      },
      {
        icon = "__base__/graphics/decorative/brown-asterisk/brown-asterisk-11.png",
        icon_size = 54,
        scale = 0.35,
        shift = {7, -10}
      }
    },
    enabled = false,
    always_show_made_in = true,
    show_amount_in_title = false,
    always_show_products = true,
    category = "medium-assembly",
    order = "nullius-dc",
    energy_required = 25,
    ingredients = {
      {type="item", name="nullius-acrylic-fiber", amount=8},
      {type="item", name="nullius-cellulose", amount=6},
      {type="item", name="nullius-sodium-sulfate", amount=1}
    },
    results = {
      {type = "item", name = "nullius-textile", amount = 12}
    }
  },
  {
    type = "recipe",
    name = "nullius-boxed-textile-2",
    localised_name = {"", {"item-name.nullius-box", {"item-name.nullius-textile"}}, " ", tostring(2)},
    icons = {
      {
        icon = ICONPATH .. "crate.png",
        icon_size = 64
      },
      {
        icon = "__angelssmeltinggraphics__/graphics/icons/roll-zinc.png",
        icon_size = 64,
        
        scale = 0.45
      },
      {
        icon = "__base__/graphics/decorative/brown-asterisk/brown-asterisk-11.png",
        icon_size = 54,
        scale = 0.32,
        shift = {6, -9}
      }
    },
    enabled = false,
    always_show_made_in = true,
    show_amount_in_title = false,
    always_show_products = true,
    category = "large-assembly",
    subgroup = "boxed-organic-2",
    order = "nullius-hc",
    energy_required = 125,
    ingredients = {
      {type="item", name="nullius-box-acrylic-fiber", amount=8},
      {type="item", name="nullius-box-cellulose", amount=6},
      {type="item", name="nullius-box-sodium-sulfate", amount=1}
    },
    results = {
      {type = "item", name = "nullius-box-textile", amount = 12}
    }
  },

  {
    type = "item",
    name = "nullius-titanium-ingot",
    icon = "__angelssmeltinggraphics__/graphics/icons/ingot-titanium.png",
    icon_size = 64,
    
    subgroup = "titanium-product",
    order = "nullius-d",
    stack_size = 100
  },
  {
    type = "recipe",
    name = "nullius-titanium-tetrachloride",
    enabled = false,
    category = "wet-smelting",
    subgroup = "titanium-product",
    order = "nullius-c",
    energy_required = 10,
    ingredients = {
      {type="item", name="nullius-rutile", amount=4},
      {type="item", name="nullius-graphite", amount=7},
      {type="fluid", name="nullius-chlorine", amount=80}
    },
    results = {
      {type="fluid", name="nullius-titanium-tetrachloride", amount=15},
      {type="item", name="nullius-mineral-dust", amount=2}
    },
    main_product = "nullius-titanium-tetrachloride"
  },
  {
    type = "recipe",
    name = "nullius-boxed-titanium-tetrachloride",
    localised_name = {"recipe-name.nullius-boxed", {"fluid-name.nullius-titanium-tetrachloride"}},
    icons = {
      {
        icon = ICONPATH .. "crate.png",
        icon_size = 64
      },
      data.raw.fluid["nullius-titanium-tetrachloride"].icons[2],
      data.raw.fluid["nullius-titanium-tetrachloride"].icons[3],
      data.raw.fluid["nullius-titanium-tetrachloride"].icons[4]
    },
    enabled = false,
    category = "bulk-smelting",
    subgroup = "boxed-titanium",
    order = "nullius-c",
    energy_required = 10,
    ingredients = {
      {type="item", name="nullius-box-rutile", amount=4},
      {type="item", name="nullius-box-graphite", amount=7},
      {type="fluid", name="nullius-chlorine", amount=400}
    },
    results = {
      {type="fluid", name="nullius-titanium-tetrachloride", amount=75},
      {type="item", name="nullius-box-mineral-dust", amount=2}
    },
    main_product = "nullius-titanium-tetrachloride"
  },

  {
    type = "recipe",
    name = "nullius-titanium-ingot",
	  localised_name = {"", {"item-name.nullius-titanium-ingot"}, " ", tostring(1)},
    enabled = false,
    category = "ore-flotation",
    order = "nullius-db",
    energy_required = 8,
    ingredients = {
      {type="fluid", name="nullius-titanium-tetrachloride", amount=10},
      {type="item", name="nullius-sodium", amount=6},
      {type="fluid", name="nullius-argon", amount=1}
    },
    results = {
      {type="item", name="nullius-titanium-ingot", amount=1},
      {type="item", name="nullius-salt", amount=4}
    },
    main_product = "nullius-titanium-ingot"
  },
  {
    type = "recipe",
    name = "nullius-boxed-titanium-ingot-1",
    localised_name = {"", {"item-name.nullius-box", {"item-name.nullius-titanium-ingot"}}, " ", tostring(1)},
    enabled = false,
    category = "ore-flotation",
    subgroup = "boxed-titanium",
    order = "nullius-db",
    energy_required = 40,
    ingredients = {
      {type="fluid", name="nullius-titanium-tetrachloride", amount=50},
      {type="item", name="nullius-box-sodium", amount=6},
      {type="fluid", name="nullius-argon", amount=5}
    },
    results = {
      {type="item", name="nullius-box-titanium-ingot", amount=1},
      {type="item", name="nullius-box-salt", amount=4}
    },
    main_product = "nullius-box-titanium-ingot"
  },
  {
    type = "recipe",
    name = "nullius-titanium-ingot-2",
    localised_name = {"", {"item-name.nullius-titanium-ingot"}, " ", tostring(2)},
    icons = {
      {
        icon = "__angelssmeltinggraphics__/graphics/icons/ingot-titanium.png",
        icon_size = 64,
        
      },
      {
        icon = ICONPATH .. "calcium.png",
        icon_size = 64,
        scale = 0.25,
        shift = {10, -10}
      }
    },
    enabled = false,
    category = "vent-smelting",
    order = "nullius-dc",
    energy_required = 20,
    ingredients = {
      {type="item", name="nullius-rutile", amount=7},
      {type="item", name="nullius-calcium", amount=4},
      {type="item", name="nullius-calcium-chloride", amount=2}
    },
    results = {
      {type="item", name="nullius-titanium-ingot", amount=5},
      {type="item", name="nullius-lime", amount=4},
      {type="fluid", name="nullius-chlorine", amount=5}
    },
    main_product = "nullius-titanium-ingot"
  },
  {
    type = "recipe",
    name = "nullius-boxed-titanium-ingot-2",
    localised_name = {"", {"item-name.nullius-box", {"item-name.nullius-titanium-ingot"}}, " ", tostring(2)},
    icons = {
      {
        icon = ICONPATH .. "crate.png",
        icon_size = 64
      },
      {
        icon = "__angelssmeltinggraphics__/graphics/icons/ingot-titanium.png",
        icon_size = 64,
        
        scale = 0.45
      },
      {
        icon = ICONPATH .. "calcium.png",
        icon_size = 64,
        scale = 0.2,
        shift = {8, -10}
      }
    },
    enabled = false,
    category = "bulk-smelting",
    subgroup = "boxed-titanium",
    order = "nullius-dc",
    energy_required = 20,
    ingredients = {
      {type="item", name="nullius-box-rutile", amount=7},
      {type="item", name="nullius-box-calcium", amount=4},
      {type="item", name="nullius-box-calcium-chloride", amount=2}
    },
    results = {
      {type="item", name="nullius-box-titanium-ingot", amount=5},
      {type="item", name="nullius-box-lime", amount=4},
      {type="fluid", name="nullius-chlorine", amount=25}
    },
    main_product = "nullius-box-titanium-ingot"
  },

  {
    type = "item",
    name = "nullius-titanium-plate",
    icon = "__angelssmeltinggraphics__/graphics/icons/plate-titanium.png",
    icon_size = 32,
    subgroup = "titanium-product",
    order = "nullius-e",
    stack_size = 100
  },
  {
    type = "recipe",
    name = "nullius-titanium-plate",
    enabled = false,
    category = "machine-casting",
    energy_required = 5,
    ingredients = {
      {type="item", name="nullius-titanium-ingot", amount=4},
      {type="fluid", name="nullius-acid-nitric", amount=2}
    },
    results = {
      {type="item", name="nullius-titanium-plate", amount=3},
      {type="fluid", name="nullius-sludge", amount=1}
    },
    main_product = "nullius-titanium-plate"
  },
  {
    type = "recipe",
    name = "nullius-boxed-titanium-plate",
    enabled = false,
    category = "machine-casting",
    subgroup = "boxed-titanium",
    energy_required = 25,
    ingredients = {
      {type="item", name="nullius-box-titanium-ingot", amount=4},
      {type="fluid", name="nullius-acid-nitric", amount=10}
    },
    results = {
      {type="item", name="nullius-box-titanium-plate", amount=3},
      {type="fluid", name="nullius-sludge", amount=5}
    },
    main_product = "nullius-box-titanium-plate"
  },

  {
    type = "item",
    name = "nullius-titanium-rod",
    icons = {{
      icon = "__angelssmeltinggraphics__/graphics/icons/rod-steel.png",
      icon_size = 32,
      tint = {0.8, 0.6, 0.8}
    }},
    subgroup = "titanium-product",
    order = "nullius-f",
    stack_size = 200
  },
  {
    type = "recipe",
    name = "nullius-titanium-rod",
    enabled = false,
    category = "machine-casting",
    energy_required = 6,
    ingredients = {
      {type="item", name="nullius-titanium-ingot", amount=4},
      {type="fluid", name="nullius-acid-nitric", amount=2}
    },
    results = {
      {type="item", name="nullius-titanium-rod", amount=5},
      {type="fluid", name="nullius-sludge", amount=1}
    },
    main_product = "nullius-titanium-rod"
  },
  {
    type = "recipe",
    name = "nullius-boxed-titanium-rod",
    enabled = false,
    category = "machine-casting",
    subgroup = "boxed-titanium",
    energy_required = 30,
    ingredients = {
      {type="item", name="nullius-box-titanium-ingot", amount=4},
      {type="fluid", name="nullius-acid-nitric", amount=10}
    },
    results = {
      {type="item", name="nullius-box-titanium-rod", amount=5},
      {type="fluid", name="nullius-sludge", amount=5}
    },
    main_product = "nullius-box-titanium-rod"
  },

  {
    type = "item",
    name = "nullius-titanium-sheet",
    icon = "__angelssmeltinggraphics__/graphics/icons/roll-titanium.png",
    icon_size = 64,
    
    subgroup = "titanium-product",
    order = "nullius-g",
    stack_size = 100
  },
  {
    type = "recipe",
    name = "nullius-titanium-sheet",
    enabled = false,
    category = "machine-casting",
    always_show_made_in = true,
    show_amount_in_title = false,
    always_show_products = true,
    energy_required = 6,
    ingredients = {
      {type="item", name="nullius-titanium-plate", amount=4},
      {type="fluid", name="nullius-lubricant", amount=1}
    },
    results = {
      {type = "item", name = "nullius-titanium-sheet", amount = 5}
    }
  },
  {
    type = "recipe",
    name = "nullius-boxed-titanium-sheet",
    enabled = false,
    category = "machine-casting",
    subgroup = "boxed-titanium",
    always_show_made_in = true,
    show_amount_in_title = false,
    always_show_products = true,
    energy_required = 30,
    ingredients = {
      {type="item", name="nullius-box-titanium-plate", amount=4},
      {type="fluid", name="nullius-lubricant", amount=5}
    },
    results = {
      {type = "item", name = "nullius-box-titanium-sheet", amount = 5}
    }
  },

  {
    type = "item",
    name = "nullius-robot-frame-1",
    icon = ICONPATH .. "frame1.png",
    icon_size = 64,
    subgroup = "robotic-intermediate",
    order = "nullius-cb",
    stack_size = 50
  },
  {
    type = "item",
    name = "nullius-robot-frame-2",
    icon = ICONPATH .. "frame2.png",
    icon_size = 64,
    subgroup = "robotic-intermediate",
    order = "nullius-cc",
    stack_size = 50
  },
  {
    type = "item",
    name = "nullius-robot-frame-3",
    icon = ICONPATH .. "frame3.png",
    icon_size = 64,
    subgroup = "robotic-intermediate",
    order = "nullius-cd",
    stack_size = 50
  },
  {
    type = "item",
    name = "nullius-robot-frame-4",
    icon = ICONPATH .. "frame4.png",
    icon_size = 64,
    subgroup = "robotic-intermediate",
    order = "nullius-ce",
    stack_size = 50
  },
  {
    type = "recipe",
    name = "nullius-robot-frame-1",
    enabled = false,
    show_amount_in_title = false,
    always_show_products = true,
    always_show_made_in = true,
    category = "tiny-crafting",
    energy_required = 15,
    ingredients = {
      {type = "item", name = "nullius-turbine-open-2", amount = 1},
      {type = "item", name = "nullius-capacitor", amount = 4},
      {type = "item", name = "bob-turbo-inserter", amount = 3},
      {type = "item", name = "constant-combinator", amount = 3},
      {type = "item", name = "programmable-speaker", amount = 2},
      {type = "item", name = "nullius-sensor-1", amount = 2},
      {type = "item", name = "nullius-aluminum-plate", amount = 3}
    },
    results = {
      {type = "item", name = "nullius-robot-frame-1", amount = 2}
    }
  },
  {
    type = "recipe",
    name = "nullius-boxed-robot-frame-1",
    enabled = false,
    show_amount_in_title = false,
    always_show_products = true,
    always_show_made_in = true,
    category = "medium-only-assembly",
    subgroup = "boxed-hangar",
    order = "nullius-gb",
    energy_required = 75,
    ingredients = {
      {type = "item", name = "nullius-box-turbine-open-2", amount = 1},
      {type = "item", name = "nullius-box-capacitor", amount = 4},
      {type = "item", name = "nullius-box-inserter-2", amount = 3},
      {type = "item", name = "nullius-box-memory-circuit", amount = 3},
      {type = "item", name = "nullius-box-antenna", amount = 2},
      {type = "item", name = "nullius-box-sensor-1", amount = 2},
      {type = "item", name = "nullius-box-aluminum-plate", amount = 3}
    },
    results = {
      {type = "item", name = "nullius-box-robot-frame-1", amount = 2}
    }
  },
  {
    type = "recipe",
    name = "nullius-legacy-robot-frame-1",
    enabled = false,
	  hidden = true,
    show_amount_in_title = false,
    always_show_products = true,
    always_show_made_in = true,
    allow_decomposition = false,
    allow_as_intermediate = false,
    category = "tiny-assembly",
    order = "nullius-cbl",
    energy_required = 12,
    ingredients = {
      {type = "item", name = "nullius-turbine-open-1", amount = 1},
      {type = "item", name = "nullius-capacitor", amount = 2},
      {type = "item", name = "bob-turbo-inserter", amount = 2},
      {type = "item", name = "constant-combinator", amount = 2},
      {type = "item", name = "programmable-speaker", amount = 1},
      {type = "item", name = "nullius-aluminum-sheet", amount = 3}
    },
    results = {
      {type = "item", name = "nullius-robot-frame-1", amount = 2}
    }
  },
  {
    type = "recipe",
    name = "nullius-legacy-boxed-robot-frame-1",
    enabled = false,
	  hidden = true,
    show_amount_in_title = false,
    always_show_products = true,
    always_show_made_in = true,
    allow_decomposition = false,
    allow_as_intermediate = false,
    category = "medium-only-assembly",
    subgroup = "boxed-hangar",
    order = "nullius-gbl",
    energy_required = 60,
    ingredients = {
      {type = "item", name = "nullius-box-turbine-open-1", amount = 1},
      {type = "item", name = "nullius-box-capacitor", amount = 2},
      {type = "item", name = "nullius-box-inserter-2", amount = 2},
      {type = "item", name = "nullius-box-memory-circuit", amount = 2},
      {type = "item", name = "nullius-box-antenna", amount = 1},
      {type = "item", name = "nullius-box-aluminum-sheet", amount = 3}
    },
    results = {
      {type = "item", name = "nullius-box-robot-frame-1", amount = 2}
    }
  },
  {
    type = "recipe",
    name = "nullius-robot-frame-2",
    enabled = false,
    show_amount_in_title = false,
    always_show_products = true,
    always_show_made_in = true,
    category = "tiny-crafting",
    energy_required = 10,
    ingredients = {
      {type = "item", name = "nullius-robot-frame-1", amount = 1},
      {type = "item", name = "nullius-levitation-field-1", amount = 1},
      {type = "item", name = "nullius-battery-1", amount = 2},
      {type = "item", name = "nullius-night-vision-1", amount = 1},
      {type = "item", name = "nullius-fiberglass", amount = 3}
    },
    results = {
      {type = "item", name = "nullius-robot-frame-2", amount = 1}
    }
  },
  {
    type = "recipe",
    name = "nullius-boxed-robot-frame-2",
    enabled = false,
    show_amount_in_title = false,
    always_show_products = true,
    always_show_made_in = true,
    category = "medium-only-assembly",
    subgroup = "boxed-hangar",
    order = "nullius-gc",
    energy_required = 50,
    ingredients = {
      {type = "item", name = "nullius-box-robot-frame-1", amount = 1},
      {type = "item", name = "nullius-box-levitation-field-1",amount =  1},
      {type = "item", name = "nullius-box-battery-1", amount = 2},
      {type = "item", name = "nullius-box-night-vision-1", amount = 1},
      {type = "item", name = "nullius-box-fiberglass", amount = 3}
    },
    results = {
      {type = "item", name = "nullius-box-robot-frame-2", amount = 1}
    }
  },
  {
    type = "recipe",
    name = "nullius-legacy-robot-frame-2",
    enabled = false,
	  hidden = true,
    show_amount_in_title = false,
    always_show_products = true,
    always_show_made_in = true,
    allow_decomposition = false,
    allow_as_intermediate = false,
    category = "tiny-assembly",
    order = "nullius-ccl",
    energy_required = 15,
    ingredients = {
      {type = "item", name = "nullius-robot-frame-1", amount = 1},
      {type = "item", name = "nullius-turbine-open-2", amount = 1},
      {type = "item", name = "nullius-battery-1", amount = 3},
      {type = "item", name = "nullius-sensor-1", amount = 2},
      {type = "item", name = "nullius-fiberglass", amount = 5}
    },
    results = {
      {type = "item", name = "nullius-robot-frame-2", amount = 2}
    }
  },
  {
    type = "recipe",
    name = "nullius-legacy-boxed-robot-frame-2",
    enabled = false,
	  hidden = true,
    show_amount_in_title = false,
    always_show_products = true,
    always_show_made_in = true,
    allow_decomposition = false,
    allow_as_intermediate = false,
    category = "medium-only-assembly",
    subgroup = "boxed-hangar",
    order = "nullius-gcl",
    energy_required = 75,
    ingredients = {
      {type = "item", name = "nullius-box-robot-frame-1", amount = 1},
      {type = "item", name = "nullius-box-turbine-open-2", amount = 1},
      {type = "item", name = "nullius-box-battery-1", amount = 3},
      {type = "item", name = "nullius-box-sensor-1", amount = 2},
      {type = "item", name = "nullius-box-fiberglass", amount = 5}
    },
    results = {
      {type = "item", name = "nullius-box-robot-frame-2", amount = 2}
    }
  },
  {
    type = "recipe",
    name = "nullius-robot-frame-3",
    enabled = false,
    show_amount_in_title = false,
    always_show_products = true,
    always_show_made_in = true,
    category = "tiny-crafting",
    energy_required = 25,
    ingredients = {
      {type = "item", name = "nullius-robot-frame-2", amount = 2},
      {type = "item", name = "nullius-turbine-open-3", amount = 1},
      {type = "item", name = "nullius-battery-2", amount = 2},
      {type = "item", name = "nullius-carbon-composite", amount = 5},
      {type = "item", name = "nullius-relay-3", amount = 1},
      {type = "item", name = "bob-express-bulk-inserter", amount = 3}
    },
    results = {
      {type = "item", name = "nullius-robot-frame-3", amount = 2}
    }
  },
  {
    type = "recipe",
    name = "nullius-boxed-robot-frame-3",
    enabled = false,
    show_amount_in_title = false,
    always_show_products = true,
    always_show_made_in = true,
    category = "medium-only-assembly",
    subgroup = "boxed-hangar",
    order = "nullius-gd",
    energy_required = 125,
    ingredients = {
      {type = "item", name = "nullius-box-robot-frame-2", amount = 2},
      {type = "item", name = "nullius-box-turbine-open-3", amount = 1},
      {type = "item", name = "nullius-box-battery-2", amount = 2},
      {type = "item", name = "nullius-box-carbon-composite", amount = 5},
      {type = "item", name = "nullius-box-relay-3", amount = 1},
      {type = "item", name = "nullius-box-inserter-4", amount = 3}
    },
    results = {
      {type = "item", name = "nullius-box-robot-frame-3", amount = 2}
    }
  },
  {
    type = "recipe",
    name = "nullius-robot-frame-4",
    enabled = false,
    show_amount_in_title = false,
    always_show_products = true,
    always_show_made_in = true,
    category = "tiny-crafting",
    energy_required = 30,
    ingredients = {
      {type = "item", name = "nullius-robot-frame-3", amount = 1},
      {type = "item", name = "nullius-titanium-sheet", amount = 6},
      {type = "item", name = "nullius-copper-wire", amount = 4},
      {type = "item", name = "nullius-night-vision-3", amount = 1},
      {type = "item", name = "nullius-levitation-field-2", amount = 1},
      {type = "item", name = "nullius-processor-3", amount = 2}
    },
    results = {
      {type = "item", name = "nullius-robot-frame-4", amount = 1}
    }
  },
  {
    type = "recipe",
    name = "nullius-boxed-robot-frame-4",
    enabled = false,
    show_amount_in_title = false,
    always_show_products = true,
    always_show_made_in = true,
    category = "medium-only-assembly",
    subgroup = "boxed-hangar",
    order = "nullius-ge",
    energy_required = 150,
    ingredients = {
      {type = "item", name = "nullius-box-robot-frame-3", amount = 1},
      {type = "item", name = "nullius-box-titanium-sheet", amount = 6},
      {type = "item", name = "nullius-box-copper-wire", amount = 4},
      {type = "item", name = "nullius-night-vision-3", amount = 5},
      {type = "item", name = "nullius-levitation-field-2", amount = 5},
      {type = "item", name = "nullius-box-processor-3", amount = 2}
    },
    results = {
      {type = "item", name = "nullius-box-robot-frame-4", amount = 1}
    }
  },

  {
    type = "item",
    name = "nullius-fiberglass",
    icons = {{
      icon = "__angelssmeltinggraphics__/graphics/icons/plate-nickel.png",
      icon_size = 32,
      tint = {0.5, 0.7, 1}
    }},
    subgroup = "glass-product",
    order = "nullius-e",
    stack_size = 100
  },
  {
    type = "recipe",
    name = "nullius-fiberglass",
    enabled = false,
    show_amount_in_title = false,
    always_show_products = true,
    category = "large-fluid-assembly",
    energy_required = 12,
    ingredients = {
      {type="item", name="nullius-glass-fiber", amount=2},
      {type="fluid", name="nullius-epoxy", amount=15, fluidbox_index=1}
    },
    results = {
      {type = "item", name = "nullius-fiberglass", amount = 5}
    }
  },
  {
    type = "recipe",
    name = "nullius-boxed-fiberglass",
    enabled = false,
    show_amount_in_title = false,
    always_show_products = true,
    category = "huge-fluid-assembly",
    subgroup = "boxed-glass",
    energy_required = 60,
    ingredients = {
      {type="item", name="nullius-box-glass-fiber", amount=2},
      {type="fluid", name="nullius-epoxy", amount=75, fluidbox_index=1}
    },
    results = {
      {type = "item", name = "nullius-box-fiberglass", amount = 5}
    }
  },

  {
    type = "item",
    name = "nullius-carbon-composite",
    icons = {{
      icon = ICONPATH .. "plate.png",
      icon_size = 64,
      tint = {0.35, 0.35, 0.45}
    }},
    subgroup = "organic-material-2",
    order = "nullius-e",
    stack_size = 100
  },
  {
    type = "recipe",
    name = "nullius-carbon-composite",
    enabled = false,
    show_amount_in_title = false,
    always_show_products = true,
    category = "machine-casting",
    energy_required = 8,
    ingredients = {
      {type="item", name="nullius-carbon-fiber", amount=2},
      {type="fluid", name="nullius-epoxy", amount=8}
    },
    results = {
      {type = "item", name = "nullius-carbon-composite", amount = 1}
    }
  },
  {
    type = "recipe",
    name = "nullius-boxed-carbon-composite",
    enabled = false,
    show_amount_in_title = false,
    always_show_products = true,
    category = "machine-casting",
    subgroup = "boxed-organic-2",
    order = "nullius-i",
    energy_required = 40,
    ingredients = {
      {type="item", name="nullius-box-carbon-fiber", amount=2},
      {type="fluid", name="nullius-epoxy", amount=40}
    },
    results = {
      {type = "item", name = "nullius-box-carbon-composite", amount = 1}
    }
  },

  {
    type = "item",
    name = "nullius-graphene",
    icons = {{
      icon = ICONPATH .. "plate.png",
      icon_size = 64,
      tint = {0.4, 0.4, 0.4, 0.4}
    }},
    subgroup = "organic-material-2",
    order = "nullius-f",
    stack_size = 50
  },
  {
    type = "recipe",
    name = "nullius-graphene",
    enabled = false,
    category = "nanotechnology",
    energy_required = 64,
    ingredients = {
      {type="item", name="nullius-graphite", amount=8},
      {type="item", name="nullius-monocrystalline-silicon", amount=4},
      {type="fluid", name="nullius-acid-nitric", amount=35, fluidbox_index=1},
      {type="fluid", name="nullius-compressed-argon", amount=6, fluidbox_index=2}
    },
    results = {
      {type="item", name="nullius-graphene", amount=3},
      {type="item", name="nullius-silica", amount=3},
      {type="fluid", name="nullius-wastewater", amount=30}
    },
    main_product = "nullius-graphene"
  },
  {
    type = "recipe",
    name = "nullius-boxed-graphene",
    enabled = false,
    category = "nanotechnology",
    subgroup = "boxed-organic-2",
    order = "nullius-j",
    energy_required = 320,
    ingredients = {
      {type="item", name="nullius-box-graphite", amount=8},
      {type="item", name="nullius-box-monocrystalline-silicon", amount=4},
      {type="fluid", name="nullius-acid-nitric", amount=175, fluidbox_index=1},
      {type="fluid", name="nullius-compressed-argon", amount=30, fluidbox_index=2},
    },
    results = {
      {type="item", name="nullius-box-graphene", amount=3},
      {type="item", name="nullius-box-silica", amount=3},
      {type="fluid", name="nullius-wastewater", amount=150}
    },
    main_product = "nullius-box-graphene"
  },

  {
    type = "item",
    name = "nullius-insulation",
    icon = "__angelssmeltinggraphics__/graphics/icons/roll-manganese.png",
    icon_size = 64,
    
    subgroup = "glass-product",
    order = "nullius-f",
    stack_size = 100
  },
  {
    type = "recipe",
    name = "nullius-insulation",
    enabled = false,
    show_amount_in_title = false,
    always_show_products = true,
    category = "medium-assembly",
    energy_required = 6,
    ingredients = {
      {type = "item", name = "nullius-gypsum", amount = 3},
      {type = "item", name = "nullius-glass-fiber", amount = 2},
      {type = "item", name = "nullius-plastic", amount = 2},
      {type = "item", name = "nullius-textile", amount = 1}
    },
    results = {
      {type = "item", name = "nullius-insulation", amount = 2}
    }
  },
  {
    type = "recipe",
    name = "nullius-boxed-insulation",
    enabled = false,
    show_amount_in_title = false,
    always_show_products = true,
    category = "huge-assembly",
    subgroup = "boxed-glass",
    energy_required = 30,
    ingredients = {
      {type = "item", name = "nullius-box-gypsum", amount = 3},
      {type = "item", name = "nullius-box-glass-fiber", amount = 2},
      {type = "item", name = "nullius-box-plastic", amount = 2},
      {type = "item", name = "nullius-box-textile", amount = 1}
    },
    results = {
      {type = "item", name = "nullius-box-insulation", amount = 2}
    }
  },

  {
    type = "item",
    name = "nullius-processor-1",
    icon = "__base__/graphics/icons/electronic-circuit.png",
    icon_size = 64,
    
    subgroup = "electronic-intermediate",
    order = "nullius-fb",
    stack_size = 50
  },
  {
    type = "recipe",
    name = "nullius-processor-1",
    enabled = false,
    category = "nanotechnology",
    energy_required = 6,
    ingredients = {
      {type="item", name="nullius-fiberglass", amount=1},
      {type="item", name="nullius-monocrystalline-silicon", amount=2},
      {type="item", name="nullius-ceramic-powder", amount=1},
      {type="item", name="constant-combinator", amount=2},
      {type="item", name="nullius-green-wire", amount=2},
      {type="fluid", name="nullius-acid-nitric", amount=3, fluidbox_index=2},
      {type="fluid", name="nullius-argon", amount=2, fluidbox_index=3}
    },
    results = {
      {type = "item", name = "nullius-processor-1", amount = 1}
    }
  },
  {
    type = "recipe",
    name = "nullius-boxed-processor-1",
    enabled = false,
    category = "nanotechnology",
    subgroup = "boxed-electrical",
    energy_required = 30,
    ingredients = {
      {type="item", name="nullius-box-fiberglass", amount=1},
      {type="item", name="nullius-box-monocrystalline-silicon", amount=2},
      {type="item", name="nullius-box-ceramic-powder", amount=1},
      {type="item", name="nullius-box-memory-circuit", amount=2},
      {type="item", name="nullius-box-green-wire", amount=2},
      {type="fluid", name="nullius-acid-nitric", amount=15, fluidbox_index=2},
      {type="fluid", name="nullius-argon", amount=10, fluidbox_index=3}
    },
    results = {
      {type = "item", name = "nullius-box-processor-1", amount = 1}
    }
  },
  {
    type = "item",
    name = "nullius-processor-2",
    icon = "__base__/graphics/icons/advanced-circuit.png",
    icon_size = 64,
    
    subgroup = "electronic-intermediate",
    order = "nullius-fc",
    stack_size = 50
  },
  {
    type = "recipe",
    name = "nullius-processor-2",
    enabled = false,
    category = "nanotechnology",
    energy_required = 15,
    ingredients = {
      {type="item", name="nullius-processor-1", amount=2},
      {type="item", name="arithmetic-combinator", amount=2},
      {type="item", name="nullius-battery-1", amount=1},
      {type="item", name="nullius-heat-pipe-2", amount=1},
      {type="item", name="nullius-graphene", amount=1},
      {type="fluid", name="nullius-acid-sulfuric", amount=4, fluidbox_index=2},
      {type="fluid", name="nullius-helium", amount=8, fluidbox_index=3}
    },
    results = {
      {type = "item", name = "nullius-processor-2", amount = 1}
    }
  },
  {
    type = "recipe",
    name = "nullius-boxed-processor-2",
    enabled = false,
    category = "nanotechnology",
    subgroup = "boxed-electrical",
    energy_required = 75,
    ingredients = {
      {type="item", name="nullius-box-processor-1", amount=2},
      {type="item", name="nullius-box-arithmetic-circuit", amount=2},
      {type="item", name="nullius-box-battery-1", amount=1},
      {type="item", name="nullius-box-heat-pipe-2", amount=1},
      {type="item", name="nullius-box-graphene", amount=1},
      {type="fluid", name="nullius-acid-sulfuric", amount=20, fluidbox_index=2},
      {type="fluid", name="nullius-helium", amount=40, fluidbox_index=3}
    },
    results = {
      {type = "item", name = "nullius-box-processor-2", amount = 1}
    }
  },
  {
    type = "item",
    name = "nullius-processor-3",
    icon = "__base__/graphics/icons/processing-unit.png",
    icon_size = 64,
    
    subgroup = "electronic-intermediate",
    order = "nullius-fc",
    stack_size = 50
  },
  {
    type = "recipe",
    name = "nullius-processor-3",
    enabled = false,
    category = "nanotechnology",
    energy_required = 25,
    ingredients = {
      {type="item", name="nullius-processor-2", amount=2},
      {type="item", name="nullius-sensor-2", amount=1},
      {type="item", name="nullius-copper-wire", amount=4},
      {type="item", name="nullius-copper-sheet", amount=1},
      {type="item", name="nullius-monocrystalline-silicon", amount=3},
      {type="item", name="nullius-heat-pipe-3", amount=1},
      {type="fluid", name="nullius-helium", amount=8, fluidbox_index=2},
      {type="fluid", name="nullius-compressed-oxygen", amount=10, fluidbox_index=3}
    },
    results = {
      {type = "item", name = "nullius-processor-3", amount = 1}
    }
  },
  {
    type = "recipe",
    name = "nullius-boxed-processor-3",
    enabled = false,
    category = "nanotechnology",
    subgroup = "boxed-electrical",
    energy_required = 125,
    ingredients = {
      {type="item", name="nullius-box-processor-2", amount=2},
      {type="item", name="nullius-box-sensor-2", amount=1},
      {type="item", name="nullius-box-copper-wire", amount=4},
      {type="item", name="nullius-box-copper-sheet", amount=1},
      {type="item", name="nullius-box-monocrystalline-silicon", amount=3},
      {type="item", name="nullius-box-heat-pipe-3", amount=1},
      {type="fluid", name="nullius-helium", amount=40, fluidbox_index=2},
      {type="fluid", name="nullius-compressed-oxygen", amount=50, fluidbox_index=3}
    },
    results = {
      {type = "item", name = "nullius-box-processor-3", amount = 1}
    }
  },

  {
    type = "item",
    name = "nullius-transformer",
    icon = ICONPATH.."transformer.png",
    icon_size = 128,
    subgroup = "electronic-intermediate",
    order = "nullius-c",
    stack_size = 100
  },
  {
    type = "recipe",
    name = "nullius-transformer",
    enabled = false,
    always_show_made_in = true,
    category = "medium-crafting",
    energy_required = 6,
    ingredients = {
      {type="item", name="nullius-iron-plate", amount=2},
      {type="item", name="nullius-heat-pipe-1", amount=1},
      {type="item", name="copper-cable", amount=2},
      {type="item", name="nullius-plastic", amount=1}
    },
    results = {
      {type = "item", name = "nullius-transformer", amount = 1}
    }
  },
  {
    type = "recipe",
    name = "nullius-boxed-transformer",
    enabled = false,
    always_show_made_in = true,
    category = "large-assembly",
    subgroup = "boxed-electrical",
    energy_required = 30,
    ingredients = {
      {type="item", name="nullius-box-iron-plate", amount=2},
      {type="item", name="nullius-box-heat-pipe-1", amount=1},
      {type="item", name="nullius-box-insulated-wire", amount=2},
      {type="item", name="nullius-box-plastic", amount=1}
    },
    results = {
      {type = "item", name = "nullius-box-transformer", amount = 1}
    }
  },

  {
    type = "item",
    name = "nullius-crushed-uranium-ore",
    icons = {{
      icon = "__angelssmeltinggraphics__/graphics/icons/processed-tin.png",
      icon_size = 64,
      
      tint = {0.8, 1, 0.8}
    }},
    subgroup = "uranium",
    order = "nullius-c",
    stack_size = 50
  },
  {
    type = "recipe",
    name = "nullius-crushed-uranium-ore",
    enabled = false,
    category = "ore-crushing",
    energy_required = 12,
    ingredients = {{type="item", name="uranium-ore", amount = 5}},
    results = {
      {type="item", name="nullius-crushed-uranium-ore", amount=2},
      {type="item", name="nullius-mineral-dust", amount=3}
    },
    main_product = "nullius-crushed-uranium-ore"
  },
  {
    type = "item",
    name = "nullius-yellowcake",
    icons = {{
      icon = "__angelssmeltinggraphics__/graphics/icons/pellet-gold.png",
      icon_size = 64,
      
      tint = {0.7, 1, 0.7}
    }},
    subgroup = "uranium",
    order = "nullius-d",
    stack_size = 50
  },
  {
    type = "recipe",
    name = "nullius-yellowcake",
    enabled = false,
    icon_size = 32,
    category = "ore-flotation",
    energy_required = 4,
    ingredients = {
      {type="item", name="nullius-crushed-uranium-ore", amount=2},
      {type="fluid", name="nullius-acid-sulfuric", amount=25, fluidbox_index=1}
    },
    results = {
      {type="item", name="nullius-yellowcake", amount=1},
      {type="fluid", name="nullius-sludge", amount=10, fluidbox_index=1}
    },
    main_product = "nullius-yellowcake"
  },

  {
    type = "item",
    name = "nullius-uranium",
    icons = {{
      icon = "__base__/graphics/icons/uranium-238.png",
      icon_size = 64,
      
    }},
    subgroup = "uranium",
    order = "nullius-e",
    stack_size = 50
  },
  {
    type = "recipe",
    name = "nullius-uranium",
    enabled = false,
    category = "vent-smelting",
    energy_required = 16,
    ingredients = {
      {type="item", name="nullius-yellowcake", amount = 5},
      {type="item", name="nullius-soda-ash", amount = 2}
    },
    results = {
      {type="item", name="nullius-uranium", amount=3},
      {type="item", name="nullius-gravel", amount=2},
      {type="fluid", name="nullius-sulfur-dioxide", amount=8}
    },
    main_product = "nullius-uranium"
  },

  {
    type = "item",
    name = "nullius-enriched-uranium",
    icons = {{
      icon = "__base__/graphics/icons/uranium-235.png",
      icon_size = 64,
      
    }},
    subgroup = "uranium",
    order = "nullius-f",
    stack_size = 50
  },
  {
    type = "recipe",
    name = "nullius-enriched-uranium",
    enabled = false,
    category = "nanotechnology",
    energy_required = 30,
    ingredients = {
      {type="item", name="nullius-uranium", amount=7},
      {type="fluid", name="nullius-tritium", amount=3, fluidbox_index=1}
    },
    results = {
      {type="item", name="nullius-enriched-uranium", amount=2},
      {type="item", name="nullius-mineral-dust", amount=6},
      {type="fluid", name="nullius-deuterium", amount=2, fluidbox_index=1}
    },
    main_product = "nullius-enriched-uranium"
  },

  {
    type = "item",
    name = "nullius-fission-cell",
    icon = "__base__/graphics/icons/uranium-fuel-cell.png",
    icon_size = 64,
    
    fuel_category = "nullius-nuclear",
    burnt_result = "nullius-spent-fission-cell",
    fuel_value = "4GJ",
    fuel_acceleration_multiplier = 2.2,
    fuel_top_speed_multiplier = 1.6,
	  fuel_glow_color = {r=0, g=1, b=0, a=1},
    subgroup = "nuclear",
    order = "nullius-eb",
    stack_size = 20
  },
  {
    type = "item",
    name = "nullius-spent-fission-cell",
    icon = "__base__/graphics/icons/depleted-uranium-fuel-cell.png",
    icon_size = 64,
    
    subgroup = "nuclear",
    order = "nullius-ec",
    stack_size = 20
  },
  {
    type = "recipe",
    name = "nullius-fission-cell",
    enabled = false,
    show_amount_in_title = false,
    always_show_products = true,
    category = "machine-casting",
    energy_required = 6,
    ingredients = {
      {type="item", name="nullius-steel-sheet", amount=3},
      {type="item", name="nullius-uranium", amount=5},
      {type="item", name="nullius-enriched-uranium", amount=1}
    },
    results = {
      {type = "item", name = "nullius-fission-cell", amount = 1}
    }
  },
  {
    type = "recipe",
    name = "nullius-fission-recycling",
    icons = add_recipe_gear_icon({
      {
        icon = "__base__/graphics/icons/depleted-uranium-fuel-cell.png",
        icon_size = 64
      },
    }),
    enabled = false,
    show_amount_in_title = false,
    always_show_products = true,
    hide_from_signal_gui = false,
    category = "ore-flotation",
    subgroup = "nuclear",
    order = "nullius-ec",
    energy_required = 4,
    ingredients = {
      {type="item", name="nullius-spent-fission-cell", amount=1},
      {type="fluid", name="nullius-acid-sulfuric", amount=50},
      {type="fluid", name="nullius-caustic-solution", amount=40}
    },
    results = {
      {type="item", name="nullius-iron-oxide", amount=1},
      {type="item", name="nullius-yellowcake", amount=3},
      {type="fluid", name="nullius-wastewater", amount=80, fluidbox_index=1}
    }
  },

  {
    type = "item",
    name = "nullius-antimatter-trap",
    icon = ICONPATH .. "antimatter-trap.png",
    icon_size = 64,
    fuel_category = "nullius-nuclear",
    burnt_result = "nullius-antimatter",
    fuel_value = "1GJ",
	  fuel_glow_color = {r=0.9, g=0.6, b=0, a=1},
    subgroup = "nuclear",
    order = "nullius-fb",
    stack_size = 20
  },
  {
    type = "item",
    name = "nullius-antimatter",
    icon = ICONPATH .. "antimatter.png",
    icon_size = 64,
    subgroup = "nuclear",
    order = "nullius-fc",
    fuel_category = "vehicle",
    fuel_value = "1GJ",
    fuel_acceleration_multiplier = 2.5,
    fuel_top_speed_multiplier = 1.75,
    stack_size = 20
  },
  {
    type = "recipe",
    name = "nullius-antimatter-trap",
    enabled = false,
    always_show_made_in = true,
    category = "tiny-crafting",
    energy_required = 30,
    ingredients = {
      {type="item", name="nullius-fission-cell", amount=1},
      {type="item", name="nullius-breeder-cell", amount=2},
      {type="item", name="nullius-box-copper-wire", amount=1},
      {type="item", name="nullius-processor-3", amount=1},
      {type="item", name="nullius-sensor-2", amount=1},
      {type="item", name="nullius-battery-2", amount=2}
    },
    results = {
      {type = "item", name = "nullius-antimatter-trap", amount = 1}
    }
  },
    {
    type = "item",
    name = "nullius-red-wire",
    icon = ICONPATH.."red-wire.png",
    icon_size = 64,
    flags = {},
    auto_recycle = false,
    subgroup = "electronic-intermediate",
    color_hint = { text = "R" },
    inventory_move_sound = data.raw["item"]["red-wire"].inventory_move_sound,
    pick_sound = data.raw["item"]["red-wire"].pick_sound,
    drop_sound = data.raw["item"]["red-wire"].drop_sound,
    stack_size = 200
  },
  {
    type = "item",
    name = "nullius-green-wire",
    icon = ICONPATH.."green-wire.png",
    icon_size = 64,
    flags = {},
    auto_recycle = false,
    subgroup = "electronic-intermediate",
    color_hint = { text = "G" },
    inventory_move_sound = data.raw["item"]["green-wire"].inventory_move_sound,
    pick_sound = data.raw["item"]["green-wire"].pick_sound,
    drop_sound = data.raw["item"]["green-wire"].drop_sound,
    stack_size = 200
  },

})
