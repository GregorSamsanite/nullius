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
    icon_mipmaps = 4,
    subgroup = "terrain",
    order = "nullius-db",
    stack_size = 500,
    place_as_tile = {
      result = "landfill",
      condition_size = 1,
      condition = { "ground-tile" }
    }
  },
  {
    type = "item",
    name = "nullius-land-fill-sand",
    icon = ENTICONPATH .. "landfill-tan.png",
    icon_size = 64,
    icon_mipmaps = 4,
    subgroup = "terrain",
    order = "nullius-dc",
    stack_size = 500,
    place_as_tile = {
      result = "nullius-land-fill-sand",
      condition_size = 1,
      condition = { "ground-tile" }
    }
  },
  {
    type = "item",
    name = "nullius-land-fill-bauxite",
    icon = ENTICONPATH .. "landfill-brown.png",
    icon_size = 64,
    icon_mipmaps = 4,
    subgroup = "terrain",
    order = "nullius-dd",
    stack_size = 500,
    place_as_tile = {
      result = "nullius-land-fill-bauxite",
      condition_size = 1,
      condition = { "ground-tile" }
    }
  },
  {
    type = "item",
    name = "nullius-land-fill-iron",
    icon = ENTICONPATH .. "landfill-red.png",
    icon_size = 64,
    icon_mipmaps = 4,
    subgroup = "terrain",
    order = "nullius-de",
    stack_size = 500,
    place_as_tile = {
      result = "nullius-land-fill-iron",
      condition_size = 1,
      condition = { "ground-tile" }
    }
  },
  {
    type = "item",
    name = "nullius-land-fill-limestone",
    icon = ENTICONPATH .. "landfill-beige.png",
    icon_size = 64,
    icon_mipmaps = 4,
    subgroup = "terrain",
    order = "nullius-df",
    stack_size = 500,
    place_as_tile = {
      result = "nullius-land-fill-limestone",
      condition_size = 1,
      condition = { "ground-tile" }
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
      {"nullius-gravel", 5},
      {"nullius-sand", 1}
    },
    result = "nullius-land-fill-gravel",
    result_count = 2
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
      {"nullius-box-gravel", 5},
      {"nullius-box-sand", 1}
    },
    result = "nullius-box-land-fill-gravel"
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
      {"nullius-sand", 10},
      {"nullius-gravel", 2}
    },
    result = "nullius-land-fill-sand",
    result_count = 4
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
      {"nullius-box-sand", 5},
      {"nullius-box-gravel", 1}
    },
    result = "nullius-box-land-fill-sand"
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
      {"nullius-crushed-bauxite", 15},
      {"nullius-gravel", 5}
    },
    result = "nullius-land-fill-bauxite",
    result_count = 10
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
      {"nullius-crushed-iron-ore", 4},
      {"nullius-sand", 1}
    },
    result = "nullius-land-fill-iron",
    result_count = 2
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
      {"nullius-crushed-limestone", 25}
    },
    result = "nullius-land-fill-limestone",
    result_count = 10
  },

  {
    type = "recipe",
    name = "nullius-land-fill-grey",
    localised_name = {"recipe-name.nullius-land-fill-grey-2"},
    icons = {
      {
        icon = ENTICONPATH .. "landfill-grey.png",
        icon_size = 64,
        icon_mipmaps = 4
      },
      {
        icon = "__base__/graphics/icons/concrete.png",
        icon_size = 64,
        icon_mipmaps = 4,
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
      {"nullius-gravel", 10},
      {"concrete", 15}
    },
    result = "nullius-land-fill-gravel",
    result_count = 20
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
        icon_mipmaps = 4,
        scale = 0.45
      },
      {
        icon = "__base__/graphics/icons/concrete.png",
        icon_size = 64,
        icon_mipmaps = 4,
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
      {"nullius-box-gravel", 4},
      {"nullius-box-concrete", 3}
    },
    result = "nullius-box-land-fill-gravel",
    result_count = 4
  },

  {
    type = "recipe",
    name = "nullius-land-fill-tan",
    localised_name = {"recipe-name.nullius-land-fill-tan-2"},
    icons = {
      {
        icon = ENTICONPATH .. "landfill-tan.png",
        icon_size = 64,
        icon_mipmaps = 4
      },
      {
        icon = "__base__/graphics/icons/concrete.png",
        icon_size = 64,
        icon_mipmaps = 4,
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
      {"nullius-sand", 10},
      {"nullius-yellow-concrete", 10}
    },
    result = "nullius-land-fill-sand",
    result_count = 20
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
        icon_mipmaps = 4,
        scale = 0.45
      },
      {
        icon = "__base__/graphics/icons/concrete.png",
        icon_size = 64,
        icon_mipmaps = 4,
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
      {"nullius-box-sand", 2},
      {"nullius-box-yellow-concrete", 1}
    },
    result = "nullius-box-land-fill-sand",
    result_count = 2
  },

  {
    type = "recipe",
    name = "nullius-land-fill-brown",
    localised_name = {"recipe-name.nullius-land-fill-brown-2"},
    icons = {
      {
        icon = ENTICONPATH .. "landfill-brown.png",
        icon_size = 64,
        icon_mipmaps = 4
      },
      {
        icon = "__base__/graphics/icons/concrete.png",
        icon_size = 64,
        icon_mipmaps = 4,
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
      {"nullius-crushed-bauxite", 3},
      {"nullius-brown-concrete", 5}
    },
    result = "nullius-land-fill-bauxite",
    result_count = 10
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
      {"nullius-box-crushed-bauxite", 6},
      {"nullius-box-brown-concrete", 5}
    },
    result = "nullius-box-land-fill-bauxite",
    result_count = 10
  },

  {
    type = "recipe",
    name = "nullius-land-fill-red",
    localised_name = {"recipe-name.nullius-land-fill-red-2"},
    icons = {
      {
        icon = ENTICONPATH .. "landfill-red.png",
        icon_size = 64,
        icon_mipmaps = 4
      },
      {
        icon = "__base__/graphics/icons/concrete.png",
        icon_size = 64,
        icon_mipmaps = 4,
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
      {"nullius-crushed-iron-ore", 4},
      {"nullius-red-concrete", 5}
    },
    result = "nullius-land-fill-iron",
    result_count = 10
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
      {"nullius-box-crushed-iron-ore", 8},
      {"nullius-box-red-concrete", 5}
    },
    result = "nullius-box-land-fill-iron",
    result_count = 10
  },

  {
    type = "recipe",
    name = "nullius-land-fill-beige",
    localised_name = {"recipe-name.nullius-land-fill-beige-2"},
    icons = {
      {
        icon = ENTICONPATH .. "landfill-beige.png",
        icon_size = 64,
        icon_mipmaps = 4
      },
      {
        icon = "__base__/graphics/icons/concrete.png",
        icon_size = 64,
        icon_mipmaps = 4,
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
      {"nullius-crushed-limestone", 5},
      {"refined-concrete", 4}
    },
    result = "nullius-land-fill-limestone",
    result_count = 10
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
      {"nullius-box-crushed-limestone", 5},
      {"nullius-box-reinforced-concrete", 2}
    },
    result = "nullius-box-land-fill-limestone",
    result_count = 5
  },

  {
    type = "recipe",
    name = "nullius-land-fill-sludge",
    localised_name = {"recipe-name.nullius-land-fill-sludge"},
    icons = {
      {
        icon = ENTICONPATH .. "landfill-brown.png",
        icon_size = 64,
        icon_mipmaps = 4
      },
      {
        icon = ICONPATH .. "fluid/sludge.png",
        icon_size = 64,
        icon_mipmaps = 4,
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
    result = "nullius-land-fill-bauxite",
    result_count = 10
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
        icon_mipmaps = 4,
        scale = 0.45
      },
      {
        icon = ICONPATH .. "fluid/sludge.png",
        icon_size = 64,
        icon_mipmaps = 4,
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
    result = "nullius-box-land-fill-bauxite",
    result_count = 10
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
        icon_mipmaps = 4,
        scale = 0.45
      },
      {
        icon = "__angelssmelting__/graphics/icons/powder-tungsten.png",
        icon_size = 64,
        icon_mipmaps = 4,
        scale = 0.225,
        shift = {-9, -10}
      }
    },
    enabled = false,
    always_show_made_in = true,
    show_amount_in_title = false,
    always_show_products = true,
    category = "ore-crushing",
    subgroup = "boxed-land-fill",
    order = "nullius-dd",
    energy_required = 30,
    ingredients = {
      {type="item", name="nullius-box-land-fill-iron", amount=2},
      {type="item", name="nullius-box-land-fill-sand", amount=1},
      {type="item", name="nullius-box-mineral-dust", amount=15},
      {type="fluid", name="nullius-freshwater", amount=400}
    },
    result = "nullius-box-land-fill-bauxite",
    result_count = 8
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
        icon_mipmaps = 4,
        scale = 0.45
      },
      {
        icon = "__base__/graphics/icons/coal-dark-background.png",
        icon_size = 64,
        icon_mipmaps = 4,
        scale = 0.2,
        shift = {-9, -9}
      }
    },
    enabled = false,
    always_show_made_in = true,
    show_amount_in_title = false,
    always_show_products = true,
    category = "ore-crushing",
    subgroup = "boxed-land-fill",
    order = "nullius-bd",
    energy_required = 20,
    ingredients = {
      {type="item", name="nullius-box-land-fill-limestone", amount=4},
      {type="item", name="nullius-box-plastic", amount=1},
      {type="item", name="nullius-box-rubber", amount=1},
      {type="item", name="nullius-box-graphite", amount=30}
    },
    result = "nullius-box-land-fill-gravel",
    result_count = 12
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
        icon_mipmaps = 4,
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
    subgroup = "boxed-terrain",
    order = "nullius-kb",
    energy_required = 720,
    ingredients = {
      {type="item", name="nullius-terraforming-drone-grey", amount=5},
      {type="item", name="nullius-box-land-fill-gravel", amount=2500},
      {type="item", name="nullius-box-rocket-fuel", amount=4}
    },
    results = {
      {type="item", name="nullius-excavation-drone", amount=3},
      {type="item", name="nullius-construction-bot-3", amount=8}
    },
    main_product = "nullius-excavation-drone"
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
        icon_mipmaps = 4,
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
    subgroup = "boxed-terrain",
    order = "nullius-kc",
    energy_required = 720,
    ingredients = {
      {type="item", name="nullius-terraforming-drone-brown", amount=5},
      {type="item", name="nullius-box-land-fill-bauxite", amount=2500},
	  {type="item", name="nullius-box-rocket-fuel", amount=4}
    },
    results = {
      {type="item", name="nullius-excavation-drone", amount=3},
      {type="item", name="nullius-construction-bot-3", amount=8}
    },
    main_product = "nullius-excavation-drone"
  },

  {
    type = "tile",
    name = "nullius-land-fill-sand",
    collision_mask = {"ground-tile"},
    layer = 40,
    map_color={r=158, g=129, b=81},
    vehicle_friction_modifier = 1.4,
    walking_speed_modifier = 1,
    transitions = transitions.cliff_transitions(),
    transitions_between_transitions = transitions.cliff_transitions_between_transitions(),
    walking_sound = data.raw.tile["landfill"].walking_sound,
    pollution_absorption_per_second = 0,
    variants = {
      material_background = {
        picture = ENTITYPATH .. "landfill/sand.png",
        count = 8
      },
      main = {
        {
          count = 16,
          line_length = 16,
          picture = "__alien-biomes__/graphics/terrain/sr/mineral-tan-sand-2.png",
          size = 1,
          weights = {
            0.085, 0.085, 0.085, 0.085, 0.087, 0.085, 0.065, 0.085, 0.045, 0.045, 0.045, 0.045, 0.005, 0.025, 0.045, 0.045
          },
          y = 0
        },
        {
          count = 16,
          line_length = 16,
          picture = "__alien-biomes__/graphics/terrain/sr/mineral-tan-sand-2.png",
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
          picture = "__alien-biomes__/graphics/terrain/sr/mineral-tan-sand-2.png",
          probability = 0.1,
          size = 4,
          weights = {
            0.018, 0.02, 0.015, 0.025, 0.015, 0.02, 0.025, 0.015, 0.025, 0.025, 0.01, 0.025, 0.02, 0.025, 0.025, 0.01
          },
          y = 160
        }
      },
      inner_corner_mask = { count = 8, line_length = 8, picture = "__base__/graphics/terrain/masks/transition-3.png", x = 0 },
      o_transition_mask = { count = 1, line_length = 2, picture = "__base__/graphics/terrain/masks/transition-3.png", x = 1152 },
      outer_corner_mask = { count = 8, line_length = 8, picture = "__base__/graphics/terrain/masks/transition-3.png", x = 288 },
      side_mask = { count = 8, line_length = 8, picture = "__base__/graphics/terrain/masks/transition-3.png", x = 576 },
      u_transition_mask = { count = 1, line_length = 1, picture = "__base__/graphics/terrain/masks/transition-3.png", x = 864 }
    }
  },
  {
    type = "tile",
    name = "nullius-land-fill-bauxite",
    collision_mask = {"ground-tile"},
    layer = 39,
    map_color={r=121, g=103, b=65},
    vehicle_friction_modifier = 1.2,
    walking_speed_modifier = 1,
    transitions = transitions.cliff_transitions(),
    transitions_between_transitions = transitions.cliff_transitions_between_transitions(),
    walking_sound = data.raw.tile["landfill"].walking_sound,
    pollution_absorption_per_second = 0,
    variants = {
      material_background = {
        picture = ENTITYPATH .. "landfill/dirt.png",
        count = 8
      },
      main = {
        {
          count = 16,
          line_length = 16,
          picture = "__alien-biomes__/graphics/terrain/sr/mineral-tan-dirt-5.png",
          size = 1,
          weights = {
            0.085, 0.085, 0.085, 0.085, 0.087, 0.085, 0.065, 0.085, 0.045, 0.045, 0.045, 0.045, 0.005, 0.025, 0.045, 0.045
          },
          y = 0
        },
        {
          count = 16,
          line_length = 16,
          picture = "__alien-biomes__/graphics/terrain/sr/mineral-tan-dirt-5.png",
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
          picture = "__alien-biomes__/graphics/terrain/sr/mineral-tan-dirt-5.png",
          probability = 0.1,
          size = 4,
          weights = {
            0.018, 0.02, 0.015, 0.025, 0.015, 0.02, 0.025, 0.015, 0.025, 0.025, 0.01, 0.025, 0.02, 0.025, 0.025, 0.01
          },
          y = 160
        }
      },
      inner_corner_mask = { count = 8, line_length = 8, picture = "__base__/graphics/terrain/masks/transition-3.png", x = 0 },
      o_transition_mask = { count = 1, line_length = 2, picture = "__base__/graphics/terrain/masks/transition-3.png", x = 1152 },
      outer_corner_mask = { count = 8, line_length = 8, picture = "__base__/graphics/terrain/masks/transition-3.png", x = 288 },
      side_mask = { count = 8, line_length = 8, picture = "__base__/graphics/terrain/masks/transition-3.png", x = 576 },
      u_transition_mask = { count = 1, line_length = 1, picture = "__base__/graphics/terrain/masks/transition-3.png", x = 864 }
    }
  },
  {
    type = "tile",
    name = "nullius-land-fill-iron",
    collision_mask = {"ground-tile"},
    layer = 36,
    map_color={r=119, g=73, b=68},
    vehicle_friction_modifier = 1.1,
    walking_speed_modifier = 1,
    transitions = transitions.cliff_transitions(),
    transitions_between_transitions = transitions.cliff_transitions_between_transitions(),
    walking_sound = data.raw.tile["landfill"].walking_sound,
    pollution_absorption_per_second = 0,
    variants = {
      material_background = {
        picture = ENTITYPATH .. "landfill/iron.png",
        count = 8
      },
      main = {
        {
          count = 16,
          line_length = 16,
          picture = "__alien-biomes__/graphics/terrain/sr/mineral-red-dirt-2.png",
          size = 1,
          weights = {
            0.085, 0.085, 0.085, 0.085, 0.087, 0.085, 0.065, 0.085, 0.045, 0.045, 0.045, 0.045, 0.005, 0.025, 0.045, 0.045
          },
          y = 0
        },
        {
          count = 16,
          line_length = 16,
          picture = "__alien-biomes__/graphics/terrain/sr/mineral-red-dirt-2.png",
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
          picture = "__alien-biomes__/graphics/terrain/sr/mineral-red-dirt-2.png",
          probability = 0.1,
          size = 4,
          weights = {
            0.018, 0.02, 0.015, 0.025, 0.015, 0.02, 0.025, 0.015, 0.025, 0.025, 0.01, 0.025, 0.02, 0.025, 0.025, 0.01
          },
          y = 160
        }
      },
      inner_corner_mask = { count = 8, line_length = 8, picture = "__base__/graphics/terrain/masks/transition-3.png", x = 0 },
      o_transition_mask = { count = 1, line_length = 2, picture = "__base__/graphics/terrain/masks/transition-3.png", x = 1152 },
      outer_corner_mask = { count = 8, line_length = 8, picture = "__base__/graphics/terrain/masks/transition-3.png", x = 288 },
      side_mask = { count = 8, line_length = 8, picture = "__base__/graphics/terrain/masks/transition-3.png", x = 576 },
      u_transition_mask = { count = 1, line_length = 1, picture = "__base__/graphics/terrain/masks/transition-3.png", x = 864 }
    }
  },
  {
    type = "tile",
    name = "nullius-land-fill-limestone",
    collision_mask = {"ground-tile"},
    layer = 38,
    map_color={r=161, g=140, b=119},
    vehicle_friction_modifier = 1,
    walking_speed_modifier = 1,
    transitions = transitions.cliff_transitions(),
    transitions_between_transitions = transitions.cliff_transitions_between_transitions(),
    walking_sound = data.raw.tile["landfill"].walking_sound,
    pollution_absorption_per_second = 0,
    variants = {
      material_background = {
        picture = ENTITYPATH .. "landfill/limestone.png",
        count = 8
      },
      main = {
        {
          count = 16,
          line_length = 16,
          picture = "__alien-biomes__/graphics/terrain/sr/mineral-beige-sand-2.png",
          size = 1,
          weights = {
            0.085, 0.085, 0.085, 0.085, 0.087, 0.085, 0.065, 0.085, 0.045, 0.045, 0.045, 0.045, 0.005, 0.025, 0.045, 0.045
          },
          y = 0
        },
        {
          count = 16,
          line_length = 16,
          picture = "__alien-biomes__/graphics/terrain/sr/mineral-beige-sand-2.png",
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
          picture = "__alien-biomes__/graphics/terrain/sr/mineral-beige-sand-2.png",
          probability = 0.1,
          size = 4,
          weights = {
            0.018, 0.02, 0.015, 0.025, 0.015, 0.02, 0.025, 0.015, 0.025, 0.025, 0.01, 0.025, 0.02, 0.025, 0.025, 0.01
          },
          y = 160
        }
      },
      inner_corner_mask = { count = 8, line_length = 8, picture = "__base__/graphics/terrain/masks/transition-3.png", x = 0 },
      o_transition_mask = { count = 1, line_length = 2, picture = "__base__/graphics/terrain/masks/transition-3.png", x = 1152 },
      outer_corner_mask = { count = 8, line_length = 8, picture = "__base__/graphics/terrain/masks/transition-3.png", x = 288 },
      side_mask = { count = 8, line_length = 8, picture = "__base__/graphics/terrain/masks/transition-3.png", x = 576 },
      u_transition_mask = { count = 1, line_length = 1, picture = "__base__/graphics/terrain/masks/transition-3.png", x = 864 }
    }
  },
})