local ICONPATH = "__nullius__/graphics/icons/"
local ENTICONPATH = "__nullius__/graphics/icons/entity/"
local ENTITYPATH = "__nullius__/graphics/entity/"

data:extend({
  {
    type = "item",
    name = "nullius-small-furnace-1",
    icons = {{
      icon = "__base__/graphics/icons/stone-furnace.png",
      icon_size = 64,
      icon_mipmaps = 4
    }},
    subgroup = "furnace",
    order = "nullius-bbb",
    place_result = "nullius-small-furnace-1",
    stack_size = 50
  },
  {
    type = "recipe",
    name = "nullius-small-furnace-1",
    enabled = false,
    category = "medium-crafting",
    always_show_made_in = true,
    energy_required = 8,
    ingredients = {
      {"stone-brick", 4},
      {"nullius-iron-wire", 2},
      {"nullius-iron-plate", 1}
    },
    result = "nullius-small-furnace-1"
  },

  {
    type = "item",
    name = "nullius-small-furnace-2",
    icons = {{
      icon = ENTICONPATH .. "furnace1.png",
      icon_size = 64
    }},
    subgroup = "furnace",
    order = "nullius-bbc",
    place_result = "nullius-small-furnace-2",
    stack_size = 50
  },
  {
    type = "recipe",
    name = "nullius-small-furnace-2",
    enabled = false,
    category = "medium-crafting",
    always_show_made_in = true,
    energy_required = 12,
    ingredients = {
      {"nullius-small-furnace-1", 1},
      {"nullius-refractory-brick", 8},
      {"nullius-crucible", 1},
      {"nullius-steel-plate", 1}
    },
    result = "nullius-small-furnace-2"
  },

  {
    type = "item",
    name = "nullius-small-furnace-3",
    icons = {{
      icon = ENTICONPATH .. "furnace2s.png",
      icon_size = 64,
      tint = {0.7, 0.7, 0.85}
    }},
    subgroup = "furnace",
    order = "nullius-bbd",
    place_result = "nullius-small-furnace-3",
    stack_size = 50
  },
  {
    type = "recipe",
    name = "nullius-small-furnace-3",
    enabled = false,
    category = "medium-crafting",
    always_show_made_in = true,
    energy_required = 25,
    ingredients = {
      {"nullius-small-furnace-2", 1},
      {"nullius-refractory-brick", 15},
      {"nullius-mortar", 8},
      {"nullius-iron-wire", 6},
      {"nullius-aluminum-wire", 6},
      {"nullius-sensor-1", 1}
    },
    result = "nullius-small-furnace-3"
  },

  {
    type = "item",
    name = "nullius-medium-furnace-1",
    icons = {{
      icon = "__base__/graphics/icons/steel-furnace.png",
      icon_size = 64,
      icon_mipmaps = 4
    }},
    subgroup = "furnace",
    order = "nullius-bcb",
    place_result = "nullius-medium-furnace-1",
    stack_size = 50
  },
  {
    type = "recipe",
    name = "nullius-medium-furnace-1",
    enabled = false,
    category = "large-crafting",
    always_show_made_in = true,
    energy_required = 15,
    ingredients = {
      {"nullius-small-furnace-2", 2},
      {"nullius-chimney-1", 1}
    },
    result = "nullius-medium-furnace-1"
  },

  {
    type = "item",
    name = "nullius-medium-furnace-2",
    icons = {{
      icon = ENTICONPATH .. "furnace2m.png",
      icon_size = 64,
      tint = {0.65, 0.65, 0.8}
    }},
    subgroup = "furnace",
    order = "nullius-bcc",
    place_result = "nullius-medium-furnace-2",
    stack_size = 50
  },
  {
    type = "recipe",
    name = "nullius-medium-furnace-2",
    enabled = false,
    category = "large-crafting",
    always_show_made_in = true,
    energy_required = 30,
    ingredients = {
      {"nullius-medium-furnace-1", 1},
      {"nullius-small-furnace-3", 1},
      {"nullius-combustion-chamber-2", 1},
      {"nullius-heat-pipe-1", 3}
    },
    result = "nullius-medium-furnace-2"
  },

  {
    type = "item",
    name = "nullius-medium-furnace-3",
    icons = {{
      icon = ENTICONPATH .. "furnace2m.png",
      icon_size = 64
    }},
    subgroup = "furnace",
    order = "nullius-bcd",
    place_result = "nullius-medium-furnace-3",
    stack_size = 50
  },
  {
    type = "recipe",
    name = "nullius-medium-furnace-3",
    enabled = false,
    always_show_made_in = true,
    category = "large-crafting",
    energy_required = 60,
    ingredients = {
      {"nullius-medium-furnace-2", 1},
      {"nullius-air-filter-2", 1},
      {"nullius-combustion-chamber-3", 1},
      {"nullius-box-heat-pipe-2", 1},
      {"nullius-transformer", 1},
      {"nullius-box-titanium-plate", 1},
      {"nullius-box-wall", 1}
    },
    result = "nullius-medium-furnace-3"
  },

  {
    type = "item",
    name = "nullius-large-furnace-1",
    icons = {{
      icon = "__base__/graphics/icons/electric-furnace.png",
      icon_size = 64,
      icon_mipmaps = 4,
      tint = {0.65, 0.65, 0.8}
    }},
    subgroup = "furnace",
    order = "nullius-bdb",
    place_result = "nullius-large-furnace-1",
    stack_size = 20
  },
  {
    type = "recipe",
    name = "nullius-large-furnace-1",
    enabled = false,
    category = "huge-crafting",
    always_show_made_in = true,
    energy_required = 30,
    ingredients = {
      {"nullius-medium-furnace-2", 2},
      {"nullius-steel-beam", 8},
      {"concrete", 20}
    },
    result = "nullius-large-furnace-1"
  },

  {
    type = "item",
    name = "nullius-large-furnace-2",
    icons = {{
      icon = "__base__/graphics/icons/electric-furnace.png",
      icon_size = 64,
      icon_mipmaps = 4
    }},
    subgroup = "furnace",
    order = "nullius-bdc",
    place_result = "nullius-large-furnace-2",
    stack_size = 20
  },
  {
    type = "recipe",
    name = "nullius-large-furnace-2",
    enabled = false,
    always_show_made_in = true,
    category = "huge-crafting",
    energy_required = 75,
    ingredients = {
      {"nullius-large-furnace-1", 1},
      {"nullius-medium-furnace-3", 1},
      {"nullius-substation-2", 1},
      {"nullius-box-insulation", 2},
      {"nullius-box-belt-4", 1}
    },
    result = "nullius-large-furnace-2"
  },

  {
    type = "item",
    name = "nullius-small-assembler-1",
    icons = {{
      icon = ENTICONPATH .. "assembler1s.png",
      icon_size = 64
    }},
    subgroup = "assembler",
    order = "nullius-bb",
    place_result = "nullius-small-assembler-1",
    stack_size = 50
  },
  {
    type = "item",
    name = "nullius-small-assembler-2",
    icons = {{
      icon = ENTICONPATH .. "assembler2s.png",
      icon_size = 64
    }},
    subgroup = "assembler",
    order = "nullius-bc",
    place_result = "nullius-small-assembler-2",
    stack_size = 50
  },
  {
    type = "item",
    name = "nullius-small-assembler-3",
    icons = {{
      icon = ENTICONPATH .. "assembler3s.png",
      icon_size = 64
    }},
    subgroup = "assembler",
    order = "nullius-bd",
    place_result = "nullius-small-assembler-3",
    stack_size = 50
  },
  {
    type = "recipe",
    name = "nullius-small-assembler-1",
    enabled = false,
    category = "medium-crafting",
    always_show_made_in = true,
    energy_required = 5,
    ingredients = {
      {"inserter", 1},
      {"transport-belt", 1},
      {"wooden-chest", 1},
      {"nullius-fabrication-tool-1", 1}
    },
    result = "nullius-small-assembler-1"
  },
  {
    type = "recipe",
    name = "nullius-legacy-small-assembler-1",
    enabled = false,
	hidden = true,
    allow_decomposition = false,
    allow_as_intermediate = false,
	always_show_made_in = true,
    category = "medium-crafting",
    energy_required = 6,
    ingredients = {
      {"inserter", 1},
      {"transport-belt", 1},
      {"wooden-chest", 1}
    },
    result = "nullius-small-assembler-1"
  },
  {
    type = "recipe",
    name = "nullius-small-assembler-2",
    enabled = false,
    always_show_made_in = true,
    category = "medium-crafting",
    energy_required = 12,
    ingredients = {
      {"nullius-small-assembler-1", 1},
      {"nullius-fabrication-tool-2", 1},
      {"splitter", 1},
      {"iron-chest", 1}
    },
    result = "nullius-small-assembler-2"
  },
  {
    type = "recipe",
    name = "nullius-legacy-small-assembler-2",
    enabled = false,
	hidden = true,
    allow_decomposition = false,
    allow_as_intermediate = false,
	always_show_made_in = true,
    category = "medium-crafting",
    energy_required = 12,
    ingredients = {
      {"nullius-small-assembler-1", 1},
      {"repair-pack", 2},
      {"splitter", 1},
      {"iron-chest", 2}
    },
    result = "nullius-small-assembler-2"
  },
  {
    type = "recipe",
    name = "nullius-small-assembler-3",
    enabled = false,
    show_amount_in_title = false,
    always_show_products = true,
    always_show_made_in = true,
    category = "tiny-crafting",
    energy_required = 40,
    ingredients = {
      {"nullius-small-assembler-2", 4},
      {"nullius-hangar-1", 1},
      {"nullius-construction-bot-2", 1},
      {"nullius-large-buffer-chest-1", 1},
      {"express-stack-filter-inserter", 1}
    },
    result = "nullius-small-assembler-3",
    result_count = 3
  },

  {
    type = "item",
    name = "nullius-medium-assembler-1",
    icons = {{
      icon = ENTICONPATH .. "assembler1m.png",
      icon_size = 64
    }},
    subgroup = "assembler",
    order = "nullius-cb",
    place_result = "nullius-medium-assembler-1",
    stack_size = 50
  },
  {
    type = "item",
    name = "nullius-medium-assembler-2",
    icons = {{
      icon = ENTICONPATH .. "assembler2m.png",
      icon_size = 64
    }},
    subgroup = "assembler",
    order = "nullius-cc",
    place_result = "nullius-medium-assembler-2",
    stack_size = 50
  },
  {
    type = "item",
    name = "nullius-medium-assembler-3",
    icons = {{
      icon = ENTICONPATH .. "assembler3m.png",
      icon_size = 64
    }},
    subgroup = "assembler",
    order = "nullius-cd",
    place_result = "nullius-medium-assembler-3",
    stack_size = 50
  },
  {
    type = "recipe",
    name = "nullius-medium-assembler-1",
    enabled = false,
    category = "large-crafting",
    always_show_made_in = true,
    energy_required = 10,
    ingredients = {
      {"nullius-small-assembler-1", 2},
      {"nullius-steel-beam", 1}
    },
    result = "nullius-medium-assembler-1"
  },
  {
    type = "recipe",
    name = "nullius-medium-assembler-2",
    enabled = false,
    category = "large-crafting",
    always_show_made_in = true,
    energy_required = 20,
    ingredients = {
      {"nullius-medium-assembler-1", 1},
      {"nullius-small-assembler-2", 1},
      {"nullius-aluminum-sheet", 6},
      {"red-wire", 4}
    },
    result = "nullius-medium-assembler-2"
  },
  {
    type = "recipe",
    name = "nullius-medium-assembler-3",
    enabled = false,
    category = "small-crafting",
    always_show_made_in = true,
	show_amount_in_title = false,
    always_show_products = true,
    energy_required = 60,
    ingredients = {
      {"nullius-medium-assembler-2", 3},
      {"nullius-small-assembler-3", 2},
      {"nullius-charger-2", 1},
      {"nullius-logistic-bot-2", 1},
      {"express-transport-belt", 4},
      {"stone-wall", 6}
    },
    result = "nullius-medium-assembler-3",
	result_count = 2
  },

  {
    type = "item",
    name = "nullius-large-assembler-1",
    icons = {{
      icon = "__base__/graphics/icons/assembling-machine-2.png",
      icon_size = 64,
      icon_mipmaps = 4
    }},
    subgroup = "assembler",
    order = "nullius-db",
    place_result = "nullius-large-assembler-1",
    stack_size = 20
  },
  {
    type = "item",
    name = "nullius-large-assembler-2",
    icons = {{
      icon = "__base__/graphics/icons/assembling-machine-3.png",
      icon_size = 64,
      icon_mipmaps = 4
    }},
    subgroup = "assembler",
    order = "nullius-dc",
    place_result = "nullius-large-assembler-2",
    stack_size = 20
  },
  {
    type = "recipe",
    name = "nullius-large-assembler-1",
    enabled = false,
    category = "large-crafting",
    always_show_made_in = true,
    energy_required = 40,
    ingredients = {
      {"nullius-medium-assembler-2", 2},
      {"stone-brick", 12},
      {"nullius-mortar", 3},
      {"fast-transport-belt", 6}
    },
    result = "nullius-large-assembler-1"
  },
  {
    type = "recipe",
    name = "nullius-large-assembler-2",
    enabled = false,
    category = "huge-crafting",
    always_show_made_in = true,
    energy_required = 80,
    ingredients = {
      {"nullius-large-assembler-1", 1},
      {"nullius-medium-assembler-3", 2},
      {"nullius-relay-2", 1},
      {"gate", 2},
      {"nullius-substation-2", 1}
    },
    result = "nullius-large-assembler-2"
  },

  {
    type = "item",
    name = "nullius-boxer",
	icons = {{
      icon = "__angelssmelting__/graphics/icons/powder-mixer-ico.png",
      icon_size = 64, icon_mipmaps = 4,
      scale = 0.5
    }},
    subgroup = "assembler",
    order = "nullius-fb",
    place_result = "nullius-boxer",
    stack_size = 100
  },
  {
    type = "recipe",
    name = "nullius-boxer",
    enabled = false,
    always_show_made_in = true,
    category = "medium-crafting",
    energy_required = 8,
    ingredients = {
      {"nullius-small-assembler-2", 1},
      {"stack-inserter", 1},
      {"nullius-speed-module-1", 1}
    },
    result = "nullius-boxer"
  },

  {
    type = "item",
    name = "nullius-small-miner-1",
    icons = {{
      icon = ENTICONPATH .. "miner1.png",
      icon_size = 64
    }},
    subgroup = "miner",
    order = "nullius-bb",
    place_result = "nullius-small-miner-1",
    stack_size = 50
  },
  {
    type = "item",
    name = "nullius-small-miner-2",
    icons = {{
      icon = ENTICONPATH .. "miner2s.png",
      icon_size = 64,
      tint = {0.6, 0.7, 0.8}
    }},
    subgroup = "miner",
    order = "nullius-bc",
    place_result = "nullius-small-miner-2",
    stack_size = 50
  },
  {
    type = "item",
    name = "nullius-small-miner-3",
    icons = {{
      icon = ENTICONPATH .. "miner2s.png",
      icon_size = 64
    }},
    subgroup = "miner",
    order = "nullius-bd",
    place_result = "nullius-small-miner-3",
    stack_size = 50
  },
  {
    type = "recipe",
    name = "nullius-small-miner-1",
    enabled = false,
    always_show_made_in = true,
    show_amount_in_title = false,
    always_show_products = true,
    category = "medium-crafting",
    energy_required = 4,
    ingredients = {
      {"nullius-motor-1", 1},
      {"nullius-iron-gear", 1},
      {"nullius-mining-tool-1", 1}
    },
    result = "nullius-small-miner-1"
  },
  {
    type = "recipe",
    name = "nullius-legacy-small-miner-1",
    enabled = false,
    always_show_made_in = true,
    show_amount_in_title = false,
    always_show_products = true,
	hidden = true,
    allow_decomposition = false,
    allow_as_intermediate = false,
    category = "medium-crafting",
    energy_required = 6,
    ingredients = {
      {"nullius-motor-1", 2},
      {"nullius-iron-gear", 2},
      {"nullius-iron-plate", 3}
    },
    result = "nullius-small-miner-1",
    result_count = 2
  },
  {
    type = "recipe",
    name = "nullius-small-miner-2",
    enabled = false,
    always_show_made_in = true,
    category = "medium-crafting",
    energy_required = 12,
    ingredients = {
      {"nullius-small-miner-1", 1},
      {"nullius-motor-2", 1},
      {"nullius-steel-plate", 5},
      {"nullius-aluminum-carbide", 2}
    },
    result = "nullius-small-miner-2"
  },
  {
    type = "recipe",
    name = "nullius-small-miner-3",
    enabled = false,
    always_show_made_in = true,
	show_amount_in_title = false,
    always_show_products = true,
    category = "medium-crafting",
    energy_required = 50,
    ingredients = {
      {type="item", name="nullius-small-miner-2", amount=2},
      {type="item", name="nullius-motor-3", amount=1},
      {type="item", name="nullius-titanium-plate", amount=6},
      {type="item", name="nullius-box-ceramic-powder", amount=3},
      {type="item", name="express-splitter", amount=1}
    },
    result = "nullius-small-miner-3",
	result_count = 2
  },

  {
    type = "item",
    name = "nullius-medium-miner-1",
    icons = {{
      icon = "__base__/graphics/icons/burner-mining-drill.png",
      icon_size = 64,
      icon_mipmaps = 4
    }},
    subgroup = "miner",
    order = "nullius-cb",
    place_result = "nullius-medium-miner-1",
    stack_size = 50
  },
  {
    type = "item",
    name = "nullius-medium-miner-2",
    icons = {{
      icon = ENTICONPATH .. "miner2m.png",
      icon_size = 64,
      tint = {0.6, 0.7, 0.8}
    }},
    subgroup = "miner",
    order = "nullius-cc",
    place_result = "nullius-medium-miner-2",
    stack_size = 50
  },
  {
    type = "item",
    name = "nullius-medium-miner-3",
    icons = {{
      icon = ENTICONPATH .. "miner2m.png",
      icon_size = 64
    }},
    subgroup = "miner",
    order = "nullius-cd",
    place_result = "nullius-medium-miner-3",
    stack_size = 50
  },
  {
    type = "recipe",
    name = "nullius-medium-miner-1",
    enabled = false,
    category = "large-crafting",
    always_show_made_in = true,
    energy_required = 10,
    ingredients = {
      {"nullius-small-miner-1", 2},
      {"nullius-steel-beam", 1}
    },
    result = "nullius-medium-miner-1"
  },
  {
    type = "recipe",
    name = "nullius-medium-miner-2",
    enabled = false,
    category = "large-crafting",
    always_show_made_in = true,
    energy_required = 25,
    ingredients = {
      {"nullius-medium-miner-1", 1},
      {"nullius-small-miner-2", 1},
      {"nullius-steel-gear", 4},
      {"nullius-aluminum-plate", 2}
    },
    result = "nullius-medium-miner-2"
  },
  {
    type = "recipe",
    name = "nullius-medium-miner-3",
    enabled = false,
    always_show_made_in = true,
    category = "large-fluid-assembly",
    energy_required = 45,
    ingredients = {
      {type="item", name="nullius-medium-miner-2", amount=2},
      {type="item", name="nullius-small-miner-3", amount=1},
      {type="item", name="nullius-box-belt-3", amount=1},
      {type="item", name="nullius-sensor-2", amount=1},
      {type="item", name="nullius-transformer", amount=1},
      {type="fluid", name="nullius-lubricant", amount=50}
    },
    result = "nullius-medium-miner-3"
  },

  {
    type = "item",
    name = "nullius-large-miner-1",
    icons = {{
      icon = "__base__/graphics/icons/electric-mining-drill.png",
      icon_size = 64,
      icon_mipmaps = 4,
      tint = {0.6, 0.7, 0.8}
    }},
    subgroup = "miner",
    order = "nullius-db",
    place_result = "nullius-large-miner-1",
    stack_size = 20
  },
  {
    type = "item",
    name = "nullius-large-miner-2",
    icons = {{
      icon = "__base__/graphics/icons/electric-mining-drill.png",
      icon_size = 64,
      icon_mipmaps = 4
    }},
    subgroup = "miner",
    order = "nullius-dc",
    place_result = "nullius-large-miner-2",
    stack_size = 20
  },
  {
    type = "recipe",
    name = "nullius-large-miner-1",
    enabled = false,
    category = "huge-crafting",
    always_show_made_in = true,
    energy_required = 30,
    ingredients = {
      {"nullius-medium-miner-2", 2},
      {"nullius-steel-cable", 6},
      {"nullius-steel-sheet", 4}
    },
    result = "nullius-large-miner-1"
  },
  {
    type = "recipe",
    name = "nullius-large-miner-2",
    enabled = false,
    category = "huge-crafting",
    always_show_made_in = true,
    energy_required = 60,
    ingredients = {
      {"nullius-large-miner-1", 1},
      {"nullius-medium-miner-3", 2},
      {"nullius-box-rail", 4},
      {"nullius-cargo-wagon-1", 1},
      {"nullius-locomotive-1", 1}
    },
    result = "nullius-large-miner-2"
  },

  {
    type = "item",
    name = "nullius-wind-turbine-1",
    icons = {{
      icon = ENTICONPATH .. "windturbine1.png",
      icon_size = 64
    }},
    subgroup = "energy",
    order = "nullius-db",
    place_result = "nullius-wind-build-1",
    stack_size = 20
  },
  {
    type = "item",
    name = "nullius-wind-turbine-2",
    icons = {{
      icon = ENTICONPATH .. "windturbine2.png",
      icon_size = 64
    }},
    subgroup = "energy",
    order = "nullius-dc",
    place_result = "nullius-wind-build-2",
    stack_size = 20
  },
  {
    type = "item",
    name = "nullius-wind-turbine-3",
    icons = {{
      icon = ENTICONPATH .. "windturbine3.png",
      icon_size = 64
    }},
    subgroup = "energy",
    order = "nullius-dd",
    place_result = "nullius-wind-build-3",
    stack_size = 20
  },
  {
    type = "recipe",
    name = "nullius-wind-turbine-1",
    enabled = false,
    category = "large-crafting",
    always_show_made_in = true,
    energy_required = 5,
    ingredients = {
      {"nullius-turbine-open-1", 2},
      {"small-electric-pole", 2}
    },
    result = "nullius-wind-turbine-1"
  },
  {
    type = "recipe",
    name = "nullius-boxed-wind-turbine-1",
    enabled = false,
    category = "huge-assembly",
    subgroup = "boxed-fluid-energy",
    always_show_made_in = true,
    energy_required = 25,
    ingredients = {
      {"nullius-box-turbine-open-1", 2},
      {"nullius-box-power-pole-1", 2}
    },
    result = "nullius-box-wind-turbine-1"
  },
  {
    type = "recipe",
    name = "nullius-wind-turbine-2",
    enabled = false,
    category = "huge-crafting",
    always_show_made_in = true,
    energy_required = 20,
    ingredients = {
      {"nullius-wind-turbine-1", 1},
      {"nullius-turbine-open-2", 1},
      {"big-electric-pole", 2},
      {"nullius-steel-cable", 5},
      {"concrete", 10}
    },
    result = "nullius-wind-turbine-2"
  },
  {
    type = "recipe",
    name = "nullius-boxed-wind-turbine-2",
    enabled = false,
    category = "huge-assembly",
    subgroup = "boxed-fluid-energy",
    always_show_made_in = true,
    energy_required = 100,
    ingredients = {
      {"nullius-box-wind-turbine-1", 1},
      {"nullius-box-turbine-open-2", 1},
      {"nullius-box-pylon-1", 2},
      {"nullius-box-steel-cable", 5},
      {"nullius-box-concrete", 5}
    },
    result = "nullius-box-wind-turbine-2"
  },
  {
    type = "recipe",
    name = "nullius-wind-turbine-3",
    enabled = false,
    always_show_made_in = true,
    category = "huge-crafting",
    energy_required = 40,
    ingredients = {
      {"nullius-wind-turbine-2", 2},
      {"nullius-turbine-open-3", 2},
      {"nullius-pylon-2", 2},
      {"nullius-carbon-composite", 10},
      {"refined-concrete", 16}
    },
    result = "nullius-wind-turbine-3"
  },
  {
    type = "recipe",
    name = "nullius-boxed-wind-turbine-3",
    enabled = false,
    always_show_made_in = true,
    category = "huge-assembly",
    subgroup = "boxed-fluid-energy",
    energy_required = 200,
    ingredients = {
      {"nullius-box-wind-turbine-2", 2},
      {"nullius-box-turbine-open-3", 2},
      {"nullius-box-pylon-2", 2},
      {"nullius-box-carbon-composite", 10},
      {"nullius-box-reinforced-concrete", 8}
    },
    result = "nullius-box-wind-turbine-3"
  },

  {
    type = "item",
    name = "nullius-foundry-1",
    icons = {{
      icon = "__angelssmelting__/graphics/icons/casting-machine.png",
      icon_size = 64,
      tint = {0.6, 0.8, 0.7}
    }},
    subgroup = "ore-processing",
    order = "nullius-db",
    place_result = "nullius-foundry-1",
    stack_size = 50
  },
  {
    type = "item",
    name = "nullius-foundry-2",
    icons = {{
      icon = "__angelssmelting__/graphics/icons/casting-machine.png",
      icon_size = 64,
      tint = {0.7, 0.8, 1}
    }},
    subgroup = "ore-processing",
    order = "nullius-dc",
    place_result = "nullius-foundry-2",
    stack_size = 50
  },
  {
    type = "item",
    name = "nullius-foundry-3",
    icons = {{
      icon = "__angelssmelting__/graphics/icons/casting-machine.png",
      icon_size = 64
    }},
    subgroup = "ore-processing",
    order = "nullius-dd",
    place_result = "nullius-foundry-3",
    stack_size = 50
  },
  {
    type = "recipe",
    name = "nullius-foundry-1",
    enabled = false,
    category = "large-crafting",
    always_show_made_in = true,
    energy_required = 8,
    ingredients = {
      {"nullius-small-furnace-1", 1},
      {"inserter", 2},
      {"nullius-iron-plate", 3}
    },
    result = "nullius-foundry-1"
  },
  {
    type = "recipe",
    name = "nullius-foundry-2",
    enabled = false,
    category = "large-crafting",
    always_show_made_in = true,
    energy_required = 15,
    ingredients = {
      {"nullius-foundry-1", 1},
      {"nullius-medium-furnace-1", 1},
      {"nullius-crucible", 2},
      {"turbo-filter-inserter", 2},
      {"fast-transport-belt", 3}
    },
    result = "nullius-foundry-2"
  },
  {
    type = "recipe",
    name = "nullius-foundry-3",
    enabled = false,
    always_show_made_in = true,
    category = "large-crafting",
    energy_required = 40,
    ingredients = {
      {"nullius-foundry-2", 2},
      {"nullius-medium-furnace-3", 1},
      {"nullius-medium-assembler-3", 1},
      {"nullius-thermal-tank-2", 1}
    },
    result = "nullius-foundry-3"
  },

  {
    type = "item",
    name = "nullius-crusher-1",
    icons = {{
      icon = "__angelsrefining__/graphics/icons/ore-crusher.png",
      icon_size = 64, icon_mipmaps = 4,
	  tint = {0.6, 0.6, 0.6}
    }},
    subgroup = "ore-processing",
    order = "nullius-bb",
    place_result = "nullius-crusher-1",
    stack_size = 50
  },
  {
    type = "item",
    name = "nullius-crusher-2",
    icons = {{
      icon = "__angelsrefining__/graphics/icons/ore-crusher.png",
      icon_size = 64, icon_mipmaps = 4,
	  tint = {0.6, 0.65, 0.85}
    }},
    subgroup = "ore-processing",
    order = "nullius-bc",
    place_result = "nullius-crusher-2",
    stack_size = 50
  },
  {
    type = "item",
    name = "nullius-crusher-3",
    icons = {{
      icon = "__angelsrefining__/graphics/icons/ore-crusher.png",
      icon_size = 64, icon_mipmaps = 4
    }},
    subgroup = "ore-processing",
    order = "nullius-bd",
    place_result = "nullius-crusher-3",
    stack_size = 50
  },
  {
    type = "recipe",
    name = "nullius-crusher-1",
    enabled = false,
    category = "large-crafting",
    always_show_made_in = true,
    energy_required = 5,
    ingredients = {
      {"nullius-small-miner-1", 1},
      {"transport-belt", 2},
      {"nullius-iron-wire", 3},
      {"stone-brick", 8}
    },
    result = "nullius-crusher-1"
  },
  {
    type = "recipe",
    name = "nullius-crusher-2",
    enabled = false,
    category = "large-crafting",
    always_show_made_in = true,
	show_amount_in_title = false,
    always_show_products = true,
    energy_required = 25,
    ingredients = {
      {"nullius-crusher-1", 3},
      {"nullius-medium-miner-2", 1},
      {"copper-cable", 8},
      {"fast-splitter", 1}
    },
    result = "nullius-crusher-2",
	result_count = 2
  },
  {
    type = "recipe",
    name = "nullius-crusher-3",
    enabled = false,
    category = "large-crafting",
    always_show_made_in = true,
    energy_required = 30,
    ingredients = {
      {"nullius-crusher-2", 1},
      {"nullius-medium-miner-3", 1},
      {"ultimate-splitter", 1},
      {"nullius-box-wall", 2},
	  {"nullius-trash-compactor", 1}
    },
    result = "nullius-crusher-3"
  },
  {
    type = "recipe",
    name = "nullius-legacy-crusher-3",
    enabled = false,
	hidden = true,
    allow_decomposition = false,
    allow_as_intermediate = false,
    category = "large-crafting",
    always_show_made_in = true,
    energy_required = 30,
    ingredients = {
      {"nullius-crusher-2", 2},
      {"nullius-medium-miner-3", 1},
      {"ultimate-splitter", 1},
      {"nullius-box-wall", 2}
    },
    result = "nullius-crusher-3"
  },

  {
    type = "recipe",
    name = "nullius-small-chest-1",
    enabled = false,
    category = "medium-crafting",
    always_show_made_in = true,
    energy_required = 2,
    ingredients = {
      {"nullius-iron-sheet", 2},
      {"nullius-iron-rod", 1}
    },
    result = "wooden-chest"
  },
  {
    type = "recipe",
    name = "nullius-small-chest-2",
    enabled = false,
    category = "medium-crafting",
    always_show_made_in = true,
    energy_required = 3,
    ingredients = {
      {"wooden-chest", 1},
      {"nullius-steel-sheet", 4},
      {"nullius-steel-rod", 2},
      {"nullius-rubber", 1}
    },
    result = "iron-chest"
  },
  {
    type = "recipe",
    name = "nullius-small-chest-3",
    enabled = false,
    category = "large-fluid-assembly",
    always_show_made_in = true,
    energy_required = 5,
    ingredients = {
      {type="item", name="iron-chest", amount=1},
      {type="item", name="nullius-titanium-sheet", amount=4},
      {type="item", name="nullius-titanium-rod", amount=2},
      {type="fluid", name="nullius-epoxy", amount=4, fluidbox_index=1}
    },
    result = "steel-chest"
  },

  {
    type = "item",
    name = "nullius-large-chest-1",
    icons = {{
      icon = "__base__/graphics/icons/steel-chest.png",
      icon_size = 64,
      icon_mipmaps = 4
    }},
    subgroup = "storage",
    order = "nullius-cb",
    place_result = "nullius-large-chest-1",
    stack_size = 50
  },
  {
    type = "item",
    name = "nullius-large-chest-2",
    icons = {{
      icon = ENTICONPATH .. "chest3.png",
      icon_size = 64
    }},
    subgroup = "storage",
    order = "nullius-cc",
    place_result = "nullius-large-chest-2",
    stack_size = 50
  },
  {
    type = "recipe",
    name = "nullius-large-chest-1",
    enabled = false,
    category = "medium-crafting",
    always_show_made_in = true,
    energy_required = 8,
    ingredients = {
      {"iron-chest", 4},
      {"nullius-aluminum-plate", 3}
    },
    result = "nullius-large-chest-1"
  },
  {
    type = "recipe",
    name = "nullius-large-chest-2",
    enabled = false,
    category = "medium-crafting",
    always_show_made_in = true,
    energy_required = 15,
    ingredients = {
      {"nullius-large-chest-1", 1},
      {"steel-chest", 2},
      {"nullius-titanium-plate", 2}
    },
    result = "nullius-large-chest-2"
  },

  {
    type = "item",
    name = "nullius-small-storage-chest-1",
    icons = {
      {
        icon = ENTICONPATH .. "logistic-small.png",
        icon_size = 64
      },
      {
        icon = "__boblogistics__/graphics/icons/logistic-chest-port.png",
        icon_size = 32,
        scale = 0.6875
      },
      {
        icon = "__boblogistics__/graphics/entity/logistic-chest/logistic-chest-mask.png",
        tint = {r = 0.9, g = 0.75, b = 0.1},
        icon_size = 32,
        scale = 0.6875
      }
    },
    subgroup = "small-logistic-storage",
    order = "nullius-bb",
    place_result = "nullius-small-storage-chest-1",
    stack_size = 100
  },
  {
    type = "item",
    name = "nullius-large-storage-chest-1",
    icons = {
      {
        icon = ENTICONPATH .. "logistic-large.png",
        icon_size = 64
      },
      {
        icon = "__boblogistics__/graphics/icons/logistic-chest-port.png",
        icon_size = 32,
        scale = 0.875
      },
      {
        icon = "__boblogistics__/graphics/entity/logistic-chest/logistic-chest-mask.png",
        tint = {r = 0.9, g = 0.75, b = 0.1},
        icon_size = 32,
        scale = 0.875
      }
    },
    subgroup = "large-logistic-storage",
    order = "nullius-bb",
    place_result = "nullius-large-storage-chest-1",
    stack_size = 50
  },
  {
    type = "item",
    name = "nullius-large-storage-chest-2",
    icons = {{
      icon = "__base__/graphics/icons/logistic-chest-storage.png",
      icon_size = 64,
      icon_mipmaps = 4
    }},
    subgroup = "large-logistic-storage",
    order = "nullius-bc",
    place_result = "nullius-large-storage-chest-2",
    stack_size = 50
  },
  {
    type = "recipe",
    name = "nullius-small-storage-chest-1",
    enabled = false,
    category = "medium-crafting",
    always_show_made_in = true,
    energy_required = 4,
    ingredients = {
      {"iron-chest", 1},
      {"programmable-speaker", 1},
      {"arithmetic-combinator", 1}
    },
    result = "nullius-small-storage-chest-1"
  },
  {
    type = "recipe",
    name = "nullius-large-storage-chest-1",
    enabled = false,
    category = "medium-crafting",
    always_show_made_in = true,
    energy_required = 6,
    ingredients = {
      {"nullius-small-storage-chest-1", 1},
      {"nullius-large-chest-1", 1},
      {"nullius-sensor-1", 1},
      {"red-wire", 4}
    },
    result = "nullius-large-storage-chest-1"
  },
  {
    type = "recipe",
    name = "nullius-small-storage-chest-2",
    enabled = false,
    always_show_made_in = true,
    category = "medium-crafting",
    energy_required = 8,
    ingredients = {
      {"nullius-small-storage-chest-1", 1},
      {"steel-chest", 1},
      {"nullius-relay-2", 1},
      {"nullius-processor-2", 1}
    },
    result = "logistic-chest-storage"
  },
  {
    type = "recipe",
    name = "nullius-large-storage-chest-2",
    enabled = false,
    always_show_made_in = true,
	show_amount_in_title = false,
    always_show_products = true,
    category = "medium-crafting",
    energy_required = 20,
    ingredients = {
      {"nullius-large-storage-chest-1", 1},
      {"logistic-chest-storage", 1},
      {"nullius-large-chest-2", 1},
      {"express-stack-filter-inserter", 1}
    },
    result = "nullius-large-storage-chest-2",
	result_count = 2
  },

  {
    type = "item",
    name = "nullius-small-supply-chest-1",
    icons = {
      {
        icon = ENTICONPATH .. "logistic-small.png",
        icon_size = 64
      },
      {
        icon = "__boblogistics__/graphics/icons/logistic-chest-port.png",
        icon_size = 32,
        scale = 0.6875
      },
      {
        icon = "__boblogistics__/graphics/entity/logistic-chest/logistic-chest-mask.png",
        tint = {r = 0.9, g = 0.2, b = 0.1},
        icon_size = 32,
        scale = 0.6875
      }
    },
    subgroup = "small-logistic-storage",
    order = "nullius-cb",
    place_result = "nullius-small-supply-chest-1",
    stack_size = 100
  },
  {
    type = "item",
    name = "nullius-large-supply-chest-1",
    icons = {
      {
        icon = ENTICONPATH .. "logistic-large.png",
        icon_size = 64
      },
      {
        icon = "__boblogistics__/graphics/icons/logistic-chest-port.png",
        icon_size = 32,
        scale = 0.875
      },
      {
        icon = "__boblogistics__/graphics/entity/logistic-chest/logistic-chest-mask.png",
        tint = {r = 0.9, g = 0.2, b = 0.1},
        icon_size = 32,
        scale = 0.875
      }
    },
    subgroup = "large-logistic-storage",
    order = "nullius-cb",
    place_result = "nullius-large-supply-chest-1",
    stack_size = 50
  },
  {
    type = "item",
    name = "nullius-large-supply-chest-2",
    icons = {{
      icon = "__base__/graphics/icons/logistic-chest-passive-provider.png",
      icon_size = 64,
      icon_mipmaps = 4
    }},
    subgroup = "large-logistic-storage",
    order = "nullius-cc",
    place_result = "nullius-large-supply-chest-2",
    stack_size = 50
  },
  {
    type = "recipe",
    name = "nullius-small-supply-chest-1",
    enabled = false,
    category = "medium-crafting",
    always_show_made_in = true,
    energy_required = 2,
    ingredients = {
      {"nullius-small-storage-chest-1", 1},
      {"red-wire", 1}
    },
    result = "nullius-small-supply-chest-1"
  },
  {
    type = "recipe",
    name = "nullius-large-supply-chest-1",
    enabled = false,
    category = "medium-crafting",
    always_show_made_in = true,
    energy_required = 3,
    ingredients = {
      {"nullius-large-storage-chest-1", 1},
      {"nullius-small-supply-chest-1", 1}
    },
    result = "nullius-large-supply-chest-1"
  },
  {
    type = "recipe",
    name = "nullius-small-supply-chest-2",
    enabled = false,
    always_show_made_in = true,
    category = "medium-crafting",
    energy_required = 4,
    ingredients = {
      {"nullius-small-supply-chest-1", 1},
      {"logistic-chest-storage", 1}
    },
    result = "logistic-chest-passive-provider"
  },
  {
    type = "recipe",
    name = "nullius-large-supply-chest-2",
    enabled = false,
    always_show_made_in = true,
    category = "medium-crafting",
    energy_required = 6,
    ingredients = {
      {"nullius-large-supply-chest-1", 1},
      {"nullius-large-storage-chest-2", 1}
    },
    result = "nullius-large-supply-chest-2"
  },

  {
    type = "item",
    name = "nullius-small-demand-chest-1",
    icons = {
      {
        icon = ENTICONPATH .. "logistic-small.png",
        icon_size = 64
      },
      {
        icon = "__boblogistics__/graphics/icons/logistic-chest-port.png",
        icon_size = 32,
        scale = 0.6875
      },
      {
        icon = "__boblogistics__/graphics/entity/logistic-chest/logistic-chest-mask.png",
        tint = {r = 98, g = 203, b = 230},
        icon_size = 32,
        scale = 0.6875
      }
    },
    subgroup = "small-logistic-storage",
    order = "nullius-db",
    place_result = "nullius-small-demand-chest-1",
    stack_size = 100
  },
  {
    type = "item",
    name = "nullius-large-demand-chest-1",
    icons = {
      {
        icon = ENTICONPATH .. "logistic-large.png",
        icon_size = 64
      },
      {
        icon = "__boblogistics__/graphics/icons/logistic-chest-port.png",
        icon_size = 32,
        scale = 0.875
      },
      {
        icon = "__boblogistics__/graphics/entity/logistic-chest/logistic-chest-mask.png",
        tint = {r = 98, g = 203, b = 230},
        icon_size = 32,
        scale = 0.875
      }
    },
    subgroup = "large-logistic-storage",
    order = "nullius-db",
    place_result = "nullius-large-demand-chest-1",
    stack_size = 50
  },
  {
    type = "item",
    name = "nullius-large-demand-chest-2",
    icons = {{
      icon = "__base__/graphics/icons/logistic-chest-requester.png",
      icon_size = 64,
      icon_mipmaps = 4
    }},
    subgroup = "large-logistic-storage",
    order = "nullius-dc",
    place_result = "nullius-large-demand-chest-2",
    stack_size = 50
  },
  {
    type = "recipe",
    name = "nullius-small-demand-chest-1",
    enabled = false,
    category = "medium-crafting",
    always_show_made_in = true,
    energy_required = 2,
    ingredients = {
      {"nullius-small-storage-chest-1", 1},
      {"nullius-sensor-1", 1}
    },
    result = "nullius-small-demand-chest-1"
  },
  {
    type = "recipe",
    name = "nullius-large-demand-chest-1",
    enabled = false,
    category = "medium-crafting",
    always_show_made_in = true,
    energy_required = 3,
    ingredients = {
      {"nullius-large-storage-chest-1", 1},
      {"nullius-small-demand-chest-1", 1}
    },
    result = "nullius-large-demand-chest-1"
  },
  {
    type = "recipe",
    name = "nullius-small-demand-chest-2",
    enabled = false,
    always_show_made_in = true,
    category = "medium-crafting",
    energy_required = 4,
    ingredients = {
      {"nullius-small-demand-chest-1", 1},
      {"logistic-chest-storage", 1}
    },
    result = "logistic-chest-requester"
  },
  {
    type = "recipe",
    name = "nullius-large-demand-chest-2",
    enabled = false,
    always_show_made_in = true,
    category = "medium-crafting",
    energy_required = 6,
    ingredients = {
      {"nullius-large-demand-chest-1", 1},
      {"nullius-large-storage-chest-2", 1}
    },
    result = "nullius-large-demand-chest-2"
  },

  {
    type = "item",
    name = "nullius-small-buffer-chest-1",
    icons = {
      {
        icon = ENTICONPATH .. "logistic-small.png",
        icon_size = 64
      },
      {
        icon = "__boblogistics__/graphics/icons/logistic-chest-port.png",
        icon_size = 32,
        scale = 0.6875
      },
      {
        icon = "__boblogistics__/graphics/entity/logistic-chest/logistic-chest-mask.png",
        tint = {r = 0.2, g = 0.9, b = 0.1},
        icon_size = 32,
        scale = 0.6875
      }
    },
    subgroup = "small-logistic-storage",
    order = "nullius-eb",
    place_result = "nullius-small-buffer-chest-1",
    stack_size = 100
  },
  {
    type = "item",
    name = "nullius-large-buffer-chest-1",
    icons = {
      {
        icon = ENTICONPATH .. "logistic-large.png",
        icon_size = 64
      },
      {
        icon = "__boblogistics__/graphics/icons/logistic-chest-port.png",
        icon_size = 32,
        scale = 0.875
      },
      {
        icon = "__boblogistics__/graphics/entity/logistic-chest/logistic-chest-mask.png",
        tint = {r = 0.2, g = 0.9, b = 0.1},
        icon_size = 32,
        scale = 0.875
      }
    },
    subgroup = "large-logistic-storage",
    order = "nullius-eb",
    place_result = "nullius-large-buffer-chest-1",
    stack_size = 50
  },
  {
    type = "item",
    name = "nullius-large-buffer-chest-2",
    icons = {{
      icon = "__base__/graphics/icons/logistic-chest-buffer.png",
      icon_size = 64,
      icon_mipmaps = 4
    }},
    subgroup = "large-logistic-storage",
    order = "nullius-ec",
    place_result = "nullius-large-buffer-chest-2",
    stack_size = 50
  },
  {
    type = "recipe",
    name = "nullius-small-buffer-chest-1",
    enabled = false,
    category = "medium-crafting",
    always_show_made_in = true,
    energy_required = 2,
    ingredients = {
      {"nullius-small-demand-chest-1", 1},
      {"green-wire", 2}
    },
    result = "nullius-small-buffer-chest-1"
  },
  {
    type = "recipe",
    name = "nullius-large-buffer-chest-1",
    enabled = false,
    category = "medium-crafting",
    always_show_made_in = true,
    energy_required = 3,
    ingredients = {
      {"nullius-large-storage-chest-1", 1},
      {"nullius-small-buffer-chest-1", 1}
    },
    result = "nullius-large-buffer-chest-1"
  },
  {
    type = "recipe",
    name = "nullius-small-buffer-chest-2",
    enabled = false,
    always_show_made_in = true,
    category = "medium-crafting",
    energy_required = 4,
    ingredients = {
      {"nullius-small-buffer-chest-1", 1},
      {"logistic-chest-storage", 1}
    },
    result = "logistic-chest-buffer"
  },
  {
    type = "recipe",
    name = "nullius-large-buffer-chest-2",
    enabled = false,
    always_show_made_in = true,
    category = "medium-crafting",
    energy_required = 6,
    ingredients = {
      {"nullius-large-buffer-chest-1", 1},
      {"nullius-large-storage-chest-2", 1}
    },
    result = "nullius-large-buffer-chest-2"
  },

  {
    type = "item",
    name = "nullius-small-dispatch-chest-1",
    icons = {
      {
        icon = ENTICONPATH .. "logistic-small.png",
        icon_size = 64
      },
      {
        icon = "__boblogistics__/graphics/icons/logistic-chest-port.png",
        icon_size = 32,
        scale = 0.6875
      },
      {
        icon = "__boblogistics__/graphics/entity/logistic-chest/logistic-chest-mask.png",
        tint = {r = 0.7, g = 0.1, b = 0.9},
        icon_size = 32,
        scale = 0.6875
      }
    },
    subgroup = "small-logistic-storage",
    order = "nullius-fb",
    place_result = "nullius-small-dispatch-chest-1",
    stack_size = 100
  },
  {
    type = "item",
    name = "nullius-large-dispatch-chest-1",
    icons = {
      {
        icon = ENTICONPATH .. "logistic-large.png",
        icon_size = 64
      },
      {
        icon = "__boblogistics__/graphics/icons/logistic-chest-port.png",
        icon_size = 32,
        scale = 0.875
      },
      {
        icon = "__boblogistics__/graphics/entity/logistic-chest/logistic-chest-mask.png",
        tint = {r = 0.7, g = 0.1, b = 0.9},
        icon_size = 32,
        scale = 0.875
      }
    },
    subgroup = "large-logistic-storage",
    order = "nullius-fb",
    place_result = "nullius-large-dispatch-chest-1",
    stack_size = 50
  },
  {
    type = "item",
    name = "nullius-large-dispatch-chest-2",
    icons = {{
      icon = "__base__/graphics/icons/logistic-chest-active-provider.png",
      icon_size = 64,
      icon_mipmaps = 4
    }},
    subgroup = "large-logistic-storage",
    order = "nullius-fc",
    place_result = "nullius-large-dispatch-chest-2",
    stack_size = 50
  },
  {
    type = "recipe",
    name = "nullius-small-dispatch-chest-1",
    enabled = false,
    category = "medium-crafting",
    always_show_made_in = true,
    energy_required = 2,
    ingredients = {
      {"nullius-small-supply-chest-1", 1},
      {"green-wire", 1}
    },
    result = "nullius-small-dispatch-chest-1"
  },
  {
    type = "recipe",
    name = "nullius-large-dispatch-chest-1",
    enabled = false,
    category = "medium-crafting",
    always_show_made_in = true,
    energy_required = 3,
    ingredients = {
      {"nullius-large-storage-chest-1", 1},
      {"nullius-small-dispatch-chest-1", 1}
    },
    result = "nullius-large-dispatch-chest-1"
  },
  {
    type = "recipe",
    name = "nullius-small-dispatch-chest-2",
    enabled = false,
    always_show_made_in = true,
    category = "medium-crafting",
    energy_required = 4,
    ingredients = {
      {"nullius-small-dispatch-chest-1", 1},
      {"logistic-chest-storage", 1}
    },
    result = "logistic-chest-active-provider"
  },
  {
    type = "recipe",
    name = "nullius-large-dispatch-chest-2",
    enabled = false,
    always_show_made_in = true,
    category = "medium-crafting",
    energy_required = 6,
    ingredients = {
      {"nullius-large-dispatch-chest-1", 1},
      {"nullius-large-storage-chest-2", 1}
    },
    result = "nullius-large-dispatch-chest-2"
  },

  {
    type = "item",
    name = "nullius-grid-battery-1",
    icons = {{
      icon = "__base__/graphics/icons/accumulator.png",
      icon_size = 64,
      icon_mipmaps = 4,
      tint = {0.9, 0.85, 0.7}
    }},
    subgroup = "energy",
    order = "nullius-fb",
    place_result = "nullius-grid-battery-1",
    stack_size = 100
  },
  {
    type = "item",
    name = "nullius-grid-battery-2",
    icons = {{
      icon = "__base__/graphics/icons/accumulator.png",
      icon_size = 64,
      icon_mipmaps = 4
    }},
    subgroup = "energy",
    order = "nullius-fc",
    place_result = "nullius-grid-battery-2",
    stack_size = 100
  },
  {
    type = "item",
    name = "nullius-grid-battery-3",
    icons = {{
      icon = "__base__/graphics/icons/accumulator.png",
      icon_size = 64,
      icon_mipmaps = 4,
      tint = {1, 0.85, 1}
    }},
    subgroup = "energy",
    order = "nullius-fd",
    place_result = "nullius-grid-battery-3",
    stack_size = 100
  },
  {
    type = "recipe",
    name = "nullius-grid-battery-1",
    enabled = false,
    category = "large-crafting",
    always_show_made_in = true,
    energy_required = 6,
    ingredients = {
      {"nullius-steel-sheet", 2},
      {"nullius-battery-1", 3},
      {"power-switch", 1},
      {"nullius-sensor-1", 1},
      {"nullius-capacitor", 3},
      {"nullius-transformer", 1}
    },
    result = "nullius-grid-battery-1"
  },
  {
    type = "recipe",
    name = "nullius-boxed-grid-battery-1",
    enabled = false,
    category = "huge-assembly",
    subgroup = "boxed-renewable",
    always_show_made_in = true,
    energy_required = 30,
    ingredients = {
      {"nullius-box-steel-sheet", 2},
      {"nullius-box-battery-1", 3},
      {"nullius-box-power-switch", 1},
      {"nullius-box-sensor-1", 1},
      {"nullius-box-capacitor", 3},
      {"nullius-box-transformer", 1}
    },
    result = "nullius-box-grid-battery-1"
  },
  {
    type = "recipe",
    name = "nullius-grid-battery-2",
    enabled = false,
    always_show_made_in = true,
    category = "large-crafting",
    energy_required = 15,
    ingredients = {
      {"nullius-grid-battery-1", 2},
      {"nullius-fiberglass", 3},
      {"nullius-battery-2", 4},
      {"nullius-sensor-2", 1},
      {"nullius-power-pole-4", 1},
      {"nullius-heat-pipe-2", 2}
    },
    result = "nullius-grid-battery-2"
  },
  {
    type = "recipe",
    name = "nullius-boxed-grid-battery-2",
    enabled = false,
    always_show_made_in = true,
    category = "huge-assembly",
    subgroup = "boxed-renewable",
    energy_required = 75,
    ingredients = {
      {"nullius-box-grid-battery-1", 2},
      {"nullius-box-fiberglass", 3},
      {"nullius-box-battery-2", 4},
      {"nullius-box-sensor-2", 1},
      {"nullius-box-power-pole-4", 1},
      {"nullius-box-heat-pipe-2", 2}
    },
    result = "nullius-box-grid-battery-2"
  },
  {
    type = "recipe",
    name = "nullius-grid-battery-3",
    enabled = false,
    always_show_made_in = true,
    category = "large-crafting",
    energy_required = 50,
    ingredients = {
      {"nullius-box-grid-battery-2", 1},
      {"nullius-battery-3", 3}
    },
    result = "nullius-grid-battery-3"
  },

  {
    type = "item",
    name = "nullius-lab-1",
    icons = {{
      icon = ENTICONPATH .. "lab1.png",
      icon_size = 64
    }},
    subgroup = "laboratory",
    order = "nullius-bb",
    place_result = "nullius-lab-1",
    stack_size = 10
  },
  {
    type = "recipe",
    name = "nullius-lab-1",
    enabled = false,
    category = "large-crafting",
    always_show_made_in = true,
    energy_required = 20,
    ingredients = {
      {"nullius-aluminum-sheet", 4},
      {"nullius-glass", 5},
      {"decider-combinator", 6},
      {"inserter", 3},
      {"small-lamp", 2}
    },
    result = "nullius-lab-1"
  },

  {
    type = "item",
    name = "nullius-lab-2",
    icons = {{
      icon = ENTICONPATH .. "lab2.png",
      icon_size = 64
    }},
    subgroup = "laboratory",
    order = "nullius-bc",
    place_result = "nullius-lab-2",
    stack_size = 10
  },
  {
    type = "recipe",
    name = "nullius-lab-2",
    enabled = false,
    category = "large-crafting",
    always_show_made_in = true,
    energy_required = 45,
    ingredients = {
      {"nullius-chemical-plant-2", 1},
      {"radar", 1},
      {"nullius-beacon-1", 1},
      {"nullius-processor-1", 8},
      {"stack-filter-inserter", 2},
      {"stone-wall", 6},
      {"gate", 2}
    },
    result = "nullius-lab-2"
  },

  {
    type = "item",
    name = "nullius-lab-3",
    icons = {{
      icon = ENTICONPATH .. "lab3.png",
      icon_size = 64
    }},
    subgroup = "laboratory",
    order = "nullius-bd",
    place_result = "nullius-lab-3",
    stack_size = 10
  },
  {
    type = "recipe",
    name = "nullius-lab-3",
    enabled = false,
    category = "large-crafting",
    always_show_made_in = true,
    energy_required = 90,
    ingredients = {
      {"nullius-lab-2", 2},
      {"nullius-nanofabricator-2", 1},
      {"nullius-sensor-node-3", 1},
      {"nullius-box-processor-2", 2},
      {"nullius-logistic-bot-3", 2}
    },
    result = "nullius-lab-3"
  },

  {
    type = "item",
    name = "nullius-biology-lab",
    icons = {{
      icon = ENTICONPATH .. "lab4.png",
      icon_size = 64
    }},
    subgroup = "laboratory",
    order = "nullius-be",
    place_result = "nullius-biology-lab",
    stack_size = 5
  },
  {
    type = "recipe",
    name = "nullius-biology-lab",
    enabled = false,
    always_show_made_in = true,
    category = "huge-crafting",
    energy_required = 150,
    ingredients = {
      {"nullius-lab-2", 3},
	  {"nullius-sensor-node-2", 1},
      {"nullius-nanofabricator-1", 1},
	  {"nullius-logistic-bot-2", 2},
      {"nullius-box-insulation", 10}
    },
    result = "nullius-biology-lab"
  },

  {
    type = "item",
    name = "nullius-beacon-1",
    icons = {{
      icon = ENTICONPATH .. "beacon1s.png",
      icon_size = 64,
      tint = {0.8, 0.9, 0.7}
    }},
    subgroup = "beacon",
    order = "nullius-bb",
    place_result = "nullius-beacon-1",
    stack_size = 50
  },
  {
    type = "recipe",
    name = "nullius-beacon-1",
    enabled = false,
    category = "large-crafting",
    always_show_made_in = true,
    energy_required = 20,
    ingredients = {
      {"programmable-speaker", 1},
      {"constant-combinator", 2},
      {"medium-electric-pole", 1},
      {"nullius-iron-sheet", 2},
      {"nullius-capacitor", 1}
    },
    result = "nullius-beacon-1"
  },
  {
    type = "recipe",
    name = "nullius-boxed-beacon-1",
    localised_name = {"recipe-name.nullius-boxed", {"entity-name.nullius-beacon-1"}},
    icons = {
      {
        icon = ICONPATH .. "crate.png",
        icon_size = 64
      },
      {
        icon = ENTICONPATH .. "beacon1s.png",
        icon_size = 64,
        tint = {0.9, 1, 0.8},
        scale = 0.45
      }
    },
    enabled = false,
    always_show_made_in = true,
    show_amount_in_title = false,
    always_show_products = true,
    category = "huge-assembly",
    subgroup = "boxed-beacon",
    order = "nullius-bb",
    energy_required = 90,
    ingredients = {
      {"nullius-box-antenna", 1},
      {"nullius-box-memory-circuit", 2},
      {"nullius-box-power-pole-2", 1},
      {"nullius-box-iron-sheet", 2},
      {"nullius-box-capacitor", 1}
    },
    result = "nullius-beacon-1",
    result_count = 5
  },

  {
    type = "item",
    name = "nullius-beacon-2",
    icons = {{
      icon = ENTICONPATH .. "beacon2s.png",
      tint = {0.9, 0.8, 1},
      icon_size = 64
    }},
    subgroup = "beacon",
    order = "nullius-bc",
    place_result = "nullius-beacon-2",
    stack_size = 50
  },
  {
    type = "recipe",
    name = "nullius-beacon-2",
    enabled = false,
    category = "large-crafting",
    always_show_made_in = true,
    energy_required = 30,
    ingredients = {
      {"nullius-beacon-1", 1},
      {"nullius-sensor-2", 1},
      {"nullius-optical-cable", 3},
      {"nullius-relay-1", 1},
      {"substation", 1}
    },
    result = "nullius-beacon-2"
  },
  {
    type = "recipe",
    name = "nullius-boxed-beacon-2",
    localised_name = {"recipe-name.nullius-boxed", {"entity-name.nullius-beacon-2"}},
    icons = {
      {
        icon = ICONPATH .. "crate.png",
        icon_size = 64
      },
      {
        icon = ENTICONPATH .. "beacon2s.png",
        icon_size = 64,
        tint = {0.9, 0.8, 1},
        scale = 0.45
      }
    },
    enabled = false,
    always_show_made_in = true,
    show_amount_in_title = false,
    always_show_products = true,
    category = "huge-assembly",
    subgroup = "boxed-beacon",
    order = "nullius-bc",
    energy_required = 150,
    ingredients = {
      {"nullius-beacon-1", 5},
      {"nullius-box-sensor-2", 1},
      {"nullius-box-optical-cable", 3},
      {"nullius-box-relay-1", 1},
      {"substation", 5}
    },
    result = "nullius-beacon-2",
    result_count = 5
  },

  {
    type = "item",
    name = "nullius-beacon-3",
    icons = {{
      icon = ENTICONPATH .. "beacon3s.png",
      icon_size = 64
    }},
    subgroup = "beacon",
    order = "nullius-bd",
    place_result = "nullius-beacon-3",
    stack_size = 50
  },
  {
    type = "recipe",
    name = "nullius-beacon-3",
    enabled = false,
    always_show_made_in = true,
	show_amount_in_title = false,
    always_show_products = true,
    category = "large-crafting",
    energy_required = 100,
    ingredients = {
      {"nullius-beacon-2", 2},
      {"nullius-processor-2", 2},
      {"nullius-relay-3", 1},
      {"nullius-substation-2", 1}
    },
    result = "nullius-beacon-3",
	result_count = 2
  },
  {
    type = "recipe",
    name = "nullius-boxed-beacon-3",
    localised_name = {"recipe-name.nullius-boxed", {"entity-name.nullius-beacon-3"}},
    icons = {
      {
        icon = ICONPATH .. "crate.png",
        icon_size = 64
      },
      {
        icon = ENTICONPATH .. "beacon3s.png",
        icon_size = 64,
        scale = 0.45
      }
    },
    enabled = false,
    always_show_made_in = true,
    show_amount_in_title = false,
    always_show_products = true,
    category = "huge-assembly",
    subgroup = "boxed-beacon",
    order = "nullius-bd",
    energy_required = 500,
    ingredients = {
      {"nullius-beacon-2", 10},
      {"nullius-box-processor-2", 2},
      {"nullius-box-relay-3", 1},
      {"nullius-substation-2", 5}
    },
    result = "nullius-beacon-3",
    result_count = 10
  },

  {
    type = "item",
    name = "nullius-large-beacon-1",
    icons = {{
      icon = ENTICONPATH .. "beacon1b.png",
      tint = {0.9, 0.8, 1},
      icon_size = 64
    }},
    subgroup = "beacon",
    order = "nullius-cb",
    place_result = "nullius-large-beacon-1",
    stack_size = 20
  },
  {
    type = "item",
    name = "nullius-large-beacon-2",
    icons = {{
      icon =  "__base__/graphics/icons/beacon.png",
      icon_size = 64,
      icon_mipmaps = 4
    }},
    subgroup = "beacon",
    order = "nullius-cc",
    place_result = "nullius-large-beacon-2",
    stack_size = 20
  },
  {
    type = "recipe",
    name = "nullius-large-beacon-1",
    enabled = false,
    always_show_made_in = true,
	show_amount_in_title = false,
    always_show_products = true,
    category = "large-crafting",
    energy_required = 120,
    ingredients = {
      {"nullius-beacon-2", 3},
      {"nullius-sensor-node-2", 1},
      {"nullius-relay-2", 1},
      {"nullius-productivity-module-1", 1}
    },
    result = "nullius-large-beacon-1",
	result_count = 2
  },
  {
    type = "recipe",
    name = "nullius-large-beacon-2",
    enabled = false,
    always_show_made_in = true,
	show_amount_in_title = false,
    always_show_products = true,
    category = "large-crafting",
    energy_required = 180,
    ingredients = {
      {"nullius-large-beacon-1", 3},
      {"nullius-beacon-3", 5},
      {"nullius-telekinesis-field-2", 1},
      {"nullius-sensor-node-3", 1},
      {"nullius-productivity-module-2", 1}
    },
    result = "nullius-large-beacon-2",
	result_count = 3
  },
  {
    type = "recipe",
    name = "nullius-legacy-large-beacon-2",
    enabled = false,
    always_show_made_in = true,
	hidden = true,
    allow_decomposition = false,
    allow_as_intermediate = false,
    category = "large-crafting",
    energy_required = 120,
    ingredients = {
      {"nullius-large-beacon-1", 1},
      {"nullius-beacon-3", 3},
      {"nullius-sensor-node-3", 1},
      {"nullius-productivity-module-2", 1}
    },
    result = "nullius-large-beacon-2"
  },

  {
    type = "recipe",
    name = "nullius-sensor-node-1",
    enabled = false,
    category = "large-crafting",
    always_show_made_in = true,
    energy_required = 10,
    ingredients = {
      {"nullius-sensor-1", 2},
      {"programmable-speaker", 1},
      {"nullius-glass", 3},
      {"nullius-iron-sheet", 3},
      {"nullius-motor-2", 1}
    },
    result = "radar"
  },
  {
    type = "recipe",
    name = "nullius-boxed-sensor-node-1",
    localised_name = {"recipe-name.nullius-boxed", {"entity-name.nullius-sensor-node-1"}},
    icons = {
      {
        icon = ICONPATH .. "crate.png",
        icon_size = 64
      },
      {
        icon = "__base__/graphics/icons/radar.png",
        icon_size = 64,
        tint = {0.9, 0.9, 0.65},
        scale = 0.45
      }
    },
    enabled = false,
    always_show_made_in = true,
    show_amount_in_title = false,
    always_show_products = true,
    category = "huge-assembly",
    subgroup = "boxed-rail",
    order = "nullius-sb",
    energy_required = 45,
    ingredients = {
      {"nullius-box-sensor-1", 2},
      {"nullius-box-antenna", 1},
      {"nullius-box-glass", 3},
      {"nullius-box-iron-sheet", 3},
      {"nullius-box-motor-2", 1}
    },
    result = "radar",
    result_count = 5
  },

  {
    type = "item",
    name = "nullius-sensor-node-2",
    icons = {{
      icon = "__base__/graphics/icons/radar.png",
      icon_size = 64,
      icon_mipmaps = 4,
      tint = {0.8, 0.8, 1}
    }},
    subgroup = "laboratory",
    order = "nullius-dc",
    place_result = "nullius-sensor-node-2",
    stack_size = 20
  },
  {
    type = "recipe",
    name = "nullius-sensor-node-2",
    enabled = false,
    category = "large-crafting",
    always_show_made_in = true,
    energy_required = 20,
    ingredients = {
      {"radar", 1},
      {"nullius-sensor-2", 2},
      {"nullius-hard-glass", 4},
      {"nullius-fiberglass", 4},
      {"nullius-optical-cable", 6}
    },
    result = "nullius-sensor-node-2"
  },
  {
    type = "recipe",
    name = "nullius-boxed-sensor-node-2",
    localised_name = {"recipe-name.nullius-boxed", {"entity-name.nullius-sensor-node-2"}},
    icons = {
      {
        icon = ICONPATH .. "crate.png",
        icon_size = 64
      },
      {
        icon = "__base__/graphics/icons/radar.png",
        icon_size = 64,
        tint = {0.8, 0.8, 1},
        scale = 0.45
      }
    },
    enabled = false,
    always_show_made_in = true,
    show_amount_in_title = false,
    always_show_products = true,
    category = "huge-assembly",
    subgroup = "boxed-rail",
    order = "nullius-sc",
    energy_required = 100,
    ingredients = {
      {"radar", 5},
      {"nullius-box-sensor-2", 3},
      {"nullius-box-hard-glass", 4},
      {"nullius-box-fiberglass", 4},
      {"nullius-box-optical-cable", 6}
    },
    result = "nullius-sensor-node-2",
    result_count = 5
  },

  {
    type = "item",
    name = "nullius-sensor-node-3",
    icons = {{
      icon = "__base__/graphics/icons/radar.png",
      icon_size = 64,
      icon_mipmaps = 4
    }},
    subgroup = "laboratory",
    order = "nullius-dd",
    place_result = "nullius-sensor-node-3",
    stack_size = 20
  },
  {
    type = "recipe",
    name = "nullius-sensor-node-3",
    enabled = false,
    category = "large-crafting",
    always_show_made_in = true,
    energy_required = 40,
    ingredients = {
      {"nullius-sensor-node-2", 2},
      {"nullius-beacon-2", 1},
      {"nullius-bearing", 2},
      {"nullius-yield-module-3", 1},
      {"nullius-box-reinforced-concrete", 1}
    },
    result = "nullius-sensor-node-3"
  },

  {
    type = "recipe",
    name = "nullius-logic-circuit",
    enabled = false,
    show_amount_in_title = false,
    always_show_products = true,
    category = "tiny-assembly",
    energy_required = 5,
    ingredients = {
      {"nullius-plastic", 3},
      {"nullius-aluminum-wire", 4},
      {"nullius-polycrystalline-silicon", 2},
      {"nullius-graphite", 1}
    },
    result = "decider-combinator",
    result_count = 3
  },
  {
    type = "recipe",
    name = "nullius-boxed-logic-circuit",
    enabled = false,
    show_amount_in_title = false,
    always_show_products = true,
    category = "medium-only-assembly",
    subgroup = "boxed-circuit",
    order = "nullius-db",
    energy_required = 25,
    ingredients = {
      {"nullius-box-plastic", 3},
      {"nullius-box-aluminum-wire", 4},
      {"nullius-box-polycrystalline-silicon", 2},
      {"nullius-box-graphite", 1}
    },
    result = "nullius-box-logic-circuit",
    result_count = 3
  },
  {
    type = "recipe",
    name = "nullius-logic-circuit-2",
    localised_name = {"", {"item-name.nullius-box", {"entity-name.nullius-logic-circuit"}}, " ", 2},
    icons = {
      {
        icon = ICONPATH .. "crate.png",
        icon_size = 64
      },
      {
        icon = "__base__/graphics/icons/decider-combinator.png",
        icon_size = 64,
        scale = 0.33
      }
    },
    enabled = false,
    show_amount_in_title = false,
    always_show_products = true,
    category = "nanotechnology",
    subgroup = "boxed-circuit",
    order = "nullius-dc",
    energy_required = 25,
    ingredients = {
      {type="item", name="nullius-box-plastic", amount=2},
      {type="item", name="nullius-box-copper-wire", amount=1},
      {type="item", name="nullius-box-monocrystalline-silicon", amount=1},
      {type="item", name="nullius-box-graphite", amount=1},
      {type="fluid", name="nullius-argon", amount=2, fluidbox_index=1}
    },
    result = "nullius-box-logic-circuit",
    result_count = 5
  },
  {
    type = "recipe",
    name = "nullius-memory-circuit",
    enabled = false,
    category = "tiny-crafting",
    always_show_made_in = true,
    show_amount_in_title = false,
    always_show_products = true,
    energy_required = 7,
    ingredients = {
      {"decider-combinator", 2},
      {"nullius-capacitor", 3}
    },
    result = "constant-combinator",
    result_count = 4
  },
  {
    type = "recipe",
    name = "nullius-boxed-memory-circuit",
    enabled = false,
    category = "medium-only-assembly",
    subgroup = "boxed-circuit",
    order = "nullius-fb",
    always_show_made_in = true,
    show_amount_in_title = false,
    always_show_products = true,
    energy_required = 35,
    ingredients = {
      {"nullius-box-logic-circuit", 2},
      {"nullius-box-capacitor", 3}
    },
    result = "nullius-box-memory-circuit",
    result_count = 4
  },
  {
    type = "recipe",
    name = "nullius-memory-circuit-2",
    localised_name = {"", {"item-name.nullius-box", {"entity-name.nullius-memory-circuit"}}, " ", 2},
    icons = {
      {
        icon = ICONPATH .. "crate.png",
        icon_size = 64
      },
      {
        icon = "__base__/graphics/icons/constant-combinator.png",
        icon_size = 64,
        scale = 0.33
      }
    },
    enabled = false,
    category = "nanotechnology",
    subgroup = "boxed-circuit",
    order = "nullius-fc",
    always_show_made_in = true,
    show_amount_in_title = false,
    always_show_products = true,
    energy_required = 25,
    ingredients = {
      {type="item", name="nullius-box-logic-circuit", amount=2},
      {type="item", name="nullius-box-capacitor", amount=3},
      {type="fluid", name="nullius-argon", amount=1, fluidbox_index=1}
    },
    result = "nullius-box-memory-circuit",
    result_count = 5
  },
  {
    type = "recipe",
    name = "nullius-arithmetic-circuit",
    enabled = false,
    category = "tiny-crafting",
    always_show_made_in = true,
    energy_required = 3,
    ingredients = {
      {"decider-combinator", 1},
      {"constant-combinator", 1},
      {"nullius-aluminum-wire", 1}
    },
    result = "arithmetic-combinator"
  },
  {
    type = "recipe",
    name = "nullius-boxed-arithmetic-circuit",
    enabled = false,
    category = "medium-only-assembly",
    subgroup = "boxed-circuit",
    always_show_made_in = true,
    energy_required = 15,
    ingredients = {
      {"nullius-box-logic-circuit", 1},
      {"nullius-box-memory-circuit", 1},
      {"nullius-box-aluminum-wire", 1}
    },
    result = "nullius-box-arithmetic-circuit"
  },
  {
    type = "recipe",
    name = "nullius-antenna",
    enabled = false,
    category = "small-crafting",
    always_show_made_in = true,
    energy_required = 6,
    ingredients = {
      {"nullius-aluminum-rod", 2},
      {"red-wire", 1},
      {"nullius-rubber", 1},
      {"nullius-capacitor", 1}
    },
    result = "programmable-speaker"
  },
  {
    type = "recipe",
    name = "nullius-boxed-antenna",
    enabled = false,
    category = "medium-only-assembly",
    subgroup = "boxed-circuit",
    always_show_made_in = true,
    energy_required = 30,
    ingredients = {
      {"nullius-box-aluminum-rod", 2},
      {"nullius-box-red-wire", 1},
      {"nullius-box-rubber", 1},
      {"nullius-box-capacitor", 1}
    },
    result = "nullius-box-antenna"
  },

  {
    type = "item",
    name = "nullius-lamp-2",
    order = "nullius-bc",
    icons = {{ icon = ENTICONPATH .. "lamp2.png", icon_size = 64 }},
    subgroup = "railway",
    place_result = "nullius-lamp-2",
    stack_size = 50
  },
  {
    type = "recipe",
    name = "nullius-lamp-1a",
    enabled = false,
    always_show_made_in = true,
    show_amount_in_title = false,
    always_show_products = true,
    category = "small-crafting",
    energy_required = 5,
    ingredients = {
      {"nullius-graphite", 2},
      {"nullius-glass", 1},
      {"nullius-iron-sheet", 1}
    },
    result = "small-lamp"
  },
  {
    type = "recipe",
    name = "nullius-lamp-1b",
    localised_name = {"recipe-name.nullius-improved", {"entity-name.nullius-lamp-1"}},
    icons = {
      {
        icon = ENTICONPATH .. "lamp1.png",
        icon_size = 64
      },
      {
        icon = ICONPATH .. "carbon-fiber.png",
        icon_size = 128,
        scale = 0.15,
        shift = {8, -8}
      }
    },
    enabled = false,
    always_show_made_in = true,
    show_amount_in_title = false,
    always_show_products = true,
    category = "medium-crafting",
    energy_required = 12,
    ingredients = {
      {"nullius-carbon-fiber", 1},
      {"nullius-glass", 2},
      {"nullius-aluminum-sheet", 2}
    },
    result = "small-lamp",
    result_count = 5
  },
  {
    type = "recipe",
    name = "nullius-boxed-lamp-1",
    enabled = false,
    always_show_made_in = true,
    show_amount_in_title = false,
    always_show_products = true,
    category = "large-assembly",
    subgroup = "boxed-rail",
    energy_required = 60,
    ingredients = {
      {"nullius-box-carbon-fiber", 1},
      {"nullius-box-glass", 2},
      {"nullius-box-aluminum-sheet", 2}
    },
    result = "nullius-box-lamp-1",
    result_count = 5
  },
  {
    type = "recipe",
    name = "nullius-lamp-2",
    enabled = false,
    show_amount_in_title = false,
    always_show_products = true,
    always_show_made_in = true,
    category = "small-fluid-assembly",
    energy_required = 10,
    ingredients = {
      {type="item", name="small-lamp", amount=2},
      {type="item", name="nullius-hard-glass", amount=2},
      {type="item", name="nullius-sodium", amount=1},
      {type="item", name="nullius-ceramic-powder", amount=1},
      {type="item", name="green-wire", amount=2},
      {type="fluid", name="nullius-compressed-argon", amount=10, fluidbox_index=1}
    },
    result = "nullius-lamp-2",
    result_count = 2
  },
  {
    type = "recipe",
    name = "nullius-boxed-lamp-2",
    enabled = false,
    show_amount_in_title = false,
    always_show_products = true,
    always_show_made_in = true,
    category = "large-assembly",
    subgroup = "boxed-rail",
    energy_required = 50,
    ingredients = {
      {type="item", name="nullius-box-lamp-1", amount=2},
      {type="item", name="nullius-box-hard-glass", amount=2},
      {type="item", name="nullius-box-sodium", amount=1},
      {type="item", name="nullius-box-ceramic-powder", amount=1},
      {type="item", name="nullius-box-green-wire", amount=2},
      {type="fluid", name="nullius-compressed-argon", amount=50, fluidbox_index=1}
    },
    result = "nullius-box-lamp-2",
    result_count = 2
  },

  {
    type = "item",
    name = "nullius-power-pole-3",
    icons = {{
      icon = ENTICONPATH .. "pole3.png",
      icon_size = 64
    }},
    subgroup = "electric-pole",
    order = "nullius-bd",
    place_result = "nullius-power-pole-3",
    stack_size = 100
  },
  {
    type = "item",
    name = "nullius-power-pole-4",
    icons = {{
      icon = "__base__/graphics/icons/medium-electric-pole.png",
      icon_size = 64, icon_mipmaps = 4
    }},
    subgroup = "electric-pole",
    order = "nullius-be",
    place_result = "nullius-power-pole-4",
    stack_size = 100
  },
  {
    type = "item",
    name = "nullius-pylon-2",
    icons = {{
      icon = "__base__/graphics/icons/big-electric-pole.png",
      icon_size = 64, icon_mipmaps = 4
    }},
    subgroup = "electric-pole",
    order = "nullius-cc",
    place_result = "nullius-pylon-2",
    stack_size = 50
  },
  {
    type = "item",
    name = "nullius-pylon-3",
    icons = {{
      icon = ENTICONPATH .. "large-pole-3.png",
      icon_size = 64
    }},
    subgroup = "electric-pole",
    order = "nullius-cd",
    place_result = "nullius-pylon-3",
    stack_size = 50
  },
  {
    type = "item",
    name = "nullius-substation-2",
    icons = {{
      icon = "__base__/graphics/icons/substation.png",
      icon_size = 64, icon_mipmaps = 4
    }},
    subgroup = "electric-pole",
    order = "nullius-dc",
    place_result = "nullius-substation-2",
    stack_size = 50
  },
  {
    type = "item",
    name = "nullius-substation-3",
    icons = {{
      icon = ENTICONPATH .. "substation3.png",
      icon_size = 64
    }},
    subgroup = "electric-pole",
    order = "nullius-dd",
    place_result = "nullius-substation-3",
    stack_size = 50
  },

  {
    type = "recipe",
    name = "nullius-power-pole-1",
    enabled = false,
    always_show_made_in = true,
    category = "medium-crafting",
    energy_required = 2,
    ingredients = {
      {"nullius-iron-wire", 2},
      {"nullius-iron-rod", 1},
      {"nullius-plastic", 1}
    },
    result = "small-electric-pole"
  },
  {
    type = "recipe",
    name = "nullius-boxed-power-pole-1",
    enabled = false,
    show_amount_in_title = false,
    always_show_products = true,
    always_show_made_in = true,
    category = "large-assembly",
    subgroup = "boxed-power-pole",
    energy_required = 5,
    ingredients = {
      {"nullius-box-insulated-wire", 2},
      {"nullius-box-steel-rod", 1}
    },
    result = "nullius-box-power-pole-1",
    result_count = 2
  },
  {
    type = "recipe",
    name = "nullius-power-pole-2",
    enabled = false,
    category = "medium-crafting",
    always_show_made_in = true,
    energy_required = 3,
    ingredients = {
      {"small-electric-pole", 1},
      {"copper-cable", 2},
      {"nullius-aluminum-rod", 1}
    },
    result = "medium-electric-pole"
  },
  {
    type = "recipe",
    name = "nullius-boxed-power-pole-2",
    enabled = false,
    category = "large-assembly",
    subgroup = "boxed-power-pole",
    always_show_made_in = true,
    energy_required = 15,
    ingredients = {
      {"nullius-box-power-pole-1", 1},
      {"nullius-box-insulated-wire", 2},
      {"nullius-box-aluminum-rod", 1}
    },
    result = "nullius-box-power-pole-2"
  },
  {
    type = "recipe",
    name = "nullius-power-pole-3",
    enabled = false,
    category = "medium-crafting",
    always_show_made_in = true,
    energy_required = 5,
    ingredients = {
      {"medium-electric-pole", 1},
      {"red-wire", 3},
      {"nullius-fiberglass", 2},
      {"nullius-ceramic-powder", 1}
    },
    result = "nullius-power-pole-3"
  },
  {
    type = "recipe",
    name = "nullius-boxed-power-pole-3",
    enabled = false,
    category = "large-assembly",
    subgroup = "boxed-power-pole",
    always_show_made_in = true,
    energy_required = 25,
    ingredients = {
      {"nullius-box-power-pole-2", 1},
      {"nullius-box-red-wire", 3},
      {"nullius-box-fiberglass", 2},
      {"nullius-box-ceramic-powder", 1}
    },
    result = "nullius-box-power-pole-3"
  },
  {
    type = "recipe",
    name = "nullius-power-pole-4",
    enabled = false,
    always_show_made_in = true,
    category = "medium-crafting",
    energy_required = 8,
    ingredients = {
      {"nullius-power-pole-3", 1},
      {"nullius-optical-cable", 2},
      {"nullius-sensor-1", 1},
      {"nullius-transformer", 1},
      {"power-switch", 1},
      {"concrete", 2}
    },
    result = "nullius-power-pole-4"
  },
  {
    type = "recipe",
    name = "nullius-boxed-power-pole-4",
    enabled = false,
    always_show_made_in = true,
    category = "large-assembly",
    subgroup = "boxed-power-pole",
    energy_required = 40,
    ingredients = {
      {"nullius-box-power-pole-3", 1},
      {"nullius-box-optical-cable", 2},
      {"nullius-box-sensor-1", 1},
      {"nullius-box-transformer", 1},
      {"nullius-box-power-switch", 1},
      {"nullius-box-concrete", 1}
    },
    result = "nullius-box-power-pole-4"
  },

  {
    type = "recipe",
    name = "nullius-pylon-1",
    enabled = false,
    always_show_made_in = true,
    category = "large-crafting",
    energy_required = 4,
    ingredients = {
      {"medium-electric-pole", 1},
      {"copper-cable", 3},
      {"nullius-steel-beam", 2}
    },
    result = "big-electric-pole"
  },
  {
    type = "recipe",
    name = "nullius-boxed-pylon-1",
    enabled = false,
    always_show_made_in = true,
    category = "huge-assembly",
    subgroup = "boxed-power-pole",
    energy_required = 20,
    ingredients = {
      {"nullius-box-power-pole-2", 1},
      {"nullius-box-insulated-wire", 3},
      {"nullius-box-steel-beam", 2}
    },
    result = "nullius-box-pylon-1"
  },
  {
    type = "recipe",
    name = "nullius-pylon-2",
    enabled = false,
    always_show_made_in = true,
    category = "large-crafting",
    energy_required = 6,
    ingredients = {
      {"big-electric-pole", 1},
      {"nullius-power-pole-3", 1},
      {"nullius-aluminum-wire", 3},
      {"nullius-steel-cable", 2},
      {"nullius-transformer", 1},
      {"concrete", 4}
    },
    result = "nullius-pylon-2"
  },
  {
    type = "recipe",
    name = "nullius-boxed-pylon-2",
    enabled = false,
    always_show_made_in = true,
    category = "huge-assembly",
    subgroup = "boxed-power-pole",
    energy_required = 30,
    ingredients = {
      {"nullius-box-pylon-1", 1},
      {"nullius-box-power-pole-3", 1},
      {"nullius-box-aluminum-wire", 3},
      {"nullius-box-steel-cable", 2},
      {"nullius-box-transformer", 1},
      {"nullius-box-concrete", 2}
    },
    result = "nullius-box-pylon-2"
  },
  {
    type = "recipe",
    name = "nullius-pylon-3",
    enabled = false,
    always_show_made_in = true,
    category = "large-crafting",
    energy_required = 10,
    ingredients = {
      {"nullius-pylon-2", 1},
      {"nullius-power-pole-4", 1},
      {"nullius-calcium", 10},
      {"nullius-efficiency-module-1", 1},
      {"refined-concrete", 6}
    },
    result = "nullius-pylon-3"
  },
  {
    type = "recipe",
    name = "nullius-boxed-pylon-3",
    enabled = false,
    always_show_made_in = true,
    category = "huge-assembly",
    subgroup = "boxed-power-pole",
    energy_required = 50,
    ingredients = {
      {"nullius-box-pylon-2", 1},
      {"nullius-box-power-pole-4", 1},
      {"nullius-box-calcium", 10},
      {"nullius-box-efficiency-module-1", 1},
      {"nullius-box-reinforced-concrete", 3}
    },
    result = "nullius-box-pylon-3"
  },

  {
    type = "recipe",
    name = "nullius-substation-1",
    enabled = false,
    category = "large-crafting",
    always_show_made_in = true,
    energy_required = 10,
    ingredients = {
      {"big-electric-pole", 1},
      {"medium-electric-pole", 1},
      {"power-switch", 1},
      {"concrete", 6},
      {"nullius-transformer", 1}
    },
    result = "substation"
  },
  {
    type = "recipe",
    name = "nullius-boxed-substation-1",
    localised_name = {"recipe-name.nullius-boxed", {"entity-name.nullius-substation-1"}},
    icons = {
      {
        icon = ICONPATH .. "crate.png",
        icon_size = 64
      },
      {
        icon = ENTICONPATH .. "substation1.png",
        icon_size = 64,
        scale = 0.45
      }
    },
    enabled = false,
    category = "huge-assembly",
    subgroup = "boxed-power-pole",
    order = "nullius-fb",
    always_show_made_in = true,
    show_amount_in_title = false,
    always_show_products = true,
    energy_required = 50,
    ingredients = {
      {"nullius-box-pylon-1", 1},
      {"nullius-box-power-pole-2", 1},
      {"nullius-box-power-switch", 1},
      {"nullius-box-concrete", 3},
      {"nullius-box-transformer", 1}
    },
    result = "substation",
    result_count = 5
  },
  {
    type = "recipe",
    name = "nullius-substation-2",
    enabled = false,
    category = "large-crafting",
    always_show_made_in = true,
    energy_required = 18,
    ingredients = {
      {"substation", 1},
      {"nullius-pylon-2", 1},
      {"nullius-power-pole-3", 1},
      {"nullius-sensor-1", 2},
      {"nullius-battery-1", 2}
    },
    result = "nullius-substation-2"
  },
  {
    type = "recipe",
    name = "nullius-boxed-substation-2",
    localised_name = {"recipe-name.nullius-boxed", {"entity-name.nullius-substation-2"}},
    icons = {
      {
        icon = ICONPATH .. "crate.png",
        icon_size = 64
      },
      {
        icon = "__base__/graphics/icons/substation.png",
        icon_size = 64,
        scale = 0.45
      }
    },
    enabled = false,
    category = "huge-assembly",
    subgroup = "boxed-power-pole",
    order = "nullius-fc",
    always_show_made_in = true,
    show_amount_in_title = false,
    always_show_products = true,
    energy_required = 90,
    ingredients = {
      {"substation", 5},
      {"nullius-box-pylon-2", 1},
      {"nullius-box-power-pole-3", 1},
      {"nullius-box-sensor-1", 2},
      {"nullius-box-battery-1", 2}
    },
    result = "nullius-substation-2",
    result_count = 5
  },
  {
    type = "recipe",
    name = "nullius-substation-3",
    enabled = false,
    always_show_made_in = true,
    category = "large-crafting",
    energy_required = 40,
    ingredients = {
      {"nullius-substation-2", 2},
      {"nullius-pylon-3", 1},
      {"nullius-power-pole-4", 2},
      {"nullius-sensor-2", 2},
      {"nullius-grid-battery-1", 1},
      {"refined-concrete", 20}
    },
    result = "nullius-substation-3"
  },
  {
    type = "recipe",
    name = "nullius-boxed-substation-3",
    localised_name = {"recipe-name.nullius-boxed", {"entity-name.nullius-substation-3"}},
    icons = {
      {
        icon = ICONPATH .. "crate.png",
        icon_size = 64
      },
      {
        icon = ENTICONPATH .. "substation3.png",
        icon_size = 64,
        scale = 0.45
      }
    },
    enabled = false,
    always_show_made_in = true,
    show_amount_in_title = false,
    always_show_products = true,
    category = "huge-assembly",
    subgroup = "boxed-power-pole",
    order = "nullius-fd",
    energy_required = 200,
    ingredients = {
      {"nullius-substation-2", 10},
      {"nullius-box-pylon-3", 1},
      {"nullius-box-power-pole-4", 2},
      {"nullius-box-sensor-2", 2},
      {"nullius-box-grid-battery-1", 1},
      {"nullius-box-reinforced-concrete", 10}
    },
    result = "nullius-substation-3",
    result_count = 5
  },

  {
    type = "item",
    name = "nullius-reactor",
    icon = "__base__/graphics/icons/nuclear-reactor.png",
    icon_size = 64,
    icon_mipmaps = 4,
    subgroup = "nuclear",
    order = "nullius-b",
    place_result = "nullius-reactor",
    stack_size = 5
  },
  {
    type = "recipe",
    name = "nullius-reactor",
    enabled = false,
	always_show_made_in = true,
    category = "huge-crafting",
    energy_required = 160,
    ingredients = {
      {type="item", name="nullius-thermal-tank-3", amount=1},
      {type="item", name="nullius-box-heat-pipe-3", amount=2},
      {type="item", name="nullius-lab-2", amount=1},
      {type="item", name="nullius-box-hazard-concrete", amount=5},
      {type="item", name="nullius-large-furnace-2", amount=1},
      {type="item", name="nullius-box-processor-2", amount=1}
    },
    result = "nullius-reactor"
  },

  {
    type = "item",
    name = "nullius-silo",
    icon = "__base__/graphics/icons/rocket-silo.png",
    icon_size = 64,
    icon_mipmaps = 4,
    subgroup = "space",
    order = "nullius-b",
    place_result = "nullius-silo",
    stack_size = 1
  },
  {
    type = "recipe",
    name = "nullius-silo",
    enabled = false,
	always_show_made_in = true,
    category = "huge-crafting",
    energy_required = 180,
    ingredients = {
      {type="item", name="nullius-drone-launcher-2", amount=5},
      {type="item", name="nullius-hangar-3", amount=2},
      {type="item", name="nullius-beacon-3", amount=4},
      {type="item", name="nullius-box-wall", amount=10},
      {type="item", name="nullius-box-heat-pipe-3", amount=4},
      {type="item", name="nullius-box-hazard-concrete", amount=30},
      {type="item", name="nullius-box-productivity-module-2", amount=1},
      {type="item", name="nullius-lab-3", amount=1}
    },
    result = "nullius-silo"
  },

  {
    type = "item",
    name = "nullius-solar-collector-1",
    localised_name = {"", {"entity-name.nullius-solar-collector"}, " ", 1},
    icons = {{
      icon = ENTICONPATH .. "collector1.png",
      icon_size = 64
    }},
    subgroup = "geothermal",
    order = "nullius-cb",
    place_result = "nullius-solar-collector-1",
    stack_size = 100
  },
  {
    type = "item",
    name = "nullius-solar-collector-2",
    localised_name = {"", {"entity-name.nullius-solar-collector"}, " ", 2},
    icons = {{
      icon = ENTICONPATH .. "collector2.png",
      icon_size = 64
    }},
    subgroup = "geothermal",
    order = "nullius-cc",
    place_result = "nullius-solar-collector-2",
    stack_size = 100
  },
  {
    type = "item",
    name = "nullius-solar-collector-3",
    localised_name = {"", {"entity-name.nullius-solar-collector"}, " ", 3},
    icons = {{
      icon = ENTICONPATH .. "collector3.png",
      icon_size = 64
    }},
    subgroup = "geothermal",
    order = "nullius-cd",
    place_result = "nullius-solar-collector-3",
    stack_size = 100
  },
  {
    type = "recipe",
    name = "nullius-solar-collector-1",
    enabled = false,
    always_show_made_in = true,
    category = "large-crafting",
    energy_required = 8,
    ingredients = {
      {"nullius-glass", 6},
      {"nullius-aluminum-sheet", 5},
      {"nullius-steel-rod", 3},
      {"nullius-heat-pipe-1", 4}
    },
    result = "nullius-solar-collector-1"
  },
  {
    type = "recipe",
    name = "nullius-boxed-solar-collector-1",
    enabled = false,
    always_show_made_in = true,
    category = "huge-assembly",
    subgroup = "boxed-heat-energy",
    energy_required = 40,
    ingredients = {
      {"nullius-box-glass", 6},
      {"nullius-box-aluminum-sheet", 5},
      {"nullius-box-steel-rod", 3},
      {"nullius-box-heat-pipe-1", 4}
    },
    result = "nullius-box-solar-collector-1"
  },
  {
    type = "recipe",
    name = "nullius-solar-collector-2",
    enabled = false,
    always_show_made_in = true,
    category = "large-crafting",
    energy_required = 15,
    ingredients = {
      {"nullius-solar-collector-1", 2},
      {"nullius-heat-pipe-2", 8},
      {"nullius-motor-2", 1},
      {"nullius-steel-cable", 4},
      {"nullius-titanium-sheet", 5}
    },
    result = "nullius-solar-collector-2"
  },
  {
    type = "recipe",
    name = "nullius-boxed-solar-collector-2",
    enabled = false,
    always_show_made_in = true,
    category = "huge-assembly",
    subgroup = "boxed-heat-energy",
    energy_required = 75,
    ingredients = {
      {"nullius-box-solar-collector-1", 2},
      {"nullius-box-heat-pipe-2", 8},
      {"nullius-box-motor-2", 1},
      {"nullius-box-steel-cable", 4},
      {"nullius-box-titanium-sheet", 5}
    },
    result = "nullius-box-solar-collector-2"
  },
  {
    type = "recipe",
    name = "nullius-solar-collector-3",
    enabled = false,
    always_show_made_in = true,
    category = "large-crafting",
    energy_required = 30,
    ingredients = {
      {"nullius-solar-collector-2", 3},
      {"nullius-hard-glass", 10},
      {"nullius-heat-pipe-3", 8},
      {"nullius-titanium-rod", 4},
      {"nullius-sensor-1", 1},
      {"nullius-monocrystalline-silicon", 12}
    },
    result = "nullius-solar-collector-3"
  },
  {
    type = "recipe",
    name = "nullius-boxed-solar-collector-3",
    enabled = false,
    always_show_made_in = true,
    category = "huge-assembly",
    subgroup = "boxed-heat-energy",
    energy_required = 150,
    ingredients = {
      {"nullius-box-solar-collector-2", 3},
      {"nullius-box-hard-glass", 10},
      {"nullius-box-heat-pipe-3", 8},
      {"nullius-box-titanium-rod", 4},
      {"nullius-box-sensor-1", 1},
      {"nullius-box-monocrystalline-silicon", 12}
    },
    result = "nullius-box-solar-collector-3"
  }
})


