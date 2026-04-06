require ("circuit-connector-sprites")
local sounds = require("__base__/prototypes/entity/sounds")

local ICONPATH = "__nullius__/graphics/icons/"
local ENTITYPATH = "__nullius__/graphics/entity/"

local BASEENTITY = "__base__/graphics/entity/"

data:extend({
  {
    type = "assembling-machine",
    name = "nullius-small-assembler-1",
	  order = "nullius-mbb",
    icon_size = 64,
    icons = data.raw.item["nullius-small-assembler-1"].icons,
    flags = {"placeable-neutral", "placeable-player", "player-creation"},
    icon_draw_specification = {shift = {0, -0.1}, scale = 0.8},
    minable = {mining_time = 0.6, result = "nullius-small-assembler-1"},
    max_health = 200,
    dying_explosion = "medium-explosion",
    corpse = "medium-remnants",
    resistances = {
      { type = "impact", decrease = 100, percent = 90 }
    },
    collision_box = {{-0.7, -0.7}, {0.7, 0.7}},
    selection_box = {{-1.0, -1.0}, {1.0, 1.0}},
    fast_replaceable_group = "small-assembler",
    next_upgrade = "nullius-small-assembler-2",
    alert_icon_shift = util.by_pixel(-3, -12),
    graphics_set = {
      animation = {
        layers = {
          {
            filename = BASEENTITY .. "assembling-machine-1/assembling-machine-1.png",
            priority="high",
            width = 214,
            height = 226,
            frame_count = 32,
            line_length = 8,
            shift = util.by_pixel(0, 2),
            scale = 0.666*0.5
          },
          {
            filename = BASEENTITY .. "assembling-machine-1/assembling-machine-1-shadow.png",
            priority="high",
            width = 190,
            height = 165,
            frame_count = 1,
            line_length = 1,
            repeat_count = 32,
            draw_as_shadow = true,
            shift = util.by_pixel(8.5, 5),
            scale = 0.666*0.5
          }
        }
      }
    },
    crafting_categories = {
      "tiny-crafting", "small-crafting", "medium-crafting",
      "tiny-assembly", "small-assembly", "medium-assembly",
      "packaging"
    },
    crafting_speed = 0.5,
    module_slots = 1,
    allowed_effects = {"speed", "productivity", "consumption", "pollution"},
    energy_source = {type="electric", usage_priority="secondary-input", emissions_per_minute={pollution = 2}, drain="1kW"},
    energy_usage = "59kW",
    open_sound = { filename = "__base__/sound/machine-open.ogg", volume = 0.85 },
    close_sound = { filename = "__base__/sound/machine-close.ogg", volume = 0.75 },
    impact_category = "metal",
    working_sound = {
      sound = {
        { filename = "__base__/sound/assembling-machine-t1-1.ogg", volume = 0.8 },
        { filename = "__base__/sound/assembling-machine-t1-2.ogg", volume = 0.8 }
      },
      idle_sound = { filename = "__base__/sound/idle1.ogg", volume = 0.6 },
    },
    circuit_wire_max_distance = assembling_machine_circuit_wire_max_distance,
    circuit_connector = scale_connector_points(circuit_connector_definitions["assembling-machine"], 0.7)
  },

  {
    type = "assembling-machine",
    name = "nullius-medium-assembler-1",
	  order = "nullius-mcb",
    icon_size = 64,
    icons = data.raw.item["nullius-medium-assembler-1"].icons,
    flags = {"placeable-neutral", "placeable-player", "player-creation"},
    icon_draw_specification = {shift = {0, -0.2}},
    minable = {mining_time = 0.8, result = "nullius-medium-assembler-1"},
    max_health = 300,
    dying_explosion = "medium-explosion",
    corpse = "medium-remnants",
    resistances = {
      { type = "impact", decrease = 100, percent = 90 }
    },
    collision_box = {{-1.2, -1.2}, {1.2, 1.2}},
    selection_box = {{-1.5, -1.5}, {1.5, 1.5}},
    forced_symmetry = "horizontal",
    fluid_boxes = {
      {
        production_type = "input",
        pipe_picture = assembler2pipepictures(),
        pipe_covers = pipecoverspictures(),
        volume = 500,
        pipe_connections = {{ flow_direction ="input", position = {0, -1}, direction = defines.direction.north }},
        secondary_draw_orders = { north = -1 }
      },
      {
        production_type = "input",
        pipe_picture = assembler2pipepictures(),
        pipe_covers = pipecoverspictures(),
        volume = 500,
        pipe_connections = {{ flow_direction ="input", position = {0, 1}, direction = defines.direction.south }},
        secondary_draw_orders = { north = -1 }
      },
    },
    fluid_boxes_off_when_no_fluid_recipe = true,
    fast_replaceable_group = "medium-assembler",
    next_upgrade = "nullius-medium-assembler-2",
    alert_icon_shift = util.by_pixel(-3, -12),
    graphics_set = {
      animation = {
        layers = {
          {
              filename = BASEENTITY .. "assembling-machine-1/assembling-machine-1.png",
              priority="high",
              width = 214,
              height = 226,
              frame_count = 32,
              line_length = 8,
              shift = util.by_pixel(0, 2),
              scale = 0.5,
              animation_speed = 0.5
          },
          {
              filename = BASEENTITY .. "assembling-machine-1/assembling-machine-1-shadow.png",
              priority="high",
              width = 190,
              height = 165,
              frame_count = 1,
              line_length = 1,
              repeat_count = 32,
              draw_as_shadow = true,
              shift = util.by_pixel(8.5, 5),
              scale = 0.5
          }
        }
      }
    },
    crafting_categories = {
      "small-crafting", "medium-crafting", "large-crafting",
      "small-assembly", "medium-assembly", "large-assembly", "medium-only-assembly",
      "small-fluid-assembly", "large-fluid-assembly"
    },
    crafting_speed = 1,
    module_slots = 1,
    allowed_effects = {"speed", "productivity", "consumption", "pollution"},
    energy_source = {type="electric", usage_priority="secondary-input", emissions_per_minute={pollution = 5}, drain="6kW"},
    energy_usage = "144kW",
    open_sound = { filename = "__base__/sound/machine-open.ogg", volume = 0.85 },
    close_sound = { filename = "__base__/sound/machine-close.ogg", volume = 0.75 },
    impact_category = "metal",
    working_sound = {
      sound = {
        { filename = "__base__/sound/assembling-machine-t1-1.ogg", volume = 0.8 },
        { filename = "__base__/sound/assembling-machine-t1-2.ogg", volume = 0.8 }
      },
      idle_sound = { filename = "__base__/sound/idle1.ogg", volume = 0.6 },
      --apparent_volume = 1.2
    },
    circuit_wire_max_distance = assembling_machine_circuit_wire_max_distance,
    circuit_connector = circuit_connector_definitions["assembling-machine"]
  },

  {
    type = "assembling-machine",
    name = "nullius-large-assembler-1",
	  order = "nullius-mdb",
    icons = data.raw.item["nullius-large-assembler-1"].icons,
    flags = {"placeable-neutral", "placeable-player", "player-creation"},
    icon_draw_specification = {shift = {0, -0.4}, scale = 1.2},
    minable = {mining_time = 1.5, result = "nullius-large-assembler-1"},
    max_health = 600,
    dying_explosion = "medium-explosion",
    corpse = "medium-remnants",
    resistances = {
      { type = "impact", decrease = 100, percent = 90 }
    },
    collision_box = {{-1.7, -1.7}, {1.7, 1.7}},
    selection_box = {{-2.0, -2.0}, {2.0, 2.0}},
    forced_symmetry = "horizontal",
    fluid_boxes = {
      {
        production_type = "input",
        pipe_picture = assembler2pipepictures(),
        pipe_covers = pipecoverspictures(),
        volume = 500,
        pipe_connections = {{ flow_direction ="input", position = {0.5, -1.5}, direction = defines.direction.north }},
        secondary_draw_orders = { north = -1 }
      },
      {
        production_type = "input",
        pipe_picture = assembler2pipepictures(),
        pipe_covers = pipecoverspictures(),
        volume = 500,
        pipe_connections = {{ flow_direction ="input", position = {-0.5, 1.5}, direction = defines.direction.south }},
        secondary_draw_orders = { north = -1 }
      },
    },
    fluid_boxes_off_when_no_fluid_recipe = true,
    fast_replaceable_group = "large-assembler",
    next_upgrade = "nullius-large-assembler-2",
    alert_icon_shift = util.by_pixel(-3, -12),
    graphics_set = {
      animation = {
        layers = {
          {
            filename = BASEENTITY .. "assembling-machine-2/assembling-machine-2.png",
            priority = "high",
            width = 214,
            height = 218,
            frame_count = 32,
            line_length = 8,
            shift = util.by_pixel(0, 4),
            scale = 0.666,
            animation_speed = 0.2
          },
          {
            filename = BASEENTITY .. "assembling-machine-2/assembling-machine-2-shadow.png",
            priority = "high",
            width = 196,
            height = 163,
            frame_count = 32,
            line_length = 8,
            draw_as_shadow = true,
            shift = util.by_pixel(12, 4.75),
            scale = 0.666,
            animation_speed = 0.2
          }
        }
      }
    },
    crafting_categories = {
      "medium-crafting", "large-crafting", "huge-crafting",
      "medium-assembly", "large-assembly", "huge-assembly",
      "large-fluid-assembly", "huge-fluid-assembly"
    },
    crafting_speed = 4,
    module_slots = 2,
    allowed_effects = {"speed", "productivity", "consumption", "pollution"},
    energy_source = {type="electric", usage_priority="secondary-input", emissions_per_minute={pollution = 20}, drain="50kW"},
    energy_usage = "650kW",
    open_sound = { filename = "__base__/sound/machine-open.ogg", volume = 0.85 },
    close_sound = { filename = "__base__/sound/machine-close.ogg", volume = 0.75 },
    impact_category = "metal",
    working_sound = {
      sound = {
        { filename = "__base__/sound/assembling-machine-t1-1.ogg", volume = 0.8 },
        { filename = "__base__/sound/assembling-machine-t1-2.ogg", volume = 0.8 }
      },
      idle_sound = { filename = "__base__/sound/idle1.ogg", volume = 0.6 },
      --apparent_volume = 1.6
    },
    circuit_wire_max_distance = assembling_machine_circuit_wire_max_distance,
    circuit_connector = scale_connector_points(circuit_connector_definitions["assembling-machine"], 1.4)
  }
})

