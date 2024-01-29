local ICONPATH = "__nullius__/graphics/icons/"
local FLUIDPATH = ICONPATH .. "fluid/"
local ENTITYPATH = "__nullius__/graphics/entity/"

data:extend({
  {
    type = "item",
    name = "nullius-sugar",
    icons = {{
      icon = ICONPATH .. "sugar.png",
      icon_size = 64
    }},
    subgroup = "biology-material",
    order = "nullius-b",
    stack_size = 100
  },
  {
    type = "item",
    name = "nullius-cellulose",
    icons = {{
      icon = "__base__/graphics/decorative/brown-asterisk/hr-brown-asterisk-11.png",
      icon_size = 54
    }},
    subgroup = "biology-material",
    order = "nullius-c",
    stack_size = 200
  },
  {
    type = "item",
    name = "nullius-fertilizer",
    icons = {{
        icon = "__angelsrefining__/graphics/icons/solid-mud.png",
        icon_size = 32
    }},
    subgroup = "biology-material",
    order = "nullius-d",
    stack_size = 100
  },
  {
    type = "item",
    name = "nullius-coal",
    icons = {{
        icon = "__base__/graphics/icons/coal-1.png",
        icon_size = 64,
		icon_mipmaps = 4,
		tint = {0.5, 0.5, 0.5}
    }},
    subgroup = "biology-material",
    order = "nullius-g",
    stack_size = 200,
	fuel_category = "vehicle",
    fuel_value = "4MJ",
    fuel_acceleration_multiplier = 1,
    fuel_top_speed_multiplier = 1
  },
  {
    type = "recipe",
    name = "nullius-sugar-1",
    localised_name = {"", {"item-name.nullius-sugar"}, " ", 1},
    icons = {
      {
        icon = ICONPATH .. "sugar.png",
        icon_size = 64
      },
      {
        icon = "__angelspetrochem__/graphics/icons/molecules/glycerol.png",
        icon_size = 72,
        scale = 0.3,
        shift = {7, -9}
      }
    },
    enabled = false,
    show_amount_in_title = false,
    always_show_products = true,
    category = "nanotechnology",
    order = "nullius-bc",
    energy_required = 20,
    ingredients = {
      {type="fluid", name="nullius-glycerol", amount=10, fluidbox_index=1},
      {type="fluid", name="nullius-oxygen", amount=30, fluidbox_index=2}
    },
    results = {
      {type="item", name="nullius-sugar", amount=1},
      {type="fluid", name="nullius-wastewater", amount=5}
    },
    main_product = "nullius-sugar"
  },
  {
    type = "recipe",
    name = "nullius-sugar-2",
    localised_name = {"", {"item-name.nullius-sugar"}, " ", 2},
    enabled = false,
    show_amount_in_title = false,
    always_show_products = true,
    category = "basic-chemistry",
    order = "nullius-bd",
    crafting_machine_tint = {
      primary = data.raw.fluid["nullius-glycerol"].flow_color,
      secondary = data.raw.fluid["nullius-acid-hydrochloric"].flow_color
    },
    energy_required = 3,
    ingredients = {
      {type="item", name="nullius-cellulose", amount=3},
      {type="fluid", name="nullius-acid-hydrochloric", amount=4, fluidbox_index=1},
      {type="fluid", name="nullius-caustic-solution", amount=4, fluidbox_index=2}
    },
    results = {
      {type="item", name="nullius-sugar", amount=2},
      {type="fluid", name="nullius-wastewater", amount=6}
    },
    main_product = "nullius-sugar"
  },
  {
    type = "recipe",
    name = "nullius-boxed-sugar",
    enabled = false,
    show_amount_in_title = false,
    always_show_products = true,
    category = "basic-chemistry",
    subgroup = "boxed-biology",
    order = "nullius-fb",
    crafting_machine_tint = {
      primary = data.raw.fluid["nullius-glycerol"].flow_color,
      secondary = data.raw.fluid["nullius-acid-hydrochloric"].flow_color
    },
    energy_required = 15,
    ingredients = {
      {type="item", name="nullius-box-cellulose", amount=3},
      {type="fluid", name="nullius-acid-hydrochloric", amount=20, fluidbox_index=1},
      {type="fluid", name="nullius-caustic-solution", amount=20, fluidbox_index=2}
    },
    results = {
      {type="item", name="nullius-box-sugar", amount=2},
      {type="fluid", name="nullius-wastewater", amount=30}
    },
    main_product = "nullius-box-sugar"
  },
  {
    type = "recipe",
    name = "nullius-cellulose",
    enabled = false,
    show_amount_in_title = false,
    always_show_products = true,
    category = "nanotechnology",
	order = "nullius-cb",
    energy_required = 15,
    ingredients = {
      {type="item", name="nullius-sugar", amount=5},
      {type="fluid", name="nullius-solvent", amount=4, fluidbox_index=1}
    },
    results = {
      {type="item", name="nullius-cellulose", amount=3},
      {type="fluid", name="nullius-wastewater", amount=6}
    },
    main_product = "nullius-cellulose"
  },
  {
    type = "recipe",
    name = "nullius-amino-acids",
    enabled = false,
    show_amount_in_title = false,
    always_show_products = true,
    category = "nanotechnology",
    subgroup = "biochemistry",
    energy_required = 8,
    ingredients = {
      {type="fluid", name="nullius-ammonia", amount=6},
      {type="fluid", name="nullius-glycerol", amount=2},
      {type="fluid", name="nullius-oxygen", amount=12}
    },
    results = {
      {type="fluid", name="nullius-amino-acids", amount=1}
    },
    main_product = "nullius-amino-acids"
  },
  {
    type = "recipe",
    name = "nullius-fatty-acids",
    enabled = false,
    show_amount_in_title = false,
    always_show_products = true,
    allow_as_intermediate = false,
    category = "nanotechnology",
    subgroup = "biology-oil",
    order = "nullius-bb",
    energy_required = 5,
    ingredients = {
      {type="fluid", name="nullius-propene", amount=8},
      {type="fluid", name="nullius-methanol", amount=1},
      {type="fluid", name="nullius-oxygen", amount=4}
    },
    results = {
      {type="fluid", name="nullius-fatty-acids", amount=1}
    },
    main_product = "nullius-fatty-acids"
  },
  {
    type = "recipe",
    name = "nullius-oil",
    enabled = false,
    show_amount_in_title = false,
    always_show_products = true,
    category = "basic-chemistry",
    subgroup = "biology-oil",
    order = "nullius-c",
    energy_required = 2,
    ingredients = {
      {type="fluid", name="nullius-fatty-acids", amount=6},
      {type="fluid", name="nullius-glycerol", amount=1}
    },
    results = {
      {type="fluid", name="nullius-oil", amount=5}
    },
    main_product = "nullius-oil"
  },
  {
    type = "recipe",
    name = "nullius-oil-cracking",
    localised_name = {"recipe-name.nullius-cracking", {"fluid-name.nullius-oil"}},
    icons = {
      data.raw.fluid["nullius-fatty-acids"].icons[2],
      data.raw.fluid["nullius-fatty-acids"].icons[3],
      data.raw.fluid["nullius-fatty-acids"].icons[4],
      {
        icon = "__base__/graphics/icons/fluid/light-oil.png",
        icon_size = 64,
        scale = 0.25,
        shift = {-9, -9}
      }
    },
    enabled = false,
    show_amount_in_title = false,
    always_show_products = true,
	allow_decomposition = false,
    category = "distillation",
    subgroup = "biology-oil",
    order = "nullius-bc",
    energy_required = 1,
    ingredients = {
      {type="fluid", name="nullius-oil", amount=100},
      {type="fluid", name="nullius-steam", amount=250}
    },
    results = {
      {type="fluid", name="nullius-fatty-acids", amount=75},
      {type="fluid", name="nullius-glycerol", amount=15}
    },
    main_product = "nullius-fatty-acids"
  },
  {
    type = "recipe",
    name = "nullius-biolubricant",
    localised_name = {"recipe-name.nullius-biolubricant"},
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
        scale = 0.2,
        shift = {-12, -10}
      }
    },
    enabled = false,
    show_amount_in_title = false,
    always_show_products = true,
	allow_decomposition = false,
    category = "distillation",
    subgroup = "biology-oil",
    order = "nullius-bd",
    energy_required = 1,
    ingredients = {
      {type="fluid", name="nullius-oil", amount=16},
      {type="fluid", name="nullius-steam", amount=18}
    },
    results = {
      {type="fluid", name="nullius-lubricant", amount=10},
      {type="fluid", name="nullius-methane", amount=8},
      {type="fluid", name="nullius-carbon-monoxide", amount=12}
    },
    main_product = "nullius-lubricant"
  },
  {
    type = "recipe",
    name = "nullius-biodiesel",
    enabled = false,
    show_amount_in_title = false,
    always_show_products = true,
    category = "distillation",
    subgroup = "biology-oil",
    order = "nullius-d",
    energy_required = 3,
    ingredients = {
      {type="fluid", name="nullius-fatty-acids", amount=20},
      {type="fluid", name="nullius-methanol", amount=8}
    },
    results = {
      {type="fluid", name="nullius-biodiesel", amount=24},
      {type="fluid", name="nullius-wastewater", amount=5}
    },
    main_product = "nullius-biodiesel"
  },
  {
    type = "recipe",
    name = "nullius-nucleotides",
    enabled = false,
    show_amount_in_title = false,
    always_show_products = true,
    category = "nanotechnology",
    subgroup = "biochemistry",
    energy_required = 24,
    ingredients = {
      {type="item", name="nullius-sugar", amount=1},
      {type="fluid", name="nullius-amino-acids", amount=3},
      {type="fluid", name="nullius-methanol", amount=2},
      {type="fluid", name="nullius-acid-nitric", amount=4}
    },
    results = {
      {type="fluid", name="nullius-nucleotides", amount=2}
    },
    main_product = "nullius-nucleotides"
  },

  {
    type = "recipe",
    name = "nullius-protocell-1",
    localised_name = {"", {"fluid-name.nullius-protocell"}, " ", 1},
    enabled = false,
    category = "nanotechnology",
    order = "nullius-fb",
    energy_required = 50,
    ingredients = {
      {type="fluid", name="nullius-amino-acids", amount=5},
      {type="fluid", name="nullius-fatty-acids", amount=8},
      {type="fluid", name="nullius-saline", amount=20},
      {type="item", name="nullius-sugar", amount=1},
      {type="item", name="nullius-mineral-dust", amount=1}
    },
    results = {
      {type="fluid", name="nullius-protocell", amount=2},
      {type="item", name="nullius-graphite", amount=1}
    },
    main_product = "nullius-protocell"
  },
  {
    type = "recipe",
    name = "nullius-protocell-2",
    localised_name = {"", {"fluid-name.nullius-protocell"}, " ", 2},
    icons = {
      {
        icon = ICONPATH .. "protocell.png",
        icon_size = 64
      },
      {
        icon = ICONPATH .. "bacteria.png",
        icon_size = 64,
        scale = 0.35,
        shift = {11, -10}
      }
    },
    enabled = false,
    category = "nanotechnology",
    order = "nullius-fc",
    energy_required = 8,
    ingredients = {
      {type="fluid", name="nullius-bacteria", amount=12},
      {type="fluid", name="nullius-saline", amount=20}
    },
    results = {
      {type="fluid", name="nullius-protocell", amount=5},
      {type="item", name="nullius-graphite", amount=1}
    },
    main_product = "nullius-protocell"
  },
  {
    type = "recipe",
    name = "nullius-fertilizer",
    localised_name = {"", {"item-name.nullius-fertilizer"}, " ", 1},
	icons = {
	  {
	    icon = "__angelsrefining__/graphics/icons/solid-mud.png",
        icon_size = 32
      },
      {
	    icon = ICONPATH .. "algae.png",
        icon_size = 64,
        scale = 0.33,
        shift = {-8, -4}
      }
    },
    enabled = false,
    show_amount_in_title = false,
    always_show_products = true,
	order = "nullius-db",
    category = "basic-chemistry",
    crafting_machine_tint = {
      primary = data.raw.fluid["nullius-ammonia"].flow_color,
      secondary = data.raw.fluid["nullius-acid-nitric"].flow_color
    },
    energy_required = 10,
    ingredients = {
      {type="fluid", name="nullius-ammonia", amount=70},
      {type="fluid", name="nullius-acid-nitric", amount=35},
      {type="fluid", name="nullius-sludge", amount=20},
      {type="item", name="nullius-algae", amount=4},
      {type="item", name="nullius-cellulose", amount=5}
    },
    result = "nullius-fertilizer",
    result_count = 6
  },
  {
    type = "recipe",
    name = "nullius-fertilizer-2",
	localised_name = {"", {"item-name.nullius-fertilizer"}, " ", 2},
	icons = {
	  {
	    icon = "__angelsrefining__/graphics/icons/solid-mud.png",
        icon_size = 32
      },
      {
	    icon = ICONPATH .. "wood-chip.png",
        icon_size = 64,
        scale = 0.33,
        shift = {-8, -6}
      }
    },
    enabled = false,
    show_amount_in_title = false,
    always_show_products = true,
	order = "nullius-dc",
    category = "basic-chemistry",
    crafting_machine_tint = {
      primary = data.raw.fluid["nullius-bacteria"].flow_color,
      secondary = data.raw.fluid["nullius-ammonia"].flow_color
    },
    energy_required = 20,
    ingredients = {
      {type="fluid", name="nullius-ammonia", amount=100},
      {type="fluid", name="nullius-acid-nitric", amount=50},
      {type="fluid", name="nullius-bacteria", amount=1},
      {type="item", name="nullius-wood-chip", amount=12},
	  {type="item", name="nullius-fish", amount=1}
    },
    result = "nullius-fertilizer",
    result_count = 16
  },
  {
    type = "recipe",
    name = "nullius-fatty-acid-pyrolysis",
    localised_name = {"recipe-name.nullius-pyrolysis", {"fluid-name.nullius-fatty-acids"}},
    icons = angelsmods.functions.create_liquid_recipe_icon(
        {{"__angelspetrochem__/graphics/icons/molecules/ethylene.png", 72},
        {"__angelspetrochem__/graphics/icons/molecules/benzene.png", 72},
        {"__angelspetrochem__/graphics/icons/molecules/propene.png", 72}},
      {element_tint["carbon"], element_tint["carbon"], element_tint["hydrogen"]}
    ),
    enabled = false,
	allow_decomposition = false,
    allow_as_intermediate = false,
    category = "distillation",
    subgroup = "biology-oil",
    order = "nullius-g",
    energy_required = 3,
    ingredients = {
      {type="fluid", name="nullius-fatty-acids", amount=25}
    },
    results = {
      {type="fluid", name="nullius-ethylene", amount=50},
      {type="fluid", name="nullius-propene", amount=75},
      {type="fluid", name="nullius-benzene", amount=6},
      {type="item", name="nullius-graphite", amount=1}
    },
    main_product = "nullius-propene"
  },
  {
    type = "recipe",
    name = "nullius-boxed-fatty-acid-pyrolysis",
    localised_name = {"recipe-name.nullius-boxed", {"recipe-name.nullius-pyrolysis",
        {"fluid-name.nullius-fatty-acids"}}},
    icons = {
      {
        icon = ICONPATH .. "crate.png",
        icon_size = 64
      },
      data.raw.fluid["nullius-fatty-acids"].icons[2],
      data.raw.fluid["nullius-fatty-acids"].icons[3],
      data.raw.fluid["nullius-fatty-acids"].icons[4]
    },
    enabled = false,
	allow_decomposition = false,
    allow_as_intermediate = false,
    category = "distillation",
    subgroup = "boxed-biology",
    order = "nullius-o",
    energy_required = 15,
    ingredients = {
      {type="fluid", name="nullius-fatty-acids", amount=125}
    },
    results = {
      {type="fluid", name="nullius-ethylene", amount=250},
      {type="fluid", name="nullius-propene", amount=375},
      {type="fluid", name="nullius-benzene", amount=30},
      {type="item", name="nullius-box-graphite", amount=1}
    },
    main_product = "nullius-propene"
  },

  {
    type = "recipe",
    name = "nullius-glycerol-reforming",
    localised_name = {"recipe-name.nullius-reforming", {"fluid-name.nullius-glycerol"}},
    icons = angelsmods.functions.create_liquid_recipe_icon(
        {{"__angelspetrochem__/graphics/icons/molecules/carbon-monoxide.png", 72},
       {"__angelspetrochem__/graphics/icons/molecules/hydrogen.png", 72}},
      {element_tint["carbon"], element_tint["hydrogen"], element_tint["oxygen"]},
      {{"__angelspetrochem__/graphics/icons/molecules/glycerol.png", 72}}
    ),
    enabled = false,
    allow_as_intermediate = false,
    category = "distillation",
    subgroup = "biology-oil",
    order = "nullius-h",
    energy_required = 1,
    ingredients = {
      {type="fluid", name="nullius-glycerol", amount=20},
      {type="fluid", name="nullius-compressed-carbon-dioxide", amount=10}
    },
    results = {
      {type="fluid", name="nullius-compressed-hydrogen", amount=12},
      {type="fluid", name="nullius-compressed-carbon-monoxide", amount=16},
      {type="fluid", name="nullius-steam", amount=25}
    },
    main_product = "nullius-compressed-carbon-monoxide"
  },

  {
    type = "item",
    name = "nullius-bacteria-genome",
    icons = {
      {
        icon = ICONPATH .. "bacteria.png",
        icon_size = 64,
		scale = 0.5
      },
      {
        icon = ICONPATH .. "genome.png",
        icon_size = 64,
        scale = 0.45
      }
    },
    subgroup = "biology-bacteria",
    order = "nullius-b",
    stack_size = 5
  },
  {
    type = "recipe",
    name = "nullius-bacteria-genome",
	localised_name = {"", {"item-name.nullius-bacteria-genome"}, " ", 1},
    enabled = false,
    category = "nanotechnology",
	order = "nullius-bb",
    energy_required = 30,
    ingredients = {
      {type="fluid", name="nullius-nucleotides", amount=18, fluidbox_index=1},
      {type="item", name="nullius-physics-pack", amount=6},
      {type="item", name="nullius-chemical-pack", amount=12},
      {type="item", name="nullius-canister", amount=1}
    },
    results = {
      {type="item", name="nullius-bacteria-genome", amount=1},
      {type="fluid", name="nullius-wastewater", amount=12}
    },
    main_product = "nullius-bacteria-genome"
  },
  {
    type = "recipe",
    name = "nullius-bacteria-genome-2",
    localised_name = {"", {"item-name.nullius-bacteria-genome"}, " ", 2},
	icons = {
      {
        icon = ICONPATH .. "bacteria.png",
        icon_size = 64,
		scale = 0.5
      },
      {
        icon = ICONPATH .. "genome.png",
        icon_size = 64,
        scale = 0.4,
        shift = {-3, 2}
      },
	  {
        icon = "__base__/graphics/icons/military-science-pack.png",
        icon_size = 64,
        icon_mipmaps = 4,
		scale = 0.3,
        shift = {9, -8},
        tint = {0.75, 0.72, 0.78}
      }
    },
    enabled = false,
	show_amount_in_title = false,
    always_show_products = true,
    category = "nanotechnology",
	order = "nullius-bc",
    energy_required = 45,
    ingredients = {
      {type="fluid", name="nullius-nucleotides", amount=25, fluidbox_index=1},
	  {type="fluid", name="nullius-bacteria", amount=20, fluidbox_index=2},
	  {type="item", name="nullius-physics-pack", amount=4},
      {type="item", name="nullius-chemical-pack", amount=8},
      {type="item", name="nullius-astronomy-pack", amount=3},
      {type="item", name="nullius-canister", amount=2}
    },
    results = {
      {type="item", name="nullius-bacteria-genome", amount=2},
      {type="fluid", name="nullius-wastewater", amount=30}
    },
    main_product = "nullius-bacteria-genome"
  },
  {
    type = "recipe",
    name = "nullius-bacteria-1",
    localised_name = {"", {"fluid-name.nullius-bacteria"}, " ", 1},
    icons = {
      {
        icon = ICONPATH .. "bacteria.png",
        icon_size = 64
      },
      {
        icon = ICONPATH .. "protocell.png",
        icon_size = 64,
        scale = 0.3,
        shift = {9, -9}
      }
    },
    enabled = false,
    allow_decomposition = false,
	show_amount_in_title = false,
    always_show_products = true,
    category = "nanotechnology",
    subgroup = "biology-bacteria",
    order = "nullius-cb",
    energy_required = 100,
    ingredients = {
      {type="item", name="nullius-bacteria-genome", amount=1},
      {type="fluid", name="nullius-protocell", amount=2},
      {type="fluid", name="nullius-amino-acids", amount=2},
      {type="fluid", name="nullius-fatty-acids", amount=1},
      {type="item", name="nullius-sugar", amount=1}
    },
    results = {
      {type="fluid", name="nullius-bacteria", amount=1},
      {type="item", name="nullius-graphite", amount=1}
    },
    main_product = "nullius-bacteria"
  },
  {
    type = "recipe",
    name = "nullius-bacteria-2",
    localised_name = {"", {"fluid-name.nullius-bacteria"}, " ", 2},
    enabled = false,
    allow_decomposition = false,
    category = "ore-flotation",
    subgroup = "biology-bacteria",
    order = "nullius-cc",
    energy_required = 16,
    ingredients = {
      {type="fluid", name="nullius-saline", amount=40},
      {type="fluid", name="nullius-bacteria", amount=6},
      {type="item", name="nullius-sugar", amount=2},
      {type="item", name="nullius-cellulose", amount=3},
      {type="item", name="nullius-mineral-dust", amount=1}
    },
    results = {
      {type="fluid", name="nullius-bacteria", amount=10},
      {type="fluid", name="nullius-methane", amount=50}
    },
    main_product = "nullius-bacteria"
  },
  {
    type = "recipe",
    name = "nullius-bacteria-3",
    localised_name = {"", {"fluid-name.nullius-bacteria"}, " ", 3},
	icons = {
	  {
        icon = ICONPATH .. "bacteria.png",
        icon_size = 64
      },
	  {
        icon = ICONPATH .. "genome.png",
        icon_size = 64,
		scale = 0.3,
        shift = {-10, -9}
      }
	},
    enabled = false,
    allow_decomposition = false,
    category = "ore-flotation",
    subgroup = "biology-bacteria",
    order = "nullius-cd",
    energy_required = 15,
    ingredients = {
      {type="fluid", name="nullius-saline", amount=40},
      {type="fluid", name="nullius-bacteria", amount=5},
      {type="item", name="nullius-sugar", amount=2},
      {type="item", name="nullius-cellulose", amount=3},
      {type="item", name="nullius-mineral-dust", amount=1}
    },
    results = {
      {type="fluid", name="nullius-bacteria", amount=11},
      {type="fluid", name="nullius-methane", amount=55}
    },
    main_product = "nullius-bacteria"
  },

  {
    type = "recipe",
    name = "nullius-fermentation",
    localised_name = {"recipe-name.nullius-fermentation"},
    icons = {
      data.raw.fluid["nullius-methanol"].icons[2],
      data.raw.fluid["nullius-methanol"].icons[3],
      data.raw.fluid["nullius-methanol"].icons[4],
      {
        icon = ICONPATH .. "sugar.png",
        icon_size = 64,
        scale = 0.25,
        shift = {-9, -9}
      }
    },
    enabled = false,
    always_show_made_in = true,
    show_amount_in_title = false,
    always_show_products = true,
    category = "distillation",
    subgroup = "biology-bacteria",
    order = "nullius-f",
    crafting_machine_tint = { primary = data.raw.fluid["nullius-methanol"].flow_color },
    energy_required = 10,
    ingredients = {
      {type="item", name="nullius-sugar", amount=6},
      {type="fluid", name="nullius-freshwater", amount=100},
      {type="fluid", name="nullius-bacteria", amount=1}
    },
    results = {
      {type="fluid", name="nullius-methanol", amount=80},
      {type="fluid", name="nullius-carbon-dioxide", amount=60},
      {type="fluid", name="nullius-wastewater", amount=40}
    },
    main_product = "nullius-methanol"
  },
  {
    type = "recipe",
    name = "nullius-boxed-fermentation",
    localised_name = {"recipe-name.nullius-boxed", {"recipe-name.nullius-fermentation"}},
    icons = {
      {
        icon = ICONPATH .. "crate.png",
        icon_size = 64
      },
      data.raw.fluid["nullius-methanol"].icons[2],
      data.raw.fluid["nullius-methanol"].icons[3],
      data.raw.fluid["nullius-methanol"].icons[4],
      {
        icon = ICONPATH .. "sugar.png",
        icon_size = 64,
        scale = 0.23,
        shift = {-8, -8}
      }
    },
    enabled = false,
    always_show_made_in = true,
    show_amount_in_title = false,
    always_show_products = true,
    category = "distillation",
    subgroup = "boxed-biology",
    order = "nullius-fc",
    crafting_machine_tint = { primary = data.raw.fluid["nullius-methanol"].flow_color },
    energy_required = 50,
    ingredients = {
      {type="item", name="nullius-box-sugar", amount=6},
      {type="fluid", name="nullius-freshwater", amount=500},
      {type="fluid", name="nullius-bacteria", amount=5}
    },
    results = {
      {type="fluid", name="nullius-methanol", amount=400},
      {type="fluid", name="nullius-carbon-dioxide", amount=300},
      {type="fluid", name="nullius-wastewater", amount=200}
    },
    main_product = "nullius-methanol"
  },
  {
    type = "recipe",
    name = "nullius-glycolysis",
    localised_name = {"recipe-name.nullius-glycolysis"},
    icons = {
      data.raw.fluid["nullius-glycerol"].icons[2],
      data.raw.fluid["nullius-glycerol"].icons[3],
      data.raw.fluid["nullius-glycerol"].icons[4],
      {
        icon = ICONPATH .. "sugar.png",
        icon_size = 64,
        scale = 0.25,
        shift = {-9, -11}
      },
      {
        icon = "__angelspetrochem__/graphics/icons/molecules/glycerol.png",
        icon_size = 72,
		scale = 0.23,
		shift = {-8, 12}
      }
    },
    enabled = false,
    always_show_made_in = true,
    show_amount_in_title = false,
    always_show_products = true,
    category = "distillation",
    subgroup = "biology-bacteria",
    order = "nullius-fg",
    crafting_machine_tint = { primary = data.raw.fluid["nullius-glycerol"].flow_color },
    energy_required = 2,
    ingredients = {
      {type="item", name="nullius-sugar", amount=10},
      {type="fluid", name="nullius-saline", amount=80},
      {type="fluid", name="nullius-bacteria", amount=1}
    },
    results = {
      {type="fluid", name="nullius-glycerol", amount=60},
      {type="fluid", name="nullius-methane", amount=15},
      {type="fluid", name="nullius-wastewater", amount=40}
    },
    main_product = "nullius-glycerol"
  },
  {
    type = "recipe",
    name = "nullius-boxed-glycolysis",
    localised_name = {"recipe-name.nullius-boxed", {"recipe-name.nullius-glycolysis"}},
    icons = {
      {
        icon = ICONPATH .. "crate.png",
        icon_size = 64
      },
      data.raw.fluid["nullius-glycerol"].icons[2],
      data.raw.fluid["nullius-glycerol"].icons[3],
      data.raw.fluid["nullius-glycerol"].icons[4],
      {
        icon = ICONPATH .. "sugar.png",
        icon_size = 64,
        scale = 0.23,
        shift = {-8, -10}
      },
      {
        icon = "__angelspetrochem__/graphics/icons/molecules/glycerol.png",
        icon_size = 72,
		scale = 0.21,
		shift = {-7, 11}
      }
    },
    enabled = false,
    always_show_made_in = true,
    show_amount_in_title = false,
    always_show_products = true,
    category = "distillation",
    subgroup = "boxed-biology",
    order = "nullius-fg",
    crafting_machine_tint = { primary = data.raw.fluid["nullius-glycerol"].flow_color },
    energy_required = 2,
    ingredients = {
      {type="item", name="nullius-box-sugar", amount=2},
      {type="fluid", name="nullius-saline", amount=80},
      {type="fluid", name="nullius-bacteria", amount=1}
    },
    results = {
      {type="fluid", name="nullius-glycerol", amount=60},
      {type="fluid", name="nullius-methane", amount=15},
      {type="fluid", name="nullius-wastewater", amount=40}
    },
    main_product = "nullius-glycerol"
  },
  {
    type = "recipe",
    name = "nullius-amino-acid-metabolism",
    localised_name = {"recipe-name.nullius-metabolism", {"fluid-name.nullius-amino-acid"}},
    icons = {
      data.raw.fluid["nullius-ammonia"].icons[2],
      data.raw.fluid["nullius-ammonia"].icons[3],
      data.raw.fluid["nullius-ammonia"].icons[4],
      {
        icon = ICONPATH .. "bacteria.png",
        icon_size = 64,
        scale = 0.35,
        shift = {-8, -9}
      }
    },
    enabled = false,
    always_show_made_in = true,
    show_amount_in_title = false,
    always_show_products = true,
    category = "distillation",
    subgroup = "biology-bacteria",
    order = "nullius-g",
    crafting_machine_tint = { primary = data.raw.fluid["nullius-ammonia"].flow_color },
    energy_required = 2,
    ingredients = {
      {type="fluid", name="nullius-amino-acids", amount=25},
      {type="fluid", name="nullius-bacteria", amount=1}
    },
    results = {
      {type="fluid", name="nullius-ammonia", amount=75},
      {type="fluid", name="nullius-methane", amount=30},
      {type="fluid", name="nullius-wastewater", amount=10}
    },
    main_product = "nullius-ammonia"
  },
  {
    type = "recipe",
    name = "nullius-nucleotide-metabolism",
    localised_name = {"recipe-name.nullius-metabolism", {"fluid-name.nullius-nucleotide"}},
    icons = {
      data.raw.fluid["nullius-amino-acids"].icons[2],
      data.raw.fluid["nullius-amino-acids"].icons[3],
      data.raw.fluid["nullius-amino-acids"].icons[4],
      {
        icon = ICONPATH .. "bacteria.png",
        icon_size = 64,
        scale = 0.35,
        shift = {-8, -9}
      }
    },
    enabled = false,
    always_show_made_in = true,
    show_amount_in_title = false,
    always_show_products = true,
    category = "distillation",
    subgroup = "biology-bacteria",
    order = "nullius-g",
    crafting_machine_tint = { primary = data.raw.fluid["nullius-nucleotides"].flow_color },
    energy_required = 3,
    ingredients = {
      {type="fluid", name="nullius-nucleotides", amount=8},
      {type="fluid", name="nullius-bacteria", amount=1}
    },
    results = {
      {type="fluid", name="nullius-amino-acids", amount=4},
      {type="item", name="nullius-sugar", amount=1},
      {type="fluid", name="nullius-methane", amount=5},
      {type="fluid", name="nullius-wastewater", amount=6}
    },
    main_product = "nullius-amino-acids"
  },

  {
    type = "item",
    name = "nullius-algae-genome",
    icons = {
      {
        icon = ICONPATH .. "algae.png",
        icon_size = 64,
		scale = 0.5
      },
      {
        icon = ICONPATH .. "genome.png",
        icon_size = 64,
        scale = 0.4
      }
    },
    subgroup = "biology-algae",
    order = "nullius-b",
    stack_size = 5
  },
  {
    type = "item",
    name = "nullius-algae-progenitor",
    icons = {{
      icon = ICONPATH .. "algae-progenitor.png",
      icon_size = 64
    }},
    subgroup = "biology-algae",
    order = "nullius-c",
    stack_size = 5
  },
  {
    type = "item",
    name = "nullius-algae",
    icons = {{
      icon = ICONPATH .. "algae.png",
      icon_size = 64
    }},
    subgroup = "biology-algae",
    order = "nullius-d",
    stack_size = 100
  },
  {
    type = "item",
    name = "nullius-algae-spore",
    icons = {
      {
        icon = ICONPATH .. "protocell.png",
        icon_size = 64,
        tint = {1, 1, 1, 0.8}
      },
      {
        icon = ICONPATH .. "algae.png",
        icon_size = 64,
        scale = 0.4
      }
    },
    subgroup = "biology-algae",
    order = "nullius-e",
    stack_size = 100
  },
  {
    type = "recipe",
    name = "nullius-algae-genome",
	localised_name = {"", {"item-name.nullius-algae-genome"}, " ", 1},
    enabled = false,
	show_amount_in_title = false,
    always_show_products = true,
    category = "nanotechnology",
    energy_required = 20,
    ingredients = {
      {type="item", name="nullius-bacteria-genome", amount=1},
      {type="fluid", name="nullius-nucleotides", amount=10, fluidbox_index=1},
      {type="item", name="nullius-climatology-pack", amount=12}
    },
    results = {
      {type="item", name="nullius-algae-genome", amount=1},
      {type="fluid", name="nullius-wastewater", amount=4}
    },
    main_product = "nullius-algae-genome"
  },
  {
    type = "recipe",
    name = "nullius-algae-genome-2",
    localised_name = {"", {"item-name.nullius-algae-genome"}, " ", 2},
	icons = {
      {
        icon = ICONPATH .. "algae.png",
        icon_size = 64,
		scale = 0.5
      },
      {
        icon = ICONPATH .. "genome.png",
        icon_size = 64,
        scale = 0.4,
        shift = {-3, 2}
      },
	  {
        icon = "__base__/graphics/icons/military-science-pack.png",
        icon_size = 64,
        icon_mipmaps = 4,
		scale = 0.3,
        shift = {9, -8},
        tint = {0.75, 0.72, 0.78}
      }
    },
    enabled = false,
	show_amount_in_title = false,
    always_show_products = true,
    category = "nanotechnology",
	order = "nullius-bc",
    energy_required = 30,
    ingredients = {
      {type="item", name="nullius-bacteria-genome", amount=1},
      {type="fluid", name="nullius-nucleotides", amount=16, fluidbox_index=1},
      {type="item", name="nullius-climatology-pack", amount=15},
      {type="item", name="nullius-astronomy-pack", amount=1}
    },
    results = {
      {type="item", name="nullius-algae-genome", amount=2},
      {type="fluid", name="nullius-wastewater", amount=6}
    },
    main_product = "nullius-algae-genome"
  },
  {
    type = "recipe",
    name = "nullius-algae-progenitor",
	localised_name = {"", {"item-name.nullius-algae-progenitor"}, " ", 1},
    enabled = false,
    category = "nanotechnology",
	order = "nullius-cb",
    energy_required = 150,
    ingredients = {
      {type="item", name="nullius-algae-genome", amount=1},
      {type="fluid", name="nullius-protocell", amount=8},
      {type="fluid", name="nullius-amino-acids", amount=5},
      {type="fluid", name="nullius-fatty-acids", amount=3},
      {type="item", name="nullius-sugar", amount=1},
      {type="item", name="nullius-cellulose", amount=1}
    },
    results = {
      {type="item", name="nullius-algae-progenitor", amount=1},
      {type="fluid", name="nullius-wastewater", amount=5}
    },
    main_product = "nullius-algae-progenitor"
  },
  {
    type = "recipe",
    name = "nullius-algae-progenitor-2",
	localised_name = {"", {"item-name.nullius-algae-progenitor"}, " ", 2},
	icons = {
	  {
        icon = ICONPATH .. "algae-progenitor.png",
        icon_size = 64
      },
	  {
        icon = ICONPATH .. "algae.png",
        icon_size = 64,
		scale = 0.36,
        shift = {-8, -8}
      }
	},
    enabled = false,
    category = "nanotechnology",
	order = "nullius-cc",
    energy_required = 250,
    ingredients = {
      {type="item", name="nullius-algae-genome", amount=1},
      {type="fluid", name="nullius-protocell", amount=8},
      {type="fluid", name="nullius-amino-acids", amount=5},
      {type="fluid", name="nullius-fatty-acids", amount=3},
      {type="item", name="nullius-sugar", amount=1},
	  {type="item", name="nullius-algae", amount=5},
      {type="item", name="nullius-algae-spore", amount=12}
    },
    results = {
      {type="item", name="nullius-algae-progenitor", amount=2},
      {type="fluid", name="nullius-wastewater", amount=25}
    },
    main_product = "nullius-algae-progenitor"
  },
  {
    type = "recipe",
    name = "nullius-algae-1",
    localised_name = {"", {"item-name.nullius-algae"}, " ", 1},
    icons = {
      {
        icon = ICONPATH .. "algae.png",
        icon_size = 64
      },
      {
        icon = ICONPATH .. "protocell.png",
        icon_size = 64,
        scale = 0.3,
        shift = {9, -9}
      }
    },
    enabled = false,
    allow_decomposition = false,
    category = "ore-flotation",
    order = "nullius-db",
    energy_required = 20,
    ingredients = {
      {type="fluid", name="nullius-seawater", amount=600},
      {type="fluid", name="nullius-air", amount=1000},
      {type="item", name="nullius-algae-progenitor", amount=1},
      {type="item", name="nullius-mineral-dust", amount=1}
    },
    results = {
      {type="item", name="nullius-algae", amount=2},
      {type="fluid", name="nullius-wastewater", amount=150},
      {type="fluid", name="nullius-oxygen", amount=400}
    },
    main_product = "nullius-algae"
  },
  {
    type = "recipe",
    name = "nullius-algae-2",
    localised_name = {"", {"item-name.nullius-algae"}, " ", 2},
    enabled = false,
    allow_decomposition = false,
    category = "ore-flotation",
    order = "nullius-dc",
    energy_required = 26,
    ingredients = {
      {type="fluid", name="nullius-seawater", amount=1400},
      {type="fluid", name="nullius-air", amount=3500},
      {type="item", name="nullius-algae-spore", amount=11},
      {type="item", name="nullius-mineral-dust", amount=3}
    },
    results = {
      {type="item", name="nullius-algae", amount=8},
      {type="fluid", name="nullius-wastewater", amount=400},
      {type="fluid", name="nullius-oxygen", amount=1200}
    },
    main_product = "nullius-algae"
  },
  {
    type = "recipe",
    name = "nullius-algae-3",
    localised_name = {"", {"item-name.nullius-algae"}, " ", 3},
	icons = {
	  {
        icon = ICONPATH .. "algae.png",
        icon_size = 64
      },
	  {
        icon = ICONPATH .. "genome.png",
        icon_size = 64,
		scale = 0.3,
        shift = {-10, -9}
      }
	},
    enabled = false,
    allow_decomposition = false,
    category = "ore-flotation",
    order = "nullius-dd",
    energy_required = 24,
    ingredients = {
      {type="fluid", name="nullius-seawater", amount=1200},
      {type="fluid", name="nullius-air", amount=3000},
      {type="item", name="nullius-algae-spore", amount=10},
      {type="item", name="nullius-mineral-dust", amount=3}
    },
    results = {
      {type="item", name="nullius-algae", amount=9},
      {type="fluid", name="nullius-wastewater", amount=450},
      {type="fluid", name="nullius-oxygen", amount=1400}
    },
    main_product = "nullius-algae"
  },
  {
    type = "recipe",
    name = "nullius-algae-spore",
    enabled = false,
    always_show_made_in = true,
    show_amount_in_title = false,
    always_show_products = true,
    category = "bio-harvesting",
	order = "nullius-eb",
    energy_required = 8,
    ingredients = {
      {type="item", name="nullius-algae", amount=5}
    },
    results = {
      {type="item", name="nullius-algae-spore", amount=9},
      {type="fluid", name="nullius-sludge", amount=25},
      {type="item", name="nullius-cellulose", amount=2}
    },
    main_product = "nullius-algae-spore"
  },
  {
    type = "recipe",
    name = "nullius-algae-harvest",
	localised_name = {"recipe-name.nullius-harvest", {"item-name.nullius-algae"}},
    icons = {
      {
        icon = ICONPATH .. "protocell.png",
        icon_size = 64,
        tint = {1, 1, 1, 0.8}
      },
      {
        icon = ICONPATH .. "algae.png",
        icon_size = 64,
        scale = 0.4
      },
	  {
	    icon = "__angelsrefining__/graphics/icons/solid-limestone.png",
        icon_size = 32,
		scale = 0.48,
		shift = {11, 10}
	  },
	  {
	    icon = "__angelspetrochem__/graphics/icons/molecules/sulfur-dioxide.png",
        icon_size = 72,
		scale = 0.2,
		shift = {-10, 10}
	  }
    },
    enabled = false,
    always_show_made_in = true,
    show_amount_in_title = false,
    always_show_products = true,
    category = "distillation",
    crafting_machine_tint = { primary = data.raw.fluid["nullius-fatty-acids"].flow_color },
	order = "nullius-ec",
    energy_required = 40,
    ingredients = {
      {type="item", name="nullius-algae", amount=18},
	  {type="fluid", name="nullius-saline", amount=100}
    },
    results = {
      {type="item", name="nullius-algae-spore", amount=33},
      {type="fluid", name="nullius-wastewater", amount=120},
	  {type="fluid", name="nullius-sulfur-dioxide", amount=65},
	  {type="fluid", name="nullius-fatty-acids", amount=40},
      {type="item", name="nullius-cellulose", amount=7},
      {type="item", name="nullius-crushed-limestone", amount=5}
    },
    main_product = "nullius-algae-spore"
  },
  {
    type = "recipe",
    name = "nullius-algae-spore-disposal",
    localised_name = {"recipe-name.nullius-disposal", {"item-name.nullius-algae-spore"}},
    icons = {
      {
        icon = FLUIDPATH .. "wastewater.png",
        icon_size = 64
      },
      {
        icon = ICONPATH .. "protocell.png",
        icon_size = 64,
        tint = {1, 1, 1, 0.8},
        scale = 0.4,
        shift = {-8, -4}
      },
      {
        icon = ICONPATH .. "algae.png",
        icon_size = 64,
        scale = 0.32,
        shift = {-8, -4}
      }
    },
    enabled = false,
    always_show_made_in = true,
    show_amount_in_title = false,
    always_show_products = true,
    category = "bio-harvesting",
	subgroup = "biology-disposal",
    order = "nullius-c",
    energy_required = 1,
    ingredients = {
      {type="item", name="nullius-algae-spore", amount=4},
	  {type="fluid", name="nullius-seawater", amount=12}
    },
    results = {
      {type="fluid", name="nullius-wastewater", amount=18}
    },
    main_product = "nullius-wastewater"
  },
  {
    type = "recipe",
    name = "nullius-biomass-cultivation",
    localised_name = {"recipe-name.nullius-biomass-cultivation"},
    icons = {
      {
        icon = "__base__/graphics/icons/fluid/light-oil.png",
        icon_size = 64,
        icon_mipmaps = 4,
        scale = 0.5
      },
      {
        icon = ICONPATH .. "algae.png",
        icon_size = 64,
        scale = 0.36,
        shift = {-4, -4}
      }
    },
    enabled = false,
    always_show_made_in = true,
    show_amount_in_title = false,
    always_show_products = true,
	allow_decomposition = false,
    allow_as_intermediate = false,
    category = "ore-flotation",
    subgroup = "biology-algae",
    order = "nullius-f",
    energy_required = 60,
    ingredients = {
      {type="item", name="nullius-algae-spore", amount=4},
      {type="item", name="nullius-mineral-dust", amount=20},
      {type="fluid", name="nullius-wastewater", amount=600},
      {type="fluid", name="nullius-bacteria", amount=5}
    },
    results = {
      {type="item", name="nullius-cellulose", amount=10},
      {type="fluid", name="nullius-oil", amount=200},
      {type="fluid", name="nullius-methane", amount=250}
    },
    main_product = "nullius-oil"
  },
  {
    type = "recipe",
    name = "nullius-boxed-biomass-cultivation",
    localised_name = {"recipe-name.nullius-boxed", {"recipe-name.nullius-biomass-cultivation"}},
    icons = {
      {
        icon = ICONPATH .. "crate.png",
        icon_size = 64
      },
      {
        icon = "__base__/graphics/icons/fluid/light-oil.png",
        icon_size = 64,
        icon_mipmaps = 4,
        scale = 0.45
      },
      {
        icon = ICONPATH .. "algae.png",
        icon_size = 64,
        scale = 0.33,
        shift = {-4, -4}
      }
    },
    enabled = false,
    always_show_made_in = true,
    show_amount_in_title = false,
    always_show_products = true,
	allow_decomposition = false,
    allow_as_intermediate = false,
    category = "ore-flotation",
    subgroup = "boxed-biology",
    order = "nullius-fd",
    energy_required = 60,
    ingredients = {
      {type="item", name="nullius-algae-spore", amount=4},
      {type="item", name="nullius-box-mineral-dust", amount=4},
      {type="fluid", name="nullius-wastewater", amount=600},
      {type="fluid", name="nullius-bacteria", amount=5}
    },
    results = {
      {type="item", name="nullius-box-cellulose", amount=2},
      {type="fluid", name="nullius-oil", amount=200},
      {type="fluid", name="nullius-methane", amount=250}
    },
    main_product = "nullius-oil"
  },

  {
    type = "item",
    name = "nullius-grass-genome",
    icons = {
      {
        icon = ICONPATH .. "grass.png",
        icon_size = 64,
		scale = 0.5
      },
      {
        icon = ICONPATH .. "genome.png",
        icon_size = 64,
        scale = 0.35
      }
    },
    subgroup = "biology-grass",
    order = "nullius-b",
    stack_size = 5
  },
  {
    type = "item",
    name = "nullius-grass-progenitor",
    icons = {{
      icon = ICONPATH .. "grass-progenitor.png",
      icon_size = 64
    }},
    subgroup = "biology-grass",
    order = "nullius-c",
    stack_size = 5
  },
  {
    type = "item",
    name = "nullius-grass",
    icons = {{
      icon = ICONPATH .. "grass.png",
      icon_size = 64
    }},
    subgroup = "biology-grass",
    order = "nullius-d",
    stack_size = 100
  },
  {
    type = "item",
    name = "nullius-grass-seed",
    icons = {
      {
        icon = ICONPATH .. "protocell.png",
        icon_size = 64,
        tint = {1, 1, 1, 0.8}
      },
      {
        icon = ICONPATH .. "grass.png",
        icon_size = 64,
        scale = 0.45,
      }
    },
    subgroup = "biology-grass",
    order = "nullius-e",
    stack_size = 200
  },
  {
    type = "recipe",
    name = "nullius-grass-genome",
	localised_name = {"", {"item-name.nullius-grass-genome"}, " ", 1},
    enabled = false,
    category = "nanotechnology",
    energy_required = 30,
    ingredients = {
      {type="fluid", name="nullius-nucleotides", amount=12, fluidbox_index=1},
      {type="fluid", name="nullius-bacteria", amount=1, fluidbox_index=2},
      {type="item", name="nullius-algae-genome", amount=1},
      {type="item", name="nullius-geology-pack", amount=6}
    },
    results = {
      {type="item", name="nullius-grass-genome", amount=1},
      {type="fluid", name="nullius-wastewater", amount=5}
    },
    main_product = "nullius-grass-genome"
  },
  {
    type = "recipe",
    name = "nullius-grass-genome-2",
    localised_name = {"", {"item-name.nullius-grass-genome"}, " ", 2},
	icons = {
      {
        icon = ICONPATH .. "grass.png",
        icon_size = 64,
		scale = 0.5
      },
      {
        icon = ICONPATH .. "genome.png",
        icon_size = 64,
        scale = 0.4,
        shift = {-3, 2}
      },
	  {
        icon = "__base__/graphics/icons/military-science-pack.png",
        icon_size = 64,
        icon_mipmaps = 4,
		scale = 0.3,
        shift = {9, -8},
        tint = {0.75, 0.72, 0.78}
      }
    },
    enabled = false,
	show_amount_in_title = false,
    always_show_products = true,
    category = "nanotechnology",
	order = "nullius-bc",
    energy_required = 45,
    ingredients = {
      {type="fluid", name="nullius-nucleotides", amount=20, fluidbox_index=1},
      {type="fluid", name="nullius-bacteria", amount=2, fluidbox_index=2},
      {type="item", name="nullius-algae-genome", amount=1},
      {type="item", name="nullius-geology-pack", amount=8},
      {type="item", name="nullius-astronomy-pack", amount=1}
    },
    results = {
      {type="item", name="nullius-grass-genome", amount=2},
      {type="fluid", name="nullius-wastewater", amount=8}
    },
    main_product = "nullius-grass-genome"
  },
  {
    type = "recipe",
    name = "nullius-grass-progenitor",
	localised_name = {"", {"item-name.nullius-grass-progenitor"}, " ", 1},
    enabled = false,
    category = "nanotechnology",
	order = "nullius-cb",
    energy_required = 200,
    ingredients = {
      {type="item", name="nullius-grass-genome", amount=1},
      {type="fluid", name="nullius-protocell", amount=10},
      {type="fluid", name="nullius-amino-acids", amount=8},
      {type="fluid", name="nullius-fatty-acids", amount=5},
      {type="item", name="nullius-sugar", amount=3},
      {type="item", name="nullius-cellulose", amount=2}
    },
    results = {
      {type="item", name="nullius-grass-progenitor", amount=1},
      {type="fluid", name="nullius-wastewater", amount=8}
    },
    main_product = "nullius-grass-progenitor"
  },
  {
    type = "recipe",
    name = "nullius-grass-progenitor-2",
	localised_name = {"", {"item-name.nullius-grass-progenitor"}, " ", 2},
	icons = {
	  {
        icon = ICONPATH .. "grass-progenitor.png",
        icon_size = 64
      },
	  {
        icon = ICONPATH .. "grass.png",
        icon_size = 64,
		scale = 0.36,
        shift = {-8, -8}
      }
	},
    enabled = false,
    category = "nanotechnology",
	order = "nullius-cc",
    energy_required = 350,
    ingredients = {
      {type="item", name="nullius-grass-genome", amount=1},
      {type="fluid", name="nullius-protocell", amount=10},
      {type="fluid", name="nullius-amino-acids", amount=8},
      {type="fluid", name="nullius-fatty-acids", amount=5},
      {type="item", name="nullius-sugar", amount=3},
      {type="item", name="nullius-grass", amount=10},
	  {type="item", name="nullius-grass-seed", amount=25}
    },
    results = {
      {type="item", name="nullius-grass-progenitor", amount=2},
      {type="fluid", name="nullius-wastewater", amount=30}
    },
    main_product = "nullius-grass-progenitor"
  },
  {
    type = "recipe",
    name = "nullius-grass-1",
    localised_name = {"", {"item-name.nullius-grass"}, " ", 1},
    icons = {
      {
        icon = ICONPATH .. "grass.png",
        icon_size = 64
      },
      {
        icon = ICONPATH .. "protocell.png",
        icon_size = 64,
        scale = 0.3,
        shift = {9, -9}
      }
    },
    enabled = false,
    allow_decomposition = false,
    category = "nullius-water-treatment",
    order = "nullius-db",
    energy_required = 30,
    ingredients = {
      {type="fluid", name="nullius-freshwater", amount=300},
      {type="fluid", name="nullius-air", amount=1200},
      {type="item", name="nullius-land-fill-bauxite", amount=1},
      {type="item", name="nullius-grass-progenitor", amount=1}
    },
    results = {
      {type="item", name="nullius-grass", amount=2},
      {type="fluid", name="nullius-sludge", amount=10},
      {type="fluid", name="nullius-oxygen", amount=400}
    },
    main_product = "nullius-grass"
  },
  {
    type = "recipe",
    name = "nullius-grass-2",
    localised_name = {"", {"item-name.nullius-grass"}, " ", 2},
    enabled = false,
    allow_decomposition = false,
    category = "nullius-water-treatment",
    order = "nullius-dc",
    energy_required = 40,
    ingredients = {
      {type="fluid", name="nullius-freshwater", amount=1100},
      {type="fluid", name="nullius-air", amount=4500},
      {type="item", name="nullius-land-fill-bauxite", amount=2},
      {type="item", name="nullius-fertilizer", amount=2},
      {type="item", name="nullius-grass-seed", amount=15}
    },
    results = {
      {type="item", name="nullius-grass", amount=8},
      {type="fluid", name="nullius-sludge", amount=40},
      {type="fluid", name="nullius-oxygen", amount=1600}
    },
    main_product = "nullius-grass"
  },
  {
    type = "recipe",
    name = "nullius-grass-3",
    localised_name = {"", {"item-name.nullius-grass"}, " ", 3},
	icons = {
	  {
        icon = ICONPATH .. "grass.png",
        icon_size = 64
      },
	  {
        icon = ICONPATH .. "genome.png",
        icon_size = 64,
		scale = 0.3,
        shift = {-10, -9}
      }
	},
    enabled = false,
    allow_decomposition = false,
    category = "nullius-water-treatment",
    order = "nullius-dd",
    energy_required = 36,
    ingredients = {
      {type="fluid", name="nullius-freshwater", amount=1000},
      {type="fluid", name="nullius-air", amount=4000},
      {type="item", name="nullius-land-fill-bauxite", amount=2},
      {type="item", name="nullius-fertilizer", amount=2},
      {type="item", name="nullius-grass-seed", amount=14}
    },
    results = {
      {type="item", name="nullius-grass", amount=9},
      {type="fluid", name="nullius-sludge", amount=45},
      {type="fluid", name="nullius-oxygen", amount=1800}
    },
    main_product = "nullius-grass"
  },
  {
    type = "recipe",
    name = "nullius-grass-seed",
    enabled = false,
    always_show_made_in = true,
    show_amount_in_title = false,
    always_show_products = true,
    category = "bio-harvesting",
    energy_required = 5,
    ingredients = {
      {type="item", name="nullius-grass", amount=5},
      {type="fluid", name="nullius-water", amount=15}
    },
    results = {
      {type="item", name="nullius-grass-seed", amount=20},
      {type="fluid", name="nullius-sludge", amount=12},
      {type="item", name="nullius-cellulose", amount=20}
    },
    main_product = "nullius-grass-seed"
  },
  {
    type = "recipe",
    name = "nullius-boxed-grass-seed",
    enabled = false,
    always_show_made_in = true,
    show_amount_in_title = false,
    always_show_products = true,
    category = "bio-harvesting",
    subgroup = "boxed-biology",
    order = "nullius-bb",
    energy_required = 25,
    ingredients = {
      {type="item", name="nullius-grass", amount=25},
      {type="fluid", name="nullius-water", amount=75}
    },
    results = {
      {type="item", name="nullius-box-grass-seed", amount=20},
      {type="fluid", name="nullius-sludge", amount=60},
      {type="item", name="nullius-box-cellulose", amount=20}
    },
    main_product = "nullius-box-grass-seed"
  },
  {
    type = "recipe",
    name = "nullius-grass-seed-milling",
    localised_name = {"recipe-name.nullius-grass-seed-milling"},
    icons = {
      {
        icon = "__base__/graphics/decorative/brown-asterisk/hr-brown-asterisk-11.png",
        icon_size = 54
      },
      {
        icon = ICONPATH .. "protocell.png",
        icon_size = 64,
        tint = {1, 1, 1, 0.8},
        scale = 0.4,
        shift = {-8, -7}
      },
      {
        icon = ICONPATH .. "grass.png",
        icon_size = 64,
        scale = 0.36,
        shift = {-8, -7}
      }
    },
    enabled = false,
    always_show_made_in = true,
    show_amount_in_title = false,
    always_show_products = true,
    category = "bio-harvesting",
    subgroup = "biology-grass",
    order = "nullius-g",
    energy_required = 2,
    ingredients = {
      {type="item", name="nullius-grass-seed", amount=4}
    },
    results = {
      {type="item", name="nullius-cellulose", amount=2},
      {type="item", name="nullius-sugar", amount=3}
    },
    main_product = "nullius-cellulose"
  },
  {
    type = "recipe",
    name = "nullius-boxed-grass-seed-milling",
    localised_name = {"recipe-name.nullius-boxed", {"recipe-name.nullius-grass-seed-milling"}},
    icons = {
      {
        icon = ICONPATH .. "crate.png",
        icon_size = 64
      },
      {
        icon = "__base__/graphics/decorative/brown-asterisk/hr-brown-asterisk-11.png",
        icon_size = 54,
        scale = 0.5333
      },
      {
        icon = ICONPATH .. "protocell.png",
        icon_size = 64,
        tint = {1, 1, 1, 0.8},
        scale = 0.36,
        shift = {-7, -6}
      },
      {
        icon = ICONPATH .. "grass.png",
        icon_size = 64,
        scale = 0.32,
        shift = {-7, -6}
      }
    },
    enabled = false,
    always_show_made_in = true,
    show_amount_in_title = false,
    always_show_products = true,
    category = "bio-harvesting",
    subgroup = "boxed-biology",
    order = "nullius-bc",
    energy_required = 10,
    ingredients = {
      {type="item", name="nullius-box-grass-seed", amount=4}
    },
    results = {
      {type="item", name="nullius-box-cellulose", amount=2},
      {type="item", name="nullius-box-sugar", amount=3}
    },
    main_product = "nullius-box-cellulose"
  },

  {
    type = "recipe",
    name = "nullius-cellulose-burning",
    localised_name = {"recipe-name.nullius-burning", {"item-name.nullius-cellulose"}},
    icons = {
      data.raw.fluid["nullius-carbon-dioxide"].icons[2],
      data.raw.fluid["nullius-carbon-dioxide"].icons[3],
      data.raw.fluid["nullius-carbon-dioxide"].icons[4],
      {
        icon = "__base__/graphics/decorative/brown-asterisk/hr-brown-asterisk-11.png",
        icon_size = 54,
        scale = 0.32,
        shift = {-8, -8}
      }
    },
    enabled = false,
    category = "combustion",
    subgroup = "biology-burning",
    order = "nullius-d",
    energy_required = 1,
    ingredients = {
      {type="item", name="nullius-cellulose", amount=8},
      {type="fluid", name="nullius-oxygen", amount=70}
    },
    results = {
      {type="item", name="nullius-graphite", amount=2},
      {type="fluid", name="nullius-carbon-dioxide", amount=140}
    }
  },
  {
    type = "recipe",
    name = "nullius-boxed-cellulose-burning",
    localised_name = {"recipe-name.nullius-boxed", {"recipe-name.nullius-burning",
        {"item-name.nullius-cellulose"}}},
    icons = {
      {
        icon = ICONPATH .. "crate.png",
        icon_size = 64
      },
      data.raw.fluid["nullius-carbon-dioxide"].icons[2],
      data.raw.fluid["nullius-carbon-dioxide"].icons[3],
      data.raw.fluid["nullius-carbon-dioxide"].icons[4],
      {
        icon = "__base__/graphics/decorative/brown-asterisk/hr-brown-asterisk-11.png",
        icon_size = 54,
        scale = 0.29,
        shift = {-7, -7}
      }
    },
    enabled = false,
    category = "combustion",
    subgroup = "boxed-biology-burning",
    order = "nullius-d",
    energy_required = 5,
    ingredients = {
      {type="item", name="nullius-box-cellulose", amount=8},
      {type="fluid", name="nullius-oxygen", amount=350}
    },
    results = {
      {type="item", name="nullius-box-graphite", amount=2},
      {type="fluid", name="nullius-carbon-dioxide", amount=700}
    }
  },
  {
    type = "recipe",
    name = "nullius-cellulose-pyrolysis",
    localised_name = {"", {"recipe-name.nullius-pyrolysis",
	    {"item-name.nullius-cellulose"}}, " ", 1},
    icons = {
      {
        icon = "__base__/graphics/icons/coal-dark-background.png",
        icon_size = 64,
        icon_mipmaps = 4
      },
      {
        icon = "__base__/graphics/decorative/brown-asterisk/hr-brown-asterisk-11.png",
        icon_size = 54,
        scale = 0.32,
        shift = {-8, -8}
      }
    },
    enabled = false,
    category = "wet-smelting",
    subgroup = "biology-burning",
    order = "nullius-e",
    energy_required = 3,
    ingredients = {
      {type="item", name="nullius-cellulose", amount=3},
      {type="fluid", name="nullius-nitrogen", amount=25}
    },
    results = {
      {type="item", name="nullius-graphite", amount=2},
      {type="fluid", name="nullius-carbon-monoxide", amount=12}
    }
  },
  {
    type = "recipe",
    name = "nullius-boxed-cellulose-pyrolysis",
    localised_name = {"recipe-name.nullius-boxed", {"", {"recipe-name.nullius-pyrolysis",
        {"item-name.nullius-cellulose"}}, " ", 1}},
    icons = {
      {
        icon = ICONPATH .. "crate.png",
        icon_size = 64
      },
      {
        icon = "__base__/graphics/icons/coal-dark-background.png",
        icon_size = 64,
        icon_mipmaps = 4,
        scale = 0.45
      },
      {
        icon = "__base__/graphics/decorative/brown-asterisk/hr-brown-asterisk-11.png",
        icon_size = 54,
        scale = 0.29,
        shift = {-7, -7}
      }
    },
    enabled = false,
    category = "bulk-smelting",
    subgroup = "boxed-biology-burning",
    order = "nullius-e",
    energy_required = 3,
    ingredients = {
      {type="item", name="nullius-box-cellulose", amount=3},
      {type="fluid", name="nullius-nitrogen", amount=125}
    },
    results = {
      {type="item", name="nullius-box-graphite", amount=2},
      {type="fluid", name="nullius-carbon-monoxide", amount=60}
    }
  },
  {
    type = "recipe",
    name = "nullius-cellulose-pyrolysis-2",
    localised_name = {"", {"recipe-name.nullius-pyrolysis",
	    {"item-name.nullius-cellulose"}}, " ", 2},
    icons = {
	  {
        icon = ICONPATH .. "carbon-fiber.png",
        icon_size = 128
      },
      {
        icon = "__base__/graphics/decorative/brown-asterisk/hr-brown-asterisk-11.png",
        icon_size = 54,
        scale = 0.37,
        shift = {-7, -7}
      }
	},
    enabled = false,
    category = "wet-smelting",
    subgroup = "biology-burning",
    order = "nullius-f",
    energy_required = 12,
    ingredients = {
      {type="item", name="nullius-cellulose", amount=5},
      {type="fluid", name="nullius-argon", amount=4}
    },
    results = {
	  {type="item", name="nullius-carbon-fiber", amount=1},
      {type="item", name="nullius-graphite", amount=1},
      {type="fluid", name="nullius-carbon-monoxide", amount=8}
    }
  },
  {
    type = "recipe",
    name = "nullius-boxed-cellulose-pyrolysis-2",
    localised_name = {"recipe-name.nullius-boxed", {"", {"recipe-name.nullius-pyrolysis",
        {"item-name.nullius-cellulose"}}, " ", 2}},
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
        icon = "__base__/graphics/decorative/brown-asterisk/hr-brown-asterisk-11.png",
        icon_size = 54,
        scale = 0.33,
        shift = {-6, -6}
      }
	},
    enabled = false,
    category = "bulk-smelting",
    subgroup = "boxed-biology-burning",
    order = "nullius-f",
    energy_required = 12,
    ingredients = {
      {type="item", name="nullius-box-cellulose", amount=5},
      {type="fluid", name="nullius-argon", amount=20}
    },
    results = {
	  {type="item", name="nullius-box-carbon-fiber", amount=1},
      {type="item", name="nullius-box-graphite", amount=1},
      {type="fluid", name="nullius-carbon-monoxide", amount=40}
    }
  },
  {
    type = "recipe",
    name = "nullius-wood-burning",
    localised_name = {"recipe-name.nullius-burning", {"item-name.nullius-wood"}},
    icons = {
      {
        icon = "__base__/graphics/icons/fluid/steam.png",
        icon_size = 64,
        icon_mipmaps = 4
      },
      {
        icon = "__base__/graphics/icons/wood.png",
        icon_size = 64,
        icon_mipmaps = 4,
        scale = 0.3,
        shift = {-8, -7}
      }
    },
    enabled = false,
    category = "combustion",
    subgroup = "biology-burning",
    order = "nullius-ca",
    energy_required = 1,
    ingredients = {
      {type="item", name="nullius-wood", amount=2},
      {type="fluid", name="nullius-water", amount=120},
      {type="fluid", name="nullius-oxygen", amount=50}
    },
    results = {
      {type="item", name="nullius-graphite", amount=1},
      {type="fluid", name="nullius-steam", amount=700},
      {type="fluid", name="nullius-carbon-dioxide", amount=50}
    },
    main_product = "nullius-steam"
  },
  {
    type = "recipe",
    name = "nullius-boxed-wood-burning",
    localised_name = {"recipe-name.nullius-boxed", {"recipe-name.nullius-burning",
        {"item-name.nullius-wood"}}},
    icons = {
      {
        icon = ICONPATH .. "crate.png",
        icon_size = 64
      },
      {
        icon = "__base__/graphics/icons/fluid/steam.png",
        icon_size = 64,
        icon_mipmaps = 4,
        scale = 0.45
      },
      {
        icon = "__base__/graphics/icons/wood.png",
        icon_size = 64,
        icon_mipmaps = 4,
        scale = 0.27,
        shift = {-7, -6}
      }
    },
    enabled = false,
    category = "combustion",
    subgroup = "boxed-biology-burning",
    order = "nullius-ca",
    energy_required = 5,
    ingredients = {
      {type="item", name="nullius-box-wood", amount=2},
      {type="fluid", name="nullius-water", amount=600},
      {type="fluid", name="nullius-oxygen", amount=250}
    },
    results = {
      {type="item", name="nullius-box-graphite", amount=1},
      {type="fluid", name="nullius-steam", amount=3500},
      {type="fluid", name="nullius-carbon-dioxide", amount=250}
    },
    main_product = "nullius-steam"
  },
  {
    type = "recipe",
    name = "nullius-wood-chip-burning",
    localised_name = {"recipe-name.nullius-burning", {"item-name.nullius-wood-chip"}},
    icons = {
      {
        icon = "__base__/graphics/icons/fluid/steam.png",
        icon_size = 64,
        icon_mipmaps = 4
      },
      {
	  	icon = ICONPATH .. "wood-chip.png",
        icon_size = 64,
        scale = 0.3,
        shift = {-8, -9}
      }
    },
    enabled = false,
    category = "combustion",
    subgroup = "biology-burning",
    order = "nullius-cb",
    energy_required = 1,
    ingredients = {
      {type="item", name="nullius-wood-chip", amount=8},
      {type="fluid", name="nullius-water", amount=160},
      {type="fluid", name="nullius-oxygen", amount=80}
    },
    results = {
      {type="item", name="nullius-graphite", amount=2},
      {type="fluid", name="nullius-steam", amount=1000},
      {type="fluid", name="nullius-carbon-dioxide", amount=100}
    },
    main_product = "nullius-steam"
  },
  {
    type = "recipe",
    name = "nullius-boxed-wood-chip-burning",
    localised_name = {"recipe-name.nullius-boxed", {"recipe-name.nullius-burning",
        {"item-name.nullius-wood-chip"}}},
    icons = {
      {
        icon = ICONPATH .. "crate.png",
        icon_size = 64
      },
      {
        icon = "__base__/graphics/icons/fluid/steam.png",
        icon_size = 64,
        icon_mipmaps = 4,
        scale = 0.45
      },
      {
	  	icon = ICONPATH .. "wood-chip.png",
        icon_size = 64,
        scale = 0.27,
        shift = {-7, -8}
      }
    },
    enabled = false,
    category = "combustion",
    subgroup = "boxed-biology-burning",
    order = "nullius-cb",
    energy_required = 5,
    ingredients = {
      {type="item", name="nullius-box-wood-chip", amount=8},
      {type="fluid", name="nullius-water", amount=800},
      {type="fluid", name="nullius-oxygen", amount=400}
    },
    results = {
      {type="item", name="nullius-box-graphite", amount=2},
      {type="fluid", name="nullius-steam", amount=5000},
      {type="fluid", name="nullius-carbon-dioxide", amount=500}
    },
    main_product = "nullius-steam"
  },
  {
    type = "recipe",
    name = "nullius-wood-chip-pyrolysis",
    localised_name = {"recipe-name.nullius-pyrolysis", {"item-name.nullius-wood-chip"}},
    icons = {
      {
	    icon = "__base__/graphics/icons/coal-dark-background.png",
        icon_size = 64,
        icon_mipmaps = 4
      },
      {
	  	icon = ICONPATH .. "wood-chip.png",
        icon_size = 64,
        scale = 0.3,
        shift = {-8, -9}
      }
    },
    enabled = false,
    category = "wet-smelting",
    subgroup = "biology-burning",
    order = "nullius-cc",
    energy_required = 5,
    ingredients = {
      {type="item", name="nullius-wood-chip", amount=4},
      {type="fluid", name="nullius-nitrogen", amount=35}
    },
    results = {
      {type="item", name="nullius-graphite", amount=3},
      {type="fluid", name="nullius-carbon-monoxide", amount=10}
    }
  },
  {
    type = "recipe",
    name = "nullius-boxed-wood-chip-pyrolysis",
    localised_name = {"recipe-name.nullius-boxed", {"recipe-name.nullius-pyrolysis",
        {"item-name.nullius-wood-chip"}}},
    icons = {
      {
        icon = ICONPATH .. "crate.png",
        icon_size = 64
      },
      {
	    icon = "__base__/graphics/icons/coal-dark-background.png",
        icon_size = 64,
        icon_mipmaps = 4,
        scale = 0.45
      },
      {
	  	icon = ICONPATH .. "wood-chip.png",
        icon_size = 64,
        scale = 0.27,
        shift = {-7, -8}
      }
    },
    enabled = false,
    category = "bulk-smelting",
    subgroup = "boxed-biology-burning",
    order = "nullius-cc",
    energy_required = 5,
	ingredients = {
      {type="item", name="nullius-box-wood-chip", amount=4},
      {type="fluid", name="nullius-nitrogen", amount=175}
    },
    results = {
      {type="item", name="nullius-box-graphite", amount=3},
      {type="fluid", name="nullius-carbon-monoxide", amount=50}
    }
  },
  {
    type = "recipe",
    name = "nullius-coal",
    enabled = false,
    category = "distillation",
    subgroup = "biology-burning",
	order = "nullius-b",
	crafting_machine_tint = {
      primary = data.raw.fluid["nullius-petroleum"].flow_color,
      secondary = data.raw.fluid["nullius-petroleum"].flow_color
    },
	energy_required = 15,
    ingredients = {
      {type="item", name="nullius-graphite", amount=12},
	  {type="item", name="nullius-rubber", amount=1},
      {type="fluid", name="nullius-biodiesel", amount=10},
      {type="fluid", name="nullius-compressed-nitrogen", amount=50}
    },
    results = {
      {type="item", name="nullius-coal", amount=9},
      {type="fluid", name="nullius-carbon-monoxide", amount=30},
      {type="fluid", name="nullius-nitrogen", amount=120}
    },
    main_product = "nullius-coal"
  },
  {
    type = "recipe",
    name = "nullius-boxed-coal",
    enabled = false,
    category = "distillation",
    subgroup = "boxed-biology-burning",
	order = "nullius-b",
	crafting_machine_tint = {
      primary = data.raw.fluid["nullius-petroleum"].flow_color,
      secondary = data.raw.fluid["nullius-petroleum"].flow_color
    },
    energy_required = 75,
    ingredients = {
      {type="item", name="nullius-box-graphite", amount=12},
	  {type="item", name="nullius-box-rubber", amount=1},
      {type="fluid", name="nullius-biodiesel", amount=50},
      {type="fluid", name="nullius-compressed-nitrogen", amount=250}
    },
    results = {
      {type="item", name="nullius-box-coal", amount=9},
      {type="fluid", name="nullius-carbon-monoxide", amount=150},
      {type="fluid", name="nullius-nitrogen", amount=600}
    },
    main_product = "nullius-box-coal"
  },
  {
    type = "recipe",
    name = "nullius-petroleum",
    enabled = false,
    category = "basic-chemistry",
	subgroup = "biology-oil",
    order = "nullius-e",
	crafting_machine_tint = {
      primary = data.raw.fluid["nullius-petroleum"].flow_color,
      secondary = data.raw.fluid["nullius-petroleum"].flow_color
    },
    energy_required = 4,
    ingredients = {
      {type="fluid", name="nullius-fatty-acids", amount=10},
      {type="fluid", name="nullius-propene", amount=6},
      {type="fluid", name="nullius-compressed-hydrogen", amount=1}
    },
    results = {
      {type="fluid", name="nullius-petroleum", amount=8},
      {type="fluid", name="nullius-carbon-dioxide", amount=10}
    },
    main_product = "nullius-petroleum"
  },
  {
    type = "recipe",
    name = "nullius-sequestration-coal-drone",
    enabled = false,
    always_show_made_in = true,
    category = "huge-assembly",
    energy_required = 300,
    ingredients = {
      {"nullius-terraforming-drone-grey", 1},
      {"nullius-box-rocket-fuel", 20},
      {"nullius-box-coal", 30000},
      {"nullius-large-dispatch-chest-2", 1},
      {"nullius-large-miner-2", 4}
    },
    result = "nullius-sequestration-coal-drone"
  },
  {
    type = "recipe",
    name = "nullius-sequestration-coal-remote",
    enabled = false,
    always_show_made_in = true,
    no_productivity = true,
    category = "small-crafting",
    energy_required = 10,
    ingredients = {
      {"nullius-terraforming-remote-grey", 1},
      {"nullius-yield-module-3", 1}
    },
    result = "nullius-sequestration-coal-remote"
  },
  {
    type = "recipe",
    name = "nullius-sequestration-petroleum-drone",
    enabled = false,
    always_show_made_in = true,
    category = "huge-assembly",
    energy_required = 240,
    ingredients = {
      {type="item", name="nullius-terraforming-drone-tan", amount=1},
      {type="item", name="nullius-box-rocket-fuel", amount=20},
      {type="item", name="nullius-petroleum-barrel", amount=10000},
      {type="item", name="nullius-extractor-2", amount=3}
    },
	results = {
      {type="item", name="nullius-sequestration-petroleum-drone", amount=1},
      {type="item", name="nullius-box-barrel", amount=1500}
    },
    main_product = "nullius-sequestration-petroleum-drone"
  },
  {
    type = "recipe",
    name = "nullius-sequestration-petroleum-remote",
    enabled = false,
    always_show_made_in = true,
    no_productivity = true,
    category = "small-crafting",
    energy_required = 10,
    ingredients = {
      {"nullius-terraforming-remote-tan", 1},
      {"nullius-yield-module-3", 1}
    },
    result = "nullius-sequestration-petroleum-remote"
  },

  {
    type = "item",
    name = "nullius-worm-genome",
    icons = {
      {
        icon = "__base__/graphics/icons/small-worm.png",
        icon_size = 64,
        icon_mipmaps = 4,
        scale = 0.5
      },
      {
        icon = ICONPATH .. "genome.png",
        icon_size = 64,
        scale = 0.45
      }
    },
    subgroup = "biology-worm",
    order = "nullius-b",
    stack_size = 5
  },
  {
    type = "item",
    name = "nullius-worm-progenitor",
    icons = {{
      icon = "__base__/graphics/icons/big-worm.png",
      icon_size = 64,
      icon_mipmaps = 4
    }},
    subgroup = "biology-worm",
    order = "nullius-c",
    stack_size = 5
  },
  {
    type = "item",
    name = "nullius-worm",
    icons = {{
      icon = "__base__/graphics/icons/small-worm.png",
      icon_size = 64,
      icon_mipmaps = 4
    }},
    subgroup = "biology-worm",
    order = "nullius-d",
    stack_size = 50
  },
  {
    type = "item",
    name = "nullius-worm-egg",
    icons = {
      {
        icon = ICONPATH .. "protocell.png",
        icon_size = 64,
        tint = {1, 1, 1, 0.8}
      },
      {
        icon = "__base__/graphics/icons/small-worm.png",
        icon_size = 64,
        icon_mipmaps = 4,
        scale = 0.4
      }
    },
    subgroup = "biology-worm",
    order = "nullius-e",
    stack_size = 50
  },
  {
    type = "recipe",
    name = "nullius-worm-genome",
	localised_name = {"", {"item-name.nullius-worm-genome"}, " ", 1},
    enabled = false,
    category = "nanotechnology",
    energy_required = 40,
    ingredients = {
      {type="fluid", name="nullius-nucleotides", amount=16, fluidbox_index=1},
      {type="fluid", name="nullius-bacteria", amount=2, fluidbox_index=2},
      {type="item", name="nullius-algae-genome", amount=1},
      {type="item", name="nullius-geology-pack", amount=8}
    },
    results = {
      {type="item", name="nullius-worm-genome", amount=1},
      {type="fluid", name="nullius-wastewater", amount=8}
    },
    main_product = "nullius-worm-genome"
  },
  {
    type = "recipe",
    name = "nullius-worm-genome-2",
    localised_name = {"", {"item-name.nullius-worm-genome"}, " ", 2},
	icons = {
      {
	    icon = "__base__/graphics/icons/small-worm.png",
        icon_size = 64,
		icon_mipmaps = 4,
		scale = 0.5
      },
      {
        icon = ICONPATH .. "genome.png",
        icon_size = 64,
        scale = 0.4,
        shift = {-3, 2}
      },
	  {
        icon = "__base__/graphics/icons/military-science-pack.png",
        icon_size = 64,
        icon_mipmaps = 4,
		scale = 0.3,
        shift = {9, -8},
        tint = {0.75, 0.72, 0.78}
      }
    },
    enabled = false,
	show_amount_in_title = false,
    always_show_products = true,
    category = "nanotechnology",
	order = "nullius-bc",
    energy_required = 60,
    ingredients = {
      {type="fluid", name="nullius-nucleotides", amount=25, fluidbox_index=1},
      {type="fluid", name="nullius-bacteria", amount=3, fluidbox_index=2},
      {type="item", name="nullius-algae-genome", amount=1},
      {type="item", name="nullius-geology-pack", amount=10},
      {type="item", name="nullius-astronomy-pack", amount=1}
    },
    results = {
      {type="item", name="nullius-worm-genome", amount=2},
      {type="fluid", name="nullius-wastewater", amount=12}
    },
    main_product = "nullius-worm-genome"
  },
  {
    type = "recipe",
    name = "nullius-worm-progenitor",
	localised_name = {"", {"item-name.nullius-worm-progenitor"}, " ", 1},
    enabled = false,
    category = "nanotechnology",
	order = "nullius-cb",
    energy_required = 240,
    ingredients = {
      {type="item", name="nullius-worm-genome", amount=1},
      {type="fluid", name="nullius-protocell", amount=15},
      {type="fluid", name="nullius-amino-acids", amount=20},
      {type="fluid", name="nullius-oil", amount=10},
      {type="item", name="nullius-sugar", amount=8}
    },
    results = {
      {type="item", name="nullius-worm-progenitor", amount=1},
      {type="fluid", name="nullius-wastewater", amount=10}
    },
    main_product = "nullius-worm-progenitor"
  },
  {
    type = "recipe",
    name = "nullius-worm-progenitor-2",
	localised_name = {"", {"item-name.nullius-worm-progenitor"}, " ", 2},
	icons = {
	  {
	    icon = "__base__/graphics/icons/big-worm.png",
        icon_size = 64,
        icon_mipmaps = 4
      },
	  {
	    icon = "__base__/graphics/icons/small-worm.png",
        icon_size = 64,
        icon_mipmaps = 4,
		scale = 0.3,
        shift = {-10, -9}
      }
	},
    enabled = false,
    category = "nanotechnology",
	order = "nullius-cc",
    energy_required = 420,
    ingredients = {
      {type="item", name="nullius-worm-genome", amount=1},
      {type="fluid", name="nullius-protocell", amount=15},
      {type="fluid", name="nullius-amino-acids", amount=20},
      {type="fluid", name="nullius-oil", amount=10},
      {type="item", name="nullius-sugar", amount=8},
      {type="item", name="nullius-worm", amount=4},
      {type="item", name="nullius-worm-egg", amount=10}
    },
    results = {
      {type="item", name="nullius-worm-progenitor", amount=2},
      {type="fluid", name="nullius-wastewater", amount=40}
    },
    main_product = "nullius-worm-progenitor"
  },
  {
    type = "recipe",
    name = "nullius-worm-1",
    localised_name = {"", {"item-name.nullius-worm"}, " ", 1},
    icons = {
      {
        icon = "__base__/graphics/icons/small-worm.png",
        icon_size = 64,
        icon_mipmaps = 4
      },
      {
        icon = ICONPATH .. "protocell.png",
        icon_size = 64,
        scale = 0.3,
        shift = {9, -9}
      }
    },
    enabled = false,
    allow_decomposition = false,
    category = "ore-flotation",
    order = "nullius-db",
    energy_required = 40,
    ingredients = {
      {type="fluid", name="nullius-sludge", amount=100},
      {type="item", name="nullius-sand", amount=2},
      {type="fluid", name="nullius-oxygen", amount=120},
      {type="item", name="nullius-grass", amount=2},
      {type="item", name="nullius-worm-progenitor", amount=1}
    },
    results = {
      {type="item", name="nullius-worm", amount=1},
      {type="item", name="nullius-worm-egg", amount=2},
	  {type="item", name="nullius-mineral-dust", amount=1},
      {type="fluid", name="nullius-carbon-dioxide", amount=125, fluidbox_index=1}
    },
    main_product = "nullius-worm"
  },
  {
    type = "recipe",
    name = "nullius-worm-2",
    localised_name = {"", {"item-name.nullius-worm"}, " ", 2},
    enabled = false,
    allow_decomposition = false,
    category = "ore-flotation",
    order = "nullius-dc",
    energy_required = 60,
    ingredients = {
      {type="fluid", name="nullius-sludge", amount=320},
      {type="item", name="nullius-sand", amount=7},
      {type="fluid", name="nullius-oxygen", amount=550},
      {type="item", name="nullius-grass", amount=9},
      {type="item", name="nullius-worm-egg", amount=11}
    },
    results = {
      {type="item", name="nullius-worm", amount=8},
      {type="item", name="nullius-worm-egg", amount=12},
	  {type="item", name="nullius-mineral-dust", amount=5},
      {type="fluid", name="nullius-carbon-dioxide", amount=400, fluidbox_index=1}
    },
    main_product = "nullius-worm"
  },
  {
    type = "recipe",
    name = "nullius-worm-3",
    localised_name = {"", {"item-name.nullius-worm"}, " ", 3},
	icons = {
	  {
	    icon = "__base__/graphics/icons/small-worm.png",
        icon_size = 64,
        icon_mipmaps = 4
      },
	  {
        icon = ICONPATH .. "genome.png",
        icon_size = 64,
		scale = 0.3,
        shift = {-10, -9}
      }
	},
    enabled = false,
    allow_decomposition = false,
    category = "ore-flotation",
    order = "nullius-dd",
    energy_required = 55,
    ingredients = {
      {type="fluid", name="nullius-sludge", amount=300},
      {type="item", name="nullius-sand", amount=6},
      {type="fluid", name="nullius-oxygen", amount=500},
      {type="item", name="nullius-grass", amount=8},
      {type="item", name="nullius-worm-egg", amount=10}
    },
    results = {
      {type="item", name="nullius-worm", amount=9},
      {type="item", name="nullius-worm-egg", amount=13},
	  {type="item", name="nullius-mineral-dust", amount=6},
      {type="fluid", name="nullius-carbon-dioxide", amount=450, fluidbox_index=1}
    },
    main_product = "nullius-worm"
  },
  {
    type = "recipe",
    name = "nullius-legacy-worm-2",
    localised_name = {"", {"item-name.nullius-worm"}, " ", 2},
    enabled = false,
    allow_decomposition = false,
	hidden = true,
    allow_decomposition = false,
    allow_as_intermediate = false,
    category = "ore-flotation",
    order = "nullius-dc",
    energy_required = 60,
    ingredients = {
      {type="fluid", name="nullius-sludge", amount=320},
      {type="item", name="nullius-sand", amount=7},
      {type="fluid", name="nullius-oxygen", amount=550},
      {type="item", name="nullius-grass", amount=9},
      {type="item", name="nullius-worm-egg", amount=11}
    },
    results = {
      {type="item", name="nullius-worm", amount=8},
      {type="item", name="nullius-worm-egg", amount=12},
      {type="fluid", name="nullius-carbon-dioxide", amount=400, fluidbox_index=1}
    },
    main_product = "nullius-worm"
  },
  {
    type = "recipe",
    name = "nullius-legacy-worm-3",
    localised_name = {"", {"item-name.nullius-worm"}, " ", 3},
	icons = {
	  {
	    icon = "__base__/graphics/icons/small-worm.png",
        icon_size = 64,
        icon_mipmaps = 4
      },
	  {
        icon = ICONPATH .. "genome.png",
        icon_size = 64,
		scale = 0.3,
        shift = {-10, -9}
      }
	},
    enabled = false,
    allow_decomposition = false,
	hidden = true,
    allow_decomposition = false,
    allow_as_intermediate = false,
    category = "ore-flotation",
    order = "nullius-dd",
    energy_required = 55,
    ingredients = {
      {type="fluid", name="nullius-sludge", amount=300},
      {type="item", name="nullius-sand", amount=6},
      {type="fluid", name="nullius-oxygen", amount=500},
      {type="item", name="nullius-grass", amount=8},
      {type="item", name="nullius-worm-egg", amount=10}
    },
    results = {
      {type="item", name="nullius-worm", amount=9},
      {type="item", name="nullius-worm-egg", amount=13},
      {type="fluid", name="nullius-carbon-dioxide", amount=450, fluidbox_index=1}
    },
    main_product = "nullius-worm"
  },
  {
    type = "recipe",
    name = "nullius-worm-harvest",
    localised_name = {"recipe-name.nullius-harvest", {"item-name.nullius-worm"}},
    icons = {
      data.raw.fluid["nullius-amino-acids"].icons[2],
      data.raw.fluid["nullius-amino-acids"].icons[3],
      data.raw.fluid["nullius-amino-acids"].icons[4],
      {
        icon = "__base__/graphics/icons/small-worm.png",
        icon_size = 64,
        icon_mipmaps = 4,
        scale = 0.4,
        shift = {-8, -4}
      }
    },
    enabled = false,
    always_show_made_in = true,
    show_amount_in_title = false,
    always_show_products = true,
    category = "distillation",
    subgroup = "biology-worm",
    order = "nullius-fb",
    crafting_machine_tint = { primary = data.raw.fluid["nullius-amino-acids"].flow_color },
    energy_required = 8,
    ingredients = {
      {type="item", name="nullius-worm", amount=2},
      {type="fluid", name="nullius-saline", amount=75}
    },
    results = {
      {type="fluid", name="nullius-amino-acids", amount=60},
      {type="fluid", name="nullius-ammonia", amount=25},
      {type="fluid", name="nullius-wastewater", amount=50},
      {type="item", name="nullius-rutile", amount=3}
    },
    main_product = "nullius-amino-acids"
  },
  {
    type = "recipe",
    name = "nullius-worm-disposal",
    localised_name = {"recipe-name.nullius-disposal", {"item-name.nullius-worm"}},
    icons = {
      {
	    icon = "__base__/graphics/icons/small-worm-corpse.png",
        icon_size = 64,
		icon_mipmaps = 4
      },
      {
        icon = "__base__/graphics/icons/small-worm.png",
        icon_size = 64,
        icon_mipmaps = 4,
        scale = 0.3,
        shift = {-9, -6}
      }
    },
    enabled = false,
    always_show_made_in = true,
    show_amount_in_title = false,
    always_show_products = true,
    category = "bio-harvesting",
	subgroup = "biology-disposal",
    order = "nullius-db",
    energy_required = 1,
    ingredients = {
      {type="item", name="nullius-worm", amount=1}
    },
    results = {
      {type="fluid", name="nullius-sludge", amount=20}
    },
    main_product = "nullius-sludge"
  },
  {
    type = "recipe",
    name = "nullius-worm-egg-harvest",
    localised_name = {"recipe-name.nullius-harvest", {"item-name.nullius-worm-egg"}},
    icons = {
      data.raw.fluid["nullius-amino-acids"].icons[2],
      data.raw.fluid["nullius-amino-acids"].icons[3],
      data.raw.fluid["nullius-amino-acids"].icons[4],
      {
        icon = ICONPATH .. "protocell.png",
        icon_size = 64,
        tint = {1, 1, 1, 0.8},
        scale = 0.4,
        shift = {-8, -7}
      },
      {
        icon = "__base__/graphics/icons/small-worm.png",
        icon_size = 64,
        icon_mipmaps = 4,
        scale = 0.32,
        shift = {-8, -7}
      }
    },
    enabled = false,
    always_show_made_in = true,
    show_amount_in_title = false,
    always_show_products = true,
    category = "distillation",
    subgroup = "biology-worm",
    order = "nullius-gb",
    crafting_machine_tint = { primary = data.raw.fluid["nullius-amino-acids"].flow_color },
    energy_required = 3,
    ingredients = {
      {type="item", name="nullius-worm-egg", amount=1},
      {type="fluid", name="nullius-saline", amount=4},
      {type="fluid", name="nullius-solvent", amount=1}
    },
    results = {
      {type="fluid", name="nullius-amino-acids", amount=3},
      {type="fluid", name="nullius-nucleotides", amount=2},
      {type="fluid", name="nullius-wastewater", amount=3}
    },
    main_product = "nullius-amino-acids"
  },
  {
    type = "recipe",
    name = "nullius-legacy-worm-egg-harvest",
    localised_name = {"recipe-name.nullius-harvest", {"item-name.nullius-worm-egg"}},
    icons = {
      data.raw.fluid["nullius-amino-acids"].icons[2],
      data.raw.fluid["nullius-amino-acids"].icons[3],
      data.raw.fluid["nullius-amino-acids"].icons[4],
      {
        icon = ICONPATH .. "protocell.png",
        icon_size = 64,
        tint = {1, 1, 1, 0.8},
        scale = 0.4,
        shift = {-8, -7}
      },
      {
        icon = "__base__/graphics/icons/small-worm.png",
        icon_size = 64,
        icon_mipmaps = 4,
        scale = 0.32,
        shift = {-8, -7}
      }
    },
    enabled = false,
    always_show_made_in = true,
    show_amount_in_title = false,
    always_show_products = true,
	hidden = true,
    allow_decomposition = false,
    allow_as_intermediate = false,
    category = "distillation",
    subgroup = "biology-worm",
    order = "nullius-gb",
    crafting_machine_tint = { primary = data.raw.fluid["nullius-amino-acids"].flow_color },
    energy_required = 3,
    ingredients = {
      {type="item", name="nullius-worm-egg", amount=1},
      {type="fluid", name="nullius-saline", amount=4}
    },
    results = {
      {type="fluid", name="nullius-amino-acids", amount=2},
      {type="fluid", name="nullius-nucleotides", amount=1},
      {type="fluid", name="nullius-wastewater", amount=3}
    },
    main_product = "nullius-amino-acids"
  },
  {
    type = "recipe",
    name = "nullius-worm-egg-disposal",
    localised_name = {"recipe-name.nullius-disposal", {"item-name.nullius-worm-egg"}},
    icons = {
      {
        icon = FLUIDPATH .. "sludge.png",
        icon_size = 64
      },
      {
        icon = ICONPATH .. "protocell.png",
        icon_size = 64,
        tint = {1, 1, 1, 0.8},
        scale = 0.4,
        shift = {-8, -7}
      },
      {
        icon = "__base__/graphics/icons/small-worm.png",
        icon_size = 64,
        icon_mipmaps = 4,
        scale = 0.32,
        shift = {-8, -7}
      }
    },
    enabled = false,
    always_show_made_in = true,
    show_amount_in_title = false,
    always_show_products = true,
    category = "bio-harvesting",
	subgroup = "biology-disposal",
    order = "nullius-dc",
    energy_required = 1,
    ingredients = {
      {type="item", name="nullius-worm-egg", amount=3}
    },
    results = {
      {type="fluid", name="nullius-sludge", amount=10}
    },
    main_product = "nullius-sludge"
  },

  {
    type = "item",
    name = "nullius-tree-genome",
    icons = {
      {
        icon = "__base__/graphics/icons/tree-08.png",
        icon_size = 64,
        icon_mipmaps = 4,
        scale = 0.5
      },
      {
        icon = ICONPATH .. "genome.png",
        icon_size = 64,
        scale = 0.45
      }
    },
    subgroup = "biology-tree",
    order = "nullius-b",
    stack_size = 5
  },
  {
    type = "item",
    name = "nullius-tree-progenitor",
    icons = {{
      icon = "__base__/graphics/icons/tree-08-red.png",
      icon_size = 64,
      icon_mipmaps = 4
    }},
    subgroup = "biology-tree",
    order = "nullius-c",
    stack_size = 5
  },
  {
    type = "item",
    name = "nullius-tree",
    icons = {{
      icon = "__base__/graphics/icons/tree-08.png",
      icon_size = 64,
      icon_mipmaps = 4
    }},
    subgroup = "biology-tree",
    order = "nullius-d",
    stack_size = 20
  },
  {
    type = "item",
    name = "nullius-tree-seed",
    icons = {
      {
        icon = ICONPATH .. "protocell.png",
        icon_size = 64,
        tint = {1, 1, 1, 0.8}
      },
      {
        icon = "__base__/graphics/icons/tree-08.png",
        icon_size = 64,
        icon_mipmaps = 4,
        scale = 0.35,
      }
    },
    subgroup = "biology-tree",
    order = "nullius-e",
    stack_size = 50
  },
  {
    type = "item",
    name = "nullius-wood",
    icons = {{
      icon = "__base__/graphics/icons/wood.png",
      icon_size = 64,
      icon_mipmaps = 4
    }},
    subgroup = "biology-tree",
    order = "nullius-fb",
    stack_size = 100
  },
  {
    type = "item",
    name = "nullius-wood-chip",
    icons = {{
      icon = ICONPATH .. "wood-chip.png",
      icon_size = 64
    }},
    subgroup = "biology-tree",
    order = "nullius-fc",
    stack_size = 200
  },
  {
    type = "recipe",
    name = "nullius-tree-genome",
	localised_name = {"", {"item-name.nullius-tree-genome"}, " ", 1},
    enabled = false,
    category = "nanotechnology",
    energy_required = 60,
    ingredients = {
      {type="fluid", name="nullius-nucleotides", amount=6, fluidbox_index=1},
      {type="item", name="nullius-grass-genome", amount=2},
      {type="item", name="nullius-mechanical-pack", amount=8}
    },
    results = {
      {type="item", name="nullius-tree-genome", amount=1},
      {type="fluid", name="nullius-wastewater", amount=3}
    },
    main_product = "nullius-tree-genome"
  },
  {
    type = "recipe",
    name = "nullius-tree-genome-2",
    localised_name = {"", {"item-name.nullius-tree-genome"}, " ", 2},
	icons = {
      {
		icon = "__base__/graphics/icons/tree-08.png",
        icon_size = 64,
		icon_mipmaps = 4,
		scale = 0.5
      },
      {
        icon = ICONPATH .. "genome.png",
        icon_size = 64,
        scale = 0.4,
        shift = {-3, 2}
      },
	  {
        icon = "__base__/graphics/icons/military-science-pack.png",
        icon_size = 64,
        icon_mipmaps = 4,
		scale = 0.3,
        shift = {9, -8},
        tint = {0.75, 0.72, 0.78}
      }
    },
    enabled = false,
	show_amount_in_title = false,
    always_show_products = true,
    category = "nanotechnology",
	order = "nullius-bc",
	energy_required = 40,
    ingredients = {
      {type="fluid", name="nullius-nucleotides", amount=5, fluidbox_index=1},
      {type="item", name="nullius-grass-genome", amount=1},
      {type="item", name="nullius-mechanical-pack", amount=4},
      {type="item", name="nullius-astronomy-pack", amount=1}
    },
    results = {
      {type="item", name="nullius-tree-genome", amount=1},
      {type="fluid", name="nullius-wastewater", amount=2}
    },
    main_product = "nullius-tree-genome"
  },
  {
    type = "recipe",
    name = "nullius-tree-progenitor",
	localised_name = {"", {"item-name.nullius-tree-progenitor"}, " ", 1},
    enabled = false,
    category = "nanotechnology",
	order = "nullius-cb",
    energy_required = 270,
    ingredients = {
      {type="item", name="nullius-tree-genome", amount=1},
      {type="fluid", name="nullius-protocell", amount=18},
      {type="fluid", name="nullius-amino-acids", amount=12},
      {type="fluid", name="nullius-oil", amount=15},
      {type="item", name="nullius-sugar", amount=5},
      {type="item", name="nullius-rubber", amount=3},
      {type="item", name="nullius-cellulose", amount=25}
    },
    results = {
      {type="item", name="nullius-tree-progenitor", amount=1},
      {type="fluid", name="nullius-wastewater", amount=12}
    },
    main_product = "nullius-tree-progenitor"
  },
  {
    type = "recipe",
    name = "nullius-tree-progenitor-2",
	localised_name = {"", {"item-name.nullius-tree-progenitor"}, " ", 2},
	icons = {
	  {	    
		icon = "__base__/graphics/icons/tree-08-red.png",
        icon_size = 64,
        icon_mipmaps = 4
      },
	  {
		icon = "__base__/graphics/icons/tree-08.png",
        icon_size = 64,
        icon_mipmaps = 4,
		scale = 0.3,
        shift = {-10, -10}
      }
	},
    enabled = false,
    category = "nanotechnology",
	order = "nullius-cc",
    energy_required = 420,
    ingredients = {
      {type="item", name="nullius-tree-genome", amount=1},
      {type="fluid", name="nullius-protocell", amount=18},
      {type="fluid", name="nullius-amino-acids", amount=12},
      {type="fluid", name="nullius-oil", amount=15},
      {type="item", name="nullius-rubber", amount=3},
      {type="item", name="nullius-cellulose", amount=25},
	  {type="item", name="nullius-tree", amount=4},
      {type="item", name="nullius-tree-seed", amount=6}
    },
    results = {
      {type="item", name="nullius-tree-progenitor", amount=2},
      {type="fluid", name="nullius-wastewater", amount=50}
    },
    main_product = "nullius-tree-progenitor"
  },
  {
    type = "recipe",
    name = "nullius-tree-1",
    localised_name = {"", {"item-name.nullius-tree"}, " ", 1},
    icons = {
      {
        icon = "__base__/graphics/icons/tree-08.png",
        icon_size = 64,
        icon_mipmaps = 4
      },
      {
        icon = ICONPATH .. "protocell.png",
        icon_size = 64,
        scale = 0.3,
        shift = {9, -9}
      }
    },
    enabled = false,
    allow_decomposition = false,
    category = "nullius-water-treatment",
    order = "nullius-db",
    energy_required = 80,
    ingredients = {
      {type="fluid", name="nullius-freshwater", amount=400},
      {type="fluid", name="nullius-air", amount=3000},
      {type="item", name="nullius-land-fill-sand", amount=1},
      {type="item", name="nullius-fertilizer", amount=1},
      {type="item", name="nullius-tree-progenitor", amount=1}
    },
    results = {
      {type="item", name="nullius-tree", amount=1},
      {type="fluid", name="nullius-sludge", amount=25},
      {type="fluid", name="nullius-oxygen", amount=1000}
    },
    main_product = "nullius-tree"
  },
  {
    type = "recipe",
    name = "nullius-tree-2",
    localised_name = {"", {"item-name.nullius-tree"}, " ", 2},
    enabled = false,
    allow_decomposition = false,
    category = "nullius-water-treatment",
    order = "nullius-dc",
    energy_required = 110,
    ingredients = {
      {type="fluid", name="nullius-freshwater", amount=1200},
      {type="fluid", name="nullius-air", amount=9000},
      {type="item", name="nullius-land-fill-sand", amount=4},
      {type="item", name="nullius-fertilizer", amount=5},
      {type="item", name="nullius-worm", amount=2},
      {type="item", name="nullius-tree-seed", amount=8}
    },
    results = {
      {type="item", name="nullius-tree", amount=5},
      {type="fluid", name="nullius-sludge", amount=100},
      {type="fluid", name="nullius-oxygen", amount=3000}
    },
    main_product = "nullius-tree"
  },
  {
    type = "recipe",
    name = "nullius-tree-3",
    localised_name = {"", {"item-name.nullius-tree"}, " ", 3},
	icons = {
	  {
		icon = "__base__/graphics/icons/tree-08.png",
        icon_size = 64,
        icon_mipmaps = 4
      },
	  {
        icon = ICONPATH .. "genome.png",
        icon_size = 64,
		scale = 0.3,
        shift = {-10, -9}
      }
	},
    enabled = false,
    allow_decomposition = false,
    category = "nullius-water-treatment",
    order = "nullius-dd",
    energy_required = 100,
    ingredients = {
      {type="fluid", name="nullius-freshwater", amount=1100},
      {type="fluid", name="nullius-air", amount=8000},
      {type="item", name="nullius-land-fill-sand", amount=4},
      {type="item", name="nullius-fertilizer", amount=5},
      {type="item", name="nullius-worm", amount=2},
      {type="item", name="nullius-tree-seed", amount=7}
    },
    results = {
      {type="item", name="nullius-tree", amount=6},
      {type="fluid", name="nullius-sludge", amount=120},
      {type="fluid", name="nullius-oxygen", amount=3500}
    },
    main_product = "nullius-tree"
  },
  {
    type = "recipe",
    name = "nullius-wood",
    enabled = false,
    always_show_made_in = true,
    show_amount_in_title = false,
    always_show_products = true,
    category = "bio-harvesting",
    subgroup = "biology-tree",
    order = "nullius-fb",
    energy_required = 10,
    ingredients = {
      {type="item", name="nullius-tree", amount=3}
    },
    results = {
      {type="item", name="nullius-wood", amount=48},
      {type="item", name="nullius-wood-chip", amount=20},
      {type="item", name="nullius-tree-seed", amount=7},
      {type="fluid", name="nullius-sludge", amount=15}
    },
    main_product = "nullius-wood"
  },
  {
    type = "recipe",
    name = "nullius-boxed-wood",
    enabled = false,
    always_show_made_in = true,
    show_amount_in_title = false,
    always_show_products = true,
    category = "bio-harvesting",
    subgroup = "boxed-wood",
    order = "nullius-bb",
    energy_required = 50,
    ingredients = {
      {type="item", name="nullius-tree", amount=15}
    },
    results = {
      {type="item", name="nullius-box-wood", amount=48},
      {type="item", name="nullius-box-wood-chip", amount=20},
      {type="item", name="nullius-tree-seed", amount=35},
      {type="fluid", name="nullius-sludge", amount=75}
    },
    main_product = "nullius-box-wood"
  },
  {
    type = "recipe",
    name = "nullius-latex",
    localised_name = {"recipe-name.nullius-latex"},
    icons = {
      {
        icon = ICONPATH .. "rubber.png",
        icon_size = 64
      },
      {
        icon = "__base__/graphics/icons/tree-08.png",
        icon_size = 64,
        icon_mipmaps = 4,
        scale = 0.3,
        shift = {-8, -8}
      }
    },
    enabled = false,
    category = "distillation",
    subgroup = "biology-tree",
    order = "nullius-fc",
    crafting_machine_tint = { primary = data.raw.fluid["nullius-acid-sulfuric"].flow_color },
    energy_required = 12,
    ingredients = {
      {type="item", name="nullius-tree", amount=2},
      {type="fluid", name="nullius-acid-sulfuric", amount=10},
      {type="item", name="nullius-sodium-sulfate", amount=1}
    },
    results = {
      {type="item", name="nullius-wood", amount=33},
      {type="item", name="nullius-wood-chip", amount=10},
      {type="item", name="nullius-tree-seed", amount=5},
      {type="item", name="nullius-rubber", amount=10},
      {type="item", name="nullius-sugar", amount=6},
      {type="fluid", name="nullius-wastewater", amount=10}
    },
    main_product = "nullius-rubber"
  },
  {
    type = "recipe",
    name = "nullius-boxed-latex",
    localised_name = {"recipe-name.nullius-boxed", {"recipe-name.nullius-latex"}},
    icons = {
      {
        icon = ICONPATH .. "crate.png",
        icon_size = 64
      },
      {
        icon = ICONPATH .. "rubber.png",
        icon_size = 64,
        scale = 0.45
      },
      {
        icon = "__base__/graphics/icons/tree-08.png",
        icon_size = 64,
        icon_mipmaps = 4,
        scale = 0.27,
        shift = {-7, -7}
      }
    },
    enabled = false,
    category = "distillation",
    subgroup = "boxed-wood",
    order = "nullius-bc",
    crafting_machine_tint = { primary = data.raw.fluid["nullius-acid-sulfuric"].flow_color },
    energy_required = 60,
    ingredients = {
      {type="item", name="nullius-tree", amount=10},
      {type="fluid", name="nullius-acid-sulfuric", amount=50},
      {type="item", name="nullius-box-sodium-sulfate", amount=1}
    },
    results = {
      {type="item", name="nullius-box-wood", amount=33},
      {type="item", name="nullius-box-wood-chip", amount=10},
      {type="item", name="nullius-tree-seed", amount=25},
      {type="item", name="nullius-box-rubber", amount=10},
      {type="item", name="nullius-box-sugar", amount=6},
      {type="fluid", name="nullius-wastewater", amount=50}
    },
    main_product = "nullius-box-rubber"
  },
  {
    type = "recipe",
    name = "nullius-wood-chipping",
    localised_name = {"recipe-name.nullius-wood-chipping"},
    icons = {
      {
        icon = ICONPATH .. "wood-chip.png",
        icon_size = 64
      },
      {
        icon = "__base__/graphics/icons/wood.png",
        icon_size = 64,
        icon_mipmaps = 4,
        scale = 0.33,
        shift = {-8, -4}
      }
    },
    enabled = false,
    always_show_made_in = true,
    show_amount_in_title = false,
    always_show_products = true,
    category = "bio-harvesting",
	subgroup = "biology-material",
    order = "nullius-cd",
    energy_required = 1,
    ingredients = {
      {type="item", name="nullius-wood", amount=2}
    },
    result = "nullius-wood-chip",
    result_count = 3
  },
  {
    type = "recipe",
    name = "nullius-boxed-wood-chipping",
	localised_name = {"recipe-name.nullius-boxed", {"recipe-name.nullius-wood-chipping"}},
    icons = {
      {
        icon = ICONPATH .. "crate.png",
        icon_size = 64
      },
      {
        icon = ICONPATH .. "wood-chip.png",
        icon_size = 64,
		scale = 0.45
      },
      {
        icon = "__base__/graphics/icons/wood.png",
        icon_size = 64,
        icon_mipmaps = 4,
        scale = 0.3,
        shift = {-7, -4}
      }
    },
    enabled = false,
    always_show_made_in = true,
    show_amount_in_title = false,
    always_show_products = true,
    category = "bio-harvesting",
    subgroup = "boxed-wood",
    order = "nullius-cb",
    energy_required = 5,
    ingredients = {
      {type="item", name="nullius-box-wood", amount=2}
    },
    result = "nullius-box-wood-chip",
    result_count = 3
  },
  {
    type = "recipe",
    name = "nullius-particle-board",
    localised_name = {"recipe-name.nullius-particle-board"},
    icons = {
      {
        icon = "__nullius__/graphics/icons/wood-panel.png",
        icon_size = 128
      },
      {
        icon = ICONPATH .. "wood-chip.png",
        icon_size = 64,
        scale = 0.33,
        shift = {-8, -10}
      }
    },
    enabled = false,
    always_show_made_in = true,
    show_amount_in_title = false,
    always_show_products = true,
	allow_decomposition = false,
    allow_as_intermediate = false,
	no_productivity = true,
    category = "machine-casting",
	subgroup = "woodworking",
    order = "nullius-p",
    energy_required = 10,
    ingredients = {
      {type="item", name="nullius-wood-chip", amount=26},
	  {type="fluid", name="nullius-epoxy", amount=5}
    },
    results = {
      {type="item", name="nullius-wood", amount=20},
      {type="fluid", name="nullius-carbon-monoxide", amount=5}
    },
    main_product = "nullius-wood"
  },
  {
    type = "recipe",
    name = "nullius-boxed-particle-board",
    localised_name = {"recipe-name.nullius-boxed",
	    {"recipe-name.nullius-particle-board"}},
    icons = {
      {
        icon = ICONPATH .. "crate.png",
        icon_size = 64
      },
      {
        icon = "__nullius__/graphics/icons/wood-panel.png",
        icon_size = 128,
		scale = 0.23
      },
      {
        icon = ICONPATH .. "wood-chip.png",
        icon_size = 64,
        scale = 0.3,
        shift = {-7, -9}
      }
    },
    enabled = false,
    always_show_made_in = true,
    show_amount_in_title = false,
    always_show_products = true,
	allow_decomposition = false,
    allow_as_intermediate = false,
	no_productivity = true,
    category = "machine-casting",
	subgroup = "boxed-wood",
    order = "nullius-wp",
    energy_required = 50,
    ingredients = {
      {type="item", name="nullius-box-wood-chip", amount=26},
	  {type="fluid", name="nullius-epoxy", amount=25}
    },
    results = {
      {type="item", name="nullius-box-wood", amount=20},
      {type="fluid", name="nullius-carbon-monoxide", amount=20}
    },
    main_product = "nullius-box-wood"
  },
  {
    type = "recipe",
    name = "nullius-wood-pulping",
    localised_name = {"recipe-name.nullius-wood-pulping"},
    icons = {
      {
        icon = "__base__/graphics/decorative/brown-asterisk/hr-brown-asterisk-11.png",
        icon_size = 54
      },
      {
        icon = ICONPATH .. "wood-chip.png",
        icon_size = 64,
        scale = 0.33,
        shift = {-8, -7}
      }
    },
    enabled = false,
    always_show_made_in = true,
    show_amount_in_title = false,
    always_show_products = true,
    category = "distillation",
    subgroup = "biology-material",
    order = "nullius-cc",
    energy_required = 12,
    ingredients = {
      {type="item", name="nullius-wood-chip", amount=30},
	  {type="item", name="nullius-sodium-sulfate", amount=1},
	  {type="item", name="nullius-graphite", amount=2},
	  {type="fluid", name="nullius-caustic-solution", amount=16}
    },
    results = {
      {type="item", name="nullius-cellulose", amount=25},
      {type="fluid", name="nullius-sludge", amount=15}
    },
    main_product = "nullius-cellulose"
  },
  {
    type = "recipe",
    name = "nullius-boxed-wood-pulping",
    localised_name = {"recipe-name.nullius-boxed", {"recipe-name.nullius-wood-pulping"}},
    icons = {
      {
        icon = ICONPATH .. "crate.png",
        icon_size = 64
      },
      {
        icon = "__base__/graphics/decorative/brown-asterisk/hr-brown-asterisk-11.png",
        icon_size = 54,
        scale = 0.53
      },
      {
        icon = ICONPATH .. "wood-chip.png",
        icon_size = 64,
        scale = 0.3,
        shift = {-7, -6}
      }
    },
    enabled = false,
    always_show_made_in = true,
    show_amount_in_title = false,
    always_show_products = true,
    category = "distillation",
    subgroup = "boxed-wood",
    order = "nullius-cc",
    energy_required = 60,
    ingredients = {
      {type="item", name="nullius-box-wood-chip", amount=30},
	  {type="item", name="nullius-box-sodium-sulfate", amount=1},
	  {type="item", name="nullius-box-graphite", amount=2},
	  {type="fluid", name="nullius-caustic-solution", amount=80}
    },
    results = {
      {type="item", name="nullius-box-cellulose", amount=25},
      {type="fluid", name="nullius-sludge", amount=75}
    },
    main_product = "nullius-box-cellulose"
  },
  {
    type = "recipe",
    name = "nullius-tree-seed-harvest",
    localised_name = {"recipe-name.nullius-harvest", {"item-name.nullius-tree-seed"}},
    icons = {
      {
        icon = "__base__/graphics/decorative/brown-asterisk/hr-brown-asterisk-11.png",
        icon_size = 54
      },
      {
        icon = ICONPATH .. "protocell.png",
        icon_size = 64,
        tint = {1, 1, 1, 0.8},
        scale = 0.4,
        shift = {-8, -7}
      },
      {
        icon = "__base__/graphics/icons/tree-08.png",
        icon_size = 64,
        icon_mipmaps = 4,
        scale = 0.28,
        shift = {-8, -7}
      }
    },
    enabled = false,
    always_show_made_in = true,
    show_amount_in_title = false,
    always_show_products = true,
    category = "bio-harvesting",
    subgroup = "biology-tree",
    order = "nullius-i",
    energy_required = 1,
    ingredients = {
      {type="item", name="nullius-tree-seed", amount=4}
    },
    results = {
      {type="item", name="nullius-cellulose", amount=2},
      {type="fluid", name="nullius-oil", amount=3}
    },
    main_product = "nullius-cellulose"
  },

  {
    type = "item",
    name = "nullius-fish-genome",
    icons = {
      {
        icon = "__base__/graphics/icons/fish.png",
        icon_size = 64,
        icon_mipmaps = 4,
        scale = 0.5
      },
      {
        icon = ICONPATH .. "genome.png",
        icon_size = 64,
        scale = 0.5
      }
    },
    subgroup = "biology-fish",
    order = "nullius-b",
    stack_size = 5
  },
  {
    type = "item",
    name = "nullius-fish-progenitor",
    icons = {{
      icon = "__base__/graphics/icons/fish.png",
      icon_size = 64,
      icon_mipmaps = 4,
      tint = {0.75, 0.9, 1}
    }},
    subgroup = "biology-fish",
    order = "nullius-c",
    stack_size = 5
  },
  {
    type = "item",
    name = "nullius-fish",
    icons = {{
      icon = "__base__/graphics/icons/fish.png",
      icon_size = 64,
      icon_mipmaps = 4
    }},
    subgroup = "biology-fish",
    order = "nullius-d",
    stack_size = 50
  },
  {
    type = "item",
    name = "nullius-fish-egg",
    icons = {
      {
        icon = ICONPATH .. "protocell.png",
        icon_size = 64,
        tint = {1, 1, 1, 0.8}
      },
      {
        icon = "__base__/graphics/icons/fish.png",
        icon_size = 64,
        icon_mipmaps = 4,
        scale = 0.32,
        tint = {1, 1, 1, 0.9}
      }
    },
    subgroup = "biology-fish",
    order = "nullius-e",
    stack_size = 100
  },
  {
    type = "recipe",
    name = "nullius-fish-genome",
	localised_name = {"", {"item-name.nullius-fish-genome"}, " ", 1},
    enabled = false,
    category = "nanotechnology",
    energy_required = 60,
    ingredients = {
      {type="fluid", name="nullius-nucleotides", amount=8, fluidbox_index=1},
      {type="item", name="nullius-worm-genome", amount=2},
      {type="item", name="nullius-mechanical-pack", amount=10}
    },
    results = {
      {type="item", name="nullius-fish-genome", amount=1},
      {type="fluid", name="nullius-wastewater", amount=5}
    },
    main_product = "nullius-fish-genome"
  },
  {
    type = "recipe",
    name = "nullius-fish-genome-2",
    localised_name = {"", {"item-name.nullius-fish-genome"}, " ", 2},
	icons = {
      {
		icon = "__base__/graphics/icons/fish.png",
        icon_size = 64,
		icon_mipmaps = 4,
		scale = 0.5
      },
      {
        icon = ICONPATH .. "genome.png",
        icon_size = 64,
        scale = 0.4,
        shift = {-3, 2}
      },
	  {
        icon = "__base__/graphics/icons/military-science-pack.png",
        icon_size = 64,
        icon_mipmaps = 4,
		scale = 0.3,
        shift = {9, -8},
        tint = {0.75, 0.72, 0.78}
      }
    },
    enabled = false,
	show_amount_in_title = false,
    always_show_products = true,
    category = "nanotechnology",
	order = "nullius-bc",
	energy_required = 40,
    ingredients = {
      {type="fluid", name="nullius-nucleotides", amount=6, fluidbox_index=1},
      {type="item", name="nullius-worm-genome", amount=1},
      {type="item", name="nullius-mechanical-pack", amount=5},
      {type="item", name="nullius-astronomy-pack", amount=1}
    },
    results = {
      {type="item", name="nullius-fish-genome", amount=1},
      {type="fluid", name="nullius-wastewater", amount=3}
    },
    main_product = "nullius-fish-genome"
  },
  {
    type = "recipe",
    name = "nullius-fish-progenitor",
	localised_name = {"", {"item-name.nullius-fish-progenitor"}, " ", 1},
    enabled = false,
    category = "nanotechnology",
	order = "nullius-cb",
    energy_required = 300,
    ingredients = {
      {type="item", name="nullius-fish-genome", amount=1},
      {type="fluid", name="nullius-protocell", amount=18},
      {type="fluid", name="nullius-amino-acids", amount=25},
      {type="fluid", name="nullius-oil", amount=50},
      {type="item", name="nullius-calcium", amount=2},
      {type="item", name="nullius-sugar", amount=10}
    },
    results = {
      {type="item", name="nullius-fish-progenitor", amount=1},
      {type="fluid", name="nullius-wastewater", amount=15}
    },
    main_product = "nullius-fish-progenitor"
  },
  {
    type = "recipe",
    name = "nullius-fish-progenitor-2",
	localised_name = {"", {"item-name.nullius-fish-progenitor"}, " ", 2},
	icons = {
	  {
		icon = "__base__/graphics/icons/fish.png",
        icon_size = 64,
        icon_mipmaps = 4,
        tint = {0.75, 0.9, 1}
      },
	  {
		icon = "__base__/graphics/icons/fish.png",
        icon_size = 64,
        icon_mipmaps = 4,
		scale = 0.3,
        shift = {-10, -10}
      }
	},
    enabled = false,
    category = "nanotechnology",
	order = "nullius-cc",
    energy_required = 540,
    ingredients = {
      {type="item", name="nullius-fish-genome", amount=1},
      {type="fluid", name="nullius-protocell", amount=18},
      {type="fluid", name="nullius-amino-acids", amount=25},
      {type="fluid", name="nullius-oil", amount=50},
      {type="item", name="nullius-calcium", amount=2},
      {type="item", name="nullius-sugar", amount=10},
	  {type="item", name="nullius-fish", amount=5},
      {type="item", name="nullius-fish-egg", amount=12}
    },
    results = {
      {type="item", name="nullius-fish-progenitor", amount=2},
      {type="fluid", name="nullius-wastewater", amount=75}
    },
    main_product = "nullius-fish-progenitor"
  },
  {
    type = "recipe",
    name = "nullius-fish-1",
    localised_name = {"", {"item-name.nullius-fish"}, " ", 1},
    icons = {
      {
        icon = "__base__/graphics/icons/fish.png",
        icon_size = 64,
        icon_mipmaps = 4
      },
      {
        icon = ICONPATH .. "protocell.png",
        icon_size = 64,
        scale = 0.3,
        shift = {9, -9}
      }
    },
    enabled = false,
    allow_decomposition = false,
    category = "ore-flotation",
    order = "nullius-db",
    energy_required = 60,
    ingredients = {
      {type="fluid", name="nullius-seawater", amount=400},
      {type="fluid", name="nullius-oxygen", amount=400},
      {type="item", name="nullius-algae", amount=6},
      {type="item", name="nullius-worm", amount=2},
      {type="item", name="nullius-fish-progenitor", amount=2}
    },
    results = {
      {type="item", name="nullius-fish", amount=2},
      {type="item", name="nullius-fish-egg", amount=1},
      {type="fluid", name="nullius-wastewater", amount=300},
      {type="fluid", name="nullius-carbon-dioxide", amount=400}
    },
    main_product = "nullius-fish"
  },
  {
    type = "recipe",
    name = "nullius-fish-2",
    localised_name = {"", {"item-name.nullius-fish"}, " ", 2},
    enabled = false,
    allow_decomposition = false,
    category = "ore-flotation",
    order = "nullius-dc",
    energy_required = 90,
    ingredients = {
      {type="fluid", name="nullius-seawater", amount=900},
      {type="fluid", name="nullius-oxygen", amount=900},
      {type="item", name="nullius-algae", amount=10},
      {type="item", name="nullius-worm", amount=3},
      {type="item", name="nullius-fish-egg", amount=10}
    },
    results = {
      {type="item", name="nullius-fish", amount=6},
      {type="item", name="nullius-fish-egg", amount=13},
      {type="fluid", name="nullius-wastewater", amount=600},
      {type="fluid", name="nullius-carbon-dioxide", amount=700}
    },
    main_product = "nullius-fish"
  },
  {
    type = "recipe",
    name = "nullius-fish-3",
    localised_name = {"", {"item-name.nullius-fish"}, " ", 3},
	icons = {
	  {
		icon = "__base__/graphics/icons/fish.png",
        icon_size = 64,
        icon_mipmaps = 4
      },
	  {
        icon = ICONPATH .. "genome.png",
        icon_size = 64,
		scale = 0.3,
        shift = {-10, -9}
      }
	},
    enabled = false,
    allow_decomposition = false,
    category = "ore-flotation",
    order = "nullius-dd",
    energy_required = 80,
    ingredients = {
      {type="fluid", name="nullius-seawater", amount=800},
      {type="fluid", name="nullius-oxygen", amount=800},
      {type="item", name="nullius-algae", amount=10},
      {type="item", name="nullius-worm", amount=3},
      {type="item", name="nullius-fish-egg", amount=9}
    },
    results = {
      {type="item", name="nullius-fish", amount=7},
      {type="item", name="nullius-fish-egg", amount=15},
      {type="fluid", name="nullius-wastewater", amount=700},
      {type="fluid", name="nullius-carbon-dioxide", amount=800}
    },
    main_product = "nullius-fish"
  },
  {
    type = "recipe",
    name = "nullius-fish-harvest",
    localised_name = {"recipe-name.nullius-harvest", {"item-name.nullius-fish"}},
    icons = {
      data.raw.fluid["nullius-oil"].icons[1],
      {
        icon = "__base__/graphics/icons/fish.png",
        icon_size = 64,
        icon_mipmaps = 4,
        scale = 0.3,
        shift = {-8, -8}
      }
    },
    enabled = false,
    always_show_made_in = true,
    show_amount_in_title = false,
    always_show_products = true,
    category = "distillation",
    subgroup = "biology-fish",
    order = "nullius-fb",
    crafting_machine_tint = { primary = data.raw.fluid["nullius-oil"].flow_color },
    energy_required = 12,
    ingredients = {
      {type="item", name="nullius-fish", amount=3},
      {type="fluid", name="nullius-saline", amount=125}
    },
    results = {
      {type="fluid", name="nullius-oil", amount=110},
      {type="fluid", name="nullius-amino-acids", amount=50},
      {type="fluid", name="nullius-wastewater", amount=80},
      {type="item", name="nullius-lithium-chloride", amount=2}
    },
    main_product = "nullius-oil"
  },
  {
    type = "recipe",
    name = "nullius-fish-disposal",
    localised_name = {"recipe-name.nullius-disposal", {"item-name.nullius-fish"}},
    icons = {
      {
        icon = FLUIDPATH .. "sludge.png",
        icon_size = 64
      },
      {
        icon = "__base__/graphics/icons/fish.png",
        icon_size = 64,
        icon_mipmaps = 4,
        scale = 0.3,
        shift = {-8, -8}
      }
    },
    enabled = false,
    always_show_made_in = true,
    show_amount_in_title = false,
    always_show_products = true,
    category = "bio-harvesting",
	subgroup = "biology-disposal",
    order = "nullius-eb",
    energy_required = 1,
    ingredients = {
      {type="item", name="nullius-fish", amount=1}
    },
    results = {
      {type="fluid", name="nullius-sludge", amount=25}
    },
    main_product = "nullius-sludge"
  },
  {
    type = "recipe",
    name = "nullius-fish-egg-harvest",
    localised_name = {"recipe-name.nullius-harvest", {"item-name.nullius-fish-egg"}},
    icons = {
      data.raw.fluid["nullius-oil"].icons[1],
      {
        icon = ICONPATH .. "protocell.png",
        icon_size = 64,
        tint = {1, 1, 1, 0.8},
        scale = 0.4,
        shift = {-8, -7}
      },
      {
        icon = "__base__/graphics/icons/fish.png",
        icon_size = 64,
        icon_mipmaps = 4,
        scale = 0.25,
        tint = {1, 1, 1, 0.9},
        shift = {-8, -7}
      }
    },
    enabled = false,
    always_show_made_in = true,
    show_amount_in_title = false,
    always_show_products = true,
    category = "distillation",
    subgroup = "biology-fish",
    order = "nullius-gb",
    crafting_machine_tint = { primary = data.raw.fluid["nullius-oil"].flow_color },
    energy_required = 8,
    ingredients = {
      {type="item", name="nullius-fish-egg", amount=2},
      {type="fluid", name="nullius-saline", amount=10},
      {type="fluid", name="nullius-solvent", amount=2}
    },
    results = {
      {type="fluid", name="nullius-oil", amount=6},
      {type="fluid", name="nullius-nucleotides", amount=5},
      {type="fluid", name="nullius-wastewater", amount=4}
    },
    main_product = "nullius-oil"
  },
  {
    type = "recipe",
    name = "nullius-legacy-fish-egg-harvest",
    localised_name = {"recipe-name.nullius-harvest", {"item-name.nullius-fish-egg"}},
    icons = {
      data.raw.fluid["nullius-oil"].icons[1],
      {
        icon = ICONPATH .. "protocell.png",
        icon_size = 64,
        tint = {1, 1, 1, 0.8},
        scale = 0.4,
        shift = {-8, -7}
      },
      {
        icon = "__base__/graphics/icons/fish.png",
        icon_size = 64,
        icon_mipmaps = 4,
        scale = 0.25,
        tint = {1, 1, 1, 0.9},
        shift = {-8, -7}
      }
    },
    enabled = false,
    always_show_made_in = true,
    show_amount_in_title = false,
    always_show_products = true,
	hidden = true,
    allow_decomposition = false,
    allow_as_intermediate = false,
    category = "distillation",
    subgroup = "biology-fish",
    order = "nullius-gb",
    crafting_machine_tint = { primary = data.raw.fluid["nullius-oil"].flow_color },
    energy_required = 8,
    ingredients = {
      {type="item", name="nullius-fish-egg", amount=2},
      {type="fluid", name="nullius-saline", amount=10}
    },
    results = {
      {type="fluid", name="nullius-oil", amount=5},
      {type="fluid", name="nullius-nucleotides", amount=3},
      {type="fluid", name="nullius-wastewater", amount=5}
    },
    main_product = "nullius-oil"
  },
  {
    type = "recipe",
    name = "nullius-fish-egg-disposal",
    localised_name = {"recipe-name.nullius-disposal", {"item-name.nullius-fish-egg"}},
    icons = {
      {
        icon = FLUIDPATH .. "sludge.png",
        icon_size = 64
      },
      {
        icon = ICONPATH .. "protocell.png",
        icon_size = 64,
        tint = {1, 1, 1, 0.8},
        scale = 0.4,
        shift = {-8, -7}
      },
      {
        icon = "__base__/graphics/icons/fish.png",
        icon_size = 64,
        icon_mipmaps = 4,
        scale = 0.25,
        tint = {1, 1, 1, 0.9},
        shift = {-8, -7}
      }
    },
    enabled = false,
    always_show_made_in = true,
    show_amount_in_title = false,
    always_show_products = true,
    category = "bio-harvesting",
	subgroup = "biology-disposal",
    order = "nullius-ec",
    energy_required = 1,
    ingredients = {
      {type="item", name="nullius-fish-egg", amount=4}
    },
    results = {
      {type="fluid", name="nullius-sludge", amount=15}
    },
    main_product = "nullius-sludge"
  },
  {
    type = "recipe",
    name = "nullius-lithium-chloride-disposal",
    localised_name = {"recipe-name.nullius-disposal", {"item-name.nullius-lithium-chloride"}},
    icons = {
      {
        icon = FLUIDPATH .. "seawater.png",
        icon_size = 64
      },
	  {
        icon = ICONPATH .. "sugar.png",
        icon_size = 64,
        tint = { 0.9, 0.75, 1 },
        scale = 0.38,
        shift = {-6, -8}
      }
    },
    enabled = false,
    always_show_made_in = true,
    show_amount_in_title = false,
    always_show_products = true,
    category = "nullius-water-treatment",
	subgroup = "biology-disposal",
    order = "nullius-b",
    energy_required = 2,
    ingredients = {
      {type="fluid", name="nullius-freshwater", amount=450},
      {type="fluid", name="nullius-brine", amount=150},
      {type="item", name="nullius-lithium-chloride", amount=1}
    },
    results = {
      {type="fluid", name="nullius-seawater", amount=500}
    },
    main_product = "nullius-seawater"
  },

  {
    type = "item",
    name = "nullius-arthropod-genome",
    icons = {
      {
        icon = "__base__/graphics/icons/small-biter.png",
        icon_size = 64,
        icon_mipmaps = 4,
        scale = 0.5
      },
      {
        icon = ICONPATH .. "genome.png",
        icon_size = 64,
        scale = 0.45
      }
    },
    subgroup = "biology-arthropod",
    order = "nullius-b",
    stack_size = 5
  },
  {
    type = "item",
    name = "nullius-arthropod-progenitor",
    icons = {{
      icon = "__base__/graphics/icons/big-biter.png",
      icon_size = 64,
      icon_mipmaps = 4
    }},
    subgroup = "biology-arthropod",
    order = "nullius-c",
    stack_size = 5
  },
  {
    type = "item",
    name = "nullius-arthropod",
    icons = {{
      icon = "__base__/graphics/icons/small-biter.png",
      icon_size = 64,
      icon_mipmaps = 4
    }},
    subgroup = "biology-arthropod",
    order = "nullius-d",
    stack_size = 50
  },
  {
    type = "item",
    name = "nullius-arthropod-egg",
    icons = {
      {
        icon = ICONPATH .. "protocell.png",
        icon_size = 64,
        tint = {1, 1, 1, 0.8}
      },
      {
        icon = "__base__/graphics/icons/small-biter.png",
        icon_size = 64,
        icon_mipmaps = 4,
        scale = 0.35,
        tint = {1, 1, 1, 0.9}
      }
    },
    subgroup = "biology-arthropod",
    order = "nullius-e",
    stack_size = 50
  },
  {
    type = "recipe",
    name = "nullius-arthropod-genome",
    enabled = false,
    category = "nanotechnology",
    energy_required = 75,
    ingredients = {
      {type="fluid", name="nullius-nucleotides", amount=16, fluidbox_index=1},
      {type="fluid", name="nullius-bacteria", amount=3, fluidbox_index=2},
      {type="item", name="nullius-fish-genome", amount=1},
      {type="item", name="nullius-astronomy-pack", amount=4},
      {type="item", name="nullius-physics-pack", amount=8}
    },
    results = {
      {type="item", name="nullius-arthropod-genome", amount=1},
      {type="fluid", name="nullius-wastewater", amount=10}
    },
    main_product = "nullius-arthropod-genome"
  },
  {
    type = "recipe",
    name = "nullius-arthropod-progenitor",
	localised_name = {"", {"item-name.nullius-arthropod-progenitor"}, " ", 1},
    enabled = false,
    category = "nanotechnology",
	order = "nullius-cb",
    energy_required = 360,
    ingredients = {
      {type="item", name="nullius-arthropod-genome", amount=1},
      {type="fluid", name="nullius-protocell", amount=25},
      {type="fluid", name="nullius-amino-acids", amount=30},
      {type="fluid", name="nullius-oil", amount=25},
      {type="item", name="nullius-plastic", amount=3},
      {type="item", name="nullius-graphene", amount=1},
      {type="item", name="nullius-sugar", amount=8},
      {type="item", name="nullius-cellulose", amount=6}
    },
    results = {
      {type="item", name="nullius-arthropod-progenitor", amount=1},
      {type="fluid", name="nullius-sludge", amount=10}
    },
    main_product = "nullius-arthropod-progenitor"
  },
  {
    type = "recipe",
    name = "nullius-arthropod-progenitor-2",
	localised_name = {"", {"item-name.nullius-arthropod-progenitor"}, " ", 2},
	icons = {
	  {
		icon = "__base__/graphics/icons/big-biter.png",
        icon_size = 64,
        icon_mipmaps = 4
      },
	  {
		icon = "__base__/graphics/icons/small-biter.png",
        icon_size = 64,
        icon_mipmaps = 4,
		scale = 0.3,
        shift = {-9, -10}
      }
	},
    enabled = false,
    category = "nanotechnology",
	order = "nullius-cc",
    energy_required = 640,
    ingredients = {
      {type="item", name="nullius-arthropod-genome", amount=1},
      {type="fluid", name="nullius-protocell", amount=25},
      {type="fluid", name="nullius-amino-acids", amount=30},
      {type="fluid", name="nullius-oil", amount=25},
      {type="item", name="nullius-plastic", amount=3},
      {type="item", name="nullius-graphene", amount=1},
      {type="item", name="nullius-sugar", amount=8},
	  {type="item", name="nullius-arthropod", amount=6},
      {type="item", name="nullius-arthropod-egg", amount=15}
    },
    results = {
      {type="item", name="nullius-arthropod-progenitor", amount=2},
      {type="fluid", name="nullius-sludge", amount=40}
    },
    main_product = "nullius-arthropod-progenitor"
  },
  {
    type = "recipe",
    name = "nullius-arthropod-1",
    localised_name = {"", {"item-name.nullius-arthropod"}, " ", 1},
    icons = {
      {
        icon = "__base__/graphics/icons/small-biter.png",
        icon_size = 64,
        icon_mipmaps = 4
      },
      {
        icon = ICONPATH .. "protocell.png",
        icon_size = 64,
        scale = 0.3,
        shift = {9, -9}
      }
    },
    enabled = false,
    allow_decomposition = false,
    category = "nullius-water-treatment",
    order = "nullius-db",
    energy_required = 70,
    ingredients = {
      {type="fluid", name="nullius-freshwater", amount=200},
      {type="fluid", name="nullius-oxygen", amount=750},
      {type="item", name="nullius-wood-chip", amount=6},
      {type="item", name="nullius-fish", amount=5},
      {type="item", name="nullius-arthropod-progenitor", amount=2},
      {type="item", name="nullius-gun", amount=1},
      {type="item", name="nullius-magazine", amount=3}
    },
    results = {
      {type="item", name="nullius-arthropod", amount=2},
      {type="item", name="nullius-arthropod-egg", amount=1},
      {type="item", name="nullius-iron-oxide", amount=1},
      {type="fluid", name="nullius-sludge", amount=50},
      {type="fluid", name="nullius-carbon-dioxide", amount=600}
    },
    main_product = "nullius-arthropod"
  },
  {
    type = "recipe",
    name = "nullius-arthropod-2",
    localised_name = {"", {"item-name.nullius-arthropod"}, " ", 2},
    enabled = false,
    allow_decomposition = false,
    category = "nullius-water-treatment",
    order = "nullius-dc",
    energy_required = 100,
    ingredients = {
      {type="fluid", name="nullius-freshwater", amount=425},
      {type="fluid", name="nullius-oxygen", amount=1300},
      {type="item", name="nullius-box-wood-chip", amount=2},
      {type="item", name="nullius-fish", amount=8},
      {type="item", name="nullius-arthropod-egg", amount=9},
      {type="item", name="nullius-gun", amount=1},
      {type="item", name="nullius-box-magazine", amount=2}
    },
    results = {
      {type="item", name="nullius-arthropod", amount=6},
      {type="item", name="nullius-arthropod-egg", amount=11},
      {type="item", name="nullius-iron-oxide", amount=4},
      {type="fluid", name="nullius-sludge", amount=100},
      {type="fluid", name="nullius-carbon-dioxide", amount=900}
    },
    main_product = "nullius-arthropod"
  },
  {
    type = "recipe",
    name = "nullius-arthropod-3",
    localised_name = {"", {"item-name.nullius-arthropod"}, " ", 3},
	icons = {
	  {
		icon = "__base__/graphics/icons/small-biter.png",
        icon_size = 64,
        icon_mipmaps = 4
      },
	  {
        icon = ICONPATH .. "genome.png",
        icon_size = 64,
		scale = 0.3,
        shift = {-10, -9}
      }
	},
    enabled = false,
    allow_decomposition = false,
    category = "nullius-water-treatment",
    order = "nullius-dd",
    energy_required = 95,
    ingredients = {
      {type="fluid", name="nullius-freshwater", amount=400},
      {type="fluid", name="nullius-oxygen", amount=1200},
      {type="item", name="nullius-box-wood-chip", amount=2},
      {type="item", name="nullius-fish", amount=7},
      {type="item", name="nullius-arthropod-egg", amount=8},
      {type="item", name="nullius-gun", amount=1},
      {type="item", name="nullius-box-magazine", amount=2}
    },
    results = {
      {type="item", name="nullius-arthropod", amount=7},
      {type="item", name="nullius-arthropod-egg", amount=12},
      {type="item", name="nullius-iron-oxide", amount=4},
      {type="fluid", name="nullius-sludge", amount=110},
      {type="fluid", name="nullius-carbon-dioxide", amount=1000}
    },
    main_product = "nullius-arthropod"
  },
  {
    type = "recipe",
    name = "nullius-arthropod-harvest",
    localised_name = {"recipe-name.nullius-harvest", {"item-name.nullius-arthropod"}},
    icons = {
      {
        icon = ICONPATH .. "plate.png",
        icon_size = 64,
        tint = {0.4, 0.4, 0.4, 0.4}
      },
      {
        icon = "__base__/graphics/icons/small-biter.png",
        icon_size = 64,
        icon_mipmaps = 4,
        scale = 0.3,
        shift = {-8, -8}
      }
    },
    enabled = false,
    always_show_made_in = true,
    show_amount_in_title = false,
    always_show_products = true,
    category = "distillation",
    subgroup = "biology-arthropod",
    order = "nullius-fb",
    crafting_machine_tint = { primary = data.raw.fluid["nullius-amino-acids"].flow_color },
    energy_required = 8,
    ingredients = {
      {type="item", name="nullius-arthropod", amount=1},
      {type="fluid", name="nullius-saline", amount=60}
    },
    results = {
      {type="item", name="nullius-plastic", amount=8},
      {type="item", name="nullius-cellulose", amount=3},
      {type="item", name="nullius-graphene", amount=1},
      {type="fluid", name="nullius-oil", amount=25},
      {type="fluid", name="nullius-amino-acids", amount=40},
      {type="fluid", name="nullius-heavy-water", amount=6}
    },
    main_product = "nullius-graphene"
  },
  {
    type = "recipe",
    name = "nullius-boxed-arthropod-harvest",
    localised_name = {"recipe-name.nullius-boxed", {"recipe-name.nullius-harvest", {"item-name.nullius-arthropod"}}},
    icons = {
      {
        icon = ICONPATH .. "crate.png",
        icon_size = 64
      },
      {
        icon = ICONPATH .. "plate.png",
        icon_size = 64,
        tint = {0.4, 0.4, 0.4, 0.4},
        scale = 0.45
      },
      {
        icon = "__base__/graphics/icons/small-biter.png",
        icon_size = 64,
        icon_mipmaps = 4,
        scale = 0.27,
        shift = {-7, -7}
      }
    },
    enabled = false,
    always_show_made_in = true,
    show_amount_in_title = false,
    always_show_products = true,
    category = "distillation",
    subgroup = "boxed-biology",
    order = "nullius-mb",
    crafting_machine_tint = { primary = data.raw.fluid["nullius-oil"].flow_color },
    energy_required = 40,
    ingredients = {
      {type="item", name="nullius-arthropod", amount=5},
      {type="fluid", name="nullius-saline", amount=300}
    },
    results = {
      {type="item", name="nullius-box-plastic", amount=8},
      {type="item", name="nullius-box-cellulose", amount=3},
      {type="item", name="nullius-box-graphene", amount=1},
      {type="fluid", name="nullius-oil", amount=125},
      {type="fluid", name="nullius-amino-acids", amount=200},
      {type="fluid", name="nullius-heavy-water", amount=30}
    },
    main_product = "nullius-box-graphene"
  },
  {
    type = "recipe",
    name = "nullius-arthropod-disposal",
    localised_name = {"recipe-name.nullius-disposal", {"item-name.nullius-arthropod"}},
    icons = {
      {
        icon = "__base__/graphics/icons/small-biter-corpse.png",
        icon_size = 64,
        icon_mipmaps = 4
      },
      {
        icon = "__base__/graphics/icons/small-biter.png",
        icon_size = 64,
        icon_mipmaps = 4,
        scale = 0.3,
        shift = {-9, -9}
      }
    },
    enabled = false,
    always_show_made_in = true,
    show_amount_in_title = false,
    always_show_products = true,
    category = "bio-harvesting",
	subgroup = "biology-disposal",
    order = "nullius-fb",
    energy_required = 4,
    ingredients = {
      {type="fluid", name="nullius-saline", amount=12},
      {type="item", name="nullius-arthropod", amount=1}
    },
    results = {
      {type="fluid", name="nullius-sludge", amount=30},
      {type="item", name="nullius-plastic", amount=5},
      {type="item", name="nullius-cellulose", amount=1}
    },
    main_product = "nullius-plastic"
  },
  {
    type = "recipe",
    name = "nullius-boxed-arthropod-disposal",
    localised_name = {"recipe-name.nullius-boxed", {"recipe-name.nullius-disposal", {"item-name.nullius-arthropod"}}},
    icons = {
      {
        icon = ICONPATH .. "crate.png",
        icon_size = 64
      },
      {
	    icon = "__base__/graphics/icons/small-biter-corpse.png",
        icon_size = 64,
		icon_mipmaps = 4,
        scale = 0.45
      },
      {
        icon = "__base__/graphics/icons/small-biter.png",
        icon_size = 64,
        icon_mipmaps = 4,
        scale = 0.27,
        shift = {-8, -8}
      }
    },
    enabled = false,
    always_show_made_in = true,
    show_amount_in_title = false,
    always_show_products = true,
    category = "bio-harvesting",
    subgroup = "boxed-biology",
    order = "nullius-mc",
    energy_required = 20,
    ingredients = {
      {type="fluid", name="nullius-saline", amount=60},
      {type="item", name="nullius-arthropod", amount=5}
    },
    results = {
      {type="fluid", name="nullius-sludge", amount=150},
      {type="item", name="nullius-box-plastic", amount=5},
      {type="item", name="nullius-box-cellulose", amount=1}
    },
    main_product = "nullius-box-plastic"
  },
  {
    type = "recipe",
    name = "nullius-arthropod-egg-harvest",
    localised_name = {"recipe-name.nullius-harvest", {"item-name.nullius-arthropod-egg"}},
    icons = {
      data.raw.fluid["nullius-nucleotides"].icons[2],
      data.raw.fluid["nullius-nucleotides"].icons[3],
      data.raw.fluid["nullius-nucleotides"].icons[4],
      {
        icon = ICONPATH .. "protocell.png",
        icon_size = 64,
        tint = {1, 1, 1, 0.8},
        scale = 0.4,
        shift = {-8, -7}
      },
      {
        icon = "__base__/graphics/icons/small-biter.png",
        icon_size = 64,
        icon_mipmaps = 4,
        scale = 0.28,
        tint = {1, 1, 1, 0.9},
        shift = {-8, -7}
      }
    },
    enabled = false,
    always_show_made_in = true,
    show_amount_in_title = false,
    always_show_products = true,
    category = "distillation",
    subgroup = "biology-arthropod",
    order = "nullius-gb",
    crafting_machine_tint = { primary = data.raw.fluid["nullius-nucleotides"].flow_color },
    energy_required = 4,
    ingredients = {
      {type="item", name="nullius-arthropod-egg", amount=1},
      {type="fluid", name="nullius-saline", amount=10},
      {type="fluid", name="nullius-solvent", amount=2}
    },
    results = {
      {type="item", name="nullius-plastic", amount=1},
      {type="fluid", name="nullius-amino-acids", amount=6},
      {type="fluid", name="nullius-nucleotides", amount=4},
      {type="fluid", name="nullius-heavy-water", amount=1}
    },
    main_product = "nullius-nucleotides"
  },
  {
    type = "recipe",
    name = "nullius-legacy-arthropod-egg-harvest",
    localised_name = {"recipe-name.nullius-harvest", {"item-name.nullius-arthropod-egg"}},
    icons = {
      data.raw.fluid["nullius-nucleotides"].icons[2],
      data.raw.fluid["nullius-nucleotides"].icons[3],
      data.raw.fluid["nullius-nucleotides"].icons[4],
      {
        icon = ICONPATH .. "protocell.png",
        icon_size = 64,
        tint = {1, 1, 1, 0.8},
        scale = 0.4,
        shift = {-8, -7}
      },
      {
        icon = "__base__/graphics/icons/small-biter.png",
        icon_size = 64,
        icon_mipmaps = 4,
        scale = 0.28,
        tint = {1, 1, 1, 0.9},
        shift = {-8, -7}
      }
    },
    enabled = false,
    always_show_made_in = true,
    show_amount_in_title = false,
    always_show_products = true,
	hidden = true,
    allow_decomposition = false,
    allow_as_intermediate = false,
    category = "distillation",
    subgroup = "biology-arthropod",
    order = "nullius-gb",
    crafting_machine_tint = { primary = data.raw.fluid["nullius-nucleotides"].flow_color },
    energy_required = 4,
    ingredients = {
      {type="item", name="nullius-arthropod-egg", amount=1},
      {type="fluid", name="nullius-saline", amount=10}
    },
    results = {
      {type="item", name="nullius-plastic", amount=1},
      {type="fluid", name="nullius-amino-acids", amount=6},
      {type="fluid", name="nullius-nucleotides", amount=3},
      {type="fluid", name="nullius-heavy-water", amount=1}
    },
    main_product = "nullius-nucleotides"
  },
  {
    type = "recipe",
    name = "nullius-arthropod-egg-disposal",
    localised_name = {"recipe-name.nullius-disposal", {"item-name.nullius-arthropod-egg"}},
    icons = {
      {
        icon = FLUIDPATH .. "sludge.png",
        icon_size = 64
      },
      {
        icon = ICONPATH .. "protocell.png",
        icon_size = 64,
        tint = {1, 1, 1, 0.8},
        scale = 0.4,
        shift = {-8, -7}
      },
      {
        icon = "__base__/graphics/icons/small-biter.png",
        icon_size = 64,
        icon_mipmaps = 4,
        scale = 0.28,
        tint = {1, 1, 1, 0.9},
        shift = {-8, -7}
      }
    },
    enabled = false,
    always_show_made_in = true,
    show_amount_in_title = false,
    always_show_products = true,
    category = "bio-harvesting",
	subgroup = "biology-disposal",
    order = "nullius-fc",
    energy_required = 1,
    ingredients = {
      {type="item", name="nullius-arthropod-egg", amount=1}
    },
    results = {
      {type="fluid", name="nullius-sludge", amount=6},
      {type="item", name="nullius-plastic", amount=1}
    },
    main_product = "nullius-plastic"
  },
  {
    type = "recipe",
    name = "nullius-plastic-pyrolysis",
    localised_name = {"recipe-name.nullius-pyrolysis", {"item-name.nullius-plastic"}},
    icons = {
      {
        icon = "__base__/graphics/icons/coal-dark-background.png",
        icon_size = 64,
        icon_mipmaps = 4
      },
      {
        icon = "__base__/graphics/icons/plastic-bar.png",
        icon_size = 64,
        icon_mipmaps = 4,
        scale = 0.3,
        shift = {-8, -8}
      }
    },
    enabled = false,
    category = "wet-smelting",
    subgroup = "biology-burning",
    order = "nullius-pb",
    energy_required = 1,
    ingredients = {
      {type="item", name="nullius-plastic", amount=10},
      {type="fluid", name="nullius-oxygen", amount=50}
    },
    results = {
      {type="item", name="nullius-graphite", amount=4},
      {type="fluid", name="nullius-carbon-monoxide", amount=40}
    }
  },
  {
    type = "recipe",
    name = "nullius-rubber-pyrolysis",
    localised_name = {"recipe-name.nullius-pyrolysis", {"item-name.nullius-rubber"}},
    icons = {
      {
        icon = "__base__/graphics/icons/coal-dark-background.png",
        icon_size = 64,
        icon_mipmaps = 4
      },
      {
        icon = ICONPATH .. "rubber.png",
        icon_size = 64,
        scale = 0.36,
        shift = {-6, -6}
      }
    },
    enabled = false,
    category = "distillation",
    subgroup = "biology-burning",
    order = "nullius-pc",
    crafting_machine_tint = { primary = {r=0, g=0, b=0} },
    energy_required = 1,
    ingredients = {
      {type="item", name="nullius-rubber", amount=6},
      {type="fluid", name="nullius-compressed-oxygen", amount=10}
    },
    results = {
      {type="item", name="nullius-graphite", amount=2},
      {type="fluid", name="nullius-carbon-monoxide", amount=25},
      {type="fluid", name="nullius-carbon-dioxide", amount=15},
      {type="fluid", name="nullius-benzene", amount=5}
    }
  },
  {
    type = "recipe",
    name = "nullius-boxed-plastic-pyrolysis",
    localised_name = {"recipe-name.nullius-boxed", {"recipe-name.nullius-pyrolysis", {"item-name.nullius-plastic"}}},
    icons = {
      {
        icon = ICONPATH .. "crate.png",
        icon_size = 64
      },
      {
        icon = "__base__/graphics/icons/coal-dark-background.png",
        icon_size = 64,
        icon_mipmaps = 4,
        scale = 0.45
      },
      {
        icon = "__base__/graphics/icons/plastic-bar.png",
        icon_size = 64,
        icon_mipmaps = 4,
        scale = 0.27,
        shift = {-7, -7}
      }
    },
    enabled = false,
    category = "bulk-smelting",
	subgroup = "boxed-biology-burning",
    order = "nullius-p",
    energy_required = 1,
    ingredients = {
      {type="item", name="nullius-box-plastic", amount=10},
      {type="fluid", name="nullius-oxygen", amount=250}
    },
    results = {
      {type="item", name="nullius-box-graphite", amount=4},
      {type="fluid", name="nullius-carbon-monoxide", amount=200}
    }
  },
  {
    type = "recipe",
    name = "nullius-oil-incineration",
    localised_name = {"recipe-name.nullius-incineration", {"fluid-name.nullius-oil"}},
    icon_size = 64,
    icons = {
      data.raw.fluid["nullius-compressed-carbon-monoxide"].icons[2],
      data.raw.fluid["nullius-compressed-carbon-monoxide"].icons[3],
      data.raw.fluid["nullius-compressed-carbon-monoxide"].icons[4],
      {
        icon = "__base__/graphics/icons/fluid/light-oil.png",
        icon_size = 64,
        icon_mipmaps = 4,
        scale = 0.25,
        shift = {-8, -8}
      }
    },
    enabled = false,
    allow_as_intermediate = false,
    category = "combustion",
    subgroup = "biology-oil",
    order = "nullius-ib",
    energy_required = 2,
    ingredients = {
      {type="fluid", name="nullius-oil", amount=60},
      {type="fluid", name="nullius-compressed-oxygen", amount=110}
    },
    results = {
      {type="fluid", name="nullius-compressed-carbon-monoxide", amount=100},
      {type="fluid", name="nullius-compressed-carbon-dioxide", amount=75},
	  {type="item", name="nullius-graphite", amount=1}
    },
    main_product = "nullius-compressed-carbon-monoxide"
  },
  {
    type = "recipe",
    name = "nullius-oil-incineration",
    localised_name = {"recipe-name.nullius-incineration", {"fluid-name.nullius-oil"}},
    icon_size = 64,
    icons = {
      data.raw.fluid["nullius-compressed-carbon-monoxide"].icons[2],
      data.raw.fluid["nullius-compressed-carbon-monoxide"].icons[3],
      data.raw.fluid["nullius-compressed-carbon-monoxide"].icons[4],
      {
        icon = "__base__/graphics/icons/fluid/light-oil.png",
        icon_size = 64,
        icon_mipmaps = 4,
        scale = 0.25,
        shift = {-8, -8}
      }
    },
    enabled = false,
    allow_as_intermediate = false,
    category = "combustion",
    subgroup = "biology-oil",
    order = "nullius-i",
    energy_required = 2,
    ingredients = {
      {type="fluid", name="nullius-oil", amount=60},
      {type="fluid", name="nullius-compressed-oxygen", amount=110}
    },
    results = {
      {type="fluid", name="nullius-compressed-carbon-monoxide", amount=100},
      {type="fluid", name="nullius-compressed-carbon-dioxide", amount=75},
	  {type="item", name="nullius-graphite", amount=1}
    },
    main_product = "nullius-compressed-carbon-monoxide"
  },
  {
    type = "recipe",
    name = "nullius-fatty-acid-combustion",
    localised_name = {"recipe-name.nullius-combustion", {"fluid-name.nullius-fatty-acid"}},
    icon_size = 64,
    icons = {
      {
        icon = "__base__/graphics/icons/fluid/steam.png",
        icon_size = 64,
        icon_mipmaps = 4,
		scale = 0.6
      },
      data.raw.fluid["nullius-fatty-acids"].icons[2],
      data.raw.fluid["nullius-fatty-acids"].icons[3],
      data.raw.fluid["nullius-fatty-acids"].icons[4]
    },
    enabled = false,
    allow_as_intermediate = false,
    category = "combustion",
    subgroup = "biology-oil",
    order = "nullius-ic",
    energy_required = 1,
    ingredients = {
      {type="fluid", name="nullius-fatty-acids", amount=25},
      {type="fluid", name="nullius-compressed-oxygen", amount=60}
    },
    results = {
	  {type="fluid", name="nullius-steam", amount=300},
      {type="fluid", name="nullius-compressed-carbon-dioxide", amount=60}
    }
  },

  {
    type = "recipe",
    name = "nullius-wooden-chest",
    localised_name = {"recipe-name.nullius-wooden", {"entity-name.nullius-small-chest-1"}},
    icons = {{
      icon = "__base__/graphics/icons/wooden-chest.png",
      icon_size = 64,
      icon_mipmaps = 4
    }},
    enabled = false,
    always_show_made_in = true,
    show_amount_in_title = false,
    always_show_products = true,
    allow_as_intermediate = false,
    category = "large-fluid-assembly",
    subgroup = "woodworking",
    order = "nullius-b",
    energy_required = 3,
    ingredients = {
      {type="item", name="nullius-wood", amount=2},
      {type="item", name="nullius-iron-rod", amount=1},
      {type="fluid", name="nullius-epoxy", amount=1}
    },
    results = {
      {type="item", name="wooden-chest", amount=2},
      {type="item", name="nullius-wood-chip", amount=1}
    },
    main_product = "wooden-chest"
  },

  {
    type = "recipe",
    name = "nullius-wooden-power-pole-1",
    localised_name = {"recipe-name.nullius-wooden", {"entity-name.nullius-power-pole-1"}},
    icons = {{
      icon = "__base__/graphics/icons/small-electric-pole.png",
      icon_size = 64,
      icon_mipmaps = 4,
      tint = {0.75, 0.75, 0.9}
    }},
    enabled = false,
    always_show_made_in = true,
    show_amount_in_title = false,
    always_show_products = true,
    allow_as_intermediate = false,
    category = "medium-crafting",
    subgroup = "woodworking",
    order = "nullius-cb",
    energy_required = 3,
    ingredients = {
      {"nullius-aluminum-wire", 2},
      {"nullius-wood", 1}
    },
    result = "small-electric-pole",
    result_count = 2
  },
  {
    type = "recipe",
    name = "nullius-boxed-wooden-power-pole-1",
    localised_name = {"recipe-name.nullius-wooden", {"item-name.nullius-box", {"entity-name.nullius-power-pole-1"}}},
    icons = {
      {
        icon = ICONPATH .. "crate.png",
        icon_size = 64
      },
      {
        icon = "__base__/graphics/icons/small-electric-pole.png",
        icon_size = 64,
        icon_mipmaps = 4,
        tint = {0.75, 0.75, 0.9},
        scale = 0.45
      }
    },
    enabled = false,
    always_show_made_in = true,
    show_amount_in_title = false,
    always_show_products = true,
    category = "large-assembly",
    subgroup = "boxed-wood",
    order = "nullius-wbb",
    energy_required = 15,
    ingredients = {
      {"nullius-box-aluminum-wire", 2},
      {"nullius-box-wood", 1}
    },
    result = "nullius-box-power-pole-1",
    result_count = 2
  },
  {
    type = "recipe",
    name = "nullius-wooden-power-pole-2",
    localised_name = {"recipe-name.nullius-wooden", {"entity-name.nullius-power-pole-2"}},
    icons = {{
      icon = "__base__/graphics/icons/small-electric-pole.png",
      icon_size = 64,
      icon_mipmaps = 4,
      tint = {1, 0.85, 0.85}
    }},
    enabled = false,
    always_show_made_in = true,
    show_amount_in_title = false,
    always_show_products = true,
    allow_as_intermediate = false,
    category = "large-fluid-assembly",
    subgroup = "woodworking",
    order = "nullius-cc",
    energy_required = 5,
    ingredients = {
      {type="item", name="small-electric-pole", amount=1},
      {type="item", name="copper-cable", amount=4},
      {type="item", name="nullius-wood", amount=3},
      {type="fluid", name="nullius-epoxy", amount=2}
    },
    results = {
      {type="item", name="medium-electric-pole", amount=3},
      {type="item", name="nullius-wood-chip", amount=1}
    },
    main_product = "medium-electric-pole"
  },
  {
    type = "recipe",
    name = "nullius-boxed-wooden-power-pole-2",
    localised_name = {"recipe-name.nullius-wooden", {"item-name.nullius-box", {"entity-name.nullius-power-pole-2"}}},
    icons = {
      {
        icon = ICONPATH .. "crate.png",
        icon_size = 64
      },
      {
        icon = "__base__/graphics/icons/small-electric-pole.png",
        icon_size = 64,
        icon_mipmaps = 4,
        tint = {1, 0.85, 0.85},
        scale = 0.45
      }
    },
    enabled = false,
    always_show_made_in = true,
    show_amount_in_title = false,
    always_show_products = true,
    category = "large-fluid-assembly",
    subgroup = "boxed-wood",
    order = "nullius-wbc",
    energy_required = 25,
    ingredients = {
      {type="item", name="nullius-box-power-pole-1", amount=1},
      {type="item", name="nullius-box-insulated-wire", amount=4},
      {type="item", name="nullius-box-wood", amount=3},
      {type="fluid", name="nullius-epoxy", amount=10}
    },
    results = {
      {type="item", name="nullius-box-power-pole-2", amount=3},
      {type="item", name="nullius-box-wood-chip", amount=1}
    },
    main_product = "nullius-box-power-pole-2"
  },

  {
    type = "recipe",
    name = "nullius-wooden-rail",
    localised_name = {"recipe-name.nullius-wooden", {"item-name.rail"}},
    icons = {
      {
        icon = "__base__/graphics/icons/rail.png",
        icon_size = 64,
        icon_mipmaps = 4
      },
      {
        icon = "__base__/graphics/icons/wood.png",
        icon_size = 64,
        icon_mipmaps = 4,
        scale = 0.3,
        shift = {-8, -8}
      }
    },
    enabled = false,
    always_show_made_in = true,
    show_amount_in_title = false,
    always_show_products = true,
    allow_as_intermediate = false,
    category = "large-crafting",
    subgroup = "woodworking",
    order = "nullius-d",
    energy_required = 6,
    ingredients = {
      {type="item", name="nullius-steel-beam", amount=2},
      {type="item", name="nullius-wood", amount=4},
      {type="item", name="nullius-steel-rod", amount=1},
      {type="item", name="nullius-gravel", amount=6},
      {type="fluid", name="nullius-epoxy", amount=1}
    },
    result = "rail",
    result_count = 5
  },
  {
    type = "recipe",
    name = "nullius-boxed-wooden-rail",
    localised_name = {"recipe-name.nullius-wooden", {"item-name.nullius-box", {"item-name.rail"}}},
    icons = {
      {
        icon = ICONPATH .. "crate.png",
        icon_size = 64
      },
      {
        icon = "__base__/graphics/icons/rail.png",
        icon_size = 64,
        icon_mipmaps = 4,
        scale = 0.45
      },
      {
        icon = "__base__/graphics/icons/wood.png",
        icon_size = 64,
        icon_mipmaps = 4,
        scale = 0.27,
        shift = {-7, -7}
      }
    },
    enabled = false,
    always_show_made_in = true,
    show_amount_in_title = false,
    always_show_products = true,
    category = "huge-assembly",
    subgroup = "boxed-wood",
    order = "nullius-wc",
    energy_required = 30,
    ingredients = {
      {type="item", name="nullius-box-steel-beam", amount=2},
      {type="item", name="nullius-box-wood", amount=4},
      {type="item", name="nullius-box-steel-rod", amount=1},
      {type="item", name="nullius-box-gravel", amount=6},
      {type="fluid", name="nullius-epoxy", amount=5}
    },
    result = "nullius-box-rail",
    result_count = 5
  },
  {
    type = "recipe",
    name = "nullius-wooden-wall",
    localised_name = {"recipe-name.nullius-wooden", {"entity-name.stone-wall"}},
    icons = {
      {
        icon = "__base__/graphics/icons/wall.png",
        icon_size = 64,
        icon_mipmaps = 4
      },
      {
        icon = "__base__/graphics/icons/wood.png",
        icon_size = 64,
        icon_mipmaps = 4,
        scale = 0.3,
        shift = {-8, -8}
      }
    },
    enabled = false,
    always_show_made_in = true,
    show_amount_in_title = false,
    always_show_products = true,
    allow_as_intermediate = false,
    category = "large-crafting",
    subgroup = "woodworking",
    order = "nullius-ec",
    energy_required = 4,
    ingredients = {
      {type="item", name="refined-concrete", amount=4},
      {type="item", name="nullius-steel-beam", amount=2},
      {type="item", name="nullius-insulation", amount=2},
      {type="item", name="nullius-mortar", amount=1},
      {type="item", name="nullius-wood", amount=8},
      {type="item", name="nullius-steel-rod", amount=1},
      {type="fluid", name="nullius-epoxy", amount=5}
    },
    results = {
      {type="item", name="stone-wall", amount=4},
      {type="item", name="nullius-wood-chip", amount=2}
    },
    main_product = "stone-wall"
  },
  {
    type = "recipe",
    name = "nullius-boxed-wooden-wall",
    localised_name = {"recipe-name.nullius-wooden", {"item-name.nullius-box", {"entity-name.stone-wall"}}},
    icons = {
      {
        icon = ICONPATH .. "crate.png",
        icon_size = 64
      },
      {
        icon = "__base__/graphics/icons/wall.png",
        icon_size = 64,
        icon_mipmaps = 4,
        scale = 0.45
      },
      {
        icon = "__base__/graphics/icons/wood.png",
        icon_size = 64,
        icon_mipmaps = 4,
        scale = 0.27,
        shift = {-7, -7}
      }
    },
    enabled = false,
    always_show_made_in = true,
    show_amount_in_title = false,
    always_show_products = true,
    category = "huge-assembly",
    subgroup = "boxed-wood",
    order = "nullius-wdc",
    energy_required = 20,
    ingredients = {
      {type="item", name="nullius-box-reinforced-concrete", amount=2},
      {type="item", name="nullius-box-steel-beam", amount=2},
      {type="item", name="nullius-box-insulation", amount=2},
      {type="item", name="nullius-mortar", amount=5},
      {type="item", name="nullius-box-wood", amount=8},
      {type="item", name="nullius-box-steel-rod", amount=1},
      {type="fluid", name="nullius-epoxy", amount=25}
    },
    results = {
      {type="item", name="nullius-box-wall", amount=4},
      {type="item", name="nullius-box-wood-chip", amount=2}
    },
    main_product = "nullius-box-wall"
  },
  {
    type = "recipe",
    name = "nullius-wood-paneling",
    localised_name = {"recipe-name.nullius-wood-paneling"},
    icons = {
      {
        icon = "__nullius__/graphics/icons/wood-panel.png",
        icon_size = 128
      }
    },
    enabled = false,
    show_amount_in_title = false,
    always_show_products = true,
    category = "medium-assembly",
	subgroup = "woodworking",
    order = "nullius-eb",
    energy_required = 8,
    ingredients = {
      {"nullius-steel-wire", 1},
	  {"nullius-gypsum", 2},
      {"nullius-wood", 4},
      {"nullius-textile", 1}
    },
    results = {
      {type="item", name="nullius-insulation", amount=3},
      {type="item", name="nullius-wood-chip", amount=1}
    },
    main_product = "nullius-insulation"
  },
  {
    type = "recipe",
    name = "nullius-boxed-wood-paneling",
    localised_name = {"recipe-name.nullius-boxed", {"recipe-name.nullius-wood-paneling"}},
    icons = {
      {
        icon = ICONPATH .. "crate.png",
        icon_size = 64
      },
      {
        icon = "__nullius__/graphics/icons/wood-panel.png",
        icon_size = 128,
		scale = 0.225
      }
    },
    enabled = false,
    show_amount_in_title = false,
    always_show_products = true,
    category = "huge-assembly",
	subgroup = "boxed-wood",
    order = "nullius-wdb",
    energy_required = 40,
    ingredients = {
      {"nullius-box-steel-wire", 1},
	  {"nullius-box-gypsum", 2},
      {"nullius-box-wood", 4},
      {"nullius-box-textile", 1}
    },
    results = {
      {type="item", name="nullius-box-insulation", amount=3},
      {type="item", name="nullius-box-wood-chip", amount=1}
    },
    main_product = "nullius-box-insulation"
  },
  {
    type = "recipe",
    name = "nullius-wooden-medium-assembler-1",
    localised_name = {"recipe-name.nullius-wooden", {"entity-name.nullius-medium-assembler-1"}},
    icons = {
      data.raw.item["nullius-medium-assembler-1"].icons[1],
      {
        icon = "__base__/graphics/icons/wood.png",
        icon_size = 64,
        icon_mipmaps = 4,
        scale = 0.3,
        shift = {-8, -8}
      }
    },
    enabled = false,
    always_show_made_in = true,
    show_amount_in_title = false,
    always_show_products = true,
    allow_as_intermediate = false,
    category = "large-crafting",
    subgroup = "woodworking",
    order = "nullius-f",
    energy_required = 15,
    ingredients = {
      {"nullius-small-assembler-1", 5},
      {"nullius-wood", 4}
    },
    results = {
      {type="item", name="nullius-medium-assembler-1", amount=3},
      {type="item", name="nullius-wood-chip", amount=1}
    },
    main_product = "nullius-medium-assembler-1"
  },
  {
    type = "recipe",
    name = "nullius-wooden-medium-miner-1",
    localised_name = {"recipe-name.nullius-wooden", {"entity-name.nullius-medium-miner-1"}},
    icons = {
      data.raw.item["nullius-medium-miner-1"].icons[1],
      {
        icon = "__base__/graphics/icons/wood.png",
        icon_size = 64,
        icon_mipmaps = 4,
        scale = 0.3,
        shift = {-8, -8}
      }
    },
    enabled = false,
    always_show_made_in = true,
    show_amount_in_title = false,
    always_show_products = true,
    allow_as_intermediate = false,
    category = "large-crafting",
    subgroup = "woodworking",
    order = "nullius-g",
    energy_required = 12,
    ingredients = {
      {"nullius-small-miner-1", 3},
      {"nullius-box-wood", 1}
    },
    results = {
      {type="item", name="nullius-medium-miner-1", amount=2},
      {type="item", name="nullius-wood-chip", amount=1}
    },
    main_product = "nullius-medium-miner-1"
  },

  {
    type = "tool",
    name = "nullius-biochemistry-pack",
    order = "nullius-xb",
    icons = {
      {
        icon = ICONPATH .. "flask.png",
        icon_size = 64
      },
      {
        icon = "__angelspetrochem__/graphics/icons/molecules/glycerol.png",
        icon_size = 72,
        scale = 0.28,
        shift = {0, 6}
      },
      {
        icon = ICONPATH .. "flask.png",
        icon_size = 64,
        tint = {0.4, 0.3, 0.4, 0.4}
      }
    },
    subgroup = "biology-research",
    stack_size = 20,
    durability = 1,
    durability_description_key = "description.science-pack-remaining-amount-key",
    durability_description_value = "description.science-pack-remaining-amount-value"
  },
  {
    type = "tool",
    name = "nullius-microbiology-pack",
    order = "nullius-xc",
    icons = {
      {
        icon = ICONPATH .. "flask.png",
        icon_size = 64
      },
      {
        icon = ICONPATH .. "bacteria.png",
        icon_size = 64,
        scale = 0.36,
        shift = {3, 5}
      },
      {
        icon = ICONPATH .. "flask.png",
        icon_size = 64,
        tint = {0.4, 0.3, 0.4, 0.4}
      }
    },
    subgroup = "biology-research",
    stack_size = 20,
    durability = 1,
    durability_description_key = "description.science-pack-remaining-amount-key",
    durability_description_value = "description.science-pack-remaining-amount-value"
  },
  {
    type = "tool",
    name = "nullius-botany-pack",
    order = "nullius-xd",
    icons = {
      {
        icon = ICONPATH .. "flask.png",
        icon_size = 64
      },
      {
        icon = ICONPATH .. "grass.png",
        icon_size = 64,
        scale = 0.33,
        shift = {0, 4}
      },
      {
        icon = ICONPATH .. "flask.png",
        icon_size = 64,
        tint = {0.4, 0.3, 0.4, 0.4}
      }
    },
    subgroup = "biology-research",
    stack_size = 20,
    durability = 1,
    durability_description_key = "description.science-pack-remaining-amount-key",
    durability_description_value = "description.science-pack-remaining-amount-value"
  },
  {
    type = "tool",
    name = "nullius-dendrology-pack",
    order = "nullius-xe",
    icons = {
      {
        icon = ICONPATH .. "flask.png",
        icon_size = 64
      },
      {
        icon = "__base__/graphics/icons/tree-08.png",
        icon_size = 64,
        icon_mipmaps = 4,
        scale = 0.28,
        shift = {0, 5}
      },
      {
        icon = ICONPATH .. "flask.png",
        icon_size = 64,
        tint = {0.4, 0.3, 0.4, 0.4}
      }
    },
    subgroup = "biology-research",
    stack_size = 20,
    durability = 1,
    durability_description_key = "description.science-pack-remaining-amount-key",
    durability_description_value = "description.science-pack-remaining-amount-value"
  },
  {
    type = "tool",
    name = "nullius-nematology-pack",
    order = "nullius-xf",
    icons = {
      {
        icon = ICONPATH .. "flask.png",
        icon_size = 64
      },
      {
        icon = "__base__/graphics/icons/small-worm.png",
        icon_size = 64,
        icon_mipmaps = 4,
        scale = 0.33,
        shift = {1, 5}
      },
      {
        icon = ICONPATH .. "flask.png",
        icon_size = 64,
        tint = {0.4, 0.3, 0.4, 0.4}
      }
    },
    subgroup = "biology-research",
    stack_size = 20,
    durability = 1,
    durability_description_key = "description.science-pack-remaining-amount-key",
    durability_description_value = "description.science-pack-remaining-amount-value"
  },
  {
    type = "tool",
    name = "nullius-ichthyology-pack",
    order = "nullius-xg",
    icons = {
      {
        icon = ICONPATH .. "flask.png",
        icon_size = 64
      },
      {
        icon = "__base__/graphics/icons/fish.png",
        icon_size = 64,
        icon_mipmaps = 4,
        scale = 0.28,
        shift = {-1, 5}
      },
      {
        icon = ICONPATH .. "flask.png",
        icon_size = 64,
        tint = {0.4, 0.3, 0.4, 0.4}
      }
    },
    subgroup = "biology-research",
    stack_size = 20,
    durability = 1,
    durability_description_key = "description.science-pack-remaining-amount-key",
    durability_description_value = "description.science-pack-remaining-amount-value"
  },
  {
    type = "tool",
    name = "nullius-zoology-pack",
    order = "nullius-xh",
    icons = {
      {
        icon = ICONPATH .. "flask.png",
        icon_size = 64
      },
      {
        icon = "__base__/graphics/icons/small-biter.png",
        icon_size = 64,
        scale = 0.32,
        shift = {-1, 6}
      },
      {
        icon = ICONPATH .. "flask.png",
        icon_size = 64,
        tint = {0.4, 0.3, 0.4, 0.4}
      }
    },
    subgroup = "biology-research",
    stack_size = 20,
    durability = 1,
    durability_description_key = "description.science-pack-remaining-amount-key",
    durability_description_value = "description.science-pack-remaining-amount-value"
  },

  {
    type = "recipe",
    name = "nullius-biochemistry-pack",
    enabled = false,
    category = "basic-chemistry",
    crafting_machine_tint = {
      primary = data.raw.fluid["nullius-amino-acids"].flow_color,
      secondary = data.raw.fluid["nullius-fatty-acids"].flow_color
    },
    energy_required = 80,
    ingredients = {
      {type="item", name="nullius-chemical-pack", amount=6},
      {type="item", name="nullius-electrical-pack", amount=4},
      {type="item", name="nullius-box-sugar", amount=20},
      {type="fluid", name="nullius-amino-acids", amount=800},
      {type="fluid", name="nullius-fatty-acids", amount=500},
      {type="fluid", name="nullius-nucleotides", amount=200}
    },
    result = "nullius-biochemistry-pack"
  },
  {
    type = "recipe",
    name = "nullius-microbiology-pack",
    enabled = false,
    category = "small-fluid-assembly",
    energy_required = 90,
    ingredients = {
      {type="item", name="nullius-algae-progenitor", amount=1},
      {type="item", name="nullius-algae", amount=100},
      {type="fluid", name="nullius-bacteria", amount=200}
    },
    result = "nullius-microbiology-pack"
  },
  {
    type = "recipe",
    name = "nullius-botany-pack",
    enabled = false,
    always_show_made_in = true,
    category = "small-crafting",
    energy_required = 120,
    ingredients = {
      {type="item", name="nullius-grass-progenitor", amount=1},
      {type="item", name="nullius-grass", amount=120},
      {type="item", name="nullius-box-cellulose", amount=120}
    },
    result = "nullius-botany-pack"
  },
  {
    type = "recipe",
    name = "nullius-dendrology-pack",
    enabled = false,
    always_show_made_in = true,
    category = "huge-crafting",
    energy_required = 160,
    ingredients = {
      {type="item", name="nullius-tree-progenitor", amount=1},
      {type="item", name="nullius-tree", amount=80},
      {type="item", name="nullius-box-wood", amount=200}
    },
    result = "nullius-dendrology-pack"
  },
  {
    type = "recipe",
    name = "nullius-nematology-pack",
    enabled = false,
    category = "small-fluid-assembly",
    energy_required = 100,
    ingredients = {
      {type="item", name="nullius-worm-progenitor", amount=1},
      {type="item", name="nullius-worm", amount=150},
      {type="fluid", name="nullius-carbon-dioxide", amount=7500}
    },
    result = "nullius-nematology-pack"
  },
  {
    type = "recipe",
    name = "nullius-ichthyology-pack",
    enabled = false,
	allow_decomposition = false,
    category = "small-fluid-assembly",
    energy_required = 120,
    ingredients = {
      {type="item", name="nullius-fish-progenitor", amount=1},
      {type="item", name="nullius-fish", amount=120},
      {type="fluid", name="nullius-wastewater", amount=10000}
    },
    result = "nullius-ichthyology-pack"
  },
  {
    type = "recipe",
    name = "nullius-zoology-pack",
    enabled = false,
    always_show_made_in = true,
    category = "large-crafting",
    energy_required = 200,
    ingredients = {
      {type="item", name="nullius-arthropod-progenitor", amount=1},
      {type="item", name="nullius-arthropod", amount=80},
      {type="item", name="nullius-box-plastic", amount=50}
    },
    result = "nullius-zoology-pack"
  }
})
