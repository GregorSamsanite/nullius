local ICONPATH = "__nullius__/graphics/icons/"
local ENTICONPATH = "__nullius__/graphics/icons/entity/"
local ENTITYPATH = "__nullius__/graphics/entity/"

data:extend({
  {
    type = "item",
    name = "nullius-pipe-2",
    icons = {{
      icon = "__boblogistics__/graphics/icons/pipe/copper-tungsten-pipe.png",
      icon_size = 32
    }},
    subgroup = "pipes",
    order = "nullius-d",
    place_result = "nullius-pipe-2",
    stack_size = 200
  },
  {
    type = "item",
    name = "nullius-pipe-3",
    icons = {{
      icon = "__boblogistics__/graphics/icons/pipe/plastic-pipe.png",
      icon_size = 32
    }},
    subgroup = "pipes",
    order = "nullius-f",
    place_result = "nullius-pipe-3",
    stack_size = 200
  },
  {
    type = "item",
    name = "nullius-pipe-4",
    icons = {{
      icon = "__boblogistics__/graphics/icons/pipe/tungsten-pipe.png",
      icon_size = 32
    }},
    subgroup = "pipes",
    order = "nullius-h",
    place_result = "nullius-pipe-4",
    stack_size = 200
  },
  {
    type = "item",
    name = "nullius-underground-pipe-2",
    icons = {{
      icon = "__boblogistics__/graphics/icons/pipe/copper-tungsten-pipe-to-ground.png",
      icon_size = 32
    }},
    subgroup = "pipes",
    order = "nullius-e",
    place_result = "nullius-underground-pipe-2",
    stack_size = 100
  },
  {
    type = "item",
    name = "nullius-underground-pipe-3",
    icons = {{
      icon = "__boblogistics__/graphics/icons/pipe/plastic-pipe-to-ground.png",
      icon_size = 32
    }},
    subgroup = "pipes",
    order = "nullius-g",
    place_result = "nullius-underground-pipe-3",
    stack_size = 100
  },
  {
    type = "item",
    name = "nullius-underground-pipe-4",
    icons = {{
      icon = "__boblogistics__/graphics/icons/pipe/tungsten-pipe-to-ground.png",
      icon_size = 32
    }},
    subgroup = "pipes",
    order = "nullius-i",
    place_result = "nullius-underground-pipe-4",
    stack_size = 100
  },

  {
    type = "recipe",
    name = "nullius-iron-pipe",
    localised_name = {"recipe-name.nullius-iron-pipe"},
    icons = {
      {
        icon = "__base__/graphics/icons/pipe.png",
        icon_size = 64,
        icon_mipmaps = 4
      },
      {
        icon = "__angelssmelting__/graphics/icons/ingot-iron.png",
        icon_size = 64,
        icon_mipmaps = 4,
        scale = 0.3,
        shift = {8, -9}
      }
    },
    show_amount_in_title = false,
    always_show_products = true,
    always_show_made_in = true,
    enabled = false,
    category = "hand-casting",
    subgroup = "pipes",
    order = "nullius-bc",
    allow_decomposition = false,
    allow_as_intermediate = false,
    energy_required = 3,
    ingredients = {
      {"nullius-iron-rod", 1}
    },
    result = "pipe",
    result_count = 3
  },
  {
    type = "recipe",
    name = "nullius-boxed-pipe-iron",
    localised_name = {"recipe-name.nullius-boxed", {"recipe-name.nullius-iron-pipe"}},
    icons = {
      {
        icon = ICONPATH .. "crate.png",
        icon_size = 64
      },
      {
        icon = "__base__/graphics/icons/pipe.png",
        icon_size = 64,
        icon_mipmaps = 4,
		scale = 0.45
      },
      {
        icon = "__angelssmelting__/graphics/icons/ingot-iron.png",
        icon_size = 64,
        icon_mipmaps = 4,
        scale = 0.27,
        shift = {7, -8}
      }
    },
    show_amount_in_title = false,
    always_show_products = true,
    always_show_made_in = true,
    enabled = false,
    category = "machine-casting",
    subgroup = "boxed-pipe",
    order = "nullius-bc",
    allow_decomposition = false,
    allow_as_intermediate = false,
    energy_required = 15,
    ingredients = {
      {"nullius-box-iron-rod", 1}
    },
    result = "nullius-box-pipe-1",
    result_count = 3
  },
  {
    type = "recipe",
    name = "nullius-underground-pipe-1",
    enabled = false,
    always_show_made_in = true,
    always_show_products = true,
    show_amount_in_title = false,
    category = "small-crafting",
    subgroup = "pipes",
    energy_required = 8,
    ingredients = {
      {"pipe", 5},
      {"nullius-sand", 2}
    },
    result = "pipe-to-ground",
    result_count = 2
  },
  {
    type = "recipe",
    name = "nullius-boxed-underground-pipe-1",
    enabled = false,
    category = "large-assembly",
    always_show_made_in = true,
    show_amount_in_title = false,
    always_show_products = true,
    subgroup = "boxed-pipe",
    energy_required = 40,
    ingredients = {
      {"nullius-box-pipe-1", 5},
      {"nullius-box-sand", 2}
    },
    result = "nullius-box-underground-pipe-1",
    result_count = 2
  },
  {
    type = "recipe",
    name = "nullius-stone-pipe",
    localised_name = {"recipe-name.nullius-stone-pipe"},
    icons = {
      {
        icon = "__base__/graphics/icons/pipe.png",
        icon_size = 64,
        icon_mipmaps = 4
      },
      {
        icon = "__base__/graphics/icons/stone-brick.png",
        icon_size = 64,
        icon_mipmaps = 4,
        scale = 0.3,
        shift = {9, -10}
      }
    },
    show_amount_in_title = false,
    always_show_products = true,
    always_show_made_in = true,
    enabled = false,
    category = "small-crafting",
    subgroup = "pipes",
    order = "nullius-bb",
    allow_decomposition = false,
    energy_required = 9,
    ingredients = {
      {"stone-brick", 8}
    },
    results = {
      {type="item", name="pipe", amount=5},
      {type="item", name="nullius-gravel", amount=1}
    },
    main_product = "pipe"
  },
  {
    type = "recipe",
    name = "nullius-boxed-pipe-1",
    show_amount_in_title = false,
    always_show_products = true,
    always_show_made_in = true,
    enabled = false,
    category = "large-assembly",
    subgroup = "boxed-pipe",
    allow_decomposition = false,
    energy_required = 45,
    ingredients = {
      {"nullius-box-stone-brick", 4}
    },
    results = {
      {type="item", name="nullius-box-pipe-1", amount=5},
      {type="item", name="nullius-box-gravel", amount=1}
    },
    main_product = "nullius-box-pipe-1"
  },

  {
    type = "recipe",
    name = "nullius-steel-pipe",
    localised_name = {"recipe-name.nullius-steel-pipe"},
    icons = {
      {
        icon = "__boblogistics__/graphics/icons/pipe/copper-tungsten-pipe.png",
        icon_size = 32
      },
      {
        icon = "__angelssmelting__/graphics/icons/ingot-steel.png",
        icon_size = 64,
        icon_mipmaps = 4,
        scale = 0.3,
        shift = {8, -9}
      }
    },
    show_amount_in_title = false,
    always_show_products = true,
    always_show_made_in = true,
    enabled = false,
    category = "hand-casting",
    subgroup = "pipes",
    order = "nullius-dc",
    allow_decomposition = false,
    allow_as_intermediate = false,
    energy_required = 8,
    ingredients = {
      {"nullius-steel-rod", 2}
    },
    result = "nullius-pipe-2",
    result_count = 3
  },
  {
    type = "recipe",
    name = "nullius-boxed-pipe-steel",
    localised_name = {"recipe-name.nullius-boxed", {"recipe-name.nullius-steel-pipe"}},
    icons = {
      {
        icon = ICONPATH .. "crate.png",
        icon_size = 64
      },
      {
        icon = "__boblogistics__/graphics/icons/pipe/copper-tungsten-pipe.png",
        icon_size = 32,
		scale = 0.9
      },
      {
        icon = "__angelssmelting__/graphics/icons/ingot-steel.png",
        icon_size = 64,
        icon_mipmaps = 4,
        scale = 0.27,
        shift = {7, -8}
      }
    },
    show_amount_in_title = false,
    always_show_products = true,
    always_show_made_in = true,
    enabled = false,
    category = "machine-casting",
    subgroup = "boxed-pipe",
    order = "nullius-dc",
    allow_decomposition = false,
    allow_as_intermediate = false,
    energy_required = 40,
    ingredients = {
      {"nullius-box-steel-rod", 2}
    },
    result = "nullius-box-pipe-2",
    result_count = 3
  },
  {
    type = "recipe",
    name = "nullius-underground-pipe-2",
    enabled = false,
    category = "small-crafting",
    always_show_made_in = true,
    show_amount_in_title = false,
    always_show_products = true,
    subgroup = "pipes",
    energy_required = 10,
    ingredients = {
      {"nullius-pipe-2", 10},
      {"nullius-gravel", 3}
    },
    result = "nullius-underground-pipe-2",
    result_count = 2
  },
  {
    type = "recipe",
    name = "nullius-boxed-underground-pipe-2",
    enabled = false,
    category = "large-assembly",
    always_show_made_in = true,
    show_amount_in_title = false,
    always_show_products = true,
    subgroup = "boxed-pipe",
    energy_required = 50,
    ingredients = {
      {"nullius-box-pipe-2", 10},
      {"nullius-box-gravel", 3}
    },
    result = "nullius-box-underground-pipe-2",
    result_count = 2
  },
  {
    type = "recipe",
    name = "nullius-plastic-pipe",
    localised_name = {"recipe-name.nullius-plastic-pipe"},
    icons = {
      {
        icon = "__boblogistics__/graphics/icons/pipe/copper-tungsten-pipe.png",
        icon_size = 32
      },
      {
        icon = "__base__/graphics/icons/plastic-bar.png",
        icon_size = 64,
        icon_mipmaps = 4,
        scale = 0.3,
        shift = {9, -10}
      }
    },
    show_amount_in_title = false,
    always_show_products = true,
    always_show_made_in = true,
    enabled = false,
    category = "small-crafting",
    subgroup = "pipes",
    order = "nullius-db",
    allow_decomposition = false,
    energy_required = 2,
    ingredients = {
      {"nullius-plastic", 1}
    },
    result = "nullius-pipe-2"
  },
  {
    type = "recipe",
    name = "nullius-boxed-pipe-2",
    show_amount_in_title = false,
    always_show_products = true,
    always_show_made_in = true,
    enabled = false,
    category = "large-assembly",
    subgroup = "boxed-pipe",
    allow_decomposition = false,
    energy_required = 10,
    ingredients = {
      {"nullius-box-plastic", 1}
    },
    result = "nullius-box-pipe-2"
  },

  {
    type = "recipe",
    name = "nullius-pipe-3",
    always_show_made_in = true,
    enabled = false,
    show_amount_in_title = false,
    always_show_products = true,
    category = "small-fluid-assembly",
    energy_required = 4,
    ingredients = {
      {type="item", name="nullius-fiberglass", amount=1},
      {type="fluid", name="nullius-epoxy", amount=1, fluidbox_index=1}
    },
    result = "nullius-pipe-3"
  },
  {
    type = "recipe",
    name = "nullius-boxed-pipe-3",
    always_show_made_in = true,
    enabled = false,
    show_amount_in_title = false,
    always_show_products = true,
    category = "large-assembly",
    subgroup = "boxed-pipe",
    energy_required = 20,
    ingredients = {
      {type="item", name="nullius-box-fiberglass", amount=1},
      {type="fluid", name="nullius-epoxy", amount=5, fluidbox_index=1}
    },
    result = "nullius-box-pipe-3"
  },
  {
    type = "recipe",
    name = "nullius-underground-pipe-3",
    enabled = false,
    category = "small-crafting",
    always_show_made_in = true,
    show_amount_in_title = false,
    always_show_products = true,
    subgroup = "pipes",
    energy_required = 20,
    ingredients = {
      {"nullius-pipe-3", 15},
      {"concrete", 4}
    },
    result = "nullius-underground-pipe-3",
    result_count = 2
  },
  {
    type = "recipe",
    name = "nullius-boxed-underground-pipe-3",
    enabled = false,
    category = "large-assembly",
    always_show_made_in = true,
    show_amount_in_title = false,
    always_show_products = true,
    subgroup = "boxed-pipe",
    energy_required = 100,
    ingredients = {
      {"nullius-box-pipe-3", 15},
      {"nullius-box-concrete", 2}
    },
    result = "nullius-box-underground-pipe-3",
    result_count = 2
  },

  {
    type = "recipe",
    name = "nullius-pipe-4",
    always_show_made_in = true,
    enabled = false,
    show_amount_in_title = false,
    always_show_products = true,
    category = "tiny-assembly",
    energy_required = 25,
    ingredients = {
      {type="item", name="pipe", amount=1},
      {type="item", name="nullius-pipe-2", amount=2},
      {type="item", name="nullius-pipe-3", amount=3},
      {type="item", name="nullius-carbon-composite", amount=3},
      {type="item", name="nullius-titanium-sheet", amount=4},
      {type="item", name="nullius-graphene", amount=1}
    },
    result = "nullius-pipe-4",
    result_count = 5
  },
  {
    type = "recipe",
    name = "nullius-boxed-pipe-4",
    always_show_made_in = true,
    enabled = false,
    show_amount_in_title = false,
    always_show_products = true,
    category = "medium-only-assembly",
    subgroup = "boxed-pipe",
    energy_required = 125,
    ingredients = {
      {type="item", name="nullius-box-pipe-1", amount=1},
      {type="item", name="nullius-box-pipe-2", amount=2},
      {type="item", name="nullius-box-pipe-3", amount=3},
      {type="item", name="nullius-box-carbon-composite", amount=3},
      {type="item", name="nullius-box-titanium-sheet", amount=4},
      {type="item", name="nullius-box-graphene", amount=1}
    },
    result = "nullius-box-pipe-4",
    result_count = 5
  },
  {
    type = "recipe",
    name = "nullius-underground-pipe-4",
    enabled = false,
    category = "tiny-assembly",
    always_show_made_in = true,
    show_amount_in_title = false,
    always_show_products = true,
    energy_required = 30,
    ingredients = {
      {"nullius-pipe-4", 20},
      {"refined-concrete", 6}
    },
    result = "nullius-underground-pipe-4",
    result_count = 2
  },
  {
    type = "recipe",
    name = "nullius-boxed-underground-pipe-4",
    enabled = false,
    category = "medium-only-assembly",
    subgroup = "boxed-pipe",
    always_show_made_in = true,
    show_amount_in_title = false,
    always_show_products = true,
    energy_required = 150,
    ingredients = {
      {"nullius-box-pipe-4", 20},
      {"nullius-box-reinforced-concrete", 3}
    },
    result = "nullius-box-underground-pipe-4",
    result_count = 2
  },

  {
    type = "item",
    name = "nullius-pump-1",
    icon = ENTICONPATH .. "pump-yellow.png",
    icon_size = 64,
    icon_mipmaps = 4,
    subgroup = "pumping",
    order = "nullius-bb",
    place_result = "nullius-pump-1",
    stack_size = 50
  },
  {
    type = "item",
    name = "nullius-pump-2",
    icon = ENTICONPATH .. "pump-blue.png",
    icon_size = 64,
    icon_mipmaps = 4,
    subgroup = "pumping",
    order = "nullius-bc",
    place_result = "nullius-pump-2",
    stack_size = 50
  },
  {
    type = "recipe",
    name = "nullius-pump-1",
    enabled = false,
    category = "medium-crafting",
    always_show_made_in = true,
    energy_required = 2,
    ingredients = {
      {"nullius-motor-1", 1},
      {"nullius-one-way-valve", 2}
    },
    result = "nullius-pump-1"
  },
  {
    type = "recipe",
    name = "nullius-boxed-pump-1",
    enabled = false,
    category = "large-assembly",
    subgroup = "boxed-plumbing",
    always_show_made_in = true,
    energy_required = 10,
    ingredients = {
      {"nullius-box-motor-1", 1},
      {"nullius-box-one-way-valve", 2}
    },
    result = "nullius-box-pump-1"
  },
  {
    type = "recipe",
    name = "nullius-pump-2",
    enabled = false,
    category = "medium-crafting",
    always_show_made_in = true,
    energy_required = 6,
    ingredients = {
      {"nullius-pump-1", 1},
      {"nullius-motor-2", 1},
      {"nullius-pipe-2", 2},
      {"nullius-rubber", 1}
    },
    result = "nullius-pump-2"
  },
  {
    type = "recipe",
    name = "nullius-boxed-pump-2",
    enabled = false,
    category = "large-assembly",
    subgroup = "boxed-plumbing",
    always_show_made_in = true,
    energy_required = 30,
    ingredients = {
      {"nullius-box-pump-1", 1},
      {"nullius-box-motor-2", 1},
      {"nullius-box-pipe-2", 2},
      {"nullius-box-rubber", 1}
    },
    result = "nullius-box-pump-2"
  },
  {
    type = "recipe",
    name = "nullius-pump-3",
    enabled = false,
    category = "medium-crafting",
    always_show_made_in = true,
    energy_required = 20,
    ingredients = {
      {"nullius-pump-2", 2},
      {"nullius-motor-3", 1},
      {"nullius-pipe-4", 2},
      {"nullius-top-up-valve", 2},
      {"power-switch", 1}
    },
    result = "pump"
  },
  {
    type = "recipe",
    name = "nullius-boxed-pump-3",
    enabled = false,
    category = "large-assembly",
    subgroup = "boxed-plumbing",
    always_show_made_in = true,
    energy_required = 100,
    ingredients = {
      {"nullius-box-pump-2", 2},
      {"nullius-box-motor-3", 1},
      {"nullius-box-pipe-4", 2},
      {"nullius-box-top-up-valve", 2},
      {"nullius-box-power-switch", 1}
    },
    result = "nullius-box-pump-3"
  },

  {
    type = "item",
    name = "nullius-small-pump-1",
    icons = {{
      icon = "__angelsrefining__/graphics/icons/water-pump.png",
      icon_size = 48,
      tint = {0.75, 0.85, 0.95}
    }},
    subgroup = "pumping",
    order = "nullius-cb",
    place_result = "nullius-small-pump-1",
    stack_size = 100
  },
  {
    type = "item",
    name = "nullius-small-pump-2",
    icons = {{
      icon = "__angelsrefining__/graphics/icons/water-pump.png",
      icon_size = 48,
      tint = {1, 1, 0.85}
    }},
    subgroup = "pumping",
    order = "nullius-cc",
    place_result = "nullius-small-pump-2",
    stack_size = 100
  },
  {
    type = "recipe",
    name = "nullius-small-pump-1",
    enabled = false,
    category = "tiny-crafting",
    always_show_made_in = true,
    show_amount_in_title = false,
    always_show_products = true,
    energy_required = 2,
    ingredients = {
      {"nullius-pump-2", 1},
      {"nullius-one-way-valve", 2}
    },
    result = "nullius-small-pump-1",
    result_count = 2
  },
  {
    type = "recipe",
    name = "nullius-boxed-small-pump-1",
    enabled = false,
    category = "medium-only-assembly",
    subgroup = "boxed-plumbing",
    always_show_made_in = true,
    show_amount_in_title = false,
    always_show_products = true,
    energy_required = 10,
    ingredients = {
      {"nullius-box-pump-2", 1},
      {"nullius-box-one-way-valve", 2}
    },
    result = "nullius-box-small-pump-1",
    result_count = 2
  },
  {
    type = "recipe",
    name = "nullius-small-pump-2",
    enabled = false,
    always_show_made_in = true,
    show_amount_in_title = false,
    always_show_products = true,
    category = "tiny-crafting",
    energy_required = 5,
    ingredients = {
      {"nullius-small-pump-1", 2},
      {"pump", 1}
    },
    result = "nullius-small-pump-2",
    result_count = 2
  },
  {
    type = "recipe",
    name = "nullius-boxed-small-pump-2",
    enabled = false,
    always_show_made_in = true,
    show_amount_in_title = false,
    always_show_products = true,
    category = "medium-only-assembly",
    subgroup = "boxed-plumbing",
    energy_required = 25,
    ingredients = {
      {"nullius-box-small-pump-1", 2},
      {"nullius-box-pump-3", 1}
    },
    result = "nullius-box-small-pump-2",
    result_count = 2
  },

  {
    type = "item",
    name = "nullius-chimney-1",
    icons = {
      {
        icon = "__angelspetrochem__/graphics/icons/flare-stack.png",
        icon_size = 64,
		icon_mipmaps = 4,
        scale = 0.4
      }
    },
    subgroup = "air-treatment",
    order = "nullius-db",
    place_result = "nullius-chimney-1",
    stack_size = 50
  },
  {
    type = "item",
    name = "nullius-chimney-2",
    icons = {{
      icon = "__angelspetrochem__/graphics/icons/flare-stack.png",
      icon_size = 64,
	  icon_mipmaps = 4
    }},
    subgroup = "air-treatment",
    order = "nullius-dc",
    place_result = "nullius-chimney-2",
    stack_size = 50
  },
  {
    type = "recipe",
    name = "nullius-chimney-1",
    icons = {
      {
        icon = ICONPATH .. "shadow.png",
        icon_size = 64
      },
      {
        icon = "__angelspetrochem__/graphics/icons/flare-stack.png",
        icon_size = 64,
		icon_mipmaps = 4,
        scale = 0.4
      }
    },
    enabled = false,
    category = "large-crafting",
    always_show_made_in = true,
    energy_required = 4,
    ingredients = {
      {"stone-brick", 3},
      {"pipe", 3},
      {"nullius-iron-rod", 2},
      {"nullius-one-way-valve", 1}
    },
    result = "nullius-chimney-1"
  },
  {
    type = "recipe",
    name = "nullius-chimney-2",
    enabled = false,
    category = "large-crafting",
    always_show_made_in = true,
    energy_required = 12,
    ingredients = {
      {"nullius-chimney-1", 2},
      {"nullius-pipe-2", 10},
      {"nullius-steel-beam", 4},
      {"concrete", 10},
      {"nullius-pump-2", 1}
    },
    result = "nullius-chimney-2"
  },

  {
    type = "item",
    name = "nullius-one-way-valve",
    icon = "__angelspetrochem__/graphics/icons/valve-overflow.png",
    icon_size = 32,
    subgroup = "valves",
    order = "nullius-db",
    place_result = "nullius-one-way-valve",
    stack_size = 200
  },
  {
    type = "item",
    name = "nullius-priority-valve",
    icon = "__angelspetrochem__/graphics/icons/valve-inspector.png",
    icon_size = 32,
    subgroup = "valves",
    order = "nullius-dc",
    place_result = "nullius-priority-valve",
    stack_size = 200
  },
  {
    type = "item",
    name = "nullius-top-up-valve",
    icon = "__angelspetrochem__/graphics/icons/valve-converter.png",
    icon_size = 32,
    subgroup = "valves",
    order = "nullius-dd",
    place_result = "nullius-top-up-valve",
    stack_size = 200
  },
  {
    type = "item",
    name = "nullius-relief-valve",
    icon = "__angelspetrochem__/graphics/icons/valve-return.png",
    icon_size = 32,
    subgroup = "valves",
    order = "nullius-de",
    place_result = "nullius-relief-valve",
    stack_size = 200
  },
  {
    type = "recipe",
    name = "nullius-one-way-valve-1",
    localised_name = {"", {"entity-name.nullius-one-way-valve"}, " ", 1},
    enabled = false,
    category = "small-crafting",
    always_show_made_in = true,
    show_amount_in_title = false,
    always_show_products = true,
    order = "nullius-dbb",
    energy_required = 4,
    ingredients = {
      {"pipe", 1},
      {"nullius-iron-sheet", 1}
    },
    result = "nullius-one-way-valve"
  },
  {
    type = "recipe",
    name = "nullius-one-way-valve-2",
    localised_name = {"", {"entity-name.nullius-one-way-valve"}, " ", 2},
    enabled = false,
    category = "small-assembly",
    always_show_made_in = true,
    show_amount_in_title = false,
    always_show_products = true,
    order = "nullius-dbc",
    energy_required = 6,
    ingredients = {
      {"nullius-pipe-2", 2},
      {"nullius-rubber", 1},
      {"nullius-steel-sheet", 1}
    },
    result = "nullius-one-way-valve",
    result_count = 5
  },
  {
    type = "recipe",
    name = "nullius-boxed-one-way-valve",
    enabled = false,
    category = "medium-only-assembly",
    subgroup = "boxed-plumbing",
    always_show_made_in = true,
    show_amount_in_title = false,
    always_show_products = true,
    energy_required = 30,
    ingredients = {
      {"nullius-box-pipe-2", 2},
      {"nullius-box-rubber", 1},
      {"nullius-box-steel-sheet", 1}
    },
    result = "nullius-box-one-way-valve",
    result_count = 5
  },
  {
    type = "recipe",
    name = "nullius-relief-valve",
    enabled = false,
    category = "tiny-crafting",
    always_show_made_in = true,
    show_amount_in_title = false,
    always_show_products = true,
    energy_required = 2,
    ingredients = {
      {"nullius-priority-valve", 1},
      {"nullius-iron-wire", 1}
    },
    result = "nullius-relief-valve"
  },
  {
    type = "recipe",
    name = "nullius-boxed-relief-valve",
    enabled = false,
    category = "medium-only-assembly",
    subgroup = "boxed-plumbing",
    always_show_made_in = true,
    show_amount_in_title = false,
    always_show_products = true,
    energy_required = 10,
    ingredients = {
      {"nullius-box-priority-valve", 2},
      {"nullius-box-steel-wire", 1}
    },
    result = "nullius-box-relief-valve",
    result_count = 2
  },
  {
    type = "recipe",
    name = "nullius-top-up-valve",
    enabled = false,
    category = "tiny-crafting",
    always_show_made_in = true,
    show_amount_in_title = false,
    always_show_products = true,
    energy_required = 2,
    ingredients = {
      {"nullius-priority-valve", 1},
      {"nullius-plastic", 1}
    },
    result = "nullius-top-up-valve"
  },
  {
    type = "recipe",
    name = "nullius-boxed-top-up-valve",
    enabled = false,
    category = "medium-only-assembly",
    subgroup = "boxed-plumbing",
    always_show_made_in = true,
    show_amount_in_title = false,
    always_show_products = true,
    energy_required = 10,
    ingredients = {
      {"nullius-box-priority-valve", 2},
      {"nullius-box-rubber", 1}
    },
    result = "nullius-box-top-up-valve",
    result_count = 2
  },
  {
    type = "recipe",
    name = "nullius-priority-valve",
    enabled = false,
    category = "tiny-crafting",
    always_show_made_in = true,
    show_amount_in_title = false,
    always_show_products = true,
    energy_required = 2,
    ingredients = {
      {"nullius-one-way-valve", 1},
      {"nullius-iron-wire", 1}
    },
    result = "nullius-priority-valve"
  },
  {
    type = "recipe",
    name = "nullius-boxed-priority-valve",
    enabled = false,
    category = "medium-only-assembly",
    subgroup = "boxed-plumbing",
    always_show_made_in = true,
    show_amount_in_title = false,
    always_show_products = true,
    energy_required = 10,
    ingredients = {
      {"nullius-box-one-way-valve", 2},
      {"nullius-box-steel-wire", 1}
    },
    result = "nullius-box-priority-valve",
    result_count = 2
  },

  {
    type = "item",
    name = "nullius-outfall-1",
    icons = {
      {
        icon = "__angelsrefining__/graphics/icons/seafloor-pump-ico.png",
        icon_size = 32,
        scale = 0.8
      }
    },
    subgroup = "water-intake",
    order = "nullius-eb",
    place_result = "nullius-outfall-1",
    stack_size = 50
  },
  {
    type = "item",
    name = "nullius-outfall-2",
    icon = "__angelsrefining__/graphics/icons/seafloor-pump-ico.png",
    icon_size = 32,
    subgroup = "water-intake",
    order = "nullius-ec",
    place_result = "nullius-outfall-2",
    stack_size = 50
  },
  {
    type = "recipe",
    name = "nullius-outfall-1",
    icons = {
      {
        icon = ICONPATH .. "shadow.png",
        icon_size = 64,
        scale = 0.5
      },
      {
        icon = "__angelsrefining__/graphics/icons/seafloor-pump-ico.png",
        icon_size = 32,
        scale = 0.8
      }
    },
    enabled = false,
    category = "large-crafting",
    always_show_made_in = true,
    energy_required = 4,
    ingredients = {
      {"pipe-to-ground", 1},
      {"nullius-one-way-valve", 1}
    },
    result = "nullius-outfall-1"
  },
  {
    type = "recipe",
    name = "nullius-outfall-2",
    enabled = false,
    category = "large-crafting",
    always_show_made_in = true,
    energy_required = 10,
    ingredients = {
      {"nullius-outfall-1", 2},
      {"nullius-underground-pipe-2", 4},
      {"concrete", 10},
      {"nullius-pump-2", 1}
    },
    result = "nullius-outfall-2"
  },

  {
    type = "item",
    name = "nullius-seawater-intake-1",
    icons = {{
      icon = ENTICONPATH .. "intake.png",
      icon_size = 64
    }},
    subgroup = "water-intake",
    order = "nullius-bb",
    place_result = "nullius-seawater-intake-1",
    stack_size = 50
  },
  {
    type = "item",
    name = "nullius-seawater-intake-2",
    order = "nullius-cc",
    icon = "__base__/graphics/icons/offshore-pump.png",
    icon_size = 64,
    icon_mipmaps = 4,
    subgroup = "water-intake",
    order = "nullius-bc",
    place_result = "nullius-seawater-intake-2",
    stack_size = 50
  },
  {
    type = "recipe",
    name = "nullius-seawater-intake-1",
    enabled = false,
    category = "medium-crafting",
    always_show_made_in = true,
    energy_required = 5,
    ingredients = {
      {"nullius-pump-1", 1},
      {"nullius-outfall-1", 1},
      {"nullius-filter-1", 1}
    },
    result = "nullius-seawater-intake-1"
  },
  {
    type = "recipe",
    name = "nullius-seawater-intake-2",
    enabled = false,
    category = "medium-crafting",
    always_show_made_in = true,
    energy_required = 20,
    ingredients = {
      {"nullius-seawater-intake-1", 1},
      {"nullius-pump-2", 2},
      {"nullius-underground-pipe-2", 2},
      {"nullius-filter-1", 6}
    },
    result = "nullius-seawater-intake-2"
  },

  {
    type = "item",
    name = "nullius-air-filter-1",
    icons = {
      {
        icon = "__angelspetrochem__/graphics/icons/air-filter.png",
        icon_size = 32,
        scale = 0.6
      }
    },
    subgroup = "air-treatment",
    order = "nullius-bb",
    place_result = "nullius-air-filter-1",
    stack_size = 50
  },
  {
    type = "item",
    name = "nullius-air-filter-2",
    icons = {
      {
        icon = "__angelspetrochem__/graphics/icons/air-filter.png",
        icon_size = 32,
        scale = 0.8
      }
    },
    subgroup = "air-treatment",
    order = "nullius-bc",
    place_result = "nullius-air-filter-2",
    stack_size = 50
  },
  {
    type = "item",
    name = "nullius-air-filter-3",
    icons = {{
      icon = "__angelspetrochem__/graphics/icons/air-filter.png",
      icon_size = 32
    }},
    subgroup = "air-treatment",
    order = "nullius-bd",
    place_result = "nullius-air-filter-3",
    stack_size = 50
  },
  {
    type = "recipe",
    name = "nullius-air-filter-1",
    icons = {
      {
        icon = ICONPATH .. "shadow.png",
        icon_size = 64,
        scale = 0.5
      },
      {
        icon = "__angelspetrochem__/graphics/icons/air-filter.png",
        icon_size = 32,
        scale = 0.6
      }
    },
    enabled = false,
    category = "large-crafting",
    always_show_made_in = true,
    energy_required = 8,
    ingredients = {
      {"nullius-backup-turbine-1", 1},
      {"nullius-filter-1", 2},
      {"nullius-pump-1", 1}
    },
    result = "nullius-air-filter-1"
  },
  {
    type = "recipe",
    name = "nullius-air-filter-2",
    icons = {
      {
        icon = ICONPATH .. "shadow.png",
        icon_size = 64,
        scale = 0.5
      },
      {
        icon = "__angelspetrochem__/graphics/icons/air-filter.png",
        icon_size = 32,
        scale = 0.8
      }
    },
    enabled = false,
    show_amount_in_title = false,
    always_show_products = true,
    always_show_made_in = true,
    category = "large-crafting",
    energy_required = 25,
    ingredients = {
      {"nullius-air-filter-1", 2},
      {"nullius-standard-turbine-2", 1},
      {"nullius-filter-1", 10},
      {"nullius-pump-2", 2}
    },
    result = "nullius-air-filter-2",
    result_count = 2
  },
  {
    type = "recipe",
    name = "nullius-air-filter-3",
    enabled = false,
    always_show_made_in = true,
    show_amount_in_title = false,
    always_show_products = true,
    category = "large-crafting",
    energy_required = 60,
    ingredients = {
      {"nullius-air-filter-2", 3},
      {"nullius-surge-compressor-2", 1},
      {"nullius-filter-2", 6},
      {"pump", 2},
      {"nullius-chimney-2", 1},
      {"stone-wall", 8}
    },
    result = "nullius-air-filter-3",
    result_count = 2
  },

  {
    type = "item",
    name = "nullius-combustion-chamber-1",
    icons = {
      {
        icon = "__base__/graphics/icons/boiler.png",
        icon_size = 64,
        icon_mipmaps = 4,
        tint = {0.77, 0.77, 0.66, 1}
      }
    },
    subgroup = "energy-storage",
    order = "nullius-bbb",
    place_result = "nullius-combustion-chamber-1",
    stack_size = 50
  },
  {
    type = "item",
    name = "nullius-mirror-combustion-chamber-1",
    icons = {
      {
        icon = "__base__/graphics/icons/boiler.png",
        icon_size = 64,
        icon_mipmaps = 4,
        tint = {0.77, 0.77, 0.66, 1}
      },
      {
        icon = ICONPATH .. "flip1.png",
        icon_size = 64
      }
    },
    subgroup = "energy-storage",
    order = "nullius-bbc",
    place_result = "nullius-mirror-combustion-chamber-1",
    stack_size = 50
  },
  {
    type = "item",
    name = "nullius-combustion-chamber-2",
    icons = {
      {
        icon = "__base__/graphics/icons/boiler.png",
        icon_size = 64,
        icon_mipmaps = 4,
        tint = {0.8, 0.8, 1, 1}
      }
    },
    subgroup = "energy-storage",
    order = "nullius-bcb",
    place_result = "nullius-combustion-chamber-2",
    stack_size = 50
  },
  {
    type = "item",
    name = "nullius-mirror-combustion-chamber-2",
    icons = {
      {
        icon = "__base__/graphics/icons/boiler.png",
        icon_size = 64,
        icon_mipmaps = 4,
        tint = {0.8, 0.8, 1, 1}
      },
      {
        icon = ICONPATH .. "flip1.png",
        icon_size = 64
      }
    },
    subgroup = "energy-storage",
    order = "nullius-bcc",
    place_result = "nullius-mirror-combustion-chamber-2",
    stack_size = 50
  },
  {
    type = "item",
    name = "nullius-combustion-chamber-3",
    icons = {
      {
        icon = "__base__/graphics/icons/boiler.png",
        icon_size = 64,
        icon_mipmaps = 4
      }
    },
    subgroup = "energy-storage",
    order = "nullius-bdb",
    place_result = "nullius-combustion-chamber-3",
    stack_size = 50
  },
  {
    type = "item",
    name = "nullius-mirror-combustion-chamber-3",
    icons = {
      {
        icon = "__base__/graphics/icons/boiler.png",
        icon_size = 64,
        icon_mipmaps = 4
      },
      {
        icon = ICONPATH .. "flip1.png",
        icon_size = 64
      }
    },
    subgroup = "energy-storage",
    order = "nullius-bdc",
    place_result = "nullius-mirror-combustion-chamber-3",
    stack_size = 50
  },
  {
    type = "recipe",
    name = "nullius-combustion-chamber-1",
    enabled = false,
    category = "medium-crafting",
    always_show_made_in = true,
    energy_required = 3,
    ingredients = {
      {"nullius-small-furnace-1", 1},
      {"storage-tank", 1}
    },
    result = "nullius-combustion-chamber-1"
  },
  {
    type = "recipe",
    name = "nullius-mirror-combustion-chamber-1",
    enabled = false,
    always_show_made_in = true,
    no_productivity = true,
    category = "medium-crafting",
    energy_required = 1,
	requester_paste_multiplier = 5,
    ingredients = {
      {"nullius-combustion-chamber-1", 1},
      {"pipe", 2}
    },
    result = "nullius-mirror-combustion-chamber-1"
  },
  {
    type = "recipe",
    name = "nullius-unmirror-combustion-chamber-1",
    localised_name = {"recipe-name.nullius-unmirrored",
      {"entity-name.nullius-combustion-chamber-1"}},
    icons = {
      {
        icon = "__base__/graphics/icons/boiler.png",
        icon_size = 64,
        icon_mipmaps = 4,
        tint = {0.77, 0.77, 0.66, 1}
      },
      {
        icon = ICONPATH .. "flip2.png",
        icon_size = 64
      }
    },
    enabled = false,
    always_show_made_in = true,
    no_productivity = true,
    allow_decomposition = false,
    allow_as_intermediate = false,
    always_show_products = true,
    category = "medium-crafting",
    subgroup = "unmirror-1",
    order = "nullius-hb",
    energy_required = 0.5,
	requester_paste_multiplier = 2.5,
    ingredients = {
      {"nullius-mirror-combustion-chamber-1", 1},
      {"pipe", 1}
    },
    result = "nullius-combustion-chamber-1"
  },
  {
    type = "recipe",
    name = "nullius-combustion-chamber-2",
    enabled = false,
    category = "medium-crafting",
    always_show_made_in = true,
    energy_required = 10,
    ingredients = {
      {"nullius-combustion-chamber-1", 1},
      {"nullius-small-furnace-2", 1},
      {"nullius-medium-tank-2", 1}
    },
    result = "nullius-combustion-chamber-2"
  },
  {
    type = "recipe",
    name = "nullius-mirror-combustion-chamber-2",
    enabled = false,
    category = "medium-crafting",
    always_show_made_in = true,
    no_productivity = true,
	requester_paste_multiplier = 5,
    energy_required = 1,
    ingredients = {
      {"nullius-combustion-chamber-2", 1},
      {"nullius-pipe-2", 2}
    },
    result = "nullius-mirror-combustion-chamber-2"
  },
  {
    type = "recipe",
    name = "nullius-unmirror-combustion-chamber-2",
    localised_name = {"recipe-name.nullius-unmirror-combustion-chamber-2"},
    icons = {
      {
        icon = "__base__/graphics/icons/boiler.png",
        icon_size = 64,
        icon_mipmaps = 4,
        tint = {0.8, 0.8, 1, 1}
      },
      {
        icon = ICONPATH .. "flip2.png",
        icon_size = 64
      }
    },
    enabled = false,
    category = "medium-crafting",
    subgroup = "unmirror-1",
    order = "nullius-hc",
    always_show_made_in = true,
    no_productivity = true,
    allow_decomposition = false,
    allow_as_intermediate = false,
    always_show_products = true,
	requester_paste_multiplier = 2.5,
    energy_required = 0.5,
    ingredients = {
      {"nullius-mirror-combustion-chamber-2", 1},
      {"nullius-pipe-2", 1}
    },
    result = "nullius-combustion-chamber-2"
  },
  {
    type = "recipe",
    name = "nullius-combustion-chamber-3",
    enabled = false,
    category = "medium-crafting",
    always_show_made_in = true,
    energy_required = 25,
    ingredients = {
      {"nullius-combustion-chamber-2", 1},
      {"nullius-medium-furnace-2", 1},
      {"nullius-medium-tank-3", 1},
      {"nullius-ceramic-powder", 8}
    },
    result = "nullius-combustion-chamber-3"
  },
  {
    type = "recipe",
    name = "nullius-mirror-combustion-chamber-3",
    enabled = false,
    category = "medium-crafting",
    always_show_made_in = true,
    no_productivity = true,
	requester_paste_multiplier = 5,
    energy_required = 1,
    ingredients = {
      {"nullius-combustion-chamber-3", 1},
      {"nullius-pipe-2", 3}
    },
    result = "nullius-mirror-combustion-chamber-3"
  },
  {
    type = "recipe",
    name = "nullius-unmirror-combustion-chamber-3",
    localised_name = {"recipe-name.nullius-unmirror-combustion-chamber-3"},
    icons = {
      {
        icon = "__base__/graphics/icons/boiler.png",
        icon_size = 64,
        icon_mipmaps = 4
      },
      {
        icon = ICONPATH .. "flip2.png",
        icon_size = 64
      }
    },
    enabled = false,
    category = "medium-crafting",
    subgroup = "unmirror-1",
    order = "nullius-hd",
    always_show_made_in = true,
    no_productivity = true,
    allow_decomposition = false,
    allow_as_intermediate = false,
    always_show_products = true,
	requester_paste_multiplier = 2.5,
    energy_required = 0.5,
    ingredients = {
      {"nullius-mirror-combustion-chamber-3", 1},
      {"nullius-pipe-2", 1}
    },
    result = "nullius-combustion-chamber-3"
  },

  {
    type = "item",
    name = "nullius-backup-turbine-1",
    icons = {{
        icon = ENTICONPATH .. "turbine-green.png",
        icon_size = 64,
        icon_mipmaps = 4,
        tint = {0.5, 0.6, 0.55, 1}
    }},
    subgroup = "energy-backup",
    order = "nullius-dbb",
    place_result = "nullius-backup-turbine-1",
    stack_size = 50
  },
  {
    type = "item",
    name = "nullius-standard-turbine-1",
    icons = {{
        icon = ENTICONPATH .. "turbine-yellow.png",
        icon_size = 64,
        icon_mipmaps = 4,
        tint = {0.65, 0.6, 0.5, 1}
    }},
    subgroup = "energy-backup",
    order = "nullius-dbc",
    place_result = "nullius-standard-turbine-1",
    stack_size = 50
  },
  {
    type = "item",
    name = "nullius-backup-turbine-2",
    icons = {{
        icon = ENTICONPATH .. "turbine-green.png",
        icon_size = 64,
        icon_mipmaps = 4,
        tint = {0.75, 0.8, 0.75, 1}
    }},
    subgroup = "energy-backup",
    order = "nullius-dcb",
    place_result = "nullius-backup-turbine-2",
    stack_size = 50
  },
  {
    type = "item",
    name = "nullius-standard-turbine-2",
    icons = {{
        icon = ENTICONPATH .. "turbine-yellow.png",
        icon_size = 64,
        icon_mipmaps = 4,
        tint = {0.8, 0.8, 0.75, 1}
    }},
    subgroup = "energy-backup",
    order = "nullius-dcc",
    place_result = "nullius-standard-turbine-2",
    stack_size = 50
  },
  {
    type = "item",
    name = "nullius-backup-turbine-3",
    icons = {{
        icon = ENTICONPATH .. "turbine-green.png",
        icon_size = 64,
        icon_mipmaps = 4
    }},
    subgroup = "energy-backup",
    order = "nullius-ddb",
    place_result = "nullius-backup-turbine-3",
    stack_size = 50
  },
  {
    type = "item",
    name = "nullius-standard-turbine-3",
    icons = {{
        icon = ENTICONPATH .. "turbine-yellow.png",
        icon_size = 64,
        icon_mipmaps = 4
    }},
    subgroup = "energy-backup",
    order = "nullius-ddc",
    place_result = "nullius-standard-turbine-3",
    stack_size = 50
  },
  {
    type = "item",
    name = "nullius-priority-turbine-1",
    icons = {{
        icon = ENTICONPATH .. "turbine-red.png",
        icon_size = 64,
        icon_mipmaps = 4,
        tint = {0.8, 0.75, 0.75, 1}
    }},
    subgroup = "energy-backup",
    order = "nullius-dcd",
    place_result = "nullius-priority-turbine-1",
    stack_size = 50
  },
  {
    type = "item",
    name = "nullius-priority-turbine-2",
    icons = {{
        icon = ENTICONPATH .. "turbine-red.png",
        icon_size = 64,
        icon_mipmaps = 4
    }},
    subgroup = "energy-backup",
    order = "nullius-ddd",
    place_result = "nullius-priority-turbine-2",
    stack_size = 50
  },
  {
    type = "recipe",
    name = "nullius-turbine-1",
    enabled = false,
    category = "large-crafting",
    always_show_made_in = true,
    energy_required = 8,
    ingredients = {
      {"nullius-motor-1", 1},
      {"nullius-iron-sheet", 2},
      {"nullius-iron-gear", 1},
      {"pipe", 2}
    },
    result = "nullius-backup-turbine-1"
  },
  {
    type = "recipe",
    name = "nullius-boxed-backup-turbine-1",
    enabled = false,
    category = "huge-assembly",
    subgroup = "boxed-fluid-energy",
    always_show_made_in = true,
    energy_required = 40,
    ingredients = {
      {"nullius-box-motor-1", 1},
      {"nullius-box-iron-sheet", 2},
      {"nullius-box-iron-gear", 1},
      {"nullius-box-pipe-1", 2}
    },
    result = "nullius-box-backup-turbine-1"
  },
  {
    type = "recipe",
    name = "nullius-standard-turbine-1",
    enabled = false,
    always_show_made_in = true,
    no_productivity = true,
    category = "large-crafting",
    energy_required = 2,
    ingredients = {
      {"nullius-backup-turbine-1", 1},
      {"copper-cable", 1}
    },
    result = "nullius-standard-turbine-1"
  },
  {
    type = "recipe",
    name = "nullius-boxed-standard-turbine-1",
    enabled = false,
    always_show_made_in = true,
    no_productivity = true,
    category = "huge-assembly",
    subgroup = "boxed-fluid-energy",
    energy_required = 10,
    ingredients = {
      {"nullius-box-backup-turbine-1", 1},
      {"nullius-box-insulated-wire", 1}
    },
    result = "nullius-box-standard-turbine-1"
  },
  {
    type = "recipe",
    name = "nullius-turbine-2",
    enabled = false,
    always_show_made_in = true,
    category = "large-crafting",
    energy_required = 16,
    ingredients = {
      {"nullius-standard-turbine-1", 2},
      {"nullius-motor-2", 2},
      {"nullius-aluminum-sheet", 8},
      {"nullius-steel-gear", 4},
      {"nullius-pipe-2", 5},
      {"nullius-capacitor", 2}
    },
    result = "nullius-standard-turbine-2"
  },
  {
    type = "recipe",
    name = "nullius-boxed-standard-turbine-2",
    enabled = false,
    always_show_made_in = true,
    category = "huge-assembly",
    subgroup = "boxed-fluid-energy",
    energy_required = 80,
    ingredients = {
      {"nullius-box-standard-turbine-1", 2},
      {"nullius-box-motor-2", 2},
      {"nullius-box-aluminum-sheet", 8},
      {"nullius-box-steel-gear", 4},
      {"nullius-box-pipe-2", 5},
      {"nullius-box-capacitor", 2}
    },
    result = "nullius-box-standard-turbine-2"
  },
  {
    type = "recipe",
    name = "nullius-backup-turbine-2",
    enabled = false,
    always_show_made_in = true,
    no_productivity = true,
    category = "large-crafting",
    energy_required = 3,
    ingredients = {
      {"nullius-standard-turbine-2", 1},
      {"power-switch", 1}
    },
    result = "nullius-backup-turbine-2"
  },
  {
    type = "recipe",
    name = "nullius-boxed-backup-turbine-2",
    enabled = false,
    always_show_made_in = true,
    no_productivity = true,
    category = "huge-assembly",
    subgroup = "boxed-fluid-energy",
    energy_required = 15,
    ingredients = {
      {"nullius-box-standard-turbine-2", 1},
      {"nullius-box-power-switch", 1}
    },
    result = "nullius-box-backup-turbine-2"
  },
  {
    type = "recipe",
    name = "nullius-turbine-3",
    enabled = false,
    always_show_made_in = true,
    category = "large-crafting",
    energy_required = 40,
    ingredients = {
      {"nullius-standard-turbine-2", 2},
      {"nullius-motor-3", 4},
      {"nullius-titanium-sheet", 12},
      {"nullius-bearing", 6},
      {"nullius-pipe-4", 8},
      {"nullius-transformer", 1},
      {"nullius-small-pump-2", 1}
    },
    result = "nullius-standard-turbine-3"
  },
  {
    type = "recipe",
    name = "nullius-boxed-standard-turbine-3",
    enabled = false,
    always_show_made_in = true,
    category = "huge-assembly",
    subgroup = "boxed-fluid-energy",
    energy_required = 200,
    ingredients = {
      {"nullius-box-standard-turbine-2", 2},
      {"nullius-box-motor-3", 4},
      {"nullius-box-titanium-sheet", 12},
      {"nullius-box-bearing", 6},
      {"nullius-box-pipe-4", 8},
      {"nullius-box-transformer", 1},
      {"nullius-box-small-pump-2", 1}
    },
    result = "nullius-box-standard-turbine-3"
  },
  {
    type = "recipe",
    name = "nullius-backup-turbine-3",
    enabled = false,
    always_show_made_in = true,
    no_productivity = true,
    category = "large-crafting",
    energy_required = 5,
    ingredients = {
      {"nullius-standard-turbine-3", 1},
      {"power-switch", 2}
    },
    result = "nullius-backup-turbine-3"
  },
  {
    type = "recipe",
    name = "nullius-boxed-backup-turbine-3",
    enabled = false,
    always_show_made_in = true,
    no_productivity = true,
    category = "huge-assembly",
    subgroup = "boxed-fluid-energy",
    energy_required = 25,
    ingredients = {
      {"nullius-box-standard-turbine-3", 1},
      {"nullius-box-power-switch", 2}
    },
    result = "nullius-box-backup-turbine-3"
  },
  {
    type = "recipe",
    name = "nullius-priority-turbine-1",
    enabled = false,
    always_show_made_in = true,
    no_productivity = true,
    category = "large-crafting",
    energy_required = 5,
    ingredients = {
      {"nullius-standard-turbine-2", 1},
      {"power-switch", 2}
    },
    result = "nullius-priority-turbine-1"
  },
  {
    type = "recipe",
    name = "nullius-priority-turbine-2",
    enabled = false,
    always_show_made_in = true,
    no_productivity = true,
    category = "large-crafting",
    energy_required = 12,
    ingredients = {
      {"nullius-standard-turbine-3", 1},
      {"power-switch", 3}
    },
    result = "nullius-priority-turbine-2"
  }
})

