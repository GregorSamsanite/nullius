local ICONPATH = "__nullius__/graphics/icons/"
local ENTICONPATH = "__nullius__/graphics/icons/entity/"
local ENTITYPATH = "__nullius__/graphics/entity/"

local transitions = require("__alien-biomes__/prototypes/tile/tile-transitions-static")

data:extend({
  {
    type = "item",
    name = "nullius-land-fill-gravel",
    icon = ENTICONPATH .. "landfill-grey.png",
    icon_size = 64,
    subgroup = "terrain",
    order = "nullius-db",
    stack_size = 500,
    place_as_tile = {
      result = "landfill",
      condition_size = 1,
      condition = { layers = {ground_tile = true}}
    }
  },
  {
    type = "item",
    name = "nullius-land-fill-sand",
    icon = ENTICONPATH .. "landfill-tan.png",
    icon_size = 64,
    subgroup = "terrain",
    order = "nullius-dc",
    stack_size = 500,
    place_as_tile = {
      result = "nullius-land-fill-sand",
      condition_size = 1,
      condition = { layers = {ground_tile = true}}
    }
  },
  {
    type = "item",
    name = "nullius-land-fill-bauxite",
    icon = ENTICONPATH .. "landfill-brown.png",
    icon_size = 64,
    subgroup = "terrain",
    order = "nullius-dd",
    stack_size = 500,
    place_as_tile = {
      result = "nullius-land-fill-bauxite",
      condition_size = 1,
      condition = { layers = {ground_tile = true}}
    }
  },
  {
    type = "item",
    name = "nullius-land-fill-iron",
    icon = ENTICONPATH .. "landfill-red.png",
    icon_size = 64,
    subgroup = "terrain",
    order = "nullius-de",
    stack_size = 500,
    place_as_tile = {
      result = "nullius-land-fill-iron",
      condition_size = 1,
      condition = { layers = {ground_tile = true}}
    }
  },
  {
    type = "item",
    name = "nullius-land-fill-limestone",
    icon = ENTICONPATH .. "landfill-beige.png",
    icon_size = 64,
    subgroup = "terrain",
    order = "nullius-df",
    stack_size = 500,
    place_as_tile = {
      result = "nullius-land-fill-limestone",
      condition_size = 1,
      condition = { layers = {ground_tile = true}}
    }
  },

  {
    type = "recipe",
    name = "nullius-land-fill-gravel",
    localised_name = {"recipe-name.nullius-land-fill-grey-1"},
    order = "nullius-dbb",
    energy_required = 2,
    enabled = false,
    category = "hand-crushing",
    always_show_made_in = true,
    show_amount_in_title = false,
    always_show_products = true,
    ingredients = {
      {type = "item", name = "nullius-gravel", amount = 5},
      {type = "item", name = "nullius-sand", amount = 1}
    },
    results = {
			{type="item", name="nullius-land-fill-gravel", amount = 2}
		}
  },
  {
    type = "recipe",
    name = "nullius-boxed-land-fill-gravel",
    localised_name = {"recipe-name.nullius-boxed", {"recipe-name.nullius-land-fill-grey-1"}},
    order = "nullius-bb",
    energy_required = 10,
    enabled = false,
    always_show_made_in = true,
    show_amount_in_title = false,
    always_show_products = true,
    category = "ore-crushing",
    subgroup = "boxed-land-fill",
    ingredients = {
      {type = "item", name = "nullius-box-gravel", amount = 5},
      {type = "item", name = "nullius-box-sand", amount = 1}
    },
    results = {
			{type="item", name="nullius-box-land-fill-gravel", amount = 1}
		}
  },
  {
    type = "recipe",
    name = "nullius-land-fill-sand",
    localised_name = {"recipe-name.nullius-land-fill-tan-1"},
    order = "nullius-dcb",
    energy_required = 2,
    enabled = false,
    category = "hand-crushing",
    always_show_made_in = true,
    show_amount_in_title = false,
    always_show_products = true,
    ingredients = {
      {type = "item", name = "nullius-sand", amount = 10},
      {type = "item", name = "nullius-gravel", amount = 2}
    },
    results = {
			{type="item", name="nullius-land-fill-sand", amount = 4}
		}
  },
  {
    type = "recipe",
    name = "nullius-boxed-land-fill-sand",
    localised_name = {"recipe-name.nullius-boxed", {"recipe-name.nullius-land-fill-tan-1"}},
    order = "nullius-cb",
    energy_required = 5,
    enabled = false,
    always_show_made_in = true,
    show_amount_in_title = false,
    always_show_products = true,
    category = "ore-crushing",
    subgroup = "boxed-land-fill",
    ingredients = {
      {type = "item", name = "nullius-box-sand", amount = 5},
      {type = "item", name = "nullius-box-gravel", amount = 1}
    },
    results = {
			{type="item", name="nullius-box-land-fill-sand", amount = 1}
		}
  },
  {
    type = "recipe",
    name = "nullius-land-fill-bauxite",
    localised_name = {"recipe-name.nullius-land-fill-brown-1"},
    order = "nullius-ddb",
    energy_required = 6,
    enabled = false,
    category = "hand-crushing",
    always_show_made_in = true,
    show_amount_in_title = false,
    always_show_products = true,
    ingredients = {
      {type = "item", name = "nullius-crushed-bauxite", amount = 15},
      {type = "item", name = "nullius-gravel", amount = 5}
    },
    results = {
			{type="item", name="nullius-land-fill-bauxite", amount = 10}
		}
  },
  {
    type = "recipe",
    name = "nullius-land-fill-iron",
    localised_name = {"recipe-name.nullius-land-fill-red-1"},
    order = "nullius-deb",
    energy_required = 2,
    enabled = false,
    show_amount_in_title = false,
    always_show_products = true,
    category = "ore-crushing",
    ingredients = {
      {type = "item", name = "nullius-crushed-iron-ore", amount = 4},
      {type = "item", name = "nullius-sand", amount = 1}
    },
    results = {
			{type="item", name="nullius-land-fill-iron", amount = 2}
		}
  },
  {
    type = "recipe",
    name = "nullius-land-fill-limestone",
    localised_name = {"recipe-name.nullius-land-fill-beige-1"},
    order = "nullius-dfb",
    energy_required = 8,
    enabled = false,
    show_amount_in_title = false,
    always_show_products = true,
    category = "ore-crushing",
    ingredients = {
      {type = "item", name = "nullius-crushed-limestone", amount = 25}
    },
    results = {
			{type="item", name="nullius-land-fill-limestone", amount = 10}
		}
  },

  {
    type = "recipe",
    name = "nullius-land-fill-grey",
    localised_name = {"recipe-name.nullius-land-fill-grey-2"},
    icons = {
      {
        icon = ENTICONPATH .. "landfill-grey.png",
        icon_size = 64
      },
      {
        icon = "__base__/graphics/icons/concrete.png",
        icon_size = 64,
        
        scale = 0.2,
        shift = {-12, -12}
      }
    },
    order = "nullius-dbc",
    energy_required = 8,
    enabled = false,
    category = "hand-crushing",
    always_show_made_in = true,
    show_amount_in_title = false,
    always_show_products = true,
    ingredients = {
      {type = "item", name = "nullius-gravel", amount = 10},
      {type = "item", name = "concrete", amount = 15}
    },
    results = {
			{type="item", name="nullius-land-fill-gravel", amount = 20}
		}
  },
  {
    type = "recipe",
    name = "nullius-boxed-land-fill-grey",
    localised_name = {"recipe-name.nullius-boxed", {"recipe-name.nullius-land-fill-grey-2"}},
    order = "nullius-bc",
    icons = {
      {
        icon = ICONPATH .. "crate.png",
        icon_size = 64
      },
      {
        icon = ENTICONPATH .. "landfill-grey.png",
        icon_size = 64,
        scale = 0.45
      },
      {
        icon = "__base__/graphics/icons/concrete.png",
        icon_size = 64,
        
        scale = 0.18,
        shift = {-11, -11}
      }
    },
    enabled = false,
    always_show_made_in = true,
    show_amount_in_title = false,
    always_show_products = true,
    category = "ore-crushing",
    subgroup = "boxed-land-fill",
    energy_required = 16,
    ingredients = {
      {type = "item", name = "nullius-box-gravel", amount = 4},
      {type = "item", name = "nullius-box-concrete", amount = 3}
    },
    results = {
			{type="item", name="nullius-box-land-fill-gravel", amount = 4}
		}
  },

  {
    type = "recipe",
    name = "nullius-land-fill-tan",
    localised_name = {"recipe-name.nullius-land-fill-tan-2"},
    icons = {
      {
        icon = ENTICONPATH .. "landfill-tan.png",
        icon_size = 64
      },
      {
        icon = "__base__/graphics/icons/concrete.png",
        icon_size = 64,
        
        scale = 0.2,
        shift = {-12, -12}
      }
    },
    order = "nullius-dcc",
    energy_required = 6,
    enabled = false,
    category = "ore-crushing",
    always_show_made_in = true,
    show_amount_in_title = false,
    always_show_products = true,
    ingredients = {
      {type = "item", name = "nullius-sand", amount = 10},
      {type = "item", name = "nullius-yellow-concrete", amount = 10}
    },
    results = {
			{type="item", name="nullius-land-fill-sand", amount = 20}
		}
  },
  {
    type = "recipe",
    name = "nullius-boxed-land-fill-tan",
    localised_name = {"recipe-name.nullius-boxed", {"recipe-name.nullius-land-fill-tan-2"}},
    order = "nullius-cc",
    icons = {
      {
        icon = ICONPATH .. "crate.png",
        icon_size = 64
      },
      {
        icon = ENTICONPATH .. "landfill-tan.png",
        icon_size = 64,
        scale = 0.45
      },
      {
        icon = "__base__/graphics/icons/concrete.png",
        icon_size = 64,
        
        scale = 0.18,
        shift = {-11, -11}
      }
    },
    enabled = false,
    always_show_made_in = true,
    show_amount_in_title = false,
    always_show_products = true,
    category = "ore-crushing",
    subgroup = "boxed-land-fill",
    energy_required = 6,
    ingredients = {
      {type = "item", name = "nullius-box-sand", amount = 2},
      {type = "item", name = "nullius-box-yellow-concrete", amount = 1}
    },
    results = {
			{type="item", name="nullius-box-land-fill-sand", amount = 2}
		}
  },

  {
    type = "recipe",
    name = "nullius-land-fill-brown",
    localised_name = {"recipe-name.nullius-land-fill-brown-2"},
    icons = {
      {
        icon = ENTICONPATH .. "landfill-brown.png",
        icon_size = 64
      },
      {
        icon = "__base__/graphics/icons/concrete.png",
        icon_size = 64,
        
        scale = 0.2,
        shift = {-12, -12}
      }
    },
    order = "nullius-ddc",
    energy_required = 4,
    enabled = false,
    category = "ore-crushing",
    always_show_made_in = true,
    show_amount_in_title = false,
    always_show_products = true,
    ingredients = {
      {type = "item", name = "nullius-crushed-bauxite", amount = 3},
      {type = "item", name = "nullius-brown-concrete", amount = 5}
    },
    results = {
			{type="item", name="nullius-land-fill-bauxite", amount = 10}
		}
  },
  {
    type = "recipe",
    name = "nullius-boxed-land-fill-brown",
    enabled = false,
    always_show_made_in = true,
    show_amount_in_title = false,
    always_show_products = true,
    category = "ore-crushing",
    subgroup = "boxed-land-fill",
    order = "nullius-db",
    energy_required = 40,
    ingredients = {
      {type = "item", name = "nullius-box-crushed-bauxite", amount = 6},
      {type = "item", name = "nullius-box-brown-concrete", amount = 5}
    },
    results = {
			{type="item", name="nullius-box-land-fill-bauxite", amount = 10}
		}
  },

  {
    type = "recipe",
    name = "nullius-land-fill-red",
    localised_name = {"recipe-name.nullius-land-fill-red-2"},
    icons = {
      {
        icon = ENTICONPATH .. "landfill-red.png",
        icon_size = 64
      },
      {
        icon = "__base__/graphics/icons/concrete.png",
        icon_size = 64,
        
        scale = 0.2,
        shift = {-12, -12}
      }
    },
    order = "nullius-dec",
    energy_required = 4,
    enabled = false,
    show_amount_in_title = false,
    always_show_products = true,
    category = "ore-crushing",
    ingredients = {
      {type = "item", name = "nullius-crushed-iron-ore", amount = 4},
      {type = "item", name = "nullius-red-concrete", amount = 5}
    },
    results = {
			{type="item", name="nullius-land-fill-iron", amount = 10}
		}
  },
  {
    type = "recipe",
    name = "nullius-boxed-land-fill-red",
    enabled = false,
    show_amount_in_title = false,
    always_show_products = true,
    category = "ore-crushing",
    subgroup = "boxed-land-fill",
    order = "nullius-eb",
    energy_required = 40,
    ingredients = {
      {type = "item", name = "nullius-box-crushed-iron-ore", amount = 8},
      {type = "item", name = "nullius-box-red-concrete", amount = 5}
    },
    results = {
			{type="item", name="nullius-box-land-fill-iron", amount = 10}
		}
  },

  {
    type = "recipe",
    name = "nullius-land-fill-beige",
    localised_name = {"recipe-name.nullius-land-fill-beige-2"},
    icons = {
      {
        icon = ENTICONPATH .. "landfill-beige.png",
        icon_size = 64
      },
      {
        icon = "__base__/graphics/icons/concrete.png",
        icon_size = 64,
        
        scale = 0.2,
        shift = {-12, -12}
      }
    },
    order = "nullius-dfc",
    energy_required = 4,
    enabled = false,
    show_amount_in_title = false,
    always_show_products = true,
    category = "ore-crushing",
    ingredients = {
      {type = "item", name = "nullius-crushed-limestone", amount = 5},
      {type = "item", name = "refined-concrete", amount = 4}
    },
    results = {
			{type="item", name="nullius-land-fill-limestone", amount = 10}
		}
  },
  {
    type = "recipe",
    name = "nullius-boxed-land-fill-beige",
    enabled = false,
    show_amount_in_title = false,
    always_show_products = true,
    category = "ore-crushing",
    subgroup = "boxed-land-fill",
    order = "nullius-fb",
    energy_required = 20,
    ingredients = {
      {type = "item", name = "nullius-box-crushed-limestone", amount = 5},
      {type = "item", name = "nullius-box-reinforced-concrete", amount = 2}
    },
    results = {
			{type="item", name="nullius-box-land-fill-limestone", amount = 5}
		}
  },

  {
    type = "recipe",
    name = "nullius-land-fill-sludge",
    localised_name = {"recipe-name.nullius-land-fill-sludge"},
    icons = {
      {
        icon = ENTICONPATH .. "landfill-brown.png",
        icon_size = 64
      },
      {
        icon = ICONPATH .. "fluid/sludge.png",
        icon_size = 64,
        scale = 0.25,
        shift = {-12, -10}
      }
    },
    subgroup = "masonry",
    order = "nullius-as",
    energy_required = 2,
    category = "ore-crushing",
    enabled = false,
    always_show_made_in = true,
    show_amount_in_title = false,
    always_show_products = true,
    ingredients = {
      {type="item", name="nullius-land-fill-gravel", amount=3},
      {type="item", name="nullius-land-fill-sand", amount=2},
      {type="fluid", name="nullius-sludge", amount=30}
    },
    results = {
			{type="item", name="nullius-land-fill-bauxite", amount = 10}
		}
  },
  {
    type = "recipe",
    name = "nullius-boxed-land-fill-sludge",
    localised_name = {"recipe-name.nullius-boxed", {"recipe-name.nullius-land-fill-sludge"}},
    icons = {
      {
        icon = ICONPATH .. "crate.png",
        icon_size = 64
      },
      {
        icon = ENTICONPATH .. "landfill-brown.png",
        icon_size = 64,
        scale = 0.45
      },
      {
        icon = ICONPATH .. "fluid/sludge.png",
        icon_size = 64,
        scale = 0.225,
        shift = {-11, -9}
      }
    },
    enabled = false,
    always_show_made_in = true,
    show_amount_in_title = false,
    always_show_products = true,
    category = "ore-crushing",
    subgroup = "boxed-land-fill",
	order = "nullius-dc",
    energy_required = 20,
    ingredients = {
      {type="item", name="nullius-box-land-fill-gravel", amount=3},
      {type="item", name="nullius-box-land-fill-sand", amount=2},
      {type="fluid", name="nullius-sludge", amount=300}
    },
    results = {
			{type="item", name="nullius-box-land-fill-bauxite", amount = 10}
		}
  },
  {
    type = "recipe",
    name = "nullius-land-fill-dust",
    localised_name = {"recipe-name.nullius-land-fill-dust"},
    icons = {
      {
        icon = ICONPATH .. "crate.png",
        icon_size = 64
      },
      {
        icon = ENTICONPATH .. "landfill-brown.png",
        icon_size = 64,
        scale = 0.45
      },
      {
        icon = "__angelssmeltinggraphics__/graphics/icons/powder-tungsten.png",
        icon_size = 64,
        
        scale = 0.225,
        shift = {-9, -10}
      }
    },
    enabled = false,
    always_show_made_in = true,
    show_amount_in_title = false,
    always_show_products = true,
    category = "ore-crushing",
    subgroup = "boxed-dumping",
    order = "nullius-fd",
    energy_required = 30,
    ingredients = {
      {type="item", name="nullius-box-land-fill-iron", amount=2},
      {type="item", name="nullius-box-land-fill-sand", amount=1},
      {type="item", name="nullius-box-mineral-dust", amount=15},
      {type="fluid", name="nullius-freshwater", amount=400}
    },
    results = {
			{type="item", name="nullius-box-land-fill-bauxite", amount = 8}
		}
  },
  {
    type = "recipe",
    name = "nullius-carbon-sink",
    localised_name = {"recipe-name.nullius-carbon-sink"},
    icons = {
      {
        icon = ICONPATH .. "crate.png",
        icon_size = 64
      },
      {
        icon = ENTICONPATH .. "landfill-grey.png",
        icon_size = 64,
        scale = 0.45
      },
      {
        icon = "__base__/graphics/icons/coal-dark-background.png",
        icon_size = 64,
        
        scale = 0.2,
        shift = {-9, -9}
      }
    },
    enabled = false,
    always_show_made_in = true,
    show_amount_in_title = false,
    always_show_products = true,
    category = "ore-crushing",
    subgroup = "boxed-dumping",
    order = "nullius-fb",
    energy_required = 20,
    ingredients = {
      {type="item", name="nullius-box-land-fill-limestone", amount=4},
      {type="item", name="nullius-box-plastic", amount=1},
      {type="item", name="nullius-box-rubber", amount=1},
      {type="item", name="nullius-box-graphite", amount=30}
    },
    results = {
			{type="item", name="nullius-box-land-fill-gravel", amount = 12}
		}
  },
  {
    type = "recipe",
    name = "nullius-composting-cellulose",
    localised_name = {"recipe-name.nullius-composting", {"item-name.nullius-cellulose"}},
    icons = {
      {
        icon = ENTICONPATH .. "landfill-brown.png",
        icon_size = 64
      },
      {
        icon = "__base__/graphics/decorative/brown-asterisk/brown-asterisk-11.png",
        icon_size = 54,
        scale = 0.41,
        shift = {-7, -7}
      }
    },
    enabled = false,
    always_show_made_in = true,
    show_amount_in_title = false,
    always_show_products = true,
    category = "ore-flotation",
    subgroup = "biology-material",
    order = "nullius-fd",
    energy_required = 5,
    ingredients = {
      {type="item", name="nullius-land-fill-gravel", amount=2},
      {type="item", name="nullius-cellulose", amount=25},
      {type="fluid", name="nullius-freshwater", amount=30},
      {type="fluid", name="nullius-bacteria", amount=1}
    },
    results = {
      {type="item", name="nullius-land-fill-bauxite", amount=6},
      {type="fluid", name="nullius-methane", amount=20, fluidbox_index=1}
    },
    main_product = "nullius-land-fill-bauxite"
  },
  {
    type = "recipe",
    name = "nullius-boxed-composting-cellulose",
    localised_name = {"recipe-name.nullius-composting", {"item-name.nullius-cellulose"}},
    icons = {
      {
        icon = ICONPATH .. "crate.png",
        icon_size = 64
      },
      {
        icon = ENTICONPATH .. "landfill-brown.png",
        icon_size = 64,
		scale = 0.45
      },
      {
        icon = "__base__/graphics/decorative/brown-asterisk/brown-asterisk-11.png",
        icon_size = 54,
        scale = 0.37,
        shift = {-6, -6}
      }
    },
    enabled = false,
    always_show_made_in = true,
    show_amount_in_title = false,
    always_show_products = true,
    category = "ore-flotation",
	subgroup = "boxed-dumping",
    order = "nullius-gb",
    energy_required = 25,
    ingredients = {
      {type="item", name="nullius-box-land-fill-gravel", amount=1},
      {type="item", name="nullius-box-cellulose", amount=25},
      {type="fluid", name="nullius-freshwater", amount=150},
      {type="fluid", name="nullius-bacteria", amount=5}
    },
    results = {
      {type="item", name="nullius-box-land-fill-bauxite", amount=3},
      {type="fluid", name="nullius-methane", amount=100, fluidbox_index=1}
    },
    main_product = "nullius-box-land-fill-bauxite"
  },
  {
    type = "recipe",
    name = "nullius-composting-wood",
    localised_name = {"recipe-name.nullius-composting", {"item-name.nullius-wood"}},
    icons = {
      {
        icon = ENTICONPATH .. "landfill-brown.png",
        icon_size = 64
      },
      {
	  	icon = ICONPATH .. "wood-chip.png",
        icon_size = 64,
        scale = 0.36,
        shift = {-7, -8}
      }
    },
    enabled = false,
    always_show_made_in = true,
    show_amount_in_title = false,
    always_show_products = true,
    category = "ore-flotation",
    subgroup = "biology-material",
    order = "nullius-mc",
    energy_required = 20,
    ingredients = {
      {type="item", name="nullius-land-fill-sand", amount=6},
      {type="item", name="nullius-wood-chip", amount=120},
	  {type="item", name="nullius-worm", amount=1},
      {type="fluid", name="nullius-freshwater", amount=120},
      {type="fluid", name="nullius-oxygen", amount=160}      
    },
    results = {
      {type="item", name="nullius-land-fill-bauxite", amount=16},
      {type="fluid", name="nullius-carbon-dioxide", amount=150, fluidbox_index=1}
    },
    main_product = "nullius-land-fill-bauxite"
  },
  {
    type = "recipe",
    name = "nullius-boxed-composting-wood",
    localised_name = {"recipe-name.nullius-composting", {"item-name.nullius-wood"}},
    icons = {
      {
        icon = ICONPATH .. "crate.png",
        icon_size = 64
      },
      {
        icon = ENTICONPATH .. "landfill-brown.png",
        icon_size = 64,
		scale = 0.45
      },
      {
	  	icon = ICONPATH .. "wood-chip.png",
        icon_size = 64,
        scale = 0.33,
        shift = {-6, -7}
      }
    },
    enabled = false,
    always_show_made_in = true,
    show_amount_in_title = false,
    always_show_products = true,
    category = "ore-flotation",
    subgroup = "boxed-dumping",
    order = "nullius-gc",
    energy_required = 100,
    ingredients = {
      {type="item", name="nullius-box-land-fill-sand", amount=3},
      {type="item", name="nullius-box-wood-chip", amount=120},
	  {type="item", name="nullius-worm", amount=5},
      {type="fluid", name="nullius-freshwater", amount=600},
      {type="fluid", name="nullius-oxygen", amount=800}      
    },
    results = {
      {type="item", name="nullius-box-land-fill-bauxite", amount=8},
      {type="fluid", name="nullius-carbon-dioxide", amount=750, fluidbox_index=1}
    },
    main_product = "nullius-box-land-fill-bauxite"
  },
  {
    type = "recipe",
    name = "nullius-chlorine-sink",
    localised_name = {"recipe-name.nullius-chlorine-sink"},
    icons = {
      {
        icon = ICONPATH .. "crate.png",
        icon_size = 64
      },
      {
        icon = ENTICONPATH .. "landfill-tan.png",
        icon_size = 64,
        scale = 0.45
      },
      {
        icon = "__angelspetrochemgraphics__/graphics/icons/molecules/chlorine.png",
        icon_size = 72,
        scale = 0.2,
        shift = {-9, -10}
      }
    },
    enabled = false,
    always_show_made_in = true,
    show_amount_in_title = false,
    always_show_products = true,
	  no_productivity = true,
    category = "bulk-smelting",
    subgroup = "boxed-dumping",
    order = "nullius-fc",
    energy_required = 12,
    ingredients = {
      {type="item", name="nullius-box-land-fill-limestone", amount=3},
	  {type="item", name="nullius-box-land-fill-iron", amount=2},
      {type="item", name="nullius-box-plastic", amount=1},
      {type="fluid", name="nullius-chlorine", amount=5000}
    },
    results = {
			{type="item", name="nullius-box-land-fill-sand", amount = 8}
		}
  },
  {
    type = "recipe",
    name = "nullius-boron-sink",
    localised_name = {"recipe-name.nullius-boron-sink"},
    icons = {
      {
        icon = ICONPATH .. "crate.png",
        icon_size = 64
      },
      {
        icon = ENTICONPATH .. "landfill-red.png",
        icon_size = 64,
        scale = 0.45
      },
	  {
        icon = ICONPATH .. "lye.png",
        icon_size = 64,
        tint = { 240, 172, 172 },
		scale = 0.25,
        shift = {-8, -8}
      }
    },
    enabled = false,
    always_show_made_in = true,
    show_amount_in_title = false,
    always_show_products = true,
	  no_productivity = true,
    category = "ore-crushing",
    subgroup = "boxed-dumping",
    order = "nullius-h",
    energy_required = 10,
    ingredients = {
      {type="item", name="nullius-box-land-fill-limestone", amount=4},
      {type="item", name="nullius-box-soda-ash", amount=2},
      {type="item", name="nullius-box-acid-boric", amount=40}
    },
    results = {
			{type="item", name="nullius-box-land-fill-iron", amount = 6}
		}
  },

  {
    type = "recipe",
    name = "nullius-dumping-rock",
    localised_name = {"recipe-name.nullius-dumping-rock"},
    icons = {
      {
        icon = ICONPATH .. "crate.png",
        icon_size = 64
      },
      {
        icon = ICONPATH .. "terraforming-grey.png",
        icon_size = 64,
        scale = 0.45
      }
    },
    enabled = false,
    always_show_made_in = true,
    show_amount_in_title = false,
    always_show_products = true,
    allow_decomposition = false,
    allow_as_intermediate = false,
    no_productivity = true,
    category = "ore-crushing",
    subgroup = "boxed-dumping",
    order = "nullius-db",
    energy_required = 720,
    ingredients = {
      {type="item", name="nullius-terraforming-drone-grey", amount=5},
      {type="item", name="nullius-box-land-fill-gravel", amount=2500},
      {type="item", name="nullius-box-rocket-fuel", amount=4}
    },
    results = {
      {type="item", name="nullius-shallow-excavation-drone", amount=3},
      {type="item", name="nullius-construction-bot-3", amount=8}
    },
    main_product = "nullius-shallow-excavation-drone"
  },
  {
    type = "recipe",
    name = "nullius-dumping-dirt",
    localised_name = {"recipe-name.nullius-dumping-dirt"},
    icons = {
      {
        icon = ICONPATH .. "crate.png",
        icon_size = 64
      },
      {
        icon = ICONPATH .. "terraforming-brown.png",
        icon_size = 64,
        scale = 0.45
      }
    },
    enabled = false,
    always_show_made_in = true,
    show_amount_in_title = false,
    always_show_products = true,
    allow_decomposition = false,
    allow_as_intermediate = false,
    no_productivity = true,
    category = "ore-crushing",
    subgroup = "boxed-dumping",
    order = "nullius-dd",
    energy_required = 720,
    ingredients = {
      {type="item", name="nullius-terraforming-drone-brown", amount=5},
      {type="item", name="nullius-box-land-fill-bauxite", amount=2500},
	  {type="item", name="nullius-box-rocket-fuel", amount=4}
    },
    results = {
      {type="item", name="nullius-shallow-excavation-drone", amount=3},
      {type="item", name="nullius-construction-bot-3", amount=8}
    },
    main_product = "nullius-shallow-excavation-drone"
  },
  {
    type = "recipe",
    name = "nullius-dumping-sand",
    localised_name = {"recipe-name.nullius-dumping-sand"},
    icons = {
      {
        icon = ICONPATH .. "crate.png",
        icon_size = 64
      },
      {
        icon = ICONPATH .. "terraforming-tan.png",
        icon_size = 64,
        scale = 0.45
      }
    },
    enabled = false,
    always_show_made_in = true,
    show_amount_in_title = false,
    always_show_products = true,
    allow_decomposition = false,
    allow_as_intermediate = false,
    no_productivity = true,
    category = "ore-crushing",
    subgroup = "boxed-dumping",
    order = "nullius-dc",
    energy_required = 720,
    ingredients = {
      {type="item", name="nullius-terraforming-drone-tan", amount=5},
      {type="item", name="nullius-box-land-fill-sand", amount=2500},
	    {type="item", name="nullius-box-rocket-fuel", amount=4}
    },
    results = {
      {type="item", name="nullius-shallow-excavation-drone", amount=3},
      {type="item", name="nullius-construction-bot-3", amount=8}
    },
    main_product = "nullius-shallow-excavation-drone"
  },

  {
    type = "tile",
    name = "nullius-land-fill-sand",
    collision_mask = { layers = {ground_tile = true}},
    layer = 40,
    map_color={r=158, g=129, b=81},
    is_foundation = true,
    vehicle_friction_modifier = 1.4,
    walking_speed_modifier = 1,
    transitions = transitions.cliff_transitions(),
    transitions_between_transitions = transitions.cliff_transitions_between_transitions(),
    walking_sound = data.raw.tile["landfill"].walking_sound,
    absorptions_per_second = {pollution = 0},
    minable = {
      mining_time = 1,
      result = "nullius-land-fill-sand"
    },
    variants = {
      material_background = {
        picture = ENTITYPATH .. "landfill/sand.png",
        count = 8
      },
      main = {
        {
          count = 16,
          line_length = 16,
          picture = "__alien-biomes-graphics__/graphics/terrain/mineral-tan-sand-2.png",
          size = 1,
          weights = {
            0.085, 0.085, 0.085, 0.085, 0.087, 0.085, 0.065, 0.085, 0.045, 0.045, 0.045, 0.045, 0.005, 0.025, 0.045, 0.045
          },
          y = 0
        },
        {
          count = 16,
          line_length = 16,
          picture = "__alien-biomes-graphics__/graphics/terrain/mineral-tan-sand-2.png",
          probability = 1,
          size = 2,
          weights = {
            0.018, 0.02, 0.015, 0.025, 0.015, 0.02, 0.025, 0.015, 0.025, 0.025, 0.01, 0.025, 0.02, 0.025, 0.025, 0.01
          },
          y = 64
        },
        {
          count = 16,
          line_length = 16,
          picture = "__alien-biomes-graphics__/graphics/terrain/mineral-tan-sand-2.png",
          probability = 0.1,
          size = 4,
          weights = {
            0.018, 0.02, 0.015, 0.025, 0.015, 0.02, 0.025, 0.015, 0.025, 0.025, 0.01, 0.025, 0.02, 0.025, 0.025, 0.01
          },
          y = 160
        }
      },
      transition = {
        mask_layout = {
          inner_corner = { count = 8, line_length = 8, spritesheet = "__base__/graphics/terrain/masks/transition-3.png", x = 0 },
          o_transition = { count = 1, line_length = 2, spritesheet = "__base__/graphics/terrain/masks/transition-3.png", x = 1152 },
          outer_corner = { count = 8, line_length = 8, spritesheet = "__base__/graphics/terrain/masks/transition-3.png", x = 288 },
          side = { count = 8, line_length = 8, spritesheet = "__base__/graphics/terrain/masks/transition-3.png", x = 576 },
          u_transition = { count = 1, line_length = 1, spritesheet = "__base__/graphics/terrain/masks/transition-3.png", x = 864 }
        }
      },
    }
  },
  {
    type = "tile",
    name = "nullius-land-fill-bauxite",
    collision_mask = { layers = {ground_tile = true}},
    layer = 39,
    map_color={r=121, g=103, b=65},
    is_foundation = true,
    vehicle_friction_modifier = 1.2,
    walking_speed_modifier = 1,
    transitions = transitions.cliff_transitions(),
    transitions_between_transitions = transitions.cliff_transitions_between_transitions(),
    walking_sound = data.raw.tile["landfill"].walking_sound,
    absorptions_per_second = {pollution = 0},
    minable = {
      mining_time = 1,
      result = "nullius-land-fill-bauxite"
    },
    variants = {
      material_background = {
        picture = ENTITYPATH .. "landfill/dirt.png",
        count = 8
      },
      main = {
        {
          count = 16,
          line_length = 16,
          picture = "__alien-biomes-graphics__/graphics/terrain/mineral-tan-dirt-5.png",
          size = 1,
          weights = {
            0.085, 0.085, 0.085, 0.085, 0.087, 0.085, 0.065, 0.085, 0.045, 0.045, 0.045, 0.045, 0.005, 0.025, 0.045, 0.045
          },
          y = 0
        },
        {
          count = 16,
          line_length = 16,
          picture = "__alien-biomes-graphics__/graphics/terrain/mineral-tan-dirt-5.png",
          probability = 1,
          size = 2,
          weights = {
            0.018, 0.02, 0.015, 0.025, 0.015, 0.02, 0.025, 0.015, 0.025, 0.025, 0.01, 0.025, 0.02, 0.025, 0.025, 0.01
          },
          y = 64
        },
        {
          count = 16,
          line_length = 16,
          picture = "__alien-biomes-graphics__/graphics/terrain/mineral-tan-dirt-5.png",
          probability = 0.1,
          size = 4,
          weights = {
            0.018, 0.02, 0.015, 0.025, 0.015, 0.02, 0.025, 0.015, 0.025, 0.025, 0.01, 0.025, 0.02, 0.025, 0.025, 0.01
          },
          y = 160
        }
      },
      transition = {
        mask_layout = {
          inner_corner = { count = 8, line_length = 8, spritesheet = "__base__/graphics/terrain/masks/transition-3.png", x = 0 },
          o_transition = { count = 1, line_length = 2, spritesheet = "__base__/graphics/terrain/masks/transition-3.png", x = 1152 },
          outer_corner = { count = 8, line_length = 8, spritesheet = "__base__/graphics/terrain/masks/transition-3.png", x = 288 },
          side = { count = 8, line_length = 8, spritesheet = "__base__/graphics/terrain/masks/transition-3.png", x = 576 },
          u_transition = { count = 1, line_length = 1, spritesheet = "__base__/graphics/terrain/masks/transition-3.png", x = 864 }
        }
      }
      
    }
  },
  {
    type = "tile",
    name = "nullius-land-fill-iron",
    collision_mask = { layers = {ground_tile = true}},
    layer = 36,
    map_color={r=119, g=73, b=68},
    is_foundation = true,
    vehicle_friction_modifier = 1.1,
    walking_speed_modifier = 1,
    transitions = transitions.cliff_transitions(),
    transitions_between_transitions = transitions.cliff_transitions_between_transitions(),
    walking_sound = data.raw.tile["landfill"].walking_sound,
    absorptions_per_second = {pollution = 0},
    minable = {
      mining_time = 1,
      result = "nullius-land-fill-iron"
    },
    variants = {
      material_background = {
        picture = ENTITYPATH .. "landfill/iron.png",
        count = 8
      },
      main = {
        {
          count = 16,
          line_length = 16,
          picture = "__alien-biomes-graphics__/graphics/terrain/mineral-red-dirt-2.png",
          size = 1,
          weights = {
            0.085, 0.085, 0.085, 0.085, 0.087, 0.085, 0.065, 0.085, 0.045, 0.045, 0.045, 0.045, 0.005, 0.025, 0.045, 0.045
          },
          y = 0
        },
        {
          count = 16,
          line_length = 16,
          picture = "__alien-biomes-graphics__/graphics/terrain/mineral-red-dirt-2.png",
          probability = 1,
          size = 2,
          weights = {
            0.018, 0.02, 0.015, 0.025, 0.015, 0.02, 0.025, 0.015, 0.025, 0.025, 0.01, 0.025, 0.02, 0.025, 0.025, 0.01
          },
          y = 64
        },
        {
          count = 16,
          line_length = 16,
          picture = "__alien-biomes-graphics__/graphics/terrain/mineral-red-dirt-2.png",
          probability = 0.1,
          size = 4,
          weights = {
            0.018, 0.02, 0.015, 0.025, 0.015, 0.02, 0.025, 0.015, 0.025, 0.025, 0.01, 0.025, 0.02, 0.025, 0.025, 0.01
          },
          y = 160
        }
      },
      transition = {
        mask_layout = {
          inner_corner = { count = 8, line_length = 8, spritesheet = "__base__/graphics/terrain/masks/transition-3.png", x = 0 },
          o_transition = { count = 1, line_length = 2, spritesheet = "__base__/graphics/terrain/masks/transition-3.png", x = 1152 },
          outer_corner = { count = 8, line_length = 8, spritesheet = "__base__/graphics/terrain/masks/transition-3.png", x = 288 },
          side = { count = 8, line_length = 8, spritesheet = "__base__/graphics/terrain/masks/transition-3.png", x = 576 },
          u_transition = { count = 1, line_length = 1, spritesheet = "__base__/graphics/terrain/masks/transition-3.png", x = 864 }
        }
      }
    }
  },
  {
    type = "tile",
    name = "nullius-land-fill-limestone",
    collision_mask = { layers = {ground_tile = true}},
    layer = 38,
    map_color={r=161, g=140, b=119},
    is_foundation = true,
    vehicle_friction_modifier = 1,
    walking_speed_modifier = 1,
    transitions = transitions.cliff_transitions(),
    transitions_between_transitions = transitions.cliff_transitions_between_transitions(),
    walking_sound = data.raw.tile["landfill"].walking_sound,
    absorptions_per_second = {pollution = 0},
    minable = {
      mining_time = 1,
      result = "nullius-land-fill-limestone"
    },
    variants = {
      material_background = {
        picture = ENTITYPATH .. "landfill/limestone.png",
        count = 8
      },
      main = {
        {
          count = 16,
          line_length = 16,
          picture = "__alien-biomes-graphics__/graphics/terrain/mineral-beige-sand-2.png",
          size = 1,
          weights = {
            0.085, 0.085, 0.085, 0.085, 0.087, 0.085, 0.065, 0.085, 0.045, 0.045, 0.045, 0.045, 0.005, 0.025, 0.045, 0.045
          },
          y = 0
        },
        {
          count = 16,
          line_length = 16,
          picture = "__alien-biomes-graphics__/graphics/terrain/mineral-beige-sand-2.png",
          probability = 1,
          size = 2,
          weights = {
            0.018, 0.02, 0.015, 0.025, 0.015, 0.02, 0.025, 0.015, 0.025, 0.025, 0.01, 0.025, 0.02, 0.025, 0.025, 0.01
          },
          y = 64
        },
        {
          count = 16,
          line_length = 16,
          picture = "__alien-biomes-graphics__/graphics/terrain/mineral-beige-sand-2.png",
          probability = 0.1,
          size = 4,
          weights = {
            0.018, 0.02, 0.015, 0.025, 0.015, 0.02, 0.025, 0.015, 0.025, 0.025, 0.01, 0.025, 0.02, 0.025, 0.025, 0.01
          },
          y = 160
        }
      },
      transition = {
        mask_layout = {
          inner_corner = { count = 8, line_length = 8, spritesheet = "__base__/graphics/terrain/masks/transition-3.png", x = 0 },
          o_transition = { count = 1, line_length = 2, spritesheet = "__base__/graphics/terrain/masks/transition-3.png", x = 1152 },
          outer_corner = { count = 8, line_length = 8, spritesheet = "__base__/graphics/terrain/masks/transition-3.png", x = 288 },
          side = { count = 8, line_length = 8, spritesheet = "__base__/graphics/terrain/masks/transition-3.png", x = 576 },
          u_transition = { count = 1, line_length = 1, spritesheet = "__base__/graphics/terrain/masks/transition-3.png", x = 864 }
        }
      }
    }
  },

  {
    type = "tile",
    name = "nullius-white-concrete",
	  localised_name = {"item-name.nullius-white-concrete"},
    order = "nullius-ccw",
    minable = {mining_time = 0.1, result = "nullius-white-concrete"},
    collision_mask = { layers = {ground_tile = true}},
    walking_speed_modifier = 1.6,
    vehicle_friction_modifier = 0.5,
    layer = 40,
    layer_group = "ground-artificial",
    map_color={r=0.85, g=0.85, b=0.85},
    needs_correction = false,

    transition_overlay_layer_offset = data.raw.tile["refined-concrete"].transition_overlay_layer_offset,
    decorative_removal_probability = data.raw.tile["refined-concrete"].decorative_removal_probability,
    transitions = data.raw.tile["refined-concrete"].transitions,
	  transitions_between_transitions = data.raw.tile["refined-concrete"].transitions_between_transitions,
    mined_sound = data.raw.tile["refined-concrete"].mined_sound,
	  walking_sound = data.raw.tile["refined-concrete"].walking_sound,
	  build_sound = data.raw.tile["refined-concrete"].build_sound,
	  scorch_mark_color = data.raw.tile["refined-concrete"].scorch_mark_color,
	  absorptions_per_second = data.raw.tile["refined-concrete"].absorptions_per_second,
	  trigger_effect = data.raw.tile["refined-concrete"].trigger_effect,
	  driving_sound = data.raw.tile["refined-concrete"].driving_sound,
	  
    variants = {
      material_background = {
	      picture = ENTITYPATH.."concrete/white-concrete.png",
        count = 8,
        scale = 0.5
      },
      
      transition = {
        overlay_layout = {
          inner_corner = {
            spritesheet = ENTITYPATH.."concrete/white-concrete-inner-corner.png",
            count = 16,
            scale = 0.5
          },
          outer_corner = {
            spritesheet = ENTITYPATH.."concrete/white-concrete-outer-corner.png",
            count = 8,
            scale = 0.5
          },
          side = {
            spritesheet = ENTITYPATH.."concrete/white-concrete-side.png",
		        count = 16,
            scale = 0.5
          },
          u_transition = {
            spritesheet = ENTITYPATH.."concrete/white-concrete-u.png",
            count = 8,
            scale = 0.5
          },
          o_transition = {
            spritesheet = ENTITYPATH.."concrete/white-concrete-o.png",
            count = 4,
            scale = 0.5
          },
        },
        mask_layout = data.raw.tile["refined-concrete"].variants.transition.mask_layout
      },
      
      main = data.raw.tile["refined-concrete"].variants.main,
    }
  }
})

local orange = util.copy(data.raw.tile["nullius-white-concrete"])
orange.name = "nullius-orange-concrete"
orange.localised_name = {"item-name.nullius-orange-concrete"}
orange.order = "nullius-cco"
orange.minable = {mining_time = 0.1, result = "nullius-orange-concrete"}
orange.tint = { r = 0.85, g = 0.55, b = 0.15 }
orange.map_color = { r = 0.75, g = 0.45, b = 0.1 }
orange.layer = orange.layer + 3
data:extend{orange}