if mods["reskins-bobs"] then
data.raw.item["nullius-grid-battery-1"].icons = {
  {
    icon = "__reskins-bobs__/graphics/icons/power/accumulator/accumulator-3-icon-base.png",
    icon_size = 64, icon_mipmaps = 4
  },
  {
    icon = "__reskins-bobs__/graphics/icons/power/accumulator/accumulator-icon-mask.png",
    icon_size = 64, icon_mipmaps = 4, tint = tiercolor("red")
  },
  {
    icon = "__reskins-bobs__/graphics/icons/power/accumulator/accumulator-icon-highlights.png",
    icon_size = 64, icon_mipmaps = 4, tint = {1, 1, 1, 0}
  }
}
data.raw.item["nullius-grid-battery-2"].icons =
    util.table.deepcopy(data.raw.item["nullius-grid-battery-1"].icons)
data.raw.item["nullius-grid-battery-2"].icons[1].icon =
    "__reskins-bobs__/graphics/icons/power/accumulator/accumulator-1-icon-base.png"
data.raw.item["nullius-grid-battery-2"].icons[2].tint = tiercolor("blue")
data.raw.item["nullius-grid-battery-3"].icons =
    util.table.deepcopy(data.raw.item["nullius-grid-battery-1"].icons)
data.raw.item["nullius-grid-battery-3"].icons[1].icon =
    "__reskins-bobs__/graphics/icons/power/accumulator/accumulator-2-icon-base.png"