data:extend({
  {
    type = "recipe",
    name = "nullius-turbine-reprioritization-2",
    localised_name = {"recipe-name.nullius-reprioritization", {"entity-name.nullius-backup-turbine-2"}},
    icons = {
      data.raw.item["nullius-backup-turbine-2"].icons[1],
      {
        icon = ICONPATH .. "up.png",
        icon_size = 64,
        scale = 0.3,
        shift = {8, -6}
      }
    },
    enabled = false,
    always_show_made_in = true,
    no_productivity = true,
    allow_decomposition = false,
    allow_as_intermediate = false,
    always_show_products = true,
	requester_paste_multiplier = 5,
    category = "large-crafting",
    subgroup = "prioritization",
    order = "nullius-db",
    energy_required = 1,
    ingredients = {
      {"nullius-backup-turbine-2", 1},
      {"copper-cable", 1}
    },
    result = "nullius-standard-turbine-2"
  },
  {
    type = "recipe",
    name = "nullius-turbine-deprioritization-2",
    localised_name = {"recipe-name.nullius-deprioritization", {"entity-name.nullius-priority-turbine-1"}},
    icons = {
      data.raw.item["nullius-priority-turbine-1"].icons[1],
      {
        icon = ICONPATH .. "down.png",
        icon_size = 64,
        scale = 0.3,
        shift = {-8, 6}
      }
    },
    enabled = false,
    always_show_made_in = true,
    no_productivity = true,
    allow_decomposition = false,
    allow_as_intermediate = false,
    always_show_products = true,
	requester_paste_multiplier = 5,
    category = "large-crafting",
    subgroup = "prioritization",
    order = "nullius-dc",
    energy_required = 1,
    ingredients = {
      {"nullius-priority-turbine-1", 1},
      {"copper-cable", 1}
    },
    result = "nullius-standard-turbine-2"
  },
  {
    type = "recipe",
    name = "nullius-turbine-reprioritization-3",
    localised_name = {"recipe-name.nullius-reprioritization", {"entity-name.nullius-backup-turbine-3"}},
    icons = {
      data.raw.item["nullius-backup-turbine-3"].icons[1],
      {
        icon = ICONPATH .. "up.png",
        icon_size = 64,
        scale = 0.3,
        shift = {8, -6}
      }
    },
    enabled = false,
    always_show_made_in = true,
    no_productivity = true,
    allow_decomposition = false,
    allow_as_intermediate = false,
    always_show_products = true,
	requester_paste_multiplier = 5,
    category = "large-crafting",
    subgroup = "prioritization",
    order = "nullius-dd",
    energy_required = 1,
    ingredients = {
      {"nullius-backup-turbine-3", 1},
      {"copper-cable", 1}
    },
    result = "nullius-standard-turbine-3"
  },
  {
    type = "recipe",
    name = "nullius-turbine-deprioritization-3",
    localised_name = {"recipe-name.nullius-deprioritization", {"entity-name.nullius-priority-turbine-2"}},
    icons = {
      data.raw.item["nullius-priority-turbine-2"].icons[1],
      {
        icon = ICONPATH .. "down.png",
        icon_size = 64,
        scale = 0.3,
        shift = {-8, 6}
      }
    },
    enabled = false,
    always_show_made_in = true,
    no_productivity = true,
    allow_decomposition = false,
    allow_as_intermediate = false,
    always_show_products = true,
	requester_paste_multiplier = 5,
    category = "large-crafting",
    subgroup = "prioritization",
    order = "nullius-de",
    energy_required = 1,
    ingredients = {
      {"nullius-priority-turbine-2", 1},
      {"copper-cable", 1}
    },
    result = "nullius-standard-turbine-3"
  },

  {
    type = "item",
    name = "nullius-hydro-plant-1",
    icons = {{
      icon = "__angelsrefining__/graphics/icons/hydro-plant.png",
      icon_size = 64,
	  icon_mipmaps = 4,
      tint = {0.77, 0.77, 0.68}
    }},
    subgroup = "water-treatment",
    order = "nullius-bb",
    place_result = "nullius-hydro-plant-1",
    stack_size = 20
  },
  {
    type = "item",
    name = "nullius-hydro-plant-2",
    icons = {{
      icon = "__angelsrefining__/graphics/icons/hydro-plant.png",
      icon_size = 64,
	  icon_mipmaps = 4,
      tint = {0.8, 0.8, 0.9}
    }},
    subgroup = "water-treatment",
    order = "nullius-bcb",
    place_result = "nullius-hydro-plant-2",
    stack_size = 20
  },
  {
    type = "item",
    name = "nullius-mirror-hydro-plant-2",
    icons = {
      {
        icon = "__angelsrefining__/graphics/icons/hydro-plant.png",
        icon_size = 64,
	    icon_mipmaps = 4,
        tint = {0.8, 0.8, 0.9}
      },
      {
        icon = ICONPATH .. "flip1.png",
        icon_size = 64
      }
    },
    subgroup = "water-treatment",
    order = "nullius-bcc",
    place_result = "nullius-mirror-hydro-plant-2",
    stack_size = 20
  },
  {
    type = "item",
    name = "nullius-hydro-plant-3",
    icons = {{
      icon = "__angelsrefining__/graphics/icons/hydro-plant.png",
      icon_size = 64,
	  icon_mipmaps = 4
    }},
    subgroup = "water-treatment",
    order = "nullius-bdb",
    place_result = "nullius-hydro-plant-3",
    stack_size = 20
  },
  {
    type = "item",
    name = "nullius-mirror-hydro-plant-3",
    icons = {
      {
        icon = "__angelsrefining__/graphics/icons/hydro-plant.png",
        icon_size = 64,
	    icon_mipmaps = 4
	  },
      {
        icon = ICONPATH .. "flip1.png",
        icon_size = 64
      }
    },
    subgroup = "water-treatment",
    order = "nullius-bdc",
    place_result = "nullius-mirror-hydro-plant-3",
    stack_size = 20
  },
  {
    type = "recipe",
    name = "nullius-hydro-plant-1",
    enabled = false,
    category = "large-crafting",
    always_show_made_in = true,
    energy_required = 5,
    ingredients = {
      {"nullius-distillery-1", 1},
      {"nullius-seawater-intake-1", 1}
    },
    result = "nullius-hydro-plant-1"
  },
  {
    type = "recipe",
    name = "nullius-hydro-plant-2",
    enabled = false,
    category = "huge-crafting",
    always_show_made_in = true,
    energy_required = 16,
    ingredients = {
      {"nullius-hydro-plant-1", 1},
      {"nullius-chemical-plant-1", 1},
      {"nullius-seawater-intake-2", 1},
      {"nullius-medium-tank-2", 2},
      {"red-wire", 6}
    },
    result = "nullius-hydro-plant-2"
  },
  {
    type = "recipe",
    name = "nullius-mirror-hydro-plant-2",
    enabled = false,
    category = "large-crafting",
    always_show_made_in = true,
    no_productivity = true,
	requester_paste_multiplier = 5,
    energy_required = 1,
    ingredients = {
      {"nullius-hydro-plant-2", 1},
      {"nullius-pipe-2", 4}
    },
    result = "nullius-mirror-hydro-plant-2"
  },
  {
    type = "recipe",
    name = "nullius-unmirror-hydro-plant-2",
    localised_name = {"recipe-name.nullius-unmirror-hydro-plant-2"},
    icons = {
      {
        icon = "__angelsrefining__/graphics/icons/hydro-plant.png",
        icon_size = 64,
	    icon_mipmaps = 4,
        tint = {0.8, 0.8, 0.9}
      },
      {
        icon = ICONPATH .. "flip2.png",
        icon_size = 64
      }
    },
    enabled = false,
    category = "large-crafting",
    subgroup = "unmirror-1",
    order = "nullius-fb",
    always_show_made_in = true,
    no_productivity = true,
    allow_decomposition = false,
    allow_as_intermediate = false,
    always_show_products = true,
	requester_paste_multiplier = 2.5,
    energy_required = 0.5,
    ingredients = {
      {"nullius-mirror-hydro-plant-2", 1},
      {"nullius-pipe-2", 1}
    },
    result = "nullius-hydro-plant-2"
  },
  {
    type = "recipe",
    name = "nullius-hydro-plant-3",
    enabled = false,
    always_show_made_in = true,
    category = "huge-crafting",
    energy_required = 50,
    ingredients = {
      {"nullius-hydro-plant-2", 1},
      {"nullius-flotation-cell-2", 1},
      {"nullius-chemical-plant-2", 1},
      {"nullius-large-tank-3", 1},
      {"pump", 3},
      {"nullius-box-filter-2", 1},
      {"nullius-box-sensor-2", 1}
    },
    result = "nullius-hydro-plant-3"
  },
  {
    type = "recipe",
    name = "nullius-mirror-hydro-plant-3",
    enabled = false,
    always_show_made_in = true,
    no_productivity = true,
	requester_paste_multiplier = 5,
    category = "large-crafting",
    energy_required = 1,
    ingredients = {
      {"nullius-hydro-plant-3", 1},
      {"nullius-pipe-3", 5}
    },
    result = "nullius-mirror-hydro-plant-3"
  },
  {
    type = "recipe",
    name = "nullius-unmirror-hydro-plant-3",
    localised_name = {"recipe-name.nullius-unmirror-hydro-plant-3"},
    icons = {
      {
        icon = "__angelsrefining__/graphics/icons/hydro-plant.png",
        icon_size = 64,
	    icon_mipmaps = 4
      },
      {
        icon = ICONPATH .. "flip2.png",
        icon_size = 64
      }
    },
    enabled = false,
    category = "large-crafting",
    subgroup = "unmirror-1",
    order = "nullius-fc",
    always_show_made_in = true,
    no_productivity = true,
    allow_decomposition = false,
    allow_as_intermediate = false,
    always_show_products = true,
	requester_paste_multiplier = 2.5,
    energy_required = 0.5,
    ingredients = {
      {"nullius-mirror-hydro-plant-3", 1},
      {"nullius-pipe-3", 1}
    },
    result = "nullius-hydro-plant-3"
  },

  {
    type = "item",
    name = "nullius-distillery-1",
    icons = {
      {
        icon = "__base__/graphics/icons/oil-refinery.png",
        icon_size = 64,
        icon_mipmaps = 4,
        tint = {0.85, 0.85, 0.6, 1}
      }
    },
    subgroup = "air-treatment",
    order = "nullius-cb",
    place_result = "nullius-distillery-1",
    stack_size = 20
  },
  {
    type = "item",
    name = "nullius-distillery-2",
    icons = {
      {
        icon = "__base__/graphics/icons/oil-refinery.png",
        icon_size = 64,
        icon_mipmaps = 4,
        tint = {0.7, 0.7, 1, 1}
      }
    },
    subgroup = "air-treatment",
    order = "nullius-ccb",
    place_result = "nullius-distillery-2",
    stack_size = 20
  },
  {
    type = "item",
    name = "nullius-mirror-distillery-2",
    icons = {
      {
        icon = "__base__/graphics/icons/oil-refinery.png",
        icon_size = 64,
        icon_mipmaps = 4,
        tint = {0.7, 0.7, 1, 1}
      },
      {
        icon = ICONPATH .. "flip1.png",
        icon_size = 64
      }
    },
    subgroup = "air-treatment",
    order = "nullius-ccc",
    place_result = "nullius-mirror-distillery-2",
    stack_size = 20
  },
  {
    type = "item",
    name = "nullius-distillery-3",
    icons = {
      {
        icon = "__base__/graphics/icons/oil-refinery.png",
        icon_size = 64,
        icon_mipmaps = 4
      }
    },
    subgroup = "air-treatment",
    order = "nullius-cdb",
    place_result = "nullius-distillery-3",
    stack_size = 20
  },
  {
    type = "item",
    name = "nullius-mirror-distillery-3",
    icons = {
      {
        icon = "__base__/graphics/icons/oil-refinery.png",
        icon_size = 64,
        icon_mipmaps = 4
      },
      {
        icon = ICONPATH .. "flip1.png",
        icon_size = 64
      }
    },
    subgroup = "air-treatment",
    order = "nullius-cdc",
    place_result = "nullius-mirror-distillery-3",
    stack_size = 20
  },
  {
    type = "recipe",
    name = "nullius-distillery-1",
    enabled = false,
    category = "large-crafting",
    always_show_made_in = true,
    energy_required = 4,
    ingredients = {
      {"nullius-small-furnace-1", 1},
      {"storage-tank", 1},
      {"nullius-priority-valve", 2},
      {"nullius-chimney-1", 1},
      {"nullius-filter-1", 2}
    },
    result = "nullius-distillery-1"
  },
  {
    type = "recipe",
    name = "nullius-distillery-2",
    enabled = false,
    category = "huge-crafting",
    always_show_made_in = true,
    energy_required = 10,
    ingredients = {
      {"nullius-distillery-1", 1},
      {"nullius-small-furnace-2", 1},
      {"nullius-small-tank-1", 3},
      {"nullius-heat-pipe-1", 8},
      {"nullius-filter-1", 4}
    },
    result = "nullius-distillery-2"
  },
  {
    type = "recipe",
    name = "nullius-mirror-distillery-2",
    enabled = false,
    category = "large-crafting",
    always_show_made_in = true,
    no_productivity = true,
	requester_paste_multiplier = 5,
    energy_required = 1,
    ingredients = {
      {"nullius-distillery-2", 1},
      {"nullius-pipe-2", 5}
    },
    result = "nullius-mirror-distillery-2"
  },
  {
    type = "recipe",
    name = "nullius-unmirror-distillery-2",
    localised_name = {"recipe-name.nullius-unmirror-distillery-2"},
    icons = {
      {
        icon = "__base__/graphics/icons/oil-refinery.png",
        icon_size = 64,
        icon_mipmaps = 4,
        tint = {0.7, 0.7, 1, 1}
      },
      {
        icon = ICONPATH .. "flip2.png",
        icon_size = 64
      }
    },
    enabled = false,
    category = "large-crafting",
    subgroup = "unmirror-2",
    order = "nullius-cb",
    always_show_made_in = true,
    no_productivity = true,
    allow_decomposition = false,
    allow_as_intermediate = false,
    always_show_products = true,
	requester_paste_multiplier = 2.5,
    energy_required = 0.5,
    ingredients = {
      {"nullius-mirror-distillery-2", 1},
      {"nullius-pipe-2", 1}
    },
    result = "nullius-distillery-2"
  },
  {
    type = "recipe",
    name = "nullius-distillery-3",
    enabled = false,
    always_show_made_in = true,
    category = "huge-crafting",
    energy_required = 40,
    ingredients = {
      {"nullius-distillery-2", 2},
      {"nullius-hydro-plant-2", 1},
      {"nullius-air-filter-2", 1},
      {"nullius-filter-2", 4},
      {"nullius-large-furnace-1", 1},
      {"nullius-thermal-tank-2", 2},
      {"nullius-barrel-pump-1", 1}
    },
    result = "nullius-distillery-3"
  },
  {
    type = "recipe",
    name = "nullius-mirror-distillery-3",
    enabled = false,
    always_show_made_in = true,
    no_productivity = true,
	requester_paste_multiplier = 5,
    category = "large-crafting",
    energy_required = 1,
    ingredients = {
      {"nullius-distillery-3", 1},
      {"nullius-pipe-3", 6}
    },
    result = "nullius-mirror-distillery-3"
  },
  {
    type = "recipe",
    name = "nullius-unmirror-distillery-3",
    localised_name = {"recipe-name.nullius-unmirror-distillery-3"},
    icons = {
      {
        icon = "__base__/graphics/icons/oil-refinery.png",
        icon_size = 64,
        icon_mipmaps = 4
      },
      {
        icon = ICONPATH .. "flip2.png",
        icon_size = 64
      }
    },
    enabled = false,
    always_show_made_in = true,
    no_productivity = true,
    allow_decomposition = false,
    allow_as_intermediate = false,
    always_show_products = true,
	requester_paste_multiplier = 2.5,
    category = "large-crafting",
    subgroup = "unmirror-2",
    order = "nullius-cc",
    energy_required = 0.5,
    ingredients = {
      {"nullius-mirror-distillery-3", 1},
      {"nullius-pipe-3", 1}
    },
    result = "nullius-distillery-3"
  },

  {
    type = "item",
    name = "nullius-flotation-cell-1",
    icons = {{
      icon = "__angelsrefining__/graphics/icons/ore-floatation-cell.png",
      icon_size = 64,
	  icon_mipmaps = 4,
      tint = {0.77, 0.77, 0.60, 1}
    }},
    subgroup = "water-treatment",
    order = "nullius-cb",
    place_result = "nullius-flotation-cell-1",
    stack_size = 20
  },
  {
    type = "item",
    name = "nullius-flotation-cell-2",
    icons = {{
      icon = "__angelsrefining__/graphics/icons/ore-floatation-cell.png",
      icon_size = 64,
	  icon_mipmaps = 4,
      tint = {0.8, 0.8, 1, 1}
    }},
    subgroup = "water-treatment",
    order = "nullius-ccb",
    place_result = "nullius-flotation-cell-2",
    stack_size = 20
  },
  {
    type = "item",
    name = "nullius-mirror-flotation-cell-2",
    icons = {
      {
        icon = "__angelsrefining__/graphics/icons/ore-floatation-cell.png",
        icon_size = 64,
	    icon_mipmaps = 4,
        tint = {0.8, 0.8, 1, 1}
      },
      {
        icon = ICONPATH .. "flip1.png",
        icon_size = 64
      }
    },
    subgroup = "water-treatment",
    order = "nullius-ccc",
    place_result = "nullius-mirror-flotation-cell-2",
    stack_size = 20
  },
  {
    type = "item",
    name = "nullius-flotation-cell-3",
    icons = {{
      icon = "__angelsrefining__/graphics/icons/ore-floatation-cell.png",
      icon_size = 64,
	  icon_mipmaps = 4
    }},
    subgroup = "water-treatment",
    order = "nullius-cdb",
    place_result = "nullius-flotation-cell-3",
    stack_size = 20
  },
  {
    type = "item",
    name = "nullius-mirror-flotation-cell-3",
    icons = {
      {
        icon = "__angelsrefining__/graphics/icons/ore-floatation-cell.png",
        icon_size = 64,
	    icon_mipmaps = 4
      },
      {
        icon = ICONPATH .. "flip1.png",
        icon_size = 64
      }
    },
    subgroup = "water-treatment",
    order = "nullius-cdc",
    place_result = "nullius-mirror-flotation-cell-3",
    stack_size = 20
  },
  {
    type = "recipe",
    name = "nullius-flotation-cell-1",
    enabled = false,
    category = "large-crafting",
    always_show_made_in = true,
    energy_required = 12,
    ingredients = {
      {"nullius-hydro-plant-1", 1},
      {"nullius-crusher-1", 1}
    },
    result = "nullius-flotation-cell-1"
  },
  {
    type = "recipe",
    name = "nullius-flotation-cell-2",
    enabled = false,
    category = "huge-crafting",
    always_show_made_in = true,
    energy_required = 25,
    ingredients = {
      {"nullius-flotation-cell-1", 1},
      {"nullius-chemical-plant-1", 1},
      {"nullius-foundry-1", 1}
    },
    result = "nullius-flotation-cell-2"
  },
  {
    type = "recipe",
    name = "nullius-mirror-flotation-cell-2",
    enabled = false,
    category = "large-crafting",
    always_show_made_in = true,
    no_productivity = true,
	requester_paste_multiplier = 5,
    energy_required = 1,
    ingredients = {
      {"nullius-flotation-cell-2", 1},
      {"nullius-pipe-2", 4}
    },
    result = "nullius-mirror-flotation-cell-2"
  },
  {
    type = "recipe",
    name = "nullius-unmirror-flotation-cell-2",
    localised_name = {"recipe-name.nullius-unmirror-flotation-cell-2"},
    icons = {
      {
        icon = "__angelsrefining__/graphics/icons/ore-floatation-cell.png",
	    icon_size = 64,
	    icon_mipmaps = 4,
        tint = {0.8, 0.8, 1, 1}
      },
      {
        icon = ICONPATH .. "flip2.png",
        icon_size = 64
      }
    },
    enabled = false,
    category = "large-crafting",
    subgroup = "unmirror-2",
    order = "nullius-eb",
    always_show_made_in = true,
    no_productivity = true,
    allow_decomposition = false,
    allow_as_intermediate = false,
    always_show_products = true,
	requester_paste_multiplier = 2.5,
    energy_required = 0.5,
    ingredients = {
      {"nullius-mirror-flotation-cell-2", 1},
      {"nullius-pipe-2", 1}
    },
    result = "nullius-flotation-cell-2"
  },
  {
    type = "recipe",
    name = "nullius-flotation-cell-3",
    enabled = false,
    always_show_made_in = true,
    category = "huge-crafting",
    energy_required = 60,
    ingredients = {
      {"nullius-flotation-cell-2", 1},
      {"nullius-hydro-plant-2", 1},
      {"nullius-crusher-2", 1}
    },
    result = "nullius-flotation-cell-3"
  },
  {
    type = "recipe",
    name = "nullius-mirror-flotation-cell-3",
    enabled = false,
    always_show_made_in = true,
    no_productivity = true,
	requester_paste_multiplier = 5,
    category = "large-crafting",
    energy_required = 1,
    ingredients = {
      {"nullius-flotation-cell-3", 1},
      {"nullius-pipe-3", 4}
    },
    result = "nullius-mirror-flotation-cell-3"
  },
  {
    type = "recipe",
    name = "nullius-unmirror-flotation-cell-3",
    localised_name = {"recipe-name.nullius-unmirror-flotation-cell-3"},
    icons = {
      {
        icon = "__angelsrefining__/graphics/icons/ore-floatation-cell.png",
        icon_size = 64,
	    icon_mipmaps = 4
      },
      {
        icon = ICONPATH .. "flip2.png",
        icon_size = 64
      }
    },
    enabled = false,
    always_show_made_in = true,
    no_productivity = true,
    allow_decomposition = false,
    allow_as_intermediate = false,
    always_show_products = true,
	requester_paste_multiplier = 2.5,
    category = "large-crafting",
    subgroup = "unmirror-2",
    order = "nullius-ec",
    energy_required = 0.5,
    ingredients = {
      {"nullius-mirror-flotation-cell-3", 1},
      {"nullius-pipe-3", 1}
    },
    result = "nullius-flotation-cell-3"
  },

  {
    type = "item",
    name = "nullius-chemical-plant-1",
    icons = {
      {
        icon = "__base__/graphics/icons/chemical-plant.png",
        icon_size = 64,
        icon_mipmaps = 4,
        tint = {0.75, 0.75, 0.6, 1}
      }
    },
    subgroup = "chemical-plant",
    order = "nullius-bb",
    place_result = "nullius-chemical-plant-1",
    stack_size = 50
  },
  {
    type = "item",
    name = "nullius-chemical-plant-2",
    icons = {
      {
        icon = "__base__/graphics/icons/chemical-plant.png",
        icon_size = 64,
        icon_mipmaps = 4,
        tint = {0.8, 0.8, 1, 1}
      }
    },
    subgroup = "chemical-plant",
    order = "nullius-bcb",
    place_result = "nullius-chemical-plant-2",
    stack_size = 50
  },
  {
    type = "item",
    name = "nullius-mirror-chemical-plant-2",
    icons = {
      {
        icon = "__base__/graphics/icons/chemical-plant.png",
        icon_size = 64,
        icon_mipmaps = 4,
        tint = {0.8, 0.8, 1, 1}
      },
      {
        icon = ICONPATH .. "flip1.png",
        icon_size = 64
      }
    },
    subgroup = "chemical-plant",
    order = "nullius-bcc",
    place_result = "nullius-mirror-chemical-plant-2",
    stack_size = 50
  },
  {
    type = "item",
    name = "nullius-chemical-plant-3",
    icons = {
      {
        icon = "__base__/graphics/icons/chemical-plant.png",
        icon_size = 64,
        icon_mipmaps = 4
      }
    },
    subgroup = "chemical-plant",
    order = "nullius-bdb",
    place_result = "nullius-chemical-plant-3",
    stack_size = 50
  },
  {
    type = "item",
    name = "nullius-mirror-chemical-plant-3",
    icons = {
      {
        icon = "__base__/graphics/icons/chemical-plant.png",
        icon_size = 64,
        icon_mipmaps = 4
      },
      {
        icon = ICONPATH .. "flip1.png",
        icon_size = 64
      }
    },
    subgroup = "chemical-plant",
    order = "nullius-bdc",
    place_result = "nullius-mirror-chemical-plant-3",
    stack_size = 50
  },
  {
    type = "recipe",
    name = "nullius-chemical-plant-1",
    enabled = false,
    category = "large-crafting",
    always_show_made_in = true,
    energy_required = 15,
    ingredients = {
      {"nullius-small-assembler-1", 1},
      {"storage-tank", 2},
      {"nullius-filter-1", 2},
      {"nullius-priority-valve", 2},
      {"nullius-glass", 4}
    },
    result = "nullius-chemical-plant-1"
  },
  {
    type = "recipe",
    name = "nullius-chemical-plant-2",
    enabled = false,
    category = "large-crafting",
    always_show_made_in = true,
    energy_required = 30,
    ingredients = {
      {"nullius-chemical-plant-1", 1},
      {"nullius-lab-1", 1},
      {"nullius-distillery-2", 1},
      {"nullius-sensor-1", 4}
    },
    result = "nullius-chemical-plant-2"
  },
  {
    type = "recipe",
    name = "nullius-mirror-chemical-plant-2",
    enabled = false,
    category = "large-crafting",
    always_show_made_in = true,
    no_productivity = true,
	requester_paste_multiplier = 5,
    energy_required = 1,
    ingredients = {
      {"nullius-chemical-plant-2", 1},
      {"nullius-pipe-2", 3}
    },
    result = "nullius-mirror-chemical-plant-2"
  },
  {
    type = "recipe",
    name = "nullius-unmirror-chemical-plant-2",
    localised_name = {"recipe-name.nullius-unmirror-chemical-plant-2"},
    icons = {
      {
        icon = "__base__/graphics/icons/chemical-plant.png",
        icon_size = 64,
        icon_mipmaps = 4,
        tint = {0.8, 0.8, 1, 1}
      },
      {
        icon = ICONPATH .. "flip2.png",
        icon_size = 64
      }
    },
    enabled = false,
    category = "large-crafting",
    subgroup = "unmirror-2",
    order = "nullius-bb",
    always_show_made_in = true,
    no_productivity = true,
    allow_decomposition = false,
    allow_as_intermediate = false,
    always_show_products = true,
	requester_paste_multiplier = 2.5,
    energy_required = 0.5,
    ingredients = {
      {"nullius-mirror-chemical-plant-2", 1},
      {"nullius-pipe-2", 1}
    },
    result = "nullius-chemical-plant-2"
  },
  {
    type = "recipe",
    name = "nullius-chemical-plant-3",
    enabled = false,
    category = "large-crafting",
    always_show_made_in = true,
    energy_required = 80,
    ingredients = {
      {"nullius-chemical-plant-2", 2},
      {"nullius-lab-2", 1},
      {"nullius-flotation-cell-2", 1},
      {"nullius-box-hard-glass", 4},
	  {"nullius-filter-2", 3}
    },
    result = "nullius-chemical-plant-3"
  },
  {
    type = "recipe",
    name = "nullius-mirror-chemical-plant-3",
    enabled = false,
    always_show_made_in = true,
    no_productivity = true,
	requester_paste_multiplier = 5,
    category = "large-crafting",
    energy_required = 1,
    ingredients = {
      {"nullius-chemical-plant-3", 1},
      {"nullius-pipe-3", 4}
    },
    result = "nullius-mirror-chemical-plant-3"
  },
  {
    type = "recipe",
    name = "nullius-unmirror-chemical-plant-3",
    localised_name = {"recipe-name.nullius-unmirror-chemical-plant-3"},
    icons = {
      {
        icon = "__base__/graphics/icons/chemical-plant.png",
        icon_size = 64,
        icon_mipmaps = 4
      },
      {
        icon = ICONPATH .. "flip2.png",
        icon_size = 64
      }
    },
    enabled = false,
    category = "large-crafting",
    subgroup = "unmirror-2",
    order = "nullius-bc",
    always_show_made_in = true,
    no_productivity = true,
    allow_decomposition = false,
    allow_as_intermediate = false,
    always_show_products = true,
	requester_paste_multiplier = 2.5,
    energy_required = 0.5,
    ingredients = {
      {"nullius-mirror-chemical-plant-3", 1},
      {"nullius-pipe-3", 1}
    },
    result = "nullius-chemical-plant-3"
  },

  {
    type = "item",
    name = "nullius-surge-electrolyzer-1",
    icons = {{
      icon = "__angelspetrochem__/graphics/icons/electrolyser.png",
      icon_size = 32,
      tint = {0.8, 0.8, 0.6}
    }},
    subgroup = "electrolyzer",
    order = "nullius-bbc",
    place_result = "nullius-surge-electrolyzer-1",
    stack_size = 20
  },
  {
    type = "item",
    name = "nullius-priority-electrolyzer-1",
    icons = {{
      icon = "__angelspetrochem__/graphics/icons/electrolyser.png",
      icon_size = 32,
      tint = {0.8, 0.68, 0.51}
    }},
    subgroup = "electrolyzer",
    order = "nullius-bbb",
    place_result = "nullius-priority-electrolyzer-1",
    stack_size = 20
  },
  {
    type = "item",
    name = "nullius-surge-electrolyzer-2",
    icons = {{
      icon = "__angelspetrochem__/graphics/icons/electrolyser.png",
      icon_size = 32,
      tint = {0.8, 0.9, 1}
    }},
    subgroup = "electrolyzer",
    order = "nullius-bccb",
    place_result = "nullius-surge-electrolyzer-2",
    stack_size = 20
  },
  {
    type = "item",
    name = "nullius-mirror-surge-electrolyzer-2",
    icons = {
      {
        icon = "__angelspetrochem__/graphics/icons/electrolyser.png",
        icon_size = 32,
        tint = {0.8, 0.9, 1}
      },
      {
        icon = ICONPATH .. "flip1.png",
        icon_size = 64
      }
    },
    subgroup = "electrolyzer",
    order = "nullius-bccc",
    place_result = "nullius-mirror-surge-electrolyzer-2",
    stack_size = 20
  },
  {
    type = "item",
    name = "nullius-priority-electrolyzer-2",
    icons = {{
      icon = "__angelspetrochem__/graphics/icons/electrolyser.png",
      icon_size = 32,
      tint = {0.8, 0.76, 0.85}
    }},
    subgroup = "electrolyzer",
    order = "nullius-bcbb",
    place_result = "nullius-priority-electrolyzer-2",
    stack_size = 20
  },
  {
    type = "item",
    name = "nullius-mirror-priority-electrolyzer-2",
    icons = {
      {
        icon = "__angelspetrochem__/graphics/icons/electrolyser.png",
        icon_size = 32,
        tint = {0.8, 0.76, 0.85}
      },
      {
        icon = ICONPATH .. "flip1.png",
        icon_size = 64
      }
    },
    subgroup = "electrolyzer",
    order = "nullius-bcbc",
    place_result = "nullius-mirror-priority-electrolyzer-2",
    stack_size = 20
  },
  {
    type = "item",
    name = "nullius-surge-electrolyzer-3",
    icons = {{
      icon = "__angelspetrochem__/graphics/icons/electrolyser.png",
      icon_size = 32
    }},
    subgroup = "electrolyzer",
    order = "nullius-beb",
    place_result = "nullius-surge-electrolyzer-3",
    stack_size = 20
  },
  {
    type = "item",
    name = "nullius-mirror-surge-electrolyzer-3",
    icons = {
      {
        icon = "__angelspetrochem__/graphics/icons/electrolyser.png",
        icon_size = 32
      },
      {
        icon = ICONPATH .. "flip1.png",
        icon_size = 64
      }
    },
    subgroup = "electrolyzer",
    order = "nullius-bec",
    place_result = "nullius-mirror-surge-electrolyzer-3",
    stack_size = 20
  },
  {
    type = "item",
    name = "nullius-priority-electrolyzer-3",
    icons = {{
      icon = "__angelspetrochem__/graphics/icons/electrolyser.png",
      icon_size = 32,
      tint = {1, 0.85, 0.85}
    }},
    subgroup = "electrolyzer",
    order = "nullius-bdb",
    place_result = "nullius-priority-electrolyzer-3",
    stack_size = 20
  },
  {
    type = "item",
    name = "nullius-mirror-priority-electrolyzer-3",
    icons = {
      {
        icon = "__angelspetrochem__/graphics/icons/electrolyser.png",
        icon_size = 32,
        tint = {1, 0.85, 0.85}
      },
      {
        icon = ICONPATH .. "flip1.png",
        icon_size = 64
      }
    },
    subgroup = "electrolyzer",
    order = "nullius-bdc",
    place_result = "nullius-mirror-priority-electrolyzer-3",
    stack_size = 20
  },
  {
    type = "recipe",
    name = "nullius-priority-electrolyzer-1",
    category = "large-crafting",
    enabled = false,
    always_show_made_in = true,
    energy_required = 10,
    ingredients = {
      {"small-electric-pole", 8},
      {"storage-tank", 3},
      {"nullius-filter-1", 2},
      {"nullius-priority-valve", 4}
    },
    result = "nullius-priority-electrolyzer-1"
  },
  {
    type = "recipe",
    name = "nullius-surge-electrolyzer-1",
    enabled = false,
    always_show_made_in = true,
    no_productivity = true,
    category = "large-crafting",
    energy_required = 4,
    ingredients = {
      {"nullius-priority-electrolyzer-1", 1},
      {"small-electric-pole", 1}
    },
    result = "nullius-surge-electrolyzer-1"
  },
  {
    type = "recipe",
    name = "nullius-priority-electrolyzer-2",
    enabled = false,
    always_show_made_in = true,
    category = "huge-crafting",
    energy_required = 25,
    ingredients = {
      {"nullius-surge-electrolyzer-1", 1},
      {"nullius-priority-electrolyzer-1", 1},
      {"big-electric-pole", 3},
      {"nullius-small-tank-1", 3},
      {"nullius-small-pump-1", 3}
    },
    result = "nullius-priority-electrolyzer-2"
  },
  {
    type = "recipe",
    name = "nullius-surge-electrolyzer-2",
    enabled = false,
    always_show_made_in = true,
    no_productivity = true,
    category = "huge-crafting",
    energy_required = 8,
    ingredients = {
      {"nullius-priority-electrolyzer-2", 1},
      {"power-switch", 1}
    },
    result = "nullius-surge-electrolyzer-2"
  },
  {
    type = "recipe",
    name = "nullius-mirror-priority-electrolyzer-2",
    enabled = false,
    always_show_made_in = true,
    no_productivity = true,
	requester_paste_multiplier = 5,
    category = "large-crafting",
    energy_required = 1,
    ingredients = {
      {"nullius-priority-electrolyzer-2", 1},
      {"nullius-pipe-2", 4}
    },
    result = "nullius-mirror-priority-electrolyzer-2"
  },
  {
    type = "recipe",
    name = "nullius-unmirror-priority-electrolyzer-2",
    localised_name = {"recipe-name.nullius-unmirror-priority-electrolyzer-2"},
    icons = {
      {
        icon = "__angelspetrochem__/graphics/icons/electrolyser.png",
        icon_size = 32,
        tint = {0.8, 0.76, 0.85}
      },
      {
        icon = ICONPATH .. "flip2.png",
        icon_size = 64
      }
    },
    enabled = false,
    always_show_made_in = true,
    no_productivity = true,
    allow_decomposition = false,
    allow_as_intermediate = false,
    always_show_products = true,
	requester_paste_multiplier = 2.5,
    category = "large-crafting",
    subgroup = "unmirror-1",
    order = "nullius-gbb",
    energy_required = 0.5,
    ingredients = {
      {"nullius-mirror-priority-electrolyzer-2", 1},
      {"nullius-pipe-2", 1}
    },
    result = "nullius-priority-electrolyzer-2"
  },
  {
    type = "recipe",
    name = "nullius-mirror-surge-electrolyzer-2",
    enabled = false,
    always_show_made_in = true,
    no_productivity = true,
	requester_paste_multiplier = 5,
    category = "large-crafting",
    energy_required = 1,
    ingredients = {
      {"nullius-surge-electrolyzer-2", 1},
      {"nullius-pipe-2", 4}
    },
    result = "nullius-mirror-surge-electrolyzer-2"
  },
  {
    type = "recipe",
    name = "nullius-unmirror-surge-electrolyzer-2",
    localised_name = {"recipe-name.nullius-unmirror-surge-electrolyzer-2"},
    icons = {
      {
        icon = "__angelspetrochem__/graphics/icons/electrolyser.png",
        icon_size = 32,
        tint = {0.8, 0.9, 1}
      },
      {
        icon = ICONPATH .. "flip2.png",
        icon_size = 64
      }
    },
    enabled = false,
    always_show_made_in = true,
    no_productivity = true,
    allow_decomposition = false,
    allow_as_intermediate = false,
    always_show_products = true,
	requester_paste_multiplier = 2.5,
    category = "large-crafting",
    subgroup = "unmirror-1",
    order = "nullius-gbc",
    energy_required = 0.5,
    ingredients = {
      {"nullius-mirror-surge-electrolyzer-2", 1},
      {"nullius-pipe-2", 1}
    },
    result = "nullius-surge-electrolyzer-2"
  },
  {
    type = "recipe",
    name = "nullius-priority-electrolyzer-3",
    enabled = false,
    always_show_made_in = true,
    category = "huge-crafting",
    energy_required = 60,
    ingredients = {
      {"nullius-priority-electrolyzer-2", 1},
      {"nullius-surge-electrolyzer-2", 1},
      {"nullius-distillery-2", 1},
      {"nullius-substation-2", 1},
      {"nullius-charger-2", 2},
      {"nullius-efficiency-module-2", 1}
    },
    result = "nullius-priority-electrolyzer-3"
  },
  {
    type = "recipe",
    name = "nullius-mirror-surge-electrolyzer-3",
    enabled = false,
    always_show_made_in = true,
    no_productivity = true,
	requester_paste_multiplier = 5,
    category = "large-crafting",
    energy_required = 1,
    ingredients = {
      {"nullius-surge-electrolyzer-3", 1},
      {"nullius-pipe-3", 4}
    },
    result = "nullius-mirror-surge-electrolyzer-3"
  },
  {
    type = "recipe",
    name = "nullius-unmirror-surge-electrolyzer-3",
    localised_name = {"recipe-name.nullius-unmirror-surge-electrolyzer-3"},
    icons = {
      {
        icon = "__angelspetrochem__/graphics/icons/electrolyser.png",
        icon_size = 32
      },
      {
        icon = ICONPATH .. "flip2.png",
        icon_size = 64
      }
    },
    enabled = false,
    category = "large-crafting",
    subgroup = "unmirror-1",
    order = "nullius-gcc",
    always_show_made_in = true,
    no_productivity = true,
    allow_decomposition = false,
    allow_as_intermediate = false,
    always_show_products = true,
	requester_paste_multiplier = 2.5,
    energy_required = 0.5,
    ingredients = {
      {"nullius-mirror-surge-electrolyzer-3", 1},
      {"nullius-pipe-3", 1}
    },
    result = "nullius-surge-electrolyzer-3"
  },
  {
    type = "recipe",
    name = "nullius-surge-electrolyzer-3",
    enabled = false,
    always_show_made_in = true,
    no_productivity = true,
    category = "huge-crafting",
    energy_required = 15,
    ingredients = {
      {"nullius-priority-electrolyzer-3", 1},
      {"nullius-sensor-1", 1}
    },
    result = "nullius-surge-electrolyzer-3"
  },
  {
    type = "recipe",
    name = "nullius-mirror-priority-electrolyzer-3",
    enabled = false,
    always_show_made_in = true,
    no_productivity = true,
	requester_paste_multiplier = 5,
    category = "large-crafting",
    energy_required = 1,
    ingredients = {
      {"nullius-priority-electrolyzer-3", 1},
      {"nullius-pipe-3", 4}
    },
    result = "nullius-mirror-priority-electrolyzer-3"
  },
  {
    type = "recipe",
    name = "nullius-unmirror-priority-electrolyzer-3",
    localised_name = {"recipe-name.nullius-unmirror-priority-electrolyzer-3"},
    icons = {
      {
        icon = "__angelspetrochem__/graphics/icons/electrolyser.png",
        icon_size = 32,
        tint = {1, 0.85, 0.85}
      },
      {
        icon = ICONPATH .. "flip2.png",
        icon_size = 64
      }
    },
    enabled = false,
    category = "large-crafting",
    subgroup = "unmirror-1",
    order = "nullius-gcb",
    always_show_made_in = true,
    no_productivity = true,
    allow_decomposition = false,
    allow_as_intermediate = false,
    always_show_products = true,
	requester_paste_multiplier = 2.5,
    energy_required = 0.5,
    ingredients = {
      {"nullius-mirror-priority-electrolyzer-3", 1},
      {"nullius-pipe-3", 1}
    },
    result = "nullius-priority-electrolyzer-3"
  }
})

