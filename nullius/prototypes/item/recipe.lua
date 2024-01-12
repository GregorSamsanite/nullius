local ICONPATH = "__nullius__/graphics/icons/"
local ENTICONPATH = "__nullius__/graphics/icons/entity/"
local ENTITYPATH = "__nullius__/graphics/entity/"

data:extend({
  {
    type = "recipe",
    name = "nullius-stone-block",
    enabled = false,
    category = "medium-crafting",
    order = "nullius-bb",
    allow_decomposition = false,
    always_show_made_in = true,
    energy_required = 4,
    ingredients = {
      {"stone", 2}
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
      {"nullius-box-stone", 4}
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
        icon_mipmaps = 4
      },
      {
        icon = "__angelsrefining__/graphics/icons/angels-ore6/angels-ore6-3.png",
        tint = {0.898, 0.773, 0.688},
        icon_size = 32,
        scale = 0.5,
        shift = {-12, -12}
      }
    },
    enabled = false,
    category = "medium-crafting",
    order = "nullius-bd",
    allow_decomposition = false,
    allow_as_intermediate = false,
    always_show_made_in = true,
    energy_required = 5,
    ingredients = {
      {"nullius-limestone", 4}
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
        icon_mipmaps = 4
      },
      {
        icon = "__angelsrefining__/graphics/icons/angels-ore6/angels-ore6-2.png",
        tint = {0.690, 0.611, 0.427},
        icon_size = 32,
        scale = 0.5,
        shift = {-12, -12}
      }
    },
    enabled = false,
    category = "medium-crafting",
    order = "nullius-bc",
    allow_decomposition = false,
    allow_as_intermediate = false,
    always_show_made_in = true,
    energy_required = 4,
    ingredients = {
      {"nullius-sandstone", 3}
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
    enabled = false,
    always_show_made_in = true,
    show_amount_in_title = false,
    always_show_products = true,
    category = "small-crafting",
    energy_required = 8,
    ingredients = {
      {"nullius-motor-1", 1},
      {"nullius-iron-gear", 2},
      {"nullius-iron-rod", 3}
    },
    result = "inserter",
    result_count = 4
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
      {"nullius-box-motor-1", 1},
      {"nullius-box-steel-gear", 1},
      {"nullius-box-steel-rod", 2}
    },
    result = "nullius-box-inserter-1",
    result_count = 5
  },
  {
    type = "recipe",
    name = "nullius-inserter-2",
    enabled = false,
    always_show_made_in = true,
    category = "small-crafting",
    energy_required = 4,
    ingredients = {
      {"inserter", 1},
      {"nullius-motor-1", 1},
      {"nullius-steel-gear", 1},
      {"nullius-aluminum-rod", 1}
    },
    result = "turbo-inserter"
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
      {"nullius-box-inserter-1", 1},
      {"nullius-box-motor-1", 1},
      {"nullius-box-steel-gear", 1},
      {"nullius-box-aluminum-rod", 1}
    },
    result = "nullius-box-inserter-2"
  },
  {
    type = "recipe",
    name = "nullius-filter-inserter-2",
    enabled = false,
    always_show_made_in = true,
    category = "small-crafting",
    energy_required = 2,
    ingredients = {
      {"turbo-inserter", 1},
      {"decider-combinator", 1}
    },
    result = "turbo-filter-inserter"
  },
  {
    type = "recipe",
    name = "nullius-boxed-filter-inserter-2",
    enabled = false,
    always_show_made_in = true,
    category = "large-assembly",
    subgroup = "boxed-inserter",
    energy_required = 10,
    ingredients = {
      {"nullius-box-inserter-2", 1},
      {"nullius-box-logic-circuit", 1}
    },
    result = "nullius-box-filter-inserter-2"
  },

  {
    type = "recipe",
    name = "nullius-inserter-3",
    enabled = false,
    always_show_made_in = true,
    category = "small-crafting",
    energy_required = 7,
    ingredients = {
      {"turbo-filter-inserter", 1},
      {"nullius-motor-2", 1},
      {"nullius-bearing", 1},
      {"nullius-rubber", 2}
    },
    result = "stack-inserter"
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
      {"nullius-box-filter-inserter-2", 1},
      {"nullius-box-motor-2", 1},
      {"nullius-box-bearing", 1},
      {"nullius-box-rubber", 2}
    },
    result = "nullius-box-inserter-3"
  },
  {
    type = "recipe",
    name = "nullius-filter-inserter-3",
    enabled = false,
    always_show_made_in = true,
    category = "small-crafting",
    energy_required = 3,
    ingredients = {
      {"stack-inserter", 1},
      {"nullius-sensor-1", 1}
    },
    result = "stack-filter-inserter"
  },
  {
    type = "recipe",
    name = "nullius-boxed-filter-inserter-3",
    enabled = false,
    always_show_made_in = true,
    category = "large-assembly",
    subgroup = "boxed-inserter",
    energy_required = 15,
    ingredients = {
      {"nullius-box-inserter-3", 1},
      {"nullius-box-sensor-1", 1}
    },
    result = "nullius-box-filter-inserter-3"
  },

  {
    type = "recipe",
    name = "nullius-inserter-4",
    enabled = false,
    always_show_made_in = true,
    category = "small-crafting",
    energy_required = 12,
    ingredients = {
      {"stack-filter-inserter", 2},
      {"nullius-motor-3", 1},
      {"nullius-titanium-rod", 2},
      {"nullius-carbon-composite", 3}
    },
    result = "express-stack-inserter"
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
      {"nullius-box-filter-inserter-3", 2},
      {"nullius-box-motor-3", 1},
      {"nullius-box-titanium-rod", 2},
      {"nullius-box-carbon-composite", 3}
    },
    result = "nullius-box-inserter-4"
  },
  {
    type = "recipe",
    name = "nullius-filter-inserter-4",
    enabled = false,
    always_show_made_in = true,
    show_amount_in_title = false,
    always_show_products = true,
    category = "small-crafting",
    energy_required = 8,
    ingredients = {
      {"express-stack-inserter", 2},
      {"nullius-sensor-2", 1}
    },
    result = "express-stack-filter-inserter",
    result_count = 2
  },
  {
    type = "recipe",
    name = "nullius-boxed-filter-inserter-4",
    enabled = false,
    always_show_made_in = true,
	show_amount_in_title = false,
    always_show_products = true,
    category = "large-assembly",
    subgroup = "boxed-inserter",
    energy_required = 40,
    ingredients = {
      {"nullius-box-inserter-4", 2},
      {"nullius-box-sensor-2", 1}
    },
    result = "nullius-box-filter-inserter-4",
    result_count = 2
  },

  {
    type = "recipe",
    name = "nullius-conveyor-belt-1",
    enabled = false,
    always_show_made_in = true,
    show_amount_in_title = false,
    always_show_products = true,
    category = "medium-crafting",
    energy_required = 5,
    ingredients = {
      {"nullius-motor-1", 1},
      {"nullius-iron-gear", 2},
      {"nullius-iron-sheet", 2},
      {"nullius-iron-rod", 2}
    },
    result = "transport-belt",
    result_count = 15
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
      {"nullius-box-motor-1", 1},
      {"nullius-box-iron-gear", 1},
      {"nullius-box-steel-sheet", 2},
      {"nullius-box-steel-rod", 1}
    },
    result = "nullius-box-belt-1",
    result_count = 18
  },
  {
    type = "recipe",
    name = "nullius-underground-belt-1",
    enabled = false,
    always_show_made_in = true,
    show_amount_in_title = false,
    always_show_products = true,
    category = "medium-crafting",
    energy_required = 3,
    ingredients = {
      {"transport-belt", 10},
      {"pipe-to-ground", 2}
    },
    result = "underground-belt",
    result_count = 2
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
      {"nullius-box-belt-1", 10},
      {"nullius-box-underground-pipe-1", 2}
    },
    result = "nullius-box-underground-belt-1",
    result_count = 2
  },
  {
    type = "recipe",
    name = "nullius-splitter-1",
    enabled = false,
    always_show_made_in = true,
    show_amount_in_title = false,
    always_show_products = true,
    category = "medium-crafting",
    energy_required = 3,
    ingredients = {
      {"underground-belt", 2},
      {"nullius-plastic", 2}
    },
    result = "splitter"
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
      {"nullius-box-underground-belt-1", 2},
      {"nullius-box-plastic", 2}
    },
    result = "splitter",
    result_count = 5
  },

  {
    type = "recipe",
    name = "nullius-conveyor-belt-2",
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
    result = "fast-transport-belt",
    result_count = 8
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
    result = "nullius-box-belt-2",
    result_count = 8
  },
  {
    type = "recipe",
    name = "nullius-underground-belt-2",
    enabled = false,
    always_show_made_in = true,
    show_amount_in_title = false,
    always_show_products = true,
    category = "medium-crafting",
    energy_required = 6,
    ingredients = {
      {"fast-transport-belt", 10},
      {"underground-belt", 1},
      {"nullius-underground-pipe-2", 1}
    },
    result = "fast-underground-belt",
    result_count = 2
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
      {"nullius-box-belt-2", 10},
      {"nullius-box-underground-belt-1", 1},
      {"nullius-box-underground-pipe-2", 1}
    },
    result = "nullius-box-underground-belt-2",
    result_count = 2
  },
  {
    type = "recipe",
    name = "nullius-splitter-2",
    enabled = false,
    always_show_made_in = true,
    show_amount_in_title = false,
    always_show_products = true,
    category = "medium-crafting",
    energy_required = 5,
    ingredients = {
      {"fast-underground-belt", 1},
      {"splitter", 1},
      {"nullius-steel-sheet", 4},
      {"decider-combinator", 1}
    },
    result = "fast-splitter"
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
      {"nullius-box-underground-belt-2", 1},
      {"splitter", 5},
      {"nullius-box-steel-sheet", 4},
      {"nullius-box-logic-circuit", 1}
    },
    result = "fast-splitter",
    result_count = 5
  },

  {
    type = "recipe",
    name = "nullius-conveyor-belt-3",
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
    result = "express-transport-belt",
    result_count = 6
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
    result = "nullius-box-belt-3",
    result_count = 6
  },
  {
    type = "recipe",
    name = "nullius-underground-belt-3",
    enabled = false,
    always_show_made_in = true,
    show_amount_in_title = false,
    always_show_products = true,
    category = "medium-crafting",
    energy_required = 8,
    ingredients = {
      {"express-transport-belt", 12},
      {"fast-underground-belt", 2},
      {"nullius-underground-pipe-3", 1}
    },
    result = "express-underground-belt",
    result_count = 2
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
      {"nullius-box-belt-3", 12},
      {"nullius-box-underground-belt-2", 2},
      {"nullius-box-underground-pipe-3", 1}
    },
    result = "nullius-box-underground-belt-3",
    result_count = 2
  },
  {
    type = "recipe",
    name = "nullius-splitter-3",
    enabled = false,
    always_show_made_in = true,
    show_amount_in_title = false,
    always_show_products = true,
    category = "medium-crafting",
    energy_required = 10,
    ingredients = {
      {"express-underground-belt", 1},
      {"fast-splitter", 1},
      {"nullius-sensor-1", 1}
    },
    result = "express-splitter"
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
      {"nullius-box-underground-belt-3", 1},
      {"fast-splitter", 5},
      {"nullius-box-sensor-1", 1}
    },
    result = "express-splitter",
    result_count = 5
  },

  {
    type = "recipe",
    name = "nullius-conveyor-belt-4",
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
    result = "ultimate-transport-belt",
    result_count = 10
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
    result = "nullius-box-belt-4",
    result_count = 10
  },
  {
    type = "recipe",
    name = "nullius-underground-belt-4",
    enabled = false,
    always_show_made_in = true,
    show_amount_in_title = false,
    always_show_products = true,
    category = "medium-crafting",
    energy_required = 12,
    ingredients = {
      {"ultimate-transport-belt", 16},
      {"express-underground-belt", 2},
      {"nullius-underground-pipe-4", 2}
    },
    result = "ultimate-underground-belt",
    result_count = 2
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
      {"nullius-box-belt-4", 16},
      {"nullius-box-underground-belt-3", 2},
      {"nullius-box-underground-pipe-4", 2}
    },
    result = "nullius-box-underground-belt-4",
    result_count = 2
  },
  {
    type = "recipe",
    name = "nullius-splitter-4",
    enabled = false,
    always_show_made_in = true,
    show_amount_in_title = false,
    always_show_products = true,
    category = "small-crafting",
    energy_required = 16,
    ingredients = {
      {"ultimate-underground-belt", 2},
      {"express-splitter", 2},
      {"express-stack-filter-inserter", 1}
    },
    result = "ultimate-splitter"
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
      {"nullius-box-underground-belt-4", 2},
      {"express-splitter", 10},
      {"nullius-box-filter-inserter-4", 1}
    },
    result = "ultimate-splitter",
    result_count = 5
  },

  {
    type = "recipe",
    name = "nullius-rail",
    enabled = false,
    category = "large-crafting",
    always_show_made_in = true,
    show_amount_in_title = false,
    always_show_products = true,
    energy_required = 8,
    ingredients = {
      {"nullius-steel-beam", 2},
      {"nullius-plastic", 3},
      {"nullius-steel-rod", 1},
      {"nullius-gravel", 5}
    },
    result = "rail",
    result_count = 3
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
      {"nullius-box-steel-beam", 2},
      {"nullius-box-plastic", 3},
      {"nullius-box-steel-rod", 1},
      {"nullius-box-gravel", 5}
    },
    result = "nullius-box-rail",
    result_count = 3
  },

  {
    type = "recipe",
    name = "nullius-train-stop",
    enabled = false,
    category = "medium-crafting",
    always_show_made_in = true,
    energy_required = 8,
    ingredients = {
      {"nullius-steel-sheet", 5},
      {"decider-combinator", 2},
      {"programmable-speaker", 1},
      {"small-lamp", 2}
    },
    result = "train-stop"
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
      {"nullius-box-steel-sheet", 5},
      {"nullius-box-logic-circuit", 2},
      {"nullius-box-antenna", 1},
      {"nullius-box-lamp-1", 2}
    },
    result = "nullius-box-train-stop"
  },
  {
    type = "recipe",
    name = "nullius-rail-signal",
    enabled = false,
	always_show_made_in = true,
	show_amount_in_title = false,
    always_show_products = true,
    category = "small-crafting",
    energy_required = 8,
    ingredients = {
      {"decider-combinator", 1},
      {"small-lamp", 3},
      {"nullius-sensor-1", 1},
      {"power-switch", 1}
    },
    result = "rail-signal",
	result_count = 2
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
      {"decider-combinator", 1},
      {"small-lamp", 3},
      {"nullius-sensor-1", 1}
    },
    result = "rail-signal"
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
      {"nullius-box-logic-circuit", 1},
      {"nullius-box-lamp-1", 3},
      {"nullius-box-sensor-1", 1},
      {"nullius-box-power-switch", 1}
    },
    result = "nullius-box-rail-signal",
	result_count = 2
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
      {"nullius-box-logic-circuit", 1},
      {"nullius-box-lamp-1", 3},
      {"nullius-box-sensor-1", 1}
    },
    result = "nullius-box-rail-signal"
  },
  {
    type = "recipe",
    name = "nullius-chain-signal",
    enabled = false,
    category = "small-crafting",
    always_show_made_in = true,
    energy_required = 2,
    ingredients = {
      {"rail-signal", 1},
      {"copper-cable", 2}
    },
    result = "rail-chain-signal"
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
      {"nullius-box-rail-signal", 1},
      {"nullius-box-insulated-wire", 2}
    },
    result = "nullius-box-chain-signal"
  },

  {
    type = "recipe",
    name = "nullius-power-switch",
    enabled = false,
    category = "small-crafting",
    always_show_made_in = true,
    energy_required = 3,
    ingredients = {
      {"copper-cable", 2},
      {"nullius-steel-sheet", 1},
      {"nullius-rubber", 1},
      {"nullius-iron-rod", 1}
    },
    result = "power-switch"
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
      {"nullius-box-insulated-wire", 2},
      {"nullius-box-steel-sheet", 1},
      {"nullius-box-rubber", 1},
      {"nullius-box-iron-rod", 1}
    },
    result = "nullius-box-power-switch"
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
      {"copper-cable", 5},
      {"decider-combinator", 1}
    },
    result = "red-wire",
    result_count = 8
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
      {"nullius-box-insulated-wire", 5},
      {"nullius-box-logic-circuit", 1}
    },
    result = "nullius-box-red-wire",
    result_count = 8
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
      {"red-wire", 5}
    },
    result = "green-wire",
    result_count = 4
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
      {"nullius-box-red-wire", 5}
    },
    result = "nullius-box-green-wire",
    result_count = 4
  },

  {
    type = "recipe",
    name = "nullius-wall",
    enabled = false,
    category = "large-crafting",
    always_show_made_in = true,
    energy_required = 4,
    ingredients = {
      {"refined-concrete", 4},
      {"nullius-steel-beam", 3},
      {"nullius-insulation", 1},
      {"nullius-mortar", 1}
    },
    result = "stone-wall"
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
      {"nullius-box-reinforced-concrete", 2},
      {"nullius-box-steel-beam", 3},
      {"nullius-box-insulation", 1},
      {"nullius-mortar", 5}
    },
    result = "nullius-box-wall"
  },
  {
    type = "recipe",
    name = "nullius-gate",
    enabled = false,
    category = "large-crafting",
    always_show_made_in = true,
    energy_required = 5,
    ingredients = {
      {"stone-wall", 1},
      {"nullius-steel-plate", 2},
      {"nullius-steel-gear", 1},
      {"nullius-motor-2", 1},
      {"nullius-sensor-1", 1},
      {"rail-signal", 1}
    },
    result = "gate"
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
      {"nullius-box-wall", 1},
      {"nullius-box-steel-plate", 2},
      {"nullius-box-steel-gear", 1},
      {"nullius-box-motor-2", 1},
      {"nullius-box-sensor-1", 1},
      {"nullius-box-rail-signal", 1}
    },
    result = "nullius-box-gate"
  },

  {
    type = "recipe",
    name = "nullius-barrel-1",
	localised_name = {"", {"item-name.empty-barrel"}, " ", 1},
	icons = {
      {
        icon = "__base__/graphics/icons/fluid/barreling/empty-barrel.png",
        icon_size = 64,
        icon_mipmaps = 4
      },
      {
        icon = "__angelssmelting__/graphics/icons/ingot-steel.png",
        icon_size = 64,
        icon_mipmaps = 4,
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
    result = "empty-barrel",
    result_count = 3
  },
  {
    type = "recipe",
    name = "nullius-boxed-barrel-1",
	localised_name = {"", {"item-name.nullius-box", {"item-name.empty-barrel"}}, " ", 1},
	icons = {
      {
        icon = ICONPATH .. "crate.png",
        icon_size = 64
      },
      {
        icon = "__base__/graphics/icons/fluid/barreling/empty-barrel.png",
        icon_size = 64,
        icon_mipmaps = 4,
		scale = 0.45
      },
      {
        icon = "__angelssmelting__/graphics/icons/ingot-steel.png",
        icon_size = 64,
        icon_mipmaps = 4,
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
    result = "nullius-box-barrel",
    result_count = 3
  },
  {
    type = "recipe",
    name = "nullius-barrel-2",
	localised_name = {"", {"item-name.empty-barrel"}, " ", 2},
    enabled = false,
    category = "hand-casting",
    subgroup = "canisters",
    order = "nullius-bc",
    always_show_made_in = true,
    allow_decomposition = false,
    show_amount_in_title = false,
    always_show_products = true,
    energy_required = 6,
    ingredients = {
      {type="item", name="nullius-small-tank-1", amount=1},
      {type="item", name="nullius-one-way-valve", amount=3}
    },
    result = "empty-barrel",
    result_count = 6
  },
  {
    type = "recipe",
    name = "nullius-boxed-barrel-2",
	localised_name = {"", {"item-name.nullius-box", {"item-name.empty-barrel"}}, " ", 2},
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
    result = "nullius-box-barrel",
    result_count = 6
  },
  {
    type = "recipe",
    name = "nullius-barrel-recycling",
    localised_name = {"recipe-name.nullius-barrel-recycling"},
    icon = "__base__/graphics/icons/fluid/barreling/barrel-empty.png",
    icon_size = 64,
    icon_mipmaps = 4,
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
      {type="item", name="empty-barrel", amount=6}
    },
    results = {
      {type="item", name="nullius-iron-ingot", amount=1},
      {type="item", name="nullius-plastic", amount=1}
    }
  },


  {
    type = "recipe",
    name = "nullius-legacy-barrel-1",
	localised_name = {"", {"item-name.empty-barrel"}, " ", 1},
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
    result = "empty-barrel",
    result_count = 6
  },
  {
    type = "recipe",
    name = "nullius-legacy-boxed-barrel-1",
	localised_name = {"", {"item-name.nullius-box", {"item-name.empty-barrel"}}, " ", 1},
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
    result = "nullius-box-barrel",
    result_count = 6
  },
  {
    type = "recipe",
    name = "nullius-legacy-barrel-2",
	localised_name = {"", {"item-name.empty-barrel"}, " ", 2},
	icons = {
      {
        icon = "__base__/graphics/icons/fluid/barreling/empty-barrel.png",
        icon_size = 64,
        icon_mipmaps = 4
      },
      {
        icon = "__angelssmelting__/graphics/icons/ingot-steel.png",
        icon_size = 64,
        icon_mipmaps = 4,
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
    result = "empty-barrel",
    result_count = 3
  },
  {
    type = "recipe",
    name = "nullius-legacy-boxed-barrel-2",
	localised_name = {"", {"item-name.nullius-box", {"item-name.empty-barrel"}}, " ", 2},
	icons = {
      {
        icon = ICONPATH .. "crate.png",
        icon_size = 64
      },
      {
        icon = "__base__/graphics/icons/fluid/barreling/empty-barrel.png",
        icon_size = 64,
        icon_mipmaps = 4,
		scale = 0.45
      },
      {
        icon = "__angelssmelting__/graphics/icons/ingot-steel.png",
        icon_size = 64,
        icon_mipmaps = 4,
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
    result = "nullius-box-barrel",
    result_count = 3
  },
  {
    type = "recipe",
    name = "nullius-legacy-barrel-recycling",
    localised_name = {"recipe-name.nullius-barrel-recycling"},
    icon = "__base__/graphics/icons/fluid/barreling/barrel-empty.png",
    icon_size = 64,
    icon_mipmaps = 4,
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
      {type="item", name="empty-barrel", amount=5}
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
    name = "turbo-inserter",
    localised_name = {"entity-name.nullius-inserter-2"},
    icon = "__base__/graphics/icons/fast-inserter.png",
    icon_size = 64, icon_mipmaps = 4,
    subgroup = "inserter",
    order = "nullius-c",
    place_result = "turbo-inserter",
    stack_size = 100
  },
  {
    type = "item",
    name = "turbo-filter-inserter",
    localised_name = {"entity-name.nullius-filter-inserter-2"},
    icon = "__base__/graphics/icons/filter-inserter.png",
    icon_size = 64, icon_mipmaps = 4,
    subgroup = "inserter",
    order = "nullius-d",
    place_result = "turbo-filter-inserter",
    stack_size = 100
  }
})
end
