local ICONPATH = "__nullius__/graphics/icons/"
local ENTICONPATH = "__nullius__/graphics/icons/entity/"
local ENTITYPATH = "__nullius__/graphics/entity/"

local broken_overlay = {
  icon = ICONPATH .. "broken.png",
  icon_size = 64
}

data:extend({
  {
    type = "item",
    name = "nullius-broken-air-filter",
    localised_name = {"item-name.nullius-broken", {"entity-name.nullius-air-filter-1"}},
    icons = {
      {
        icon = "__angelspetrochem__/graphics/icons/air-filter.png",
        icon_size = 32,
        scale = 0.8
      },
      broken_overlay
    },
    subgroup = "broken",
    order = "nullius-c",
    stack_size = 20
  },
  {
    type = "item",
    name = "nullius-broken-hydro-plant",
    localised_name = {"item-name.nullius-broken", {"entity-name.nullius-hydro-plant-1"}},
    icons = {
      data.raw.item["nullius-hydro-plant-1"].icons[1],
      broken_overlay
    },
    subgroup = "broken",
    order = "nullius-e",
    stack_size = 20
  },
  {
    type = "item",
    name = "nullius-broken-electrolyzer",
    localised_name = {"item-name.nullius-broken", {"", {"entity-name.nullius-electrolyzer"}, " ", 1}},
    icons = {
      data.raw.item["nullius-electrolyzer-1"].icons[1],
      broken_overlay
    },
    subgroup = "broken",
    order = "nullius-g",
    stack_size = 20
  },
  {
    type = "item",
    name = "nullius-broken-chemical-plant",
    localised_name = {"item-name.nullius-broken", {"entity-name.nullius-chemical-plant-1"}},
    icons = {
      data.raw.item["nullius-chemical-plant-1"].icons[1],
      broken_overlay
    },
    subgroup = "broken",
    order = "nullius-i",
    stack_size = 20
  },
  {
    type = "item",
    name = "nullius-broken-foundry",
    localised_name = {"item-name.nullius-broken", {"entity-name.nullius-foundry-1"}},
    icons = {
      data.raw.item["nullius-foundry-1"].icons[1],
      broken_overlay
    },
    subgroup = "broken",
    order = "nullius-k",
    stack_size = 20
  },
  {
    type = "item",
    name = "nullius-broken-assembler",
    localised_name = {"item-name.nullius-broken", {"entity-name.nullius-medium-assembler-1"}},
    icons = {
      data.raw.item["nullius-medium-assembler-1"].icons[1],
      broken_overlay
    },
    subgroup = "broken",
    order = "nullius-m",
    stack_size = 20
  },
  {
    type = "item",
    name = "nullius-broken-pylon",
    localised_name = {"item-name.nullius-broken", {"entity-name.nullius-pylon-1"}},
    icons = {
      {
        icon = ENTICONPATH .. "large-pole-1.png",
        icon_size = 64
      },
      broken_overlay
    },
    subgroup = "broken",
    order = "nullius-o",
    stack_size = 20
  },
  {
    type = "item",
    name = "nullius-broken-solar-panel",
    localised_name = {"item-name.nullius-broken", {"entity-name.nullius-solar-panel-1"}},
    icons = {
      data.raw.item["nullius-solar-panel-1"].icons[1],
      broken_overlay
    },
    subgroup = "broken",
    order = "nullius-q",
    stack_size = 20
  },
  {
    type = "item",
    name = "nullius-broken-grid-battery",
    localised_name = {"item-name.nullius-broken", {"entity-name.nullius-grid-battery-1"}},
    icons = {
      data.raw.item["nullius-grid-battery-1"].icons[1],
      broken_overlay
    },
    subgroup = "broken",
    order = "nullius-s",
    stack_size = 20
  },
  {
    type = "item",
    name = "nullius-broken-sensor-node",
    localised_name = {"item-name.nullius-broken", {"entity-name.nullius-sensor-node-1"}},
    icons = {
	  {
        icon =  "__base__/graphics/icons/radar.png",
        icon_size = 64, icon_mipmaps = 4,
        tint = {0.9, 0.9, 0.65}
      },
      broken_overlay
    },
    subgroup = "broken",
    order = "nullius-u",
    stack_size = 20
  }
})