data:extend({
  {
    type = "recipe",
    name = "nullius-electrolyzer-reprioritization-1",
    localised_name = {"recipe-name.nullius-reprioritization",
        {"entity-name.nullius-surge-electrolyzer-1"}},
    icons = {
      data.raw.item["nullius-surge-electrolyzer-1"].icons[1],
      {
        icon = ICONPATH .. "up.png",
        icon_size = 64,
        scale = 0.3,
        shift = {8, -6}
      }
    },
    enabled = false,
    always_show_made_in = true,
    no_productivity = true,
    allow_decomposition = false,
    allow_as_intermediate = false,
    always_show_products = true,
	requester_paste_multiplier = 5,
    category = "large-crafting",
    subgroup = "prioritization",
    order = "nullius-bb",
    energy_required = 1,
    ingredients = {
      {"nullius-surge-electrolyzer-1", 1},
      {"copper-cable", 1}
    },
    result = "nullius-priority-electrolyzer-1"
  },
  {
    type = "recipe",
    name = "nullius-electrolyzer-reprioritization-2",
    localised_name = {"recipe-name.nullius-reprioritization",
        {"entity-name.nullius-surge-electrolyzer-2"}},
    icons = {
      data.raw.item["nullius-surge-electrolyzer-2"].icons[1],
      {
        icon = ICONPATH .. "up.png",
        icon_size = 64,
        scale = 0.3,
        shift = {8, -6}
      }
    },
    enabled = false,
    always_show_made_in = true,
    no_productivity = true,
    allow_decomposition = false,
    allow_as_intermediate = false,
    always_show_products = true,
	requester_paste_multiplier = 5,
    category = "huge-crafting",
    subgroup = "prioritization",
    order = "nullius-bc",
    energy_required = 1,
    ingredients = {
      {"nullius-surge-electrolyzer-2", 1},
      {"copper-cable", 1}
    },
    result = "nullius-priority-electrolyzer-2"
  },
  {
    type = "recipe",
    name = "nullius-electrolyzer-reprioritization-3",
    localised_name = {"recipe-name.nullius-reprioritization",
        {"entity-name.nullius-surge-electrolyzer-3"}},
    icons = {
      data.raw.item["nullius-surge-electrolyzer-3"].icons[1],
      {
        icon = ICONPATH .. "up.png",
        icon_size = 64,
        scale = 0.3,
        shift = {8, -6}
      }
    },
    enabled = false,
    always_show_made_in = true,
    no_productivity = true,
    allow_decomposition = false,
    allow_as_intermediate = false,
    always_show_products = true,
	requester_paste_multiplier = 5,
    category = "huge-crafting",
    subgroup = "prioritization",
    order = "nullius-bd",
    energy_required = 1,
    ingredients = {
      {"nullius-surge-electrolyzer-3", 1},
      {"copper-cable", 1}
    },
    result = "nullius-priority-electrolyzer-3"
  },

  {
    type = "recipe",
    name = "nullius-medium-tank-1",
    enabled = false,
    category = "large-crafting",
    always_show_made_in = true,
    energy_required = 6,
    ingredients = {
      {"nullius-iron-sheet", 2},
      {"nullius-iron-rod", 1},
      {"pipe", 3}
    },
    result = "storage-tank"
  },
  {
    type = "recipe",
    name = "nullius-boxed-medium-tank-1",
    enabled = false,
    category = "huge-assembly",
    subgroup = "boxed-tank",
    always_show_made_in = true,
    energy_required = 30,
    ingredients = {
      {"nullius-box-iron-sheet", 2},
      {"nullius-box-iron-rod", 1},
      {"nullius-box-pipe-1", 3}
    },
    result = "nullius-box-medium-tank-1"
  },

  {
    type = "item",
    name = "nullius-medium-tank-2",
    icons = {{
      icon = ENTICONPATH .. "tank2.png",
      icon_size = 64,
      tint = {0.85, 0.9, 1}
    }},
    subgroup = "tanks",
    order = "nullius-bcc",
    place_result = "nullius-medium-tank-2",
    stack_size = 50
  },
  {
    type = "recipe",
    name = "nullius-medium-tank-2",
    enabled = false,
    category = "large-crafting",
    always_show_made_in = true,
    energy_required = 12,
    ingredients = {
      {"storage-tank", 1},
      {"nullius-steel-sheet", 5},
      {"nullius-steel-rod", 2},
      {"nullius-plastic", 3},
      {"nullius-pipe-2", 6}
    },
    result = "nullius-medium-tank-2"
  },
  {
    type = "recipe",
    name = "nullius-boxed-medium-tank-2",
    enabled = false,
    category = "huge-assembly",
    subgroup = "boxed-tank",
    always_show_made_in = true,
    energy_required = 60,
    ingredients = {
      {"nullius-box-medium-tank-1", 1},
      {"nullius-box-steel-sheet", 5},
      {"nullius-box-steel-rod", 2},
      {"nullius-box-plastic", 3},
      {"nullius-box-pipe-2", 6}
    },
    result = "nullius-box-medium-tank-2"
  },

  {
    type = "item",
    name = "nullius-medium-tank-3",
    icon = ENTICONPATH .. "tank2.png",
    icon_size = 64,
    subgroup = "tanks",
    order = "nullius-bcd",
    place_result = "nullius-medium-tank-3",
    stack_size = 50
  },
  {
    type = "recipe",
    name = "nullius-medium-tank-3",
    enabled = false,
    category = "large-crafting",
    always_show_made_in = true,
    energy_required = 25,
    ingredients = {
      {type="item", name="nullius-medium-tank-2", amount=1},
      {type="item", name="nullius-fiberglass", amount=4},
      {type="item", name="nullius-pipe-3", amount=3},
      {type="fluid", name="nullius-epoxy", amount=2, fluidbox_index=1}
    },
    result = "nullius-medium-tank-3"
  },
  {
    type = "recipe",
    name = "nullius-boxed-medium-tank-3",
    enabled = false,
    category = "huge-assembly",
    subgroup = "boxed-tank",
    always_show_made_in = true,
    energy_required = 125,
    ingredients = {
      {type="item", name="nullius-box-medium-tank-2", amount=1},
      {type="item", name="nullius-box-fiberglass", amount=8},
      {type="item", name="nullius-box-pipe-3", amount=6},
      {type="fluid", name="nullius-epoxy", amount=10, fluidbox_index=1}
    },
    result = "nullius-box-medium-tank-3"
  },

  {
    type = "item",
    name = "nullius-small-tank-1",
    icons = {
      {
        icon = "__angelspetrochem__/graphics/icons/petrochem-inline-tank.png",
        icon_size = 64,
	    icon_mipmaps = 4,
        tint = {0.8, 0.8, 0.4}
      }
    },
    subgroup = "tanks",
    order = "nullius-bbb",
    place_result = "nullius-small-tank-1",
    stack_size = 100
  },
  {
    type = "recipe",
    name = "nullius-small-tank-1",
    enabled = false,
    always_show_made_in = true,
    show_amount_in_title = false,
    always_show_products = true,
    category = "medium-crafting",
    energy_required = 5,
    ingredients = {
      {"nullius-medium-tank-2", 1}
    },
    result = "nullius-small-tank-1",
    result_count = 2
  },
  {
    type = "recipe",
    name = "nullius-boxed-small-tank-1",
    enabled = false,
    always_show_made_in = true,
    show_amount_in_title = false,
    always_show_products = true,
    category = "large-assembly",
    subgroup = "boxed-tank",
    energy_required = 25,
    ingredients = {
      {"nullius-box-medium-tank-2", 1}
    },
    result = "nullius-box-small-tank-1",
    result_count = 2
  },

  {
    type = "item",
    name = "nullius-small-tank-2",
    icons = {
      {
        icon = "__angelspetrochem__/graphics/icons/petrochem-inline-tank.png",
        icon_size = 64,
	    icon_mipmaps = 4
      }
    },
    subgroup = "tanks",
    order = "nullius-bbc",
    place_result = "nullius-small-tank-2",
    stack_size = 100
  },
  {
    type = "recipe",
    name = "nullius-small-tank-2",
    enabled = false,
    always_show_made_in = true,
    show_amount_in_title = false,
    always_show_products = true,
    category = "medium-crafting",
    energy_required = 8,
    ingredients = {
      {"nullius-small-tank-1", 2},
      {"nullius-medium-tank-3", 1}
    },
    result = "nullius-small-tank-2",
    result_count = 3
  },
  {
    type = "recipe",
    name = "nullius-boxed-small-tank-2",
    enabled = false,
    always_show_made_in = true,
    show_amount_in_title = false,
    always_show_products = true,
    category = "large-assembly",
    subgroup = "boxed-tank",
    energy_required = 40,
    ingredients = {
      {"nullius-box-small-tank-1", 2},
      {"nullius-box-medium-tank-3", 1}
    },
    result = "nullius-box-small-tank-2",
    result_count = 3
  },

  {
    type = "item",
    name = "nullius-large-tank-1",
    icons = {{
      icon = "__angelspetrochem__/graphics/icons/petrochem-gas-tank.png",
      icon_size = 64,
	  icon_mipmaps = 4,
      tint = {0.75, 0.75, 0.6}
    }},
    subgroup = "tanks",
    order = "nullius-bdb",
    place_result = "nullius-large-tank-1",
    stack_size = 20
  },
  {
    type = "recipe",
    name = "nullius-large-tank-1",
    enabled = false,
    always_show_made_in = true,
    category = "large-crafting",
    energy_required = 12,
    ingredients = {
      {type="item", name="nullius-medium-tank-2", amount=4},
      {type="item", name="nullius-steel-cable", amount=8},
      {type="item", name="concrete", amount=20},
      {type="item", name="nullius-relief-valve", amount=2}
    },
    result = "nullius-large-tank-1"
  },

  {
    type = "item",
    name = "nullius-large-tank-2",
    icons = {{
      icon = "__angelspetrochem__/graphics/icons/petrochem-gas-tank.png",
      icon_size = 64,
	  icon_mipmaps = 4,
      tint = {0.85, 0.85, 0.95}
    }},
    subgroup = "tanks",
    order = "nullius-bdc",
    place_result = "nullius-large-tank-2",
    stack_size = 20
  },
  {
    type = "recipe",
    name = "nullius-large-tank-2",
    enabled = false,
    category = "large-crafting",
    always_show_made_in = true,
    energy_required = 25,
    ingredients = {
      {type="item", name="nullius-medium-tank-3", amount=3},
      {type="item", name="nullius-large-tank-1", amount=1},
      {type="item", name="nullius-steel-beam", amount=12},
      {type="item", name="refined-concrete", amount=20}
    },
    result = "nullius-large-tank-2"
  },

  {
    type = "item",
    name = "nullius-large-tank-3",
    icons = {{
      icon = "__angelspetrochem__/graphics/icons/petrochem-gas-tank.png",
      icon_size = 64,
	  icon_mipmaps = 4
    }},
    subgroup = "tanks",
    order = "nullius-bdd",
    place_result = "nullius-large-tank-3",
    stack_size = 20
  },
  {
    type = "recipe",
    name = "nullius-large-tank-3",
    enabled = false,
    category = "large-crafting",
    always_show_made_in = true,
    energy_required = 60,
    ingredients = {
      {type="item", name="nullius-large-tank-2", amount=2},
      {type="item", name="nullius-box-wall", amount=3},
      {type="item", name="nullius-box-underground-pipe-4", amount=2}
    },
    result = "nullius-large-tank-3"
  },

  {
    type = "item",
    name = "nullius-well-1",
    icons = {{
      icon = ENTICONPATH .. "well1.png",
      icon_size = 64
    }},
    subgroup = "water-intake",
    order = "nullius-cb",
    place_result = "nullius-well-1",
    stack_size = 50
  },
  {
    type = "item",
    name = "nullius-well-2",
    icons = {{
      icon = ENTICONPATH .. "well2.png",
      icon_size = 64
    }},
    subgroup = "water-intake",
    order = "nullius-cc",
    place_result = "nullius-well-2",
    stack_size = 50
  },
  {
    type = "recipe",
    name = "nullius-well-1",
    enabled = false,
    category = "medium-crafting",
    always_show_made_in = true,
    energy_required = 10,
    ingredients = {
      {"nullius-underground-pipe-2", 4},
      {"nullius-filter-1", 3},
      {"nullius-pump-2", 1},
      {"nullius-top-up-valve", 1},
      {"stone-brick", 12}
    },
    result = "nullius-well-1"
  },
  {
    type = "recipe",
    name = "nullius-well-2",
    enabled = false,
    always_show_made_in = true,
    category = "medium-crafting",
    energy_required = 30,
    ingredients = {
      {"nullius-well-1", 2},
      {"nullius-box-underground-pipe-4", 1},
      {"nullius-filter-2", 2},
      {"pump", 2},
      {"nullius-mortar", 8}
    },
    result = "nullius-well-2"
  },

  {
    type = "item",
    name = "nullius-extractor-1",
    icons = {{
      icon = ENTICONPATH .. "well-extractor1.png",
      icon_size = 64,
      icon_mipmaps = 4
    }},
    subgroup = "water-intake",
    order = "nullius-db",
    place_result = "nullius-extractor-1",
    stack_size = 20
  },
  {
    type = "item",
    name = "nullius-extractor-2",
    icons = {{
      icon = ENTICONPATH .. "well-extractor2.png",
      icon_size = 64,
      icon_mipmaps = 4
    }},
    subgroup = "water-intake",
    order = "nullius-dc",
    place_result = "nullius-extractor-2",
    stack_size = 20
  },
  {
    type = "recipe",
    name = "nullius-extractor-1",
    enabled = false,
    category = "large-crafting",
    always_show_made_in = true,
    energy_required = 30,
    ingredients = {
      {"nullius-well-1", 3},
      {"nullius-steel-sheet", 8},
      {"nullius-refractory-brick", 40},
      {"nullius-relief-valve", 1}
    },
    result = "nullius-extractor-1"
  },
  {
    type = "recipe",
    name = "nullius-extractor-2",
    enabled = false,
    always_show_made_in = true,
    category = "huge-crafting",
    energy_required = 75,
    ingredients = {
      {"nullius-extractor-1", 2},
      {"nullius-well-2", 2},
      {"nullius-box-heat-pipe-2", 3},
      {"nullius-barrel-pump-2", 1},
      {"nullius-medium-miner-3", 1},
      {"nullius-sensor-2", 1}
    },
    result = "nullius-extractor-2"
  },

  {
    type = "item",
    name = "nullius-surge-compressor-1",
    icons = {{
      icon = "__angelsrefining__/graphics/icons/thermal-extractor.png",
      icon_size = 32,
      tint = {0.6, 0.6, 0.4}
    }},
    subgroup = "compressor",
    order = "nullius-cbc",
    place_result = "nullius-surge-compressor-1",
    stack_size = 20
  },
  {
    type = "item",
    name = "nullius-priority-compressor-1",
    icons = {{
      icon = "__angelsrefining__/graphics/icons/thermal-extractor.png",
      icon_size = 32,
      tint = {0.6, 0.51, 0.34}
    }},
    subgroup = "compressor",
    order = "nullius-cbb",
    place_result = "nullius-priority-compressor-1",
    stack_size = 20
  },
  {
    type = "recipe",
    name = "nullius-priority-compressor-1",
    enabled = false,
    always_show_made_in = true,
    category = "large-crafting",
    energy_required = 10,
    ingredients = {
      {"nullius-pump-2", 4},
      {"nullius-medium-tank-2", 2},
      {"nullius-top-up-valve", 2},
      {"red-wire", 1}
    },
    result = "nullius-priority-compressor-1"
  },
  {
    type = "recipe",
    name = "nullius-surge-compressor-1",
    enabled = false,
    always_show_made_in = true,
    no_productivity = true,
    category = "large-crafting",
    energy_required = 5,
    ingredients = {
      {"nullius-priority-compressor-1", 1},
      {"power-switch", 1}
    },
    result = "nullius-surge-compressor-1"
  },

  {
    type = "item",
    name = "nullius-surge-compressor-2",
    icons = {{
      icon = "__angelsrefining__/graphics/icons/thermal-extractor.png",
      icon_size = 32,
      tint = {0.65, 0.65, 0.9}
    }},
    subgroup = "compressor",
    order = "nullius-ccc",
    place_result = "nullius-surge-compressor-2",
    stack_size = 20
  },
  {
    type = "item",
    name = "nullius-priority-compressor-2",
    icons = {{
      icon = "__angelsrefining__/graphics/icons/thermal-extractor.png",
      icon_size = 32,
      tint = {0.65, 0.55, 0.76}
    }},
    subgroup = "compressor",
    order = "nullius-ccb",
    place_result = "nullius-priority-compressor-2",
    stack_size = 20
  },
  {
    type = "recipe",
    name = "nullius-priority-compressor-2",
    enabled = false,
    always_show_made_in = true,
    category = "huge-crafting",
    energy_required = 25,
    ingredients = {
      {"nullius-priority-compressor-1", 1},
      {"nullius-surge-compressor-1", 1},
      {"nullius-air-filter-2", 1},
      {"nullius-large-tank-2", 1},
      {"nullius-relief-valve", 5}
    },
    result = "nullius-priority-compressor-2"
  },
  {
    type = "recipe",
    name = "nullius-surge-compressor-2",
    enabled = false,
    always_show_made_in = true,
    no_productivity = true,
    category = "huge-crafting",
    energy_required = 10,
    ingredients = {
      {"nullius-priority-compressor-2", 1},
      {"nullius-sensor-1", 1}
    },
    result = "nullius-surge-compressor-2"
  },

  {
    type = "item",
    name = "nullius-surge-compressor-3",
    icons = {{
      icon = "__angelsrefining__/graphics/icons/thermal-extractor.png",
      icon_size = 32
    }},
    subgroup = "compressor",
    order = "nullius-cdc",
    place_result = "nullius-surge-compressor-3",
    stack_size = 20
  },
  {
    type = "item",
    name = "nullius-priority-compressor-3",
    icons = {{
      icon = "__angelsrefining__/graphics/icons/thermal-extractor.png",
      icon_size = 32,
      tint = {1, 0.85, 0.85}
    }},
    subgroup = "compressor",
    order = "nullius-cdb",
    place_result = "nullius-priority-compressor-3",
    stack_size = 20
  },
  {
    type = "recipe",
    name = "nullius-priority-compressor-3",
    enabled = false,
    always_show_made_in = true,
    category = "huge-crafting",
    energy_required = 45,
    ingredients = {
      {"nullius-surge-compressor-2", 1},
      {"nullius-priority-compressor-2", 1},
      {"nullius-air-filter-3", 1},
      {"nullius-large-tank-3", 1},
      {"nullius-standard-turbine-3", 1},
      {"nullius-box-pump-3", 1},
      {"nullius-pylon-2", 1}
    },
    result = "nullius-priority-compressor-3"
  },
  {
    type = "recipe",
    name = "nullius-surge-compressor-3",
    enabled = false,
    always_show_made_in = true,
    no_productivity = true,
    category = "huge-crafting",
    energy_required = 12,
    ingredients = {
      {"nullius-priority-compressor-3", 1},
      {"nullius-sensor-2", 1}
    },
    result = "nullius-surge-compressor-3"
  }
})