data.raw.item["nullius-grid-battery-3"].icons[2].tint = tiercolor("green")

data.raw.item["nullius-small-furnace-3"].icons[1].tint = nil
data.raw.item["nullius-small-furnace-3"].icons = {
  data.raw.item["nullius-small-furnace-3"].icons[1],
  {
    icon = "__reskins-bobs__/graphics/icons/assembly/electric-furnace/electric-furnace-icon-mask.png",
    icon_size = 64, scale = 0.32, tint = tiercolor("red")
  },
  {
    icon = "__reskins-bobs__/graphics/icons/assembly/electric-furnace/electric-furnace-icon-highlights.png",
    icon_size = 64, scale = 0.32, tint = {1, 1, 1, 0}
  }
}

data.raw.item["nullius-medium-furnace-2"].icons =
    util.table.deepcopy(data.raw.item["nullius-small-furnace-3"].icons)
data.raw.item["nullius-medium-furnace-2"].icons[1].icon = ENTICONPATH .. "furnace2m.png"
data.raw.item["nullius-medium-furnace-2"].icons[1].icon_size = 64
data.raw.item["nullius-medium-furnace-2"].icons[2].scale = 0.4
data.raw.item["nullius-medium-furnace-2"].icons[3].scale = 0.4
data.raw.item["nullius-medium-furnace-3"].icons =
    util.table.deepcopy(data.raw.item["nullius-medium-furnace-2"].icons)
