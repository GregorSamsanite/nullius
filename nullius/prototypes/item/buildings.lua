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
      {type = "item", name = "stone-brick", amount = 4},
      {type = "item", name = "nullius-iron-wire", amount = 2},
      {type = "item", name = "nullius-iron-plate", amount = 1}
    },
    results = {
      {type = "item", name = "nullius-small-furnace-1", amount = 1}
    }
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
      {type = "item", name = "nullius-small-furnace-1", amount = 1},
      {type = "item", name = "nullius-refractory-brick", amount = 8},
      {type = "item", name = "nullius-crucible", amount = 1},
      {type = "item", name = "nullius-steel-plate", amount = 1}
    },
    results = {
      {type = "item", name = "nullius-small-furnace-2", amount = 1}
    }
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
      {type = "item", name = "nullius-small-furnace-2", amount = 1},
      {type = "item", name = "nullius-refractory-brick", amount = 15},
      {type = "item", name = "nullius-mortar", amount = 8},
      {type = "item", name = "nullius-iron-wire", amount = 6},
      {type = "item", name = "nullius-aluminum-wire", amount = 6},
      {type = "item", name = "nullius-sensor-1", amount = 1}
    },
    results = {
      {type = "item", name = "nullius-small-furnace-3", amount = 1}
    }
  },

  {
    type = "item",
    name = "nullius-medium-furnace-1",
    icons = {{
      icon = "__base__/graphics/icons/steel-furnace.png",
      icon_size = 64,
      
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
      {type = "item", name = "nullius-small-furnace-2", amount = 2},
      {type = "item", name = "nullius-chimney-1", amount = 1}
    },
    results = {
      {type = "item", name = "nullius-medium-furnace-1", amount = 1}
    }
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
      {type = "item", name = "nullius-medium-furnace-1", amount = 1},
      {type = "item", name = "nullius-small-furnace-3", amount = 1},
      {type = "item", name = "nullius-combustion-chamber-2", amount = 1},
      {type = "item", name = "nullius-heat-pipe-1", amount = 3}
    },
    results = {
      {type = "item", name = "nullius-medium-furnace-2", amount = 1}
    }
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
      {type = "item", name = "nullius-medium-furnace-2", amount = 1},
      {type = "item", name = "nullius-air-filter-2", amount = 1},
      {type = "item", name = "nullius-combustion-chamber-3", amount = 1},
      {type = "item", name = "nullius-box-heat-pipe-2", amount = 1},
      {type = "item", name = "nullius-transformer", amount = 1},
      {type = "item", name = "nullius-box-titanium-plate", amount = 1},
      {type = "item", name = "nullius-box-wall", amount = 1}
    },
    results = {
      {type = "item", name = "nullius-medium-furnace-3", amount = 1}
    }
  },

  {
    type = "item",
    name = "nullius-large-furnace-1",
    icons = {{
      icon = "__base__/graphics/icons/electric-furnace.png",
      icon_size = 64,
      
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
      {type = "item", name = "nullius-medium-furnace-2", amount = 2},
      {type = "item", name = "nullius-steel-beam", amount = 8},
      {type = "item", name = "concrete", amount = 20}
    },
    results = {
      {type = "item", name = "nullius-large-furnace-1", amount = 1}
    }
  },

  {
    type = "item",
    name = "nullius-large-furnace-2",
    icons = {{
      icon = "__base__/graphics/icons/electric-furnace.png",
      icon_size = 64,
      
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
      {type = "item", name = "nullius-large-furnace-1", amount = 1},
      {type = "item", name = "nullius-medium-furnace-3", amount = 1},
      {type = "item", name = "nullius-substation-2", amount = 1},
      {type = "item", name = "nullius-box-insulation", amount = 2},
      {type = "item", name = "nullius-box-belt-4", amount = 1}
    },
    results = {
      {type = "item", name = "nullius-large-furnace-2", amount = 1}
    }
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
      {type = "item", name = "inserter", amount = 1},
      {type = "item", name = "transport-belt", amount = 1},
      {type = "item", name = "wooden-chest", amount = 1},
      {type = "item", name = "nullius-fabrication-tool-1", amount = 1}
    },
    results = {
      {type = "item", name = "nullius-small-assembler-1", amount = 1}
    }
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
      {type = "item", name = "inserter", amount = 1},
      {type = "item", name = "transport-belt", amount = 1},
      {type = "item", name = "wooden-chest", amount = 1}
    },
    results = {
      {type = "item", name = "nullius-small-assembler-1", amount = 1}
    }
  },
  {
    type = "recipe",
    name = "nullius-small-assembler-2",
    enabled = false,
    always_show_made_in = true,
    category = "medium-crafting",
    energy_required = 12,
    ingredients = {
      {type = "item", name = "nullius-small-assembler-1", amount = 1},
      {type = "item", name = "nullius-fabrication-tool-2", amount = 1},
      {type = "item", name = "splitter", amount = 1},
      {type = "item", name = "iron-chest", amount = 1}
    },
    results = {
      {type = "item", name = "nullius-small-assembler-2", amount = 1}
    }
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
      {type = "item", name = "nullius-small-assembler-1", amount = 1},
      {type = "item", name = "repair-pack", amount = 2},
      {type = "item", name = "splitter", amount = 1},
      {type = "item", name = "iron-chest", amount = 2}
    },
    results = {
      {type = "item", name = "nullius-small-assembler-2", amount = 1}
    }
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
      {type = "item", name = "nullius-small-assembler-2", amount = 4},
      {type = "item", name = "nullius-hangar-1", amount = 1},
      {type = "item", name = "nullius-construction-bot-2", amount = 1},
      {type = "item", name = "nullius-large-buffer-chest-1", amount = 1},
      {type = "item", name = "bob-express-bulk-inserter", amount = 1}
    },
    results = {
      {type = "item", name = "nullius-small-assembler-3", amount = 3}
    }
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
      {type = "item", name = "nullius-small-assembler-1", amount = 2},
      {type = "item", name = "nullius-steel-beam", amount = 1}
    },
    results = {
      {type = "item", name = "nullius-medium-assembler-1", amount = 1}
    }
  },
  {
    type = "recipe",
    name = "nullius-medium-assembler-2",
    enabled = false,
    category = "large-crafting",
    always_show_made_in = true,
    energy_required = 20,
    ingredients = {
      {type = "item", name = "nullius-medium-assembler-1", amount = 1},
      {type = "item", name = "nullius-small-assembler-2", amount = 1},
      {type = "item", name = "nullius-aluminum-sheet", amount = 6},
      {type = "item", name = "nullius-red-wire", amount = 4}
    },
    results = {
      {type = "item", name = "nullius-medium-assembler-2", amount = 1}
    }
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
      {type = "item", name = "nullius-medium-assembler-2", amount = 3},
      {type = "item", name = "nullius-small-assembler-3", amount = 2},
      {type = "item", name = "nullius-charger-2", amount = 1},
      {type = "item", name = "nullius-logistic-bot-2", amount = 1},
      {type = "item", name = "express-transport-belt", amount = 4},
      {type = "item", name = "stone-wall", amount = 6}
    },
	  results = {
      {type = "item", name = "nullius-medium-assembler-3", amount = 2}
    }
  },

  {
    type = "item",
    name = "nullius-large-assembler-1",
    icons = {{
      icon = "__base__/graphics/icons/assembling-machine-2.png",
      icon_size = 64,
      
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
      {type = "item", name = "nullius-medium-assembler-2", amount = 2},
      {type = "item", name = "stone-brick", amount = 12},
      {type = "item", name = "nullius-mortar", amount = 3},
      {type = "item", name = "fast-transport-belt", amount = 6}
    },
    results = {
      {type = "item", name = "nullius-large-assembler-1", amount = 1}
    }
  },
  {
    type = "recipe",
    name = "nullius-large-assembler-2",
    enabled = false,
    category = "huge-crafting",
    always_show_made_in = true,
    energy_required = 80,
    ingredients = {
      {type = "item", name = "nullius-large-assembler-1", amount = 1},
      {type = "item", name = "nullius-medium-assembler-3", amount = 2},
      {type = "item", name = "nullius-relay-2", amount = 1},
      {type = "item", name = "gate", amount = 2},
      {type = "item", name = "nullius-substation-2", amount = 1}
    },
    results = {
      {type = "item", name = "nullius-large-assembler-2", amount = 1}
    }
  },

  {
    type = "item",
    name = "nullius-boxer",
	icons = {{
      icon = "__angelssmeltinggraphics__/graphics/icons/powder-mixer-ico.png",
      icon_size = 64, 
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
      {type = "item", name = "nullius-small-assembler-2", amount = 1},
      {type = "item", name = "bulk-inserter", amount = 1},
      {type = "item", name = "nullius-speed-module-1", amount = 1}
    },
    results = {
      {type = "item", name = "nullius-boxer", amount = 1}
    }
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
      {type = "item", name = "nullius-motor-1", amount = 1},
      {type = "item", name = "nullius-iron-gear", amount = 1},
      {type = "item", name = "nullius-mining-tool-1", amount = 1}
    },
    results = {
      {type = "item", name = "nullius-small-miner-1", amount = 1}
    }
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
      {type = "item", name = "nullius-motor-1", amount = 2},
      {type = "item", name = "nullius-iron-gear", amount = 2},
      {type = "item", name = "nullius-iron-plate", amount = 3}
    },
    results = {
      {type = "item", name = "nullius-small-miner-1", amount = 2}
    }
  },
  {
    type = "recipe",
    name = "nullius-small-miner-2",
    enabled = false,
    always_show_made_in = true,
    category = "medium-crafting",
    energy_required = 12,
    ingredients = {
      {type = "item", name = "nullius-small-miner-1", amount = 1},
      {type = "item", name = "nullius-motor-2", amount = 1},
      {type = "item", name = "nullius-steel-plate", amount = 5},
      {type = "item", name = "nullius-aluminum-carbide", amount = 2}
    },
    results = {
      {type = "item", name = "nullius-small-miner-2", amount = 1}
    }
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
	  results = {
      {type = "item", name = "nullius-small-miner-3", amount = 2}
    }
  },

  {
    type = "item",
    name = "nullius-medium-miner-1",
    icons = {{
      icon = "__base__/graphics/icons/burner-mining-drill.png",
      icon_size = 64,
      
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
      {type = "item", name = "nullius-small-miner-1", amount = 2},
      {type = "item", name = "nullius-steel-beam", amount = 1}
    },
    results = {
      {type = "item", name = "nullius-medium-miner-1", amount = 1}
    }
  },
  {
    type = "recipe",
    name = "nullius-medium-miner-2",
    enabled = false,
    category = "large-crafting",
    always_show_made_in = true,
    energy_required = 25,
    ingredients = {
      {type = "item", name = "nullius-medium-miner-1", amount = 1},
      {type = "item", name = "nullius-small-miner-2", amount = 1},
      {type = "item", name = "nullius-steel-gear", amount = 4},
      {type = "item", name = "nullius-aluminum-plate", amount = 2}
    },
    results = {
      {type = "item", name = "nullius-medium-miner-2", amount = 1}
    }
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
    results = {
      {type = "item", name = "nullius-medium-miner-3", amount = 1}
    }
  },

  {
    type = "item",
    name = "nullius-large-miner-1",
    icons = {{
      icon = "__base__/graphics/icons/electric-mining-drill.png",
      icon_size = 64,
      
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
      {type = "item", name = "nullius-medium-miner-2", amount = 2},
      {type = "item", name = "nullius-steel-cable", amount = 6},
      {type = "item", name = "nullius-steel-sheet", amount = 4}
    },
    results = {
      {type = "item", name = "nullius-large-miner-1", amount = 1}
    }
  },
  {
    type = "recipe",
    name = "nullius-large-miner-2",
    enabled = false,
    category = "huge-crafting",
    always_show_made_in = true,
    energy_required = 60,
    ingredients = {
      {type = "item", name = "nullius-large-miner-1", amount = 1},
      {type = "item", name = "nullius-medium-miner-3", amount = 2},
      {type = "item", name = "nullius-box-rail", amount = 4},
      {type = "item", name = "nullius-cargo-wagon-1", amount = 1},
      {type = "item", name = "nullius-locomotive-1", amount = 1}
    },
    results = {
      {type = "item", name = "nullius-large-miner-2", amount = 1}
    }
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
      {type = "item", name = "nullius-turbine-open-1", amount = 2},
      {type = "item", name = "small-electric-pole", amount = 2}
    },
    results = {
      {type = "item", name = "nullius-wind-turbine-1", amount = 1}
    }
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
      {type = "item", name = "nullius-box-turbine-open-1", amount = 2},
      {type = "item", name = "nullius-box-power-pole-1", amount = 2}
    },
    results = {
      {type = "item", name = "nullius-box-wind-turbine-1", amount = 1}
    }
  },
  {
    type = "recipe",
    name = "nullius-wind-turbine-2",
    enabled = false,
    category = "huge-crafting",
    always_show_made_in = true,
    energy_required = 20,
    ingredients = {
      {type = "item", name = "nullius-wind-turbine-1", amount = 1},
      {type = "item", name = "nullius-turbine-open-2", amount = 1},
      {type = "item", name = "big-electric-pole", amount = 2},
      {type = "item", name = "nullius-steel-cable", amount = 5},
      {type = "item", name = "concrete", amount = 10}
    },
    results = {
      {type = "item", name = "nullius-wind-turbine-2", amount = 1}
    }
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
      {type = "item", name = "nullius-box-wind-turbine-1", amount = 1},
      {type = "item", name = "nullius-box-turbine-open-2", amount = 1},
      {type = "item", name = "nullius-box-pylon-1", amount = 2},
      {type = "item", name = "nullius-box-steel-cable", amount = 5},
      {type = "item", name = "nullius-box-concrete", amount = 5}
    },
    results = {
      {type = "item", name = "nullius-box-wind-turbine-2", amount = 1}
    }
  },
  {
    type = "recipe",
    name = "nullius-wind-turbine-3",
    enabled = false,
    always_show_made_in = true,
    category = "huge-crafting",
    energy_required = 40,
    ingredients = {
      {type = "item", name = "nullius-wind-turbine-2", amount = 2},
      {type = "item", name = "nullius-turbine-open-3", amount = 2},
      {type = "item", name = "nullius-pylon-2", amount = 2},
      {type = "item", name = "nullius-carbon-composite", amount = 10},
      {type = "item", name = "refined-concrete", amount = 16}
    },
    results = {
      {type = "item", name = "nullius-wind-turbine-3", amount = 1}
    }
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
      {type = "item", name = "nullius-box-wind-turbine-2", amount = 2},
      {type = "item", name = "nullius-box-turbine-open-3", amount = 2},
      {type = "item", name = "nullius-box-pylon-2", amount = 2},
      {type = "item", name = "nullius-box-carbon-composite", amount = 10},
      {type = "item", name = "nullius-box-reinforced-concrete", amount = 8}
    },
    results = {
      {type = "item", name = "nullius-box-wind-turbine-3", amount = 1}
    }
  },

  {
    type = "item",
    name = "nullius-foundry-1",
    icons = {{
      icon = "__angelssmeltinggraphics__/graphics/icons/casting-machine.png",
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
      icon = "__angelssmeltinggraphics__/graphics/icons/casting-machine.png",
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
      icon = "__angelssmeltinggraphics__/graphics/icons/casting-machine.png",
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
      {type = "item", name = "nullius-small-furnace-1", amount = 1},
      {type = "item", name = "inserter", amount = 2},
      {type = "item", name = "nullius-iron-plate", amount = 3}
    },
    results = {
      {type = "item", name = "nullius-foundry-1", amount = 1}
    }
  },
  {
    type = "recipe",
    name = "nullius-foundry-2",
    enabled = false,
    category = "large-crafting",
    always_show_made_in = true,
    energy_required = 15,
    ingredients = {
      {type = "item", name = "nullius-foundry-1", amount = 1},
      {type = "item", name = "nullius-medium-furnace-1", amount = 1},
      {type = "item", name = "nullius-crucible", amount = 2},
      {type = "item", name = "bob-turbo-inserter", amount = 2},
      {type = "item", name = "fast-transport-belt", amount = 3}
    },
    results = {
      {type = "item", name = "nullius-foundry-2", amount = 1}
    }
  },
  {
    type = "recipe",
    name = "nullius-foundry-3",
    enabled = false,
    always_show_made_in = true,
    category = "large-crafting",
    energy_required = 40,
    ingredients = {
      {type = "item", name = "nullius-foundry-2", amount = 2},
      {type = "item", name = "nullius-medium-furnace-3", amount = 1},
      {type = "item", name = "nullius-medium-assembler-3", amount = 1},
      {type = "item", name = "nullius-thermal-tank-2", amount = 1}
    },
    results = {
      {type = "item", name = "nullius-foundry-3", amount = 1}
    }
  },

  {
    type = "item",
    name = "nullius-crusher-1",
    icons = {{
      icon = "__angelsrefininggraphics__/graphics/icons/ore-crusher.png",
      icon_size = 64, 
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
      icon = "__angelsrefininggraphics__/graphics/icons/ore-crusher.png",
      icon_size = 64, 
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
      icon = "__angelsrefininggraphics__/graphics/icons/ore-crusher.png",
      icon_size = 64, 
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
      {type = "item", name = "nullius-small-miner-1", amount = 1},
      {type = "item", name = "transport-belt", amount = 2},
      {type = "item", name = "nullius-iron-wire", amount = 3},
      {type = "item", name = "stone-brick", amount = 8}
    },
    results = {
      {type = "item", name = "nullius-crusher-1", amount = 1}
    }
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
      {type = "item", name = "nullius-crusher-1", amount = 3},
      {type = "item", name = "nullius-medium-miner-2", amount = 1},
      {type = "item", name = "copper-cable", amount = 8},
      {type = "item", name = "fast-splitter", amount = 1}
    },
	  results = {
      {type = "item", name = "nullius-crusher-2", amount = 2}
    }
  },
  {
    type = "recipe",
    name = "nullius-crusher-3",
    enabled = false,
    category = "large-crafting",
    always_show_made_in = true,
    energy_required = 30,
    ingredients = {
      {type = "item", name = "nullius-crusher-2", amount = 1},
      {type = "item", name = "nullius-medium-miner-3", amount = 1},
      {type = "item", name = "bob-ultimate-splitter", amount = 1},
      {type = "item", name = "nullius-box-wall", amount = 2},
	    {type = "item", name = "nullius-trash-compactor", amount = 1}
    },
    results = {
      {type = "item", name = "nullius-crusher-3", amount = 1}
    }
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
      {type = "item", name = "nullius-crusher-2", amount = 2},
      {type = "item", name = "nullius-medium-miner-3", amount = 1},
      {type = "item", name = "bob-ultimate-splitter", amount = 1},
      {type = "item", name = "nullius-box-wall", amount = 2}
    },
    results = {
      {type = "item", name = "nullius-crusher-3", amount = 1}
    }
  },

  {
    type = "recipe",
    name = "nullius-small-chest-1",
    localised_name = {"entity-name.nullius-small-chest-1"},
    enabled = false,
    category = "medium-crafting",
    always_show_made_in = true,
    energy_required = 2,
    ingredients = {
      {type = "item", name = "nullius-iron-sheet", amount = 2},
      {type = "item", name = "nullius-iron-rod", amount = 1}
    },
    results = {
      {type = "item", name = "wooden-chest", amount = 1}
    }
  },
  {
    type = "recipe",
    name = "nullius-small-chest-2",
    localised_name = {"entity-name.nullius-small-chest-2"},
    enabled = false,
    category = "medium-crafting",
    always_show_made_in = true,
    energy_required = 3,
    ingredients = {
      {type = "item", name = "wooden-chest", amount = 1},
      {type = "item", name = "nullius-steel-sheet", amount = 4},
      {type = "item", name = "nullius-steel-rod", amount = 2},
      {type = "item", name = "nullius-rubber", amount = 1}
    },
    results = {
      {type = "item", name = "iron-chest", amount = 1}
    }
  },
  {
    type = "recipe",
    name = "nullius-small-chest-3",
    localised_name = {"entity-name.nullius-small-chest-3"},
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
    results = {
      {type = "item", name = "steel-chest", amount = 1}
    }
  },

  {
    type = "item",
    name = "nullius-large-chest-1",
    icons = {{
      icon = "__base__/graphics/icons/steel-chest.png",
      icon_size = 64,
      
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
      {type = "item", name = "iron-chest", amount = 4},
      {type = "item", name = "nullius-aluminum-plate", amount = 3}
    },
    results = {
      {type = "item", name = "nullius-large-chest-1", amount = 1}
    }
  },
  {
    type = "recipe",
    name = "nullius-large-chest-2",
    enabled = false,
    category = "medium-crafting",
    always_show_made_in = true,
    energy_required = 15,
    ingredients = {
      {type = "item", name = "nullius-large-chest-1", amount = 1},
      {type = "item", name = "steel-chest", amount = 2},
      {type = "item", name = "nullius-titanium-plate", amount = 2}
    },
    results = {
      {type = "item", name = "nullius-large-chest-2", amount = 1}
    }
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
      icon = "__base__/graphics/icons/storage-chest.png",
      icon_size = 64,
      
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
      {type = "item", name = "iron-chest", amount = 1},
      {type = "item", name = "programmable-speaker", amount = 1},
      {type = "item", name = "arithmetic-combinator", amount = 1}
    },
    results = {
      {type = "item", name = "nullius-small-storage-chest-1", amount = 1}
    }
  },
  {
    type = "recipe",
    name = "nullius-large-storage-chest-1",
    enabled = false,
    category = "medium-crafting",
    always_show_made_in = true,
    energy_required = 6,
    ingredients = {
      {type = "item", name = "nullius-small-storage-chest-1", amount = 1},
      {type = "item", name = "nullius-large-chest-1", amount = 1},
      {type = "item", name = "nullius-sensor-1", amount = 1},
      {type = "item", name = "nullius-red-wire", amount = 4}
    },
    results = {
      {type = "item", name = "nullius-large-storage-chest-1", amount = 1}
    }
  },
  {
    type = "recipe",
    name = "nullius-small-storage-chest-2",
    localised_name = {"entity-name.nullius-small-storage-chest-2"},
    enabled = false,
    always_show_made_in = true,
    category = "medium-crafting",
    energy_required = 8,
    ingredients = {
      {type = "item", name = "nullius-small-storage-chest-1", amount = 1},
      {type = "item", name = "steel-chest", amount = 1},
      {type = "item", name = "nullius-relay-2", amount = 1},
      {type = "item", name = "nullius-processor-2", amount = 1}
    },
    results = {
      {type = "item", name = "storage-chest", amount = 1}
    }
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
      {type = "item", name = "nullius-large-storage-chest-1", amount = 1},
      {type = "item", name = "storage-chest", amount = 1},
      {type = "item", name = "nullius-large-chest-2", amount = 1},
      {type = "item", name = "bob-express-bulk-inserter", amount = 1}
    },
	  results = {
      {type = "item", name = "nullius-large-storage-chest-2", amount = 2}
    }
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
      icon = "__base__/graphics/icons/passive-provider-chest.png",
      icon_size = 64,
      
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
      {type = "item", name = "nullius-small-storage-chest-1", amount = 1},
      {type = "item", name = "nullius-red-wire", amount = 1}
    },
    results = {
      {type = "item", name = "nullius-small-supply-chest-1", amount = 1}
    }
  },
  {
    type = "recipe",
    name = "nullius-large-supply-chest-1",
    enabled = false,
    category = "medium-crafting",
    always_show_made_in = true,
    energy_required = 3,
    ingredients = {
      {type = "item", name = "nullius-large-storage-chest-1", amount = 1},
      {type = "item", name = "nullius-small-supply-chest-1", amount = 1}
    },
    results = {
      {type = "item", name = "nullius-large-supply-chest-1", amount = 1}
    }
  },
  {
    type = "recipe",
    name = "nullius-small-supply-chest-2",
    localised_name = {"entity-name.nullius-small-supply-chest-2"},
    enabled = false,
    always_show_made_in = true,
    category = "medium-crafting",
    energy_required = 4,
    ingredients = {
      {type = "item", name = "nullius-small-supply-chest-1", amount = 1},
      {type = "item", name = "storage-chest", amount = 1}
    },
    results = {
      {type = "item", name = "passive-provider-chest", amount = 1}
    }
  },
  {
    type = "recipe",
    name = "nullius-large-supply-chest-2",
    enabled = false,
    always_show_made_in = true,
    category = "medium-crafting",
    energy_required = 6,
    ingredients = {
      {type = "item", name = "nullius-large-supply-chest-1", amount = 1},
      {type = "item", name = "nullius-large-storage-chest-2", amount = 1}
    },
    results = {
      {type = "item", name = "nullius-large-supply-chest-2", amount = 1}
    }
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
      icon = "__base__/graphics/icons/requester-chest.png",
      icon_size = 64,
      
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
      {type = "item", name = "nullius-small-storage-chest-1", amount = 1},
      {type = "item", name = "nullius-sensor-1", amount = 1}
    },
    results = {
      {type = "item", name = "nullius-small-demand-chest-1", amount = 1}
    }
  },
  {
    type = "recipe",
    name = "nullius-large-demand-chest-1",
    enabled = false,
    category = "medium-crafting",
    always_show_made_in = true,
    energy_required = 3,
    ingredients = {
      {type = "item", name = "nullius-large-storage-chest-1", amount = 1},
      {type = "item", name = "nullius-small-demand-chest-1", amount = 1}
    },
    results = {
      {type = "item", name = "nullius-large-demand-chest-1", amount = 1}
    }
  },
  {
    type = "recipe",
    name = "nullius-small-demand-chest-2",
    localised_name = {"entity-name.nullius-small-demand-chest-2"},
    enabled = false,
    always_show_made_in = true,
    category = "medium-crafting",
    energy_required = 4,
    ingredients = {
      {type = "item", name = "nullius-small-demand-chest-1", amount = 1},
      {type = "item", name = "storage-chest", amount = 1}
    },
    results = {
      {type = "item", name = "requester-chest", amount = 1}
    }
  },
  {
    type = "recipe",
    name = "nullius-large-demand-chest-2",
    enabled = false,
    always_show_made_in = true,
    category = "medium-crafting",
    energy_required = 6,
    ingredients = {
      {type = "item", name = "nullius-large-demand-chest-1", amount = 1},
      {type = "item", name = "nullius-large-storage-chest-2", amount = 1}
    },
    results = {
      {type = "item", name = "nullius-large-demand-chest-2", amount = 1}
    }
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
      icon = "__base__/graphics/icons/buffer-chest.png",
      icon_size = 64,
      
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
      {type = "item", name = "nullius-small-demand-chest-1", amount = 1},
      {type = "item", name = "nullius-green-wire", amount = 2}
    },
    results = {
      {type = "item", name = "nullius-small-buffer-chest-1", amount = 1}
    }
  },
  {
    type = "recipe",
    name = "nullius-large-buffer-chest-1",
    enabled = false,
    category = "medium-crafting",
    always_show_made_in = true,
    energy_required = 3,
    ingredients = {
      {type = "item", name = "nullius-large-storage-chest-1", amount = 1},
      {type = "item", name = "nullius-small-buffer-chest-1", amount = 1}
    },
    results = {
      {type = "item", name = "nullius-large-buffer-chest-1", amount = 1}
    }
  },
  {
    type = "recipe",
    name = "nullius-small-buffer-chest-2",
    localised_name = {"entity-name.nullius-small-buffer-chest-2"},
    enabled = false,
    always_show_made_in = true,
    category = "medium-crafting",
    energy_required = 4,
    ingredients = {
      {type = "item", name = "nullius-small-buffer-chest-1", amount = 1},
      {type = "item", name = "storage-chest", amount = 1}
    },
    results = {
      {type = "item", name = "buffer-chest", amount = 1}
    }
  },
  {
    type = "recipe",
    name = "nullius-large-buffer-chest-2",
    enabled = false,
    always_show_made_in = true,
    category = "medium-crafting",
    energy_required = 6,
    ingredients = {
      {type = "item", name = "nullius-large-buffer-chest-1", amount = 1},
      {type = "item", name = "nullius-large-storage-chest-2", amount = 1}
    },
    results = {
      {type = "item", name = "nullius-large-buffer-chest-2", amount = 1}
    }
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
      icon = "__base__/graphics/icons/active-provider-chest.png",
      icon_size = 64,
      
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
      {type = "item", name = "nullius-small-supply-chest-1", amount = 1},
      {type = "item", name = "nullius-green-wire", amount = 1}
    },
    results = {
      {type = "item", name = "nullius-small-dispatch-chest-1", amount = 1}
    }
  },
  {
    type = "recipe",
    name = "nullius-large-dispatch-chest-1",
    enabled = false,
    category = "medium-crafting",
    always_show_made_in = true,
    energy_required = 3,
    ingredients = {
      {type = "item", name = "nullius-large-storage-chest-1", amount = 1},
      {type = "item", name = "nullius-small-dispatch-chest-1", amount = 1}
    },
    results = {
      {type = "item", name = "nullius-large-dispatch-chest-1", amount = 1}
    }
  },
  {
    type = "recipe",
    name = "nullius-small-dispatch-chest-2",
    localised_name = {"entity-name.nullius-small-dispatch-chest-2"},
    enabled = false,
    always_show_made_in = true,
    category = "medium-crafting",
    energy_required = 4,
    ingredients = {
      {type = "item", name = "nullius-small-dispatch-chest-1", amount = 1},
      {type = "item", name = "storage-chest", amount = 1}
    },
    results = {
      {type = "item", name = "active-provider-chest", amount = 1}
    }
  },
  {
    type = "recipe",
    name = "nullius-large-dispatch-chest-2",
    enabled = false,
    always_show_made_in = true,
    category = "medium-crafting",
    energy_required = 6,
    ingredients = {
      {type = "item", name = "nullius-large-dispatch-chest-1", amount = 1},
      {type = "item", name = "nullius-large-storage-chest-2", amount = 1}
    },
    results = {
      {type = "item", name = "nullius-large-dispatch-chest-2", amount = 1}
    }
  },

  {
    type = "item",
    name = "nullius-grid-battery-1",
    icons = {{
      icon = "__base__/graphics/icons/accumulator.png",
      icon_size = 64,
      
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
      {type = "item", name = "nullius-steel-sheet", amount = 2},
      {type = "item", name = "nullius-battery-1", amount = 3},
      {type = "item", name = "power-switch", amount = 1},
      {type = "item", name = "nullius-sensor-1", amount = 1},
      {type = "item", name = "nullius-capacitor", amount = 3},
      {type = "item", name = "nullius-transformer", amount = 1}
    },
    results = {
      {type = "item", name = "nullius-grid-battery-1", amount = 1}
    }
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
      {type = "item", name = "nullius-box-steel-sheet", amount = 2},
      {type = "item", name = "nullius-box-battery-1", amount = 3},
      {type = "item", name = "nullius-box-power-switch", amount = 1},
      {type = "item", name = "nullius-box-sensor-1", amount = 1},
      {type = "item", name = "nullius-box-capacitor", amount = 3},
      {type = "item", name = "nullius-box-transformer", amount = 1}
    },
    results = {
      {type = "item", name = "nullius-box-grid-battery-1", amount = 1}
    }
  },
  {
    type = "recipe",
    name = "nullius-grid-battery-2",
    enabled = false,
    always_show_made_in = true,
    category = "large-crafting",
    energy_required = 15,
    ingredients = {
      {type = "item", name = "nullius-grid-battery-1", amount = 2},
      {type = "item", name = "nullius-fiberglass", amount = 3},
      {type = "item", name = "nullius-battery-2", amount = 4},
      {type = "item", name = "nullius-sensor-2", amount = 1},
      {type = "item", name = "nullius-power-pole-4", amount = 1},
      {type = "item", name = "nullius-heat-pipe-2", amount = 2}
    },
    results = {
      {type = "item", name = "nullius-grid-battery-2", amount = 1}
    }
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
      {type = "item", name = "nullius-box-grid-battery-1", amount = 2},
      {type = "item", name = "nullius-box-fiberglass", amount = 3},
      {type = "item", name = "nullius-box-battery-2", amount = 4},
      {type = "item", name = "nullius-box-sensor-2", amount = 1},
      {type = "item", name = "nullius-box-power-pole-4", amount = 1},
      {type = "item", name = "nullius-box-heat-pipe-2", amount = 2}
    },
    results = {
      {type = "item", name = "nullius-box-grid-battery-2", amount = 1}
    }
  },
  {
    type = "recipe",
    name = "nullius-grid-battery-3",
    enabled = false,
    always_show_made_in = true,
    category = "large-crafting",
    energy_required = 50,
    ingredients = {
      {type = "item", name = "nullius-box-grid-battery-2", amount = 1},
      {type = "item", name = "nullius-battery-3", amount = 3}
    },
    results = {
      {type = "item", name = "nullius-grid-battery-3", amount = 1}
    }
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
      {type = "item", name = "nullius-aluminum-sheet", amount = 4},
      {type = "item", name = "nullius-glass", amount = 5},
      {type = "item", name = "decider-combinator", amount = 6},
      {type = "item", name = "inserter", amount = 3},
      {type = "item", name = "small-lamp", amount = 2}
    },
    results = {
      {type = "item", name = "nullius-lab-1", amount = 1}
    }
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
      {type = "item", name = "nullius-chemical-plant-2", amount = 1},
      {type = "item", name = "radar", amount = 1},
      {type = "item", name = "nullius-beacon-1", amount = 1},
      {type = "item", name = "nullius-processor-1", amount = 8},
      {type = "item", name = "bulk-inserter", amount = 2},
      {type = "item", name = "stone-wall", amount = 6},
      {type = "item", name = "gate", amount = 2}
    },
    results = {
      {type = "item", name = "nullius-lab-2", amount = 1}
    }
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
      {type = "item", name = "nullius-lab-2", amount = 2},
      {type = "item", name = "nullius-nanofabricator-2", amount = 1},
      {type = "item", name = "nullius-sensor-node-3", amount = 1},
      {type = "item", name = "nullius-box-processor-2", amount = 2},
      {type = "item", name = "nullius-logistic-bot-3", amount = 2}
    },
    results = {
      {type = "item", name = "nullius-lab-3", amount = 1}
    }
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
      {type = "item", name = "nullius-lab-2", amount = 3},
	    {type = "item", name = "nullius-sensor-node-2", amount = 1},
      {type = "item", name = "nullius-nanofabricator-1", amount = 1},
	    {type = "item", name = "nullius-logistic-bot-2", amount = 2},
      {type = "item", name = "nullius-box-insulation", amount = 10}
    },
    results = {
      {type = "item", name = "nullius-biology-lab", amount = 1}
    }
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
      {type = "item", name = "programmable-speaker", amount = 1},
      {type = "item", name = "constant-combinator", amount = 2},
      {type = "item", name = "medium-electric-pole", amount = 1},
      {type = "item", name = "nullius-iron-sheet", amount = 2},
      {type = "item", name = "nullius-capacitor", amount = 1}
    },
    results = {
      {type = "item", name = "nullius-beacon-1", amount = 1}
    }
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
      {type = "item", name = "nullius-box-antenna", amount = 1},
      {type = "item", name = "nullius-box-memory-circuit", amount = 2},
      {type = "item", name = "nullius-box-power-pole-2", amount = 1},
      {type = "item", name = "nullius-box-iron-sheet", amount = 2},
      {type = "item", name = "nullius-box-capacitor", amount = 1}
    },
    results = {
      {type = "item", name = "nullius-beacon-1", amount = 5}
    }
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
      {type = "item", name = "nullius-beacon-1", amount = 1},
      {type = "item", name = "nullius-sensor-2", amount = 1},
      {type = "item", name = "nullius-optical-cable", amount = 3},
      {type = "item", name = "nullius-relay-1", amount = 1},
      {type = "item", name = "substation", amount = 1}
    },
    results = {
      {type = "item", name = "nullius-beacon-2", amount = 1}
    }
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
      {type = "item", name = "nullius-beacon-1", amount = 5},
      {type = "item", name = "nullius-box-sensor-2", amount = 1},
      {type = "item", name = "nullius-box-optical-cable", amount = 3},
      {type = "item", name = "nullius-box-relay-1", amount = 1},
      {type = "item", name = "substation", amount = 5}
    },
    results = {
      {type = "item", name = "nullius-beacon-2", amount = 5}
    }
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
      {type = "item", name = "nullius-beacon-2", amount = 2},
      {type = "item", name = "nullius-processor-2", amount = 2},
      {type = "item", name = "nullius-relay-3", amount = 1},
      {type = "item", name = "nullius-substation-2", amount = 1}
    },
	  results = {
      {type = "item", name = "nullius-beacon-3", amount = 2}
    }
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
      {type = "item", name = "nullius-beacon-2", amount = 10},
      {type = "item", name = "nullius-box-processor-2", amount = 2},
      {type = "item", name = "nullius-box-relay-3", amount = 1},
      {type = "item", name = "nullius-substation-2", amount = 5}
    },
    results = {
      {type = "item", name = "nullius-beacon-3", amount = 10}
    }
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
      {type = "item", name = "nullius-beacon-2", amount = 3},
      {type = "item", name = "nullius-sensor-node-2", amount = 1},
      {type = "item", name = "nullius-relay-2", amount = 1},
      {type = "item", name = "nullius-productivity-module-1", amount = 1}
    },
	  results = {
      {type = "item", name = "nullius-large-beacon-1", amount = 2}
    }
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
      {type = "item", name = "nullius-large-beacon-1", amount = 3},
      {type = "item", name = "nullius-beacon-3", amount = 5},
      {type = "item", name = "nullius-telekinesis-field-2", amount = 1},
      {type = "item", name = "nullius-sensor-node-3", amount = 1},
      {type = "item", name = "nullius-productivity-module-2", amount = 1}
    },
	  results = {
      {type = "item", name = "nullius-large-beacon-2", amount = 3}
    }
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
      {type = "item", name = "nullius-large-beacon-1", amount = 1},
      {type = "item", name = "nullius-beacon-3", amount = 3},
      {type = "item", name = "nullius-sensor-node-3", amount = 1},
      {type = "item", name = "nullius-productivity-module-2", amount = 1}
    },
    results = {
      {type = "item", name = "nullius-large-beacon-2", amount = 1}
    }
  },

  {
    type = "recipe",
    name = "nullius-sensor-node-1",
    localised_name = {"entity-name.nullius-sensor-node-1"},
    enabled = false,
    category = "large-crafting",
    always_show_made_in = true,
    energy_required = 10,
    ingredients = {
      {type = "item", name = "nullius-sensor-1", amount = 2},
      {type = "item", name = "programmable-speaker", amount = 1},
      {type = "item", name = "nullius-glass", amount = 3},
      {type = "item", name = "nullius-iron-sheet", amount = 3},
      {type = "item", name = "nullius-motor-2", amount = 1}
    },
    results = {
      {type = "item", name = "radar", amount = 1}
    }
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
      {type = "item", name = "nullius-box-sensor-1", amount = 2},
      {type = "item", name = "nullius-box-antenna", amount = 1},
      {type = "item", name = "nullius-box-glass", amount = 3},
      {type = "item", name = "nullius-box-iron-sheet", amount = 3},
      {type = "item", name = "nullius-box-motor-2", amount = 1}
    },
    results = {
      {type = "item", name = "radar", amount = 5}
    }
  },

  {
    type = "item",
    name = "nullius-sensor-node-2",
    icons = {{
      icon = "__base__/graphics/icons/radar.png",
      icon_size = 64,
      
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
      {type = "item", name = "radar", amount = 1},
      {type = "item", name = "nullius-sensor-2", amount = 2},
      {type = "item", name = "nullius-hard-glass", amount = 4},
      {type = "item", name = "nullius-fiberglass", amount = 4},
      {type = "item", name = "nullius-optical-cable", amount = 6}
    },
    results = {
      {type = "item", name = "nullius-sensor-node-2", amount = 1}
    }
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
      {type = "item", name = "radar", amount = 5},
      {type = "item", name = "nullius-box-sensor-2", amount = 3},
      {type = "item", name = "nullius-box-hard-glass", amount = 4},
      {type = "item", name = "nullius-box-fiberglass", amount = 4},
      {type = "item", name = "nullius-box-optical-cable", amount = 6}
    },
    results = {
      {type = "item", name = "nullius-sensor-node-2", amount = 5}
    }
  },

  {
    type = "item",
    name = "nullius-sensor-node-3",
    icons = {{
      icon = "__base__/graphics/icons/radar.png",
      icon_size = 64,
      
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
      {type = "item", name = "nullius-sensor-node-2", amount = 2},
      {type = "item", name = "nullius-beacon-2", amount = 1},
      {type = "item", name = "nullius-bearing", amount = 2},
      {type = "item", name = "nullius-yield-module-3", amount = 1},
      {type = "item", name = "nullius-box-reinforced-concrete", amount = 1}
    },
    results = {
      {type = "item", name = "nullius-sensor-node-3", amount = 1}
    }
  },

  {
    type = "recipe",
    name = "nullius-logic-circuit",
    localised_name = {"entity-name.nullius-logic-circuit"},
    enabled = false,
    show_amount_in_title = false,
    always_show_products = true,
    category = "tiny-assembly",
    energy_required = 5,
    ingredients = {
      {type = "item", name = "nullius-plastic", amount = 3},
      {type = "item", name = "nullius-aluminum-wire", amount = 4},
      {type = "item", name = "nullius-polycrystalline-silicon", amount = 2},
      {type = "item", name = "nullius-graphite", amount = 1}
    },
    results = {
      {type = "item", name = "decider-combinator", amount = 3}
    }
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
      {type = "item", name = "nullius-box-plastic", amount = 3},
      {type = "item", name = "nullius-box-aluminum-wire", amount = 4},
      {type = "item", name = "nullius-box-polycrystalline-silicon", amount = 2},
      {type = "item", name = "nullius-box-graphite", amount = 1}
    },
    results = {
      {type = "item", name = "nullius-box-logic-circuit", amount = 3}
    }
  },
  {
    type = "recipe",
    name = "nullius-logic-circuit-2",
    localised_name = {"", {"item-name.nullius-box", {"entity-name.nullius-logic-circuit"}}, " ", tostring(2)},
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
    results = {
      {type = "item", name = "nullius-box-logic-circuit", amount = 5}
    }
  },
  {
    type = "recipe",
    name = "nullius-memory-circuit",
    localised_name = {"entity-name.nullius-memory-circuit"},
    enabled = false,
    category = "tiny-crafting",
    always_show_made_in = true,
    show_amount_in_title = false,
    always_show_products = true,
    energy_required = 7,
    ingredients = {
      {type = "item", name = "decider-combinator", amount = 2},
      {type = "item", name = "nullius-capacitor", amount = 3}
    },
    results = {
      {type = "item", name = "constant-combinator", amount = 4}
    }
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
      {type = "item", name = "nullius-box-logic-circuit", amount = 2},
      {type = "item", name = "nullius-box-capacitor", amount = 3}
    },
    results = {
      {type = "item", name = "nullius-box-memory-circuit", amount = 4}
    }
  },
  {
    type = "recipe",
    name = "nullius-memory-circuit-2",
    localised_name = {"", {"item-name.nullius-box", {"entity-name.nullius-memory-circuit"}}, " ", tostring(2)},
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
    results = {
      {type = "item", name = "nullius-box-memory-circuit", amount = 5}
    }
  },
  {
    type = "recipe",
    name = "nullius-arithmetic-circuit",
    localised_name = {"entity-name.nullius-arithmetic-circuit"},
    enabled = false,
    category = "tiny-crafting",
    always_show_made_in = true,
    energy_required = 3,
    ingredients = {
      {type = "item", name = "decider-combinator", amount = 1},
      {type = "item", name = "constant-combinator", amount = 1},
      {type = "item", name = "nullius-aluminum-wire", amount = 1}
    },
    results = {
      {type = "item", name = "arithmetic-combinator", amount = 1}
    }
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
      {type = "item", name = "nullius-box-logic-circuit", amount = 1},
      {type = "item", name = "nullius-box-memory-circuit", amount = 1},
      {type = "item", name = "nullius-box-aluminum-wire", amount = 1}
    },
    results = {
      {type = "item", name = "nullius-box-arithmetic-circuit", amount = 1}
    }
  },
  {
    type = "recipe",
    name = "nullius-selector-circuit",
    localised_name = {"entity-name.nullius-selector-circuit"},
    enabled = false,
    category = "tiny-crafting",
    always_show_made_in = true,
    energy_required = 3,
    ingredients = {
      {type = "item", name = "arithmetic-combinator", amount = 1},
      {type = "item", name = "display-panel", amount = 1},
      {type = "item", name = "nullius-aluminum-wire", amount = 1},
      {type = "item", name = "nullius-polycrystalline-silicon", amount = 2},
    },
    results = {
      {type = "item", name = "selector-combinator", amount = 1}
    }
  },
  {
    type = "recipe",
    name = "nullius-boxed-selector-circuit",
    enabled = false,
    category = "medium-only-assembly",
    subgroup = "boxed-circuit",
    always_show_made_in = true,
    energy_required = 15,
    ingredients = {
      {type = "item", name = "nullius-box-arithmetic-circuit", amount = 1},
      {type = "item", name = "nullius-box-display-panel", amount = 1},
      {type = "item", name = "nullius-box-aluminum-wire", amount = 1},
      {type = "item", name = "nullius-box-polycrystalline-silicon", amount = 2},
    },
    results = {
      {type = "item", name = "nullius-box-selector-circuit", amount = 1}
    }
  },
  {
    type = "recipe",
    name = "nullius-display-panel",
    localised_name = {"entity-name.display-panel"},
    enabled = false,
    category = "tiny-crafting",
    always_show_made_in = true,
    energy_required = 3,
    ingredients = {
      {type = "item", name = "decider-combinator", amount = 1},
      {type = "item", name = "nullius-glass", amount = 1},
      {type = "item", name = "nullius-plastic", amount = 1},
      {type = "item", name = "nullius-aluminum-wire", amount = 1}
    },
    results = {
      {type = "item", name = "display-panel", amount = 1}
    }
  },
  {
    type = "recipe",
    name = "nullius-boxed-display-panel",
    enabled = false,
    category = "medium-only-assembly",
    subgroup = "boxed-circuit",
    always_show_made_in = true,
    energy_required = 15,
    ingredients = {
      {type = "item", name = "nullius-box-logic-circuit", amount = 1},
      {type = "item", name = "nullius-box-glass", amount = 1},
      {type = "item", name = "nullius-box-plastic", amount = 1},
      {type = "item", name = "nullius-box-aluminum-wire", amount = 1}
    },
    results = {
      {type = "item", name = "nullius-box-display-panel", amount = 1}
    }
  },
  {
    type = "recipe",
    name = "nullius-antenna",
    localised_name = {"entity-name.nullius-antenna"},
    enabled = false,
    category = "small-crafting",
    always_show_made_in = true,
    energy_required = 6,
    ingredients = {
      {type = "item", name = "nullius-aluminum-rod", amount = 2},
      {type = "item", name = "nullius-red-wire", amount = 1},
      {type = "item", name = "nullius-rubber", amount = 1},
      {type = "item", name = "nullius-capacitor", amount = 1}
    },
    results = {
      {type = "item", name = "programmable-speaker", amount = 1}
    }
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
      {type = "item", name = "nullius-box-aluminum-rod", amount = 2},
      {type = "item", name = "nullius-box-red-wire", amount = 1},
      {type = "item", name = "nullius-box-rubber", amount = 1},
      {type = "item", name = "nullius-box-capacitor", amount = 1}
    },
    results = {
      {type = "item", name = "nullius-box-antenna", amount = 1}
    }
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
    localised_name = {"entity-name.nullius-lamp-1"},
    enabled = false,
    always_show_made_in = true,
    show_amount_in_title = false,
    always_show_products = true,
    category = "small-crafting",
    energy_required = 5,
    ingredients = {
      {type = "item", name = "nullius-graphite", amount = 2},
      {type = "item", name = "nullius-glass", amount = 1},
      {type = "item", name = "nullius-iron-sheet", amount = 1}
    },
    results = {
      {type = "item", name = "small-lamp", amount = 1}
    }
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
      {type = "item", name = "nullius-carbon-fiber", amount = 1},
      {type = "item", name = "nullius-glass", amount = 2},
      {type = "item", name = "nullius-aluminum-sheet", amount = 2}
    },
    results = {
      {type = "item", name = "small-lamp", amount = 5}
    }
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
      {type = "item", name = "nullius-box-carbon-fiber", amount = 1},
      {type = "item", name = "nullius-box-glass", amount = 2},
      {type = "item", name = "nullius-box-aluminum-sheet", amount = 2}
    },
    results = {
      {type = "item", name = "nullius-box-lamp-1", amount = 5}
    }
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
      {type="item", name="nullius-green-wire", amount=2},
      {type="fluid", name="nullius-compressed-argon", amount=10, fluidbox_index=1}
    },
    results = {
      {type = "item", name = "nullius-lamp-2", amount = 2}
    }
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
    results = {
      {type = "item", name = "nullius-box-lamp-2", amount = 2}
    }
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
      icon_size = 64, 
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
      icon_size = 64, 
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
      icon_size = 64, 
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
    localised_name = {"entity-name.nullius-power-pole-1"},
    enabled = false,
    always_show_made_in = true,
    category = "medium-crafting",
    energy_required = 2,
    ingredients = {
      {type = "item", name = "nullius-iron-wire", amount = 2},
      {type = "item", name = "nullius-iron-rod", amount = 1},
      {type = "item", name = "nullius-plastic", amount = 1}
    },
    results = {
      {type = "item", name = "small-electric-pole", amount = 1}
    }
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
      {type = "item", name = "nullius-box-insulated-wire", amount = 2},
      {type = "item", name = "nullius-box-steel-rod", amount = 1}
    },
    results = {
      {type = "item", name = "nullius-box-power-pole-1", amount = 2}
    }
  },
  {
    type = "recipe",
    name = "nullius-power-pole-2",
    localised_name = {"entity-name.nullius-power-pole-2"},
    enabled = false,
    category = "medium-crafting",
    always_show_made_in = true,
    energy_required = 3,
    ingredients = {
      {type = "item", name = "small-electric-pole", amount = 1},
      {type = "item", name = "copper-cable", amount = 2},
      {type = "item", name = "nullius-aluminum-rod", amount = 1}
    },
    results = {
      {type = "item", name = "medium-electric-pole", amount = 1}
    }
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
      {type = "item", name = "nullius-box-power-pole-1", amount = 1},
      {type = "item", name = "nullius-box-insulated-wire", amount = 2},
      {type = "item", name = "nullius-box-aluminum-rod", amount = 1}
    },
    results = {
      {type = "item", name = "nullius-box-power-pole-2", amount = 1}
    }
  },
  {
    type = "recipe",
    name = "nullius-power-pole-3",
    enabled = false,
    category = "medium-crafting",
    always_show_made_in = true,
    energy_required = 5,
    ingredients = {
      {type = "item", name = "medium-electric-pole", amount = 1},
      {type = "item", name = "nullius-red-wire", amount = 3},
      {type = "item", name = "nullius-fiberglass", amount = 2},
      {type = "item", name = "nullius-ceramic-powder", amount = 1}
    },
    results = {
      {type = "item", name = "nullius-power-pole-3", amount = 1}
    }
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
      {type = "item", name = "nullius-box-power-pole-2", amount = 1},
      {type = "item", name = "nullius-box-red-wire", amount = 3},
      {type = "item", name = "nullius-box-fiberglass", amount = 2},
      {type = "item", name = "nullius-box-ceramic-powder", amount = 1}
    },
    results = {
      {type = "item", name = "nullius-box-power-pole-3", amount = 1}
    }
  },
  {
    type = "recipe",
    name = "nullius-power-pole-4",
    enabled = false,
    always_show_made_in = true,
    category = "medium-crafting",
    energy_required = 8,
    ingredients = {
      {type = "item", name = "nullius-power-pole-3", amount = 1},
      {type = "item", name = "nullius-optical-cable", amount = 2},
      {type = "item", name = "nullius-sensor-1", amount = 1},
      {type = "item", name = "nullius-transformer", amount = 1},
      {type = "item", name = "power-switch", amount = 1},
      {type = "item", name = "concrete", amount = 2}
    },
    results = {
      {type = "item", name = "nullius-power-pole-4", amount = 1}
    }
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
      {type = "item", name = "nullius-box-power-pole-3", amount = 1},
      {type = "item", name = "nullius-box-optical-cable", amount = 2},
      {type = "item", name = "nullius-box-sensor-1", amount = 1},
      {type = "item", name = "nullius-box-transformer", amount = 1},
      {type = "item", name = "nullius-box-power-switch", amount = 1},
      {type = "item", name = "nullius-box-concrete", amount = 1}
    },
    results = {
      {type = "item", name = "nullius-box-power-pole-4", amount = 1}
    }
  },

  {
    type = "recipe",
    name = "nullius-pylon-1",
    localised_name = {"entity-name.nullius-pylon-1"},
    enabled = false,
    always_show_made_in = true,
    category = "large-crafting",
    energy_required = 4,
    ingredients = {
      {type = "item", name = "medium-electric-pole", amount = 1},
      {type = "item", name = "copper-cable", amount = 3},
      {type = "item", name = "nullius-steel-beam", amount = 2}
    },
    results = {
      {type = "item", name = "big-electric-pole", amount = 1}
    }
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
      {type = "item", name = "nullius-box-power-pole-2", amount = 1},
      {type = "item", name = "nullius-box-insulated-wire", amount = 3},
      {type = "item", name = "nullius-box-steel-beam", amount = 2}
    },
    results = {
      {type = "item", name = "nullius-box-pylon-1", amount = 1}
    }
  },
  {
    type = "recipe",
    name = "nullius-pylon-2",
    enabled = false,
    always_show_made_in = true,
    category = "large-crafting",
    energy_required = 6,
    ingredients = {
      {type = "item", name = "big-electric-pole", amount = 1},
      {type = "item", name = "nullius-power-pole-3", amount = 1},
      {type = "item", name = "nullius-aluminum-wire", amount = 3},
      {type = "item", name = "nullius-steel-cable", amount = 2},
      {type = "item", name = "nullius-transformer", amount = 1},
      {type = "item", name = "concrete", amount = 4}
    },
    results = {
      {type = "item", name = "nullius-pylon-2", amount = 1}
    }
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
      {type = "item", name = "nullius-box-pylon-1", amount = 1},
      {type = "item", name = "nullius-box-power-pole-3", amount = 1},
      {type = "item", name = "nullius-box-aluminum-wire", amount = 3},
      {type = "item", name = "nullius-box-steel-cable", amount = 2},
      {type = "item", name = "nullius-box-transformer", amount = 1},
      {type = "item", name = "nullius-box-concrete", amount = 2}
    },
    results = {
      {type = "item", name = "nullius-box-pylon-2", amount = 1}
    }
  },
  {
    type = "recipe",
    name = "nullius-pylon-3",
    enabled = false,
    always_show_made_in = true,
    category = "large-crafting",
    energy_required = 10,
    ingredients = {
      {type = "item", name = "nullius-pylon-2", amount = 1},
      {type = "item", name = "nullius-power-pole-4", amount = 1},
      {type = "item", name = "nullius-calcium", amount = 10},
      {type = "item", name = "nullius-efficiency-module-1", amount = 1},
      {type = "item", name = "refined-concrete", amount = 6}
    },
    results = {
      {type = "item", name = "nullius-pylon-3", amount = 1}
    }
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
      {type = "item", name = "nullius-box-pylon-2", amount = 1},
      {type = "item", name = "nullius-box-power-pole-4", amount = 1},
      {type = "item", name = "nullius-box-calcium", amount = 10},
      {type = "item", name = "nullius-box-efficiency-module-1", amount = 1},
      {type = "item", name = "nullius-box-reinforced-concrete", amount = 3}
    },
    results = {
      {type = "item", name = "nullius-box-pylon-3", amount = 1}
    }
  },

  {
    type = "recipe",
    name = "nullius-substation-1",
    localised_name = {"entity-name.nullius-substation-1"},
    enabled = false,
    category = "large-crafting",
    always_show_made_in = true,
    energy_required = 10,
    ingredients = {
      {type = "item", name = "big-electric-pole", amount = 1},
      {type = "item", name = "medium-electric-pole", amount = 1},
      {type = "item", name = "power-switch", amount = 1},
      {type = "item", name = "concrete", amount = 6},
      {type = "item", name = "nullius-transformer", amount = 1}
    },
    results = {
      {type = "item", name = "substation", amount = 1}
    }
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
      {type = "item", name = "nullius-box-pylon-1", amount = 1},
      {type = "item", name = "nullius-box-power-pole-2", amount = 1},
      {type = "item", name = "nullius-box-power-switch", amount = 1},
      {type = "item", name = "nullius-box-concrete", amount = 3},
      {type = "item", name = "nullius-box-transformer", amount = 1}
    },
    results = {
      {type = "item", name = "substation", amount = 5}
    }
  },
  {
    type = "recipe",
    name = "nullius-substation-2",
    enabled = false,
    category = "large-crafting",
    always_show_made_in = true,
    energy_required = 18,
    ingredients = {
      {type = "item", name = "substation", amount = 1},
      {type = "item", name = "nullius-pylon-2", amount = 1},
      {type = "item", name = "nullius-power-pole-3", amount = 1},
      {type = "item", name = "nullius-sensor-1", amount = 2},
      {type = "item", name = "nullius-battery-1", amount = 2}
    },
    results = {
      {type = "item", name = "nullius-substation-2", amount = 1}
    }
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
      {type = "item", name = "substation", amount = 5},
      {type = "item", name = "nullius-box-pylon-2", amount = 1},
      {type = "item", name = "nullius-box-power-pole-3", amount = 1},
      {type = "item", name = "nullius-box-sensor-1", amount = 2},
      {type = "item", name = "nullius-box-battery-1", amount = 2}
    },
    results = {
      {type = "item", name = "nullius-substation-2", amount = 5}
    }
  },
  {
    type = "recipe",
    name = "nullius-substation-3",
    enabled = false,
    always_show_made_in = true,
    category = "large-crafting",
    energy_required = 40,
    ingredients = {
      {type = "item", name = "nullius-substation-2", amount = 2},
      {type = "item", name = "nullius-pylon-3", amount = 1},
      {type = "item", name = "nullius-power-pole-4", amount = 2},
      {type = "item", name = "nullius-sensor-2", amount = 2},
      {type = "item", name = "nullius-grid-battery-1", amount = 1},
      {type = "item", name = "refined-concrete", amount = 20}
    },
    results = {
      {type = "item", name = "nullius-substation-3", amount = 1}
    }
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
      {type = "item", name = "nullius-substation-2", amount = 10},
      {type = "item", name = "nullius-box-pylon-3", amount = 1},
      {type = "item", name = "nullius-box-power-pole-4", amount = 2},
      {type = "item", name = "nullius-box-sensor-2", amount = 2},
      {type = "item", name = "nullius-box-grid-battery-1", amount = 1},
      {type = "item", name = "nullius-box-reinforced-concrete", amount = 10}
    },
    results = {
      {type = "item", name = "nullius-substation-3", amount = 5}
    }
  },

  {
    type = "item",
    name = "nullius-reactor",
    icon = "__base__/graphics/icons/nuclear-reactor.png",
    icon_size = 64,
    
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
    results = {
      {type = "item", name = "nullius-reactor", amount = 1}
    }
  },

  {
    type = "item",
    name = "nullius-silo",
    icon = "__base__/graphics/icons/rocket-silo.png",
    icon_size = 64,
    
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
    results = {
      {type = "item", name = "nullius-silo", amount = 1}
    }
  },
  
  -- {
  --   type = "item", -- removed, using base game item instead
  --   name = "nullius-landing-pad",
  --   icon = "__base__/graphics/icons/cargo-landing-pad.png",
  --   icon_size = 64,
    
  --   subgroup = "space",
  --   order = "nullius-c",
  --   place_result = "cargo-landing-pad",
  --   stack_size = 1
  -- },
  {
    type = "recipe",
    name = "nullius-landing-pad",
    localised_name = {"item-name.nullius-landing-pad"},
    enabled = false,
	  always_show_made_in = true,
    category = "huge-crafting",
    energy_required = 180,
    ingredients = {
      {type="item", name="nullius-hangar-3", amount=2},
      {type="item", name="nullius-beacon-3", amount=4},
      {type="item", name="nullius-box-wall", amount=10},
      {type="item", name="nullius-box-steel-beam", amount=10},
      {type="item", name="nullius-box-plastic", amount=25},
      {type="item", name="nullius-box-rubber", amount=25},
      {type="item", name="nullius-box-textile", amount=25},
      {type="item", name="nullius-box-heat-pipe-3", amount=4},
      {type="item", name="nullius-box-hazard-concrete", amount=30},
      {type="item", name="nullius-large-supply-chest-2", amount=8},
      {type="item", name="nullius-box-sensor-2", amount=4},
      {type="item", name="nullius-box-logistic-bot-3", amount=5},
      --{type="item", name="nullius-box-productivity-module-2", amount=1},
      --{type="item", name="nullius-multi-tool-2", amount=15},
      --{type="item", name="nullius-armor-plate", amount=50}, --unlocked too late
    },
    results = {
      --{type = "item", name = "nullius-landing-pad", amount = 1}
      {type = "item", name = "cargo-landing-pad", amount = 1}
    }
  },

  {
    type = "item",
    name = "nullius-solar-collector-1",
    localised_name = {"", {"entity-name.nullius-solar-collector"}, " ", tostring(1)},
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
    localised_name = {"", {"entity-name.nullius-solar-collector"}, " ", tostring(2)},
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
    localised_name = {"", {"entity-name.nullius-solar-collector"}, " ", tostring(3)},
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
      {type = "item", name = "nullius-glass", amount = 6},
      {type = "item", name = "nullius-aluminum-sheet", amount = 5},
      {type = "item", name = "nullius-steel-rod", amount = 3},
      {type = "item", name = "nullius-heat-pipe-1", amount = 4}
    },
    results = {
      {type = "item", name = "nullius-solar-collector-1", amount = 1}
    }
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
      {type = "item", name = "nullius-box-glass", amount = 6},
      {type = "item", name = "nullius-box-aluminum-sheet", amount = 5},
      {type = "item", name = "nullius-box-steel-rod", amount = 3},
      {type = "item", name = "nullius-box-heat-pipe-1", amount = 4}
    },
    results = {
      {type = "item", name = "nullius-box-solar-collector-1", amount = 1}
    }
  },
  {
    type = "recipe",
    name = "nullius-solar-collector-2",
    enabled = false,
    always_show_made_in = true,
    category = "large-crafting",
    energy_required = 15,
    ingredients = {
      {type = "item", name = "nullius-solar-collector-1", amount = 2},
      {type = "item", name = "nullius-heat-pipe-2", amount = 8},
      {type = "item", name = "nullius-motor-2", amount = 1},
      {type = "item", name = "nullius-steel-cable", amount = 4},
      {type = "item", name = "nullius-titanium-sheet", amount = 5}
    },
    results = {
      {type = "item", name = "nullius-solar-collector-2", amount = 1}
    }
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
      {type = "item", name = "nullius-box-solar-collector-1", amount = 2},
      {type = "item", name = "nullius-box-heat-pipe-2", amount = 8},
      {type = "item", name = "nullius-box-motor-2", amount = 1},
      {type = "item", name = "nullius-box-steel-cable", amount = 4},
      {type = "item", name = "nullius-box-titanium-sheet", amount = 5}
    },
    results = {
      {type = "item", name = "nullius-box-solar-collector-2", amount = 1}
    }
  },
  {
    type = "recipe",
    name = "nullius-solar-collector-3",
    enabled = false,
    always_show_made_in = true,
    category = "large-crafting",
    energy_required = 30,
    ingredients = {
      {type = "item", name = "nullius-solar-collector-2", amount = 3},
      {type = "item", name = "nullius-hard-glass", amount = 10},
      {type = "item", name = "nullius-heat-pipe-3", amount = 8},
      {type = "item", name = "nullius-titanium-rod", amount = 4},
      {type = "item", name = "nullius-sensor-1", amount = 1},
      {type = "item", name = "nullius-monocrystalline-silicon", amount = 12}
    },
    results = {
      {type = "item", name = "nullius-solar-collector-3", amount = 1}
    }
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
      {type = "item", name = "nullius-box-solar-collector-2", amount = 3},
      {type = "item", name = "nullius-box-hard-glass", amount = 10},
      {type = "item", name = "nullius-box-heat-pipe-3", amount = 8},
      {type = "item", name = "nullius-box-titanium-rod", amount = 4},
      {type = "item", name = "nullius-box-sensor-1", amount = 1},
      {type = "item", name = "nullius-box-monocrystalline-silicon", amount = 12}
    },
    results = {
      {type = "item", name = "nullius-box-solar-collector-3", amount = 1}
    }
  }
})


if mods["reskins-bobs"] then
data.raw.item["nullius-grid-battery-1"].icons = {
  {
    icon = "__reskins-bobs__/graphics/icons/power/accumulator/accumulator-3-icon-base.png",
    icon_size = 64, 
  },
  {
    icon = "__reskins-bobs__/graphics/icons/power/accumulator/accumulator-icon-mask.png",
    icon_size = 64,  tint = tiercolor("red")
  },
  {
    icon = "__reskins-bobs__/graphics/icons/power/accumulator/accumulator-icon-highlights.png",
    icon_size = 64,  tint = {1, 1, 1, 0}
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
    icon_size = 64, 
  },
  {
    icon = "__reskins-bobs__/graphics/icons/warfare/radar/radar-icon-mask.png",
    icon_size = 64,  tint = tiercolor("yellow")
  },
  {
    icon = "__reskins-bobs__/graphics/icons/warfare/radar/radar-icon-highlights.png",
    icon_size = 64,  tint = {1, 1, 1, 0}
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