data:extend({
  {
    type = "recipe",
    name = "nullius-compressor-reprioritization-1",
    localised_name = {"recipe-name.nullius-reprioritization",
        {"entity-name.nullius-surge-compressor-1"}},
    icons = {
      data.raw.item["nullius-surge-compressor-1"].icons[1],
      {
        icon = ICONPATH .. "up.png",
        icon_size = 64,
        scale = 0.3,
        shift = {8, -6}
      }
    },
    enabled = false,
    always_show_made_in = true,
    no_productivity = true,
    allow_decomposition = false,
    allow_as_intermediate = false,
    always_show_products = true,
	requester_paste_multiplier = 5,
    category = "large-crafting",
    subgroup = "prioritization",
    order = "nullius-cb",
    energy_required = 1,
    ingredients = {
      {"nullius-surge-compressor-1", 1},
      {"copper-cable", 1}
    },
    result = "nullius-priority-compressor-1"
  },
  {
    type = "recipe",
    name = "nullius-compressor-reprioritization-2",
    localised_name = {"recipe-name.nullius-reprioritization",
        {"entity-name.nullius-surge-compressor-2"}},
    icons = {
      data.raw.item["nullius-surge-compressor-2"].icons[1],
      {
        icon = ICONPATH .. "up.png",
        icon_size = 64,
        scale = 0.3,
        shift = {8, -6}
      }
    },
    enabled = false,
    always_show_made_in = true,
    no_productivity = true,
    allow_decomposition = false,
    allow_as_intermediate = false,
    always_show_products = true,
	requester_paste_multiplier = 5,
    category = "huge-crafting",
    subgroup = "prioritization",
    order = "nullius-cc",
    energy_required = 1,
    ingredients = {
      {"nullius-surge-compressor-2", 1},
      {"copper-cable", 1}
    },
    result = "nullius-priority-compressor-2"
  },
  {
    type = "recipe",
    name = "nullius-compressor-reprioritization-3",
    localised_name = {"recipe-name.nullius-reprioritization",
        {"entity-name.nullius-surge-compressor-3"}},
    icons = {
      data.raw.item["nullius-surge-compressor-3"].icons[1],
      {
        icon = ICONPATH .. "up.png",
        icon_size = 64,
        scale = 0.3,
        shift = {8, -6}
      }
    },
    enabled = false,
    always_show_made_in = true,
    no_productivity = true,
    allow_decomposition = false,
    allow_as_intermediate = false,
    always_show_products = true,
	requester_paste_multiplier = 5,
    category = "huge-crafting",
    subgroup = "prioritization",
    order = "nullius-cd",
    energy_required = 1,
    ingredients = {
      {"nullius-surge-compressor-3", 1},
      {"copper-cable", 1}
    },
    result = "nullius-priority-compressor-3"
  },

  {
    type = "item",
    name = "nullius-geothermal-plant-1",
    order = "nullius-bb",
    icons = {{
      icon = "__angelssmelting__/graphics/icons/chemical-furnace.png",
      icon_size = 64,
      tint = {0.65, 0.8, 1}
    }},
    subgroup = "geothermal",
    place_result = "nullius-geothermal-build-1",
    stack_size = 10
  },
  {
    type = "recipe",
    name = "nullius-geothermal-plant-1",
    enabled = false,
    category = "huge-crafting",
    always_show_made_in = true,
    energy_required = 10,
    ingredients = {
      {"nullius-extractor-1", 3},
      {"nullius-heat-pipe-1", 30},
      {"nullius-aluminum-plate", 20},
      {"nullius-aluminum-rod", 10}
    },
    result = "nullius-geothermal-plant-1"
  },

  {
    type = "item",
    name = "nullius-geothermal-plant-2",
    order = "nullius-bc",
    icons = {{
      icon = "__angelssmelting__/graphics/icons/chemical-furnace.png",
      icon_size = 64,
      tint = {0.85, 0.8, 1}
    }},
    subgroup = "geothermal",
    place_result = "nullius-geothermal-build-2",
    stack_size = 10
  },
  {
    type = "recipe",
    name = "nullius-geothermal-plant-2",
    enabled = false,
    category = "huge-crafting",
    always_show_made_in = true,
    energy_required = 30,
    ingredients = {
      {"nullius-geothermal-plant-1", 2},
      {"nullius-thermal-tank-2", 2},
      {"nullius-heat-pipe-2", 25},
      {"stone-wall", 20},
      {"gate", 5}
    },
    result = "nullius-geothermal-plant-2"
  },

  {
    type = "item",
    name = "nullius-geothermal-plant-3",
    icons = {{
      icon = "__angelssmelting__/graphics/icons/chemical-furnace.png",
      icon_size = 64
    }},
    subgroup = "geothermal",
    order = "nullius-bd",
    place_result = "nullius-geothermal-build-3",
    stack_size = 10
  },
  {
    type = "recipe",
    name = "nullius-geothermal-plant-3",
    enabled = false,
    always_show_made_in = true,
    category = "huge-crafting",
    energy_required = 80,
    ingredients = {
      {"nullius-geothermal-plant-2", 2},
      {"nullius-extractor-2", 3},
      {"nullius-thermal-tank-3", 3},
      {"nullius-stirling-engine-3", 2},
      {"nullius-large-miner-2", 1},
      {"nullius-efficiency-module-2", 2}
    },
    result = "nullius-geothermal-plant-3"
  },

  {
    type = "item",
    name = "nullius-heat-pipe-1",
    order = "nullius-bb",
    icons = {{
      icon = "__base__/graphics/icons/heat-pipe.png",
      icon_size = 64,
      icon_mipmaps = 4,
      tint = {0.4, 0.6, 0.9}
    }},
    subgroup = "heat-energy",
    place_result = "nullius-heat-pipe-1",
    stack_size = 100
  },
  {
    type = "recipe",
    name = "nullius-heat-pipe-1",
    enabled = false,
    show_amount_in_title = false,
    always_show_products = true,
    category = "small-fluid-assembly",
    energy_required = 1,
    ingredients = {
      {type="item", name="nullius-pipe-2", amount=2},
      {type="item", name="nullius-aluminum-sheet", amount=2},
      {type="fluid", name="nullius-water", amount=100, fluidbox_index=1}
    },
    result = "nullius-heat-pipe-1"
  },
  {
    type = "recipe",
    name = "nullius-boxed-heat-pipe-1",
    enabled = false,
    show_amount_in_title = false,
    always_show_products = true,
    category = "large-fluid-assembly",
    subgroup = "boxed-heat-energy",
    energy_required = 5,
    ingredients = {
      {type="item", name="nullius-box-pipe-2", amount=2},
      {type="item", name="nullius-box-aluminum-sheet", amount=2},
      {type="fluid", name="nullius-water", amount=500, fluidbox_index=1}
    },
    result = "nullius-box-heat-pipe-1"
  },

  {
    type = "item",
    name = "nullius-heat-pipe-2",
    order = "nullius-bc",
    icons = {{
      icon = "__base__/graphics/icons/heat-pipe.png",
      icon_size = 64,
      icon_mipmaps = 4,
      tint = {0.7, 0.8, 0.95}
    }},
    subgroup = "heat-energy",
    place_result = "nullius-heat-pipe-2",
    stack_size = 100
  },
  {
    type = "recipe",
    name = "nullius-heat-pipe-2",
	order = "nullius-bcb",
    enabled = false,
    show_amount_in_title = false,
    always_show_products = true,
    category = "machine-casting",
    energy_required = 4,
    ingredients = {
      {type="item", name="nullius-heat-pipe-1", amount=1},
      {type="item", name="nullius-pipe-3", amount=2},
      {type="item", name="nullius-ceramic-powder", amount=2},
      {type="item", name="nullius-insulation", amount=1},
      {type="item", name="nullius-eutectic-salt", amount=4}
    },
    result = "nullius-heat-pipe-2"
  },
  {
    type = "recipe",
    name = "nullius-boxed-heat-pipe-2",
	order = "nullius-ccb",
    enabled = false,
    show_amount_in_title = false,
    always_show_products = true,
    category = "machine-casting",
    subgroup = "boxed-heat-energy",
    energy_required = 20,
    ingredients = {
      {type="item", name="nullius-box-heat-pipe-1", amount=1},
      {type="item", name="nullius-box-pipe-3", amount=2},
      {type="item", name="nullius-box-ceramic-powder", amount=2},
      {type="item", name="nullius-box-insulation", amount=1},
      {type="item", name="nullius-box-eutectic-salt", amount=4}
    },
    result = "nullius-box-heat-pipe-2"
  },
  {
    type = "recipe",
    name = "nullius-copper-heat-pipe",
	localised_name = {"recipe-name.nullius-copper",
	    {"entity-name.nullius-heat-pipe-2"}},
    icons = {{
      icon = "__nullius__/graphics/icons/copper-heat-pipe.png",
	  icon_size = 64
    }},
	order = "nullius-bcc",
    enabled = false,
	show_amount_in_title = false,
	always_show_products = true,
    category = "machine-casting",
    energy_required = 3,
    ingredients = {
      {type="item", name="nullius-copper-sheet", amount=1},
      {type="item", name="nullius-pipe-3", amount=1},
      {type="item", name="nullius-ceramic-powder", amount=1},
      {type="item", name="nullius-insulation", amount=1},
      {type="item", name="nullius-eutectic-salt", amount=3}
    },
    result = "nullius-heat-pipe-2"
  },
  {
    type = "recipe",
    name = "nullius-boxed-copper-heat-pipe",
	localised_name = {"recipe-name.nullius-copper",
	    {"item-name.nullius-box", {"entity-name.nullius-heat-pipe-2"}}},
    icons = {
      {
	    icon = "__nullius__/graphics/icons/crate.png",
        icon_size = 64
	  },
      {
		icon = "__nullius__/graphics/icons/copper-heat-pipe.png",
		icon_size = 64,
		scale = 0.45
      }
    },
	subgroup = "boxed-heat-energy",
	order = "nullius-ccc",
    enabled = false,
	show_amount_in_title = false,
	always_show_products = true,
    category = "machine-casting",
    energy_required = 15,
    ingredients = {
      {type="item", name="nullius-box-copper-sheet", amount=1},
      {type="item", name="nullius-box-pipe-3", amount=1},
      {type="item", name="nullius-box-ceramic-powder", amount=1},
      {type="item", name="nullius-box-insulation", amount=1},
      {type="item", name="nullius-box-eutectic-salt", amount=3}
    },
    result = "nullius-box-heat-pipe-2"
  },

  {
    type = "item",
    name = "nullius-heat-pipe-3",
    order = "nullius-bd",
    icons = {{
      icon = "__base__/graphics/icons/heat-pipe.png",
      icon_size = 64,
      icon_mipmaps = 4
    }},
    subgroup = "heat-energy",
    place_result = "nullius-heat-pipe-3",
    stack_size = 100
  },
  {
    type = "recipe",
    name = "nullius-heat-pipe-3",
    enabled = false,
    show_amount_in_title = false,
    always_show_products = true,
    category = "machine-casting",
    energy_required = 30,
    ingredients = {
      {type="item", name="nullius-heat-pipe-2", amount=5},
      {type="item", name="nullius-pipe-4", amount=4},
      {type="item", name="nullius-small-pump-2", amount=1},
      {type="fluid", name="nullius-compressed-helium", amount=40}
    },
    result = "nullius-heat-pipe-3",
    result_count = 4
  },
  {
    type = "recipe",
    name = "nullius-boxed-heat-pipe-3",
    enabled = false,
    show_amount_in_title = false,
    always_show_products = true,
    category = "machine-casting",
    subgroup = "boxed-heat-energy",
    energy_required = 150,
    ingredients = {
      {type="item", name="nullius-box-heat-pipe-2", amount=5},
      {type="item", name="nullius-box-pipe-4", amount=4},
      {type="item", name="nullius-box-small-pump-2", amount=1},
      {type="fluid", name="nullius-compressed-helium", amount=200}
    },
    result = "nullius-box-heat-pipe-3",
    result_count = 4
  },

  {
    type = "item",
    name = "nullius-thermal-tank-1",
    icons = {{
      icon = ENTICONPATH .. "thermaltank1.png",
      icon_size = 64
    }},
    subgroup = "heat-energy",
    order = "nullius-cb",
    place_result = "nullius-thermal-tank-build-1",
    stack_size = 50
  },
  {
    type = "item",
    name = "nullius-thermal-tank-2",
    icons = {{
      icon = ENTICONPATH .. "thermaltank2.png",
      icon_size = 64
    }},
    subgroup = "heat-energy",
    order = "nullius-cc",
    place_result = "nullius-thermal-tank-build-2",
    stack_size = 50
  },
  {
    type = "item",
    name = "nullius-thermal-tank-3",
    icons = {{
      icon = ENTICONPATH .. "thermaltank3.png",
      icon_size = 64
    }},
    subgroup = "heat-energy",
    order = "nullius-cd",
    place_result = "nullius-thermal-tank-build-3",
    stack_size = 50
  },
  {
    type = "recipe",
    name = "nullius-thermal-tank-1",
    enabled = false,
    category = "large-fluid-assembly",
    energy_required = 4,
    ingredients = {
      {type="item", name="nullius-heat-pipe-1", amount=4},
      {type="item", name="nullius-medium-tank-2", amount=1},
      {type="item", name="nullius-small-pump-1", amount=1},
	  {type="fluid", name="nullius-water", amount=1000}
    },
    result = "nullius-thermal-tank-1"
  },
  {
    type = "recipe",
    name = "nullius-thermal-tank-2",
    enabled = false,
	always_show_made_in = true,
    category = "large-crafting",
    energy_required = 10,
    ingredients = {
      {type="item", name="nullius-heat-pipe-2", amount=4},
      {type="item", name="nullius-box-eutectic-salt", amount=3},
      {type="item", name="nullius-transformer", amount=1},
      {type="item", name="nullius-insulation", amount=8},
      {type="item", name="nullius-crucible", amount=4},
      {type="item", name="nullius-thermal-tank-1", amount=1}
    },
    result = "nullius-thermal-tank-2"
  },
  {
    type = "recipe",
    name = "nullius-thermal-tank-3",
    enabled = false,
	always_show_made_in = true,
    category = "large-crafting",
    energy_required = 25,
    ingredients = {
      {type="item", name="nullius-thermal-tank-2", amount=3},
      {type="item", name="nullius-box-heat-pipe-3", amount=2},
      {type="item", name="nullius-large-tank-3", amount=1},
      {type="item", name="nullius-barrel-pump-2", amount=1}
    },
    result = "nullius-thermal-tank-3"
  },

  {
    type = "item",
    name = "nullius-stirling-engine-1",
    order = "nullius-db",
    icons = {{
      icon = "__base__/graphics/icons/steam-engine.png",
      icon_size = 64,
      icon_mipmaps = 4,
      tint = {0.8, 0.8, 0.6}
    }},
    subgroup = "heat-energy",
    place_result = "nullius-stirling-engine-1",
    stack_size = 20
  },
  {
    type = "item",
    name = "nullius-stirling-engine-2",
    order = "nullius-dc",
    icons = {{
      icon = "__base__/graphics/icons/steam-engine.png",
      icon_size = 64,
      icon_mipmaps = 4,
      tint = {0.75, 0.75, 0.95}
    }},
    subgroup = "heat-energy",
    place_result = "nullius-stirling-engine-2",
    stack_size = 20
  },
  {
    type = "item",
    name = "nullius-stirling-engine-3",
    order = "nullius-dd",
    icons = {{
      icon = "__base__/graphics/icons/steam-engine.png",
      icon_size = 64,
      icon_mipmaps = 4
    }},
    subgroup = "heat-energy",
    place_result = "nullius-stirling-engine-3",
    stack_size = 20
  },

  {
    type = "recipe",
    name = "nullius-stirling-engine-1",
    enabled = false,
    show_amount_in_title = false,
    always_show_products = true,
    category = "large-fluid-assembly",
    energy_required = 15,
    ingredients = {
      {type="item", name="nullius-surge-compressor-1", amount=1},
      {type="item", name="nullius-standard-turbine-2", amount=2},
      {type="item", name="nullius-heat-pipe-1", amount=8},
      {type="fluid", name="nullius-compressed-nitrogen", amount=600},
      {type="fluid", name="nullius-lubricant", amount=30}
    },
    result = "nullius-stirling-engine-1",
    result_count = 2
  },
  {
    type = "recipe",
    name = "nullius-stirling-engine-2",
    enabled = false,
    show_amount_in_title = false,
    always_show_products = true,
    category = "large-fluid-assembly",
    energy_required = 30,
    ingredients = {
      {type="item", name="nullius-stirling-engine-1", amount=3},
      {type="item", name="nullius-surge-compressor-2", amount=1},
      {type="item", name="nullius-thermal-tank-2", amount=2},
      {type="item", name="nullius-transformer", amount=3},
      {type="fluid", name="nullius-compressed-argon", amount=500, fluidbox_index=1}
    },
    result = "nullius-stirling-engine-2",
    result_count = 2
  },
  {
    type = "recipe",
    name = "nullius-stirling-engine-3",
    enabled = false,
    show_amount_in_title = false,
    always_show_products = true,
    category = "large-fluid-assembly",
    energy_required = 60,
    ingredients = {
      {type="item", name="nullius-stirling-engine-2", amount=3},
      {type="item", name="nullius-surge-compressor-3", amount=1},
      {type="item", name="nullius-thermal-tank-3", amount=2},
      {type="item", name="nullius-standard-turbine-3", amount=4},
      {type="item", name="nullius-grid-battery-2", amount=3},
      {type="fluid", name="nullius-compressed-helium", amount=300, fluidbox_index=1}
    },
    result = "nullius-stirling-engine-3",
    result_count = 2
  },

  {
    type = "item",
    name = "nullius-barrel-pump-1",
    icons = {{
      icon = "__angelsrefining__/graphics/icons/barreling-pump.png",
      icon_size = 32,
      tint = {0.7, 0.9, 0.9}
    }},
    subgroup = "pumping",
    order = "nullius-db",
    place_result = "nullius-barrel-pump-1",
    stack_size = 50
  },
  {
    type = "recipe",
    name = "nullius-barrel-pump-1",
    enabled = false,
    category = "medium-crafting",
    always_show_made_in = true,
    energy_required = 5,
    ingredients = {
      {"nullius-pump-1", 2},
      {"inserter", 1},
      {"nullius-iron-sheet", 3},
      {"nullius-pipe-2", 5},
      {"nullius-top-up-valve", 2}
    },
    result = "nullius-barrel-pump-1"
  },

  {
    type = "item",
    name = "nullius-heat-exchanger-1",
    icons = {{
      icon = ENTICONPATH .. "exchanger1.png",
      icon_size = 64
    }},
    subgroup = "heat-exchange",
    order = "nullius-bbb",
    place_result = "nullius-heat-exchanger-1",
    stack_size = 50
  },
  {
    type = "item",
    name = "nullius-mirror-heat-exchanger-1",
    icons = {
      {
        icon = ENTICONPATH .. "exchanger1.png",
        icon_size = 64
      },
      {
        icon = ICONPATH .. "flip1.png",
        icon_size = 64
      }
    },
    subgroup = "heat-exchange",
    order = "nullius-bbc",
    place_result = "nullius-mirror-heat-exchanger-1",
    stack_size = 50
  },
  {
    type = "recipe",
    name = "nullius-heat-exchanger-1",
    enabled = false,
    always_show_made_in = true,
    category = "medium-crafting",
    energy_required = 3,
    ingredients = {
      {"nullius-combustion-chamber-1", 1},
      {"nullius-heat-pipe-1", 4}
    },
    result = "nullius-heat-exchanger-1"
  },
  {
    type = "recipe",
    name = "nullius-mirror-heat-exchanger-1",
    enabled = false,
    always_show_made_in = true,
    no_productivity = true,
	requester_paste_multiplier = 5,
    category = "medium-crafting",
    energy_required = 1,
    ingredients = {
      {"nullius-heat-exchanger-1", 1},
      {"nullius-pipe-2", 2}
    },
    result = "nullius-mirror-heat-exchanger-1"
  },
  {
    type = "recipe",
    name = "nullius-unmirror-heat-exchanger-1",
    localised_name = {"recipe-name.nullius-unmirrored",
        {"", {"entity-name.heat-exchanger"}, " ", 1}},
    icons = {
      {
        icon = ENTICONPATH .. "exchanger1.png",
        icon_size = 64
      },
      {
        icon = ICONPATH .. "flip2.png",
        icon_size = 64
      }
    },
    enabled = false,
    always_show_made_in = true,
    no_productivity = true,
    allow_decomposition = false,
    allow_as_intermediate = false,
    always_show_products = true,
	requester_paste_multiplier = 2.5,
    category = "medium-crafting",
    order = "nullius-cb",
    energy_required = 0.5,
    ingredients = {
      {"nullius-mirror-heat-exchanger-1", 1},
      {"nullius-pipe-2", 1}
    },
    result = "nullius-heat-exchanger-1"
  },
  {
    type = "item",
    name = "nullius-heat-exchanger-2",
    icons = {{
      icon = ENTICONPATH .. "exchanger2.png",
      icon_size = 64
    }},
    subgroup = "heat-exchange",
    order = "nullius-bcb",
    place_result = "nullius-heat-exchanger-2",
    stack_size = 50
  },
  {
    type = "item",
    name = "nullius-mirror-heat-exchanger-2",
    icons = {
      {
        icon = ENTICONPATH .. "exchanger2.png",
        icon_size = 64
      },
      {
        icon = ICONPATH .. "flip1.png",
        icon_size = 64
      }
    },
    subgroup = "heat-exchange",
    order = "nullius-bcc",
    place_result = "nullius-mirror-heat-exchanger-2",
    stack_size = 50
  },
  {
    type = "recipe",
    name = "nullius-heat-exchanger-2",
    enabled = false,
    always_show_made_in = true,
    category = "medium-crafting",
    energy_required = 20,
    ingredients = {
      {"nullius-heat-exchanger-1", 1},
      {"nullius-combustion-chamber-3", 1},
      {"nullius-heat-pipe-2", 8}
    },
    result = "nullius-heat-exchanger-2"
  },
  {
    type = "recipe",
    name = "nullius-mirror-heat-exchanger-2",
    enabled = false,
    always_show_made_in = true,
    no_productivity = true,
	requester_paste_multiplier = 5,
    category = "medium-crafting",
    energy_required = 1,
    ingredients = {
      {"nullius-heat-exchanger-2", 1},
      {"nullius-pipe-3", 2}
    },
    result = "nullius-mirror-heat-exchanger-2"
  },
  {
    type = "recipe",
    name = "nullius-unmirror-heat-exchanger-2",
    localised_name = {"recipe-name.nullius-unmirrored",
        {"", {"entity-name.heat-exchanger"}, " ", 2}},
    icons = {
      {
        icon = ENTICONPATH .. "exchanger2.png",
        icon_size = 64
      },
      {
        icon = ICONPATH .. "flip2.png",
        icon_size = 64
      }
    },
    enabled = false,
    always_show_made_in = true,
    no_productivity = true,
    allow_decomposition = false,
    allow_as_intermediate = false,
    always_show_products = true,
	requester_paste_multiplier = 2.5,
    category = "medium-crafting",
    order = "nullius-cc",
    energy_required = 0.5,
    ingredients = {
      {"nullius-mirror-heat-exchanger-2", 1},
      {"nullius-pipe-3", 1}
    },
    result = "nullius-heat-exchanger-2"
  },

  {
    type = "item",
    name = "nullius-heat-exchanger-3",
    icons = {{
      icon = ENTICONPATH .. "exchanger3.png",
      icon_size = 64
    }},
    subgroup = "heat-exchange",
    order = "nullius-bdb",
    place_result = "nullius-heat-exchanger-3",
    stack_size = 50
  },
  {
    type = "item",
    name = "nullius-mirror-heat-exchanger-3",
    icons = {
      {
        icon = ENTICONPATH .. "exchanger3.png",
        icon_size = 64
      },
      {
        icon = ICONPATH .. "flip1.png",
        icon_size = 64
      }
    },
    subgroup = "heat-exchange",
    order = "nullius-bdc",
    place_result = "nullius-mirror-heat-exchanger-3",
    stack_size = 50
  },
  {
    type = "recipe",
    name = "nullius-heat-exchanger-3",
    enabled = false,
    always_show_made_in = true,
    category = "large-crafting",
    energy_required = 50,
    ingredients = {
      {"nullius-heat-exchanger-2", 2},
      {"nullius-thermal-tank-3", 1},
      {"nullius-filter-2", 1}
    },
    result = "nullius-heat-exchanger-3"
  },
  {
    type = "recipe",
    name = "nullius-mirror-heat-exchanger-3",
    enabled = false,
    always_show_made_in = true,
    no_productivity = true,
	requester_paste_multiplier = 5,
    category = "medium-crafting",
    energy_required = 1,
    ingredients = {
      {"nullius-heat-exchanger-3", 1},
      {"nullius-pipe-4", 2}
    },
    result = "nullius-mirror-heat-exchanger-3"
  },
  {
    type = "recipe",
    name = "nullius-unmirror-heat-exchanger-3",
    localised_name = {"recipe-name.nullius-unmirrored",
        {"", {"entity-name.heat-exchanger"}, " ", 3}},
    icons = {
      {
        icon = ENTICONPATH .. "exchanger3.png",
        icon_size = 64
      },
      {
        icon = ICONPATH .. "flip2.png",
        icon_size = 64
      }
    },
    enabled = false,
    always_show_made_in = true,
    no_productivity = true,
    allow_decomposition = false,
    allow_as_intermediate = false,
    always_show_products = true,
	requester_paste_multiplier = 2.5,
    category = "medium-crafting",
    order = "nullius-cd",
    energy_required = 0.5,
    ingredients = {
      {"nullius-mirror-heat-exchanger-3", 1},
      {"nullius-pipe-4", 1}
    },
    result = "nullius-heat-exchanger-3"
  },

  {
    type = "item",
    name = "nullius-boiler",
    icons = {{
      icon = ENTICONPATH .. "boiler-blue.png",
      icon_size = 64
    }},
    subgroup = "energy-storage",
    order = "nullius-fb",
    place_result = "nullius-boiler",
    stack_size = 50
  },
  {
    type = "item",
    name = "nullius-mirror-boiler",
    icons = {
      {
        icon = ENTICONPATH .. "boiler-blue.png",
        icon_size = 64
      },
      {
        icon = ICONPATH .. "flip1.png",
        icon_size = 64
      }
    },
    subgroup = "energy-storage",
    order = "nullius-fc",
    place_result = "nullius-mirror-boiler",
    stack_size = 50
  },
  {
    type = "recipe",
    name = "nullius-boiler",
    enabled = false,
    always_show_made_in = true,
    category = "medium-crafting",
    energy_required = 15,
    ingredients = {
      {"nullius-heat-exchanger-1", 1},
      {"nullius-medium-furnace-2", 1},
      {"nullius-ceramic-powder", 5},
      {"nullius-transformer", 1}
    },
    result = "nullius-boiler"
  },
  {
    type = "recipe",
    name = "nullius-mirror-boiler",
    enabled = false,
    always_show_made_in = true,
    no_productivity = true,
	requester_paste_multiplier = 5,
    category = "medium-crafting",
    energy_required = 1,
    ingredients = {
      {"nullius-boiler", 1},
      {"nullius-pipe-2", 2}
    },
    result = "nullius-mirror-boiler"
  },
  {
    type = "recipe",
    name = "nullius-unmirror-boiler",
    localised_name = {"recipe-name.nullius-unmirrored", {"entity-name.boiler"}},
    icons = {
      {
        icon = ENTICONPATH .. "boiler-blue.png",
        icon_size = 64
      },
      {
        icon = ICONPATH .. "flip2.png",
        icon_size = 64
      }
    },
    enabled = false,
    always_show_made_in = true,
    no_productivity = true,
    allow_decomposition = false,
    allow_as_intermediate = false,
    always_show_products = true,
	requester_paste_multiplier = 2.5,
    category = "medium-crafting",
    subgroup = "unmirror-2",
    order = "nullius-fd",
    energy_required = 0.5,
    ingredients = {
      {"nullius-mirror-boiler", 1},
      {"nullius-pipe-2", 1}
    },
    result = "nullius-boiler"
  },

  {
    type = "item",
    name = "nullius-barrel-pump-2",
    icons = {{
      icon = "__angelsrefining__/graphics/icons/barreling-pump.png",
      icon_size = 32
    }},
    subgroup = "pumping",
    order = "nullius-dc",
    place_result = "nullius-barrel-pump-2",
    stack_size = 50
  },
  {
    type = "recipe",
    name = "nullius-barrel-pump-2",
    enabled = false,
	always_show_made_in = true,
    category = "medium-crafting",
    energy_required = 12,
    ingredients = {
      {"nullius-barrel-pump-1", 1},
      {"nullius-small-pump-2", 2},
      {"nullius-small-tank-2", 1},
      {"nullius-sensor-1", 1},
	  {"nullius-refueler", 1}
    },
    result = "nullius-barrel-pump-2"
  },
  {
    type = "recipe",
    name = "nullius-legacy-barrel-pump-2",
    enabled = false,
	always_show_made_in = true,
	hidden = true,
    allow_decomposition = false,
    allow_as_intermediate = false,
    category = "medium-crafting",
    energy_required = 12,
    ingredients = {
      {"nullius-barrel-pump-1", 2},
      {"nullius-small-pump-2", 2},
      {"nullius-small-tank-2", 1},
      {"nullius-sensor-1", 1}
    },
    result = "nullius-barrel-pump-2"
  },

  {
    type = "item",
    name = "nullius-nanofabricator-1",
    icons = {{
      icon = "__angelsrefining__/graphics/icons/crystallizer.png",
      icon_size = 64,
	  icon_mipmaps = 4,
      tint = {0.6, 0.75, 0.75}
    }},
    subgroup = "chemical-plant",
    order = "nullius-cb",
    place_result = "nullius-nanofabricator-1",
    stack_size = 20
  },
  {
    type = "item",
    name = "nullius-nanofabricator-2",
    icons = {{
      icon = "__angelsrefining__/graphics/icons/crystallizer.png",
      icon_size = 64,
	  icon_mipmaps = 4
    }},
    subgroup = "chemical-plant",
    order = "nullius-ccb",
    place_result = "nullius-nanofabricator-2",
    stack_size = 20
  },
  {
    type = "item",
    name = "nullius-mirror-nanofabricator-2",
    icons = {
      {
        icon = "__angelsrefining__/graphics/icons/crystallizer.png",
        icon_size = 64,
	    icon_mipmaps = 4
      },
      {
        icon = ICONPATH .. "flip1.png",
        icon_size = 64
      }
    },
    subgroup = "chemical-plant",
    order = "nullius-ccc",
    place_result = "nullius-mirror-nanofabricator-2",
    stack_size = 20
  },
  {
    type = "recipe",
    name = "nullius-nanofabricator-1",
    enabled = false,
    always_show_made_in = true,
    show_amount_in_title = false,
    always_show_products = true,
    category = "huge-crafting",
    energy_required = 40,
    ingredients = {
      {"nullius-chemical-plant-2", 1},
      {"nullius-surge-electrolyzer-2", 1},
	  {"nullius-telekinesis-field-1", 1},
      {"nullius-foundry-2", 1},
      {"nullius-flotation-cell-2", 1},
      {"nullius-air-filter-2", 1}
    },
    result = "nullius-nanofabricator-1",
    result_count = 2
  },
  {
    type = "recipe",
    name = "nullius-legacy-nanofabricator-1",
    enabled = false,
    always_show_made_in = true,
    show_amount_in_title = false,
    always_show_products = true,
	hidden = true,
    allow_decomposition = false,
    allow_as_intermediate = false,
    category = "huge-crafting",
    energy_required = 40,
    ingredients = {
      {"nullius-chemical-plant-2", 1},
      {"nullius-surge-electrolyzer-2", 1},
      {"nullius-foundry-2", 1},
      {"nullius-flotation-cell-2", 1},
      {"nullius-air-filter-2", 1}
    },
    result = "nullius-nanofabricator-1",
    result_count = 2
  },
  {
    type = "recipe",
    name = "nullius-nanofabricator-2",
    enabled = false,
    always_show_made_in = true,
    show_amount_in_title = false,
    always_show_products = true,
    category = "huge-crafting",
    energy_required = 90,
    ingredients = {
      {"nullius-nanofabricator-1", 1},
      {"nullius-mirror-chemical-plant-3", 1},
      {"nullius-priority-electrolyzer-3", 1},
      {"nullius-large-furnace-2", 1},
      {"nullius-large-assembler-2", 1},
	  {"nullius-fabrication-tool-3", 1},
      {"nullius-large-dispatch-chest-2", 2}
    },
    result = "nullius-nanofabricator-2",
    result_count = 2
  },
  {
    type = "recipe",
    name = "nullius-legacy-nanofabricator-2",
    enabled = false,
    always_show_made_in = true,
    show_amount_in_title = false,
    always_show_products = true,
	hidden = true,
    allow_decomposition = false,
    allow_as_intermediate = false,
    category = "huge-crafting",
    energy_required = 90,
    ingredients = {
      {"nullius-nanofabricator-1", 2},
      {"nullius-mirror-chemical-plant-3", 1},
      {"nullius-priority-electrolyzer-3", 1},
      {"nullius-large-furnace-2", 1},
      {"nullius-large-assembler-2", 1},
      {"nullius-large-dispatch-chest-2", 2}
    },
    result = "nullius-nanofabricator-2",
    result_count = 2
  },
  {
    type = "recipe",
    name = "nullius-mirror-nanofabricator-2",
    enabled = false,
    always_show_made_in = true,
    no_productivity = true,
	requester_paste_multiplier = 10,
    category = "large-crafting",
    energy_required = 2,
    ingredients = {
      {"nullius-nanofabricator-2", 1},
      {"nullius-pipe-4", 5}
    },
    result = "nullius-mirror-nanofabricator-2"
  },
  {
    type = "recipe",
    name = "nullius-unmirror-nanofabricator-2",
    localised_name = {"recipe-name.nullius-unmirror-nanofabricator-2"},
    icons = {
      {
        icon = "__angelsrefining__/graphics/icons/crystallizer.png",
        icon_size = 64,
	    icon_mipmaps = 4
      },
      {
        icon = ICONPATH .. "flip2.png",
        icon_size = 64
      }
    },
    enabled = false,
    category = "large-crafting",
    subgroup = "unmirror-2",
    order = "nullius-e",
    always_show_made_in = true,
    no_productivity = true,
    allow_decomposition = false,
    allow_as_intermediate = false,
    always_show_products = true,
	requester_paste_multiplier = 5,
    energy_required = 1,
    ingredients = {
      {"nullius-mirror-nanofabricator-2", 1},
      {"nullius-pipe-4", 1}
    },
    result = "nullius-nanofabricator-2"
  }
})