data:extend({
  {
    type = "assembling-machine",
    name = "nullius-small-assembler-2",
	  order = "nullius-mbc",
    icon_size = 64,
    icons = data.raw.item["nullius-small-assembler-2"].icons,
    flags = {"placeable-neutral", "placeable-player", "player-creation"},
    icon_draw_specification = {shift = {0, -0.1}, scale = 0.8},
    minable = {mining_time = 0.9, result = "nullius-small-assembler-2"},
    max_health = 300,
    dying_explosion = "medium-explosion",
    corpse = "medium-remnants",
    resistances = {
      { type = "impact", decrease = 100, percent = 90 }
    },
    collision_box = {{-0.7, -0.7}, {0.7, 0.7}},
    selection_box = {{-1.0, -1.0}, {1.0, 1.0}},
    fast_replaceable_group = "small-assembler",
    next_upgrade = "nullius-small-assembler-3",
    alert_icon_shift = util.by_pixel(-3, -12),
    graphics_set = {
      animation = {
        layers = {
          {
            filename = BASEENTITY .. "assembling-machine-2/assembling-machine-2.png",
            priority = "high",
            width = 214,
            height = 218,
            frame_count = 32,
            line_length = 8,
            shift = util.by_pixel(0, 4),
            scale = 0.666*0.5,
            animation_speed = 0.8
          },
          data.raw["assembling-machine"]["nullius-small-assembler-1"].graphics_set.animation.layers[2]
        }
      }
    },
    crafting_categories = {
      "tiny-crafting", "small-crafting", "medium-crafting",
      "tiny-assembly", "small-assembly", "medium-assembly",
      "packaging"
    },
    crafting_speed = 1,
    module_slots = 2,
    allowed_effects = {"speed", "productivity", "consumption", "pollution"},
    energy_source = {type="electric", usage_priority="secondary-input", emissions_per_minute={pollution = 4}, drain="2kW"},
    energy_usage = "123kW",
    open_sound = { filename = "__base__/sound/machine-open.ogg", volume = 0.85 },
    close_sound = { filename = "__base__/sound/machine-close.ogg", volume = 0.75 },
    impact_category = "metal",
    working_sound = data.raw["assembling-machine"]["nullius-small-assembler-1"].working_sound,
    circuit_wire_max_distance = assembling_machine_circuit_wire_max_distance,
    circuit_connector = data.raw["assembling-machine"]["nullius-small-assembler-1"].circuit_connector
  },

  {
    type = "assembling-machine",
    name = "nullius-small-assembler-3",
	  order = "nullius-mbd",
    icon_size = 64,
    icons = data.raw.item["nullius-small-assembler-3"].icons,
    flags = {"placeable-neutral", "placeable-player", "player-creation"},
    icon_draw_specification = {shift = {0, -0.1}, scale = 0.8},
    minable = {mining_time = 1.2, result = "nullius-small-assembler-3"},
    max_health = 400,
    dying_explosion = "medium-explosion",
    corpse = "medium-remnants",
    resistances = {
      { type = "impact", decrease = 100, percent = 90 }
    },
    collision_box = {{-0.7, -0.7}, {0.7, 0.7}},
    selection_box = {{-1.0, -1.0}, {1.0, 1.0}},
    fast_replaceable_group = "small-assembler",
    alert_icon_shift = util.by_pixel(-3, -12),
    graphics_set = {
      animation = {
        layers = {
          {
            filename = BASEENTITY .. "assembling-machine-3/assembling-machine-3.png",
            priority = "high",
            width = 214,
            height = 237,
            frame_count = 32,
            line_length = 8,
            shift = util.by_pixel(0, -0.3333), 
            scale = 0.666*0.5,
            animation_speed = 0.6
          },
          {
            filename = BASEENTITY .. "assembling-machine-3/assembling-machine-3-shadow.png",
            priority = "high",
            width = 260,
            height = 162,
            frame_count = 32,
            line_length = 8,
            draw_as_shadow = true,
            shift = util.by_pixel(18.667, 2.6667),
            scale = 0.666*0.5,
            animation_speed = 0.6
          }
        }
      }
    },
    crafting_categories = {
      "tiny-crafting", "small-crafting", "medium-crafting",
      "tiny-assembly", "small-assembly", "medium-assembly",
      "packaging"
    },
    crafting_speed = 2,
    module_slots = 3,
    allowed_effects = {"speed", "productivity", "consumption", "pollution"},
    energy_source = {type="electric", usage_priority="secondary-input", emissions_per_minute={pollution = 8}, drain="5kW"},
    energy_usage = "270kW",
    open_sound = { filename = "__base__/sound/machine-open.ogg", volume = 0.85 },
    close_sound = { filename = "__base__/sound/machine-close.ogg", volume = 0.75 },
    impact_category = "metal",
    working_sound = data.raw["assembling-machine"]["nullius-small-assembler-1"].working_sound,
    circuit_wire_max_distance = assembling_machine_circuit_wire_max_distance,
    circuit_connector = data.raw["assembling-machine"]["nullius-small-assembler-1"].circuit_connector
  },

  {
    type = "assembling-machine",
    name = "nullius-medium-assembler-2",
	  order = "nullius-mcc",
    icon_size = 64,
    icons = data.raw.item["nullius-medium-assembler-2"].icons,
    flags = {"placeable-neutral", "placeable-player", "player-creation"},
    icon_draw_specification = {shift = {0, -0.2}},
    minable = {mining_time = 1.2, result = "nullius-medium-assembler-2"},
    max_health = 450,
    dying_explosion = "medium-explosion",
    corpse = "medium-remnants",
    resistances = {
      { type = "impact", decrease = 100, percent = 90 }
    },
    collision_box = {{-1.2, -1.2}, {1.2, 1.2}},
    selection_box = {{-1.5, -1.5}, {1.5, 1.5}},
    forced_symmetry = "horizontal",
    fluid_boxes = data.raw["assembling-machine"]["nullius-medium-assembler-1"].fluid_boxes,
    fluid_boxes_off_when_no_fluid_recipe = true,
    fast_replaceable_group = "medium-assembler",
    next_upgrade = "nullius-medium-assembler-3",
    alert_icon_shift = util.by_pixel(-3, -12),
    graphics_set = {
      animation = {
        layers = {
          {
              filename = BASEENTITY .. "assembling-machine-2/assembling-machine-2.png",
              priority = "high",
              width = 214,
              height = 218,
              frame_count = 32,
              line_length = 8,
              shift = util.by_pixel(0, 4),
              scale = 0.5,
              animation_speed = 0.4
          },
          {
              filename = BASEENTITY .. "assembling-machine-2/assembling-machine-2-shadow.png",
              priority = "high",
              width = 196,
              height = 163,
              frame_count = 32,
              line_length = 8,
              draw_as_shadow = true,
              shift = util.by_pixel(12, 4.75),
              scale = 0.5,
              animation_speed = 0.4
          }
        }
      }
    },
    crafting_categories = {
      "small-crafting", "medium-crafting", "large-crafting",
      "small-assembly", "medium-assembly", "large-assembly", "medium-only-assembly",
      "small-fluid-assembly", "large-fluid-assembly"
    },
    crafting_speed = 2,
    module_slots = 2,
    allowed_effects = {"speed", "productivity", "consumption", "pollution"},
    energy_source = {type="electric", usage_priority="secondary-input", emissions_per_minute={pollution = 10}, drain="15kW"},
    energy_usage = "285kW",
    open_sound = { filename = "__base__/sound/machine-open.ogg", volume = 0.85 },
    close_sound = { filename = "__base__/sound/machine-close.ogg", volume = 0.75 },
    impact_category = "metal",
    working_sound = data.raw["assembling-machine"]["nullius-medium-assembler-1"].working_sound,
    circuit_wire_max_distance = assembling_machine_circuit_wire_max_distance,
    circuit_connector = data.raw["assembling-machine"]["nullius-medium-assembler-1"].circuit_connector
  },

  {
    type = "assembling-machine",
    name = "nullius-medium-assembler-3",
	  order = "nullius-mcd",
    icon_size = 64,
    icons = data.raw.item["nullius-medium-assembler-3"].icons,
    flags = {"placeable-neutral", "placeable-player", "player-creation"},
    icon_draw_specification = {shift = {0, -0.2}},
    minable = {mining_time = 1.6, result = "nullius-medium-assembler-3"},
    max_health = 600,
    dying_explosion = "medium-explosion",
    corpse = "medium-remnants",
    resistances = {
      { type = "impact", decrease = 100, percent = 90 }
    },
    collision_box = {{-1.2, -1.2}, {1.2, 1.2}},
    selection_box = {{-1.5, -1.5}, {1.5, 1.5}},
    forced_symmetry = "horizontal",
    fluid_boxes = data.raw["assembling-machine"]["nullius-medium-assembler-1"].fluid_boxes,
    fluid_boxes_off_when_no_fluid_recipe = true,
    fast_replaceable_group = "medium-assembler",
    alert_icon_shift = util.by_pixel(-3, -12),
    graphics_set = {
      animation = {
        layers = {
          {
              filename = BASEENTITY .. "assembling-machine-3/assembling-machine-3.png",
              priority = "high",
              width = 214,
              height = 237,
              frame_count = 32,
              line_length = 8,
              shift = util.by_pixel(0, -0.75),
              scale = 0.5,
              animation_speed = 0.3
          },
          {
              filename = BASEENTITY .. "assembling-machine-3/assembling-machine-3-shadow.png",
              priority = "high",
              width = 260,
              height = 162,
              frame_count = 32,
              line_length = 8,
              draw_as_shadow = true,
              shift = util.by_pixel(28, 4),
              scale = 0.5,
              animation_speed = 0.3
          }
        }
      }
    },
    crafting_categories = {
      "small-crafting","medium-crafting", "large-crafting",
      "small-assembly", "medium-assembly", "large-assembly", "medium-only-assembly",
      "small-fluid-assembly", "large-fluid-assembly"
    },
    crafting_speed = 4,
    module_slots = 3,
    allowed_effects = {"speed", "productivity", "consumption", "pollution"},
    energy_source = {type="electric", usage_priority="secondary-input", emissions_per_minute={pollution = 20}, drain="30kW"},
    energy_usage = "670kW",
    open_sound = { filename = "__base__/sound/machine-open.ogg", volume = 0.85 },
    close_sound = { filename = "__base__/sound/machine-close.ogg", volume = 0.75 },
    impact_category = "metal",
    working_sound = data.raw["assembling-machine"]["nullius-medium-assembler-1"].working_sound,
    circuit_wire_max_distance = assembling_machine_circuit_wire_max_distance,
    circuit_connector = data.raw["assembling-machine"]["nullius-medium-assembler-1"].circuit_connector
  },

  {
    type = "assembling-machine",
    name = "nullius-large-assembler-2",
	  order = "nullius-mdc",
    icons = data.raw.item["nullius-large-assembler-2"].icons,
    flags = {"placeable-neutral", "placeable-player", "player-creation"},
    icon_draw_specification = {shift = {0, -0.3}, scale = 1.2},
    minable = {mining_time = 2, result = "nullius-large-assembler-2"},
    max_health = 800,
    dying_explosion = "medium-explosion",
    corpse = "medium-remnants",
    resistances = {
      { type = "impact", decrease = 100, percent = 90 }
    },
    collision_box = {{-1.7, -1.7}, {1.7, 1.7}},
    selection_box = {{-2.0, -2.0}, {2.0, 2.0}},
    forced_symmetry = "horizontal",
    fluid_boxes = data.raw["assembling-machine"]["nullius-large-assembler-1"].fluid_boxes,
    fluid_boxes_off_when_no_fluid_recipe = true,
    fast_replaceable_group = "large-assembler",
    alert_icon_shift = util.by_pixel(-3, -12),
    graphics_set = {
      animation = {
        layers = {
          {
            filename = BASEENTITY .. "assembling-machine-3/assembling-machine-3.png",
            priority = "high",
            width = 214,
            height = 237,
            frame_count = 32,
            line_length = 8,
            shift = util.by_pixel(0, -1),
            scale = 0.666,
            animation_speed = 0.15
          },
          {
            filename = BASEENTITY .. "assembling-machine-3/assembling-machine-3-shadow.png",
            priority = "high",
            width = 260,
            height = 162,
            frame_count = 32,
            line_length = 8,
            draw_as_shadow = true,
            shift = util.by_pixel(37.333, 5.3333),
            scale = 0.666,
            animation_speed = 0.15
          }
        }
      }
    },
    crafting_categories = {
      "medium-crafting", "large-crafting", "huge-crafting",
      "medium-assembly", "large-assembly", "huge-assembly",
      "large-fluid-assembly", "huge-fluid-assembly"
    },
    crafting_speed = 8,
    module_slots = 3,
    allowed_effects = {"speed", "productivity", "consumption", "pollution"},
    energy_source = {type="electric", usage_priority="secondary-input", emissions_per_minute={pollution = 40}, drain="100kW"},
    energy_usage = "1500kW",
    open_sound = { filename = "__base__/sound/machine-open.ogg", volume = 0.85 },
    close_sound = { filename = "__base__/sound/machine-close.ogg", volume = 0.75 },
    impact_category = "metal",
    working_sound = data.raw["assembling-machine"]["nullius-large-assembler-1"].working_sound,
    circuit_wire_max_distance = assembling_machine_circuit_wire_max_distance,
    circuit_connector = data.raw["assembling-machine"]["nullius-large-assembler-1"].circuit_connector
  }
})

