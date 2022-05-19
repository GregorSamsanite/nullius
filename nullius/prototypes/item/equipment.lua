local ICONPATH = "__nullius__/graphics/icons/"
local ENTITYPATH = "__nullius__/graphics/entity/"

data:extend({
  {
    type = "equipment-grid",
    name = "nullius-armor-grid-1",
    width = 4,
    height = 5,
    equipment_categories = {"cybernetic"}
  },
  {
    type = "equipment-grid",
    name = "nullius-armor-grid-2",
    width = 5,
    height = 6,
    equipment_categories = {"cybernetic"}
  },
  {
    type = "equipment-grid",
    name = "nullius-armor-grid-3",
    width = 6,
    height = 8,
    equipment_categories = {"cybernetic"}
  },
  {
    type = "equipment-grid",
    name = "nullius-armor-grid-4",
    width = 8,
    height = 10,
    equipment_categories = {"cybernetic"}
  },
  {
    type = "equipment-grid",
    name = "nullius-armor-grid-5",
    width = 10,
    height = 12,
    equipment_categories = {"cybernetic"}
  },
  {
    type = "equipment-grid",
    name = "nullius-armor-grid-6",
    width = 10,
    height = 15,
    equipment_categories = {"cybernetic"}
  },
  {
    type = "equipment-grid",
    name = "nullius-mecha-grid-1",
    width = 10,
    height = 10,
    equipment_categories = {"cybernetic"}
  },
  {
    type = "equipment-grid",
    name = "nullius-mecha-grid-2",
    width = 10,
    height = 15,
    equipment_categories = {"cybernetic"}
  },

  {
    type = "armor",
    name = "nullius-chassis-1",
    icon = "__base__/graphics/icons/light-armor.png",
    icon_size = 64,
    icon_mipmaps = 4,
    resistances = {
      { type = "explosion", decrease = 2, percent = 20 },
      { type = "impact", decrease = 2, percent = 20 },
      { type = "physical", decrease = 1, percent = 10 }
    },
    subgroup = "armor",
    order = "nullius-eb",
    stack_size = 1,
    equipment_grid = "nullius-armor-grid-1",
    infinite = true
  },
  {
    type = "armor",
    name = "nullius-chassis-2",
    icon = "__base__/graphics/icons/heavy-armor.png",
    icon_size = 64,
    icon_mipmaps = 4,
    resistances = {
      { type = "explosion", decrease = 10, percent = 40 },
      { type = "impact", decrease = 5, percent = 30 },
      { type = "physical", decrease = 2, percent = 20 },
      { type = "fire", decrease = 1, percent = 10 },
      { type = "laser", decrease = 1, percent = 10 }
    },
    subgroup = "armor",
    order = "nullius-ec",
    stack_size = 1,
    inventory_size_bonus = 10,
    equipment_grid = "nullius-armor-grid-2",
    infinite = true
  },
  {
    type = "armor",
    name = "nullius-chassis-3",
    icon = "__base__/graphics/icons/modular-armor.png",
    icon_size = 64,
    icon_mipmaps = 4,
    resistances = {
      { type = "explosion", decrease = 20, percent = 50 },
      { type = "impact", decrease = 10, percent = 40 },
      { type = "physical", decrease = 5, percent = 30 },
      { type = "fire", decrease = 2, percent = 20 },
      { type = "laser", decrease = 2, percent = 20 },
      { type = "acid", decrease = 1, percent = 10 }
    },
    subgroup = "armor",
    order = "nullius-ed",
    stack_size = 1,
    inventory_size_bonus = 20,
    equipment_grid = "nullius-armor-grid-3",
    infinite = true
  },
  {
    type = "armor",
    name = "nullius-chassis-4",
    icon = "__base__/graphics/icons/power-armor.png",
    icon_size = 64,
    icon_mipmaps = 4,
    resistances = {
      { type = "explosion", decrease = 30, percent = 60 },
      { type = "impact", decrease = 20, percent = 50 },
      { type = "physical", decrease = 10, percent = 40 },
      { type = "fire", decrease = 5, percent = 30 },
      { type = "laser", decrease = 5, percent = 30 },
      { type = "acid", decrease = 2, percent = 20 }
    },
    subgroup = "armor",
    order = "nullius-ee",
    stack_size = 1,
    inventory_size_bonus = 30,
    equipment_grid = "nullius-armor-grid-4",
    infinite = true
  },
  {
    type = "armor",
    name = "nullius-chassis-5",
    icon = "__base__/graphics/icons/power-armor-mk2.png",
    icon_size = 64,
    icon_mipmaps = 4,
    resistances = {
      { type = "explosion", decrease = 40, percent = 75 },
      { type = "impact", decrease = 30, percent = 60 },
      { type = "physical", decrease = 20, percent = 50 },
      { type = "fire", decrease = 10, percent = 40 },
      { type = "laser", decrease = 10, percent = 40 },
      { type = "acid", decrease = 5, percent = 25 }
    },
    subgroup = "armor",
    order = "nullius-ef",
    stack_size = 1,
    inventory_size_bonus = 40,
    equipment_grid = "nullius-armor-grid-5",
    infinite = true
  },
  {
    type = "armor",
    name = "nullius-chassis-6",
    localised_description = {"item-description.nullius-chassis-5"},
    icon = ICONPATH .. "chassis6.png",
    icon_size = 64,
    icon_mipmaps = 4,
    resistances = {
      { type = "explosion", decrease = 50, percent = 80 },
      { type = "impact", decrease = 40, percent = 75 },
      { type = "physical", decrease = 30, percent = 60 },
      { type = "fire", decrease = 20, percent = 50 },
      { type = "laser", decrease = 20, percent = 50 },
      { type = "acid", decrease = 10, percent = 40 }
    },
    subgroup = "armor",
    order = "nullius-eg",
    stack_size = 1,
    inventory_size_bonus = 50,
    equipment_grid = "nullius-armor-grid-6",
    infinite = true
  },
  {
    type = "recipe",
    name = "nullius-chassis-2",
    enabled = false,
    category = "small-crafting",
    always_show_made_in = true,
    energy_required = 20,
    ingredients = {
      {"nullius-steel-plate", 12},
      {"nullius-rubber", 8},
      {"inserter", 4}
    },
    result = "nullius-chassis-2"
  },
  {
    type = "recipe",
    name = "nullius-chassis-3",
    enabled = false,
    category = "hand-casting",
    always_show_made_in = true,
    energy_required = 40,
    ingredients = {
      {"nullius-titanium-plate", 20},
      {"nullius-ceramic-powder", 15},
      {"nullius-textile", 10},
      {"nullius-robot-frame-1", 2},
      {"nullius-efficiency-module-1", 1},
      {"nullius-transformer", 1}
    },
    result = "nullius-chassis-3"
  },
  {
    type = "recipe",
    name = "nullius-chassis-4",
    enabled = false,
    always_show_made_in = true,
    category = "hand-casting",
    energy_required = 60,
    ingredients = {
      {"nullius-titanium-plate", 20},
      {"nullius-ceramic-powder", 20},
      {"nullius-carbon-composite", 20},
      {"nullius-textile", 20},
      {"nullius-robot-frame-3", 4},
      {"nullius-efficiency-module-2", 2},
      {"logistic-chest-storage", 1}
    },
    result = "nullius-chassis-4"
  },
  {
    type = "recipe",
    name = "nullius-chassis-5",
    enabled = false,
    always_show_made_in = true,
    category = "hand-casting",
    energy_required = 120,
    ingredients = {
      {"nullius-box-titanium-plate", 8},
      {"nullius-box-ceramic-powder", 6},
      {"nullius-box-carbon-composite", 8},
      {"nullius-box-textile", 6},
      {"nullius-box-robot-frame-4", 1},
      {"nullius-leg-augmentation-3", 4},
      {"nullius-box-productivity-module-3", 1},
      {"nullius-large-buffer-chest-2", 1}
    },
    result = "nullius-chassis-5"
  },
  {
    type = "recipe",
    name = "nullius-chassis-6",
    enabled = false,
    category = "nanotechnology",
    energy_required = 300,
    ingredients = {
      {"nullius-chassis-5", 1},
      {"nullius-solar-panel-4", 3},
      {"nullius-battery-3", 4},
      {"nullius-box-graphene", 6},
      {"nullius-leg-augmentation-4", 2},
      {"nullius-relay-4", 1}
    },
    result = "nullius-chassis-6"
  },

  {
    type = "item",
    name = "nullius-solar-panel-1",
    icons = {{
      icon = "__base__/graphics/icons/solar-panel.png",
      icon_size = 64,
      icon_mipmaps = 4,
      tint = {0.77, 0.77, 0.68}
    }},
    subgroup = "solar",
    order = "nullius-bb",
    place_result = "nullius-solar-panel-1",
    placed_as_equipment_result = "nullius-solar-panel-1",
    stack_size = 100
  },
  {
    type = "item",
    name = "nullius-solar-panel-2",
    icons = {{
      icon = "__base__/graphics/icons/solar-panel.png",
      icon_size = 64,
      icon_mipmaps = 4,
      tint = {0.8, 0.8, 0.9}
    }},
    subgroup = "solar",
    order = "nullius-bc",
    place_result = "nullius-solar-panel-2",
    placed_as_equipment_result = "nullius-solar-panel-2",
    stack_size = 100
  },
  {
    type = "item",
    name = "nullius-solar-panel-3",
    icons = {{
      icon = "__base__/graphics/icons/solar-panel.png",
      icon_size = 64,
      icon_mipmaps = 4
    }},
    subgroup = "solar",
    order = "nullius-bd",
    place_result = "nullius-solar-panel-3",
    placed_as_equipment_result = "nullius-solar-panel-3",
    stack_size = 100
  },
  {
    type = "item",
    name = "nullius-solar-panel-4",
    icons = {{
      icon = "__base__/graphics/icons/solar-panel.png",
      icon_size = 64,
      icon_mipmaps = 4,
      tint = {1, 0.75, 0.85}
    }},
    subgroup = "solar",
    order = "nullius-be",
    place_result = "nullius-solar-panel-4",
    placed_as_equipment_result = "nullius-solar-panel-4",
    stack_size = 100
  },

  {
    type = "recipe",
    name = "nullius-solar-panel-1",
    enabled = false,
    category = "large-crafting",
    always_show_made_in = true,
    energy_required = 8,
    ingredients = {
      {"nullius-polycrystalline-silicon", 6},
      {"nullius-glass", 4},
      {"nullius-aluminum-sheet", 3},
      {"nullius-plastic", 2},
      {"nullius-aluminum-rod", 1}
    },
    result = "nullius-solar-panel-1"
  },
  {
    type = "recipe",
    name = "nullius-boxed-solar-panel-1",
    enabled = false,
    category = "huge-assembly",
    subgroup = "boxed-renewable",
    always_show_made_in = true,
    energy_required = 40,
    ingredients = {
      {"nullius-box-polycrystalline-silicon", 6},
      {"nullius-box-glass", 4},
      {"nullius-box-aluminum-sheet", 3},
      {"nullius-box-plastic", 2},
      {"nullius-box-aluminum-rod", 1}
    },
    result = "nullius-box-solar-panel-1"
  },
  {
    type = "recipe",
    name = "nullius-solar-panel-2",
    enabled = false,
    always_show_made_in = true,
    show_amount_in_title = false,
    always_show_products = true,
    category = "nanotechnology",
    energy_required = 25,
    ingredients = {
      {type="item", name="nullius-solar-panel-1", amount=3},
      {type="item", name="nullius-monocrystalline-silicon", amount=15},
      {type="item", name="nullius-boron", amount=1},
      {type="item", name="nullius-ceramic-powder", amount=5},
      {type="fluid", name="nullius-epoxy", amount=10, fluidbox_index=1}
    },
    result = "nullius-solar-panel-2",
    result_count = 2
  },
  {
    type = "recipe",
    name = "nullius-boxed-solar-panel-2",
    enabled = false,
    always_show_made_in = true,
    show_amount_in_title = false,
    always_show_products = true,
    category = "nanotechnology",
    subgroup = "boxed-renewable",
    energy_required = 125,
    ingredients = {
      {type="item", name="nullius-box-solar-panel-1", amount=3},
      {type="item", name="nullius-box-monocrystalline-silicon", amount=15},
      {type="item", name="nullius-box-boron", amount=1},
      {type="item", name="nullius-box-ceramic-powder", amount=5},
      {type="fluid", name="nullius-epoxy", amount=50, fluidbox_index=1}
    },
    result = "nullius-box-solar-panel-2",
    result_count = 2
  },
  {
    type = "recipe",
    name = "nullius-solar-panel-3",
    enabled = false,
    category = "nanotechnology",
    energy_required = 25,
    ingredients = {
      {type="item", name="nullius-solar-panel-2", amount=2},
      {type="item", name="nullius-lithium", amount=1},
      {type="item", name="nullius-graphene", amount=2},
      {type="item", name="nullius-copper-sheet", amount=4},
      {type="item", name="nullius-hard-glass", amount=6},
      {type="item", name="nullius-transformer", amount=1},
      {type="fluid", name="nullius-titanium-tetrachloride", amount=2, fluidbox_index=1},
      {type="fluid", name="nullius-oxygen", amount=8, fluidbox_index=2}
    },
    results = {
      {type="item", name="nullius-solar-panel-3", amount=1},
      {type="fluid", name="nullius-chlorine", amount=12}
    },
    main_product = "nullius-solar-panel-3"
  },
  {
    type = "recipe",
    name = "nullius-boxed-solar-panel-3",
    enabled = false,
    category = "nanotechnology",
    subgroup = "boxed-renewable",
    energy_required = 25,
    ingredients = {
      {type="item", name="nullius-box-solar-panel-2", amount=2},
      {type="item", name="nullius-box-lithium", amount=1},
      {type="item", name="nullius-box-graphene", amount=2},
      {type="item", name="nullius-box-copper-sheet", amount=4},
      {type="item", name="nullius-box-hard-glass", amount=6},
      {type="item", name="nullius-box-transformer", amount=1},
      {type="fluid", name="nullius-titanium-tetrachloride", amount=10, fluidbox_index=1},
      {type="fluid", name="nullius-oxygen", amount=40, fluidbox_index=2}
    },
    results = {
      {type="item", name="nullius-box-solar-panel-3", amount=1},
      {type="fluid", name="nullius-chlorine", amount=60}
    },
    main_product = "nullius-box-solar-panel-3"
  },
  {
    type = "recipe",
    name = "nullius-solar-panel-4",
    enabled = false,
    category = "nanotechnology",
    energy_required = 40,
    ingredients = {
      {type="item", name="nullius-solar-panel-3", amount=3},
      {type="item", name="nullius-solar-collector-3", amount=2},
      {type="item", name="nullius-productivity-module-3", amount=1},
      {type="item", name="nullius-antimatter", amount=1}
    },
    result = "nullius-solar-panel-4"
  },

  {
    type = "item",
    name = "nullius-capacitor",
    icon = "__base__/graphics/icons/battery.png",
    icon_size = 64,
    icon_mipmaps = 4,
    placed_as_equipment_result = "nullius-capacitor",
    subgroup = "battery",
    order = "nullius-c",
    stack_size = 100
  },
  {
    type = "recipe",
    name = "nullius-capacitor",
    enabled = false,
    show_amount_in_title = false,
    always_show_products = true,
    category = "machine-casting",
    energy_required = 5,
    ingredients = {
      {type="item", name="nullius-aluminum-sheet", amount=2},
      {type="item", name="nullius-plastic", amount=3},
      {type="item", name="nullius-alumina", amount=1},
      {type="item", name="nullius-graphite", amount=1}
    },
    result = "nullius-capacitor",
    result_count = 2
  },
  {
    type = "recipe",
    name = "nullius-boxed-capacitor",
    enabled = false,
    show_amount_in_title = false,
    always_show_products = true,
    category = "machine-casting",
    subgroup = "boxed-electrical",
    order = "nullius-bb",
    energy_required = 25,
    ingredients = {
      {type="item", name="nullius-box-aluminum-sheet", amount=2},
      {type="item", name="nullius-box-plastic", amount=3},
      {type="item", name="nullius-box-alumina", amount=1},
      {type="item", name="nullius-box-graphite", amount=1}
    },
    result = "nullius-box-capacitor",
    result_count = 2
  },
  {
    type = "recipe",
    name = "nullius-capacitor-2",
    localised_name = {"", {"item-name.nullius-box", {"equipment-name.nullius-capacitor"}}, " ", 2},
    icons = {
      {
        icon = ICONPATH .. "crate.png",
        icon_size = 64
      },
      {
        icon = "__base__/graphics/icons/battery.png",
        icon_size = 64,
        scale = 0.33
      }
    },
    enabled = false,
    show_amount_in_title = false,
    always_show_products = true,
    category = "nanotechnology",
    subgroup = "boxed-electrical",
    order = "nullius-bc",
    energy_required = 20,
    ingredients = {
      {type="item", name="nullius-box-aluminum-sheet", amount=2},
      {type="item", name="nullius-box-plastic", amount=3},
      {type="item", name="nullius-box-alumina", amount=1},
      {type="item", name="nullius-box-graphite", amount=1},
      {type="fluid", name="nullius-argon", amount=3, fluidbox_index=1}
    },
    result = "nullius-box-capacitor",
    result_count = 3
  },

  {
    type = "item",
    name = "nullius-battery-1",
    localised_name = {"item-name.nullius-battery-1"},
    localised_description = {"equipment-description.nullius-battery"},
    icon = "__base__/graphics/icons/battery-equipment.png",
    icon_size = 64,
    icon_mipmaps = 4,
    placed_as_equipment_result = "nullius-charged-battery-1",
    subgroup = "battery",
    order = "nullius-db",
    fuel_category = "vehicle",
    fuel_value = "3MJ",
    fuel_acceleration_multiplier = 1.2,
    fuel_top_speed_multiplier = 1.1,
    burnt_result = "nullius-uncharged-battery-1",
    stack_size = 100
  },
  {
    type = "item",
    name = "nullius-uncharged-battery-1",
    localised_name = {"item-name.nullius-uncharged-battery-1"},
    icon = ICONPATH .. "uncharged1.png",
    icon_size = 64,
    icon_mipmaps = 4,
    placed_as_equipment_result = "nullius-battery-1",
    subgroup = "battery",
    order = "nullius-eb",
    stack_size = 100
  },
  {
    type = "recipe",
    name = "nullius-battery-1",
    enabled = false,
    category = "basic-chemistry",
    crafting_machine_tint = {
      primary = data.raw.fluid["nullius-solvent"].flow_color,
      secondary = data.raw.fluid["nullius-caustic-solution"].flow_color
    },
    always_show_made_in = true,
    always_show_products = true,
    energy_required = 10,
    ingredients = {
      {type="item", name="nullius-sodium", amount=2},
      {type="item", name="nullius-iron-oxide", amount=2},
      {type="item", name="nullius-carbon-fiber", amount=3},
      {type="fluid", name="nullius-solvent", amount=16, fluidbox_index=1},
      {type="item", name="nullius-aluminum-sheet", amount=3},
      {type="item", name="nullius-plastic", amount=4}
    },
    result = "nullius-battery-1"
  },
  {
    type = "recipe",
    name = "nullius-boxed-battery-1",
    enabled = false,
    category = "basic-chemistry",
    subgroup = "boxed-renewable",
    crafting_machine_tint = {
      primary = data.raw.fluid["nullius-solvent"].flow_color,
      secondary = data.raw.fluid["nullius-caustic-solution"].flow_color
    },
    always_show_made_in = true,
    always_show_products = true,
    energy_required = 50,
    ingredients = {
      {type="item", name="nullius-box-sodium", amount=2},
      {type="item", name="nullius-box-iron-oxide", amount=2},
      {type="item", name="nullius-box-carbon-fiber", amount=3},
      {type="fluid", name="nullius-solvent", amount=80, fluidbox_index=1},
      {type="item", name="nullius-box-aluminum-sheet", amount=3},
      {type="item", name="nullius-box-plastic", amount=4}
    },
    result = "nullius-box-battery-1"
  },
  {
    type = "recipe",
    name = "nullius-battery-recharging-1",
    localised_name = {"recipe-name.nullius-battery-recharging-1"},
    icon = ICONPATH .. "uncharged1.png",
    icon_size = 64,
    icon_mipmaps = 4,
    enabled = false,
    always_show_products = true,
    no_productivity = true,
    category = "nullius-electrolysis",
    order = "nullius-eb",
    energy_required = 2,
    ingredients = {
      {"nullius-uncharged-battery-1", 1}
    },
    result = "nullius-battery-1"
  },
  {
    type = "recipe",
    name = "nullius-boxed-battery-recharging-1",
    localised_name = {"recipe-name.nullius-boxed", {"recipe-name.nullius-battery-recharging-1"}},
    icons = {
      {
        icon = ICONPATH .. "crate.png",
        icon_size = 64
      },
      {
        icon = ICONPATH .. "uncharged1.png",
        icon_size = 64,
        icon_mipmaps = 4,
        scale = 0.45
      }
    },
    enabled = false,
    always_show_products = true,
    no_productivity = true,
    category = "nullius-electrolysis",
    subgroup = "boxed-renewable",
    order = "nullius-eb",
    energy_required = 10,
    ingredients = {
      {"nullius-uncharged-battery-1", 5}
    },
    result = "nullius-box-battery-1"
  },

  {
    type = "item",
    name = "nullius-battery-2",
    localised_name = {"item-name.nullius-battery-2"},
    localised_description = {"equipment-description.nullius-battery"},
    icon = "__base__/graphics/icons/battery-mk2-equipment.png",
    icon_size = 64,
    icon_mipmaps = 4,
    placed_as_equipment_result = "nullius-charged-battery-2",
    subgroup = "battery",
    order = "nullius-dc",
    fuel_category = "vehicle",
    fuel_value = "12MJ",
    fuel_acceleration_multiplier = 1.4,
    fuel_top_speed_multiplier = 1.2,
    burnt_result = "nullius-uncharged-battery-2",
    stack_size = 100
  },
  {
    type = "item",
    name = "nullius-uncharged-battery-2",
    localised_name = {"item-name.nullius-uncharged-battery-2"},
    icon = ICONPATH .. "uncharged2.png",
    icon_size = 64,
    icon_mipmaps = 4,
    placed_as_equipment_result = "nullius-battery-2",
    subgroup = "battery",
    order = "nullius-ec",
    stack_size = 100
  },
  {
    type = "recipe",
    name = "nullius-battery-2",
    enabled = false,
    always_show_made_in = true,
    always_show_products = true,
    category = "nanotechnology",
    energy_required = 12,
    ingredients = {
      {type="item", name="nullius-battery-1", amount=2},
      {type="item", name="nullius-graphene", amount=2},
      {type="item", name="nullius-lithium", amount=3},
      {type="item", name="nullius-capacitor", amount=2}
    },
    result = "nullius-battery-2"
  },
  {
    type = "recipe",
    name = "nullius-boxed-battery-2",
    enabled = false,
    always_show_made_in = true,
    always_show_products = true,
    category = "nanotechnology",
    subgroup = "boxed-renewable",
    energy_required = 60,
    ingredients = {
      {type="item", name="nullius-box-battery-1", amount=2},
      {type="item", name="nullius-box-graphene", amount=2},
      {type="item", name="nullius-box-lithium", amount=3},
      {type="item", name="nullius-box-capacitor", amount=2}
    },
    result = "nullius-box-battery-2"
  },
  {
    type = "recipe",
    name = "nullius-battery-recharging-2",
    localised_name = {"recipe-name.nullius-battery-recharging-2"},
    icon = ICONPATH .. "uncharged2.png",
    icon_size = 64,
    icon_mipmaps = 4,
    enabled = false,
    always_show_products = true,
    no_productivity = true,
    category = "nullius-electrolysis",
    order = "nullius-ec",
    energy_required = 6,
    ingredients = {
      {"nullius-uncharged-battery-2", 1}
    },
    result = "nullius-battery-2"
  },
  {
    type = "recipe",
    name = "nullius-boxed-battery-recharging-2",
    localised_name = {"recipe-name.nullius-boxed", {"recipe-name.nullius-battery-recharging-2"}},
    icons = {
      {
        icon = ICONPATH .. "crate.png",
        icon_size = 64
      },
      {
        icon = ICONPATH .. "uncharged2.png",
        icon_size = 64,
        icon_mipmaps = 4,
        scale = 0.45
      }
    },
    enabled = false,
    always_show_products = true,
    no_productivity = true,
    category = "nullius-electrolysis",
    subgroup = "boxed-renewable",
    order = "nullius-ec",
    energy_required = 30,
    ingredients = {
      {"nullius-uncharged-battery-2", 5}
    },
    result = "nullius-box-battery-2"
  },

  {
    type = "item",
    name = "nullius-battery-3",
    localised_name = {"item-name.nullius-battery-3"},
    localised_description = {"equipment-description.nullius-battery"},
    icon = ICONPATH .. "battery3.png",
    icon_size = 64,
    icon_mipmaps = 4,
    placed_as_equipment_result = "nullius-charged-battery-3",
    subgroup = "battery",
    order = "nullius-dd",
    fuel_category = "vehicle",
    fuel_value = "25MJ",
    fuel_acceleration_multiplier = 1.6,
    fuel_top_speed_multiplier = 1.3,
    burnt_result = "nullius-uncharged-battery-3",
    stack_size = 100
  },
  {
    type = "item",
    name = "nullius-uncharged-battery-3",
    localised_name = {"item-name.nullius-uncharged-battery-3"},
    icon = ICONPATH .. "uncharged3.png",
    icon_size = 64,
    icon_mipmaps = 4,
    placed_as_equipment_result = "nullius-battery-3",
    subgroup = "battery",
    order = "nullius-ed",
    stack_size = 100
  },
  {
    type = "recipe",
    name = "nullius-battery-3",
    enabled = false,
    always_show_made_in = true,
    always_show_products = true,
    category = "nanotechnology",
    energy_required = 30,
    ingredients = {
      {type="item", name="nullius-box-battery-2", amount=1},
      {type="item", name="nullius-box-copper-sheet", amount=2},
      {type="item", name="nullius-box-sodium-sulfate", amount=3},
      {type="item", name="nullius-antimatter", amount=1},
      {type="item", name="nullius-efficiency-module-3", amount=1}
    },
    result = "nullius-battery-3"
  },
  {
    type = "recipe",
    name = "nullius-battery-recharging-3",
    localised_name = {"recipe-name.nullius-battery-recharging-3"},
    icon = ICONPATH .. "uncharged3.png",
    icon_size = 64,
    icon_mipmaps = 4,
    enabled = false,
    always_show_products = true,
    no_productivity = true,
    category = "nullius-electrolysis",
    order = "nullius-ed",
    energy_required = 12,
    ingredients = {
      {"nullius-uncharged-battery-3", 1}
    },
    result = "nullius-battery-3"
  },

  {
    type = "item",
    name = "nullius-hangar-1",
    icons = {{
      icon = "__base__/graphics/icons/roboport.png",
      icon_size = 64,
      icon_mipmaps = 4,
      tint = {0.8, 0.6, 0.65}
    }},
    placed_as_equipment_result = "nullius-hangar-1",
    place_result = "nullius-hangar-1",
    subgroup = "hangar-2",
    order = "nullius-bb",
    stack_size = 20
  },
  {
    type = "item",
    name = "nullius-hangar-2",
    icons = {{
      icon = "__base__/graphics/icons/roboport.png",
      icon_size = 64,
      icon_mipmaps = 4,
      tint = {0.85, 0.9, 1}
    }},
    placed_as_equipment_result = "nullius-hangar-2",
    place_result = "nullius-hangar-2",
    subgroup = "hangar-2",
    order = "nullius-bc",
    stack_size = 20
  },
  {
    type = "item",
    name = "nullius-hangar-3",
    icons = {{
      icon = "__base__/graphics/icons/roboport.png",
      icon_size = 64,
      icon_mipmaps = 4,
      tint = {0.55, 0.7, 0.55}
    }},
    placed_as_equipment_result = "nullius-hangar-3",
    place_result = "nullius-hangar-3",
    subgroup = "hangar-2",
    order = "nullius-bd",
    stack_size = 20
  },
  {
    type = "item",
    name = "nullius-hangar-4",
    icons = {{
      icon = ICONPATH .. "hangar.png",
      icon_size = 64,
      tint = {0.55, 0.7, 0.55}
    }},
    placed_as_equipment_result = "nullius-hangar-4",
    place_result = "nullius-hangar-4",
    subgroup = "hangar-2",
    order = "nullius-be",
    stack_size = 20
  },
  {
    type = "recipe",
    name = "nullius-hangar-1",
    enabled = false,
    always_show_made_in = true,
    category = "large-crafting",
    energy_required = 6,
    ingredients = {
      {name="nullius-small-storage-chest-1", amount=2},
      {name="nullius-relay-1", amount=1},
      {name="nullius-charger-1", amount=1},
      {name="fast-transport-belt", amount=4},
      {name="train-stop", amount=1}
    },
    result = "nullius-hangar-1"
  },
  {
    type = "recipe",
    name = "nullius-hangar-2",
    enabled = false,
    always_show_made_in = true,
    category = "large-crafting",
    energy_required = 6,
    ingredients = {
      {name="nullius-hangar-1", amount=1},
      {name="nullius-large-storage-chest-1", amount=1},
      {name="nullius-relay-2", amount=1},
      {name="nullius-charger-2", amount=1},
      {name="fast-splitter", amount=2}
    },
    result = "nullius-hangar-2"
  },
  {
    type = "recipe",
    name = "nullius-hangar-3",
    enabled = false,
    always_show_made_in = true,
    category = "large-crafting",
    energy_required = 10,
    ingredients = {
      {name="nullius-hangar-2", amount=1},
      {name="nullius-large-buffer-chest-2", amount=1},
      {name="nullius-relay-3", amount=1},
      {name="nullius-charger-3", amount=1},
      {name="express-stack-filter-inserter", amount=2},
      {name="gate", amount=3}
    },
    result = "nullius-hangar-3"
  },
  {
    type = "recipe",
    name = "nullius-hangar-4",
    enabled = false,
    always_show_made_in = true,
    category = "nanotechnology",
    energy_required = 10,
    ingredients = {
      {name="nullius-hangar-3", amount=1},
      {name="nullius-yield-module-4", amount=1},
      {name="nullius-charger-4", amount=1}
    },
    result = "nullius-hangar-4"
  },

  {
    type = "item",
    name = "nullius-charger-1",
    icons = {{
      icon = "__boblogistics__/graphics/icons/roboport-chargepad.png",
      icon_size = 32
    }},
    placed_as_equipment_result = "nullius-charger-1",
    place_result = "nullius-charger-1",
    subgroup = "hangar-1",
    order = "nullius-cb",
    stack_size = 50
  },
  {
    type = "item",
    name = "nullius-charger-2",
    icons = {{
      icon = "__boblogistics__/graphics/icons/roboport-chargepad-2.png",
      icon_size = 32
    }},
    placed_as_equipment_result = "nullius-charger-2",
    place_result = "nullius-charger-2",
    subgroup = "hangar-1",
    order = "nullius-cc",
    stack_size = 50
  },
  {
    type = "item",
    name = "nullius-charger-3",
    icons = {{
      icon = "__boblogistics__/graphics/icons/roboport-chargepad-4.png",
      icon_size = 32
    }},
    placed_as_equipment_result = "nullius-charger-3",
    place_result = "nullius-charger-3",
    subgroup = "hangar-1",
    order = "nullius-cd",
    stack_size = 50
  },
  {
    type = "item",
    name = "nullius-charger-4",
    icons = {{
      icon = ICONPATH .. "charger.png",
      icon_size = 64
    }},
    placed_as_equipment_result = "nullius-charger-4",
    place_result = "nullius-charger-4",
    subgroup = "hangar-1",
    order = "nullius-ce",
    stack_size = 50
  },
  {
    type = "recipe",
    name = "nullius-charger-1",
    enabled = false,
    always_show_made_in = true,
    category = "medium-crafting",
    energy_required = 4,
    ingredients = {
      {"medium-electric-pole", 1},
      {"nullius-capacitor", 3},
      {"programmable-speaker", 1}
    },
    result = "nullius-charger-1"
  },
  {
    type = "recipe",
    name = "nullius-boxed-charger-1",
    enabled = false,
    always_show_made_in = true,
    category = "large-assembly",
    subgroup = "boxed-hangar",
    energy_required = 20,
    ingredients = {
      {"nullius-box-power-pole-2", 1},
      {"nullius-box-capacitor", 3},
      {"nullius-box-antenna", 1}
    },
    result = "nullius-box-charger-1"
  },
  {
    type = "recipe",
    name = "nullius-charger-2",
    enabled = false,
    always_show_made_in = true,
    category = "medium-crafting",
    energy_required = 5,
    ingredients = {
      {"nullius-charger-1", 1},
      {"nullius-grid-battery-1", 1},
      {"rail-signal", 3}
    },
    result = "nullius-charger-2"
  },
  {
    type = "recipe",
    name = "nullius-boxed-charger-2",
    enabled = false,
    always_show_made_in = true,
    category = "large-assembly",
    subgroup = "boxed-hangar",
    energy_required = 25,
    ingredients = {
      {"nullius-box-charger-1", 1},
      {"nullius-box-grid-battery-1", 1},
      {"nullius-box-rail-signal", 3}
    },
    result = "nullius-box-charger-2"
  },
  {
    type = "recipe",
    name = "nullius-charger-3",
    enabled = false,
    always_show_made_in = true,
    category = "medium-crafting",
    energy_required = 6,
    ingredients = {
      {"nullius-charger-2", 1},
      {"nullius-relay-2", 1},
      {"nullius-grid-battery-2", 1}
    },
    result = "nullius-charger-3"
  },
  {
    type = "recipe",
    name = "nullius-boxed-charger-3",
    enabled = false,
    always_show_made_in = true,
    category = "large-assembly",
    subgroup = "boxed-hangar",
    energy_required = 30,
    ingredients = {
      {"nullius-box-charger-2", 1},
      {"nullius-box-relay-2", 1},
      {"nullius-box-grid-battery-2", 1}
    },
    result = "nullius-box-charger-3"
  },
  {
    type = "recipe",
    name = "nullius-charger-4",
    enabled = false,
    always_show_made_in = true,
    category = "nanotechnology",
    energy_required = 6,
    ingredients = {
      {"nullius-charger-3", 1},
      {"nullius-substation-3", 1},
      {"nullius-copper-wire", 5},
      {"nullius-lithium", 2}
    },
    result = "nullius-charger-4"
  },
  {
    type = "recipe",
    name = "nullius-boxed-charger-4",
    enabled = false,
    always_show_made_in = true,
    category = "nanotechnology",
    subgroup = "boxed-hangar",
    energy_required = 30,
    ingredients = {
      {"nullius-box-charger-3", 1},
      {"nullius-substation-3", 5},
      {"nullius-box-copper-wire", 5},
      {"nullius-box-lithium", 2}
    },
    result = "nullius-box-charger-4"
  },

  {
    type = "item",
    name = "nullius-relay-1",
    icons = {{
      icon = "__boblogistics__/graphics/icons/logistic-zone-expander.png",
      icon_size = 32
    }},
    placed_as_equipment_result = "nullius-relay-1",
    place_result = "nullius-relay-1",
    subgroup = "hangar-1",
    order = "nullius-db",
    stack_size = 50
  },
  {
    type = "item",
    name = "nullius-relay-2",
    icons = {{
      icon = "__boblogistics__/graphics/icons/logistic-zone-expander-2.png",
      icon_size = 32
    }},
    placed_as_equipment_result = "nullius-relay-2",
    place_result = "nullius-relay-2",
    subgroup = "hangar-1",
    order = "nullius-dc",
    stack_size = 50
  },
  {
    type = "item",
    name = "nullius-relay-3",
    icons = {{
      icon = "__boblogistics__/graphics/icons/logistic-zone-expander-4.png",
      icon_size = 32
    }},
    placed_as_equipment_result = "nullius-relay-3",
    place_result = "nullius-relay-3",
    subgroup = "hangar-1",
    order = "nullius-dd",
    stack_size = 50
  },
  {
    type = "item",
    name = "nullius-relay-4",
    icons = {{
      icon = "__boblogistics__/graphics/icons/logistic-zone-expander-3.png",
      tint = {0.85, 1, 0.9},
      icon_size = 32
    }},
    placed_as_equipment_result = "nullius-relay-4",
    place_result = "nullius-relay-4",
    subgroup = "hangar-1",
    order = "nullius-de",
    stack_size = 50
  },
  {
    type = "recipe",
    name = "nullius-relay-1",
    enabled = false,
    always_show_made_in = true,
    category = "medium-crafting",
    energy_required = 4,
    ingredients = {
      {"programmable-speaker", 1},
      {"decider-combinator", 2},
      {"constant-combinator", 1},
      {"small-lamp", 1}
    },
    result = "nullius-relay-1"
  },
  {
    type = "recipe",
    name = "nullius-boxed-relay-1",
    enabled = false,
    always_show_made_in = true,
    category = "large-assembly",
    subgroup = "boxed-beacon",
    energy_required = 20,
    ingredients = {
      {"nullius-box-antenna", 1},
      {"nullius-box-logic-circuit", 2},
      {"nullius-box-memory-circuit", 1},
      {"nullius-box-lamp-1", 1}
    },
    result = "nullius-box-relay-1"
  },
  {
    type = "recipe",
    name = "nullius-relay-2",
    enabled = false,
    always_show_made_in = true,
    category = "medium-crafting",
    energy_required = 5,
    ingredients = {
      {"nullius-relay-1", 1},
      {"nullius-sensor-1", 2},
      {"nullius-transformer", 1},
      {"rail-chain-signal", 2}
    },
    result = "nullius-relay-2"
  },
  {
    type = "recipe",
    name = "nullius-boxed-relay-2",
    enabled = false,
    always_show_made_in = true,
    category = "large-assembly",
    subgroup = "boxed-beacon",
    energy_required = 25,
    ingredients = {
      {"nullius-box-relay-1", 1},
      {"nullius-box-sensor-1", 2},
      {"nullius-box-transformer", 1},
      {"nullius-box-chain-signal", 2}
    },
    result = "nullius-box-relay-2"
  },
  {
    type = "recipe",
    name = "nullius-relay-3",
    enabled = false,
    always_show_made_in = true,
    category = "medium-crafting",
    energy_required = 6,
    ingredients = {
      {"nullius-relay-2", 2},
      {"nullius-sensor-2", 2},
      {"nullius-power-pole-4", 1},
      {"nullius-lamp-2", 3},
      {"nullius-processor-2", 1}
    },
    result = "nullius-relay-3"
  },
  {
    type = "recipe",
    name = "nullius-boxed-relay-3",
    enabled = false,
    always_show_made_in = true,
    category = "large-assembly",
    subgroup = "boxed-beacon",
    energy_required = 30,
    ingredients = {
      {"nullius-box-relay-2", 2},
      {"nullius-box-sensor-2", 2},
      {"nullius-box-power-pole-4", 1},
      {"nullius-box-lamp-2", 3},
      {"nullius-box-processor-2", 1}
    },
    result = "nullius-box-relay-3"
  },
  {
    type = "recipe",
    name = "nullius-relay-4",
    enabled = false,
    category = "nanotechnology",
    energy_required = 8,
    ingredients = {
      {"nullius-box-relay-3", 1},
      {"nullius-box-copper-wire", 3},
      {"nullius-speed-module-4", 1}
    },
    result = "nullius-relay-4"
  },

  {
    type = "capsule",
    name = "nullius-self-repair-pack",
    icons = {{
      icon = "__base__/graphics/icons/repair-pack.png",
      icon_size = 64,
      icon_mipmaps = 4,
      tint = {1, 0.6, 0.8}
    }},
    subgroup = "armor",
    order = "nullius-mc",
    stack_size = 100,
    capsule_action = {
      type = "use-on-self",
      attack_parameters = {
        type = "projectile",
        ammo_category = "capsule",
        cooldown = 60,
        range = 0,
        ammo_type = {
          category = "capsule",
          target_type = "position",
          action = {
            type = "direct",
            action_delivery = {
              type = "instant",
              target_effects = {
                type = "damage",
                damage = {type = "physical", amount = -125}
              }
            }
          }
        }
      }
    }
  },
  {
    type = "recipe",
    name = "nullius-repair-pack",
    enabled = false,
    category = "small-crafting",
    always_show_made_in = true,
    energy_required = 4,
    ingredients = {
      {"decider-combinator", 1},
      {"inserter", 1},
      {"nullius-steel-gear", 1},
      {"nullius-plastic", 1},
      {"nullius-aluminum-carbide", 1}
    },
    result = "repair-pack"
  },
  {
    type = "recipe",
    name = "nullius-boxed-repair-pack",
    enabled = false,
    category = "large-assembly",
    subgroup = "boxed-demolition",
    always_show_made_in = true,
    energy_required = 20,
    ingredients = {
      {"nullius-box-logic-circuit", 1},
      {"nullius-box-inserter-1", 1},
      {"nullius-box-steel-gear", 1},
      {"nullius-box-plastic", 1},
      {"nullius-box-aluminum-carbide", 1}
    },
    result = "nullius-box-repair-pack"
  },
  {
    type = "recipe",
    name = "nullius-self-repair-pack",
    enabled = false,
    category = "small-crafting",
    always_show_made_in = true,
    energy_required = 5,
    ingredients = {
      {"repair-pack", 2},
      {"nullius-steel-plate", 2},
      {"nullius-rubber", 2}
    },
    result = "nullius-self-repair-pack",
    reult_count = 10
  },

  {
    type = "item",
    name = "nullius-levitation-field-1",
    localised_description = {"equipment-description.nullius-levitation-field"},
    icons = {{
      icon = "__base__/graphics/icons/belt-immunity-equipment.png",
      icon_size = 64,
      icon_mipmaps = 4
    }},
    placed_as_equipment_result = "nullius-levitation-field-1",
    subgroup = "equipment",
    order = "nullius-db",
    stack_size = 5
  },
  {
    type = "item",
    name = "nullius-levitation-field-2",
    localised_description = {"equipment-description.nullius-levitation-field"},
    icons = {{
      icon = ICONPATH .. "levitation2.png",
      icon_size = 64,
      icon_mipmaps = 4
    }},
    placed_as_equipment_result = "nullius-levitation-field-2",
    subgroup = "equipment",
    order = "nullius-dc",
    stack_size = 5
  },
  {
    type = "recipe",
    name = "nullius-levitation-field-1",
    enabled = false,
    category = "small-crafting",
    always_show_made_in = true,
    energy_required = 15,
    ingredients = {
      {"copper-cable", 10},
      {"nullius-plastic", 8},
      {"nullius-iron-rod", 6},
      {"nullius-sensor-1", 2},
      {"programmable-speaker", 3},
      {"nullius-capacitor", 4}
    },
    result = "nullius-levitation-field-1"
  },
  {
    type = "recipe",
    name = "nullius-levitation-field-2",
    enabled = false,
    category = "nanotechnology",
    always_show_made_in = true,
    energy_required = 20,
    ingredients = {
      {"nullius-levitation-field-1", 2},
      {"nullius-ceramic-powder", 2},
      {"nullius-carbon-composite", 3},
      {"nullius-battery-2", 1},
      {"nullius-transformer", 1},
      {"nullius-sensor-2", 1},
      {"nullius-processor-3", 1},
      {"nullius-copper-sheet", 4}
    },
    result = "nullius-levitation-field-2"
  },

  {
    type = "item",
    name = "nullius-night-vision-1",
    localised_description = {"equipment-description.nullius-night-vision-1"},
    icon = "__base__/graphics/equipment/night-vision-equipment.png",
    icon_size = 64,
    placed_as_equipment_result = "nullius-night-vision-1",
    subgroup = "equipment",
    order = "nullius-cb",
    default_request_amount = 1,
    stack_size = 5
  },
  {
    type = "item",
    name = "nullius-night-vision-2",
    localised_description = {"equipment-description.nullius-night-vision-2"},
    icon = ICONPATH .. "night-vision-2.png",
    icon_size = 64,
    placed_as_equipment_result = "nullius-night-vision-2",
    subgroup = "equipment",
    order = "nullius-cc",
    default_request_amount = 1,
    stack_size = 5
  },
  {
    type = "item",
    name = "nullius-night-vision-3",
    localised_description = {"equipment-description.nullius-night-vision-3"},
    icon = ICONPATH .. "night-vision-3.png",
    icon_size = 64,
    placed_as_equipment_result = "nullius-night-vision-3",
    subgroup = "equipment",
    order = "nullius-cd",
    default_request_amount = 1,
    stack_size = 5
  },

  {
    type = "recipe",
    name = "nullius-night-vision-1",
    enabled = false,
    category = "small-crafting",
    always_show_made_in = true,
    energy_required = 25,
    ingredients = {
      {"nullius-sensor-1", 2},
      {"nullius-glass", 2},
      {"nullius-aluminum-sheet", 2},
      {"nullius-capacitor", 2}
    },
    result = "nullius-night-vision-1"
  },
  {
    type = "recipe",
    name = "nullius-night-vision-2",
    enabled = false,
    category = "small-crafting",
    always_show_made_in = true,
    energy_required = 40,
    ingredients = {
      {"nullius-night-vision-1", 1},
      {"nullius-sensor-2", 2},
      {"nullius-hard-glass", 2}
    },
    result = "nullius-night-vision-2"
  },
  {
    type = "recipe",
    name = "nullius-night-vision-3",
    enabled = false,
    always_show_made_in = true,
    category = "small-crafting",
    energy_required = 60,
    ingredients = {
      {"nullius-night-vision-2", 2},
      {"nullius-yield-module-3", 1},
      {"nullius-graphene", 2},
      {"nullius-battery-2", 1}
    },
    result = "nullius-night-vision-3"
  },

  {
    type = "item",
    name = "nullius-leg-augmentation-1",
    localised_description = {"equipment-description.nullius-leg-augmentation-1"},
    icons = {{
      icon = "__base__/graphics/icons/exoskeleton-equipment.png",
      icon_size = 64,
      icon_mipmaps = 4,
      tint = {0.75, 0.75, 0.6}
    }},
    placed_as_equipment_result = "nullius-leg-augmentation-1",
    subgroup = "equipment",
    order = "nullius-bb",
    stack_size = 5
  },
  {
    type = "recipe",
    name = "nullius-leg-augmentation-1",
    enabled = false,
    category = "medium-crafting",
    always_show_made_in = true,
    energy_required = 15,
    ingredients = {
      {"stack-inserter", 4},
      {"nullius-sensor-2", 2},
      {"nullius-motor-2", 6},
      {"nullius-titanium-rod", 6},
      {"nullius-steel-gear", 4},
      {"nullius-battery-1", 2}
    },
    result = "nullius-leg-augmentation-1"
  },

  {
    type = "item",
    name = "nullius-leg-augmentation-2",
    localised_description = {"equipment-description.nullius-leg-augmentation-2"},
    icons = {{
      icon = "__base__/graphics/icons/exoskeleton-equipment.png",
      icon_size = 64,
      icon_mipmaps = 4,
      tint = {0.8, 0.8, 0.95}
    }},
    placed_as_equipment_result = "nullius-leg-augmentation-2",
    subgroup = "equipment",
    order = "nullius-bc",
    stack_size = 5
  },
  {
    type = "recipe",
    name = "nullius-leg-augmentation-2",
    enabled = false,
    always_show_made_in = true,
    category = "medium-crafting",
    energy_required = 30,
    ingredients = {
      {"nullius-leg-augmentation-1", 2},
      {"express-stack-filter-inserter", 4},
      {"nullius-motor-3", 5},
      {"nullius-carbon-composite", 6},
      {"nullius-levitation-field-1", 1},
      {"nullius-battery-2", 3},
      {"nullius-speed-module-3", 1}
    },
    result = "nullius-leg-augmentation-2"
  },

  {
    type = "item",
    name = "nullius-leg-augmentation-3",
    localised_description = {"equipment-description.nullius-leg-augmentation-3"},
    icons = {{
      icon = "__base__/graphics/icons/exoskeleton-equipment.png",
      icon_size = 64,
      icon_mipmaps = 4
    }},
    placed_as_equipment_result = "nullius-leg-augmentation-3",
    subgroup = "equipment",
    order = "nullius-bd",
    stack_size = 5
  },
  {
    type = "recipe",
    name = "nullius-leg-augmentation-3",
    enabled = false,
    always_show_made_in = true,
    category = "small-fluid-assembly",
    energy_required = 60,
    ingredients = {
      {type="item", name="nullius-leg-augmentation-2", amount=2},
      {type="item", name="nullius-pipe-4", amount=4},
      {type="item", name="nullius-small-pump-2", amount=2},
      {type="item", name="nullius-rubber", amount=8},
      {type="item", name="nullius-speed-module-4", amount=1},
      {type="fluid", name="nullius-compressed-argon", amount=100},
      {type="fluid", name="nullius-lubricant", amount=40}
    },
    result = "nullius-leg-augmentation-3"
  },

  {
    type = "item",
    name = "nullius-leg-augmentation-4",
    localised_description = {"equipment-description.nullius-leg-augmentation-4"},
    icons = {{
      icon = ICONPATH .. "legs.png",
      icon_size = 64
    }},
    placed_as_equipment_result = "nullius-leg-augmentation-4",
    subgroup = "equipment",
    order = "nullius-be",
    stack_size = 5
  },
  {
    type = "recipe",
    name = "nullius-leg-augmentation-4",
    enabled = false,
    always_show_made_in = true,
    category = "nanotechnology",
    energy_required = 60,
    ingredients = {
      {type="item", name="nullius-leg-augmentation-3", amount=2},
      {type="item", name="nullius-robot-frame-4", amount=1},
      {type="item", name="nullius-levitation-field-2", amount=1},
      {type="item", name="nullius-productivity-module-3", amount=1},
      {type="item", name="nullius-graphene", amount=4}
    },
    result = "nullius-leg-augmentation-4"
  },

  {
    type = "item",
    name = "nullius-shield",
    localised_description = {"equipment-description.nullius-shield"},
    icons = {{
      icon = "__base__/graphics/icons/energy-shield-equipment.png",
      icon_size = 64,
      icon_mipmaps = 4
    }},
    placed_as_equipment_result = "nullius-shield",
    subgroup = "equipment",
    order = "nullius-e",
    stack_size = 10
  },
  {
    type = "recipe",
    name = "nullius-shield",
    enabled = false,
    category = "small-crafting",
    always_show_made_in = true,
    energy_required = 20,
    ingredients = {
      {"nullius-antimatter", 3},
      {"nullius-levitation-field-2", 2},
      {"nullius-beacon-3", 1}
    },
    result = "nullius-shield"
  },

  {
    type = "item-with-entity-data",
    name = "nullius-locomotive-1",
    icons = {{
      icon = ICONPATH .. "locomotive1.png",
      icon_size = 64,
      icon_mipmaps = 4
    }},
    subgroup = "train-wagon",
    order = "nullius-bb",
    place_result = "nullius-locomotive-1",
    stack_size = 5
  },
  {
    type = "item-with-entity-data",
    name = "nullius-locomotive-2",
    icons = {{
      icon = "__base__/graphics/icons/locomotive.png",
      icon_size = 64,
      icon_mipmaps = 4
    }},
    subgroup = "train-wagon",
    order = "nullius-bc",
    place_result = "nullius-locomotive-2",
    stack_size = 5
  },
  {
    type = "item-with-entity-data",
    name = "nullius-locomotive-3",
    icons = {{
      icon = ICONPATH .. "locomotive3.png",
      icon_size = 64,
      icon_mipmaps = 4
    }},
    subgroup = "train-wagon",
    order = "nullius-bd",
    place_result = "nullius-locomotive-3",
    stack_size = 5
  },
  {
    type = "item-with-entity-data",
    name = "nullius-solar-locomotive",
    icons = {{
      icon = ICONPATH .. "locomotive4.png",
      icon_size = 64,
      icon_mipmaps = 4
    }},
    subgroup = "train-wagon",
    order = "nullius-be",
    place_result = "nullius-solar-locomotive",
    stack_size = 5
  },
  {
    type = "recipe",
    name = "nullius-locomotive-1",
    enabled = false,
    category = "large-crafting",
    always_show_made_in = true,
    energy_required = 10,
    ingredients = {
      {"nullius-cargo-wagon-1", 1},
      {"nullius-combustion-chamber-1", 1},
      {"nullius-backup-turbine-1", 1},
      {"nullius-motor-1", 4},
      {"nullius-steel-gear", 10},
      {"nullius-glass", 3}
    },
    result = "nullius-locomotive-1"
  },
  {
    type = "recipe",
    name = "nullius-locomotive-2",
    enabled = false,
    category = "huge-crafting",
    always_show_made_in = true,
    energy_required = 10,
    ingredients = {
      {"nullius-locomotive-1", 1},
      {"nullius-cargo-wagon-2", 1},
      {"nullius-combustion-chamber-2", 1},
      {"nullius-standard-turbine-2", 1},
      {"nullius-motor-2", 4},
      {"nullius-sensor-1", 1}
    },
    result = "nullius-locomotive-2"
  },
  {
    type = "recipe",
    name = "nullius-locomotive-3",
    enabled = false,
    always_show_made_in = true,
    category = "huge-crafting",
    energy_required = 15,
    ingredients = {
      {"nullius-locomotive-2", 1},
      {"nullius-combustion-chamber-3", 1},
      {"nullius-standard-turbine-3", 1},
      {"nullius-motor-3", 4},
      {"nullius-speed-module-2", 1}
    },
    result = "nullius-locomotive-3"
  },
  {
    type = "recipe",
    name = "nullius-solar-locomotive",
    enabled = false,
    always_show_made_in = true,
    category = "huge-crafting",
    energy_required = 15,
    ingredients = {
      {"nullius-locomotive-2", 1},
      {"nullius-solar-panel-2", 8},
      {"nullius-grid-battery-2", 2},
      {"nullius-motor-3", 2},
      {"nullius-efficiency-module-2", 1}
    },
    result = "nullius-solar-locomotive"
  },

  {
    type = "item-with-entity-data",
    name = "nullius-cargo-wagon-1",
    icons = {{
      icon = "__base__/graphics/icons/cargo-wagon.png",
      icon_size = 64,
      icon_mipmaps = 4,
      tint = {0.9, 0.9, 0.7}
    }},
    subgroup = "train-wagon",
    order = "nullius-cb",
    place_result = "nullius-cargo-wagon-1",
    stack_size = 5
  },
  {
    type = "item-with-entity-data",
    name = "nullius-cargo-wagon-2",
    icons = {{
      icon = "__base__/graphics/icons/cargo-wagon.png",
      icon_size = 64,
      icon_mipmaps = 4,
      tint = {1, 0.85, 0.85}
    }},
    subgroup = "train-wagon",
    order = "nullius-cc",
    place_result = "nullius-cargo-wagon-2",
    stack_size = 5
  },
  {
    type = "item-with-entity-data",
    name = "nullius-cargo-wagon-3",
    icons = {{
      icon = "__base__/graphics/icons/cargo-wagon.png",
      icon_size = 64,
      icon_mipmaps = 4
    }},
    subgroup = "train-wagon",
    order = "nullius-cd",
    place_result = "nullius-cargo-wagon-3",
    stack_size = 5
  },
  {
    type = "recipe",
    name = "nullius-cargo-wagon-1",
    enabled = false,
    category = "large-crafting",
    always_show_made_in = true,
    energy_required = 5,
    ingredients = {
      {"iron-chest", 3},
      {"nullius-steel-beam", 4},
      {"nullius-steel-plate", 5},
      {"nullius-steel-rod", 3},
      {"nullius-graphite", 2}
    },
    result = "nullius-cargo-wagon-1"
  },
  {
    type = "recipe",
    name = "nullius-cargo-wagon-2",
    enabled = false,
    category = "large-fluid-assembly",
    always_show_made_in = true,
    energy_required = 6,
    ingredients = {
      {type="item", name="nullius-cargo-wagon-1", amount=1},
      {type="item", name="nullius-large-chest-1", amount=3},
      {type="item", name="nullius-steel-cable", amount=2},
      {type="item", name="nullius-bearing", amount=8},
      {type="item", name="nullius-sensor-1", amount=1},
      {type="fluid", name="nullius-lubricant", amount=20, fluidbox_index=1}
    },
    result = "nullius-cargo-wagon-2"
  },
  {
    type = "recipe",
    name = "nullius-cargo-wagon-3",
    enabled = false,
    category = "large-crafting",
    always_show_made_in = true,
    energy_required = 8,
    ingredients = {
      {type="item", name="nullius-cargo-wagon-2", amount=2},
      {type="item", name="nullius-large-storage-chest-2", amount=2},
      {type="item", name="nullius-carbon-composite", amount=8},
      {type="item", name="nullius-logistic-bot-3", amount=1}
    },
    result = "nullius-cargo-wagon-3"
  },

  {
    type = "item-with-entity-data",
    name = "nullius-fluid-wagon-1",
    icons = {{
      icon = "__base__/graphics/icons/fluid-wagon.png",
      icon_size = 64,
      icon_mipmaps = 4,
      tint = {0.9, 0.9, 0.7}
    }},
    subgroup = "train-wagon",
    order = "nullius-db",
    place_result = "nullius-fluid-wagon-1",
    stack_size = 5
  },
  {
    type = "item-with-entity-data",
    name = "nullius-fluid-wagon-2",
    icons = {{
      icon = "__base__/graphics/icons/fluid-wagon.png",
      icon_size = 64,
      icon_mipmaps = 4,
      tint = {1, 0.85, 0.85}
    }},
    subgroup = "train-wagon",
    order = "nullius-dc",
    place_result = "nullius-fluid-wagon-2",
    stack_size = 5
  },
  {
    type = "item-with-entity-data",
    name = "nullius-fluid-wagon-3",
    icons = {{
      icon = "__base__/graphics/icons/fluid-wagon.png",
      icon_size = 64,
      icon_mipmaps = 4
    }},
    subgroup = "train-wagon",
    order = "nullius-dd",
    place_result = "nullius-fluid-wagon-3",
    stack_size = 5
  },
  {
    type = "recipe",
    name = "nullius-fluid-wagon-1",
    enabled = false,
    category = "large-crafting",
    always_show_made_in = true,
    energy_required = 5,
    ingredients = {
      {"nullius-cargo-wagon-1", 1},
      {"nullius-small-tank-1", 3}
    },
    result = "nullius-fluid-wagon-1"
  },
  {
    type = "recipe",
    name = "nullius-fluid-wagon-2",
    enabled = false,
    category = "large-crafting",
    always_show_made_in = true,
    energy_required = 6,
    ingredients = {
      {"nullius-fluid-wagon-1", 1},
      {"nullius-cargo-wagon-2", 1},
      {"nullius-small-tank-2", 3}
    },
    result = "nullius-fluid-wagon-2"
  },
  {
    type = "recipe",
    name = "nullius-fluid-wagon-3",
    enabled = false,
    always_show_made_in = true,
    category = "large-crafting",
    energy_required = 8,
    ingredients = {
      {"nullius-fluid-wagon-2", 1},
      {"nullius-large-tank-2", 1},
      {"nullius-box-steel-cable", 1}
    },
    result = "nullius-fluid-wagon-3"
  },

  {
    type = "item",
    name = "nullius-construction-bot-1",
    icons = {{
      icon = "__boblogistics__/graphics/icons/robots/construction-robot-1.png",
      icon_size = 32
    }},
    subgroup = "robot",
    order = "nullius-bb",
    place_result = "nullius-construction-bot-1",
    stack_size = 50
  },
  {
    type = "item",
    name = "nullius-construction-bot-2",
    icons = {{
      icon = "__boblogistics__/graphics/icons/robots/construction-robot-2.png",
      icon_size = 32
    }},
    subgroup = "robot",
    order = "nullius-bc",
    place_result = "nullius-construction-bot-2",
    stack_size = 50
  },
  {
    type = "item",
    name = "nullius-construction-bot-3",
    icons = {{
      icon = "__boblogistics__/graphics/icons/robots/construction-robot-3.png",
      icon_size = 32
    }},
    subgroup = "robot",
    order = "nullius-bd",
    place_result = "nullius-construction-bot-3",
    stack_size = 50
  },
  {
    type = "item",
    name = "nullius-construction-bot-4",
    icons = {{
      icon = "__boblogistics__/graphics/icons/robots/construction-robot-5.png",
      icon_size = 32
    }},
    subgroup = "robot",
    order = "nullius-be",
    place_result = "nullius-construction-bot-4",
    stack_size = 50
  },
  {
    type = "recipe",
    name = "nullius-construction-bot-1",
    enabled = false,
    always_show_made_in = true,
    category = "tiny-crafting",
    energy_required = 5,
    ingredients = {
      {"nullius-robot-frame-1", 1},
      {"decider-combinator", 1},
      {"repair-pack", 1}
    },
    result = "nullius-construction-bot-1"
  },
  {
    type = "recipe",
    name = "nullius-boxed-construction-bot-1",
    enabled = false,
    always_show_made_in = true,
    category = "medium-only-assembly",
    subgroup = "boxed-robot",
    energy_required = 25,
    ingredients = {
      {"nullius-box-robot-frame-1", 1},
      {"nullius-box-logic-circuit", 1},
      {"nullius-box-repair-pack", 1}
    },
    result = "nullius-box-construction-bot-1"
  },
  {
    type = "recipe",
    name = "nullius-construction-bot-2",
    enabled = false,
    always_show_made_in = true,
    category = "tiny-crafting",
    energy_required = 6,
    ingredients = {
      {"nullius-construction-bot-1", 1},
      {"nullius-robot-frame-2", 1},
      {"nullius-yield-module-1", 1}
    },
    result = "nullius-construction-bot-2"
  },
  {
    type = "recipe",
    name = "nullius-boxed-construction-bot-2",
    enabled = false,
    always_show_made_in = true,
    category = "medium-only-assembly",
    subgroup = "boxed-robot",
    energy_required = 30,
    ingredients = {
      {"nullius-box-construction-bot-1", 1},
      {"nullius-box-robot-frame-2", 1},
      {"nullius-box-yield-module-1", 1}
    },
    result = "nullius-box-construction-bot-2"
  },
  {
    type = "recipe",
    name = "nullius-construction-bot-3",
    enabled = false,
    always_show_made_in = true,
    category = "tiny-crafting",
    energy_required = 8,
    ingredients = {
      {"nullius-construction-bot-2", 2},
      {"nullius-robot-frame-3", 1},
      {"nullius-productivity-module-1", 1},
      {"nullius-small-miner-3", 1}
    },
    result = "nullius-construction-bot-3"
  },
  {
    type = "recipe",
    name = "nullius-boxed-construction-bot-3",
    enabled = false,
    always_show_made_in = true,
    category = "medium-only-assembly",
    subgroup = "boxed-robot",
    energy_required = 40,
    ingredients = {
      {"nullius-box-construction-bot-2", 2},
      {"nullius-box-robot-frame-3", 1},
      {"nullius-box-productivity-module-1", 1},
      {"nullius-small-miner-3", 5}
    },
    result = "nullius-box-construction-bot-3"
  },
  {
    type = "recipe",
    name = "nullius-construction-bot-4",
    enabled = false,
    always_show_made_in = true,
    show_amount_in_title = false,
    always_show_products = true,
    category = "tiny-crafting",
    energy_required = 25,
    ingredients = {
      {"nullius-construction-bot-3", 3},
      {"nullius-robot-frame-4", 2},
      {"nullius-productivity-module-3", 1}
    },
    result = "nullius-construction-bot-4",
    result_count = 2
  },
  {
    type = "recipe",
    name = "nullius-boxed-construction-bot-4",
    enabled = false,
    always_show_made_in = true,
    show_amount_in_title = false,
    always_show_products = true,
    category = "medium-only-assembly",
    subgroup = "boxed-robot",
    energy_required = 125,
    ingredients = {
      {"nullius-box-construction-bot-3", 3},
      {"nullius-box-robot-frame-4", 2},
      {"nullius-box-productivity-module-3", 1}
    },
    result = "nullius-box-construction-bot-4",
    result_count = 2
  },

  {
    type = "item",
    name = "nullius-logistic-bot-1",
    icons = {{
      icon = "__boblogistics__/graphics/icons/robots/logistic-robot-1.png",
      icon_size = 32
    }},
    subgroup = "robot",
    order = "nullius-cb",
    place_result = "nullius-logistic-bot-1",
    stack_size = 50
  },
  {
    type = "item",
    name = "nullius-logistic-bot-2",
    icons = {{
      icon = "__boblogistics__/graphics/icons/robots/logistic-robot-2.png",
      icon_size = 32
    }},
    subgroup = "robot",
    order = "nullius-cc",
    place_result = "nullius-logistic-bot-2",
    stack_size = 50
  },
  {
    type = "item",
    name = "nullius-logistic-bot-3",
    icons = {{
      icon = "__boblogistics__/graphics/icons/robots/logistic-robot-3.png",
      icon_size = 32
    }},
    subgroup = "robot",
    order = "nullius-cd",
    place_result = "nullius-logistic-bot-3",
    stack_size = 50
  },
  {
    type = "item",
    name = "nullius-logistic-bot-4",
    icons = {{
      icon = "__boblogistics__/graphics/icons/robots/logistic-robot-5.png",
      icon_size = 32
    }},
    subgroup = "robot",
    order = "nullius-ce",
    place_result = "nullius-logistic-bot-4",
    stack_size = 50
  },
  {
    type = "recipe",
    name = "nullius-logistic-bot-1",
    enabled = false,
    always_show_made_in = true,
    category = "tiny-crafting",
    energy_required = 5,
    ingredients = {
      {"nullius-robot-frame-1", 1},
      {"arithmetic-combinator", 1},
      {"nullius-small-storage-chest-1", 1}
    },
    result = "nullius-logistic-bot-1"
  },
  {
    type = "recipe",
    name = "nullius-boxed-logistic-bot-1",
    enabled = false,
    always_show_made_in = true,
    category = "medium-only-assembly",
    subgroup = "boxed-robot",
    energy_required = 25,
    ingredients = {
      {"nullius-box-robot-frame-1", 1},
      {"nullius-box-arithmetic-circuit", 1},
      {"nullius-small-storage-chest-1", 5}
    },
    result = "nullius-box-logistic-bot-1"
  },
  {
    type = "recipe",
    name = "nullius-logistic-bot-2",
    enabled = false,
    always_show_made_in = true,
    category = "tiny-crafting",
    energy_required = 6,
    ingredients = {
      {"nullius-logistic-bot-1", 1},
      {"nullius-robot-frame-2", 1},
      {"nullius-efficiency-module-1", 1}
    },
    result = "nullius-logistic-bot-2"
  },
  {
    type = "recipe",
    name = "nullius-boxed-logistic-bot-2",
    enabled = false,
    always_show_made_in = true,
    category = "medium-only-assembly",
    subgroup = "boxed-robot",
    energy_required = 30,
    ingredients = {
      {"nullius-box-logistic-bot-1", 1},
      {"nullius-box-robot-frame-2", 1},
      {"nullius-box-efficiency-module-1", 1}
    },
    result = "nullius-box-logistic-bot-2"
  },
  {
    type = "recipe",
    name = "nullius-logistic-bot-3",
    enabled = false,
    always_show_made_in = true,
    category = "tiny-crafting",
    energy_required = 8,
    ingredients = {
      {"nullius-logistic-bot-2", 2},
      {"nullius-robot-frame-3", 1},
      {"nullius-speed-module-2", 1},
      {"logistic-chest-buffer", 1}
    },
    result = "nullius-logistic-bot-3"
  },
  {
    type = "recipe",
    name = "nullius-boxed-logistic-bot-3",
    enabled = false,
    always_show_made_in = true,
    category = "medium-only-assembly",
    subgroup = "boxed-robot",
    energy_required = 40,
    ingredients = {
      {"nullius-box-logistic-bot-2", 2},
      {"nullius-box-robot-frame-3", 1},
      {"nullius-box-speed-module-2", 1},
      {"logistic-chest-buffer", 5}
    },
    result = "nullius-box-logistic-bot-3"
  },
  {
    type = "recipe",
    name = "nullius-logistic-bot-4",
    enabled = false,
    always_show_made_in = true,
    show_amount_in_title = false,
    always_show_products = true,
    category = "tiny-crafting",
    energy_required = 25,
    ingredients = {
      {"nullius-logistic-bot-3", 3},
      {"nullius-robot-frame-4", 2},
      {"nullius-speed-module-4", 1}
    },
    result = "nullius-logistic-bot-4",
    result_count = 2
  },
  {
    type = "recipe",
    name = "nullius-boxed-logistic-bot-4",
    enabled = false,
    always_show_made_in = true,
    show_amount_in_title = false,
    always_show_products = true,
    category = "medium-only-assembly",
    subgroup = "boxed-robot",
    energy_required = 125,
    ingredients = {
      {"nullius-box-logistic-bot-3", 3},
      {"nullius-box-robot-frame-4", 2},
      {"nullius-box-speed-module-4", 1}
    },
    result = "nullius-box-logistic-bot-4",
    result_count = 2
  },

  {
    type = "item-with-entity-data",
    name = "nullius-car-1",
    icons = {{
      icon = "__base__/graphics/icons/car.png",
      icon_size = 64,
      icon_mipmaps = 4,
      tint = {0.75, 0.75, 0.6}
    }},
    subgroup = "vehicle",
    order = "nullius-bb",
    place_result = "nullius-car-1",
    stack_size = 1
  },
  {
    type = "item-with-entity-data",
    name = "nullius-car-2",
    icons = {{
      icon = "__base__/graphics/icons/car.png",
      icon_size = 64,
      icon_mipmaps = 4,
      tint = {1, 0.8, 0.9}
    }},
    subgroup = "vehicle",
    order = "nullius-bc",
    place_result = "nullius-car-2",
    stack_size = 1
  },
  {
    type = "item-with-entity-data",
    name = "nullius-car-3",
    icons = {{
      icon = "__base__/graphics/icons/car.png",
      icon_size = 64,
      icon_mipmaps = 4,
      tint = {0.65, 0.75, 1}
    }},
    subgroup = "vehicle",
    order = "nullius-bd",
    place_result = "nullius-car-3",
    stack_size = 1
  },
  {
    type = "item-with-entity-data",
    name = "nullius-truck-1",
    icons = {{
      icon = "__base__/graphics/icons/tank.png",
      icon_size = 64,
      icon_mipmaps = 4
    }},
    subgroup = "vehicle",
    order = "nullius-cb",
    place_result = "nullius-truck-1",
    stack_size = 1
  },
  {
    type = "item-with-entity-data",
    name = "nullius-truck-2",
    icons = {{
      icon = "__base__/graphics/icons/tank.png",
      icon_size = 64,
      icon_mipmaps = 4,
      tint = {0.6, 0.6, 0.85}
    }},
    subgroup = "vehicle",
    order = "nullius-cb",
    place_result = "nullius-truck-2",
    stack_size = 1
  },

  {
    type = "recipe",
    name = "nullius-car-1",
    enabled = false,
    category = "large-fluid-assembly",
    energy_required = 8,
    ingredients = {
      {type="item", name="nullius-locomotive-1", amount=1},
      {type="item", name="small-lamp", amount=2},
      {type="item", name="nullius-rubber", amount=4},
      {type="item", name="nullius-iron-wire", amount=4},
      {type="fluid", name="nullius-air", amount=15, fluidbox_index=1}
    },
    result = "nullius-car-1"
  },
  {
    type = "recipe",
    name = "nullius-car-2",
    enabled = false,
    always_show_made_in = true,
    category = "large-crafting",
    energy_required = 12,
    ingredients = {
      {type="item", name="nullius-car-1", amount=1},
      {type="item", name="nullius-locomotive-2", amount=1},
      {type="item", name="nullius-lamp-2", amount=2},
      {type="item", name="nullius-textile", amount=3},
      {type="item", name="nullius-battery-1", amount=4},
      {type="item", name="nullius-gun", amount=2}
    },
    result = "nullius-car-2"
  },
  {
    type = "recipe",
    name = "nullius-car-3",
    enabled = false,
    always_show_made_in = true,
    category = "large-crafting",
    energy_required = 20,
    ingredients = {
      {type="item", name="nullius-car-2", amount=1},
      {type="item", name="nullius-solar-locomotive", amount=1},
      {type="item", name="nullius-missile-launcher", amount=2}
    },
    result = "nullius-car-3"
  },
  {
    type = "recipe",
    name = "nullius-truck-1",
    enabled = false,
    category = "huge-fluid-assembly",
    energy_required = 15,
    ingredients = {
      {type="item", name="nullius-car-2", amount=2},
      {type="item", name="nullius-steel-beam", amount=12},
      {type="item", name="nullius-steel-plate", amount=25},
      {type="item", name="nullius-missile-launcher", amount=3},
      {type="item", name="nullius-rubber", amount=8},
      {type="fluid", name="nullius-compressed-air", amount=40, fluidbox_index=1}
    },
    result = "nullius-truck-1"
  },
  {
    type = "recipe",
    name = "nullius-truck-2",
    enabled = false,
    category = "huge-crafting",
    energy_required = 30,
    ingredients = {
      {type="item", name="nullius-truck-1", amount=1},
      {type="item", name="nullius-locomotive-3", amount=1},
      {type="item", name="nullius-reactor", amount=1}
    },
    result = "nullius-truck-2"
  },

  {
    type = "item-with-entity-data",
    name = "nullius-mecha",
    icons = {{
      icon = "__base__/graphics/icons/spidertron.png",
      icon_size = 64,
      icon_mipmaps = 4
    }},
    subgroup = "vehicle",
    order = "nullius-db",
    place_result = "nullius-mecha",
    stack_size = 1
  },
  {
    type = "item-with-entity-data",
    name = "nullius-mecha-2",
    icons = {{
      icon = "__base__/graphics/icons/spidertron-tintable.png",
      icon_size = 64,
      icon_mipmaps = 4
    }},
    subgroup = "vehicle",
    order = "nullius-dc",
    place_result = "nullius-mecha-2",
    stack_size = 1
  },
  {
    type = "recipe",
    name = "nullius-mecha",
    enabled = false,
    category = "huge-crafting",
    energy_required = 120,
    ingredients = {
      {type="item", name="nullius-car-3", amount=1},
      {type="item", name="nullius-drone-launcher-2", amount=2},
      {type="item", name="nullius-solar-panel-2", amount=32},
      {type="item", name="nullius-grid-battery-2", amount=8},
      {type="item", name="nullius-leg-augmentation-2", amount=8},
      {type="item", name="nullius-efficiency-module-3", amount=4}
    },
    result = "nullius-mecha"
  },
  {
    type = "recipe",
    name = "nullius-mecha-2",
    enabled = false,
    category = "huge-assembly",
    energy_required = 600,
    ingredients = {
      {type="item", name="nullius-mecha", amount=2},
      {type="item", name="nullius-leg-augmentation-4", amount=8},
      {type="item", name="nullius-solar-panel-4", amount=8},
      {type="item", name="nullius-grid-battery-3", amount=4}
    },
    result = "nullius-mecha-2"
  },

  {
    type = "spidertron-remote",
    name = "nullius-mecha-remote",
    icon = "__base__/graphics/icons/spidertron-remote.png",
    icon_color_indicator_mask = "__base__/graphics/icons/spidertron-remote-mask.png",
    icon_size = 64,
    icon_mipmaps = 4,
    subgroup = "vehicle",
    order = "nullius-df",
    stack_size = 1
  },
  {
    type = "recipe",
    name = "nullius-mecha-remote",
    enabled = false,
    always_show_made_in = true,
    no_productivity = true,
    category = "tiny-crafting",
    energy_required = 20,
    ingredients = {
      {"nullius-scout-remote", 1},
      {"nullius-processor-2", 1}
    },
    result = "nullius-mecha-remote"
  },

  {
    type = "item",
    name = "nullius-rocket",
    icon = "__base__/graphics/icons/rocket.png",
    icon_size = 64,
    icon_mipmaps = 4,
    subgroup = "space",
    order = "nullius-c",
    stack_size = 1
  },
  {
    type = "recipe",
    name = "nullius-rocket",
    enabled = false,
    always_show_made_in = true,
    category = "rocketry",
    energy_required = 400,
    ingredients = {
      {"nullius-box-rocket-fuel", 50},
      {"nullius-box-carbon-composite", 40},
      {"nullius-box-titanium-sheet", 25},
      {"nullius-haste-module-3", 3},
      {"nullius-sensor-node-2", 4},
      {"nullius-box-steel-beam", 20},
      {"nullius-box-heat-pipe-3", 10},
      {"nullius-box-insulation", 12},
      {"nullius-box-ceramic-powder", 20},
      {"nullius-box-logistic-bot-2", 2},
      {"nullius-box-gate", 1}
    },
    result = "nullius-rocket"
  },

  {
    type = "item",
    name = "nullius-satellite",
    icon = "__base__/graphics/icons/satellite.png",
    icon_size = 64,
    icon_mipmaps = 4,
    subgroup = "space",
    order = "nullius-d",
    stack_size = 1,
    rocket_launch_product = {"nullius-box-astronomy-pack", 50}
  },
  {
    type = "recipe",
    name = "nullius-satellite",
    enabled = false,
    always_show_made_in = true,
    category = "huge-crafting",
    energy_required = 120,
    ingredients = {
      {"nullius-box-rocket-fuel", 10},
      {"nullius-box-carbon-composite", 8},
      {"nullius-box-aluminum-sheet", 5},
      {"nullius-efficiency-module-3", 3},
      {"nullius-lab-2", 4},
      {"nullius-beacon-3", 3},
      {"nullius-box-solar-panel-2", 3},
      {"nullius-box-grid-battery-2", 1}
    },
    result = "nullius-satellite"
  },

  {
    type = "item",
    name = "nullius-probe",
    icon = "__base__/graphics/icons/crash-site-spaceship.png",
    icon_size = 64,
    icon_mipmaps = 4,
    subgroup = "space",
    order = "nullius-l",
    stack_size = 1,
    rocket_launch_products = {
      {"nullius-box-astronomy-pack", 300},
      {"nullius-box-physics-pack", 75},
      {"nullius-box-chemical-pack", 75},
      {"nullius-box-electrical-pack", 75}
    }
  },
  {
    type = "recipe",
    name = "nullius-probe",
    enabled = false,
    always_show_made_in = true,
    category = "huge-crafting",
    energy_required = 400,
    ingredients = {
      {"nullius-asteroid-miner-1", 1},
      {"nullius-satellite", 2},
      {"nullius-antimatter", 25},
      {"nullius-box-copper-sheet", 10},
      {"nullius-android-2", 1},
      {"nullius-nanofabricator-2", 1},
      {"nullius-reactor", 1}
    },
    result = "nullius-probe"
  }
})