if mods["reskins-bobs"] then
data.raw.item["nullius-heat-pipe-1"].icons = {{
  icon = "__reskins-bobs__/graphics/icons/power/heat-pipe/heat-pipe-icon-base.png",
  icon_size = 64, icon_mipmaps = 4
}}
data.raw.item["nullius-heat-pipe-2"].icons = {{
  icon = "__reskins-bobs__/graphics/icons/power/heat-pipe/heat-pipe-3-icon-base.png",
  icon_size = 64, icon_mipmaps = 4
}}
data.raw.item["nullius-heat-pipe-3"].icons = {{
  icon = "__reskins-bobs__/graphics/icons/power/heat-pipe/heat-pipe-2-icon-base.png",
  icon_size = 64, icon_mipmaps = 4
}}

data.raw.item["nullius-stirling-engine-1"].icons = {
  {
    icon = "__reskins-bobs__/graphics/icons/power/steam-engine/steam-engine-icon-base.png",
    icon_size = 64, icon_mipmaps = 4
  },
  {
    icon = "__reskins-bobs__/graphics/icons/power/steam-engine/steam-engine-icon-mask.png",
    icon_size = 64, icon_mipmaps = 4,
    tint = tiercolor("yellow")
  },
  {
    icon = "__reskins-bobs__/graphics/icons/power/steam-engine/steam-engine-icon-highlights.png",
    icon_size = 64, icon_mipmaps = 4, tint = {1, 1, 1, 0}
  }
}