local nanofab_pipes = {
        north = {
          filename = "__angelsrefininggraphics__/graphics/entity/crystallizer/crystallizer-pipe-connection.png",
          priority = "extra-high",
          size = 128,
          x = 0,
          shift = { 0, 1 },
          scale = 0.5,
        },
        east = {
          filename = "__angelsrefininggraphics__/graphics/entity/crystallizer/crystallizer-pipe-connection.png",
          priority = "extra-high",
          size = 128,
          x = 128,
          shift = { -1, 0 },
          scale = 0.5,
        },
        south = {
          filename = "__angelsrefininggraphics__/graphics/entity/crystallizer/crystallizer-pipe-connection.png",
          priority = "extra-high",
          size = 128,
          x = 256,
          shift = { 0, -1 },
          scale = 0.5,
        },
        west = {
          filename = "__angelsrefininggraphics__/graphics/entity/crystallizer/crystallizer-pipe-connection.png",
          priority = "extra-high",
          size = 128,
          x = 384,
          shift = { 1, 0 },
          scale = 0.5,
        },
      }
nanofab_pipes.south = util.table.deepcopy(data.raw["pipe-to-ground"]["pipe-to-ground"].pictures.south)
nanofab_pipes.south.shift = {0, -1}

data:extend({
  {
    type = "assembling-machine",
    name = "nullius-nanofabricator-1",
    icons = data.raw.item["nullius-nanofabricator-1"].icons,
	  order = data.raw.item["nullius-nanofabricator-1"].order .. "b",
	  localised_description = {"entity-description.nullius-nanofabricator"},
    flags = {"placeable-neutral", "placeable-player", "player-creation"},
    icon_draw_specification = {shift = {-0.1, -0.2}, scale = 0.9},
    minable = {mining_time = 2, result = "nullius-nanofabricator-1"},
    max_health = 300,
    corpse = "big-remnants",
    dying_explosion = "medium-explosion",
    resistances = { { type = "impact", decrease = 50, percent = 80 } },
    collision_box = {{-1.75, -1.75}, {1.75, 1.75}},
    selection_box = {{-2, -2}, {2, 2}},
    module_slots = 3,
    allowed_effects = {"speed", "productivity", "consumption", "pollution"},
    crafting_categories = {"nanotechnology"},
    fast_replaceable_group = "nanofabricator",
    next_upgrade = "nullius-nanofabricator-2",
    crafting_speed = 1,
    forced_symmetry = "horizontal",
    energy_source = {
      type = "electric",
      usage_priority = "secondary-input",
      emissions_per_minute = {pollution = 2},
      drain = "30kW"
    },
    energy_usage = "470kW",
    graphics_set = {
      animation = scale_image({
        layers = {
          -- Base
          {
            filename = "__angelsrefininggraphics__/graphics/entity/crystallizer/crystallizer.png",
            priority = "extra-high",
            width = 390,
            height = 326,
            shift = util.by_pixel(16, 0),
            scale = 0.5,
          },
          -- Shadow
          {
            filename = "__angelsrefininggraphics__/graphics/entity/crystallizer/crystallizer-shadow.png",
            priority = "extra-high",
            width = 390,
            height = 326,
            shift = util.by_pixel(16, 0),
            draw_as_shadow = true,
            scale = 0.5,
          },
        },
      }, 0.775),
    },
    impact_category = "metal",
    working_sound = {
      sound = { filename = "__base__/sound/oil-refinery.ogg", volume = 0.45 },
      idle_sound = { filename = "__base__/sound/idle1.ogg", volume = 0.6 },
    },
    open_sound = sounds.machine_open,
    close_sound = sounds.machine_close,
    fluid_boxes = {
      {
        production_type = "input",
        pipe_picture = nanofab_pipes,
        pipe_covers = pipecoverspictures(),
        volume = 500,
        pipe_connections = {{ flow_direction ="input", position = {-1.5, -0.5}, direction = defines.direction.west }}
      },
      {
        production_type = "input",
        pipe_picture = nanofab_pipes,
        pipe_covers = pipecoverspictures(),
        volume = 500,
        pipe_connections = {{ flow_direction ="input", position = {-0.5, 1.5}, direction = defines.direction.south }}
      },
      {
        production_type = "input",
        pipe_picture = nanofab_pipes,
        pipe_covers = pipecoverspictures(),
        volume = 500,
        pipe_connections = {{ flow_direction ="input", position = {0.5, -1.5}, direction = defines.direction.north }}
      },
      {
        production_type = "output",
        pipe_picture = nanofab_pipes,
        pipe_covers = pipecoverspictures(),
        volume = 500,
        pipe_connections = {{ flow_direction ="output", position = {1.5, 0.5}, direction = defines.direction.east }}
      },
    },
    fluid_boxes_off_when_no_fluid_recipe = true,
    circuit_wire_max_distance = assembling_machine_circuit_wire_max_distance,
    circuit_connector = scale_connector_points(circuit_connector_definitions["recycler"], 0.15, true)
  }
})

