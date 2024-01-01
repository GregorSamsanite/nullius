local ICONPATH = "__nullius__/graphics/icons/"
local ENTITYPATH = "__nullius__/graphics/entity/"
local EQUIPPATH = "__nullius__/graphics/equipment/"

data:extend({
  {
    type = "module",
    name = "nullius-efficiency-module-1",
    icon = "__base__/graphics/icons/effectivity-module.png",
    icon_size = 64,
    icon_mipmaps = 4,
    subgroup = "module-2",
    category = "efficiency",
    tier = 1,
    order = "nullius-bb",
    stack_size = 50,
    effect = { consumption = {bonus = -0.5} },
    beacon_tint = {
      primary = {r = 0, g = 1, b = 0, a = 1.000},
      secondary = {r = 0.370, g = 1.000, b = 0.370, a = 1.000}
    },
    art_style = "vanilla",
    requires_beacon_alt_mode = false
  },
  {
    type = "module",
    name = "nullius-efficiency-module-2",
    icon = "__base__/graphics/icons/effectivity-module-2.png",
    icon_size = 64,
    icon_mipmaps = 4,
    subgroup = "module-2",
    category = "efficiency",
    tier = 2,
    order = "nullius-bc",
    stack_size = 50,
    effect = { consumption = {bonus = -0.8} },
    beacon_tint = {
      primary = {r = 0, g = 1, b = 0, a = 1.000},
      secondary = {r = 0.370, g = 1.000, b = 0.370, a = 1.000}
    },
    art_style = "vanilla",
    requires_beacon_alt_mode = false
  },
  {
    type = "module",
    name = "nullius-efficiency-module-3",
    icon = "__base__/graphics/icons/effectivity-module-3.png",
    icon_size = 64,
    icon_mipmaps = 4,
    subgroup = "module-2",
    category = "efficiency",
    tier = 3,
    order = "nullius-bd",
    stack_size = 50,
    effect = { consumption = {bonus = -1.2} },
    beacon_tint = {
      primary = {r = 0, g = 1, b = 0, a = 1.000},
      secondary = {r = 0.370, g = 1.000, b = 0.370, a = 1.000}
    },
    art_style = "vanilla",
    requires_beacon_alt_mode = false
  },
  {
    type = "module",
    name = "nullius-haste-module-1",
    icon = ICONPATH .. "haste1.png",
    icon_size = 64,
    subgroup = "module-1",
    category = "haste",
    tier = 0,
    order = "nullius-db",
    stack_size = 50,
    effect = { speed = {bonus = 0.2}, consumption = {bonus = 0.25} },
    beacon_tint = {
      primary = {r = 0.45, g = 0.3, b = 0.75, a = 1.000},
      secondary = {r = 0.56, g = 0.42, b = 0.7, a = 1.000}
    },
    art_style = "vanilla",
    requires_beacon_alt_mode = false
  },
  {
    type = "module",
    name = "nullius-haste-module-2",
    icon = ICONPATH .. "haste2.png",
    icon_size = 64,
    subgroup = "module-1",
    category = "haste",
    tier = 1,
    order = "nullius-dc",
    stack_size = 50,
    effect = { speed = {bonus = 0.3}, consumption = {bonus = 0.4} },
    beacon_tint = {
      primary = {r = 0.45, g = 0.3, b = 0.75, a = 1.000},
      secondary = {r = 0.8, g = 0.6, b = 1, a = 1.000}
    },
    art_style = "vanilla",
    requires_beacon_alt_mode = false
  },
  {
    type = "module",
    name = "nullius-haste-module-3",
    icon = ICONPATH .. "haste3.png",
    icon_size = 64,
    subgroup = "module-1",
    category = "haste",
    tier = 2,
    order = "nullius-dd",
    stack_size = 50,
    effect = { speed = {bonus = 0.4}, consumption = {bonus = 0.6} },
    beacon_tint = {
      primary = {r = 0.45, g = 0.3, b = 0.75, a = 1.000},
      secondary = {r = 0.8, g = 0.6, b = 1, a = 1.000}
    },
    art_style = "vanilla",
    requires_beacon_alt_mode = false
  },
  {
    type = "module",
    name = "nullius-haste-module-4",
    icon = ICONPATH .. "haste4.png",
    icon_size = 64,
    subgroup = "module-1",
    category = "haste",
    tier = 3,
    order = "nullius-de",
    stack_size = 50,
    effect = { speed = {bonus = 0.5}, consumption = {bonus = 0.8} },
    beacon_tint = {
      primary = {r = 0.45, g = 0.3, b = 0.75, a = 1.000},
      secondary = {r = 0.8, g = 0.6, b = 1, a = 1.000}
    },
    art_style = "vanilla",
    requires_beacon_alt_mode = false
  },
  {
    type = "module",
    name = "nullius-speed-module-1",
    icon = ICONPATH .. "speed1.png",
    icon_size = 64,
    subgroup = "module-1",
    category = "speed",
    tier = 0,
    order = "nullius-eb",
    stack_size = 50,
    effect = { speed = {bonus = 0.15} },
    beacon_tint = {
      primary = {r = 0.441, g = 0.714, b = 1.000, a = 1.000},
      secondary = {r = 0.272, g = 0.683, b = 0.7, a = 1.000}
    },
    art_style = "vanilla",
    requires_beacon_alt_mode = false
  },
  {
    type = "module",
    name = "nullius-speed-module-2",
    icon = "__base__/graphics/icons/speed-module.png",
    icon_size = 64,
    icon_mipmaps = 4,
    subgroup = "module-1",
    category = "speed",
    tier = 1,
    order = "nullius-ec",
    stack_size = 50,
    effect = { speed = {bonus = 0.2}},
    beacon_tint = {
      primary = {r = 0.441, g = 0.714, b = 1.000, a = 1.000},
      secondary = {r = 0.388, g = 0.976, b = 1.000, a = 1.000}
    },
    art_style = "vanilla",
    requires_beacon_alt_mode = false
  },
  {
    type = "module",
    name = "nullius-speed-module-3",
    icon = "__base__/graphics/icons/speed-module-2.png",
    icon_size = 64,
    icon_mipmaps = 4,
    subgroup = "module-1",
    category = "speed",
    tier = 2,
    order = "nullius-ed",
    stack_size = 50,
    effect = { speed = {bonus = 0.3}, consumption = {bonus = 0.05} },
    beacon_tint = {
      primary = {r = 0.441, g = 0.714, b = 1.000, a = 1.000},
      secondary = {r = 0.388, g = 0.976, b = 1.000, a = 1.000}
    },
    art_style = "vanilla",
    requires_beacon_alt_mode = false
  },
  {
    type = "module",
    name = "nullius-speed-module-4",
    icon = "__base__/graphics/icons/speed-module-3.png",
    icon_size = 64,
    icon_mipmaps = 4,
    subgroup = "module-1",
    category = "speed",
    tier = 3,
    order = "nullius-ee",
    stack_size = 50,
    effect = { speed = {bonus = 0.4}, consumption = {bonus = 0.1} },
    beacon_tint = {
      primary = {r = 0.441, g = 0.714, b = 1.000, a = 1.000},
      secondary = {r = 0.388, g = 0.976, b = 1.000, a = 1.000}
    },
    art_style = "vanilla",
    requires_beacon_alt_mode = false
  },
  {
    type = "module",
    name = "nullius-yield-module-1",
    icon = ICONPATH .. "yield1.png",
    icon_size = 64,
    subgroup = "module-2",
    category = "yield",
    tier = 0,
    order = "nullius-cb",
    stack_size = 50,
    effect = { productivity = {bonus = 0.03}, speed = {bonus = -0.05}, consumption = {bonus = 0.1} },
    limitation = {},
    limitation_message_key = "production-module-not-usable"
  },
  {
    type = "module",
    name = "nullius-yield-module-2",
    icon = ICONPATH .. "yield2.png",
    icon_size = 64,
    subgroup = "module-2",
    category = "yield",
    tier = 1,
    order = "nullius-cc",
    stack_size = 50,
    effect = { productivity = {bonus = 0.05}, speed = {bonus = -0.15}, consumption = {bonus = 0.4} },
    limitation = {},
    limitation_message_key = "production-module-not-usable"
  },
  {
    type = "module",
    name = "nullius-yield-module-3",
    icon = ICONPATH .. "yield3.png",
    icon_size = 64,
    subgroup = "module-2",
    category = "yield",
    tier = 2,
    order = "nullius-cd",
    stack_size = 50,
    effect = { productivity = {bonus = 0.07}, speed = {bonus = -0.25}, consumption = {bonus = 0.7} },
    limitation = {},
    limitation_message_key = "production-module-not-usable"
  },
  {
    type = "module",
    name = "nullius-yield-module-4",
    icon = ICONPATH .. "yield4.png",
    icon_size = 64,
    subgroup = "module-2",
    category = "yield",
    tier = 3,
    order = "nullius-ce",
    stack_size = 50,
    effect = { productivity = {bonus = 0.08}, speed = {bonus = -0.4}, consumption = {bonus = 1} },
    limitation = {},
    limitation_message_key = "production-module-not-usable"
  },
  {
    type = "module",
    name = "nullius-productivity-module-1",
    icon = "__base__/graphics/icons/productivity-module.png",
    icon_size = 64,
    icon_mipmaps = 4,
    subgroup = "module-2",
    category = "productivity",
    tier = 1,
    order = "nullius-db",
    stack_size = 50,
    effect = { productivity = {bonus = 0.04} },
    limitation = {},
    limitation_message_key = "production-module-not-usable"
  },
  {
    type = "module",
    name = "nullius-productivity-module-2",
    icon = "__base__/graphics/icons/productivity-module-2.png",
    icon_size = 64,
    icon_mipmaps = 4,
    subgroup = "module-2",
    category = "productivity",
    tier = 2,
    order = "nullius-dc",
    stack_size = 50,
    effect = { productivity = {bonus = 0.06}, consumption = {bonus = 0.05} },
    limitation = {},
    limitation_message_key = "production-module-not-usable"
  },
  {
    type = "module",
    name = "nullius-productivity-module-3",
    icon = "__base__/graphics/icons/productivity-module-3.png",
    icon_size = 64,
    icon_mipmaps = 4,
    subgroup = "module-2",
    category = "productivity",
    tier = 3,
    order = "nullius-dd",
    stack_size = 50,
    effect = { productivity = {bonus = 0.07}, consumption = {bonus = 0.1} },
    limitation = {},
    limitation_message_key = "production-module-not-usable"
  },

  {
    type = "recipe",
    name = "nullius-efficiency-module-1",
    enabled = false,
    show_amount_in_title = false,
    always_show_products = true,
    category = "tiny-assembly",
    energy_required = 12,
    ingredients = {
      {type="item", name="decider-combinator", amount=2},
      {type="item", name="constant-combinator", amount=2},
      {type="item", name="green-wire", amount=3}
    },
    result = "nullius-efficiency-module-1"
  },
  {
    type = "recipe",
    name = "nullius-boxed-efficiency-module-1",
    enabled = false,
    show_amount_in_title = false,
    always_show_products = true,
    category = "medium-only-assembly",
    subgroup = "boxed-module-2",
    energy_required = 60,
    ingredients = {
      {type="item", name="nullius-box-logic-circuit", amount=2},
      {type="item", name="nullius-box-memory-circuit", amount=2},
      {type="item", name="nullius-box-green-wire", amount=3}
    },
    result = "nullius-box-efficiency-module-1"
  },
  {
    type = "recipe",
    name = "nullius-haste-module-1",
    enabled = false,
    show_amount_in_title = false,
    always_show_products = true,
    category = "tiny-assembly",
    energy_required = 12,
    ingredients = {
      {type="item", name="arithmetic-combinator", amount=2},
      {type="item", name="decider-combinator", amount=1},
      {type="item", name="green-wire", amount=3}
    },
    result = "nullius-haste-module-1"
  },
  {
    type = "recipe",
    name = "nullius-boxed-haste-module-1",
    enabled = false,
    show_amount_in_title = false,
    always_show_products = true,
    category = "medium-only-assembly",
    subgroup = "boxed-module-1",
    energy_required = 60,
    ingredients = {
      {type="item", name="nullius-box-arithmetic-circuit", amount=2},
      {type="item", name="nullius-box-logic-circuit", amount=1},
      {type="item", name="nullius-box-green-wire", amount=3}
    },
    result = "nullius-box-haste-module-1"
  },
  {
    type = "recipe",
    name = "nullius-speed-module-1",
    enabled = false,
    show_amount_in_title = false,
    always_show_products = true,
    category = "tiny-assembly",
    energy_required = 8,
    ingredients = {
      {type="item", name="nullius-haste-module-1", amount=2},
      {type="item", name="nullius-efficiency-module-1", amount=1}
    },
    result = "nullius-speed-module-1",
    result_count = 2
  },
  {
    type = "recipe",
    name = "nullius-boxed-speed-module-1",
    enabled = false,
    show_amount_in_title = false,
    always_show_products = true,
    category = "medium-only-assembly",
    subgroup = "boxed-module-1",
    energy_required = 40,
    ingredients = {
      {type="item", name="nullius-box-haste-module-1", amount=2},
      {type="item", name="nullius-box-efficiency-module-1", amount=1}
    },
    result = "nullius-box-speed-module-1",
    result_count = 2
  },
  {
    type = "recipe",
    name = "nullius-yield-module-1",
    enabled = false,
    show_amount_in_title = false,
    always_show_products = true,
    category = "tiny-assembly",
    energy_required = 8,
    ingredients = {
      {type="item", name="nullius-efficiency-module-1", amount=2},
      {type="item", name="nullius-haste-module-1", amount=1}
    },
    result = "nullius-yield-module-1",
    result_count = 2
  },
  {
    type = "recipe",
    name = "nullius-boxed-yield-module-1",
    enabled = false,
    show_amount_in_title = false,
    always_show_products = true,
    category = "medium-only-assembly",
    subgroup = "boxed-module-2",
    energy_required = 40,
    ingredients = {
      {type="item", name="nullius-box-efficiency-module-1", amount=2},
      {type="item", name="nullius-box-haste-module-1", amount=1}
    },
    result = "nullius-box-yield-module-1",
    result_count = 2
  },

  {
    type = "recipe",
    name = "nullius-efficiency-module-2",
    enabled = false,
    category = "tiny-assembly",
    energy_required = 20,
    ingredients = {
      {type="item", name="nullius-efficiency-module-1", amount=2},
      {type="item", name="nullius-processor-1", amount=1},
      {type="item", name="nullius-sensor-1", amount=2},
      {type="item", name="nullius-battery-1", amount=1}
    },
    result = "nullius-efficiency-module-2"
  },
  {
    type = "recipe",
    name = "nullius-boxed-efficiency-module-2",
    enabled = false,
    show_amount_in_title = false,
    always_show_products = true,
    category = "medium-only-assembly",
    subgroup = "boxed-module-2",
    energy_required = 100,
    ingredients = {
      {type="item", name="nullius-box-efficiency-module-1", amount=2},
      {type="item", name="nullius-box-processor-1", amount=1},
      {type="item", name="nullius-box-sensor-1", amount=2},
      {type="item", name="nullius-box-battery-1", amount=1}
    },
    result = "nullius-box-efficiency-module-2"
  },
  {
    type = "recipe",
    name = "nullius-haste-module-2",
    enabled = false,
    show_amount_in_title = false,
    always_show_products = true,
    category = "tiny-assembly",
    energy_required = 20,
    ingredients = {
      {type="item", name="nullius-haste-module-1", amount=2},
      {type="item", name="nullius-processor-1", amount=2},
      {type="item", name="nullius-sensor-1", amount=1},
      {type="item", name="nullius-optical-cable", amount=1}
    },
    result = "nullius-haste-module-2"
  },
  {
    type = "recipe",
    name = "nullius-boxed-haste-module-2",
    enabled = false,
    show_amount_in_title = false,
    always_show_products = true,
    category = "medium-only-assembly",
    subgroup = "boxed-module-1",
    energy_required = 100,
    ingredients = {
      {type="item", name="nullius-box-haste-module-1", amount=2},
      {type="item", name="nullius-box-processor-1", amount=2},
      {type="item", name="nullius-box-sensor-1", amount=1},
      {type="item", name="nullius-box-optical-cable", amount=1}
    },
    result = "nullius-box-haste-module-2"
  },
  {
    type = "recipe",
    name = "nullius-yield-module-2",
    enabled = false,
    show_amount_in_title = false,
    always_show_products = true,
    category = "tiny-assembly",
    energy_required = 10,
    ingredients = {
      {type="item", name="nullius-yield-module-1", amount=1},
      {type="item", name="nullius-efficiency-module-2", amount=1}
    },
    result = "nullius-yield-module-2"
  },
  {
    type = "recipe",
    name = "nullius-boxed-yield-module-2",
    enabled = false,
    show_amount_in_title = false,
    always_show_products = true,
    category = "medium-only-assembly",
    subgroup = "boxed-module-2",
    energy_required = 50,
    ingredients = {
      {type="item", name="nullius-box-yield-module-1", amount=1},
      {type="item", name="nullius-box-efficiency-module-2", amount=1}
    },
    result = "nullius-box-yield-module-2"
  },
  {
    type = "recipe",
    name = "nullius-speed-module-2",
    enabled = false,
    show_amount_in_title = false,
    always_show_products = true,
    category = "tiny-assembly",
    energy_required = 10,
    ingredients = {
      {type="item", name="nullius-speed-module-1", amount=1},
      {type="item", name="nullius-haste-module-2", amount=1}
    },
    result = "nullius-speed-module-2"
  },
  {
    type = "recipe",
    name = "nullius-boxed-speed-module-2",
    enabled = false,
    show_amount_in_title = false,
    always_show_products = true,
    category = "medium-only-assembly",
    subgroup = "boxed-module-1",
    energy_required = 50,
    ingredients = {
      {type="item", name="nullius-box-speed-module-1", amount=1},
      {type="item", name="nullius-box-haste-module-2", amount=1}
    },
    result = "nullius-box-speed-module-2"
  },
  {
    type = "recipe",
    name = "nullius-productivity-module-1",
    enabled = false,
    show_amount_in_title = false,
    always_show_products = true,
    category = "tiny-assembly",
    energy_required = 16,
    ingredients = {
      {type="item", name="nullius-yield-module-2", amount=2},
      {type="item", name="nullius-speed-module-2", amount=1}
    },
    result = "nullius-productivity-module-1",
    result_count = 3
  },
  {
    type = "recipe",
    name = "nullius-boxed-productivity-module-1",
    enabled = false,
    show_amount_in_title = false,
    always_show_products = true,
    category = "medium-only-assembly",
    subgroup = "boxed-module-2",
    energy_required = 80,
    ingredients = {
      {type="item", name="nullius-box-yield-module-2", amount=2},
      {type="item", name="nullius-box-speed-module-2", amount=1}
    },
    result = "nullius-box-productivity-module-1",
    result_count = 3
  },

  {
    type = "recipe",
    name = "nullius-efficiency-module-3",
    enabled = false,
	show_amount_in_title = false,
    always_show_products = true,
    category = "tiny-assembly",
    energy_required = 60,
    ingredients = {
      {type="item", name="nullius-efficiency-module-2", amount=3},
      {type="item", name="nullius-processor-2", amount=2},
      {type="item", name="nullius-sensor-2", amount=2},
      {type="item", name="nullius-battery-2", amount=1},
      {type="item", name="nullius-transformer", amount=1},
      {type="item", name="power-switch", amount=1}
    },
    result = "nullius-efficiency-module-3",
	result_count = 2
  },
  {
    type = "recipe",
    name = "nullius-boxed-efficiency-module-3",
    enabled = false,
	show_amount_in_title = false,
    always_show_products = true,
    category = "medium-only-assembly",
    subgroup = "boxed-module-2",
    energy_required = 150,
    ingredients = {
      {type="item", name="nullius-box-efficiency-module-2", amount=3},
      {type="item", name="nullius-box-processor-2", amount=2},
      {type="item", name="nullius-box-sensor-2", amount=2},
      {type="item", name="nullius-box-battery-2", amount=1},
      {type="item", name="nullius-box-transformer", amount=1},
      {type="item", name="nullius-box-power-switch", amount=1}
    },
    result = "nullius-box-efficiency-module-3",
	result_count = 2
  },
  {
    type = "recipe",
    name = "nullius-haste-module-3",
    enabled = false,
    show_amount_in_title = false,
    always_show_products = true,
    category = "tiny-assembly",
    energy_required = 30,
    ingredients = {
      {type="item", name="nullius-haste-module-2", amount=1},
      {type="item", name="nullius-speed-module-2", amount=1},
      {type="item", name="nullius-processor-2", amount=1},
      {type="item", name="nullius-sensor-2", amount=1},
      {type="item", name="nullius-heat-pipe-3", amount=1}
    },
    result = "nullius-haste-module-3"
  },
  {
    type = "recipe",
    name = "nullius-boxed-haste-module-3",
    enabled = false,
    show_amount_in_title = false,
    always_show_products = true,
    category = "medium-only-assembly",
    subgroup = "boxed-module-1",
    energy_required = 150,
    ingredients = {
      {type="item", name="nullius-box-haste-module-2", amount=1},
      {type="item", name="nullius-box-speed-module-2", amount=1},
      {type="item", name="nullius-box-processor-2", amount=1},
      {type="item", name="nullius-box-sensor-2", amount=1},
      {type="item", name="nullius-box-heat-pipe-3", amount=1}
    },
    result = "nullius-box-haste-module-3"
  },
  {
    type = "recipe",
    name = "nullius-yield-module-3",
    enabled = false,
    show_amount_in_title = false,
    always_show_products = true,
    category = "tiny-assembly",
    energy_required = 20,
    ingredients = {
      {type="item", name="nullius-efficiency-module-3", amount=1},
      {type="item", name="nullius-yield-module-2", amount=1},
      {type="item", name="nullius-productivity-module-1", amount=1}
    },
    result = "nullius-yield-module-3"
  },
  {
    type = "recipe",
    name = "nullius-boxed-yield-module-3",
    enabled = false,
    show_amount_in_title = false,
    always_show_products = true,
    category = "medium-only-assembly",
    subgroup = "boxed-module-2",
    energy_required = 100,
    ingredients = {
      {type="item", name="nullius-box-efficiency-module-3", amount=1},
      {type="item", name="nullius-box-yield-module-2", amount=1},
      {type="item", name="nullius-box-productivity-module-1", amount=1}
    },
    result = "nullius-box-yield-module-3"
  },
  {
    type = "recipe",
    name = "nullius-speed-module-3",
    enabled = false,
    show_amount_in_title = false,
    always_show_products = true,
    category = "tiny-assembly",
    energy_required = 20,
    ingredients = {
      {type="item", name="nullius-haste-module-3", amount=1},
      {type="item", name="nullius-speed-module-2", amount=1},
      {type="item", name="nullius-efficiency-module-2", amount=1}
    },
    result = "nullius-speed-module-3"
  },
  {
    type = "recipe",
    name = "nullius-boxed-speed-module-3",
    enabled = false,
    show_amount_in_title = false,
    always_show_products = true,
    category = "medium-only-assembly",
    subgroup = "boxed-module-1",
    energy_required = 100,
    ingredients = {
      {type="item", name="nullius-box-haste-module-3", amount=1},
      {type="item", name="nullius-box-speed-module-2", amount=1},
      {type="item", name="nullius-box-efficiency-module-2", amount=1}
    },
    result = "nullius-box-speed-module-3"
  },
  {
    type = "recipe",
    name = "nullius-productivity-module-2",
    enabled = false,
    show_amount_in_title = false,
    always_show_products = true,
    category = "tiny-assembly",
    energy_required = 60,
    ingredients = {
      {type="item", name="nullius-productivity-module-1", amount=2},
      {type="item", name="nullius-yield-module-3", amount=2},
      {type="item", name="nullius-speed-module-3", amount=1}
    },
    result = "nullius-productivity-module-2",
    result_count = 4
  },
  {
    type = "recipe",
    name = "nullius-boxed-productivity-module-2",
    enabled = false,
    show_amount_in_title = false,
    always_show_products = true,
    category = "medium-only-assembly",
    subgroup = "boxed-module-2",
    energy_required = 300,
    ingredients = {
      {type="item", name="nullius-box-productivity-module-1", amount=2},
      {type="item", name="nullius-box-yield-module-3", amount=2},
      {type="item", name="nullius-box-speed-module-3", amount=1}
    },
    result = "nullius-box-productivity-module-2",
    result_count = 4
  },

  {
    type = "recipe",
    name = "nullius-haste-module-4",
    enabled = false,
    show_amount_in_title = false,
    always_show_products = true,
    category = "tiny-assembly",
    energy_required = 50,
    ingredients = {
      {type="item", name="nullius-haste-module-3", amount=1},
      {type="item", name="nullius-speed-module-3", amount=1},
      {type="item", name="nullius-processor-3", amount=2},
      {type="item", name="nullius-copper-wire", amount=8},
      {type="item", name="nullius-electrical-pack", amount=3}
    },
    result = "nullius-haste-module-4"
  },
  {
    type = "recipe",
    name = "nullius-boxed-haste-module-4",
    enabled = false,
    show_amount_in_title = false,
    always_show_products = true,
    category = "medium-only-assembly",
    subgroup = "boxed-module-1",
    energy_required = 250,
    ingredients = {
      {type="item", name="nullius-box-haste-module-3", amount=1},
      {type="item", name="nullius-box-speed-module-3", amount=1},
      {type="item", name="nullius-box-processor-3", amount=2},
      {type="item", name="nullius-box-copper-wire", amount=8},
      {type="item", name="nullius-box-electrical-pack", amount=3}
    },
    result = "nullius-box-haste-module-4"
  },
  {
    type = "recipe",
    name = "nullius-speed-module-4",
    enabled = false,
    show_amount_in_title = false,
    always_show_products = true,
    category = "tiny-assembly",
    energy_required = 40,
    ingredients = {
      {type="item", name="nullius-speed-module-3", amount=1},
      {type="item", name="nullius-haste-module-4", amount=1},
      {type="item", name="nullius-efficiency-module-3", amount=1}
    },
    result = "nullius-speed-module-4"
  },
  {
    type = "recipe",
    name = "nullius-boxed-speed-module-4",
    enabled = false,
    show_amount_in_title = false,
    always_show_products = true,
    category = "medium-only-assembly",
    subgroup = "boxed-module-1",
    energy_required = 200,
    ingredients = {
      {type="item", name="nullius-box-speed-module-3", amount=1},
      {type="item", name="nullius-box-haste-module-4", amount=1},
      {type="item", name="nullius-box-efficiency-module-3", amount=1}
    },
    result = "nullius-box-speed-module-4"
  },
  {
    type = "recipe",
    name = "nullius-productivity-module-3",
    enabled = false,
    show_amount_in_title = false,
    always_show_products = true,
    category = "tiny-assembly",
    energy_required = 90,
    ingredients = {
      {type="item", name="nullius-productivity-module-2", amount=3},
      {type="item", name="nullius-speed-module-4", amount=2},
      {type="item", name="nullius-yield-module-3", amount=1}
    },
    result = "nullius-productivity-module-3",
	result_count = 3
  },
  {
    type = "recipe",
    name = "nullius-boxed-productivity-module-3",
    enabled = false,
    show_amount_in_title = false,
    always_show_products = true,
    category = "medium-only-assembly",
    subgroup = "boxed-module-2",
    energy_required = 450,
    ingredients = {
      {type="item", name="nullius-box-productivity-module-2", amount=3},
      {type="item", name="nullius-box-speed-module-4", amount=2},
      {type="item", name="nullius-box-yield-module-3", amount=1}
    },
    result = "nullius-box-productivity-module-3",
	result_count = 3
  },
  {
    type = "recipe",
    name = "nullius-yield-module-4",
    enabled = false,
    show_amount_in_title = false,
    always_show_products = true,
    category = "tiny-assembly",
    energy_required = 75,
    ingredients = {
      {type="item", name="nullius-productivity-module-3", amount=3},
      {type="item", name="nullius-electrical-pack", amount=5}
    },
    result = "nullius-yield-module-4",
	result_count = 2
  },
  {
    type = "recipe",
    name = "nullius-boxed-yield-module-4",
    enabled = false,
    show_amount_in_title = false,
    always_show_products = true,
    category = "medium-only-assembly",
    subgroup = "boxed-module-2",
    energy_required = 375,
    ingredients = {
      {type="item", name="nullius-box-productivity-module-3", amount=3},
      {type="item", name="nullius-box-electrical-pack", amount=5}
    },
    result = "nullius-box-yield-module-4",
	result_count = 2
  },

  {
    type = "item",
    name = "nullius-coprocessor-speed-1",
	icons = {{
	  icon = EQUIPPATH.."coprocessor/speed1.png",
      icon_size = 64
	}},
	placed_as_equipment_result = "nullius-upgrade-coprocessor-speed-1",
    subgroup = "coprocessors",
    order = "nullius-bb",
    stack_size = 10
  },
  {
    type = "item",
    name = "nullius-coprocessor-speed-2",
	icons = {{
	  icon = EQUIPPATH.."coprocessor/speed2.png",
      icon_size = 64
	}},
	placed_as_equipment_result = "nullius-upgrade-coprocessor-speed-2",
    subgroup = "coprocessors",
    order = "nullius-bc",
    stack_size = 10
  },
  {
    type = "item",
    name = "nullius-coprocessor-speed-3",
	icons = {{
	  icon = EQUIPPATH.."coprocessor/speed3.png",
      icon_size = 64
	}},
	placed_as_equipment_result = "nullius-upgrade-coprocessor-speed-3",
    subgroup = "coprocessors",
    order = "nullius-bd",
    stack_size = 10
  },
  {
    type = "item",
    name = "nullius-coprocessor-efficiency-1",
	icons = {{
	  icon = EQUIPPATH.."coprocessor/efficiency1.png",
      icon_size = 64
	}},
	placed_as_equipment_result = "nullius-upgrade-coprocessor-efficiency-1",
    subgroup = "coprocessors",
    order = "nullius-cb",
    stack_size = 10
  },
  {
    type = "item",
    name = "nullius-coprocessor-efficiency-2",
	icons = {{
	  icon = EQUIPPATH.."coprocessor/efficiency2.png",
      icon_size = 64
	}},
	placed_as_equipment_result = "nullius-upgrade-coprocessor-efficiency-2",
    subgroup = "coprocessors",
    order = "nullius-cc",
    stack_size = 10
  },
  {
    type = "item",
    name = "nullius-coprocessor-efficiency-3",
	icons = {{
	  icon = EQUIPPATH.."coprocessor/efficiency3.png",
      icon_size = 64
	}},
	placed_as_equipment_result = "nullius-upgrade-coprocessor-efficiency-3",
    subgroup = "coprocessors",
    order = "nullius-cd",
    stack_size = 10
  },
  {
    type = "item",
    name = "nullius-coprocessor-productivity-1",
	icons = {{
	  icon = EQUIPPATH.."coprocessor/productivity1.png",
      icon_size = 64
	}},
	placed_as_equipment_result = "nullius-upgrade-coprocessor-productivity-1",
    subgroup = "coprocessors",
    order = "nullius-db",
    stack_size = 10
  },
  {
    type = "item",
    name = "nullius-coprocessor-productivity-2",
	icons = {{
	  icon = EQUIPPATH.."coprocessor/productivity2.png",
      icon_size = 64
	}},
	placed_as_equipment_result = "nullius-upgrade-coprocessor-productivity-2",
    subgroup = "coprocessors",
    order = "nullius-dc",
    stack_size = 10
  },
  {
    type = "item",
    name = "nullius-coprocessor-productivity-3",
	icons = {{
	  icon = EQUIPPATH.."coprocessor/productivity3.png",
      icon_size = 64
	}},
	placed_as_equipment_result = "nullius-upgrade-coprocessor-productivity-3",
    subgroup = "coprocessors",
    order = "nullius-dd",
    stack_size = 10
  },
  {
    type = "item",
    name = "nullius-coprocessor-quantum",
	icons = {{
	  icon = EQUIPPATH.."coprocessor/quantum.png",
      icon_size = 64
	}},
	placed_as_equipment_result = "nullius-upgrade-coprocessor-quantum",
    subgroup = "coprocessors",
    order = "nullius-e",
    stack_size = 10
  },

  {
    type = "recipe",
    name = "nullius-coprocessor-speed-1",
    enabled = false,
    category = "tiny-assembly",
    energy_required = 10,
    ingredients = {
      {type="item", name="nullius-speed-module-1", amount=2},
      {type="item", name="nullius-capacitor", amount=1},
	  {type="item", name="nullius-aluminum-sheet", amount=1}
    },
    result = "nullius-coprocessor-speed-1"
  },
  {
    type = "recipe",
    name = "nullius-coprocessor-efficiency-1",
    enabled = false,
    category = "tiny-assembly",
    energy_required = 10,
    ingredients = {
      {type="item", name="nullius-efficiency-module-1", amount=2},
      {type="item", name="nullius-capacitor", amount=2},
	  {type="item", name="nullius-aluminum-sheet", amount=1}
    },
    result = "nullius-coprocessor-efficiency-1"
  },
  {
    type = "recipe",
    name = "nullius-coprocessor-productivity-1",
    enabled = false,
    category = "tiny-assembly",
    energy_required = 12,
    ingredients = {
      {type="item", name="nullius-yield-module-1", amount=2},
      {type="item", name="nullius-capacitor", amount=1},
	  {type="item", name="nullius-aluminum-sheet", amount=2}
    },
    result = "nullius-coprocessor-productivity-1"
  },
  {
    type = "recipe",
    name = "nullius-coprocessor-speed-2",
    enabled = false,
    category = "tiny-assembly",
    energy_required = 15,
    ingredients = {
      {type="item", name="nullius-speed-module-2", amount=2},
	  {type="item", name="nullius-coprocessor-speed-1", amount=1},
      {type="item", name="nullius-insulation", amount=1},
	  {type="item", name="nullius-titanium-sheet", amount=1}
    },
    result = "nullius-coprocessor-speed-2"
  },
  {
    type = "recipe",
    name = "nullius-coprocessor-efficiency-2",
    enabled = false,
    category = "tiny-assembly",
    energy_required = 15,
    ingredients = {
      {type="item", name="nullius-efficiency-module-2", amount=2},
	  {type="item", name="nullius-coprocessor-efficiency-1", amount=1},
      {type="item", name="nullius-insulation", amount=2},
	  {type="item", name="nullius-titanium-sheet", amount=1}
    },
    result = "nullius-coprocessor-efficiency-2"
  },
  {
    type = "recipe",
    name = "nullius-coprocessor-productivity-2",
    enabled = false,
    category = "tiny-assembly",
    energy_required = 18,
    ingredients = {
      {type="item", name="nullius-productivity-module-1", amount=2},
	  {type="item", name="nullius-coprocessor-productivity-1", amount=1},
      {type="item", name="nullius-insulation", amount=1},
	  {type="item", name="nullius-titanium-sheet", amount=2}
    },
    result = "nullius-coprocessor-productivity-2"
  },
  {
    type = "recipe",
    name = "nullius-coprocessor-speed-3",
    enabled = false,
    category = "tiny-assembly",
    energy_required = 20,
    ingredients = {
      {type="item", name="nullius-speed-module-3", amount=2},
	  {type="item", name="nullius-coprocessor-speed-2", amount=1},
      {type="item", name="nullius-battery-2", amount=1},
	  {type="item", name="nullius-small-cargo-pod-2", amount=1}
    },
    result = "nullius-coprocessor-speed-3"
  },
  {
    type = "recipe",
    name = "nullius-coprocessor-efficiency-3",
    enabled = false,
    category = "tiny-assembly",
    energy_required = 20,
    ingredients = {
      {type="item", name="nullius-efficiency-module-3", amount=2},
	  {type="item", name="nullius-coprocessor-efficiency-2", amount=1},
      {type="item", name="nullius-battery-2", amount=2},
	  {type="item", name="nullius-small-cargo-pod-2", amount=1}
    },
    result = "nullius-coprocessor-efficiency-3"
  },
  {
    type = "recipe",
    name = "nullius-coprocessor-productivity-3",
    enabled = false,
    category = "tiny-assembly",
    energy_required = 25,
    ingredients = {
      {type="item", name="nullius-productivity-module-2", amount=2},
	  {type="item", name="nullius-coprocessor-productivity-2", amount=1},
      {type="item", name="nullius-battery-2", amount=1},
	  {type="item", name="nullius-small-cargo-pod-2", amount=2}
    },
    result = "nullius-coprocessor-productivity-3"
  },
  {
    type = "recipe",
    name = "nullius-coprocessor-quantum",
    enabled = false,
    category = "nanotechnology",
    energy_required = 60,
    ingredients = {
      {type="item", name="nullius-yield-module-4", amount=1},
	  {type="item", name="nullius-coprocessor-speed-3", amount=1},
	  {type="item", name="nullius-coprocessor-efficiency-3", amount=1},
	  {type="item", name="nullius-coprocessor-productivity-3", amount=1},
      {type="item", name="nullius-beacon-3", amount=1},
      {type="item", name="nullius-antimatter-trap", amount=1}
    },
    result = "nullius-coprocessor-quantum"
  }
})