data.raw.item["nullius-stirling-engine-2"].icons =
    util.table.deepcopy(data.raw.item["nullius-stirling-engine-1"].icons)
data.raw.item["nullius-stirling-engine-2"].icons[2].tint = tiercolor("orange")
data.raw.item["nullius-stirling-engine-3"].icons =
    util.table.deepcopy(data.raw.item["nullius-stirling-engine-1"].icons)
data.raw.item["nullius-stirling-engine-3"].icons[2].tint = tiercolor("red")


data.raw.item["nullius-pipe-2"].icons = {{
  icon = ENTICONPATH .. "pipe-red.png",
  icon_size = 64, icon_mipmaps = 4
}}
data.raw.recipe["nullius-steel-pipe"].icons[1] = {
  icon = ENTICONPATH .. "pipe-red.png",
  icon_size = 64, icon_mipmaps = 4
}
data.raw.recipe["nullius-plastic-pipe"].icons[1] = {
  icon = ENTICONPATH .. "pipe-red.png",
  icon_size = 64, icon_mipmaps = 4
}
data.raw.item["nullius-pipe-3"].icons = {{
  icon = "__reskins-bobs__/graphics/icons/logistics/pipe/plastic-pipe-icon.png",
  icon_size = 64, icon_mipmaps = 4
}}
data.raw.item["nullius-pipe-4"].icons = {{
  icon = "__reskins-bobs__/graphics/icons/logistics/pipe/tungsten-pipe-icon.png",
  icon_size = 64, icon_mipmaps = 4
}}
data.raw.item["nullius-underground-pipe-2"].icons = {{
  icon = ENTICONPATH .. "pipe-underground-red.png",
  icon_size = 64, icon_mipmaps = 4
}}
data.raw.item["nullius-underground-pipe-3"].icons = {{
  icon = "__reskins-bobs__/graphics/icons/logistics/pipe-to-ground/plastic-pipe-to-ground-icon.png",
  icon_size = 64, icon_mipmaps = 4
}}
data.raw.item["nullius-underground-pipe-4"].icons = {{
  icon = "__reskins-bobs__/graphics/icons/logistics/pipe-to-ground/tungsten-pipe-to-ground-icon.png",
  icon_size = 64, icon_mipmaps = 4
}}
end