data.raw["assembling-machine"]["nullius-nanofabricator-1"].graphics_set.animation.layers[1].tint = {0.6, 0.75, 0.75}

data:extend({
  {
    type = "assembling-machine",
    name = "nullius-nanofabricator-2",
    icons = data.raw.item["nullius-nanofabricator-2"].icons,
	  order = data.raw.item["nullius-nanofabricator-2"].order .. "b",
	  localised_description = {"entity-description.nullius-nanofabricator"},
    flags = {"placeable-neutral", "placeable-player", "player-creation"},
    icon_draw_specification = {shift = {-0.1, -0.2}, scale = 0.9},
    minable = {mining_time = 2.5, result = "nullius-nanofabricator-2"},
    max_health = 400,
    corpse = "big-remnants",
    dying_explosion = "medium-explosion",
    resistances = { { type = "impact", decrease = 50, percent = 80 } },
    collision_box = {{-1.75, -1.75}, {1.75, 1.75}},
    selection_box = {{-2, -2}, {2, 2}},
    module_slots = 4,
    allowed_effects = {"speed", "productivity", "consumption", "pollution"},
    crafting_categories = {"nanotechnology"},
    fast_replaceable_group = "nanofabricator",
    crafting_speed = 2,
    forced_symmetry = "horizontal",
    energy_source = {
      type = "electric",
      usage_priority = "secondary-input",
      emissions_per_minute = {pollution = 4},
      drain = "60kW"
    },
    energy_usage = "940kW",
    graphics_set = {
        animation = scale_image({
        layers = {
          -- Base
          {
            filename = "__angelsrefininggraphics__/graphics/entity/crystallizer/crystallizer.png",
            priority = "extra-high",
            width = 390,
            height = 326,
            shift = util.by_pixel(16, 0),
            scale = 0.5,
          },
          -- Shadow
          {
            filename = "__angelsrefininggraphics__/graphics/entity/crystallizer/crystallizer-shadow.png",
            priority = "extra-high",
            width = 390,
            height = 326,
            shift = util.by_pixel(16, 0),
            draw_as_shadow = true,
            scale = 0.5,
          },
        },
      }, 0.775),
    },
    impact_category = "metal",
    working_sound = data.raw["assembling-machine"]["nullius-nanofabricator-1"].working_sound,
    open_sound = sounds.machine_open,
    close_sound = sounds.machine_close,
    fluid_boxes = {
      {
        production_type = "input",
        pipe_picture = data.raw["assembling-machine"]
		    ["nullius-nanofabricator-1"].fluid_boxes[1].pipe_picture,
        pipe_covers = pipecoverspictures(),
        volume = 500,
        pipe_connections = {{ flow_direction ="input", position = {-1.5, -0.5}, direction = defines.direction.west }}
      },
      {
        production_type = "input",
        pipe_picture = data.raw["assembling-machine"]
		    ["nullius-nanofabricator-1"].fluid_boxes[2].pipe_picture,
        pipe_covers = pipecoverspictures(),
        volume = 500,
        pipe_connections = {{ flow_direction ="input", position = {-0.5, 1.5}, direction = defines.direction.south }}
      },
      {
        production_type = "input",
        pipe_picture = data.raw["assembling-machine"]
		    ["nullius-nanofabricator-1"].fluid_boxes[3].pipe_picture,
        pipe_covers = pipecoverspictures(),
        volume = 500,
        pipe_connections = {{ flow_direction ="input", position = {0.5, -1.5}, direction = defines.direction.north }}
      },
      {
        production_type = "output",
        pipe_picture = data.raw["assembling-machine"]
		    ["nullius-nanofabricator-1"].fluid_boxes[4].pipe_picture,
        pipe_covers = pipecoverspictures(),
        volume = 500,
        pipe_connections = {{ flow_direction ="output", position = {1.5, 0.5}, direction = defines.direction.east }}
      },
    },
    fluid_boxes_off_when_no_fluid_recipe = true,
    circuit_wire_max_distance = assembling_machine_circuit_wire_max_distance,
    circuit_connector = data.raw["assembling-machine"]["nullius-nanofabricator-1"].circuit_connector
    --circuit_connector = scale_connector_points(circuit_connector_definitions["recycler"], 2, true) -- other attempts
    -- circuit_connector = circuit_connector_definitions.create_vector
    -- (
    --   universal_connector_template,
    --   {
    --     { variation = 24, main_offset = util.by_pixel(-26, -16), shadow_offset = util.by_pixel(0, 0), show_shadow = false },
    --     { variation = 26, main_offset = util.by_pixel(-25, 20), shadow_offset = util.by_pixel(-23, 24), show_shadow = true },
    --     { variation = 24, main_offset = util.by_pixel(-25, -26), shadow_offset = util.by_pixel(4, -10), show_shadow = false },
    --     { variation = 30, main_offset = util.by_pixel(0, 20), shadow_offset = util.by_pixel(2, 24), show_shadow = true },
    --   }
    -- )
  }
})