data.raw.item["nullius-medium-furnace-3"].icons[2].tint = tiercolor("deepblue")

data.raw.item["nullius-large-furnace-1"].icons =
    util.table.deepcopy(data.raw.item["nullius-medium-furnace-2"].icons)
data.raw.item["nullius-large-furnace-1"].icons[1].icon = "__base__/graphics/icons/electric-furnace.png"
data.raw.item["nullius-large-furnace-1"].icons[2].scale = nil
data.raw.item["nullius-large-furnace-1"].icons[3].scale = nil
data.raw.item["nullius-large-furnace-2"].icons =
    util.table.deepcopy(data.raw.item["nullius-large-furnace-1"].icons)
data.raw.item["nullius-large-furnace-2"].icons[2].tint = tiercolor("deepblue")


data.raw.item["nullius-large-miner-1"].icons = {
  {
    icon = "__reskins-bobs__/graphics/icons/mining/electric-mining-drill/electric-mining-drill-icon-base.png",
    icon_size = 64
  },
  {
    icon = "__reskins-bobs__/graphics/icons/mining/electric-mining-drill/electric-mining-drill-icon-mask.png",
    icon_size = 64, tint = {240, 160, 0}
  },
  {
    icon = "__reskins-bobs__/graphics/icons/mining/electric-mining-drill/electric-mining-drill-icon-highlights.png",
    icon_size = 64, tint = {1, 1, 1, 0}
  }
}
data.raw.item["nullius-large-miner-2"].icons =
    util.table.deepcopy(data.raw.item["nullius-large-miner-1"].icons)
