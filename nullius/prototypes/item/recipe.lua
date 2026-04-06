local ICONPATH = "__nullius__/graphics/icons/"
local ENTICONPATH = "__nullius__/graphics/icons/entity/"
local ENTITYPATH = "__nullius__/graphics/entity/"

data:extend({
  {
    type = "recipe",
    name = "nullius-stone-block",
    localised_name = {"item-name.stone-brick"},
    enabled = false,
    category = "medium-crafting",
    order = "nullius-bb",
    allow_decomposition = false,
    always_show_made_in = true,
    energy_required = 4,
    ingredients = {
      {type = "item", name = "stone", amount = 2}
    },
    results = {
      {type="item", name="stone-brick", amount=5},
      {type="item", name="nullius-gravel", amount=1}
    },
    main_product = "stone-brick"
  },
  {
    type = "recipe",
    name = "nullius-boxed-stone-brick",
    enabled = false,
    category = "huge-assembly",
    subgroup = "boxed-terrain",
    allow_decomposition = false,
    always_show_made_in = true,
    energy_required = 40,
    ingredients = {
      {type = "item", name = "nullius-box-stone", amount = 4}
    },
    results = {
      {type="item", name="nullius-box-stone-brick", amount=5},
      {type="item", name="nullius-box-gravel", amount=2}
    },
    main_product = "nullius-box-stone-brick"
  },
  {
    type = "recipe",
    name = "nullius-limestone-block",
    localised_name = {"recipe-name.nullius-limestone-brick"},
    icons = {
      {
        icon = "__base__/graphics/icons/stone-brick.png",
        icon_size = 64,
        
      },
      {
        icon = "__angelsrefininggraphics__/graphics/icons/angels-ore6/angels-ore6-3.png",
        tint = {0.898, 0.773, 0.688},
        icon_size = 64,
        scale = 0.25,
        shift = {-12, -12}
      }
    },
    enabled = false,
    category = "medium-crafting",
    order = "nullius-bd",
    allow_decomposition = false,
    allow_as_intermediate = false,
    always_show_made_in = true,
    hide_from_signal_gui = false,
    energy_required = 5,
    ingredients = {
      {type = "item", name = "nullius-limestone", amount = 4}
    },
    results = {
      {type="item", name="stone-brick", amount=12},
      {type="item", name="nullius-crushed-limestone", amount=1}
    },
    main_product = "stone-brick"
  },
  {
    type = "recipe",
    name = "nullius-sandstone-block",
    localised_name = {"recipe-name.nullius-sandstone-brick"},
    icons = {
      {
        icon = "__base__/graphics/icons/stone-brick.png",
        icon_size = 64,
        
      },
      {
        icon = "__angelsrefininggraphics__/graphics/icons/angels-ore6/angels-ore6-2.png",
        tint = {0.690, 0.611, 0.427},
        icon_size = 64,
        scale = 0.25,
        shift = {-12, -12}
      }
    },
    enabled = false,
    category = "medium-crafting",
    order = "nullius-bc",
    allow_decomposition = false,
    allow_as_intermediate = false,
    always_show_made_in = true,
    hide_from_signal_gui = false,
    energy_required = 4,
    ingredients = {
      {type = "item", name = "nullius-sandstone", amount = 3}
    },
    results = {
      {type="item", name="stone-brick", amount=10},
      {type="item", name="nullius-sand", amount=1}
    },
    main_product = "stone-brick"
  },

  {
    type = "recipe",
    name = "nullius-inserter-1",
    localised_name = {"entity-name.nullius-inserter-1"},
    enabled = false,
    always_show_made_in = true,
    show_amount_in_title = false,
    always_show_products = true,
    category = "small-crafting",
    energy_required = 8,
    ingredients = {
      {type = "item", name = "nullius-motor-1", amount = 1},
      {type = "item", name = "nullius-iron-gear", amount = 2},
      {type = "item", name = "nullius-iron-rod", amount = 3}
    },
    results = {
			{type="item", name="inserter", amount = 4}
		}
  },
  {
    type = "recipe",
    name = "nullius-boxed-inserter-1",
    enabled = false,
    always_show_made_in = true,
    show_amount_in_title = false,
    always_show_products = true,
    category = "large-assembly",
    subgroup = "boxed-inserter",
    energy_required = 25,
    ingredients = {
      {type = "item", name = "nullius-box-motor-1", amount = 1},
      {type = "item", name = "nullius-box-steel-gear", amount = 1},
      {type = "item", name = "nullius-box-steel-rod", amount = 2}
    },
    results = {
			{type="item", name="nullius-box-inserter-1", amount = 5}
		}
  },
  {
    type = "recipe",
    name = "nullius-inserter-2",
    localised_name = {"entity-name.nullius-inserter-2"},
    enabled = false,
    always_show_made_in = true,
    category = "small-crafting",
    energy_required = 4,
    ingredients = {
      {type = "item", name = "inserter", amount = 1},
      {type = "item", name = "nullius-motor-1", amount = 1},
      {type = "item", name = "nullius-steel-gear", amount = 1},
      {type = "item", name = "nullius-aluminum-rod", amount = 1},
      {type = "item", name = "decider-combinator", amount = 1}
    },
    results = {
			{type="item", name="bob-turbo-inserter", amount = 1}
		}
  },
  {
    type = "recipe",
    name = "nullius-boxed-inserter-2",
    enabled = false,
    always_show_made_in = true,
    category = "large-assembly",
    subgroup = "boxed-inserter",
    energy_required = 20,
    ingredients = {
      {type = "item", name = "nullius-box-inserter-1", amount = 1},
      {type = "item", name = "nullius-box-motor-1", amount = 1},
      {type = "item", name = "nullius-box-steel-gear", amount = 1},
      {type = "item", name = "nullius-box-aluminum-rod", amount = 1},
      {type = "item", name = "nullius-box-logic-circuit", amount = 1}
    },
    results = {
			{type="item", name="nullius-box-inserter-2", amount = 1}
		}
  },
  -- { -- TODO: remove all filter inserters i guess
  --   type = "recipe",
  --   name = "nullius-filter-inserter-2",
  --   enabled = false,
  --   always_show_made_in = true,
  --   category = "small-crafting",
  --   energy_required = 2,
  --   ingredients = {
  --     {type = "item", name = "turbo-inserter", amount = 1},
  --     {type = "item", name = "decider-combinator", amount = 1}
  --   },
  --   results = {
	-- 		{type="item", name="turbo-filter-inserter", amount = 1}
	-- 	}
  -- },
  -- {
  --   type = "recipe",
  --   name = "nullius-boxed-filter-inserter-2",
  --   enabled = false,
  --   always_show_made_in = true,
  --   category = "large-assembly",
  --   subgroup = "boxed-inserter",
  --   energy_required = 10,
  --   ingredients = {
  --     {type = "item", name = "nullius-box-inserter-2", amount = 1},
  --     {type = "item", name = "nullius-box-logic-circuit", amount = 1}
  --   },
  --   results = {
	-- 		{type="item", name="nullius-box-filter-inserter-2", amount = 1}
	-- 	}
  -- },

  {
    type = "recipe",
    name = "nullius-inserter-3",
    localised_name = {"entity-name.nullius-inserter-3"},
    enabled = false,
    always_show_made_in = true,
    category = "small-crafting",
    energy_required = 7,
    ingredients = {
      {type = "item", name = "bob-turbo-inserter", amount = 1},
      {type = "item", name = "nullius-motor-2", amount = 1},
      {type = "item", name = "nullius-bearing", amount = 1},
      {type = "item", name = "nullius-rubber", amount = 2},
      {type = "item", name = "nullius-sensor-1", amount = 1}
    },
    results = {
			{type="item", name="bulk-inserter", amount = 1}
		}
  },
  {
    type = "recipe",
    name = "nullius-boxed-inserter-3",
    enabled = false,
    always_show_made_in = true,
    category = "large-assembly",
    subgroup = "boxed-inserter",
    energy_required = 35,
    ingredients = {
      {type = "item", name = "nullius-box-inserter-2", amount = 1},
      {type = "item", name = "nullius-box-motor-2", amount = 1},
      {type = "item", name = "nullius-box-bearing", amount = 1},
      {type = "item", name = "nullius-box-rubber", amount = 2},
      {type = "item", name = "nullius-box-sensor-1", amount = 1}
    },
    results = {
			{type="item", name="nullius-box-inserter-3", amount = 1}
		}
  },
  -- {
  --   type = "recipe",
  --   name = "nullius-filter-inserter-3",
  --   enabled = false,
  --   always_show_made_in = true,
  --   category = "small-crafting",
  --   energy_required = 3,
  --   ingredients = {
  --     {type = "item", name = "bulk-inserter", amount = 1},
  --     {type = "item", name = "nullius-sensor-1", amount = 1}
  --   },
  --   results = {
	-- 		{type="item", name="stack-filter-inserter", amount = 1}
	-- 	}
  -- },
  -- {
  --   type = "recipe",
  --   name = "nullius-boxed-filter-inserter-3",
  --   enabled = false,
  --   always_show_made_in = true,
  --   category = "large-assembly",
  --   subgroup = "boxed-inserter",
  --   energy_required = 15,
  --   ingredients = {
  --     {type = "item", name = "nullius-box-inserter-3", amount = 1},
  --     {type = "item", name = "nullius-box-sensor-1", amount = 1}
  --   },
  --   results = {
	-- 		{type="item", name="nullius-box-filter-inserter-3", amount = 1}
	-- 	}
  -- },

  {
    type = "recipe",
    name = "nullius-inserter-4",
    localised_name = {"entity-name.nullius-inserter-4"},
    enabled = false,
    always_show_made_in = true,
    category = "small-crafting",
    energy_required = 12,
    ingredients = {
      {type = "item", name = "bulk-inserter", amount = 2},
      {type = "item", name = "nullius-motor-3", amount = 1},
      {type = "item", name = "nullius-titanium-rod", amount = 2},
      {type = "item", name = "nullius-carbon-composite", amount = 3},
      {type = "item", name = "nullius-sensor-2", amount = 1}
    },
    results = {
			{type="item", name="bob-express-bulk-inserter", amount = 1}
		}
  },
  {
    type = "recipe",
    name = "nullius-boxed-inserter-4",
    enabled = false,
    always_show_made_in = true,
    category = "large-assembly",
    subgroup = "boxed-inserter",
    energy_required = 60,
    ingredients = {
      {type = "item", name = "nullius-box-inserter-3", amount = 2},
      {type = "item", name = "nullius-box-motor-3", amount = 1},
      {type = "item", name = "nullius-box-titanium-rod", amount = 2},
      {type = "item", name = "nullius-box-carbon-composite", amount = 3},
      {type = "item", name = "nullius-box-sensor-2", amount = 1}
    },
    results = {
			{type="item", name="nullius-box-inserter-4", amount = 1}
		}
  },
  -- {
  --   type = "recipe",
  --   name = "nullius-filter-inserter-4",
  --   enabled = false,
  --   always_show_made_in = true,
  --   show_amount_in_title = false,
  --   always_show_products = true,
  --   category = "small-crafting",
  --   energy_required = 8,
  --   ingredients = {
  --     {type = "item", name = "express-bulk-inserter", amount = 2},
  --     {type = "item", name = "nullius-sensor-2", amount = 1}
  --   },
  --   results = {
	-- 		{type="item", name="express-stack-filter-inserter", amount = 2}
	-- 	}
  -- },
  -- {
  --   type = "recipe",
  --   name = "nullius-boxed-filter-inserter-4",
  --   enabled = false,
  --   always_show_made_in = true,
	-- show_amount_in_title = false,
  --   always_show_products = true,
  --   category = "large-assembly",
  --   subgroup = "boxed-inserter",
  --   energy_required = 40,
  --   ingredients = {
  --     {type = "item", name = "nullius-box-inserter-4", amount = 2},
  --     {type = "item", name = "nullius-box-sensor-2", amount = 1}
  --   },
  --   results = {
	-- 		{type="item", name="nullius-box-filter-inserter-4", amount = 2}
	-- 	}
  -- },

  {
    type = "recipe",
    name = "nullius-conveyor-belt-1",
    localised_name = {"entity-name.nullius-belt-1"},
    enabled = false,
    always_show_made_in = true,
    show_amount_in_title = false,
    always_show_products = true,
    category = "medium-crafting",
    energy_required = 5,
    ingredients = {
      {type = "item", name = "nullius-motor-1", amount = 1},
      {type = "item", name = "nullius-iron-gear", amount = 2},
      {type = "item", name = "nullius-iron-sheet", amount = 2},
      {type = "item", name = "nullius-iron-rod", amount = 2}
    },
    results = {
			{type="item", name="transport-belt", amount = 15}
		}
  },
  {
    type = "recipe",
    name = "nullius-boxed-belt-1",
    enabled = false,
    always_show_made_in = true,
    show_amount_in_title = false,
    always_show_products = true,
    category = "large-assembly",
    subgroup = "boxed-belt",
    energy_required = 15,
    ingredients = {
      {type = "item", name = "nullius-box-motor-1", amount = 1},
      {type = "item", name = "nullius-box-iron-gear", amount = 1},
      {type = "item", name = "nullius-box-steel-sheet", amount = 2},
      {type = "item", name = "nullius-box-steel-rod", amount = 1}
    },
    results = {
			{type="item", name="nullius-box-belt-1", amount = 18}
		}
  },
  {
    type = "recipe",
    name = "nullius-underground-belt-1",
    localised_name = {"entity-name.nullius-underground-belt-1"},
    enabled = false,
    always_show_made_in = true,
    show_amount_in_title = false,
    always_show_products = true,
    category = "medium-crafting",
    energy_required = 3,
    ingredients = {
      {type = "item", name = "transport-belt", amount = 10},
      {type = "item", name = "pipe-to-ground", amount = 2}
    },
    results = {
			{type="item", name="underground-belt", amount = 2}
		}
  },
  {
    type = "recipe",
    name = "nullius-boxed-underground-belt-1",
    enabled = false,
    always_show_made_in = true,
    show_amount_in_title = false,
    always_show_products = true,
    category = "large-assembly",
    subgroup = "boxed-belt",
    energy_required = 15,
    ingredients = {
      {type = "item", name = "nullius-box-belt-1", amount = 10},
      {type = "item", name = "nullius-box-underground-pipe-1", amount = 2}
    },
    results = {
			{type="item", name="nullius-box-underground-belt-1", amount = 2}
		}
  },
  {
    type = "recipe",
    name = "nullius-splitter-1",
    localised_name = {"entity-name.nullius-splitter-1"},
    enabled = false,
    always_show_made_in = true,
    show_amount_in_title = false,
    always_show_products = true,
    category = "medium-crafting",
    energy_required = 3,
    ingredients = {
      {type = "item", name = "underground-belt", amount = 2},
      {type = "item", name = "nullius-plastic", amount = 2}
    },
    results = {
			{type="item", name="splitter", amount = 1}
		}
  },
  {
    type = "recipe",
    name = "nullius-boxed-splitter-1",
    localised_name = {"recipe-name.nullius-boxed", {"entity-name.nullius-splitter-1"}},
    icons = {
      {
        icon = ICONPATH .. "crate.png",
        icon_size = 64
      },
      {
        icon = "__base__/graphics/icons/splitter.png",
        icon_size = 64,
        scale = 0.45
      }
    },
    enabled = false,
    always_show_made_in = true,
    show_amount_in_title = false,
    always_show_products = true,
    category = "large-assembly",
    subgroup = "boxed-belt",
    energy_required = 15,
    ingredients = {
      {type = "item", name = "nullius-box-underground-belt-1", amount = 2},
      {type = "item", name = "nullius-box-plastic", amount = 2}
    },
    results = {
			{type="item", name="splitter", amount = 5}
		}
  },

  {
    type = "recipe",
    name = "nullius-conveyor-belt-2",
    localised_name = {"entity-name.nullius-belt-2"},
    enabled = false,
    always_show_made_in = true,
    show_amount_in_title = false,
    always_show_products = true,
    category = "large-fluid-assembly",
    energy_required = 8,
    ingredients = {
      {type="item", name="transport-belt", amount=10},
      {type="item", name="nullius-motor-2", amount=1},
      {type="item", name="nullius-steel-gear", amount=2},
      {type="item", name="nullius-rubber", amount=4},
      {type="fluid", name="nullius-lubricant", amount=12, fluidbox_index=1}
    },
    results = {
			{type="item", name="fast-transport-belt", amount = 8}
		}
  },
  {
    type = "recipe",
    name = "nullius-boxed-belt-2",
    enabled = false,
    always_show_made_in = true,
    show_amount_in_title = false,
    always_show_products = true,
    category = "large-fluid-assembly",
    subgroup = "boxed-belt",
    energy_required = 40,
    ingredients = {
      {type="item", name="nullius-box-belt-1", amount=10},
      {type="item", name="nullius-box-motor-2", amount=1},
      {type="item", name="nullius-box-steel-gear", amount=2},
      {type="item", name="nullius-box-rubber", amount=4},
      {type="fluid", name="nullius-lubricant", amount=60, fluidbox_index=1}
    },
    results = {
			{type="item", name="nullius-box-belt-2", amount = 8}
		}
  },
  {
    type = "recipe",
    name = "nullius-underground-belt-2",
    localised_name = {"entity-name.nullius-underground-belt-2"},
    enabled = false,
    always_show_made_in = true,
    show_amount_in_title = false,
    always_show_products = true,
    category = "medium-crafting",
    energy_required = 6,
    ingredients = {
      {type = "item", name = "fast-transport-belt", amount = 10},
      {type = "item", name = "underground-belt", amount = 1},
      {type = "item", name = "nullius-underground-pipe-2", amount = 1}
    },
    results = {
			{type="item", name="fast-underground-belt", amount = 2}
		}
  },
  {
    type = "recipe",
    name = "nullius-boxed-underground-belt-2",
    enabled = false,
    always_show_made_in = true,
    show_amount_in_title = false,
    always_show_products = true,
    category = "large-assembly",
    subgroup = "boxed-belt",
    energy_required = 30,
    ingredients = {
      {type = "item", name = "nullius-box-belt-2", amount = 10},
      {type = "item", name = "nullius-box-underground-belt-1", amount = 1},
      {type = "item", name = "nullius-box-underground-pipe-2", amount = 1}
    },
    results = {
			{type="item", name="nullius-box-underground-belt-2", amount = 2}
		}
  },
  {
    type = "recipe",
    name = "nullius-splitter-2",
    localised_name = {"entity-name.nullius-splitter-2"},
    enabled = false,
    always_show_made_in = true,
    show_amount_in_title = false,
    always_show_products = true,
    category = "medium-crafting",
    energy_required = 5,
    ingredients = {
      {type = "item", name = "fast-underground-belt", amount = 1},
      {type = "item", name = "splitter", amount = 1},
      {type = "item", name = "nullius-steel-sheet", amount = 4},
      {type = "item", name = "decider-combinator", amount = 1}
    },
    results = {
			{type="item", name="fast-splitter", amount = 1}
		}
  },
  {
    type = "recipe",
    name = "nullius-boxed-splitter-2",
    localised_name = {"recipe-name.nullius-boxed", {"entity-name.nullius-splitter-2"}},
    icons = {
      {
        icon = ICONPATH .. "crate.png",
        icon_size = 64
      },
      {
        icon = "__base__/graphics/icons/fast-splitter.png",
        icon_size = 64,
        scale = 0.45
      }
    },
    enabled = false,
    always_show_made_in = true,
    show_amount_in_title = false,
    always_show_products = true,
    category = "large-assembly",
    subgroup = "boxed-belt",
    energy_required = 25,
    ingredients = {
      {type = "item", name = "nullius-box-underground-belt-2", amount = 1},
      {type = "item", name = "splitter", amount = 5},
      {type = "item", name = "nullius-box-steel-sheet", amount = 4},
      {type = "item", name = "nullius-box-logic-circuit", amount = 1}
    },
    results = {
			{type="item", name="fast-splitter", amount = 5}
		}
  },

  {
    type = "recipe",
    name = "nullius-conveyor-belt-3",
    localised_name = {"entity-name.nullius-belt-3"},
    enabled = false,
    always_show_made_in = true,
    show_amount_in_title = false,
    always_show_products = true,
    category = "medium-crafting",
    energy_required = 10,
    ingredients = {
      {type="item", name="fast-transport-belt", amount=8},
      {type="item", name="nullius-textile", amount=4},
      {type="item", name="nullius-bearing", amount=2},
      {type="item", name="nullius-fiberglass", amount=3}
    },
    results = {
			{type="item", name="express-transport-belt", amount = 6}
		}
  },
  {
    type = "recipe",
    name = "nullius-boxed-belt-3",
    enabled = false,
    always_show_made_in = true,
    show_amount_in_title = false,
    always_show_products = true,
    category = "large-assembly",
    subgroup = "boxed-belt",
    energy_required = 50,
    ingredients = {
      {type="item", name="nullius-box-belt-2", amount=8},
      {type="item", name="nullius-box-textile", amount=4},
      {type="item", name="nullius-box-bearing", amount=2},
      {type="item", name="nullius-box-fiberglass", amount=3}
    },
    results = {
			{type="item", name="nullius-box-belt-3", amount = 6}
		}
  },
  {
    type = "recipe",
    name = "nullius-underground-belt-3",
    localised_name = {"entity-name.nullius-underground-belt-3"},
    enabled = false,
    always_show_made_in = true,
    show_amount_in_title = false,
    always_show_products = true,
    category = "medium-crafting",
    energy_required = 8,
    ingredients = {
      {type = "item", name = "express-transport-belt", amount = 12},
      {type = "item", name = "fast-underground-belt", amount = 2},
      {type = "item", name = "nullius-underground-pipe-3", amount = 1}
    },
    results = {
			{type="item", name="express-underground-belt", amount = 2}
		}
  },
  {
    type = "recipe",
    name = "nullius-boxed-underground-belt-3",
    enabled = false,
    always_show_made_in = true,
    show_amount_in_title = false,
    always_show_products = true,
    category = "large-assembly",
    subgroup = "boxed-belt",
    energy_required = 40,
    ingredients = {
      {type = "item", name = "nullius-box-belt-3", amount = 12},
      {type = "item", name = "nullius-box-underground-belt-2", amount = 2},
      {type = "item", name = "nullius-box-underground-pipe-3", amount = 1}
    },
    results = {
			{type="item", name="nullius-box-underground-belt-3", amount = 2}
		}
  },
  {
    type = "recipe",
    name = "nullius-splitter-3",
    localised_name = {"entity-name.nullius-splitter-3"},
    enabled = false,
    always_show_made_in = true,
    show_amount_in_title = false,
    always_show_products = true,
    category = "medium-crafting",
    energy_required = 10,
    ingredients = {
      {type = "item", name = "express-underground-belt", amount = 1},
      {type = "item", name = "fast-splitter", amount = 1},
      {type = "item", name = "nullius-sensor-1", amount = 1}
    },
    results = {
			{type="item", name="express-splitter", amount = 1}
		}
  },
  {
    type = "recipe",
    name = "nullius-boxed-splitter-3",
    localised_name = {"recipe-name.nullius-boxed", {"entity-name.nullius-splitter-3"}},
    icons = {
      {
        icon = ICONPATH .. "crate.png",
        icon_size = 64
      },
      {
        icon = "__base__/graphics/icons/express-splitter.png",
        icon_size = 64,
        scale = 0.45
      }
    },
    enabled = false,
    always_show_made_in = true,
    show_amount_in_title = false,
    always_show_products = true,
    category = "large-assembly",
    subgroup = "boxed-inserter",
    order = "nullius-pb",
    energy_required = 50,
    ingredients = {
      {type = "item", name = "nullius-box-underground-belt-3", amount = 1},
      {type = "item", name = "fast-splitter", amount = 5},
      {type = "item", name = "nullius-box-sensor-1", amount = 1}
    },
    results = {
			{type="item", name="express-splitter", amount = 5}
		}
  },

  {
    type = "recipe",
    name = "nullius-conveyor-belt-4",
    localised_name = {"entity-name.nullius-belt-4"},
    enabled = false,
    always_show_made_in = true,
    show_amount_in_title = false,
    always_show_products = true,
    category = "medium-crafting",
    energy_required = 25,
    ingredients = {
      {type="item", name="express-transport-belt", amount=16},
      {type="item", name="nullius-motor-3", amount=2},
      {type="item", name="nullius-carbon-composite", amount=8},
      {type="item", name="nullius-titanium-sheet", amount=5},
      {type="item", name="nullius-transformer", amount=1}
    },
    results = {
			{type="item", name="bob-ultimate-transport-belt", amount = 10}
		}
  },
  {
    type = "recipe",
    name = "nullius-boxed-conveyor-belt-4",
    enabled = false,
    always_show_made_in = true,
    show_amount_in_title = false,
    always_show_products = true,
    category = "large-assembly",
    subgroup = "boxed-belt",
    energy_required = 100,
    ingredients = {
      {type="item", name="nullius-box-belt-3", amount=16},
      {type="item", name="nullius-box-motor-3", amount=2},
      {type="item", name="nullius-box-carbon-composite", amount=8},
      {type="item", name="nullius-box-titanium-sheet", amount=5},
      {type="item", name="nullius-box-transformer", amount=1}
    },
    results = {
			{type="item", name="nullius-box-belt-4", amount = 10}
		}
  },
  {
    type = "recipe",
    name = "nullius-underground-belt-4",
    localised_name = {"entity-name.nullius-underground-belt-4"},
    enabled = false,
    always_show_made_in = true,
    show_amount_in_title = false,
    always_show_products = true,
    category = "medium-crafting",
    energy_required = 12,
    ingredients = {
      {type = "item", name = "bob-ultimate-transport-belt", amount = 16},
      {type = "item", name = "express-underground-belt", amount = 2},
      {type = "item", name = "nullius-underground-pipe-4", amount = 2}
    },
    results = {
			{type="item", name="bob-ultimate-underground-belt", amount = 2}
		}
  },
  {
    type = "recipe",
    name = "nullius-boxed-underground-belt-4",
    enabled = false,
    always_show_made_in = true,
    show_amount_in_title = false,
    always_show_products = true,
    category = "large-assembly",
    subgroup = "boxed-belt",
    energy_required = 60,
    ingredients = {
      {type = "item", name = "nullius-box-belt-4", amount = 16},
      {type = "item", name = "nullius-box-underground-belt-3", amount = 2},
      {type = "item", name = "nullius-box-underground-pipe-4", amount = 2}
    },
    results = {
			{type="item", name="nullius-box-underground-belt-4", amount = 2}
		}
  },
  {
    type = "recipe",
    name = "nullius-splitter-4",
    localised_name = {"entity-name.nullius-splitter-4"},
    enabled = false,
    always_show_made_in = true,
    show_amount_in_title = false,
    always_show_products = true,
    category = "small-crafting",
    energy_required = 16,
    ingredients = {
      {type = "item", name = "bob-ultimate-underground-belt", amount = 2},
      {type = "item", name = "express-splitter", amount = 2},
      {type = "item", name = "bob-express-bulk-inserter", amount = 1}
    },
    results = {
			{type="item", name="bob-ultimate-splitter", amount = 1}
		}
  },
  {
    type = "recipe",
    name = "nullius-boxed-splitter-4",
    localised_name = {"recipe-name.nullius-boxed", {"entity-name.nullius-splitter-4"}},
    icons = {
      {
        icon = ICONPATH .. "crate.png",
        icon_size = 64
      },
      {
        icon = ENTICONPATH .. "splitter4.png",
        icon_size = 64,
        scale = 0.45
      }
    },
    enabled = false,
    always_show_made_in = true,
    show_amount_in_title = false,
    always_show_products = true,
    category = "medium-only-assembly",
    subgroup = "boxed-inserter",
    order = "nullius-pc",
    energy_required = 80,
    ingredients = {
      {type = "item", name = "nullius-box-underground-belt-4", amount = 2},
      {type = "item", name = "express-splitter", amount = 10},
      {type = "item", name = "nullius-box-inserter-4", amount = 1}
    },
    results = {
			{type="item", name="bob-ultimate-splitter", amount = 5}
		}
  },

  {
    type = "recipe",
    name = "nullius-rail",
    localised_name = {"entity-name.straight-rail"},
    enabled = false,
    category = "large-crafting",
    always_show_made_in = true,
    show_amount_in_title = false,
    always_show_products = true,
    energy_required = 8,
    ingredients = {
      {type = "item", name = "nullius-steel-beam", amount = 2},
      {type = "item", name = "nullius-plastic", amount = 3},
      {type = "item", name = "nullius-steel-rod", amount = 1},
      {type = "item", name = "nullius-gravel", amount = 5}
    },
    results = {
			{type="item", name="rail", amount = 3}
		}
  },
  {
    type = "recipe",
    name = "nullius-boxed-rail",
    enabled = false,
    category = "huge-assembly",
    subgroup = "boxed-rail",
    always_show_made_in = true,
    show_amount_in_title = false,
    always_show_products = true,
    energy_required = 40,
    ingredients = {
      {type = "item", name = "nullius-box-steel-beam", amount = 2},
      {type = "item", name = "nullius-box-plastic", amount = 3},
      {type = "item", name = "nullius-box-steel-rod", amount = 1},
      {type = "item", name = "nullius-box-gravel", amount = 5}
    },
    results = {
			{type="item", name="nullius-box-rail", amount = 3}
		}
  },

  {
    type = "recipe",
    name = "nullius-train-stop",
    localised_name = {"entity-name.train-stop"},
    enabled = false,
    category = "medium-crafting",
    always_show_made_in = true,
    energy_required = 8,
    ingredients = {
      {type = "item", name = "nullius-steel-sheet", amount = 5},
      {type = "item", name = "decider-combinator", amount = 2},
      {type = "item", name = "programmable-speaker", amount = 1},
      {type = "item", name = "small-lamp", amount = 2}
    },
    results = {
			{type="item", name="train-stop", amount = 1}
		}
  },
  {
    type = "recipe",
    name = "nullius-boxed-train-stop",
    enabled = false,
    category = "large-assembly",
    subgroup = "boxed-rail",
    always_show_made_in = true,
    energy_required = 40,
    ingredients = {
      {type = "item", name = "nullius-box-steel-sheet", amount = 5},
      {type = "item", name = "nullius-box-logic-circuit", amount = 2},
      {type = "item", name = "nullius-box-antenna", amount = 1},
      {type = "item", name = "nullius-box-lamp-1", amount = 2}
    },
    results = {
			{type="item", name="nullius-box-train-stop", amount = 1}
		}
  },
  {
    type = "recipe",
    name = "nullius-rail-signal",
    localised_name = {"entity-name.rail-signal"},
    enabled = false,
	  always_show_made_in = true,
	  show_amount_in_title = false,
    always_show_products = true,
    category = "small-crafting",
    energy_required = 8,
    ingredients = {
      {type = "item", name = "decider-combinator", amount = 1},
      {type = "item", name = "small-lamp", amount = 3},
      {type = "item", name = "nullius-sensor-1", amount = 1},
      {type = "item", name = "power-switch", amount = 1}
    },
    results = {
			{type="item", name="rail-signal", amount = 2}
		}
  },
  {
    type = "recipe",
    name = "nullius-legacy-rail-signal",
    enabled = false,
	  always_show_made_in = true,
	  hidden = true,
    allow_decomposition = false,
    allow_as_intermediate = false,
    category = "small-crafting",
    energy_required = 3,
    ingredients = {
      {type = "item", name = "decider-combinator", amount = 1},
      {type = "item", name = "small-lamp", amount = 3},
      {type = "item", name = "nullius-sensor-1", amount = 1}
    },
    results = {
			{type="item", name="rail-signal", amount = 1}
		}
  },
  {
    type = "recipe",
    name = "nullius-boxed-rail-signal",
    enabled = false,
	  always_show_made_in = true,
    category = "large-assembly",
    subgroup = "boxed-rail",
    energy_required = 40,
    ingredients = {
      {type = "item", name = "nullius-box-logic-circuit", amount = 1},
      {type = "item", name = "nullius-box-lamp-1", amount = 3},
      {type = "item", name = "nullius-box-sensor-1", amount = 1},
      {type = "item", name = "nullius-box-power-switch", amount = 1}
    },
    results = {
			{type="item", name="nullius-box-rail-signal", amount = 2}
		}
  },
  {
    type = "recipe",
    name = "nullius-legacy-boxed-rail-signal",
    enabled = false,
	  always_show_made_in = true,
	  hidden = true,
    allow_decomposition = false,
    allow_as_intermediate = false,
    category = "large-assembly",
    subgroup = "boxed-rail",
    energy_required = 15,
    ingredients = {
      {type = "item", name = "nullius-box-logic-circuit", amount = 1},
      {type = "item", name = "nullius-box-lamp-1", amount = 3},
      {type = "item", name = "nullius-box-sensor-1", amount = 1}
    },
    results = {
			{type="item", name="nullius-box-rail-signal", amount = 1}
		}
  },
  {
    type = "recipe",
    name = "nullius-chain-signal",
    localised_name = {"entity-name.rail-chain-signal"},
    enabled = false,
    category = "small-crafting",
    always_show_made_in = true,
    energy_required = 2,
    ingredients = {
      {type = "item", name = "rail-signal", amount = 1},
      {type = "item", name = "copper-cable", amount = 2}
    },
    results = {
			{type="item", name="rail-chain-signal", amount = 1}
		}
  },
  {
    type = "recipe",
    name = "nullius-boxed-chain-signal",
    enabled = false,
    category = "large-assembly",
    subgroup = "boxed-rail",
    always_show_made_in = true,
    energy_required = 10,
    ingredients = {
      {type = "item", name = "nullius-box-rail-signal", amount = 1},
      {type = "item", name = "nullius-box-insulated-wire", amount = 2}
    },
    results = {
			{type="item", name="nullius-box-chain-signal", amount = 1}
		}
  },

  {
    type = "recipe",
    name = "nullius-power-switch",
    localised_name = {"entity-name.power-switch"},
    enabled = false,
    category = "small-crafting",
    always_show_made_in = true,
    energy_required = 3,
    ingredients = {
      {type = "item", name = "copper-cable", amount = 2},
      {type = "item", name = "nullius-steel-sheet", amount = 1},
      {type = "item", name = "nullius-rubber", amount = 1},
      {type = "item", name = "nullius-iron-rod", amount = 1}
    },
    results = {
			{type="item", name="power-switch", amount = 1}
		}
  },
  {
    type = "recipe",
    name = "nullius-boxed-power-switch",
    enabled = false,
    category = "large-assembly",
    subgroup = "boxed-circuit",
    always_show_made_in = true,
    energy_required = 15,
    ingredients = {
      {type = "item", name = "nullius-box-insulated-wire", amount = 2},
      {type = "item", name = "nullius-box-steel-sheet", amount = 1},
      {type = "item", name = "nullius-box-rubber", amount = 1},
      {type = "item", name = "nullius-box-iron-rod", amount = 1}
    },
    results = {
			{type="item", name="nullius-box-power-switch", amount = 1}
		}
  },
  {
    type = "recipe",
    name = "nullius-red-wire",
    enabled = false,
    category = "small-crafting",
    always_show_made_in = true,
    show_amount_in_title = false,
    always_show_products = true,
    energy_required = 10,
    ingredients = {
      {type = "item", name = "copper-cable", amount = 5},
      {type = "item", name = "decider-combinator", amount = 1}
    },
    results = {
			{type="item", name="nullius-red-wire", amount = 8}
		}
  },
  {
    type = "recipe",
    name = "nullius-boxed-red-wire",
    enabled = false,
    category = "large-assembly",
    subgroup = "boxed-circuit",
    always_show_made_in = true,
    show_amount_in_title = false,
    always_show_products = true,
    energy_required = 50,
    ingredients = {
      {type = "item", name = "nullius-box-insulated-wire", amount = 5},
      {type = "item", name = "nullius-box-logic-circuit", amount = 1}
    },
    results = {
			{type="item", name="nullius-box-red-wire", amount = 8}
		}
  },
  {
    type = "recipe",
    name = "nullius-green-wire",
    enabled = false,
    category = "small-crafting",
    always_show_made_in = true,
    show_amount_in_title = false,
    always_show_products = true,
    energy_required = 3,
    ingredients = {
      {type = "item", name = "nullius-red-wire", amount = 5}
    },
    results = {
			{type="item", name="nullius-green-wire", amount = 4}
		}
  },
  {
    type = "recipe",
    name = "nullius-boxed-green-wire",
    enabled = false,
    category = "large-assembly",
    subgroup = "boxed-circuit",
    always_show_made_in = true,
    show_amount_in_title = false,
    always_show_products = true,
    energy_required = 15,
    ingredients = {
      {type = "item", name = "nullius-box-red-wire", amount = 5}
    },
    results = {
			{type="item", name="nullius-box-green-wire", amount = 4}
		}
  },

  {
    type = "recipe",
    name = "nullius-wall",
    localised_name = {"entity-name.stone-wall"},
    enabled = false,
    category = "large-crafting",
    always_show_made_in = true,
    energy_required = 4,
    ingredients = {
      {type = "item", name = "refined-concrete", amount = 4},
      {type = "item", name = "nullius-steel-beam", amount = 3},
      {type = "item", name = "nullius-insulation", amount = 1},
      {type = "item", name = "nullius-mortar", amount = 1}
    },
    results = {
			{type="item", name="stone-wall", amount = 1}
		}
  },
  {
    type = "recipe",
    name = "nullius-boxed-wall",
    enabled = false,
    category = "huge-assembly",
    subgroup = "boxed-terrain",
    always_show_made_in = true,
    energy_required = 20,
    ingredients = {
      {type = "item", name = "nullius-box-reinforced-concrete", amount = 2},
      {type = "item", name = "nullius-box-steel-beam", amount = 3},
      {type = "item", name = "nullius-box-insulation", amount = 1},
      {type = "item", name = "nullius-mortar", amount = 5}
    },
    results = {
			{type="item", name="nullius-box-wall", amount = 1}
		}
  },
  {
    type = "recipe",
    name = "nullius-gate",
    localised_name = {"entity-name.gate"},
    enabled = false,
    category = "large-crafting",
    always_show_made_in = true,
    energy_required = 5,
    ingredients = {
      {type = "item", name = "stone-wall", amount = 1},
      {type = "item", name = "nullius-steel-plate", amount = 2},
      {type = "item", name = "nullius-steel-gear", amount = 1},
      {type = "item", name = "nullius-motor-2", amount = 1},
      {type = "item", name = "nullius-sensor-1", amount = 1},
      {type = "item", name = "rail-signal", amount = 1}
    },
    results = {
			{type="item", name="gate", amount = 1}
		}
  },
  {
    type = "recipe",
    name = "nullius-boxed-gate",
    enabled = false,
    category = "huge-assembly",
    subgroup = "boxed-terrain",
    always_show_made_in = true,
    energy_required = 25,
    ingredients = {
      {type = "item", name = "nullius-box-wall", amount = 1},
      {type = "item", name = "nullius-box-steel-plate", amount = 2},
      {type = "item", name = "nullius-box-steel-gear", amount = 1},
      {type = "item", name = "nullius-box-motor-2", amount = 1},
      {type = "item", name = "nullius-box-sensor-1", amount = 1},
      {type = "item", name = "nullius-box-rail-signal", amount = 1}
    },
    results = {
			{type="item", name="nullius-box-gate", amount = 1}
		}
  },

  {
    type = "recipe",
    name = "nullius-barrel-1",
	  localised_name = {"", {"item-name.barrel"}, " ", tostring(1)},
	  icons = {
      {
        icon = "__base__/graphics/icons/fluid/barreling/empty-barrel.png",
        icon_size = 64,
        
      },
      {
        icon = "__angelssmeltinggraphics__/graphics/icons/ingot-steel.png",
        icon_size = 64,
        
        scale = 0.3,
        shift = {8, -9}
      }
    },
    enabled = false,
    category = "hand-casting",
    subgroup = "canisters",
    order = "nullius-bb",
    always_show_made_in = true,
    allow_decomposition = false,
    show_amount_in_title = false,
    always_show_products = true,
    energy_required = 5,
    ingredients = {
      {type="item", name="nullius-steel-sheet", amount=2},
	  {type="item", name="nullius-plastic", amount=1},
      {type="item", name="nullius-one-way-valve", amount=1}
    },
    results = {
			{type="item", name="barrel", amount = 3}
		}
  },
  {
    type = "recipe",
    name = "nullius-boxed-barrel-1",
	localised_name = {"", {"item-name.nullius-box", {"item-name.barrel"}}, " ", tostring(1)},
	icons = {
      {
        icon = ICONPATH .. "crate.png",
        icon_size = 64
      },
      {
        icon = "__base__/graphics/icons/fluid/barreling/empty-barrel.png",
        icon_size = 64,
        
		scale = 0.45
      },
      {
        icon = "__angelssmeltinggraphics__/graphics/icons/ingot-steel.png",
        icon_size = 64,
        
        scale = 0.27,
        shift = {7, -8}
      }
    },
    enabled = false,
    category = "machine-casting",
    subgroup = "boxed-canister",
    order = "nullius-bb",
    always_show_made_in = true,
    allow_decomposition = false,
    show_amount_in_title = false,
    always_show_products = true,
    energy_required = 25,
    ingredients = {
      {type="item", name="nullius-box-steel-sheet", amount=2},
	  {type="item", name="nullius-box-plastic", amount=1},
      {type="item", name="nullius-box-one-way-valve", amount=1}
    },
    results = {
			{type="item", name="nullius-box-barrel", amount = 3}
		}
  },
  {
    type = "recipe",
    name = "nullius-barrel-2",
	  localised_name = {"", {"item-name.barrel"}, " ", tostring(2)},
    enabled = false,
    category = "hand-casting",
    subgroup = "canisters",
    order = "nullius-bc",
    always_show_made_in = true,
    allow_decomposition = false,
    show_amount_in_title = false,
    always_show_products = true,
    hide_from_signal_gui = false, -- todo: proper icon
    energy_required = 6,
    ingredients = {
      {type="item", name="nullius-small-tank-1", amount=1},
      {type="item", name="nullius-one-way-valve", amount=3}
    },
    results = {
			{type="item", name="barrel", amount = 6}
		}
  },
  {
    type = "recipe",
    name = "nullius-boxed-barrel-2",
	  localised_name = {"", {"item-name.nullius-box", {"item-name.barrel"}}, " ", tostring(2)},
    enabled = false,
    category = "machine-casting",
    subgroup = "boxed-canister",
	  order = "nullius-bc",
    always_show_made_in = true,
    allow_decomposition = false,
    show_amount_in_title = false,
    always_show_products = true,
    energy_required = 30,
    ingredients = {
      {type="item", name="nullius-box-small-tank-1", amount=1},
      {type="item", name="nullius-box-one-way-valve", amount=3}
    },
    results = {
			{type="item", name="nullius-box-barrel", amount = 6}
		}
  },
  {
    type = "recipe",
    name = "nullius-barrel-recycling",
    localised_name = {"recipe-name.nullius-barrel-recycling"},
    icon = "__base__/graphics/icons/fluid/barreling/barrel-empty.png",
    icon_size = 64,
    
    enabled = false,
    category = "hand-casting",
	  subgroup = "canister-emptying",
    order = "nullius-b",
    always_show_made_in = true,
    no_productivity = true,
    allow_decomposition = false,
    allow_as_intermediate = false,
    energy_required = 2,
    ingredients = {
      {type="item", name="barrel", amount=6}
    },
    results = {
      {type="item", name="nullius-iron-ingot", amount=1},
      {type="item", name="nullius-plastic", amount=1}
    }
  },


  {
    type = "recipe",
    name = "nullius-legacy-barrel-1",
	  localised_name = {"", {"item-name.barrel"}, " ", tostring(1)},
    enabled = false,
    category = "large-crafting",
    subgroup = "canisters",
    order = "nullius-bb",
    always_show_made_in = true,
    show_amount_in_title = false,
    always_show_products = true,
	  hidden = true,
    allow_decomposition = false,
    allow_as_intermediate = false,
    energy_required = 5,
    ingredients = {
      {type="item", name="nullius-small-tank-1", amount=1},
      {type="item", name="nullius-one-way-valve", amount=3}
    },
    results = {
			{type="item", name="barrel", amount = 6}
		}
  },
  {
    type = "recipe",
    name = "nullius-legacy-boxed-barrel-1",
  	localised_name = {"", {"item-name.nullius-box", {"item-name.barrel"}}, " ", tostring(1)},
    enabled = false,
    category = "huge-assembly",
    subgroup = "boxed-canister",
	  order = "nullius-bb",
    always_show_made_in = true,
    show_amount_in_title = false,
    always_show_products = true,
	  hidden = true,
    allow_decomposition = false,
    allow_as_intermediate = false,
    energy_required = 25,
    ingredients = {
      {type="item", name="nullius-box-small-tank-1", amount=1},
      {type="item", name="nullius-box-one-way-valve", amount=3}
    },
    results = {
			{type="item", name="nullius-box-barrel", amount = 6}
		}
  },
  {
    type = "recipe",
    name = "nullius-legacy-barrel-2",
	  localised_name = {"", {"item-name.barrel"}, " ", tostring(2)},
  	icons = {
      {
        icon = "__base__/graphics/icons/fluid/barreling/empty-barrel.png",
        icon_size = 64,
        
      },
      {
        icon = "__angelssmeltinggraphics__/graphics/icons/ingot-steel.png",
        icon_size = 64,
        
        scale = 0.3,
        shift = {8, -9}
      }
    },
    enabled = false,
    category = "machine-casting",
    subgroup = "canisters",
    order = "nullius-bc",
    always_show_made_in = true,
    show_amount_in_title = false,
    always_show_products = true,
	  hidden = true,
    allow_decomposition = false,
    allow_as_intermediate = false,
    energy_required = 4,
    ingredients = {
      {type="item", name="nullius-steel-sheet", amount=2},
	  {type="item", name="nullius-plastic", amount=1},
      {type="item", name="nullius-one-way-valve", amount=1}
    },
    results = {
			{type="item", name="barrel", amount = 3}
		}
  },
  {
    type = "recipe",
    name = "nullius-legacy-boxed-barrel-2",
	  localised_name = {"", {"item-name.nullius-box", {"item-name.barrel"}}, " ", tostring(2)},
	  icons = {
      {
        icon = ICONPATH .. "crate.png",
        icon_size = 64
      },
      {
        icon = "__base__/graphics/icons/fluid/barreling/empty-barrel.png",
        icon_size = 64,
		    scale = 0.45
      },
      {
        icon = "__angelssmeltinggraphics__/graphics/icons/ingot-steel.png",
        icon_size = 64,
        scale = 0.27,
        shift = {7, -8}
      }
    },
    enabled = false,
    category = "machine-casting",
    subgroup = "boxed-canister",
    order = "nullius-bc",
    always_show_made_in = true,
    show_amount_in_title = false,
    always_show_products = true,
	  hidden = true,
    allow_decomposition = false,
    allow_as_intermediate = false,
    energy_required = 20,
    ingredients = {
      {type="item", name="nullius-box-steel-sheet", amount=2},
	  {type="item", name="nullius-box-plastic", amount=1},
      {type="item", name="nullius-box-one-way-valve", amount=1}
    },
    results = {
			{type="item", name="nullius-box-barrel", amount = 3}
		}
  },
  {
    type = "recipe",
    name = "nullius-legacy-barrel-recycling",
    localised_name = {"recipe-name.nullius-barrel-recycling"},
    icon = "__base__/graphics/icons/fluid/barreling/barrel-empty.png",
    icon_size = 64,
    
    enabled = false,
    category = "medium-crafting",
	  subgroup = "canister-emptying",
    order = "nullius-b",
    always_show_made_in = true,
    no_productivity = true,
    hidden = true,
    allow_decomposition = false,
    allow_as_intermediate = false,
    energy_required = 2,
    ingredients = {
      {type="item", name="barrel", amount=5}
    },
    results = {
      {type="item", name="nullius-iron-ingot", amount=1},
      {type="item", name="nullius-plastic", amount=1}
    }
  }
})

if settings.startup["bobmods-logistics-inserteroverhaul"].value == false then
data:extend({
  {
    type = "item",
    name = "bob-turbo-inserter",
    localised_name = {"entity-name.nullius-inserter-2"},
    icon = "__base__/graphics/icons/fast-inserter.png",
    icon_size = 64, 
    subgroup = "inserter",
    order = "nullius-c",
    place_result = "bob-turbo-inserter",
    stack_size = 100
  },
  -- {
  --   type = "item",
  --   name = "turbo-filter-inserter",
  --   localised_name = {"entity-name.nullius-filter-inserter-2"},
  --   icon = "__base__/graphics/icons/filter-inserter.png",
  --   icon_size = 64, 
  --   subgroup = "inserter",
  --   order = "nullius-d",
  --   place_result = "turbo-filter-inserter",
  --   stack_size = 100
  -- }
})
end