data:extend({
  {
    type = "furnace",
    name = "nullius-boxer",
    icons = data.raw.item["nullius-boxer"].icons,
    flags = {"placeable-neutral", "player-creation"},
    minable = {mining_time = 0.7, result = "nullius-boxer"},
    max_health = 100,
    corpse = "steel-chest-remnants",
    dying_explosion = "steel-chest-explosion",
    collision_box = {{-0.25, -0.25}, {0.25, 0.25}},
    selection_box = {{-0.5, -0.5}, {0.5, 0.5}},
    result_inventory_size = 1,
    source_inventory_size = 1,
    crafting_categories = {"packaging"},
    crafting_speed = 4,
    energy_source = {
	    type = "electric",
	    usage_priority = "secondary-input",
	    emissions_per_minute = {pollution = 0.1},
	    drain = "5kW"
	  },
    energy_usage = "395kW",
    impact_category = "metal",
    working_sound = {
      sound = {
        { filename = "__base__/sound/assembling-machine-t1-1.ogg", volume = 0.6 },
        { filename = "__base__/sound/assembling-machine-t1-2.ogg", volume = 0.6 }
      },
      idle_sound = { filename = "__base__/sound/idle1.ogg", volume = 0.5 },
    },
    open_sound = sounds.machine_open,
    close_sound = sounds.machine_close,
    graphics_set = {
      animation = scale_image({
        layers = {
          {
            filename = "__angelssmeltinggraphics__/graphics/entity/powder-mixer/powder-mixer-base.png",
            priority = "high",
            width = 138,
            height = 170,
            line_length = 4,
            frame_count = 4,
            animation_speed = 0.5,
            shift = util.by_pixel(0.5, -9.5),
            scale = 0.5,
          },
          {
            filename = "__angelssmeltinggraphics__/graphics/entity/powder-mixer/powder-mixer-shadow.png",
            priority = "high",
            width = 183,
            height = 99,
            repeat_count = 4,
            animation_speed = 0.5,
            draw_as_shadow = true,
            shift = util.by_pixel(13, 9),
            scale = 0.5,
          },
        },
      }, 0.52)
    },
    circuit_wire_max_distance = assembling_machine_circuit_wire_max_distance,
    circuit_connector = circuit_connector_definitions["inserter"]
  }
})

data.raw["furnace"]["nullius-boxer"].graphics_set.animation.layers[1].tint = {0.88, 0.92, 1}