data.raw.item["nullius-large-miner-2"].icons[1].icon =  "__reskins-bobs__/graphics/icons/mining/electric-mining-drill/large-area-electric-mining-drill-icon-base.png"
data.raw.item["nullius-large-miner-2"].icons[2].tint = {12, 110, 242}
data.raw.item["nullius-small-miner-2"].icons =
    {{ icon = ENTICONPATH .. "miner2sy.png", icon_size = 64 }}
data.raw.item["nullius-small-miner-3"].icons =
    {{ icon = ENTICONPATH .. "miner2sb.png", icon_size = 64 }}
data.raw.item["nullius-medium-miner-2"].icons =
    {{ icon = ENTICONPATH .. "miner2my.png", icon_size = 64 }}
data.raw.item["nullius-medium-miner-3"].icons =
    {{ icon = ENTICONPATH .. "miner2mb.png", icon_size = 64 }}


data.raw.item["nullius-beacon-1"].icons = {
  { icon = ENTICONPATH .. "beacon1s.png", icon_size = 64 },
  {
    icon = "__reskins-bobs__/graphics/icons/modules/beacon/beacon-icon-mask.png",
    icon_size = 64, tint = tiercolor("yellow"), scale = 0.34375
  },
  {
    icon = "__reskins-bobs__/graphics/icons/modules/beacon/beacon-icon-highlights.png",
    icon_size = 64, tint = {1, 1, 1, 0}, scale = 0.34375
  }
}
data.raw.item["nullius-beacon-2"].icons = {
  { icon = ENTICONPATH .. "beacon2s.png", icon_size = 64 },
  {
    icon = "__reskins-bobs__/graphics/icons/modules/beacon/beacon-icon-mask.png",
    icon_size = 64, tint = tiercolor("red"), scale = 0.375
  },
  {
    icon = "__reskins-bobs__/graphics/icons/modules/beacon/beacon-icon-highlights.png",
    icon_size = 64, tint = {1, 1, 1, 0}, scale = 0.375
  }
}
data.raw.item["nullius-beacon-3"].icons = {
  data.raw.item["nullius-beacon-3"].icons[1],
  {
    icon = "__reskins-bobs__/graphics/icons/modules/beacon/beacon-icon-mask.png",
    icon_size = 64, tint = tiercolor("blue"), scale = 0.40625
  },
  {
    icon = "__reskins-bobs__/graphics/icons/modules/beacon/beacon-icon-highlights.png",
    icon_size = 64, tint = {1, 1, 1, 0}, scale = 0.40625
  }
}
data.raw.item["nullius-large-beacon-1"].icons = {
  { icon = ENTICONPATH .. "beacon1b.png", icon_size = 64 },
  {
    icon = "__reskins-bobs__/graphics/icons/modules/beacon/beacon-icon-mask.png",
    icon_size = 64, tint = tiercolor("red"), scale = 0.46875
  },
  {
    icon = "__reskins-bobs__/graphics/icons/modules/beacon/beacon-icon-highlights.png",
    icon_size = 64, tint = {1, 1, 1, 0}, scale = 0.46875
  }
}
data.raw.item["nullius-large-beacon-2"].icons = {
  data.raw.item["nullius-large-beacon-2"].icons[1],
  {
    icon = "__reskins-bobs__/graphics/icons/modules/beacon/beacon-icon-mask.png",
    icon_size = 64, tint = tiercolor("blue"), scale = 0.5
  },
  {
    icon = "__reskins-bobs__/graphics/icons/modules/beacon/beacon-icon-highlights.png",
    icon_size = 64, tint = {1, 1, 1, 0}, scale = 0.5
  }
}

