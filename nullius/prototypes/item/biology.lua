data:extend({
  {
    type = "item",
    name = "nullius-sugar",
    icons = {{
      icon = "__nullius__/graphics/icons/sugar.png",
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
    stack_size = 100
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
    stack_size = 50
  },
  {
    type = "recipe",
    name = "nullius-sugar-1",
	localised_name = {"", {"item-name.nullius-sugar"}, " ", 1},
    icons = {
      {
        icon = "__nullius__/graphics/icons/sugar.png",
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
    energy_required = 1,
    ingredients = {
      {type="item", name="nullius-cellulose", amount=3},
      {type="fluid", name="nullius-acid-hydrochloric", amount=4, fluidbox_index=1},
      {type="fluid", name="nullius-caustic-solution", amount=4, fluidbox_index=2}
    },
    results = {
      {type="item", name="nullius-sugar", amount=4},
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
    energy_required = 5,
    ingredients = {
      {type="item", name="nullius-box-cellulose", amount=3},
      {type="fluid", name="nullius-acid-hydrochloric", amount=20, fluidbox_index=1},
      {type="fluid", name="nullius-caustic-solution", amount=20, fluidbox_index=2}
    },
    results = {
      {type="item", name="nullius-box-sugar", amount=4},
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
    category = "distillation",
	subgroup = "biology-oil",
    order = "nullius-bc",
    energy_required = 1,
    ingredients = {
      {type="fluid", name="nullius-oil", amount=100},
      {type="fluid", name="nullius-steam", amount=200}
    },
    results = {
      {type="fluid", name="nullius-fatty-acids", amount=75},
      {type="fluid", name="nullius-glycerol", amount=15}
    },
    main_product = "nullius-fatty-acids"
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
    energy_required = 1,
    ingredients = {
      {type="fluid", name="nullius-fatty-acids", amount=20},
      {type="fluid", name="nullius-methanol", amount=6}
    },
    results = {
      {type="fluid", name="nullius-biodiesel", amount=25},
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
        icon = "__nullius__/graphics/protocell.png",
        icon_size = 64
	  },
      {
        icon = "__nullius__/graphics/bacteria.png",
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
    enabled = false,
	show_amount_in_title = false,
	always_show_products = true,
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
    name = "nullius-fatty-acid-pyrolysis",
	localised_name = {"recipe-name.nullius-pyrolysis", {"fluid-name.nullius-fatty-acids"}},
	icons = angelsmods.functions.create_liquid_recipe_icon(
  	  {{"__angelspetrochem__/graphics/icons/molecules/ethylene.png", 72},
	    {"__angelspetrochem__/graphics/icons/molecules/benzene.png", 72},
	    {"__angelspetrochem__/graphics/icons/molecules/propene.png", 72}},
	  {element_tint["carbon"], element_tint["carbon"], element_tint["hydrogen"]}
	),
    enabled = false,
    category = "distillation",
    subgroup = "biology-oil",
    order = "nullius-g",
    energy_required = 4,
    ingredients = {
      {type="fluid", name="nullius-fatty-acids", amount=30}
    },
    results = {
      {type="fluid", name="nullius-ethylene", amount=50},
      {type="fluid", name="nullius-propene", amount=70},
      {type="fluid", name="nullius-benzene", amount=4},
      {type="item", name="nullius-graphite", amount=1}
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
      {type="fluid", name="nullius-steam", amount=20}
    },
    main_product = "nullius-compressed-carbon-monoxide"
  },

  {
    type = "item",
    name = "nullius-bacteria-genome",
	icons = {
	  {
        icon = "__nullius__/graphics/bacteria.png",
        icon_size = 64
	  },
	  {
        icon = "__nullius__/graphics/genome.png",
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
    enabled = false,
    category = "nanotechnology",
    energy_required = 30,
    ingredients = {
      {type="fluid", name="nullius-nucleotides", amount=8, fluidbox_index=1},
      {type="item", name="nullius-box-astronomy-pack", amount=5},
      {type="item", name="nullius-box-chemical-pack", amount=4},
      {type="item", name="nullius-canister", amount=1}
    },
    results = {
      {type="item", name="nullius-bacteria-genome", amount=1},
      {type="fluid", name="nullius-wastewater", amount=5}
    },
    main_product = "nullius-bacteria-genome"
  },
  {
    type = "recipe",
    name = "nullius-bacteria-1",
	localised_name = {"", {"fluid-name.nullius-bacteria"}, " ", 1},
    icons = {
      {
        icon = "__nullius__/graphics/bacteria.png",
        icon_size = 64
	  },
      {
        icon = "__nullius__/graphics/protocell.png",
        icon_size = 64,
        scale = 0.3,
        shift = {9, -9}
      }
    },
    enabled = false,
	allow_decomposition = false,
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
    energy_required = 8,
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
    name = "nullius-fermentation",
	localised_name = {"recipe-name.nullius-fermentation"},
    icons = {
	  data.raw.fluid["nullius-methanol"].icons[2],
	  data.raw.fluid["nullius-methanol"].icons[3],
	  data.raw.fluid["nullius-methanol"].icons[4],
      {
	    icon = "__nullius__/graphics/icons/sugar.png",
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
    energy_required = 3,
    ingredients = {
      {type="item", name="nullius-sugar", amount=4},
      {type="fluid", name="nullius-freshwater", amount=20},
      {type="fluid", name="nullius-bacteria", amount=1}
    },
    results = {
      {type="fluid", name="nullius-methanol", amount=25},
      {type="fluid", name="nullius-carbon-dioxide", amount=20},
      {type="fluid", name="nullius-wastewater", amount=10}
    },
    main_product = "nullius-methanol"
  },
  {
    type = "recipe",
    name = "nullius-boxed-fermentation",
	localised_name = {"recipe-name.nullius-fermentation"},
    icons = {
      {
	    icon = "__nullius__/graphics/crate.png",
        icon_size = 64
	  },
	  data.raw.fluid["nullius-methanol"].icons[2],
	  data.raw.fluid["nullius-methanol"].icons[3],
	  data.raw.fluid["nullius-methanol"].icons[4],
      {
	    icon = "__nullius__/graphics/icons/sugar.png",
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
    energy_required = 15,
    ingredients = {
      {type="item", name="nullius-box-sugar", amount=4},
      {type="fluid", name="nullius-freshwater", amount=100},
      {type="fluid", name="nullius-bacteria", amount=5}
    },
    results = {
      {type="fluid", name="nullius-methanol", amount=125},
      {type="fluid", name="nullius-carbon-dioxide", amount=100},
      {type="fluid", name="nullius-wastewater", amount=50}
    },
    main_product = "nullius-methanol"
  },
  {
    type = "recipe",
    name = "nullius-amino-acid-metabolism",
	localised_name = {"recipe-name.nullius-metabolism", {"fluid-name.nullius-amino-acids"}},
    icons = {
	  data.raw.fluid["nullius-ammonia"].icons[2],
	  data.raw.fluid["nullius-ammonia"].icons[3],
	  data.raw.fluid["nullius-ammonia"].icons[4],
      {
        icon = "__nullius__/graphics/bacteria.png",
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
	localised_name = {"recipe-name.nullius-metabolism", {"fluid-name.nullius-nucleotides"}},
    icons = {
	  data.raw.fluid["nullius-amino-acids"].icons[2],
	  data.raw.fluid["nullius-amino-acids"].icons[3],
	  data.raw.fluid["nullius-amino-acids"].icons[4],
      {
        icon = "__nullius__/graphics/bacteria.png",
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
    energy_required = 4,
    ingredients = {
      {type="fluid", name="nullius-nucleotides", amount=15},
      {type="fluid", name="nullius-bacteria", amount=2}
    },
    results = {
      {type="fluid", name="nullius-amino-acids", amount=5},
      {type="item", name="nullius-sugar", amount=1},
      {type="fluid", name="nullius-methane", amount=8},
      {type="fluid", name="nullius-wastewater", amount=6}
    },
    main_product = "nullius-amino-acids"
  },

  {
    type = "item",
    name = "nullius-algae-genome",
	icons = {
	  {
        icon = "__nullius__/graphics/algae.png",
        icon_size = 64
	  },
	  {
        icon = "__nullius__/graphics/genome.png",
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
      icon = "__nullius__/graphics/algae-progenitor.png",
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
      icon = "__nullius__/graphics/algae.png",
      icon_size = 64
	}},
    subgroup = "biology-algae",
	order = "nullius-d",
    stack_size = 50
  },
  {
    type = "item",
    name = "nullius-algae-spore",
    icons = {
      {
        icon = "__nullius__/graphics/protocell.png",
        icon_size = 64,
		tint = {1, 1, 1, 0.8}
	  },
      {
        icon = "__nullius__/graphics/algae.png",
        icon_size = 64,
        scale = 0.4,
      }
    },
    subgroup = "biology-algae",
	order = "nullius-e",
    stack_size = 50
  },
  {
    type = "recipe",
    name = "nullius-algae-genome",
    enabled = false,
    category = "nanotechnology",
    energy_required = 20,
    ingredients = {
      {type="item", name="nullius-bacteria-genome", amount=1},
      {type="fluid", name="nullius-nucleotides", amount=6, fluidbox_index=1},
      {type="item", name="nullius-box-astronomy-pack", amount=3},
      {type="item", name="nullius-box-climatology-pack", amount=4}
    },
    results = {
      {type="item", name="nullius-algae-genome", amount=1},
      {type="fluid", name="nullius-wastewater", amount=3}
    },
    main_product = "nullius-algae-genome"
  },
  {
    type = "recipe",
    name = "nullius-algae-progenitor",
    enabled = false,
    category = "nanotechnology",
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
    name = "nullius-algae-1",
	localised_name = {"", {"item-name.nullius-algae"}, " ", 1},
    icons = {
      {
        icon = "__nullius__/graphics/algae.png",
        icon_size = 64
	  },
      {
        icon = "__nullius__/graphics/protocell.png",
        icon_size = 64,
        scale = 0.3,
        shift = {9, -9}
      }
    },
    enabled = false,
	allow_decomposition = false,
    category = "ore-flotation",
	order = "nullius-db",
    energy_required = 10,
    ingredients = {
      {type="fluid", name="nullius-seawater", amount=125},
      {type="fluid", name="nullius-air", amount=500},
      {type="item", name="nullius-algae-progenitor", amount=1},
      {type="item", name="nullius-mineral-dust", amount=1}
    },
    results = {
      {type="item", name="nullius-algae", amount=2},
      {type="fluid", name="nullius-wastewater", amount=80},
      {type="fluid", name="nullius-oxygen", amount=120}
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
    energy_required = 12,
    ingredients = {
      {type="fluid", name="nullius-seawater", amount=500},
      {type="fluid", name="nullius-air", amount=2000},
      {type="item", name="nullius-algae-spore", amount=10},
      {type="item", name="nullius-mineral-dust", amount=3}
    },
    results = {
      {type="item", name="nullius-algae", amount=8},
      {type="fluid", name="nullius-wastewater", amount=300},
      {type="fluid", name="nullius-oxygen", amount=500}
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
    energy_required = 4,
    ingredients = {
      {type="item", name="nullius-algae", amount=3}
    },
    results = {
      {type="item", name="nullius-algae-spore", amount=5},
      {type="fluid", name="nullius-sludge", amount=15},
      {type="item", name="nullius-cellulose", amount=1}
    },
    main_product = "nullius-algae-spore"
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
        icon = "__nullius__/graphics/algae.png",
        icon_size = 64,
        scale = 0.36,
        shift = {-4, -4}
      }
    },
    enabled = false,
	always_show_made_in = true,
	show_amount_in_title = false,
	always_show_products = true,
    category = "ore-flotation",
    subgroup = "biology-algae",
	order = "nullius-f",
    energy_required = 15,
    ingredients = {
      {type="item", name="nullius-algae-spore", amount=3},
      {type="item", name="nullius-mineral-dust", amount=30},
      {type="fluid", name="nullius-wastewater", amount=800},
      {type="fluid", name="nullius-bacteria", amount=2}
    },
    results = {
      {type="item", name="nullius-cellulose", amount=10},
      {type="fluid", name="nullius-oil", amount=120},
      {type="fluid", name="nullius-methane", amount=180}
    },
    main_product = "nullius-oil"
  },
  {
    type = "recipe",
    name = "nullius-boxed-biomass-cultivation",
	localised_name = {"recipe-name.nullius-biomass-cultivation"},
    icons = {
      {
	    icon = "__base__/graphics/icons/fluid/light-oil.png",
        icon_size = 64,
        icon_mipmaps = 4,
		scale = 0.5
	  },
      {
        icon = "__nullius__/graphics/algae.png",
        icon_size = 64,
        scale = 0.36,
        shift = {-4, -4}
      }
    },
    enabled = false,
	always_show_made_in = true,
	show_amount_in_title = false,
	always_show_products = true,
    category = "ore-flotation",
    subgroup = "boxed-biology",
	order = "nullius-fd",
    energy_required = 15,
    ingredients = {
      {type="item", name="nullius-algae-spore", amount=3},
      {type="item", name="nullius-box-mineral-dust", amount=6},
      {type="fluid", name="nullius-wastewater", amount=800},
      {type="fluid", name="nullius-bacteria", amount=2}
    },
    results = {
      {type="item", name="nullius-box-cellulose", amount=2},
      {type="fluid", name="nullius-oil", amount=120},
      {type="fluid", name="nullius-methane", amount=180}
    },
    main_product = "nullius-oil"
  },

  {
    type = "item",
    name = "nullius-grass-genome",
	icons = {
	  {
        icon = "__nullius__/graphics/grass.png",
        icon_size = 64
	  },
	  {
        icon = "__nullius__/graphics/genome.png",
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
      icon = "__nullius__/graphics/grass-progenitor.png",
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
      icon = "__nullius__/graphics/grass.png",
      icon_size = 64
	}},
    subgroup = "biology-grass",
	order = "nullius-d",
    stack_size = 50
  },
  {
    type = "item",
    name = "nullius-grass-seed",
    icons = {
      {
        icon = "__nullius__/graphics/protocell.png",
        icon_size = 64,
		tint = {1, 1, 1, 0.8}
	  },
      {
        icon = "__nullius__/graphics/grass.png",
        icon_size = 64,
        scale = 0.45,
      }
    },
    subgroup = "biology-grass",
	order = "nullius-e",
    stack_size = 50
  },
  {
    type = "recipe",
    name = "nullius-grass-genome",
    enabled = false,
    category = "nanotechnology",
    energy_required = 30,
    ingredients = {
      {type="fluid", name="nullius-nucleotides", amount=8, fluidbox_index=1},
      {type="fluid", name="nullius-bacteria", amount=1, fluidbox_index=2},
      {type="item", name="nullius-algae-genome", amount=1},
      {type="item", name="nullius-box-astronomy-pack", amount=4},
      {type="item", name="nullius-box-geology-pack", amount=5}
    },
    results = {
      {type="item", name="nullius-grass-genome", amount=1},
      {type="fluid", name="nullius-wastewater", amount=3}
    },
    main_product = "nullius-grass-genome"
  },
  {
    type = "recipe",
    name = "nullius-grass-progenitor",
    enabled = false,
    category = "nanotechnology",
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
    name = "nullius-grass-1",
	localised_name = {"", {"item-name.nullius-grass"}, " ", 1},
    icons = {
      {
        icon = "__nullius__/graphics/grass.png",
        icon_size = 64
	  },
      {
        icon = "__nullius__/graphics/protocell.png",
        icon_size = 64,
        scale = 0.3,
        shift = {9, -9}
      }
    },
    enabled = false,
	allow_decomposition = false,
    category = "nullius-water-treatment",
	order = "nullius-db",
    energy_required = 15,
    ingredients = {
      {type="fluid", name="nullius-freshwater", amount=100},
	  {type="fluid", name="nullius-air", amount=600},
	  {type="item", name="nullius-land-fill-bauxite", amount=1},
      {type="item", name="nullius-grass-progenitor", amount=1}
    },
    results = {
      {type="item", name="nullius-grass", amount=2},
      {type="fluid", name="nullius-sludge", amount=10},
      {type="fluid", name="nullius-oxygen", amount=150}
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
    energy_required = 18,
    ingredients = {
      {type="fluid", name="nullius-freshwater", amount=400},
	  {type="fluid", name="nullius-air", amount=2500},
	  {type="item", name="nullius-land-fill-bauxite", amount=2},
	  {type="item", name="nullius-fertilizer", amount=2},
      {type="item", name="nullius-grass-seed", amount=18}
    },
    results = {
      {type="item", name="nullius-grass", amount=8},
      {type="fluid", name="nullius-sludge", amount=40},
      {type="fluid", name="nullius-oxygen", amount=600}
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
      {type="item", name="nullius-cellulose", amount=16}
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
      {type="item", name="nullius-box-cellulose", amount=16}
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
        icon = "__nullius__/graphics/protocell.png",
        icon_size = 64,
		tint = {1, 1, 1, 0.8},
		scale = 0.4,
        shift = {-8, -7}
	  },
      {
        icon = "__nullius__/graphics/grass.png",
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
    energy_required = 1,
    ingredients = {
      {type="item", name="nullius-grass-seed", amount=5}
    },
    results = {
      {type="item", name="nullius-cellulose", amount=3},
      {type="item", name="nullius-sugar", amount=2}
    },
    main_product = "nullius-cellulose"
  },
  {
    type = "recipe",
    name = "nullius-boxed-grass-seed-milling",
	localised_name = {"recipe-name.nullius-boxed", {"recipe-name.nullius-grass-seed-milling"}},
    icons = {
      {
	    icon = "__nullius__/graphics/crate.png",
        icon_size = 64
	  },
      {
        icon = "__base__/graphics/decorative/brown-asterisk/hr-brown-asterisk-11.png",
	    icon_size = 54,
		scale = 0.5333
      },
      {
        icon = "__nullius__/graphics/protocell.png",
        icon_size = 64,
		tint = {1, 1, 1, 0.8},
		scale = 0.36,
        shift = {-7, -6}
	  },
      {
        icon = "__nullius__/graphics/grass.png",
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
    energy_required = 5,
    ingredients = {
      {type="item", name="nullius-box-grass-seed", amount=5}
    },
    results = {
      {type="item", name="nullius-box-cellulose", amount=3},
      {type="item", name="nullius-box-sugar", amount=2}
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
    subgroup = "biology-material",
	order = "nullius-pb",
    energy_required = 1,
    ingredients = {
      {type="item", name="nullius-cellulose", amount=4},
      {type="fluid", name="nullius-oxygen", amount=60}
    },
    results = {
      {type="item", name="nullius-graphite", amount=1},
      {type="fluid", name="nullius-carbon-dioxide", amount=100}
    }
  },
  {
    type = "recipe",
    name = "nullius-boxed-cellulose-burning",
	localised_name = {"recipe-name.nullius-boxed", {"recipe-name.nullius-burning",
	    {"item-name.nullius-cellulose"}}},
    icons = {
      {
	    icon = "__nullius__/graphics/crate.png",
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
	subgroup = "boxed-organic-1",
	order = "nullius-bgb",
    energy_required = 5,
    ingredients = {
      {type="item", name="nullius-box-cellulose", amount=4},
      {type="fluid", name="nullius-oxygen", amount=300}
    },
    results = {
      {type="item", name="nullius-box-graphite", amount=1},
      {type="fluid", name="nullius-carbon-dioxide", amount=500}
    }
  },
  {
    type = "recipe",
    name = "nullius-cellulose-pyrolysis",
	localised_name = {"recipe-name.nullius-pyrolysis", {"item-name.nullius-cellulose"}},
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
    subgroup = "biology-material",
	order = "nullius-pc",
    energy_required = 2,
    ingredients = {
      {type="item", name="nullius-cellulose", amount=3},
      {type="fluid", name="nullius-nitrogen", amount=25}
    },
    results = {
      {type="item", name="nullius-graphite", amount=2},
      {type="fluid", name="nullius-carbon-monoxide", amount=10}
    }
  },
  {
    type = "recipe",
    name = "nullius-boxed-cellulose-pyrolysis",
	localised_name = {"recipe-name.nullius-boxed", {"recipe-name.nullius-pyrolysis",
	    {"item-name.nullius-cellulose"}}},
    icons = {
      {
	    icon = "__nullius__/graphics/crate.png",
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
	subgroup = "boxed-organic-1",
	order = "nullius-bgc",
    energy_required = 2,
    ingredients = {
      {type="item", name="nullius-box-cellulose", amount=3},
      {type="fluid", name="nullius-nitrogen", amount=125}
    },
    results = {
      {type="item", name="nullius-box-graphite", amount=2},
      {type="fluid", name="nullius-carbon-monoxide", amount=50}
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
        shift = {-8, -8}
      }
    },
    enabled = false,
    category = "combustion",
    subgroup = "biology-tree",
	order = "nullius-h",
    energy_required = 1,
    ingredients = {
      {type="item", name="nullius-wood", amount=3},
      {type="fluid", name="nullius-water", amount=100},
      {type="fluid", name="nullius-oxygen", amount=200}
    },
    results = {
      {type="item", name="nullius-graphite", amount=1},
      {type="fluid", name="nullius-steam", amount=500},
      {type="fluid", name="nullius-carbon-dioxide", amount=100}
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
	    icon = "__nullius__/graphics/crate.png",
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
        shift = {-7, -7}
      }
    },
    enabled = false,
    category = "combustion",
	subgroup = "boxed-wood",
	order = "nullius-cc",
    energy_required = 5,
    ingredients = {
      {type="item", name="nullius-box-wood", amount=3},
      {type="fluid", name="nullius-water", amount=500},
      {type="fluid", name="nullius-oxygen", amount=1000}
    },
    results = {
      {type="item", name="nullius-box-graphite", amount=1},
      {type="fluid", name="nullius-steam", amount=2500},
      {type="fluid", name="nullius-carbon-dioxide", amount=500}
    },
    main_product = "nullius-steam"
  },

  {
    type = "item",
    name = "nullius-worm-genome",
	icons = {
	  {
        icon = "__base__/graphics/icons/small-worm.png",
        icon_size = 64,
		icon_mipmaps = 4
	  },
	  {
        icon = "__nullius__/graphics/genome.png",
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
        icon = "__nullius__/graphics/protocell.png",
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
    enabled = false,
    category = "nanotechnology",
    energy_required = 40,
    ingredients = {
      {type="fluid", name="nullius-nucleotides", amount=10, fluidbox_index=1},
      {type="fluid", name="nullius-bacteria", amount=2, fluidbox_index=2},
      {type="item", name="nullius-algae-genome", amount=1},
      {type="item", name="nullius-box-astronomy-pack", amount=6},
      {type="item", name="nullius-box-geology-pack", amount=4}
    },
    results = {
      {type="item", name="nullius-worm-genome", amount=1},
      {type="fluid", name="nullius-wastewater", amount=4}
    },
    main_product = "nullius-worm-genome"
  },
  {
    type = "recipe",
    name = "nullius-worm-progenitor",
    enabled = false,
    category = "nanotechnology",
    energy_required = 240,
    ingredients = {
      {type="item", name="nullius-worm-genome", amount=1},
      {type="fluid", name="nullius-protocell", amount=12},
      {type="fluid", name="nullius-amino-acids", amount=10},
      {type="fluid", name="nullius-oil", amount=6},
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
    name = "nullius-worm-1",
	localised_name = {"", {"item-name.nullius-worm"}, " ", 1},
    icons = {
      {
        icon = "__base__/graphics/icons/small-worm.png",
        icon_size = 64,
	    icon_mipmaps = 4
	  },
      {
        icon = "__nullius__/graphics/protocell.png",
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
      {type="fluid", name="nullius-sludge", amount=100},
	  {type="item", name="nullius-sand", amount=2},
	  {type="fluid", name="nullius-oxygen", amount=150},
	  {type="item", name="nullius-grass", amount=2},
      {type="item", name="nullius-worm-progenitor", amount=1}
    },
    results = {
      {type="item", name="nullius-worm", amount=1},
      {type="item", name="nullius-worm-egg", amount=2},
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
    energy_required = 25,
    ingredients = {
      {type="fluid", name="nullius-sludge", amount=300},
	  {type="item", name="nullius-sand", amount=7},
	  {type="fluid", name="nullius-oxygen", amount=600},
	  {type="item", name="nullius-grass", amount=9},
      {type="item", name="nullius-worm-egg", amount=9}
    },
    results = {
      {type="item", name="nullius-worm", amount=8},
      {type="item", name="nullius-worm-egg", amount=10},
      {type="fluid", name="nullius-carbon-dioxide", amount=500, fluidbox_index=1}
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
      {type="fluid", name="nullius-saline", amount=60}
    },
    results = {
      {type="fluid", name="nullius-amino-acids", amount=45},
      {type="fluid", name="nullius-ammonia", amount=20},
      {type="fluid", name="nullius-wastewater", amount=50},
      {type="item", name="nullius-rutile", amount=1}
    },
    main_product = "nullius-amino-acids"
  },
  {
    type = "recipe",
    name = "nullius-worm-disposal",
	localised_name = {"recipe-name.nullius-disposal", {"item-name.nullius-worm"}},
    icons = {
      {
		icon = "__nullius__/graphics/sludge.png",
		icon_size = 64,
        icon_mipmaps = 4
      },
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
    category = "bio-harvesting",
    subgroup = "biology-worm",
	order = "nullius-fc",
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
        icon = "__nullius__/graphics/protocell.png",
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
    energy_required = 8,
    ingredients = {
      {type="item", name="nullius-worm-egg", amount=5},
      {type="fluid", name="nullius-saline", amount=10}
    },
    results = {
      {type="fluid", name="nullius-amino-acids", amount=6},
      {type="fluid", name="nullius-nucleotides", amount=2},
      {type="fluid", name="nullius-wastewater", amount=10}
    },
    main_product = "nullius-amino-acids"
  },
  {
    type = "recipe",
    name = "nullius-worm-egg-disposal",
	localised_name = {"recipe-name.nullius-disposal", {"item-name.nullius-worm-egg"}},
    icons = {
      {
		icon = "__nullius__/graphics/sludge.png",
		icon_size = 64,
        icon_mipmaps = 4
      },
      {
        icon = "__nullius__/graphics/protocell.png",
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
    subgroup = "biology-worm",
	order = "nullius-gc",
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
		icon_mipmaps = 4
	  },
	  {
        icon = "__nullius__/graphics/genome.png",
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
        icon = "__nullius__/graphics/protocell.png",
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
	order = "nullius-f",
    stack_size = 50
  },
  {
    type = "recipe",
    name = "nullius-tree-genome",
    enabled = false,
    category = "nanotechnology",
    energy_required = 60,
    ingredients = {
      {type="fluid", name="nullius-nucleotides", amount=6, fluidbox_index=1},
      {type="item", name="nullius-grass-genome", amount=2},
      {type="item", name="nullius-box-astronomy-pack", amount=3},
      {type="item", name="nullius-box-mechanical-pack", amount=8}
    },
    results = {
      {type="item", name="nullius-tree-genome", amount=1},
      {type="fluid", name="nullius-wastewater", amount=5}
    },
    main_product = "nullius-tree-genome"
  },
  {
    type = "recipe",
    name = "nullius-tree-progenitor",
    enabled = false,
    category = "nanotechnology",
    energy_required = 270,
    ingredients = {
      {type="item", name="nullius-tree-genome", amount=1},
      {type="fluid", name="nullius-protocell", amount=15},
      {type="fluid", name="nullius-amino-acids", amount=10},
      {type="fluid", name="nullius-oil", amount=12},
      {type="item", name="nullius-sugar", amount=3},
      {type="item", name="nullius-rubber", amount=2},
      {type="item", name="nullius-cellulose", amount=10}
    },
    results = {
      {type="item", name="nullius-tree-progenitor", amount=1},
      {type="fluid", name="nullius-wastewater", amount=12}
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
        icon = "__nullius__/graphics/protocell.png",
        icon_size = 64,
        scale = 0.3,
        shift = {9, -9}
      }
    },
    enabled = false,
	allow_decomposition = false,
    category = "nullius-water-treatment",
	order = "nullius-db",
    energy_required = 40,
    ingredients = {
      {type="fluid", name="nullius-freshwater", amount=150},
	  {type="fluid", name="nullius-air", amount=1000},
	  {type="item", name="nullius-land-fill-sand", amount=1},
	  {type="item", name="nullius-fertilizer", amount=1},
      {type="item", name="nullius-tree-progenitor", amount=1}
    },
    results = {
      {type="item", name="nullius-tree", amount=1},
      {type="fluid", name="nullius-sludge", amount=25},
      {type="fluid", name="nullius-oxygen", amount=250}
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
    energy_required = 50,
    ingredients = {
      {type="fluid", name="nullius-freshwater", amount=600},
	  {type="fluid", name="nullius-air", amount=5000},
	  {type="item", name="nullius-land-fill-sand", amount=4},
	  {type="item", name="nullius-fertilizer", amount=5},
	  {type="item", name="nullius-worm", amount=2},
      {type="item", name="nullius-tree-seed", amount=9}
    },
    results = {
      {type="item", name="nullius-tree", amount=5},
      {type="fluid", name="nullius-sludge", amount=100},
      {type="fluid", name="nullius-oxygen", amount=1200}
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
    energy_required = 3,
    ingredients = {
      {type="item", name="nullius-tree", amount=1}
    },
    results = {
      {type="item", name="nullius-wood", amount=15},
      {type="item", name="nullius-cellulose", amount=6},
      {type="item", name="nullius-tree-seed", amount=2},
      {type="fluid", name="nullius-sludge", amount=5}
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
    energy_required = 15,
    ingredients = {
      {type="item", name="nullius-tree", amount=5}
    },
    results = {
      {type="item", name="nullius-box-wood", amount=15},
      {type="item", name="nullius-box-cellulose", amount=6},
      {type="item", name="nullius-tree-seed", amount=10},
      {type="fluid", name="nullius-sludge", amount=25}
    },
    main_product = "nullius-box-wood"
  },
  {
    type = "recipe",
    name = "nullius-latex",
	localised_name = {"recipe-name.nullius-latex"},
    icons = {
	  {
		icon = "__nullius__/graphics/icons/rubber.png",
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
    energy_required = 10,
    ingredients = {
      {type="item", name="nullius-tree", amount=2},
      {type="fluid", name="nullius-acid-sulfuric", amount=10},
      {type="item", name="nullius-sodium-sulfate", amount=1}
    },
    results = {
      {type="item", name="nullius-wood", amount=30},
      {type="item", name="nullius-cellulose", amount=10},
      {type="item", name="nullius-tree-seed", amount=4},
	  {type="item", name="nullius-rubber", amount=8},
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
	    icon = "__nullius__/graphics/crate.png",
        icon_size = 64
	  },
	  {
		icon = "__nullius__/graphics/icons/rubber.png",
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
    energy_required = 50,
    ingredients = {
      {type="item", name="nullius-tree", amount=10},
      {type="fluid", name="nullius-acid-sulfuric", amount=50},
      {type="item", name="nullius-box-sodium-sulfate", amount=1}
    },
    results = {
      {type="item", name="nullius-box-wood", amount=30},
      {type="item", name="nullius-box-cellulose", amount=10},
      {type="item", name="nullius-tree-seed", amount=20},
	  {type="item", name="nullius-box-rubber", amount=8},
	  {type="item", name="nullius-box-sugar", amount=6},
      {type="fluid", name="nullius-wastewater", amount=50}
    },
    main_product = "nullius-box-rubber"
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
    subgroup = "biology-tree",
	order = "nullius-g",
    energy_required = 1,
    ingredients = {
      {type="item", name="nullius-wood", amount=2}
    },
    result = "nullius-cellulose",
	result_count = 3
  },
  {
    type = "recipe",
    name = "nullius-boxed-wood-pulping",
	localised_name = {"recipe-name.nullius-boxed", {"recipe-name.nullius-wood-pulping"}},
    icons = {
      {
	    icon = "__nullius__/graphics/crate.png",
        icon_size = 64
	  },
      {
        icon = "__base__/graphics/decorative/brown-asterisk/hr-brown-asterisk-11.png",
	    icon_size = 54,
		scale = 0.53
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
    result = "nullius-box-cellulose",
	result_count = 3
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
        icon = "__nullius__/graphics/protocell.png",
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
		icon_mipmaps = 4
	  },
	  {
        icon = "__nullius__/graphics/genome.png",
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
        icon = "__nullius__/graphics/protocell.png",
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
    stack_size = 50
  },
  {
    type = "recipe",
    name = "nullius-fish-genome",
    enabled = false,
    category = "nanotechnology",
    energy_required = 60,
    ingredients = {
      {type="fluid", name="nullius-nucleotides", amount=8, fluidbox_index=1},
      {type="item", name="nullius-worm-genome", amount=2},
      {type="item", name="nullius-box-astronomy-pack", amount=4},
      {type="item", name="nullius-box-mechanical-pack", amount=6}
    },
    results = {
      {type="item", name="nullius-fish-genome", amount=1},
      {type="fluid", name="nullius-wastewater", amount=5}
    },
    main_product = "nullius-fish-genome"
  },
  {
    type = "recipe",
    name = "nullius-fish-progenitor",
    enabled = false,
    category = "nanotechnology",
    energy_required = 300,
    ingredients = {
      {type="item", name="nullius-fish-genome", amount=1},
      {type="fluid", name="nullius-protocell", amount=18},
      {type="fluid", name="nullius-amino-acids", amount=12},
      {type="fluid", name="nullius-oil", amount=15},
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
    name = "nullius-fish-1",
	localised_name = {"", {"item-name.nullius-fish"}, " ", 1},
    icons = {
      {
        icon = "__base__/graphics/icons/fish.png",
        icon_size = 64,
	    icon_mipmaps = 4
	  },
      {
        icon = "__nullius__/graphics/protocell.png",
        icon_size = 64,
        scale = 0.3,
        shift = {9, -9}
      }
    },
    enabled = false,
	allow_decomposition = false,
    category = "ore-flotation",
	order = "nullius-db",
    energy_required = 35,
    ingredients = {
      {type="fluid", name="nullius-seawater", amount=400},
	  {type="fluid", name="nullius-oxygen", amount=500},
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
    energy_required = 40,
    ingredients = {
      {type="fluid", name="nullius-seawater", amount=800},
	  {type="fluid", name="nullius-oxygen", amount=1000},
	  {type="item", name="nullius-algae", amount=10},
	  {type="item", name="nullius-worm", amount=3},
      {type="item", name="nullius-fish-egg", amount=8}
    },
    results = {
      {type="item", name="nullius-fish", amount=6},
      {type="item", name="nullius-fish-egg", amount=10},
      {type="fluid", name="nullius-wastewater", amount=600},
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
    energy_required = 10,
    ingredients = {
      {type="item", name="nullius-fish", amount=2},
      {type="fluid", name="nullius-saline", amount=80}
    },
    results = {
      {type="fluid", name="nullius-oil", amount=80},
      {type="fluid", name="nullius-amino-acids", amount=30},
      {type="fluid", name="nullius-wastewater", amount=50},
      {type="item", name="nullius-lithium-chloride", amount=1}
    },
    main_product = "nullius-oil"
  },
  {
    type = "recipe",
    name = "nullius-fish-disposal",
	localised_name = {"recipe-name.nullius-disposal", {"item-name.nullius-fish"}},
    icons = {
      {
		icon = "__nullius__/graphics/sludge.png",
		icon_size = 64,
        icon_mipmaps = 4
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
    subgroup = "biology-fish",
	order = "nullius-fc",
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
        icon = "__nullius__/graphics/protocell.png",
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
    energy_required = 10,
    ingredients = {
      {type="item", name="nullius-fish-egg", amount=5},
      {type="fluid", name="nullius-saline", amount=15}
    },
    results = {
      {type="fluid", name="nullius-oil", amount=10},
      {type="fluid", name="nullius-nucleotides", amount=3},
      {type="fluid", name="nullius-wastewater", amount=10}
    },
    main_product = "nullius-oil"
  },
  {
    type = "recipe",
    name = "nullius-fish-egg-disposal",
	localised_name = {"recipe-name.nullius-disposal", {"item-name.nullius-fish-egg"}},
    icons = {
      {
		icon = "__nullius__/graphics/sludge.png",
		icon_size = 64,
        icon_mipmaps = 4
      },
      {
        icon = "__nullius__/graphics/protocell.png",
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
    subgroup = "biology-fish",
	order = "nullius-gc",
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
    type = "item",
    name = "nullius-arthropod-genome",
	icons = {
	  {
        icon = "__base__/graphics/icons/small-biter.png",
        icon_size = 64,
		icon_mipmaps = 4
	  },
	  {
        icon = "__nullius__/graphics/genome.png",
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
      icon = "__base__/graphics/icons/small-biter.png",
      icon_size = 64,
	  icon_mipmaps = 4,
	  tint = {0.75, 0.9, 1}
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
        icon = "__nullius__/graphics/protocell.png",
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
    energy_required = 80,
    ingredients = {
      {type="fluid", name="nullius-nucleotides", amount=15, fluidbox_index=1},
      {type="fluid", name="nullius-bacteria", amount=3, fluidbox_index=2},
      {type="item", name="nullius-fish-genome", amount=1},
      {type="item", name="nullius-box-astronomy-pack", amount=12},
      {type="item", name="nullius-box-physics-pack", amount=10}
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
    enabled = false,
    category = "nanotechnology",
    energy_required = 360,
    ingredients = {
      {type="item", name="nullius-arthropod-genome", amount=1},
      {type="fluid", name="nullius-protocell", amount=25},
      {type="fluid", name="nullius-amino-acids", amount=20},
      {type="fluid", name="nullius-oil", amount=16},
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
    name = "nullius-arthropod-1",
	localised_name = {"", {"item-name.nullius-arthropod"}, " ", 1},
    icons = {
      {
        icon = "__base__/graphics/icons/small-biter.png",
        icon_size = 64,
	    icon_mipmaps = 4
	  },
      {
        icon = "__nullius__/graphics/protocell.png",
        icon_size = 64,
        scale = 0.3,
        shift = {9, -9}
      }
    },
    enabled = false,
	allow_decomposition = false,
    category = "nullius-water-treatment",
	order = "nullius-db",
    energy_required = 35,
    ingredients = {
      {type="fluid", name="nullius-freshwater", amount=200},
	  {type="fluid", name="nullius-oxygen", amount=800},
	  {type="item", name="nullius-cellulose", amount=10},
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
    energy_required = 40,
    ingredients = {
      {type="fluid", name="nullius-freshwater", amount=400},
	  {type="fluid", name="nullius-oxygen", amount=1500},
	  {type="item", name="nullius-box-wood", amount=2},
	  {type="item", name="nullius-fish", amount=8},
      {type="item", name="nullius-arthropod-egg", amount=7},
	  {type="item", name="nullius-gun", amount=1},
	  {type="item", name="nullius-box-magazine", amount=2}
    },
    results = {
      {type="item", name="nullius-arthropod", amount=6},
      {type="item", name="nullius-arthropod-egg", amount=9},
      {type="item", name="nullius-iron-oxide", amount=4},
      {type="fluid", name="nullius-sludge", amount=100},
      {type="fluid", name="nullius-carbon-dioxide", amount=1200}
    },
    main_product = "nullius-arthropod"
  },
  {
    type = "recipe",
    name = "nullius-arthropod-harvest",
	localised_name = {"recipe-name.nullius-harvest", {"item-name.nullius-arthropod"}},
    icons = {
	  {
        icon = "__nullius__/graphics/icons/plate.png",
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
      {type="fluid", name="nullius-oil", amount=30},
      {type="fluid", name="nullius-amino-acids", amount=40},
      {type="fluid", name="nullius-heavy-water", amount=5}
    },
    main_product = "nullius-graphene"
  },
  {
    type = "recipe",
    name = "nullius-boxed-arthropod-harvest",
	localised_name = {"recipe-name.nullius-boxed", {"recipe-name.nullius-harvest", {"item-name.nullius-arthropod"}}},
    icons = {
      {
	    icon = "__nullius__/graphics/crate.png",
        icon_size = 64
	  },
	  {
        icon = "__nullius__/graphics/icons/plate.png",
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
      {type="fluid", name="nullius-oil", amount=150},
      {type="fluid", name="nullius-amino-acids", amount=200},
      {type="fluid", name="nullius-heavy-water", amount=25}
    },
    main_product = "nullius-box-graphene"
  },
  {
    type = "recipe",
    name = "nullius-arthropod-disposal",
	localised_name = {"recipe-name.nullius-disposal", {"item-name.nullius-arthropod"}},
    icons = {
      {
		icon = "__nullius__/graphics/sludge.png",
		icon_size = 64,
        icon_mipmaps = 4
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
    category = "bio-harvesting",
    subgroup = "biology-arthropod",
	order = "nullius-fc",
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
	    icon = "__nullius__/graphics/crate.png",
        icon_size = 64
	  },
      {
		icon = "__nullius__/graphics/sludge.png",
		icon_size = 64,
        icon_mipmaps = 4,
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
        icon = "__nullius__/graphics/protocell.png",
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
    energy_required = 5,
    ingredients = {
      {type="item", name="nullius-arthropod-egg", amount=2},
      {type="fluid", name="nullius-saline", amount=15}
    },
    results = {
      {type="item", name="nullius-plastic", amount=3},
      {type="fluid", name="nullius-amino-acids", amount=12},
      {type="fluid", name="nullius-nucleotides", amount=5},
      {type="fluid", name="nullius-heavy-water", amount=2}
    },
    main_product = "nullius-nucleotides"
  },
  {
    type = "recipe",
    name = "nullius-arthropod-egg-disposal",
	localised_name = {"recipe-name.nullius-disposal", {"item-name.nullius-arthropod-egg"}},
    icons = {
      {
		icon = "__nullius__/graphics/sludge.png",
		icon_size = 64,
        icon_mipmaps = 4
      },
      {
        icon = "__nullius__/graphics/protocell.png",
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
    subgroup = "biology-arthropod",
	order = "nullius-gc",
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
    subgroup = "biology-material",
	order = "nullius-q",
    energy_required = 1,
    ingredients = {
      {type="item", name="nullius-plastic", amount=10},
      {type="fluid", name="nullius-oxygen", amount=60}
    },
    results = {
      {type="item", name="nullius-graphite", amount=4},
      {type="fluid", name="nullius-carbon-monoxide", amount=40}
    }
  },
  {
    type = "recipe",
    name = "nullius-boxed-plastic-pyrolysis",
	localised_name = {"recipe-name.nullius-boxed", {"recipe-name.nullius-pyrolysis", {"item-name.nullius-plastic"}}},
    icons = {
      {
	    icon = "__nullius__/graphics/crate.png",
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
	subgroup = "boxed-organic-1",
	order = "nullius-bh",
    energy_required = 1,
    ingredients = {
      {type="item", name="nullius-box-plastic", amount=10},
      {type="fluid", name="nullius-oxygen", amount=300}
    },
    results = {
      {type="item", name="nullius-box-graphite", amount=4},
      {type="fluid", name="nullius-carbon-monoxide", amount=200}
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
    category = "medium-crafting",
    subgroup = "woodworking",
    order = "nullius-b",
    energy_required = 3,
    ingredients = {
      {type="item", name="nullius-wood", amount=2},
      {type="item", name="nullius-iron-rod", amount=1},
      {type="fluid", name="nullius-epoxy", amount=1}
    },
    results = {
      {type="item", name="nullius-small-chest-1", amount=2},
      {type="item", name="nullius-cellulose", amount=1}
    },
    main_product = "nullius-small-chest-1"
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
    result = "nullius-power-pole-1",
	result_count = 2
  },
  {
    type = "recipe",
    name = "nullius-boxed-wooden-power-pole-1",
	localised_name = {"recipe-name.nullius-wooden", {"item-name.nullius-box", {"entity-name.nullius-power-pole-1"}}},
    icons = {
      {
	    icon = "__nullius__/graphics/crate.png",
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
    category = "medium-crafting",
    subgroup = "woodworking",
    order = "nullius-cc",
    energy_required = 5,
    ingredients = {
      {type="item", name="nullius-power-pole-1", amount=1},
      {type="item", name="copper-cable", amount=4},
      {type="item", name="nullius-wood", amount=3},
      {type="fluid", name="nullius-epoxy", amount=2}
    },
    result = "nullius-power-pole-2",
	result_count = 3
  },
  {
    type = "recipe",
    name = "nullius-boxed-wooden-power-pole-2",
	localised_name = {"recipe-name.nullius-wooden", {"item-name.nullius-box", {"entity-name.nullius-power-pole-2"}}},
    icons = {
      {
	    icon = "__nullius__/graphics/crate.png",
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
    category = "large-assembly",
	subgroup = "boxed-wood",
	order = "nullius-wbc",
    energy_required = 25,
    ingredients = {
      {type="item", name="nullius-box-power-pole-1", amount=1},
      {type="item", name="nullius-box-insulated-wire", amount=4},
      {type="item", name="nullius-box-wood", amount=3},
      {type="fluid", name="nullius-epoxy", amount=10}
    },
    result = "nullius-box-power-pole-2",
	result_count = 3
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
    energy_required = 4,
    ingredients = {
      {type="item", name="nullius-steel-beam", amount=2},
      {type="item", name="nullius-wood", amount=3},
      {type="item", name="nullius-steel-rod", amount=1},
      {type="item", name="nullius-gravel", amount=5},
      {type="fluid", name="nullius-epoxy", amount=2}
    },
    result = "rail",
    result_count = 4
  },
  {
    type = "recipe",
    name = "nullius-boxed-wooden-rail",
	localised_name = {"recipe-name.nullius-wooden", {"item-name.nullius-box", {"item-name.rail"}}},
    icons = {
      {
	    icon = "__nullius__/graphics/crate.png",
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
    energy_required = 20,
    ingredients = {
      {type="item", name="nullius-box-steel-beam", amount=2},
      {type="item", name="nullius-box-wood", amount=3},
      {type="item", name="nullius-box-steel-rod", amount=1},
      {type="item", name="nullius-box-gravel", amount=5},
      {type="fluid", name="nullius-epoxy", amount=10}
    },
    result = "nullius-box-rail",
    result_count = 4
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
    order = "nullius-e",
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
      {type="item", name="stone-wall", amount=5},
      {type="item", name="nullius-cellulose", amount=3}
    },
    main_product = "stone-wall"
  },
  {
    type = "recipe",
    name = "nullius-boxed-wooden-wall",
	localised_name = {"recipe-name.nullius-wooden", {"item-name.nullius-box", {"entity-name.stone-wall"}}},
    icons = {
      {
	    icon = "__nullius__/graphics/crate.png",
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
	order = "nullius-wd",
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
      {type="item", name="nullius-box-wall", amount=5},
      {type="item", name="nullius-box-cellulose", amount=3}
    },
    main_product = "nullius-box-wall"
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
      {"nullius-wood", 7}
    },
    result = "nullius-medium-assembler-1",
    result_count = 3
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
    energy_required = 15,
    ingredients = {
      {"nullius-small-miner-1", 5},
      {"nullius-box-wood", 2}
    },
    result = "nullius-medium-miner-1",
    result_count = 3
  },

  {
    type = "tool",
    name = "nullius-biochemistry-pack",
    order = "nullius-b",
    icons = {
      {
        icon = "__nullius__/graphics/icons/flask.png",
		icon_size = 64
      },
	  {
        icon = "__angelspetrochem__/graphics/icons/molecules/glycerol.png",
	    icon_size = 72,
        scale = 0.28,
        shift = {0, 6}
	  },
      {
        icon = "__nullius__/graphics/icons/flask.png",
		icon_size = 64,
		tint = {0.4, 0.3, 0.4, 0.4}
      }
    },
    subgroup = "biology-research",
    stack_size = 10,
    durability = 1,
    durability_description_key = "description.science-pack-remaining-amount-key",
    durability_description_value = "description.science-pack-remaining-amount-value"
  },
  {
    type = "tool",
    name = "nullius-microbiology-pack",
    order = "nullius-c",
    icons = {
      {
        icon = "__nullius__/graphics/icons/flask.png",
		icon_size = 64
      },
	  {
        icon = "__nullius__/graphics/bacteria.png",
        icon_size = 64,
		scale = 0.36,
		shift = {3, 5}
	  },
      {
        icon = "__nullius__/graphics/icons/flask.png",
		icon_size = 64,
		tint = {0.4, 0.3, 0.4, 0.4}
      }
    },
    subgroup = "biology-research",
    stack_size = 10,
    durability = 1,
    durability_description_key = "description.science-pack-remaining-amount-key",
    durability_description_value = "description.science-pack-remaining-amount-value"
  },
  {
    type = "tool",
    name = "nullius-botany-pack",
    order = "nullius-d",
    icons = {
      {
        icon = "__nullius__/graphics/icons/flask.png",
		icon_size = 64
      },
	  {
        icon = "__nullius__/graphics/grass.png",
        icon_size = 64,
		scale = 0.33,
		shift = {0, 4}
	  },
      {
        icon = "__nullius__/graphics/icons/flask.png",
		icon_size = 64,
		tint = {0.4, 0.3, 0.4, 0.4}
      }
    },
    subgroup = "biology-research",
    stack_size = 10,
    durability = 1,
    durability_description_key = "description.science-pack-remaining-amount-key",
    durability_description_value = "description.science-pack-remaining-amount-value"
  },
  {
    type = "tool",
    name = "nullius-dendrology-pack",
    order = "nullius-e",
    icons = {
      {
        icon = "__nullius__/graphics/icons/flask.png",
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
        icon = "__nullius__/graphics/icons/flask.png",
		icon_size = 64,
		tint = {0.4, 0.3, 0.4, 0.4}
      }
    },
    subgroup = "biology-research",
    stack_size = 10,
    durability = 1,
    durability_description_key = "description.science-pack-remaining-amount-key",
    durability_description_value = "description.science-pack-remaining-amount-value"
  },
  {
    type = "tool",
    name = "nullius-nematology-pack",
    order = "nullius-f",
    icons = {
      {
        icon = "__nullius__/graphics/icons/flask.png",
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
        icon = "__nullius__/graphics/icons/flask.png",
		icon_size = 64,
		tint = {0.4, 0.3, 0.4, 0.4}
      }
    },
    subgroup = "biology-research",
    stack_size = 10,
    durability = 1,
    durability_description_key = "description.science-pack-remaining-amount-key",
    durability_description_value = "description.science-pack-remaining-amount-value"
  },
  {
    type = "tool",
    name = "nullius-ichthyology-pack",
    order = "nullius-g",
    icons = {
      {
        icon = "__nullius__/graphics/icons/flask.png",
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
        icon = "__nullius__/graphics/icons/flask.png",
		icon_size = 64,
		tint = {0.4, 0.3, 0.4, 0.4}
      }
    },
    subgroup = "biology-research",
    stack_size = 10,
    durability = 1,
    durability_description_key = "description.science-pack-remaining-amount-key",
    durability_description_value = "description.science-pack-remaining-amount-value"
  },
  {
    type = "tool",
    name = "nullius-zoology-pack",
    order = "nullius-h",
    icons = {
      {
        icon = "__nullius__/graphics/icons/flask.png",
		icon_size = 64
      },
	  {
        icon = "__base__/graphics/icons/small-biter.png",
        icon_size = 64,
		scale = 0.32,
		shift = {-1, 6}
	  },
      {
        icon = "__nullius__/graphics/icons/flask.png",
		icon_size = 64,
		tint = {0.4, 0.3, 0.4, 0.4}
      }
    },
    subgroup = "biology-research",
    stack_size = 10,
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
      {type="item", name="nullius-box-chemical-pack", amount=10},
      {type="item", name="nullius-box-electrical-pack", amount=5},
      {type="item", name="nullius-box-sugar", amount=5},
      {type="fluid", name="nullius-amino-acids", amount=200},
      {type="fluid", name="nullius-fatty-acids", amount=250},
      {type="fluid", name="nullius-nucleotides", amount=100}
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
      {type="item", name="nullius-algae", amount=50},
      {type="fluid", name="nullius-bacteria", amount=100}
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
      {type="item", name="nullius-grass", amount=50},
      {type="item", name="nullius-box-cellulose", amount=40}
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
      {type="item", name="nullius-tree", amount=25},
      {type="item", name="nullius-box-wood", amount=20}
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
      {type="item", name="nullius-worm", amount=40},
      {type="fluid", name="nullius-carbon-dioxide", amount=2000}
    },
    result = "nullius-nematology-pack"
  },
  {
    type = "recipe",
    name = "nullius-ichthyology-pack",
    enabled = false,
    category = "small-fluid-assembly",
    energy_required = 120,
    ingredients = {
      {type="item", name="nullius-fish-progenitor", amount=1},
      {type="item", name="nullius-fish", amount=30},
      {type="fluid", name="nullius-wastewater", amount=2000}
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
      {type="item", name="nullius-arthropod", amount=20},
      {type="item", name="nullius-box-plastic", amount=10}
    },
    result = "nullius-zoology-pack"
  }
})