if mods["reskins-bobs"] then
data.raw.item["nullius-broken-solar-panel"].icons =
    util.table.deepcopy(data.raw.item["nullius-solar-panel-1"].icons)
table.insert(data.raw.item["nullius-broken-solar-panel"].icons,
    broken_overlay)
data.raw.item["nullius-broken-grid-battery"].icons =
    util.table.deepcopy(data.raw.item["nullius-grid-battery-1"].icons)
table.insert(data.raw.item["nullius-broken-grid-battery"].icons,
    broken_overlay)
data.raw.item["nullius-broken-sensor-node"].icons =
    util.table.deepcopy(data.raw.item["radar"].icons)
table.insert(data.raw.item["nullius-broken-sensor-node"].icons,
    broken_overlay)
end


data:extend({
  {
    type = "recipe",
    name = "nullius-broken-air-filter",
    localised_name = {"recipe-name.nullius-repair", {"entity-name.nullius-air-filter-1"}},
    icons = data.raw.item["nullius-broken-air-filter"].icons,
    enabled = false,
    always_show_made_in = true,
    show_amount_in_title = false,
    always_show_products = true,
    allow_decomposition = false,
    allow_as_intermediate = false,
    no_productivity = true,
    category = "large-crafting",
    subgroup = "broken",
    order = "nullius-c",
    energy_required = 3,
    ingredients = {
      {"nullius-broken-air-filter", 1},
      {"nullius-iron-sheet", 2}
    },
    result = "nullius-air-filter-1"
  },
  {
    type = "recipe",
    name = "nullius-broken-hydro-plant",
    localised_name = {"recipe-name.nullius-repair", {"entity-name.nullius-hydro-plant-1"}},
    icons = data.raw.item["nullius-broken-hydro-plant"].icons,
    enabled = false,
    always_show_made_in = true,
    show_amount_in_title = false,
    always_show_products = true,
    allow_decomposition = false,
    allow_as_intermediate = false,
    no_productivity = true,
    category = "large-crafting",
    subgroup = "broken",
    order = "nullius-e",
    energy_required = 4,
    ingredients = {
      {"nullius-broken-hydro-plant", 1},
      {"pipe", 4}
    },
    result = "nullius-hydro-plant-1"
  },
  {
    type = "recipe",
    name = "nullius-broken-electrolyzer",
    localised_name = {"recipe-name.nullius-repair", {"entity-name.nullius-priority-electrolyzer-1"}},
    icons = data.raw.item["nullius-broken-electrolyzer"].icons,
    enabled = false,
    always_show_made_in = true,
    show_amount_in_title = false,
    always_show_products = true,
    allow_decomposition = false,
    allow_as_intermediate = false,
    no_productivity = true,
    category = "large-crafting",
    subgroup = "broken",
    order = "nullius-g",
    energy_required = 6,
    ingredients = {
      {"nullius-broken-electrolyzer", 1},
      {"nullius-iron-wire", 5}
    },
    result = "nullius-electrolyzer-1"
  },
  {
    type = "recipe",
    name = "nullius-broken-chemical-plant",
    localised_name = {"recipe-name.nullius-repair", {"entity-name.nullius-chemical-plant-1"}},
    icons = data.raw.item["nullius-broken-chemical-plant"].icons,
    enabled = false,
    always_show_made_in = true,
    show_amount_in_title = false,
    always_show_products = true,
    allow_decomposition = false,
    allow_as_intermediate = false,
    no_productivity = true,
    category = "large-crafting",
    subgroup = "broken",
    order = "nullius-i",
    energy_required = 5,
    ingredients = {
      {"nullius-broken-chemical-plant", 1},
      {"nullius-one-way-valve", 2}
    },
    result = "nullius-chemical-plant-1"
  },
  {
    type = "recipe",
    name = "nullius-broken-foundry",
    localised_name = {"recipe-name.nullius-repair", {"entity-name.nullius-foundry-1"}},
    icons = data.raw.item["nullius-broken-foundry"].icons,
    enabled = false,
    always_show_made_in = true,
    show_amount_in_title = false,
    always_show_products = true,
    allow_decomposition = false,
    allow_as_intermediate = false,
    no_productivity = true,
    category = "large-crafting",
    subgroup = "broken",
    order = "nullius-k",
    energy_required = 4,
    ingredients = {
      {"nullius-broken-foundry", 1},
      {"stone-brick", 5}
    },
    result = "nullius-foundry-1"
  },
  {
    type = "recipe",
    name = "nullius-broken-assembler",
    localised_name = {"recipe-name.nullius-repair", {"entity-name.nullius-medium-assembler-1"}},
    icons = data.raw.item["nullius-broken-assembler"].icons,
    enabled = false,
    always_show_made_in = true,
    show_amount_in_title = false,
    always_show_products = true,
    allow_decomposition = false,
    allow_as_intermediate = false,
    no_productivity = true,
    category = "large-crafting",
    subgroup = "broken",
    order = "nullius-m",
    energy_required = 3,
    ingredients = {
      {"nullius-broken-assembler", 1},
      {"nullius-iron-gear", 2}
    },
    result = "nullius-medium-assembler-1"
  },
  {
    type = "recipe",
    name = "nullius-broken-pylon",
    localised_name = {"recipe-name.nullius-repair", {"entity-name.nullius-pylon-1"}},
    icons = data.raw.item["nullius-broken-pylon"].icons,
    enabled = false,
    always_show_made_in = true,
    show_amount_in_title = false,
    always_show_products = true,
    allow_decomposition = false,
    allow_as_intermediate = false,
    no_productivity = true,
    category = "large-crafting",
    subgroup = "broken",
    order = "nullius-o",
    energy_required = 2,
    ingredients = {
      {"nullius-broken-pylon", 1},
      {"nullius-iron-rod", 3}
    },
    result = "big-electric-pole"
  },
  {
    type = "recipe",
    name = "nullius-broken-solar-panel",
    localised_name = {"recipe-name.nullius-repair", {"entity-name.nullius-solar-panel-1"}},
    icons = data.raw.item["nullius-broken-solar-panel"].icons,
    enabled = false,
    always_show_made_in = true,
    show_amount_in_title = false,
    always_show_products = true,
    allow_decomposition = false,
    allow_as_intermediate = false,
    no_productivity = true,
    category = "hand-casting",
    subgroup = "broken",
    order = "nullius-q",
    energy_required = 8,
    ingredients = {
      {"nullius-broken-solar-panel", 1},
      {"nullius-sand", 1}
    },
    result = "nullius-solar-panel-1"
  },
  {
    type = "recipe",
    name = "nullius-broken-grid-battery",
    localised_name = {"recipe-name.nullius-repair", {"entity-name.nullius-grid-battery-1"}},
    icons = data.raw.item["nullius-broken-grid-battery"].icons,
    enabled = false,
    always_show_made_in = true,
    show_amount_in_title = false,
    always_show_products = true,
    allow_decomposition = false,
    allow_as_intermediate = false,
    no_productivity = true,
    category = "large-crafting",
    subgroup = "broken",
    order = "nullius-s",
    energy_required = 6,
    ingredients = {
      {"nullius-broken-grid-battery", 1},
      {"nullius-graphite", 1}
    },
    result = "nullius-grid-battery-1"
  },
  {
    type = "recipe",
    name = "nullius-broken-sensor-node",
    localised_name = {"recipe-name.nullius-repair", {"entity-name.nullius-sensor-node-1"}},
    icons = data.raw.item["nullius-broken-sensor-node"].icons,
    enabled = false,
    always_show_made_in = true,
    show_amount_in_title = false,
    always_show_products = true,
    allow_decomposition = false,
    allow_as_intermediate = false,
    no_productivity = true,
    category = "large-crafting",
    subgroup = "broken",
    order = "nullius-u",
    energy_required = 10,
    ingredients = {
      {"nullius-broken-sensor-node", 1},
      {"nullius-glass", 2},
      {"small-lamp", 2}
    },
    result = "radar"
  }
})