data.raw.item["radar"].icons = {
  {
    icon = "__reskins-bobs__/graphics/icons/warfare/radar/radar-icon-base.png",
    icon_size = 64, icon_mipmaps = 4
  },
  {
    icon = "__reskins-bobs__/graphics/icons/warfare/radar/radar-icon-mask.png",
    icon_size = 64, icon_mipmaps = 4, tint = tiercolor("yellow")
  },
  {
    icon = "__reskins-bobs__/graphics/icons/warfare/radar/radar-icon-highlights.png",
    icon_size = 64, icon_mipmaps = 4, tint = {1, 1, 1, 0}
  }
}
data.raw.item["nullius-sensor-node-2"].icons =
    util.table.deepcopy(data.raw.item["radar"].icons)
data.raw.item["nullius-sensor-node-2"].icons[2].tint = tiercolor("red")
data.raw.item["nullius-sensor-node-3"].icons =
    util.table.deepcopy(data.raw.item["radar"].icons)
data.raw.item["nullius-sensor-node-3"].icons[2].tint = tiercolor("blue")
end


label_icon("nullius-grid-battery-1", 1, "red")
label_icon("nullius-grid-battery-2", 2, "blue")
label_icon("nullius-grid-battery-3", 3, "green")
label_icon("nullius-wind-turbine-1", 1, "grey")
label_icon("nullius-wind-turbine-2", 2, "yellow")
label_icon("nullius-wind-turbine-3", 3, "red")
label_icon("nullius-solar-collector-1", 1, "red")
label_icon("nullius-solar-collector-2", 2, "orange")
label_icon("nullius-solar-collector-3", 3, "yellow")

