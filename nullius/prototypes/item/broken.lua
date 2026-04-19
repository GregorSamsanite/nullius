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
        icon = "__angelspetrochemgraphics__/graphics/icons/air-filter.png",
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
    localised_name = {"item-name.nullius-broken", {"", {"entity-name.nullius-electrolyzer"}, " ", tostring(1)}},
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
        icon_size = 64,
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
      {type = "item", name = "nullius-broken-air-filter", amount = 1},
      {type = "item", name = "nullius-iron-sheet", amount = 2}
    },
    results = {
			{type="item", name="nullius-air-filter-1", amount = 1}
		}
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
      {type = "item", name = "nullius-broken-hydro-plant", amount = 1},
      {type = "item", name = "pipe", amount = 4}
    },
    results = {
			{type="item", name="nullius-hydro-plant-1", amount = 1}
		}
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
      {type = "item", name = "nullius-broken-electrolyzer", amount = 1},
      {type = "item", name = "nullius-iron-wire", amount = 5}
    },
    results = {
			{type="item", name="nullius-electrolyzer-1", amount = 1}
		}
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
      {type = "item", name = "nullius-broken-chemical-plant", amount = 1},
      {type = "item", name = "nullius-one-way-valve", amount = 2}
    },
    results = {
			{type="item", name="nullius-chemical-plant-1", amount = 1}
		}
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
      {type = "item", name = "nullius-broken-foundry", amount = 1},
      {type = "item", name = "stone-brick", amount = 5}
    },
    results = {
			{type="item", name="nullius-foundry-1", amount = 1}
		}
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
      {type = "item", name = "nullius-broken-assembler", amount = 1},
      {type = "item", name = "nullius-iron-gear", amount = 2}
    },
    results = {
			{type="item", name="nullius-medium-assembler-1", amount = 1}
		}
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
      {type = "item", name = "nullius-broken-pylon", amount = 1},
      {type = "item", name = "nullius-iron-rod", amount = 3}
    },
    results = {
			{type="item", name="big-electric-pole", amount = 1}
		}
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
      {type = "item", name = "nullius-broken-solar-panel", amount = 1},
      {type = "item", name = "nullius-sand", amount = 1}
    },
    results = {
			{type="item", name="nullius-solar-panel-1", amount = 1}
		}
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
      {type = "item", name = "nullius-broken-grid-battery", amount = 1},
      {type = "item", name = "nullius-graphite", amount = 1}
    },
    results = {
			{type="item", name="nullius-grid-battery-1", amount = 1}
		}
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
      {type = "item", name = "nullius-broken-sensor-node", amount = 1},
      {type = "item", name = "nullius-glass", amount = 2},
      {type = "item", name = "small-lamp", amount = 2}
    },
    results = {
			{type="item", name="radar", amount = 1}
		}
  }
})