label_icon("nullius-thermal-tank-1", 1, "yellow")
label_icon("nullius-thermal-tank-2", 2, "blue")
label_icon("nullius-thermal-tank-3", 3, "orange")
label_icon("nullius-heat-pipe-1", 1, "red")
label_icon("nullius-heat-pipe-2", 2, "orange")
label_icon("nullius-heat-pipe-3", 3, "white")
label_icon("nullius-geothermal-plant-1", 1, "grey")
label_icon("nullius-geothermal-plant-2", 2, "red")
label_icon("nullius-geothermal-plant-3", 3, "orange")
label_icon("nullius-stirling-engine-1", 1, "yellow")
label_icon("nullius-stirling-engine-2", 2, "orange")
label_icon("nullius-stirling-engine-3", 3, "red")

label_icon("nullius-pipe-2", 2, "red")
label_icon("nullius-pipe-3", 3, "blue")
label_icon("nullius-pipe-4", 4, "white")
label_icon("nullius-underground-pipe-2", 2, "red")
label_icon("nullius-underground-pipe-3", 3, "blue")
label_icon("nullius-underground-pipe-4", 4, "white")
label_icon("nullius-stone-pipe", 1, "grey", "recipe")
label_icon("nullius-iron-pipe", 1, "grey", "recipe")
label_icon("nullius-steel-pipe", 2, "red", "recipe")
label_icon("nullius-plastic-pipe", 2, "red", "recipe")