label_icon("nullius-power-pole-3", 3, "blue")
label_icon("nullius-power-pole-4", 4, "orange")
label_icon("nullius-pylon-2", 2, "blue")
label_icon("nullius-pylon-3", 3, "purple")
label_icon("nullius-substation-2", 2, "blue")
label_icon("nullius-substation-3", 3, "green")
label_icon("nullius-lamp-1b", 1, "yellow", "recipe")
label_icon("nullius-lamp-2", 2, "white")

label_icon("nullius-small-assembler-1", 1, "grey")
label_icon("nullius-small-assembler-2", 2, "blue")
label_icon("nullius-small-assembler-3", 3, "green")
label_icon("nullius-medium-assembler-1", 1, "grey")
label_icon("nullius-medium-assembler-2", 2, "blue")
label_icon("nullius-medium-assembler-3", 3, "green")
label_icon("nullius-large-assembler-1", 1, "blue")
label_icon("nullius-large-assembler-2", 2, "green")
label_icon("nullius-lab-1", 1, "yellow")
label_icon("nullius-lab-2", 2, "red")
label_icon("nullius-lab-3", 3, "blue")

label_icon("nullius-small-furnace-1", 1, "yellow")
label_icon("nullius-small-furnace-2", 2, "grey")
label_icon("nullius-small-furnace-3", 3, "red")
label_icon("nullius-medium-furnace-1", 1, "grey")
label_icon("nullius-medium-furnace-2", 2, "red")
label_icon("nullius-medium-furnace-3", 3, "blue")
label_icon("nullius-large-furnace-1", 1, "red")
label_icon("nullius-large-furnace-2", 2, "blue")

label_icon("nullius-small-miner-1", 1, "grey")
label_icon("nullius-small-miner-2", 2, "yellow")
label_icon("nullius-small-miner-3", 3, "blue")
label_icon("nullius-medium-miner-1", 1, "grey")
label_icon("nullius-medium-miner-2", 2, "yellow")
label_icon("nullius-medium-miner-3", 3, "blue")
label_icon("nullius-large-miner-1", 1, "yellow")
label_icon("nullius-large-miner-2", 2, "blue")

label_icon("nullius-crusher-1", 1, "grey")
label_icon("nullius-crusher-2", 2, "blue")
label_icon("nullius-crusher-3", 3, "white")
label_icon("nullius-foundry-1", 1, "green")
label_icon("nullius-foundry-2", 2, "blue")
label_icon("nullius-foundry-3", 3, "red")

label_icon("nullius-sensor-node-2", 2, "red")
label_icon("nullius-sensor-node-3", 3, "blue")
label_icon("nullius-beacon-1", 1, "yellow")
label_icon("nullius-beacon-2", 2, "red")
label_icon("nullius-beacon-3", 3, "blue")
label_icon("nullius-large-beacon-1", 1, "red")
label_icon("nullius-large-beacon-2", 2, "blue")