if mods["reskins-bobs"] then
data.raw.item["nullius-solar-panel-1"].icons = {
  {
    icon = "__reskins-bobs__/graphics/icons/power/solar-panel/solar-panel-icon-base.png",
    icon_size = 64, icon_mipmaps = 4
  },
  {
    icon = "__reskins-bobs__/graphics/icons/power/solar-panel/solar-panel-icon-mask.png",
    icon_size = 64, icon_mipmaps = 4,
    tint = tiercolor("yellow")
  },
  {
    icon = "__reskins-bobs__/graphics/icons/power/solar-panel/solar-panel-icon-highlights.png",
    icon_size = 64, icon_mipmaps = 4, tint = {1, 1, 1, 0}
  }
}
data.raw.item["nullius-solar-panel-2"].icons =
    util.table.deepcopy(data.raw.item["nullius-solar-panel-1"].icons)
data.raw.item["nullius-solar-panel-2"].icons[2].tint = tiercolor("red")
data.raw.item["nullius-solar-panel-3"].icons =
    util.table.deepcopy(data.raw.item["nullius-solar-panel-1"].icons)
data.raw.item["nullius-solar-panel-3"].icons[2].tint = tiercolor("blue")
data.raw.item["nullius-solar-panel-4"].icons =
    util.table.deepcopy(data.raw.item["nullius-solar-panel-1"].icons)
data.raw.item["nullius-solar-panel-4"].icons[2].tint = tiercolor("green")

label_icon("nullius-solar-panel-1", 1, "yellow")
label_icon("nullius-solar-panel-2", 2, "red")
label_icon("nullius-solar-panel-3", 3, "blue")
label_icon("nullius-solar-panel-4", 4, "green")
end

label_icon("nullius-locomotive-1", 1, "yellow", "item-with-entity-data")
label_icon("nullius-locomotive-2", 2, "red", "item-with-entity-data")
label_icon("nullius-locomotive-3", 3, "blue", "item-with-entity-data")
label_icon("nullius-solar-locomotive", 3, "green", "item-with-entity-data")
label_icon("nullius-cargo-wagon-1", 1, "yellow", "item-with-entity-data")
label_icon("nullius-cargo-wagon-2", 2, "red", "item-with-entity-data")
label_icon("nullius-cargo-wagon-3", 3, "blue", "item-with-entity-data")
label_icon("nullius-fluid-wagon-1", 1, "yellow", "item-with-entity-data")
label_icon("nullius-fluid-wagon-2", 2, "red", "item-with-entity-data")
label_icon("nullius-fluid-wagon-3", 3, "blue", "item-with-entity-data")
