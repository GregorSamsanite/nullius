local ICONPATH = "__nullius__/graphics/icons/"
local ENTICONPATH = "__nullius__/graphics/icons/entity/"
local ENTITYPATH = "__nullius__/graphics/entity/"
local BASEENTITY = "__base__/graphics/entity/"

require("pipe_graphics")

data:extend({
  {
    type = "offshore-pump",
    name = "nullius-seawater-intake-1",
    icons = data.raw.item["nullius-seawater-intake-1"].icons,
    flags = {"placeable-neutral", "player-creation", "filter-directions"},
    collision_mask = { "object-layer", "train-layer" },
    center_collision_mask = { "water-tile", "object-layer", "player-layer" },
    fluid_box_tile_collision_test = { "ground-tile" },
    adjacent_tile_collision_test = { "water-tile" },
    adjacent_tile_collision_mask = { "ground-tile" },
    adjacent_tile_collision_box = { { -1, -2 }, { 1, -1 } },
    minable = {mining_time = 0.2, result = "nullius-seawater-intake-1"},
    max_health = 150,
    corpse = "small-remnants",
    dying_explosion = "offshore-pump-explosion",
    fluid = "nullius-seawater",
    collision_box = {{-0.6, -1.05}, {0.6, 0.3}},
    selection_box = {{-1, -1.49}, {1, 0.49}},
    pumping_speed = 2,
    fluid_box = {
      base_area = 8,
      base_level = 1.5,
      pipe_covers = pipecoverspictures(),
      production_type = "output",
      filter = "nullius-seawater",
      pipe_connections = {{position = {0, 1}, type = "output"}}
    },
    tile_width = 1,
    tile_height = 1,
    fast_replaceable_group = "seawater-intake",
    next_upgrade = "nullius-seawater-intake-2",
    vehicle_impact_sound = data.raw["offshore-pump"]["offshore-pump"].vehicle_impact_sound,
    working_sound = data.raw["offshore-pump"]["offshore-pump"].working_sound,
    placeable_position_visualization = data.raw["offshore-pump"]["offshore-pump"].placeable_position_visualization,
    circuit_wire_connection_points = circuit_connector_definitions["offshore-pump"].points,
    circuit_connector_sprites = circuit_connector_definitions["offshore-pump"].sprites,
    circuit_wire_max_distance = default_circuit_wire_max_distance,
    resistances = {
      { type = "impact", decrease = 100, percent = 90 },
      { type = "fire", percent = 75 }
    },

    graphics_set = {
      underwater_layer_offset = 30,
      base_render_layer = "ground-patch",
      animation = {
        north = {
          layers = {
            {
              filename = BASEENTITY .. "offshore-pump/offshore-pump_North.png",
              priority = "high",
              line_length = 8,
              frame_count = 32,
              animation_speed = 0.25,
              width = 48,
              height = 84,
              shift = util.by_pixel(-2*0.75, -16*0.75),
              scale = 0.75
            },
            {
              filename = BASEENTITY .. "offshore-pump/offshore-pump_North-shadow.png",
              priority = "high",
              line_length = 8,
              frame_count = 32,
              animation_speed = 0.25,
              width = 78,
              height = 70,
              shift = util.by_pixel(12*0.75, -8*0.75),
              draw_as_shadow = true,
              scale = 0.75
            }
          }
        },
        east = {
          layers = {
            {
              filename = BASEENTITY .. "offshore-pump/offshore-pump_East.png",
              priority = "high",
              line_length = 8,
              frame_count = 32,
              animation_speed = 0.25,
              width = 64,
              height = 52,
              shift = util.by_pixel(14*0.75-4, -2*0.75),
              scale = 0.75
            },
            {
              filename = BASEENTITY .. "offshore-pump/offshore-pump_East-shadow.png",
              priority = "high",
              line_length = 8,
              frame_count = 32,
              animation_speed = 0.25,
              width = 88,
              height = 34,
              shift = util.by_pixel(28*0.75-4, 8*0.75),
              draw_as_shadow = true,
              scale = 0.75
            }
          }
        },
        south = {
          layers = {
            {
              filename = BASEENTITY .. "offshore-pump/offshore-pump_South.png",
              priority = "high",
              line_length = 8,
              frame_count = 32,
              animation_speed = 0.25,
              width = 48,
              height = 96,
              shift = util.by_pixel(-2*0.75, 0),
              scale = 0.75
            },
            {
              filename = BASEENTITY .. "offshore-pump/offshore-pump_South-shadow.png",
              priority = "high",
              line_length = 8,
              frame_count = 32,
              animation_speed = 0.25,
              width = 80,
              height = 66,
              shift = util.by_pixel(16*0.75, 22*0.75),
              draw_as_shadow = true,
              scale = 0.75
            }
          }
        },
        west = {
          layers = {
            {
              filename = BASEENTITY .. "offshore-pump/offshore-pump_West.png",
              priority = "high",
              line_length = 8,
              frame_count = 32,
              animation_speed = 0.25,
              width = 64,
              height = 52,
              shift = util.by_pixel(-16*0.75+4, -2*0.75),
              scale = 0.75
            },
            {
              filename = BASEENTITY .. "offshore-pump/offshore-pump_West-shadow.png",
              priority = "high",
              line_length = 8,
              frame_count = 32,
              animation_speed = 0.25,
              width = 88,
              height = 34,
              shift = util.by_pixel(-4*0.75+4, 8*0.75),
              draw_as_shadow = true,
              scale = 0.75
            }
          }
        }
      },
      fluid_animation = {
        north = {
          filename = BASEENTITY .. "offshore-pump/offshore-pump_North-fluid.png",
          apply_runtime_tint = true,
          line_length = 8,
          frame_count = 32,
          animation_speed = 0.25,
          width = 22,
          height = 20,
          shift = util.by_pixel(-2*0.75, -22*0.75),
          scale = 0.75
        },
        east = {
          filename = BASEENTITY .. "offshore-pump/offshore-pump_East-fluid.png",
          apply_runtime_tint = true,
          line_length = 8,
          frame_count = 32,
          animation_speed = 0.25,
          width = 20,
          height = 24,
          shift = util.by_pixel(6*0.75-4, -10*0.75),
          scale = 0.75
        },
        south = {
          filename = BASEENTITY .. "offshore-pump/offshore-pump_South-fluid.png",
          apply_runtime_tint = true,
          line_length = 8,
          frame_count = 32,
          animation_speed = 0.25,
          width = 20,
          height = 8,
          shift = util.by_pixel(-2*0.75, -4*0.75),
          scale = 0.75
        },
        west = {
          filename = BASEENTITY .. "offshore-pump/offshore-pump_West-fluid.png",
          apply_runtime_tint = true,
          line_length = 8,
          frame_count = 32,
          animation_speed = 0.25,
          width = 20,
          height = 24,
          shift = util.by_pixel(-8*0.75+4, -10*0.75),
          scale = 0.75
        }
      },
      glass_pictures = {
        north = {
          filename = BASEENTITY .. "offshore-pump/offshore-pump_North-glass.png",
          width = 18,
          height = 20,
          shift = util.by_pixel(-2*0.75, -22*0.75),
          scale = 0.75
        },
        east = {
          filename = BASEENTITY .. "offshore-pump/offshore-pump_East-glass.png",
          width = 18,
          height = 18,
          shift = util.by_pixel(4*0.75-4, -14*0.75),
          scale = 0.75
        },
        south = {
          filename = BASEENTITY .. "offshore-pump/offshore-pump_South-glass.png",
          width = 22,
          height = 12,
          shift = util.by_pixel(-2*0.75, -6*0.75),
          scale = 0.75
        },
        west = {
          filename = BASEENTITY .. "offshore-pump/offshore-pump_West-glass.png",
          width = 16,
          height = 16,
          shift = util.by_pixel(-6*0.75+4, -14*0.75),
          scale = 0.75
        }
      },
      base_pictures = {
        north = {
          filename = BASEENTITY .. "offshore-pump/offshore-pump_North-legs.png",
          width = 60,
          height = 52,
          shift = util.by_pixel(-2*0.75, -4*0.75),
          scale = 0.75
        },
        east = {
          filename = BASEENTITY .. "offshore-pump/offshore-pump_East-legs.png",
          width = 54,
          height = 32,
          shift = util.by_pixel(4*0.75-4, 12*0.75),
          scale = 0.75
        },
        south = {
          filename = BASEENTITY .. "offshore-pump/offshore-pump_South-legs.png",
          width = 56,
          height = 54,
          shift = util.by_pixel(-2*0.75, 6*0.75),
          scale = 0.75
        },
        west = {
          filename = BASEENTITY .. "offshore-pump/offshore-pump_West-legs.png",
          width = 54,
          height = 32,
          shift = util.by_pixel(-6*0.75+4, 12*0.75),
          scale = 0.75
        }
      },
      underwater_pictures = {
        north = {
          filename = BASEENTITY .. "offshore-pump/offshore-pump_North-underwater.png",
          width = 52,
          height = 16,
          shift = util.by_pixel(-2*0.75, -34*0.75),
          scale = 0.75
        },
        east = {
          filename = BASEENTITY .. "offshore-pump/offshore-pump_East-underwater.png",
          width = 18,
          height = 38,
          shift = util.by_pixel(40*0.75-4, 16*0.75),
          scale = 0.75
        },
        south = {
          filename = BASEENTITY .. "offshore-pump/offshore-pump_South-underwater.png",
          width = 52,
          height = 26,
          shift = util.by_pixel(-2*0.75, 48*0.75),
          scale = 0.75
        },
        west = {
          filename = BASEENTITY .. "offshore-pump/offshore-pump_West-underwater.png",
          width = 20,
          height = 34,
          shift = util.by_pixel(-40*0.75+4, 18*0.75),
          scale = 0.75
        }
      }
    },
    water_reflection = {
      pictures = {
        filename = BASEENTITY .. "offshore-pump/offshore-pump-reflection.png",
        priority = "extra-high",
        width = 132,
        height = 156,
        shift = util.by_pixel(0, 19*0.75),
        variation_count = 4,
        scale = 0.75
      },
      rotate = false,
      orientation_to_variation = true
    }
  },

  {
    type = "offshore-pump",
    name = "nullius-seawater-intake-2",
    icon = "__base__/graphics/icons/offshore-pump.png",
    icon_size = 64,
    icon_mipmaps = 4,
    flags = {"placeable-neutral", "player-creation", "filter-directions"},
    collision_mask = { "object-layer", "train-layer" },
    center_collision_mask = { "water-tile", "object-layer", "player-layer" },
    fluid_box_tile_collision_test = { "ground-tile" },
    adjacent_tile_collision_test = { "water-tile" },
    adjacent_tile_collision_mask = { "ground-tile" },
    adjacent_tile_collision_box = { { -1, -2 }, { 1, -1 } },
    minable = {mining_time = 0.2, result = "nullius-seawater-intake-2"},
    max_health = 300,
    corpse = "small-remnants",
    dying_explosion = "offshore-pump-explosion",
    fluid = "nullius-seawater",
    collision_box = {{-0.6, -1.05}, {0.6, 0.3}},
    selection_box = {{-1, -1.49}, {1, 0.49}},
    pumping_speed = 10,
    fluid_box = {
      base_area = 6,
      base_level = 3,
      height = 2,
      pipe_covers = pipecoverspictures(),
      production_type = "output",
      filter = "nullius-seawater",
      pipe_connections = {{position = {0, 1}, type = "output"}}
    },
    tile_width = 1,
    tile_height = 1,
    fast_replaceable_group = "seawater-intake",
    graphics_set = data.raw["offshore-pump"]["offshore-pump"].graphics_set,
    vehicle_impact_sound = data.raw["offshore-pump"]["offshore-pump"].vehicle_impact_sound,
    working_sound = data.raw["offshore-pump"]["offshore-pump"].working_sound,
    placeable_position_visualization = data.raw["offshore-pump"]["offshore-pump"].placeable_position_visualization,
    circuit_wire_connection_points = circuit_connector_definitions["offshore-pump"].points,
    circuit_connector_sprites = circuit_connector_definitions["offshore-pump"].sprites,
    circuit_wire_max_distance = default_circuit_wire_max_distance,
    water_reflection = data.raw["offshore-pump"]["offshore-pump"].water_reflection,
    resistances = {
      { type = "impact", decrease = 100, percent = 90 },
      { type = "fire", percent = 75 }
    }
  },

  {
    type = "assembling-machine",
    name = "nullius-well-1",
    icons = data.raw.item["nullius-well-1"].icons,
    flags = {"placeable-neutral", "player-creation"},
    crafting_categories = {"water-pumping"},
    crafting_speed = 1,
    fixed_recipe = "nullius-freshwater",
    energy_source = {type="electric", usage_priority="secondary-input", emissions=0.01, drain="1kW"},
    energy_usage = "49kW",
    ingredient_count = 1,
    minable = {mining_time = 0.5, result = "nullius-well-1"},
    max_health = 200,
    corpse = "medium-remnants",
    dying_explosion = "medium-explosion",
    collision_box = {{-1.2, -1.2}, {1.2, 1.2}},
    selection_box = {{-1.5, -1.5}, {1.5, 1.5}},
    resistances = {
      { type = "impact", decrease = 100, percent = 90 },
      { type = "fire", decrease = 100, percent = 90 }
    },
    working_sound = data.raw["offshore-pump"]["offshore-pump"].working_sound,
    vehicle_impact_sound = data.raw["offshore-pump"]["offshore-pump"].vehicle_impact_sound,
    fluid_boxes = {
      {
        production_type = "output",
        base_area = 10,
        base_level = 0,
        height = 2,
        pipe_covers = pipecoverspictures(),
        pipe_connections = {
          { positions = { {1, -2}, {2, -1}, {-1, 2}, {-2, 1} } }
        }
      }
    },
    pipe_covers = pipecoverspictures(),
    module_specification = { module_slots = 1 },
    allowed_effects = {"speed", "consumption", "pollution"},
    fast_replaceable_group = "well",
    next_upgrade = "nullius-well-2",

    animation = {
      north = {
        layers = {
          {
            filename = BASEENTITY .. "pumpjack/hr-pumpjack-base.png",
            priority = "extra-high",
            width = 261,
            height = 273,
            repeat_count = 40,
            animation_speed = 0.4,
            shift = util.by_pixel(-2.25, -4.75),
            scale = 0.5
          },
          {
            filename = BASEENTITY .. "pumpjack/hr-pumpjack-base-shadow.png",
            priority = "extra-high",
            width = 220,
            height = 220,
            scale = 0.5,
            draw_as_shadow = true,
            repeat_count = 40,
            animation_speed = 0.4,
            shift = util.by_pixel(6, 0.5)
          },
          {
            priority = "high",
            filename = ENTITYPATH .. "wells/hr-pumpjack-decolorized.png",
            animation_speed = 0.4,
            scale = 0.5,
            tint = {0.48, 0.84, 1},
            line_length = 8,
            width = 206,
            height = 202,
            frame_count = 40,
            shift = util.by_pixel(-4, -24)
          },
          {
            priority = "high",
            filename = BASEENTITY .. "pumpjack/hr-pumpjack-horsehead-shadow.png",
            animation_speed = 0.4,
            draw_as_shadow = true,
            line_length = 8,
            width = 309,
            height = 82,
            frame_count = 40,
            scale = 0.5,
            shift = util.by_pixel(17.75, 14.5)
          }
        }
      },
      east = {
        layers = {
          {
            filename = BASEENTITY .. "pumpjack/hr-pumpjack-base.png",
            priority = "extra-high",
            width = 261,
            height = 273,
            x = 261,
            repeat_count = 40,
            animation_speed = 0.4,
            shift = util.by_pixel(-2.25, -4.75),
            scale = 0.5
          },
          {
            filename = BASEENTITY .. "pumpjack/hr-pumpjack-base-shadow.png",
            priority = "extra-high",
            width = 220,
            height = 220,
            x = 220,
            scale = 0.5,
            draw_as_shadow = true,
            repeat_count = 40,
            animation_speed = 0.4,
            shift = util.by_pixel(6, 0.5)
          },
          {
            priority = "high",
            filename = ENTITYPATH .. "wells/hr-pumpjack-decolorized.png",
            animation_speed = 0.4,
            scale = 0.5,
            tint = {0.48, 0.84, 1},
            line_length = 8,
            width = 206,
            height = 202,
            frame_count = 40,
            shift = util.by_pixel(-4, -24)
          },
          {
            priority = "high",
            filename = BASEENTITY .. "pumpjack/hr-pumpjack-horsehead-shadow.png",
            animation_speed = 0.4,
            draw_as_shadow = true,
            line_length = 8,
            width = 309,
            height = 82,
            frame_count = 40,
            scale = 0.5,
            shift = util.by_pixel(17.75, 14.5)
          }
        }
      },
      south = {
        layers = {
          {
            filename = BASEENTITY .. "pumpjack/hr-pumpjack-base.png",
            priority = "extra-high",
            width = 261,
            height = 273,
            x = 522,
            repeat_count = 40,
            animation_speed = 0.4,
            shift = util.by_pixel(-2.25, -4.75),
            scale = 0.5
          },
          {
            filename = BASEENTITY .. "pumpjack/hr-pumpjack-base-shadow.png",
            priority = "extra-high",
            width = 220,
            height = 220,
            x = 440,
            scale = 0.5,
            draw_as_shadow = true,
            repeat_count = 40,
            animation_speed = 0.4,
            shift = util.by_pixel(6, 0.5)
          },
          {
            priority = "high",
            filename = ENTITYPATH .. "wells/hr-pumpjack-decolorized.png",
            animation_speed = 0.4,
            scale = 0.5,
            tint = {0.48, 0.84, 1},
            line_length = 8,
            width = 206,
            height = 202,
            frame_count = 40,
            shift = util.by_pixel(-4, -24)
          },
          {
            priority = "high",
            filename = BASEENTITY .. "pumpjack/hr-pumpjack-horsehead-shadow.png",
            animation_speed = 0.4,
            draw_as_shadow = true,
            line_length = 8,
            width = 309,
            height = 82,
            frame_count = 40,
            scale = 0.5,
            shift = util.by_pixel(17.75, 14.5)
          }
        }
      },
      west = {
        layers = {
          {
            filename = BASEENTITY .. "pumpjack/hr-pumpjack-base.png",
            priority = "extra-high",
            width = 261,
            height = 273,
            x = 783,
            repeat_count = 40,
            animation_speed = 0.4,
            shift = util.by_pixel(-2.25, -4.75),
            scale = 0.5
          },
          {
            filename = BASEENTITY .. "pumpjack/hr-pumpjack-base-shadow.png",
            priority = "extra-high",
            width = 220,
            height = 220,
            x = 660,
            scale = 0.5,
            draw_as_shadow = true,
            repeat_count = 40,
            animation_speed = 0.4,
            shift = util.by_pixel(6, 0.5)
          },
          {
            priority = "high",
            filename = ENTITYPATH .. "wells/hr-pumpjack-decolorized.png",
            animation_speed = 0.4,
            scale = 0.5,
            tint = {0.48, 0.84, 1},
            line_length = 8,
            width = 206,
            height = 202,
            frame_count = 40,
            shift = util.by_pixel(-4, -24)
          },
          {
            priority = "high",
            filename = BASEENTITY .. "pumpjack/hr-pumpjack-horsehead-shadow.png",
            animation_speed = 0.4,
            draw_as_shadow = true,
            line_length = 8,
            width = 309,
            height = 82,
            frame_count = 40,
            scale = 0.5,
            shift = util.by_pixel(17.75, 14.5)
          }
        }
      }
    }
  },

  {
    type = "assembling-machine",
    name = "nullius-well-2",
    icons = data.raw.item["nullius-well-2"].icons,
    flags = {"placeable-neutral", "player-creation"},
    crafting_categories = {"water-pumping"},
    crafting_speed = 4,
    fixed_recipe = "nullius-freshwater",
    energy_source = {type="electric", usage_priority="secondary-input", emissions=0.02, drain="5kW"},
    energy_usage = "175kW",
    ingredient_count = 1,
    minable = {mining_time = 0.5, result = "nullius-well-2"},
    max_health = 300,
    corpse = "medium-remnants",
    dying_explosion = "medium-explosion",
    collision_box = {{-1.2, -1.2}, {1.2, 1.2}},
    selection_box = {{-1.5, -1.5}, {1.5, 1.5}},
    resistances = {
      { type = "impact", decrease = 100, percent = 90 },
      { type = "fire", decrease = 100, percent = 90 }
    },
    working_sound = data.raw["offshore-pump"]["offshore-pump"].working_sound,
    vehicle_impact_sound = data.raw["offshore-pump"]["offshore-pump"].vehicle_impact_sound,
    fluid_boxes = {
      {
        production_type = "output",
        base_area = 10,
        base_level = 0,
        height = 4,
        pipe_covers = pipecoverspictures(),
        pipe_connections = {
          { positions = { {1, -2}, {2, -1}, {-1, 2}, {-2, 1} } }
        }
      }
    },
    pipe_covers = pipecoverspictures(),
    module_specification = { module_slots = 2 },
    allowed_effects = {"speed", "consumption", "pollution"},
    fast_replaceable_group = "well",

    animation = {
      north = {
        layers = {
          {
            filename = BASEENTITY .. "pumpjack/hr-pumpjack-base.png",
            priority = "extra-high",
            width = 261,
            height = 273,
            repeat_count = 40,
            animation_speed = 0.6,
            shift = util.by_pixel(-2.25, -4.75),
            scale = 0.5
          },
          {
            filename = BASEENTITY .. "pumpjack/hr-pumpjack-base-shadow.png",
            priority = "extra-high",
            width = 220,
            height = 220,
            scale = 0.5,
            draw_as_shadow = true,
            repeat_count = 40,
            animation_speed = 0.6,
            shift = util.by_pixel(6, 0.5)
          },
          {
            priority = "high",
            filename = ENTITYPATH .. "wells/hr-pumpjack-decolorized.png",
            animation_speed = 0.6,
            tint = {0.45, 0.45, 1},
            scale = 0.5,
            line_length = 8,
            width = 206,
            height = 202,
            frame_count = 40,
            shift = util.by_pixel(-4, -24)
          },
          {
            priority = "high",
            filename = BASEENTITY .. "pumpjack/hr-pumpjack-horsehead-shadow.png",
            animation_speed = 0.6,
            draw_as_shadow = true,
            line_length = 8,
            width = 309,
            height = 82,
            frame_count = 40,
            scale = 0.5,
            shift = util.by_pixel(17.75, 14.5)
          }
        }
      },
      east = {
        layers = {
          {
            filename = BASEENTITY .. "pumpjack/hr-pumpjack-base.png",
            priority = "extra-high",
            width = 261,
            height = 273,
            x = 261,
            repeat_count = 40,
            animation_speed = 0.6,
            shift = util.by_pixel(-2.25, -4.75),
            scale = 0.5
          },
          {
            filename = BASEENTITY .. "pumpjack/hr-pumpjack-base-shadow.png",
            priority = "extra-high",
            width = 220,
            height = 220,
            x = 220,
            scale = 0.5,
            draw_as_shadow = true,
            repeat_count = 40,
            animation_speed = 0.6,
            shift = util.by_pixel(6, 0.5)
          },
          {
            priority = "high",
            filename = ENTITYPATH .. "wells/hr-pumpjack-decolorized.png",
            animation_speed = 0.6,
            scale = 0.5,
            tint = {0.45, 0.45, 1},
            line_length = 8,
            width = 206,
            height = 202,
            frame_count = 40,
            shift = util.by_pixel(-4, -24)
          },
          {
            priority = "high",
            filename = BASEENTITY .. "pumpjack/hr-pumpjack-horsehead-shadow.png",
            animation_speed = 0.6,
            draw_as_shadow = true,
            line_length = 8,
            width = 309,
            height = 82,
            frame_count = 40,
            scale = 0.5,
            shift = util.by_pixel(17.75, 14.5)
          }
        }
      },
      south = {
        layers = {
          {
            filename = BASEENTITY .. "pumpjack/hr-pumpjack-base.png",
            priority = "extra-high",
            width = 261,
            height = 273,
            x = 522,
            repeat_count = 40,
            animation_speed = 0.6,
            shift = util.by_pixel(-2.25, -4.75),
            scale = 0.5
          },
          {
            filename = BASEENTITY .. "pumpjack/hr-pumpjack-base-shadow.png",
            priority = "extra-high",
            width = 220,
            height = 220,
            x = 440,
            scale = 0.5,
            draw_as_shadow = true,
            repeat_count = 40,
            animation_speed = 0.6,
            shift = util.by_pixel(6, 0.5)
          },
          {
            priority = "high",
            filename = ENTITYPATH .. "wells/hr-pumpjack-decolorized.png",
            animation_speed = 0.6,
            scale = 0.5,
            tint = {0.45, 0.45, 1},
            line_length = 8,
            width = 206,
            height = 202,
            frame_count = 40,
            shift = util.by_pixel(-4, -24)
          },
          {
            priority = "high",
            filename = BASEENTITY .. "pumpjack/hr-pumpjack-horsehead-shadow.png",
            animation_speed = 0.6,
            draw_as_shadow = true,
            line_length = 8,
            width = 309,
            height = 82,
            frame_count = 40,
            scale = 0.5,
            shift = util.by_pixel(17.75, 14.5)
          }
        }
      },
      west = {
        layers = {
          {
            filename = BASEENTITY .. "pumpjack/hr-pumpjack-base.png",
            priority = "extra-high",
            width = 261,
            height = 273,
            x = 783,
            repeat_count = 40,
            animation_speed = 0.6,
            shift = util.by_pixel(-2.25, -4.75),
            scale = 0.5
          },
          {
            filename = BASEENTITY .. "pumpjack/hr-pumpjack-base-shadow.png",
            priority = "extra-high",
            width = 220,
            height = 220,
            x = 660,
            scale = 0.5,
            draw_as_shadow = true,
            repeat_count = 40,
            animation_speed = 0.6,
            shift = util.by_pixel(6, 0.5)
          },
          {
            priority = "high",
            filename = ENTITYPATH .. "wells/hr-pumpjack-decolorized.png",
            animation_speed = 0.6,
            scale = 0.5,
            tint = {0.45, 0.45, 1},
            line_length = 8,
            width = 206,
            height = 202,
            frame_count = 40,
            shift = util.by_pixel(-4, -24)
          },
          {
            priority = "high",
            filename = BASEENTITY .. "pumpjack/hr-pumpjack-horsehead-shadow.png",
            animation_speed = 0.6,
            draw_as_shadow = true,
            line_length = 8,
            width = 309,
            height = 82,
            frame_count = 40,
            scale = 0.5,
            shift = util.by_pixel(17.75, 14.5)
          }
        }
      }
    }
  },

  {
    type = "assembling-machine",
    name = "nullius-air-filter-1",
    icons = data.raw.item["nullius-air-filter-1"].icons,
    flags = {"placeable-neutral", "player-creation"},
    crafting_categories = {"air-filtration"},
    crafting_speed = 1,
    fixed_recipe = "nullius-air-filtration",
    energy_source = {type="electric", usage_priority="secondary-input", emissions=0.01, drain="1kW"},
    energy_usage = "49kW",
    ingredient_count = 1,
    minable = {mining_time = 0.5, result = "nullius-air-filter-1"},
    max_health = 200,
    corpse = "medium-remnants",
    dying_explosion = "medium-explosion",
    collision_box = {{-1.1, -1.1}, {1.1, 1.1}},
    selection_box = {{-1.5, -1.5}, {1.5, 1.5}},
    fast_replaceable_group = "air-filter",
    next_upgrade = "nullius-air-filter-2",
    animation = {
      north = {
        filename = "__angelspetrochem__/graphics/entity/air-filter/air-filter.png",
        width = 256,
        height = 256,
        frame_count = 36,
        line_length = 6,
        shift = {0.2, -0.4+0.25},
        animation_speed = 0.5,
        scale = 0.5
      },
      east = {
        filename = "__angelspetrochem__/graphics/entity/air-filter/air-filter.png",
        width = 256,
        height = 256,
        frame_count = 36,
        line_length = 6,
        shift = {0.2-0.25, -0.4},
        animation_speed = 0.5,
        scale = 0.5
      },
      south = {
        filename = "__angelspetrochem__/graphics/entity/air-filter/air-filter.png",
        width = 256,
        height = 256,
        frame_count = 36,
        line_length = 6,
        shift = {0.2, -0.4-0.25},
        animation_speed = 0.5,
        scale = 0.5
      },
      west = {
        filename = "__angelspetrochem__/graphics/entity/air-filter/air-filter.png",
        width = 256,
        height = 256,
        frame_count = 36,
        line_length = 6,
        shift = {0.2+0.25, -0.4},
        animation_speed = 0.5,
        scale = 0.5
      }
    },
    resistances = {
      { type = "impact", decrease = 100, percent = 90 },
      { type = "fire", percent = 75 }
    },
    working_sound = data.raw["assembling-machine"]["angels-air-filter"].working_sound,
    vehicle_impact_sound = { filename = "__base__/sound/car-metal-impact.ogg", volume = 0.65 },
    fluid_boxes = {
      {
        production_type = "output",
        pipe_picture = electrolyserpictures(),
        pipe_covers = pipecoverspictures(),
        base_area = 2,
        base_level = 1.5,
        height = 2,
        pipe_connections = {{ position = {0, 2}, type = "output" }}
      },
    },
    pipe_covers = pipecoverspictures()
  },

  {
    type = "assembling-machine",
    name = "nullius-air-filter-2",
    icons = data.raw.item["nullius-air-filter-2"].icons,
    flags = {"placeable-neutral", "player-creation"},
    crafting_categories = {"air-filtration"},
    crafting_speed = 3,
    fixed_recipe = "nullius-air-filtration",
    energy_source = {type="electric", usage_priority="secondary-input", emissions=0.03, drain="8kW"},
    energy_usage = "152kW",
    ingredient_count = 1,
    minable = {mining_time = 0.5, result = "nullius-air-filter-2"},
    max_health = 300,
    corpse = "medium-remnants",
    dying_explosion = "medium-explosion",
    collision_box = {{-1.1, -1.1}, {1.1, 1.1}},
    selection_box = {{-1.5, -1.5}, {1.5, 1.5}},
    fast_replaceable_group = "air-filter",
    next_upgrade = "nullius-air-filter-3",
    animation = {
      north = {
        filename = "__angelspetrochem__/graphics/entity/air-filter/air-filter.png",
        width = 256,
        height = 256,
        frame_count = 36,
        line_length = 6,
        shift = {0.2, -0.4+0.125},
        animation_speed = 0.5,
        scale = 0.55
      },
      east = {
        filename = "__angelspetrochem__/graphics/entity/air-filter/air-filter.png",
        width = 256,
        height = 256,
        frame_count = 36,
        line_length = 6,
        shift = {0.2-0.125, -0.4},
        animation_speed = 0.5,
        scale = 0.55
      },
      south = {
        filename = "__angelspetrochem__/graphics/entity/air-filter/air-filter.png",
        width = 256,
        height = 256,
        frame_count = 36,
        line_length = 6,
        shift = {0.2, -0.4-0.125},
        animation_speed = 0.5,
        scale = 0.55
      },
      west = {
        filename = "__angelspetrochem__/graphics/entity/air-filter/air-filter.png",
        width = 256,
        height = 256,
        frame_count = 36,
        line_length = 6,
        shift = {0.2+0.125, -0.4},
        animation_speed = 0.5,
        scale = 0.55
      }
    },
    resistances = {
      { type = "impact", decrease = 100, percent = 90 },
      { type = "fire", percent = 75 }
    },
    module_specification = { module_slots = 1 },
    allowed_effects = {"speed", "consumption", "pollution"},
    working_sound = data.raw["assembling-machine"]["angels-air-filter"].working_sound,
    vehicle_impact_sound = { filename = "__base__/sound/car-metal-impact.ogg", volume = 0.65 },
    fluid_boxes = {
      {
        production_type = "output",
        pipe_picture = electrolyserpictures(),
        pipe_covers = pipecoverspictures(),
        base_area = 5,
        base_level = 2,
        height = 2,
        pipe_connections = {{ position = {0, 2}, type = "output" }}
      },
    },
    pipe_covers = pipecoverspictures()
  },

  {
    type = "assembling-machine",
    name = "nullius-air-filter-3",
    icons = data.raw.item["nullius-air-filter-3"].icons,
    flags = {"placeable-neutral", "player-creation"},
    crafting_categories = {"air-filtration"},
    crafting_speed = 8,
    fixed_recipe = "nullius-air-filtration",
    energy_source = {type="electric", usage_priority="secondary-input", emissions=0.1, drain="25kW"},
    energy_usage = "475kW",
    ingredient_count = 1,
    minable = {mining_time = 0.5, result = "nullius-air-filter-3"},
    max_health = 400,
    corpse = "medium-remnants",
    dying_explosion = "medium-explosion",
    collision_box = {{-1.1, -1.1}, {1.1, 1.1}},
    selection_box = {{-1.5, -1.5}, {1.5, 1.5}},
    fast_replaceable_group = "air-filter",
    animation = {
      filename = "__angelspetrochem__/graphics/entity/air-filter/air-filter.png",
      width = 256,
      height = 256,
      frame_count = 36,
      line_length = 6,
      shift = {0.3, -0.4},
      animation_speed = 0.6,
      scale = 0.6
    },
    resistances = {
      { type = "impact", decrease = 100, percent = 90 },
      { type = "fire", percent = 75 }
    },
    module_specification = { module_slots = 2 },
    allowed_effects = {"speed", "consumption", "pollution"},
    working_sound = data.raw["assembling-machine"]["angels-air-filter"].working_sound,
    vehicle_impact_sound = { filename = "__base__/sound/car-metal-impact.ogg", volume = 0.65 },
    fluid_boxes = {
      {
        production_type = "output",
        pipe_picture = electrolyserpictures(),
        pipe_covers = pipecoverspictures(),
        base_area = 10,
        base_level = 3,
        height = 2,
        pipe_connections = {{ position = {0, 2}, type = "output" }}
      },
    },
    pipe_covers = pipecoverspictures()
  }
})

data:extend({
  {
    type = "furnace",
    name = "nullius-chimney-1",
    icon = "__angelspetrochem__/graphics/icons/flare-stack.png",
    icon_size = 32,
    flags = {"placeable-neutral", "placeable-player", "player-creation"},
    minable = {mining_time = 0.5, result = "nullius-chimney-1"},
    max_health = 100,
    fast_replaceable_group = "nullius-chimney",
    next_upgrade = "nullius-chimney-2",
    corpse = "small-remnants",
    collision_box = {{-0.8, -0.8}, {0.8, 0.8}},
    selection_box = {{-1, -1}, {1, 1}},
    crafting_categories = {"nullius-gas-void"},
    result_inventory_size = 1,
    crafting_speed = 1,
    source_inventory_size = 0,
    resistances = {
      { type = "impact", decrease = 100, percent = 90 },
      { type = "fire", percent = 75 }
    },
    fluid_boxes = {
      {
        production_type = "input",
        pipe_covers = pipecoverspictures(),
        base_area = 10,
        base_level = 0.1,
        pipe_connections = {{ type="input-output", position = {0.5, 1.5} }}
      },
    },
    energy_source = {type = "void"},
    energy_usage = "1kW",
    animation = {
      north = {
        filename = "__angelspetrochem__/graphics/entity/flare-stack/flare-stack.png",
        width = 256,
        height = 256,
        frame_count = 1,
        shift = {1.75, -1.6},
        scale = 0.85
      },
      east = {
        filename = "__angelspetrochem__/graphics/entity/flare-stack/flare-stack.png",
        x = 256,
        width = 256,
        height = 256,
        frame_count = 1,
        shift = {1.55, -1.7},
        scale = 0.85
      },
      south = {
        filename = "__angelspetrochem__/graphics/entity/flare-stack/flare-stack.png",
        x = 512,
        width = 256,
        height = 256,
        frame_count = 1,
        shift = {1.6, -1.9},
        scale = 0.85
      },
      west = {
        filename = "__angelspetrochem__/graphics/entity/flare-stack/flare-stack.png",
        x = 768,
        width = 256,
        height = 256,
        frame_count = 1,
        shift = {1.8, -1.8},
        scale = 0.85
      }
    },
    working_visualisations = {
      {
        apply_recipe_tint = "primary",
        constant_speed = true,
        render_layer = "wires",
        north_position = {-0.1, -5.6},
        east_position = {-0.3, -5.7},
        south_position = {-0.25, -5.9},
        west_position = {-0.05, -5.8},
        animation = {
          filename = BASEENTITY .. "chemical-plant/chemical-plant-smoke-outer.png",
          frame_count = 47,
          line_length = 16,
          width = 46,
          height = 94,
          scale = 1.2,
          animation_speed = 0.25,
          hr_version = {
            filename = BASEENTITY .. "chemical-plant/hr-chemical-plant-smoke-outer.png",
            frame_count = 47,
            line_length = 16,
            width = 90,
            height = 188,
            scale = 0.6,
            animation_speed = 0.25
          }
        },
      }
    },
    vehicle_impact_sound =  { filename = "__base__/sound/car-metal-impact.ogg", volume = 0.65 },
    repair_sound = { filename = "__base__/sound/manual-repair-simple.ogg" },
    open_sound = { filename = "__base__/sound/machine-open.ogg", volume = 0.85 },
    close_sound = { filename = "__base__/sound/machine-close.ogg", volume = 0.75 },
  },
  {
    type = "furnace",
    name = "nullius-chimney-2",
    icon = "__angelspetrochem__/graphics/icons/flare-stack.png",
    icon_size = 32,
    flags = {"placeable-neutral", "placeable-player", "player-creation"},
    minable = {mining_time = 0.5, result = "nullius-chimney-2"},
    max_health = 200,
    fast_replaceable_group = "nullius-chimney",
    corpse = "small-remnants",
    collision_box = {{-0.8, -0.8}, {0.8, 0.8}},
    selection_box = {{-1, -1}, {1, 1}},
    crafting_categories = {"nullius-gas-void"},
    result_inventory_size = 1,
    crafting_speed = 5,
    source_inventory_size = 0,
    resistances = {
      { type = "impact", decrease = 100, percent = 90 },
      { type = "fire", percent = 75 }
    },
    fluid_boxes = {
      {
        production_type = "input",
        pipe_covers = pipecoverspictures(),
        base_area = 10,
        base_level = -1,
        height = 3,
        pipe_connections = {{ type="input-output", position = {0.5, 1.5} }}
      },
    },
    energy_source = {type = "void"},
    energy_usage = "1kW",
    animation = data.raw["furnace"]["angels-flare-stack"].animation,
    working_visualisations = {
      {
        apply_recipe_tint = "primary",
        constant_speed = true,
        render_layer = "wires",
        animation = {
          filename = BASEENTITY .. "chemical-plant/chemical-plant-smoke-outer.png",
          frame_count = 47,
          line_length = 16,
          width = 46,
          height = 94,
          shift = {-0.22, -6.95},
          scale = 1.6,
          hr_version = {
            filename = BASEENTITY .. "chemical-plant/hr-chemical-plant-smoke-outer.png",
            frame_count = 47,
            line_length = 16,
            width = 90,
            height = 188,
            shift = {-0.22, -6.95},
            scale = 0.8
          }
        }
      }
    },
    vehicle_impact_sound =  { filename = "__base__/sound/car-metal-impact.ogg", volume = 0.65 },
    repair_sound = { filename = "__base__/sound/manual-repair-simple.ogg" },
    open_sound = { filename = "__base__/sound/machine-open.ogg", volume = 0.85 },
    close_sound = { filename = "__base__/sound/machine-close.ogg", volume = 0.75 },
  },

  {
    type = "furnace",
    name = "nullius-outfall-1",
    icon = "__angelsrefining__/graphics/icons/seafloor-pump-ico.png",
    icon_size = 32,
    collision_mask = {"object-layer", "ground-tile"},
    flags = {"placeable-neutral", "placeable-player", "player-creation"},
    minable = {mining_time = 0.5, result = "nullius-outfall-1"},
    max_health = 200,
    fast_replaceable_group = "nullius-outfall",
    next_upgrade = "nullius-outfall-2",
    corpse = "small-remnants",
    collision_box = {{-1.4, -2.45}, {1.4, 0.3}},
    selection_box = {{-1.6, -2.49}, {1.6, 0.49}},
    crafting_categories = {"nullius-liquid-void"},
    result_inventory_size = 1,
    crafting_speed = 1,
    source_inventory_size = 0,
    resistances = {
      { type = "impact", decrease = 100, percent = 90 },
      { type = "fire", percent = 75 }
    },
    fluid_boxes = {
      {
        production_type = "input",
        pipe_covers = pipecoverspictures(),
        base_area = 10,
        base_level = 0.1,
        pipe_connections = {{ type="input-output", position = {0, 1} }}
      },
    },
    energy_source = {type = "void"},
    energy_usage = "1kW",
    animation = {
      north = {
        filename = "__angelsrefining__/graphics/entity/seafloor-pump/seafloor-pump.png",
        priority = "high",
        shift = {-0.02, -0.8},
        width = 160,
        height = 160,
        frame_count = 1,
        scale = 0.85
      },
      east = {
        filename = "__angelsrefining__/graphics/entity/seafloor-pump/seafloor-pump.png",
        priority = "high",
        shift = {0.8, -0.05},
        x = 160,
        width = 160,
        height = 160,
        frame_count = 1,
        scale = 0.85
      },
      south = {
        filename = "__angelsrefining__/graphics/entity/seafloor-pump/seafloor-pump.png",
        priority = "high",
        shift = {0, 0.85},
        x = 320,
        width = 160,
        height = 160,
        frame_count = 1,
        scale = 0.85
      },
      west = {
        filename = "__angelsrefining__/graphics/entity/seafloor-pump/seafloor-pump.png",
        priority = "high",
        shift = {-0.75, 0},
        x = 480,
        width = 160,
        height = 160,
        frame_count = 1,
        scale = 0.85
      }
    },
    placeable_position_visualization = data.raw["offshore-pump"]["seafloor-pump"].placeable_position_visualization,
    vehicle_impact_sound =  { filename = "__base__/sound/car-metal-impact.ogg", volume = 0.65 },
    repair_sound = { filename = "__base__/sound/manual-repair-simple.ogg" },
    open_sound = { filename = "__base__/sound/machine-open.ogg", volume = 0.85 },
    close_sound = { filename = "__base__/sound/machine-close.ogg", volume = 0.75 },
  },
  {
    type = "furnace",
    name = "nullius-outfall-2",
    icon = "__angelsrefining__/graphics/icons/seafloor-pump-ico.png",
    icon_size = 32,
    collision_mask = {"object-layer", "ground-tile"},
    flags = {"placeable-neutral", "placeable-player", "player-creation"},
    minable = {mining_time = 0.5, result = "nullius-outfall-2"},
    max_health = 300,
    fast_replaceable_group = "nullius-outfall",
    corpse = "small-remnants",
    collision_box = {{-1.4, -2.45}, {1.4, 0.3}},
    selection_box = {{-1.6, -2.49}, {1.6, 0.49}},
    crafting_categories = {"nullius-liquid-void"},
    result_inventory_size = 1,
    crafting_speed = 5,
    source_inventory_size = 0,
    resistances = {
      { type = "impact", decrease = 100, percent = 90 },
      { type = "fire", percent = 75 }
    },
    fluid_boxes = {
      {
        production_type = "input",
        pipe_covers = pipecoverspictures(),
        base_area = 10,
        base_level = -1,
        height = 3,
        pipe_connections = {{ type="input-output", position = {0, 1} }}
      },
    },
    energy_source = {type = "void"},
    energy_usage = "1kW",
    animation = {
      north = {
        filename = "__angelsrefining__/graphics/entity/seafloor-pump/seafloor-pump.png",
        priority = "high",
        shift = {0, -1},
        width = 160,
        height = 160,
        frame_count = 1
      },
      east = {
        filename = "__angelsrefining__/graphics/entity/seafloor-pump/seafloor-pump.png",
        priority = "high",
        shift = {1, 0},
        x = 160,
        width = 160,
        height = 160,
        frame_count = 1
      },
      south = {
        filename = "__angelsrefining__/graphics/entity/seafloor-pump/seafloor-pump.png",
        priority = "high",
        shift = {0, 1},
        x = 320,
        width = 160,
        height = 160,
        frame_count = 1
      },
      west = {
        filename = "__angelsrefining__/graphics/entity/seafloor-pump/seafloor-pump.png",
        priority = "high",
        shift = {-1, 0},
        x = 480,
        width = 160,
        height = 160,
        frame_count = 1
      }
    },
    placeable_position_visualization = data.raw["offshore-pump"]["seafloor-pump"].placeable_position_visualization,
    vehicle_impact_sound =  { filename = "__base__/sound/car-metal-impact.ogg", volume = 0.65 },
    repair_sound = { filename = "__base__/sound/manual-repair-simple.ogg" },
    open_sound = { filename = "__base__/sound/machine-open.ogg", volume = 0.85 },
    close_sound = { filename = "__base__/sound/machine-close.ogg", volume = 0.75 },
  }
})

data:extend({
  {
    type = "storage-tank",
    name = "nullius-priority-valve",
    icon = "__angelspetrochem__/graphics/icons/valve-inspector.png",
    icon_size = 32,
    flags = {"placeable-player", "player-creation"},
    minable = {hardness = 0.2, mining_time = 0.2, result = "nullius-priority-valve"},
    max_health = 80,
    corpse = "small-remnants",
    resistances = {
      { type = "impact", decrease = 100, percent = 90 },
      { type = "fire", percent = 75 }
    },
    fast_replaceable_group = "pipe",
    two_direction_only = false,
    collision_box = {{-0.29, -0.29}, {0.29, 0.29}},
    selection_box = {{-0.5, -0.5}, {0.5, 0.5}},
    fluid_box = {
      base_area = 1.5,
      base_level = 0.5,
      height = 2,
      pipe_connections = {
        { position = {0, 1}, type="output"},
        { position = {0, -1} }
      }
    },
    flow_length_in_ticks = 360,
    vehicle_impact_sound = { filename = "__base__/sound/car-metal-impact.ogg", volume = 0.65 },
    circuit_wire_connection_points = circuit_connector_definitions["offshore-pump"].points,
    circuit_connector_sprites = circuit_connector_definitions["offshore-pump"].sprites,
    circuit_wire_max_distance = default_circuit_wire_max_distance,
    window_bounding_box = {{-0.125, 0.6875}, {0.1875, 1.1875}},

    pictures = {
      picture = {
        north = {
          filename = "__angelspetrochem__/graphics/entity/valve/valve-inspector.png",
          priority = "extra-high",
          frames = 1,
          width = 64,
          height = 64,
          shift = {0, -0}
        },
        east = {
          filename = "__angelspetrochem__/graphics/entity/valve/valve-inspector.png",
          priority = "extra-high",
          x = 64,
          frames = 1,
          width = 64,
          height = 64,
          shift = {0, 0}
        },
        south = {
          filename = "__angelspetrochem__/graphics/entity/valve/valve-inspector.png",
          priority = "extra-high",
          x = 128,
          frames = 1,
          width = 64,
          height = 64,
          shift = {0, -0.05}
        },
        west = {
          filename = "__angelspetrochem__/graphics/entity/valve/valve-inspector.png",
          priority = "extra-high",
          x = 192,
          frames = 1,
          width = 64,
          height = 64,
          shift = {0, 0}
        },
      },
      fluid_background = data.raw["storage-tank"]["valve-return"].pictures.fluid_background,
      window_background = data.raw["storage-tank"]["valve-return"].pictures.window_background,
      flow_sprite = data.raw["storage-tank"]["valve-return"].pictures.flow_sprite,
      gas_flow = data.raw["storage-tank"]["valve-return"].pictures.gas_flow
    }
  },

  {
    type = "storage-tank",
    name = "nullius-one-way-valve",
    icon = "__angelspetrochem__/graphics/icons/valve-overflow.png",
    icon_size = 32,
    flags = {"placeable-player", "player-creation"},
    minable = {hardness = 0.2, mining_time = 0.2, result = "nullius-one-way-valve"},
    max_health = 80,
    corpse = "small-remnants",
    resistances = {
      { type = "impact", decrease = 100, percent = 90 },
      { type = "fire", percent = 75 }
    },
    fast_replaceable_group = "pipe",
    two_direction_only = false,
    collision_box = {{-0.29, -0.29}, {0.29, 0.29}},
    selection_box = {{-0.5, -0.5}, {0.5, 0.5}},
    fluid_box = {
      base_area = 1.2,
      height = 2.5,
      pipe_connections = {
        { position = {0, 1}, type="output"},
        { position = {0, -1} }
      }
    },
    flow_length_in_ticks = 360,
    vehicle_impact_sound = { filename = "__base__/sound/car-metal-impact.ogg", volume = 0.65 },
    circuit_wire_connection_points = circuit_connector_definitions["offshore-pump"].points,
    circuit_connector_sprites = circuit_connector_definitions["offshore-pump"].sprites,
    circuit_wire_max_distance = default_circuit_wire_max_distance,
    window_bounding_box = {{-0.125, 0.6875}, {0.1875, 1.1875}},

    pictures = {
      picture = {
        north = {
          filename = "__angelspetrochem__/graphics/entity/valve/valve-overflow.png",
          priority = "extra-high",
          frames = 1,
          width = 64,
          height = 64,
          shift = {0, -0}
        },
        east = {
          filename = "__angelspetrochem__/graphics/entity/valve/valve-overflow.png",
          priority = "extra-high",
          x = 64,
          frames = 1,
          width = 64,
          height = 64,
          shift = {0, 0}
        },
        south = {
          filename = "__angelspetrochem__/graphics/entity/valve/valve-overflow.png",
          priority = "extra-high",
          x = 128,
          frames = 1,
          width = 64,
          height = 64,
          shift = {0, -0.05}
        },
        west = {
          filename = "__angelspetrochem__/graphics/entity/valve/valve-overflow.png",
          priority = "extra-high",
          x = 192,
          frames = 1,
          width = 64,
          height = 64,
          shift = {0, 0}
        },
      },
      fluid_background = data.raw["storage-tank"]["valve-return"].pictures.fluid_background,
      window_background = data.raw["storage-tank"]["valve-return"].pictures.window_background,
      flow_sprite = data.raw["storage-tank"]["valve-return"].pictures.flow_sprite,
      gas_flow = data.raw["storage-tank"]["valve-return"].pictures.gas_flow
    }
  },

  {
    type = "storage-tank",
    name = "nullius-top-up-valve",
    icon = "__angelspetrochem__/graphics/icons/valve-converter.png",
    icon_size = 32,
    flags = {"placeable-player", "player-creation"},
    minable = {hardness = 0.2, mining_time = 0.2, result = "nullius-top-up-valve"},
    max_health = 80,
    corpse = "small-remnants",
    resistances = {
      { type = "impact", decrease = 100, percent = 90 },
      { type = "fire", percent = 75 }
    },
    fast_replaceable_group = "pipe",
    two_direction_only = false,
    collision_box = {{-0.29, -0.29}, {0.29, 0.29}},
    selection_box = {{-0.5, -0.5}, {0.5, 0.5}},
    fluid_box = {
      base_area = 3,
      height = 1,
      pipe_connections = {
        { position = {0, 1}, type="output"},
        { position = {0, -1} }
      }
    },
    flow_length_in_ticks = 360,
    vehicle_impact_sound = { filename = "__base__/sound/car-metal-impact.ogg", volume = 0.65 },
    circuit_wire_connection_points = circuit_connector_definitions["offshore-pump"].points,
    circuit_connector_sprites = circuit_connector_definitions["offshore-pump"].sprites,
    circuit_wire_max_distance = default_circuit_wire_max_distance,
    window_bounding_box = {{-0.125, 0.6875}, {0.1875, 1.1875}},

    pictures = {
      picture = {
        north = {
          filename = "__angelspetrochem__/graphics/entity/valve/valve-converter.png",
          priority = "extra-high",
          frames = 1,
          width = 64,
          height = 64,
          shift = {0, -0}
        },
        east = {
          filename = "__angelspetrochem__/graphics/entity/valve/valve-converter.png",
          priority = "extra-high",
          x = 64,
          frames = 1,
          width = 64,
          height = 64,
          shift = {0, 0}
        },
        south = {
          filename = "__angelspetrochem__/graphics/entity/valve/valve-converter.png",
          priority = "extra-high",
          x = 128,
          frames = 1,
          width = 64,
          height = 64,
          shift = {0, -0.05}
        },
        west = {
          filename = "__angelspetrochem__/graphics/entity/valve/valve-converter.png",
          priority = "extra-high",
          x = 192,
          frames = 1,
          width = 64,
          height = 64,
          shift = {0, 0}
        },
      },
      fluid_background = data.raw["storage-tank"]["valve-return"].pictures.fluid_background,
      window_background = data.raw["storage-tank"]["valve-return"].pictures.window_background,
      flow_sprite = data.raw["storage-tank"]["valve-return"].pictures.flow_sprite,
      gas_flow = data.raw["storage-tank"]["valve-return"].pictures.gas_flow
    }
  },

  {
    type = "storage-tank",
    name = "nullius-relief-valve",
    icon = "__angelspetrochem__/graphics/icons/valve-return.png",
    icon_size = 32,
    flags = {"placeable-player", "player-creation"},
    minable = {hardness = 0.2, mining_time = 0.2, result = "nullius-relief-valve"},
    max_health = 80,
    corpse = "small-remnants",
    resistances = {
      { type = "impact", decrease = 100, percent = 90 },
      { type = "fire", percent = 75 }
    },
    fast_replaceable_group = "pipe",
    two_direction_only = false,
    collision_box = {{-0.29, -0.29}, {0.29, 0.29}},
    selection_box = {{-0.5, -0.5}, {0.5, 0.5}},
    fluid_box = {
      base_area = 2,
      base_level = 1.5,
      height = 1.5,
      pipe_connections = {
        { position = {0, 1}, type="output"},
        { position = {0, -1} }
      }
    },
    flow_length_in_ticks = 360,
    vehicle_impact_sound = { filename = "__base__/sound/car-metal-impact.ogg", volume = 0.65 },
    circuit_wire_connection_points = circuit_connector_definitions["offshore-pump"].points,
    circuit_connector_sprites = circuit_connector_definitions["offshore-pump"].sprites,
    circuit_wire_max_distance = default_circuit_wire_max_distance,
    window_bounding_box = {{-0.125, 0.6875}, {0.1875, 1.1875}},

    pictures = {
      picture = {
        north = {
          filename = "__angelspetrochem__/graphics/entity/valve/valve-return.png",
          priority = "extra-high",
          frames = 1,
          width = 64,
          height = 64,
          shift = {0, -0}
        },
        east = {
          filename = "__angelspetrochem__/graphics/entity/valve/valve-return.png",
          priority = "extra-high",
          x = 64,
          frames = 1,
          width = 64,
          height = 64,
          shift = {0, 0}
        },
        south = {
          filename = "__angelspetrochem__/graphics/entity/valve/valve-return.png",
          priority = "extra-high",
          x = 128,
          frames = 1,
          width = 64,
          height = 64,
          shift = {0, -0.05}
        },
        west = {
          filename = "__angelspetrochem__/graphics/entity/valve/valve-return.png",
          priority = "extra-high",
          x = 192,
          frames = 1,
          width = 64,
          height = 64,
          shift = {0, 0}
        },
      },
      fluid_background = data.raw["storage-tank"]["valve-return"].pictures.fluid_background,
      window_background = data.raw["storage-tank"]["valve-return"].pictures.window_background,
      flow_sprite = data.raw["storage-tank"]["valve-return"].pictures.flow_sprite,
      gas_flow = data.raw["storage-tank"]["valve-return"].pictures.gas_flow
    }
  },

  {
    type = "storage-tank",
    name = "nullius-medium-tank-1",
    icon = "__base__/graphics/icons/storage-tank.png",
    icon_size = 64,
    icon_mipmaps = 4,
    flags = {"placeable-player", "player-creation"},
    minable = {mining_time = 0.5, result = "nullius-medium-tank-1"},
    max_health = 400,
    next_upgrade = "nullius-medium-tank-2",
    fast_replaceable_group = "medium-tank",
    corpse = "storage-tank-remnants",
    dying_explosion = "storage-tank-explosion",
    collision_box = {{-1.3, -1.3}, {1.3, 1.3}},
    selection_box = {{-1.5, -1.5}, {1.5, 1.5}},
    resistances = {
      { type = "impact", decrease = 100, percent = 90 },
      { type = "fire", percent = 75 }
    },
    damaged_trigger_effect = data.raw["storage-tank"]["storage-tank"].damaged_trigger_effect,
    fluid_box = {
      height = 1.7,
      base_area = 88.235295,
      pipe_covers = pipecoverspictures(),
      pipe_connections = {
        { position = {-1, -2} },
        { position = {2, 1} },
        { position = {1, 2} },
        { position = {-2, -1} }
      }
    },
    two_direction_only = true,
    window_bounding_box = {{-0.125, 0.6875}, {0.1875, 1.1875}},
    pictures = data.raw["storage-tank"]["storage-tank"].pictures,
    flow_length_in_ticks = 360,
    vehicle_impact_sound = data.raw["storage-tank"]["storage-tank"].vehicle_impact_sound,
    open_sound = data.raw["storage-tank"]["storage-tank"].open_sound,
    close_sound = data.raw["storage-tank"]["storage-tank"].close_sound,
    working_sound = data.raw["storage-tank"]["storage-tank"].working_sound,
    circuit_wire_connection_points = circuit_connector_definitions["storage-tank"].points,
    circuit_connector_sprites = circuit_connector_definitions["storage-tank"].sprites,
    circuit_wire_max_distance = default_circuit_wire_max_distance,
    water_reflection = data.raw["storage-tank"]["storage-tank"].water_reflection
  },

  {
    type = "storage-tank",
    name = "nullius-medium-tank-2",
    icons = data.raw.item["nullius-medium-tank-2"].icons,
    flags = {"placeable-player", "player-creation"},
    minable = {mining_time=0.5, result="nullius-medium-tank-2"},
    max_health = 500,
    next_upgrade = "nullius-medium-tank-3",
    fast_replaceable_group = "medium-tank",
    corpse = "storage-tank-remnants",
    fast_replaceable_group = "medium-tank",
    collision_box = {{-1.3, -1.3}, {1.3, 1.3}},
    selection_box = {{-1.5, -1.5}, {1.5, 1.5}},
    fluid_box = {
      height = 1.8,
      base_area = 166.66667,
      pipe_covers = pipecoverspictures(),
      pipe_connections = {
        { position = {-1, -2} },
        { position = {2, 1} },
        { position = {1, 2} },
        { position = {-2, -1} }
      }
    },
    two_direction_only = true,
    resistances = {
      { type = "impact", decrease = 100, percent = 90 },
      { type = "fire", percent = 75 }
    },
    window_bounding_box = {{-0.125, 0.6875}, {0.1875, 1.1875}},
    flow_length_in_ticks = 360,
    vehicle_impact_sound =  { filename = "__base__/sound/car-metal-impact.ogg", volume = 0.65 },
    working_sound = data.raw["storage-tank"]["storage-tank"].working_sound,
    circuit_wire_connection_points = circuit_connector_definitions["storage-tank"].points,
    circuit_connector_sprites = circuit_connector_definitions["storage-tank"].sprites,
    circuit_wire_max_distance = default_circuit_wire_max_distance,
    water_reflection = data.raw["storage-tank"]["storage-tank"].water_reflection,

    pictures = {
      picture = {
        sheets = {
          {
            filename = ENTITYPATH .. "storage-tank/storage-tank-2.png",
            priority = "extra-high",
            frames = 2,
            width = 219,
            height = 215,
            shift = util.by_pixel(-0.25, 3.75),
            tint = {0.85, 0.9, 1},
            scale = 0.5
          },
          {
            filename = BASEENTITY .. "storage-tank/storage-tank-shadow.png",
            priority = "extra-high",
            frames = 2,
            width = 146,
            height = 77,
            shift = util.by_pixel(30, 22.5),
            draw_as_shadow = true,
            hr_version = {
              filename = BASEENTITY .. "storage-tank/hr-storage-tank-shadow.png",
              priority = "extra-high",
              frames = 2,
              width = 291,
              height = 153,
              shift = util.by_pixel(29.75, 22.25),
              scale = 0.5,
              draw_as_shadow = true
            }
          }
        }
      },
      fluid_background = data.raw["storage-tank"]["storage-tank"].pictures.fluid_background,
      window_background = data.raw["storage-tank"]["storage-tank"].pictures.window_background,
      flow_sprite = data.raw["storage-tank"]["storage-tank"].pictures.flow_sprite,
      gas_flow = data.raw["storage-tank"]["storage-tank"].pictures.gas_flow,
    }
  },

  {
    type = "storage-tank",
    name = "nullius-medium-tank-3",
    icon = ENTICONPATH .. "tank2.png",
    icon_size = 64,
    flags = {"placeable-player", "player-creation"},
    minable = {mining_time=0.5, result="nullius-medium-tank-3"},
    max_health = 600,
    corpse = "storage-tank-remnants",
    fast_replaceable_group = "medium-tank",
    collision_box = {{-1.3, -1.3}, {1.3, 1.3}},
    selection_box = {{-1.5, -1.5}, {1.5, 1.5}},
    fluid_box = {
      height = 2,
      base_area = 300,
      pipe_covers = pipecoverspictures(),
      pipe_connections = {
        { position = {-1, -2} },
        { position = {2, 1} },
        { position = {1, 2} },
        { position = {-2, -1} }
      }
    },
    two_direction_only = true,
    resistances = {
      { type = "impact", decrease = 100, percent = 90 },
      { type = "fire", percent = 75 }
    },
    window_bounding_box = {{-0.125, 0.6875}, {0.1875, 1.1875}},
    flow_length_in_ticks = 360,
    vehicle_impact_sound =  { filename = "__base__/sound/car-metal-impact.ogg", volume = 0.65 },
    working_sound = data.raw["storage-tank"]["storage-tank"].working_sound,
    circuit_wire_connection_points = circuit_connector_definitions["storage-tank"].points,
    circuit_connector_sprites = circuit_connector_definitions["storage-tank"].sprites,
    circuit_wire_max_distance = default_circuit_wire_max_distance,

    pictures = {
      picture = {
        sheets = {
          {
            filename = ENTITYPATH .. "storage-tank/storage-tank-2.png",
            priority = "extra-high",
            frames = 2,
            width = 219,
            height = 215,
            shift = util.by_pixel(-0.25, 3.75),
            scale = 0.5
          },
          {
            filename = BASEENTITY .. "storage-tank/storage-tank-shadow.png",
            priority = "extra-high",
            frames = 2,
            width = 146,
            height = 77,
            shift = util.by_pixel(30, 22.5),
            draw_as_shadow = true,
            hr_version = {
              filename = BASEENTITY .. "storage-tank/hr-storage-tank-shadow.png",
              priority = "extra-high",
              frames = 2,
              width = 291,
              height = 153,
              shift = util.by_pixel(29.75, 22.25),
              scale = 0.5,
              draw_as_shadow = true
            }
          }
        }
      },
      fluid_background = data.raw["storage-tank"]["storage-tank"].pictures.fluid_background,
      window_background = data.raw["storage-tank"]["storage-tank"].pictures.window_background,
      flow_sprite = data.raw["storage-tank"]["storage-tank"].pictures.flow_sprite,
      gas_flow = data.raw["storage-tank"]["storage-tank"].pictures.gas_flow,
    }
  },

  {
    type = "storage-tank",
    name = "nullius-small-tank-1",
    icons = data.raw.item["nullius-small-tank-1"].icons,
    flags = {"placeable-player", "player-creation"},
    minable = {hardness = 0.2, mining_time = 0.3, result = "nullius-small-tank-1"},
    max_health = 200,
    corpse = "medium-remnants",
    collision_box = {{-0.9, -0.9}, {0.9, 0.9}},
    selection_box = {{-1, -1}, {1, 1}},
    two_direction_only = false,
    fluid_box = {
      height = 1.8,
      base_area = 55.55556,
      pipe_covers = pipecoverspictures(),
      pipe_connections = {
        { position = {0.5, -1.5} },
        { position = {0.5, 1.5} },
        { position = {-1.5, 0.5} }
      }
    },
    resistances = {
      { type = "impact", decrease = 100, percent = 90 },
      { type = "fire", percent = 75 }
    },
    window_bounding_box = {{-0.125, 0.6875}, {0.1875, 1.1875}},
    fast_replaceable_group = "small-tank",
    next_upgrade = "nullius-small-tank-2",
    pictures = {
      picture = {
        north = {
          layers = {
            {
              filename = "__angelspetrochem__/graphics/entity/storage-tanks/storage-tank-3.png",
              priority = "extra-high",
              width = 144,
              height = 320,
              x = 96,
              scale = 0.495,
              shift = {0.62, -0.5},
              tint = {0.8, 0.8, 0.4}
            },
            {
              filename = "__angelspetrochem__/graphics/entity/storage-tanks/storage-tank-3.png",
              priority = "extra-high",
              width = 96,
              height = 320,
              x = 256,
              scale = 0.495,
              shift = {-1.23, -0.5},
              tint = {0.8, 0.8, 0.4}
            }
          }
        },
        east = {
          layers = {
            {
              filename = "__angelspetrochem__/graphics/entity/storage-tanks/storage-tank-3.png",
              priority = "extra-high",
              width = 256,
              height = 320,
              x = 256,
              scale = 0.495,
              shift = {0, -0.5},
              tint = {0.8, 0.8, 0.4}
            }
          }
        },
        south = {
          layers = {
            {
              filename = "__angelspetrochem__/graphics/entity/storage-tanks/storage-tank-3.png",
              priority = "extra-high",
              width = 144,
              height = 320,
              x = 512,
              scale = 0.495,
              shift = {-0.87, -0.5},
              tint = {0.8, 0.8, 0.4}
            },
            {
              filename = "__angelspetrochem__/graphics/entity/storage-tanks/storage-tank-3.png",
              priority = "extra-high",
              width = 96,
              height = 320,
              x = 912,
              scale = 0.495,
              shift = {0.98, -0.5},
              tint = {0.8, 0.8, 0.4}
            }
          }
        },
        west = {
          layers = {
            {
              filename = "__angelspetrochem__/graphics/entity/storage-tanks/storage-tank-3.png",
              priority = "extra-high",
              width = 256,
              height = 200,
              x = 768,
              scale = 0.495,
              shift = {0, -1.43},
              tint = {0.8, 0.8, 0.4}
            },
            {
              filename = "__angelspetrochem__/graphics/entity/storage-tanks/storage-tank-3.png",
              priority = "extra-high",
              width = 256,
              height = 120,
              x = 0,
              y = 200,
              scale = 0.495,
              shift = {0, 1.04},
              tint = {0.8, 0.8, 0.4}
            }
          }
        }
      },
      fluid_background = data.raw["storage-tank"]["angels-storage-tank-3"].pictures.fluid_background,
      window_background = data.raw["storage-tank"]["angels-storage-tank-3"].pictures.window_background,
      flow_sprite = data.raw["storage-tank"]["angels-storage-tank-3"].pictures.flow_sprite,
      gas_flow = data.raw["storage-tank"]["angels-storage-tank-3"].pictures.gas_flow
    },
    flow_length_in_ticks = 360,
    vehicle_impact_sound =  { filename = "__base__/sound/car-metal-impact.ogg", volume = 0.65 },
    working_sound = data.raw["storage-tank"]["storage-tank"].working_sound,
    circuit_wire_connection_points = circuit_connector_definitions["storage-tank"].points,
    circuit_connector_sprites = circuit_connector_definitions["storage-tank"].sprites,
    circuit_wire_max_distance = default_circuit_wire_max_distance
  }
})

data:extend({
  {
    type = "storage-tank",
    name = "nullius-small-tank-2",
    icons = data.raw.item["nullius-small-tank-2"].icons,
    flags = {"placeable-player", "player-creation"},
    minable = {hardness = 0.2, mining_time = 0.3, result = "nullius-small-tank-2"},
    max_health = 250,
    corpse = "medium-remnants",
    collision_box = {{-0.9, -0.9}, {0.9, 0.9}},
    selection_box = {{-1, -1}, {1, 1}},
    two_direction_only = false,
    fluid_box = {
      height = 2,
      base_area = 100,
      pipe_covers = pipecoverspictures(),
      pipe_connections = {
        { position = {0.5, -1.5} },
        { position = {0.5, 1.5} },
        { position = {-1.5, 0.5} }
      }
    },
    resistances = {
      { type = "impact", decrease = 100, percent = 90 },
      { type = "fire", percent = 75 }
    },
    window_bounding_box = {{-0.125, 0.6875}, {0.1875, 1.1875}},
    fast_replaceable_group = "small-tank",
    pictures = {
      picture = {
        north = {
          layers = {
            {
              filename = "__angelspetrochem__/graphics/entity/storage-tanks/storage-tank-3.png",
              priority = "extra-high",
              width = 144,
              height = 320,
              x = 96,
              scale = 0.495,
              shift = {0.62, -0.5}
            },
            {
              filename = "__angelspetrochem__/graphics/entity/storage-tanks/storage-tank-3.png",
              priority = "extra-high",
              width = 96,
              height = 320,
              x = 256,
              scale = 0.495,
              shift = {-1.23, -0.5}
            }
          }
        },
        east = {
          layers = {
            {
              filename = "__angelspetrochem__/graphics/entity/storage-tanks/storage-tank-3.png",
              priority = "extra-high",
              width = 256,
              height = 320,
              x = 256,
              scale = 0.495,
              shift = {0, -0.5}
            }
          }
        },
        south = {
          layers = {
            {
              filename = "__angelspetrochem__/graphics/entity/storage-tanks/storage-tank-3.png",
              priority = "extra-high",
              width = 144,
              height = 320,
              x = 512,
              scale = 0.495,
              shift = {-0.87, -0.5}
            },
            {
              filename = "__angelspetrochem__/graphics/entity/storage-tanks/storage-tank-3.png",
              priority = "extra-high",
              width = 96,
              height = 320,
              x = 912,
              scale = 0.495,
              shift = {0.98, -0.5}
            }
          }
        },
        west = {
          layers = {
            {
              filename = "__angelspetrochem__/graphics/entity/storage-tanks/storage-tank-3.png",
              priority = "extra-high",
              width = 256,
              height = 200,
              x = 768,
              scale = 0.495,
              shift = {0, -1.43}
            },
            {
              filename = "__angelspetrochem__/graphics/entity/storage-tanks/storage-tank-3.png",
              priority = "extra-high",
              width = 256,
              height = 120,
              x = 0,
              y = 200,
              scale = 0.495,
              shift = {0, 1.04}
            }
          }
        }
      },
      fluid_background = data.raw["storage-tank"]["angels-storage-tank-3"].pictures.fluid_background,
      window_background = data.raw["storage-tank"]["angels-storage-tank-3"].pictures.window_background,
      flow_sprite = data.raw["storage-tank"]["angels-storage-tank-3"].pictures.flow_sprite,
      gas_flow = data.raw["storage-tank"]["angels-storage-tank-3"].pictures.gas_flow
    },
    flow_length_in_ticks = 360,
    vehicle_impact_sound =  { filename = "__base__/sound/car-metal-impact.ogg", volume = 0.65 },
    working_sound = data.raw["storage-tank"]["storage-tank"].working_sound,
    circuit_wire_connection_points = circuit_connector_definitions["storage-tank"].points,
    circuit_connector_sprites = circuit_connector_definitions["storage-tank"].sprites,
    circuit_wire_max_distance = default_circuit_wire_max_distance
  },

  {
    type = "storage-tank",
    name = "nullius-large-tank-1",
    icons = data.raw.item["nullius-large-tank-1"].icons,
    flags = {"placeable-player", "player-creation"},
    minable = {hardness = 0.2, mining_time = 3, result = "nullius-large-tank-1"},
    max_health = 1000,
    corpse = "medium-remnants",
    collision_box = {{-2.2, -2.2}, {2.2, 2.2}},
    selection_box = {{-2.5, -2.5}, {2.5, 2.5}},
    two_direction_only = false,
    fluid_box = {
      height = 2,
      base_area = 625,
      pipe_covers = pipecoverspictures(),
      pipe_connections = {
        { position = {0, -3} },
        { position = {3, 0} },
        { position = {-3, 0} },
        { position = {0, 3} },
      },
    },
    fast_replaceable_group = "large-tank",
    next_upgrade = "nullius-large-tank-2",
    window_bounding_box = {{-0.125, 0.6875}, {0.1875, 1.1875}},
    flow_length_in_ticks = 360,
    vehicle_impact_sound =  { filename = "__base__/sound/car-metal-impact.ogg", volume = 0.65 },
    working_sound = data.raw["storage-tank"]["angels-storage-tank-1"].working_sound,
    circuit_wire_connection_points = circuit_connector_definitions["storage-tank"].points,
    circuit_connector_sprites = circuit_connector_definitions["storage-tank"].sprites,
    circuit_wire_max_distance = default_circuit_wire_max_distance,
    pictures = {
      picture = {
        sheet = {
          filename = "__angelspetrochem__/graphics/entity/storage-tanks/storage-tank-1.png",
          priority = "extra-high",
          frames = 1,
          width = 224,
          height = 224,
          tint = {0.75, 0.75, 0.6}
        }
      },
      fluid_background = data.raw["storage-tank"]["angels-storage-tank-1"].pictures.fluid_background,
      window_background = data.raw["storage-tank"]["angels-storage-tank-1"].pictures.window_background,
      flow_sprite = data.raw["storage-tank"]["angels-storage-tank-1"].pictures.flow_sprite,
      gas_flow = data.raw["storage-tank"]["angels-storage-tank-1"].pictures.gas_flow
    }
  },

  {
    type = "storage-tank",
    name = "nullius-large-tank-2",
    icons = data.raw.item["nullius-large-tank-2"].icons,
    flags = {"placeable-player", "player-creation"},
    minable = {hardness = 0.2, mining_time = 3, result = "nullius-large-tank-2"},
    max_health = 1200,
    corpse = "medium-remnants",
    collision_box = {{-2.2, -2.2}, {2.2, 2.2}},
    selection_box = {{-2.5, -2.5}, {2.5, 2.5}},
    two_direction_only = false,
    fluid_box = {
      height = 2.2,
      base_area = 1136.3636364,
      pipe_covers = pipecoverspictures(),
      pipe_connections = {
        { position = {0, -3} },
        { position = {3, 0} },
        { position = {-3, 0} },
        { position = {0, 3} },
      },
    },
    fast_replaceable_group = "large-tank",
    next_upgrade = "nullius-large-tank-3",
    window_bounding_box = {{-0.125, 0.6875}, {0.1875, 1.1875}},
    flow_length_in_ticks = 360,
    vehicle_impact_sound =  { filename = "__base__/sound/car-metal-impact.ogg", volume = 0.65 },
    working_sound = data.raw["storage-tank"]["angels-storage-tank-1"].working_sound,
    circuit_wire_connection_points = circuit_connector_definitions["storage-tank"].points,
    circuit_connector_sprites = circuit_connector_definitions["storage-tank"].sprites,
    circuit_wire_max_distance = default_circuit_wire_max_distance,
    pictures = {
      picture = {
        sheet = {
          filename = "__angelspetrochem__/graphics/entity/storage-tanks/storage-tank-1.png",
          priority = "extra-high",
          frames = 1,
          width = 224,
          height = 224,
          tint = {0.85, 0.85, 0.95}
        }
      },
      fluid_background = data.raw["storage-tank"]["angels-storage-tank-1"].pictures.fluid_background,
      window_background = data.raw["storage-tank"]["angels-storage-tank-1"].pictures.window_background,
      flow_sprite = data.raw["storage-tank"]["angels-storage-tank-1"].pictures.flow_sprite,
      gas_flow = data.raw["storage-tank"]["angels-storage-tank-1"].pictures.gas_flow
    }
  },

  {
    type = "storage-tank",
    name = "nullius-large-tank-3",
    icons = data.raw.item["nullius-large-tank-3"].icons,
    flags = {"placeable-player", "player-creation"},
    minable = {hardness = 0.2, mining_time = 3, result = "nullius-large-tank-3"},
    max_health = 1500,
    corpse = "medium-remnants",
    collision_box = {{-2.2, -2.2}, {2.2, 2.2}},
    selection_box = {{-2.5, -2.5}, {2.5, 2.5}},
    two_direction_only = false,
    fluid_box = {
      height = 2.5,
      base_area = 2000,
      pipe_covers = pipecoverspictures(),
      pipe_connections = {
        { position = {0, -3} },
        { position = {3, 0} },
        { position = {-3, 0} },
        { position = {0, 3} },
      },
    },
    fast_replaceable_group = "large-tank",
    window_bounding_box = {{-0.125, 0.6875}, {0.1875, 1.1875}},
    flow_length_in_ticks = 360,
    vehicle_impact_sound =  { filename = "__base__/sound/car-metal-impact.ogg", volume = 0.65 },
    working_sound = data.raw["storage-tank"]["angels-storage-tank-1"].working_sound,
    circuit_wire_connection_points = circuit_connector_definitions["storage-tank"].points,
    circuit_connector_sprites = circuit_connector_definitions["storage-tank"].sprites,
    circuit_wire_max_distance = default_circuit_wire_max_distance,
    pictures = data.raw["storage-tank"]["angels-storage-tank-1"].pictures
  },

  {
    type = "mining-drill",
    name = "nullius-extractor-1",
    icons = data.raw.item["nullius-extractor-1"].icons,
    flags = {"placeable-neutral", "player-creation"},
    minable = { mining_time = 0.5, result = "nullius-extractor-1" },
    fast_replaceable_group = "extractor",
    next_upgrade = "nullius-extractor-2",
    resource_categories = {"basic-fluid"},
    max_health = 300,
    corpse = "pumpjack-remnants",
    dying_explosion = "pumpjack-explosion",
    collision_box = {{ -1.7, -1.7}, {1.7, 1.7}},
    selection_box = {{ -2, -2}, {2, 2}},
    drawing_box = {{-2.67, -4.2}, {2.5, 2.67}},
    energy_source = {
      type = "electric",
      emissions_per_minute = 5,
      usage_priority = "secondary-input",
      drain = "10kW"
    },
    output_fluid_box = {
      base_area = 5,
      base_level = 2,
      pipe_covers = pipecoverspictures(),
      pipe_connections = {
        { positions = { {1.5, -2.5}, {2.5, -1.5}, {-1.5, 2.5}, {-2.5, 1.5} } }
      }
    },
    energy_usage = "190kW",
    mining_speed = 1,
    resource_searching_radius = 0.99,
    vector_to_place_result = {0, 0},
    resistances = {
      { type = "impact", decrease = 100, percent = 90 },
      { type = "fire", decrease = 100, percent = 90 }
    },
    damaged_trigger_effect = data.raw["mining-drill"]["pumpjack"].damaged_trigger_effect,
    vehicle_impact_sound = data.raw["mining-drill"]["pumpjack"].vehicle_impact_sound,
    open_sound = data.raw["mining-drill"]["pumpjack"].open_sound,
    close_sound = data.raw["mining-drill"]["pumpjack"].close_sound,
    working_sound = data.raw["mining-drill"]["pumpjack"].working_sound,
    fast_replaceable_group = "geothermal-pump",
    module_specification = { module_slots = 1 },
    allowed_effects = {"speed", "productivity", "consumption", "pollution"},
    radius_visualisation_picture = {
      filename = BASEENTITY .. "pumpjack/pumpjack-radius-visualization.png",
      width = 12,
      height = 12
    },
    monitor_visualization_tint = {r=78, g=173, b=255},
    circuit_wire_connection_points = circuit_connector_definitions["pumpjack"].points,
    circuit_connector_sprites = circuit_connector_definitions["pumpjack"].sprites,
    circuit_wire_max_distance = default_circuit_wire_max_distance,
    base_render_layer = "lower-object-above-shadow",
    base_picture = {
      sheets = {
        {
          filename = BASEENTITY .. "pumpjack/hr-pumpjack-base.png",
          priority = "extra-high",
          width = 261,
          height = 273,
          shift = util.by_pixel(-3.75, -7.91666),
          scale = 0.66667
        },
        {
          filename = BASEENTITY .. "pumpjack/hr-pumpjack-base-shadow.png",
          width = 220,
          height = 220,
          scale = 0.66667,
          draw_as_shadow = true,
          shift = util.by_pixel(10, 0.833333)
        }
      }
    },
    animations = {
      north = {
        layers = {
          {
            priority = "high",
            filename = ENTITYPATH .. "wells/hr-pumpjack-decolorized.png",
            animation_speed = 0.4,
            scale = 0.66667,
            tint = {0.98, 0.58, 0.24},
            line_length = 8,
            width = 206,
            height = 202,
            frame_count = 40,
            shift = util.by_pixel(-6.66667, -40)
          },
          {
            priority = "high",
            filename = BASEENTITY .. "pumpjack/hr-pumpjack-horsehead-shadow.png",
            animation_speed = 0.66667,
            draw_as_shadow = true,
            line_length = 8,
            width = 309,
            height = 82,
            frame_count = 40,
            scale = 0.4,
            shift = util.by_pixel(29.5833, 24.1666)
          }
        }
      }
    }
  },

  {
    type = "mining-drill",
    name = "nullius-extractor-2",
    icons = data.raw.item["nullius-extractor-2"].icons,
    flags = {"placeable-neutral", "player-creation"},
    minable = { mining_time = 0.5, result = "nullius-extractor-2" },
    fast_replaceable_group = "extractor",
    resource_categories = {"basic-fluid"},
    max_health = 400,
    corpse = "pumpjack-remnants",
    dying_explosion = "pumpjack-explosion",
    collision_box = {{ -1.7, -1.7}, {1.7, 1.7}},
    selection_box = {{ -2, -2}, {2, 2}},
    drawing_box = {{-2.67, -4.2}, {2.5, 2.67}},
    energy_source = {
      type = "electric",
      emissions_per_minute = 10,
      usage_priority = "secondary-input",
      drain = "20kW"
    },
    output_fluid_box = {
      base_area = 10,
      base_level = 3,
      height = 2,
      pipe_covers = pipecoverspictures(),
      pipe_connections = {
        { positions = { {1.5, -2.5}, {2.5, -1.5}, {-1.5, 2.5}, {-2.5, 1.5} } }
      }
    },
    energy_usage = "380kW",
    mining_speed = 2,
    resource_searching_radius = 0.99,
    vector_to_place_result = {0, 0},
    resistances = {
      { type = "impact", decrease = 100, percent = 90 },
      { type = "fire", decrease = 100, percent = 90 }
    },
    damaged_trigger_effect = data.raw["mining-drill"]["pumpjack"].damaged_trigger_effect,
    vehicle_impact_sound = data.raw["mining-drill"]["pumpjack"].vehicle_impact_sound,
    open_sound = data.raw["mining-drill"]["pumpjack"].open_sound,
    close_sound = data.raw["mining-drill"]["pumpjack"].close_sound,
    working_sound = data.raw["mining-drill"]["pumpjack"].working_sound,
    fast_replaceable_group = "geothermal-pump",
    module_specification = { module_slots = 2 },
    allowed_effects = {"speed", "productivity", "consumption", "pollution"},
    radius_visualisation_picture = {
      filename = BASEENTITY .. "pumpjack/pumpjack-radius-visualization.png",
      width = 12,
      height = 12
    },
    monitor_visualization_tint = {r=78, g=173, b=255},
    circuit_wire_connection_points = circuit_connector_definitions["pumpjack"].points,
    circuit_connector_sprites = circuit_connector_definitions["pumpjack"].sprites,
    circuit_wire_max_distance = default_circuit_wire_max_distance,
    base_render_layer = "lower-object-above-shadow",
    base_picture = {
      sheets = {
        {
          filename = BASEENTITY .. "pumpjack/hr-pumpjack-base.png",
          priority = "extra-high",
          width = 261,
          height = 273,
          shift = util.by_pixel(-3.75, -7.91666),
          scale = 0.66667
        },
        {
          filename = BASEENTITY .. "pumpjack/hr-pumpjack-base-shadow.png",
          width = 220,
          height = 220,
          scale = 0.66667,
          draw_as_shadow = true,
          shift = util.by_pixel(10, 0.833333)
        }
      }
    },
    animations = {
      north = {
        layers = {
          {
            priority = "high",
            filename = ENTITYPATH .. "wells/hr-pumpjack-decolorized.png",
            animation_speed = 0.6,
            scale = 0.66667,
            tint = {0.99,0.25,0.39},
            line_length = 8,
            width = 206,
            height = 202,
            frame_count = 40,
            shift = util.by_pixel(-6.66667, -40)
          },
          {
            priority = "high",
            filename = BASEENTITY .. "pumpjack/hr-pumpjack-horsehead-shadow.png",
            animation_speed = 0.66667,
            draw_as_shadow = true,
            line_length = 8,
            width = 309,
            height = 82,
            frame_count = 40,
            scale = 0.6,
            shift = util.by_pixel(29.5833, 24.1666)
          }
        }
      }
    }
  },

  {
    type = "assembling-machine",
    name = "nullius-barrel-pump-1",
    icons = data.raw.item["nullius-barrel-pump-1"].icons,
    flags = {"placeable-neutral", "player-creation"},
    minable = {mining_time = 0.3, result = "nullius-barrel-pump-1"},
    fast_replaceable_group = "nullius-barrel-pump",
    next_upgrade = "nullius-barrel-pump-2",
    max_health = 300,
    corpse = "big-remnants",
    dying_explosion = "medium-explosion",
    collision_box = {{-1.2, -1.2}, {1.2, 1.2}},
    selection_box = {{-1.5, -1.5}, {1.5, 1.5}},
    crafting_categories = {"nullius-barrel", "nullius-unbarrel", "decompression"},
    crafting_speed = 1,
    energy_source = {
      type = "electric",
      usage_priority = "secondary-input",
      emissions_per_minute = 0.5,
      drain = "1kW"
    },
    energy_usage = "24kW",
    module_specification = { module_slots = 1 },
    allowed_effects = {"speed", "consumption", "pollution"},
    resistances = {
      { type = "impact", decrease = 100, percent = 90 },
      { type = "fire", decrease = 20, percent = 50 },
      { type = "explosion", decrease = 20, percent = 50 }
    },
    ingredient_count = 2,
    working_sound = {
        sound = {filename = "__base__/sound/oil-refinery.ogg"},
        idle_sound = {filename = "__base__/sound/idle1.ogg", volume = 0.6},
        apparent_volume = 2.5
    },
    vehicle_impact_sound = {filename = "__base__/sound/car-metal-impact.ogg", volume = 0.65},
    fluid_boxes = {
      {
        production_type = "input",
        pipe_covers = pipecoverspictures(),
        base_area = 5,
        base_level = -2,
        pipe_connections = {{type = "input", position = {0, 2}}}
      },
      {
        production_type = "output",
        pipe_covers = pipecoverspictures(),
        base_level = 2,
        pipe_connections = {{position = {0, -2}}}
      }
    },
    pipe_covers = pipecoverspictures(),

    animation = {
      north = {
        filename = "__angelsrefining__/graphics/entity/barreling-pump/barreling-pump.png",
        width = 160,
        height = 160,
        frame_count = 1,
        tint = {0.6, 0.8, 0.8}
      },
      east = {
        filename = "__angelsrefining__/graphics/entity/barreling-pump/barreling-pump.png",
        x = 480,
        width = 160,
        height = 160,
        frame_count = 1,
        tint = {0.6, 0.8, 0.8}
      },
      south = {
        filename = "__angelsrefining__/graphics/entity/barreling-pump/barreling-pump.png",
        x = 320,
        width = 160,
        height = 160,
        frame_count = 1,
        tint = {0.6, 0.8, 0.8}
      },
      west = {
        filename = "__angelsrefining__/graphics/entity/barreling-pump/barreling-pump.png",
        x = 160,
        width = 160,
        height = 160,
        frame_count = 1,
        tint = {0.6, 0.8, 0.8}
      }
    },
    working_visualisations = {
      {
        north_position = {0, 0},
        east_position = {0, -0.1},
        south_position = {0, -0.25},
        west_position = {0, -0.15},
        animation = {
          filename = "__angelsrefining__/graphics/entity/barreling-pump/barreling-pump-animation.png",
          frame_count = 36,
          line_length = 6,
          width = 64,
          height = 64,
          animation_speed = 0.2,
          run_mode = "forward",
          tint = {0.6, 0.8, 0.8}
        },
        light = {intensity = 0.4, size = 6}
      }
    }
  },

  {
    type = "assembling-machine",
    name = "nullius-barrel-pump-2",
    icons = data.raw.item["nullius-barrel-pump-2"].icons,
    flags = {"placeable-neutral", "player-creation"},
    minable = {mining_time = 0.3, result = "nullius-barrel-pump-2"},
    fast_replaceable_group = "nullius-barrel-pump",
    max_health = 400,
    corpse = "big-remnants",
    dying_explosion = "medium-explosion",
    collision_box = {{-1.2, -1.2}, {1.2, 1.2}},
    selection_box = {{-1.5, -1.5}, {1.5, 1.5}},
    crafting_categories = {"nullius-barrel", "nullius-unbarrel", "decompression"},
    crafting_speed = 2.5,
    energy_source = {
      type = "electric",
      usage_priority = "secondary-input",
      emissions_per_minute = 1,
      drain = "2kW"
    },
    energy_usage = "58kW",
    module_specification = { module_slots = 2 },
    allowed_effects = {"speed", "consumption", "pollution"},
    resistances = {
      { type = "impact", decrease = 100, percent = 90 },
      { type = "fire", decrease = 20, percent = 50 },
      { type = "explosion", decrease = 20, percent = 50 }
    },
    ingredient_count = 2,
    working_sound = {
      sound = {filename = "__base__/sound/oil-refinery.ogg"},
      idle_sound = {filename = "__base__/sound/idle1.ogg", volume = 0.6},
      apparent_volume = 2.5
    },
    vehicle_impact_sound = {filename = "__base__/sound/car-metal-impact.ogg", volume = 0.65},
    fluid_boxes = {
      {
        production_type = "input",
        pipe_covers = pipecoverspictures(),
        base_area = 10,
        base_level = -2,
        pipe_connections = {{type = "input", position = {0, 2}}}
      },
      {
        production_type = "output",
        pipe_covers = pipecoverspictures(),
        base_area = 10,
        base_level = 3,
        pipe_connections = {{position = {0, -2}}}
      }
    },
    pipe_covers = pipecoverspictures(),
    animation = {
      north = {
        filename = "__angelsrefining__/graphics/entity/barreling-pump/barreling-pump.png",
        width = 160,
        height = 160,
        frame_count = 1,
        shift = {0, 0}
      },
      east = {
        filename = "__angelsrefining__/graphics/entity/barreling-pump/barreling-pump.png",
        x = 480,
        width = 160,
        height = 160,
        frame_count = 1,
        shift = {0, 0}
      },
      south = {
        filename = "__angelsrefining__/graphics/entity/barreling-pump/barreling-pump.png",
        x = 320,
        width = 160,
        height = 160,
        frame_count = 1,
        shift = {0, 0}
      },
      west = {
        filename = "__angelsrefining__/graphics/entity/barreling-pump/barreling-pump.png",
        x = 160,
        width = 160,
        height = 160,
        frame_count = 1,
        shift = {0, 0}
      }
    },
    working_visualisations = {
      {
        north_position = {0, 0},
        east_position = {0, -0.1},
        south_position = {0, -0.25},
        west_position = {0, -0.15},
        animation = {
          filename = "__angelsrefining__/graphics/entity/barreling-pump/barreling-pump-animation.png",
          frame_count = 36,
          line_length = 6,
          width = 64,
          height = 64,
          shift = {0, 0},
          animation_speed = 0.25,
          run_mode = "forward"
        },
        light = {intensity = 0.4, size = 6}
      }
    }
  },

  {
    type = "pump",
    name = "nullius-pump-1",
    icon = ENTICONPATH .. "pump-yellow.png",
    icon_size = 64,
    icon_mipmaps = 4,
    flags = {"placeable-neutral", "player-creation"},
    minable = {mining_time = 0.2, result = "nullius-pump-1"},
    max_health = 150,
    fast_replaceable_group = "pump",
    next_upgrade = "nullius-pump-2",
    corpse = "pump-remnants",
    dying_explosion = "pump-explosion",
    collision_box = {{-0.29, -0.9}, {0.29, 0.9}},
    selection_box = {{-0.5, -1}, {0.5, 1}},
    working_sound = data.raw.pump["pump"].working_sound,
    damaged_trigger_effect = data.raw.pump["pump"].damaged_trigger_effect,
    resistances = {
      { type = "impact", decrease = 100, percent = 90 },
      { type = "fire", decrease = 20, percent = 50 }
    },
    fluid_box = {
      base_area = 1,
      height = 3,
      pipe_covers = pipecoverspictures(),
      pipe_connections =
      {
        { position = {0, -1.5}, type = "output" },
        { position = {0, 1.5}, type = "input" }
      }
    },
    energy_source = {
      type = "electric",
      usage_priority = "secondary-input"
    },
    energy_usage = "10kW",
    pumping_speed = 20,
    vehicle_impact_sound = data.raw.pump["pump"].vehicle_impact_sound,
    open_sound = data.raw.pump["pump"].open_sound,
    close_sound = data.raw.pump["pump"].close_sound,
    fluid_wagon_connector_frame_count = 35,
    fluid_wagon_connector_alignment_tolerance = 2.0 / 32.0,
    fluid_wagon_connector_graphics = data.raw.pump["pump"].fluid_wagon_connector_graphics,
    fluid_animation = data.raw.pump["pump"].fluid_animation,
    glass_pictures = data.raw.pump["pump"].glass_pictures,
    circuit_wire_connection_points = circuit_connector_definitions["pump"].points,
    circuit_connector_sprites = circuit_connector_definitions["pump"].sprites,
    circuit_wire_max_distance = default_circuit_wire_max_distance,

    animations = {
      north = {
        layers = {
          {
            filename = BASEENTITY .. "pump/hr-pump-north.png",
            width = 103,
            height = 164,
            scale = 0.5,
            line_length = 8,
            frame_count = 32,
            animation_speed = 0.5,
            shift = util.by_pixel(8, 3.5) -- {0.515625, 0.21875}
          },
          {
            filename = ENTITYPATH .. "pump/yellow-pump-north.png",
            width = 103,
            height = 164,
            scale = 0.5,
            frame_count = 1,
            repeat_count = 32,
            animation_speed = 0.5,
            shift = util.by_pixel(8, 3.5) -- {0.515625, 0.21875}
          }
        }
      },
      east = {
        layers = {
          {
            filename = BASEENTITY .. "pump/hr-pump-east.png",
            width = 130,
            height = 109,
            scale = 0.5,
            line_length = 8,
            frame_count = 32,
            animation_speed = 0.5,
            shift = util.by_pixel(-0.5, 1.75) --{-0.03125, 0.109375}
          },
          {
            filename = ENTITYPATH .. "pump/yellow-pump-east.png",
            width = 130,
            height = 109,
            scale = 0.5,
            frame_count = 1,
            repeat_count = 32,
            animation_speed = 0.5,
            shift = util.by_pixel(-0.5, 1.75) --{-0.03125, 0.109375}
          },
        }
      },
      south = {
        layers = {
          {
            filename = BASEENTITY .. "pump/hr-pump-south.png",
            width = 114,
            height = 160,
            scale = 0.5,
            line_length = 8,
            frame_count = 32,
            animation_speed = 0.5,
            shift = util.by_pixel(12.5, -8) -- {0.75, -0.5}
          },
          {
            filename = ENTITYPATH .. "pump/yellow-pump-south.png",
            width = 114,
            height = 160,
            scale = 0.5,
            frame_count = 1,
            repeat_count = 32,
            animation_speed = 0.5,
            shift = util.by_pixel(12.5, -8) -- {0.75, -0.5}
          },
        }
      },
      west = {
        layers = {
          {
            filename = BASEENTITY .. "pump/hr-pump-west.png",
            width = 131,
            height = 111,
            scale = 0.5,
            line_length = 8,
            frame_count = 32,
            animation_speed = 0.5,
            shift = util.by_pixel(-0.25, 1.25) -- {-0.015625, 0.078125}
          },
          {
            filename = ENTITYPATH .. "pump/yellow-pump-west.png",
            width = 131,
            height = 111,
            scale = 0.5,
            frame_count = 1,
            repeat_count = 32,
            animation_speed = 0.5,
            shift = util.by_pixel(-0.25, 1.25) -- {-0.015625, 0.078125}
          },
        }
      }
    }
  },

  {
    type = "pump",
    name = "nullius-pump-2",
    icon = ENTICONPATH .. "pump-blue.png",
    icon_size = 64,
    icon_mipmaps = 4,
    flags = {"placeable-neutral", "player-creation"},
    minable = {mining_time = 0.2, result = "nullius-pump-2"},
    max_health = 200,
    fast_replaceable_group = "pump",
    next_upgrade = "nullius-pump-3",
    corpse = "pump-remnants",
    dying_explosion = "pump-explosion",
    collision_box = {{-0.29, -0.9}, {0.29, 0.9}},
    selection_box = {{-0.5, -1}, {0.5, 1}},
    working_sound = data.raw.pump["pump"].working_sound,
    damaged_trigger_effect = data.raw.pump["pump"].damaged_trigger_effect,
    resistances = {
      { type = "impact", decrease = 100, percent = 90 },
      { type = "fire", decrease = 20, percent = 50 }
    },
    fluid_box = {
      base_area = 1,
      height = 5,
      pipe_covers = pipecoverspictures(),
      pipe_connections =
      {
        { position = {0, -1.5}, type = "output" },
        { position = {0, 1.5}, type = "input" }
      }
    },
    energy_source = {
      type = "electric",
      usage_priority = "secondary-input"
    },
    energy_usage = "15kW",
    pumping_speed = 40,
    vehicle_impact_sound = data.raw.pump["pump"].vehicle_impact_sound,
    open_sound = data.raw.pump["pump"].open_sound,
    close_sound = data.raw.pump["pump"].close_sound,
    fluid_wagon_connector_frame_count = 35,
    fluid_wagon_connector_alignment_tolerance = 2.0 / 32.0,
    fluid_wagon_connector_graphics = data.raw.pump["pump"].fluid_wagon_connector_graphics,
    fluid_animation = data.raw.pump["pump"].fluid_animation,
    glass_pictures = data.raw.pump["pump"].glass_pictures,
    circuit_wire_connection_points = circuit_connector_definitions["pump"].points,
    circuit_connector_sprites = circuit_connector_definitions["pump"].sprites,
    circuit_wire_max_distance = default_circuit_wire_max_distance,

    animations = {
      north = {
        layers = {
          {
            filename = BASEENTITY .. "pump/hr-pump-north.png",
            width = 103,
            height = 164,
            scale = 0.5,
            line_length = 8,
            frame_count = 32,
            animation_speed = 0.5,
            shift = util.by_pixel(8, 3.5) -- {0.515625, 0.21875}
          },
          {
            filename = ENTITYPATH .. "pump/blue-pump-north.png",
            width = 103,
            height = 164,
            scale = 0.5,
            frame_count = 1,
            repeat_count = 32,
            animation_speed = 0.5,
            shift = util.by_pixel(8, 3.5) -- {0.515625, 0.21875}
          }
        }
      },
      east = {
        layers = {
          {
            filename = BASEENTITY .. "pump/hr-pump-east.png",
            width = 130,
            height = 109,
            scale = 0.5,
            line_length = 8,
            frame_count = 32,
            animation_speed = 0.5,
            shift = util.by_pixel(-0.5, 1.75) --{-0.03125, 0.109375}
          },
          {
            filename = ENTITYPATH .. "pump/blue-pump-east.png",
            width = 130,
            height = 109,
            scale = 0.5,
            frame_count = 1,
            repeat_count = 32,
            animation_speed = 0.5,
            shift = util.by_pixel(-0.5, 1.75) --{-0.03125, 0.109375}
          },
        }
      },
      south = {
        layers = {
          {
            filename = BASEENTITY .. "pump/hr-pump-south.png",
            width = 114,
            height = 160,
            scale = 0.5,
            line_length = 8,
            frame_count = 32,
            animation_speed = 0.5,
            shift = util.by_pixel(12.5, -8) -- {0.75, -0.5}
          },
          {
            filename = ENTITYPATH .. "pump/blue-pump-south.png",
            width = 114,
            height = 160,
            scale = 0.5,
            frame_count = 1,
            repeat_count = 32,
            animation_speed = 0.5,
            shift = util.by_pixel(12.5, -8) -- {0.75, -0.5}
          },
        }
      },
      west = {
        layers = {
          {
            filename = BASEENTITY .. "pump/hr-pump-west.png",
            width = 131,
            height = 111,
            scale = 0.5,
            line_length = 8,
            frame_count = 32,
            animation_speed = 0.5,
            shift = util.by_pixel(-0.25, 1.25) -- {-0.015625, 0.078125}
          },
          {
            filename = ENTITYPATH .. "pump/blue-pump-west.png",
            width = 131,
            height = 111,
            scale = 0.5,
            frame_count = 1,
            repeat_count = 32,
            animation_speed = 0.5,
            shift = util.by_pixel(-0.25, 1.25) -- {-0.015625, 0.078125}
          },
        }
      }
    }
  },

  {
    type = "pump",
    name = "nullius-pump-3",
    icon = "__base__/graphics/icons/pump.png",
    icon_size = 64,
    icon_mipmaps = 4,
    flags = {"placeable-neutral", "player-creation"},
    minable = {mining_time = 0.2, result = "nullius-pump-3"},
    max_health = 250,
    fast_replaceable_group = "pump",
    corpse = "pump-remnants",
    dying_explosion = "pump-explosion",
    collision_box = {{-0.29, -0.9}, {0.29, 0.9}},
    selection_box = {{-0.5, -1}, {0.5, 1}},
    working_sound = data.raw.pump["pump"].working_sound,
    damaged_trigger_effect = data.raw.pump["pump"].damaged_trigger_effect,
    resistances = {
      { type = "impact", decrease = 100, percent = 90 },
      { type = "fire", decrease = 20, percent = 50 }
    },
    fluid_box = {
      base_area = 1,
      height = 10,
      pipe_covers = pipecoverspictures(),
      pipe_connections = {
        { position = {0, -1.5}, type = "output" },
        { position = {0, 1.5}, type = "input" }
      }
    },
    energy_source = {
      type = "electric",
      usage_priority = "secondary-input"
    },
    energy_usage = "30kW",
    pumping_speed = 160,
    vehicle_impact_sound = data.raw.pump["pump"].vehicle_impact_sound,
    open_sound = data.raw.pump["pump"].open_sound,
    close_sound = data.raw.pump["pump"].close_sound,
    fluid_wagon_connector_frame_count = 35,
    fluid_wagon_connector_alignment_tolerance = 2.0 / 32.0,
    fluid_wagon_connector_graphics = data.raw.pump["pump"].fluid_wagon_connector_graphics,
    fluid_animation = data.raw.pump["pump"].fluid_animation,
    glass_pictures = data.raw.pump["pump"].glass_pictures,
    circuit_wire_connection_points = circuit_connector_definitions["pump"].points,
    circuit_connector_sprites = circuit_connector_definitions["pump"].sprites,
    circuit_wire_max_distance = default_circuit_wire_max_distance,
    animations = data.raw.pump["pump"].animations
  },

  {
    type = "pump",
    name = "nullius-small-pump-1",
    icons = data.raw.item["nullius-small-pump-1"].icons,
    flags = {"placeable-neutral", "player-creation"},
    minable = {mining_time = 0.2, result = "nullius-small-pump-1"},
    max_health = 100,
    fast_replaceable_group = "pipe",
    next_upgrade = "nullius-small-pump-2",
    corpse = "pump-remnants",
    dying_explosion = "pump-explosion",
    collision_box = {{-0.25, -0.4}, {0.25, 0.4}},
    selection_box = {{-0.5, -0.5}, {0.5, 0.5}},
    working_sound = data.raw["pump"]["pump"].working_sound,
    damaged_trigger_effect = data.raw["pump"]["pump"].damaged_trigger_effect,
    resistances = {
      { type = "impact", decrease = 100, percent = 90 },
      { type = "fire", decrease = 20, percent = 50 }
    },
    fluid_box = {
      base_area = 0.8,
      height = 2.5,
      pipe_connections = {
        { position = {0, 1}, type = "output" },
        { position = {0, -1}, type = "input" }
      }
    },
    energy_source = {
      type = "electric",
      usage_priority = "secondary-input"
    },
    energy_usage = "10kW",
    pumping_speed = 20,
    vehicle_impact_sound = data.raw["pump"]["pump"].vehicle_impact_sound,
    open_sound = data.raw["pump"]["pump"].open_sound,
    close_sound = data.raw["pump"]["pump"].close_sound,
    circuit_wire_connection_points = data.raw["pump"]["pump"].circuit_wire_connection_points,
    circuit_connector_sprites = data.raw["pump"]["pump"].circuit_connector_sprites,
    circuit_wire_max_distance = data.raw["pump"]["pump"].circuit_wire_max_distance,

    animations = {
      north = {
        filename = "__angelspetrochem__/graphics/entity/valve/valve-underflow.png",
        priority = "extra-high",
        frames = 1,
        width = 64,
        height = 64,
        tint = {0.7, 0.7, 0.7}
      },
      east = {
        filename = "__angelspetrochem__/graphics/entity/valve/valve-underflow.png",
        priority = "extra-high",
        frames = 1,
        x = 64,
        width = 64,
        height = 64,
        tint = {0.7, 0.7, 0.7}
      },
      south = {
        filename = "__angelspetrochem__/graphics/entity/valve/valve-underflow.png",
        priority = "extra-high",
        frames = 1,
        x = 128,
        width = 64,
        height = 64,
        tint = {0.7, 0.7, 0.7}
      },
      west = {
        filename = "__angelspetrochem__/graphics/entity/valve/valve-underflow.png",
        priority = "extra-high",
        frames = 1,
        x = 192,
        width = 64,
        height = 64,
        tint = {0.7, 0.7, 0.7}
      }
    }
  },

  {
    type = "pump",
    name = "nullius-small-pump-2",
    icons = data.raw.item["nullius-small-pump-2"].icons,
    flags = {"placeable-neutral", "player-creation"},
    minable = {mining_time = 0.2, result = "nullius-small-pump-2"},
    max_health = 150,
    fast_replaceable_group = "pipe",
    corpse = "pump-remnants",
    dying_explosion = "pump-explosion",
    collision_box = {{-0.25, -0.4}, {0.25, 0.4}},
    selection_box = {{-0.5, -0.5}, {0.5, 0.5}},
    working_sound = data.raw["pump"]["pump"].working_sound,
    damaged_trigger_effect = data.raw["pump"]["pump"].damaged_trigger_effect,
    resistances = {
      { type = "impact", decrease = 100, percent = 90 },
      { type = "fire", decrease = 20, percent = 50 }
    },
    fluid_box = {
      base_area = 1,
      height = 4,
      pipe_connections = {
        { position = {0, 1}, type = "output" },
        { position = {0, -1}, type = "input" }
      }
    },
    energy_source = {
      type = "electric",
      usage_priority = "secondary-input"
    },
    energy_usage = "15kW",
    pumping_speed = 40,
    vehicle_impact_sound = data.raw["pump"]["pump"].vehicle_impact_sound,
    open_sound = data.raw["pump"]["pump"].open_sound,
    close_sound = data.raw["pump"]["pump"].close_sound,
    circuit_wire_connection_points = data.raw["pump"]["pump"].circuit_wire_connection_points,
    circuit_connector_sprites = data.raw["pump"]["pump"].circuit_connector_sprites,
    circuit_wire_max_distance = data.raw["pump"]["pump"].circuit_wire_max_distance,

    animations = {
      north = {
        filename = "__angelspetrochem__/graphics/entity/valve/valve-underflow.png",
        priority = "extra-high",
        frames = 1,
        width = 64,
        height = 64
      },
      east = {
        filename = "__angelspetrochem__/graphics/entity/valve/valve-underflow.png",
        priority = "extra-high",
        frames = 1,
        x = 64,
        width = 64,
        height = 64
      },
      south = {
        filename = "__angelspetrochem__/graphics/entity/valve/valve-underflow.png",
        priority = "extra-high",
        frames = 1,
        x = 128,
        width = 64,
        height = 64
      },
      west = {
        filename = "__angelspetrochem__/graphics/entity/valve/valve-underflow.png",
        priority = "extra-high",
        frames = 1,
        x = 192,
        width = 64,
        height = 64
      }
    }
  },

  {
    type = "pipe",
    name = "nullius-pipe-1",
    icons = data.raw.item["nullius-pipe-1"].icons,
    flags = {"placeable-neutral", "player-creation", "fast-replaceable-no-build-while-moving"},
    minable = {mining_time = 0.1, result = "nullius-pipe-1"},
    max_health = 100,
    corpse = "pipe-remnants",
    dying_explosion = "pipe-explosion",
    resistances = {
      { type = "impact", decrease = 100, percent = 90 },
      { type = "fire", decrease = 20, percent = 50 }
    },
    fast_replaceable_group = "pipe",
    next_upgrade = "nullius-pipe-2",
    collision_box = {{-0.29, -0.29}, {0.29, 0.29}},
    selection_box = {{-0.5, -0.5}, {0.5, 0.5}},
    damaged_trigger_effect = data.raw["pipe"]["pipe"].damaged_trigger_effect,
    fluid_box = {
      height = 0.8,
      base_area = 1.5,
      pipe_connections = {
        { position = {0, -1} },
        { position = {1, 0} },
        { position = {0, 1} },
        { position = {-1, 0} }
      }
    },
    vehicle_impact_sound = data.raw["pipe"]["pipe"].vehicle_impact_sound,
    pictures = data.raw["pipe"]["pipe"].pictures,
    working_sound = data.raw["pipe"]["pipe"].working_sound,
    horizontal_window_bounding_box = {{-0.25, -0.28125}, {0.25, 0.15625}},
    vertical_window_bounding_box = {{-0.28125, -0.5}, {0.03125, 0.125}}
  },

  {
    type = "pipe",
    name = "nullius-pipe-2",
    icons = data.raw.item["nullius-pipe-2"].icons,
    flags = {"placeable-neutral", "player-creation", "fast-replaceable-no-build-while-moving"},
    minable = {mining_time = 0.1, result = "nullius-pipe-2"},
    max_health = 150,
    corpse = "pipe-remnants",
    dying_explosion = "pipe-explosion",
    resistances = {
      { type = "impact", decrease = 100, percent = 90 },
      { type = "fire", decrease = 20, percent = 50 }
    },
    fast_replaceable_group = "pipe",
    next_upgrade = "nullius-pipe-3",
    collision_box = {{-0.29, -0.29}, {0.29, 0.29}},
    selection_box = {{-0.5, -0.5}, {0.5, 0.5}},
    damaged_trigger_effect = data.raw["pipe"]["pipe"].damaged_trigger_effect,
    fluid_box = {
      height = 1.2,
      base_area = 1,
      pipe_connections = {
        { position = {0, -1} },
        { position = {1, 0} },
        { position = {0, 1} },
        { position = {-1, 0} }
      }
    },
    vehicle_impact_sound = data.raw["pipe"]["pipe"].vehicle_impact_sound,
    working_sound = data.raw["pipe"]["pipe"].working_sound,
    horizontal_window_bounding_box = {{-0.25, -0.25}, {0.25, 0.15625}},
    vertical_window_bounding_box = {{-0.28125, -0.40625}, {0.03125, 0.125}},
    pictures = pipepics("__boblogistics__/graphics/entity/pipe/copper-tungsten/")
  },

  {
    type = "pipe",
    name = "nullius-pipe-3",
    icons = data.raw.item["nullius-pipe-3"].icons,
    flags = {"placeable-neutral", "player-creation", "fast-replaceable-no-build-while-moving"},
    minable = {mining_time = 0.1, result = "nullius-pipe-3"},
    max_health = 200,
    corpse = "pipe-remnants",
    dying_explosion = "pipe-explosion",
    resistances = {
      { type = "impact", decrease = 100, percent = 90 },
      { type = "fire", decrease = 20, percent = 50 }
    },
    fast_replaceable_group = "pipe",
    next_upgrade = "nullius-pipe-4",
    collision_box = {{-0.29, -0.29}, {0.29, 0.29}},
    selection_box = {{-0.5, -0.5}, {0.5, 0.5}},
    damaged_trigger_effect = data.raw["pipe"]["pipe"].damaged_trigger_effect,
    fluid_box = {
      height = 1.6,
      base_area = 0.75,
      pipe_connections = {
        { position = {0, -1} },
        { position = {1, 0} },
        { position = {0, 1} },
        { position = {-1, 0} }
      }
    },
    vehicle_impact_sound = data.raw["pipe"]["pipe"].vehicle_impact_sound,
    working_sound = data.raw["pipe"]["pipe"].working_sound,
    horizontal_window_bounding_box = {{-0.25, -0.25}, {0.25, 0.15625}},
    vertical_window_bounding_box = {{-0.28125, -0.40625}, {0.03125, 0.125}},
    pictures = data.raw["pipe"]["plastic-pipe"].pictures
  },

  {
    type = "pipe",
    name = "nullius-pipe-4",
    icons = data.raw.item["nullius-pipe-4"].icons,
    flags = {"placeable-neutral", "player-creation", "fast-replaceable-no-build-while-moving"},
    minable = {mining_time = 0.1, result = "nullius-pipe-4"},
    max_health = 250,
    corpse = "pipe-remnants",
    dying_explosion = "pipe-explosion",
    resistances = {
      { type = "impact", decrease = 100, percent = 90 },
      { type = "fire", decrease = 20, percent = 50 }
    },
    fast_replaceable_group = "pipe",
    collision_box = {{-0.29, -0.29}, {0.29, 0.29}},
    selection_box = {{-0.5, -0.5}, {0.5, 0.5}},
    damaged_trigger_effect = data.raw["pipe"]["pipe"].damaged_trigger_effect,
    fluid_box = {
      height = 2,
      base_area = 0.6,
      pipe_connections = {
        { position = {0, -1} },
        { position = {1, 0} },
        { position = {0, 1} },
        { position = {-1, 0} }
      }
    },
    vehicle_impact_sound = data.raw["pipe"]["pipe"].vehicle_impact_sound,
    working_sound = data.raw["pipe"]["pipe"].working_sound,
    horizontal_window_bounding_box = {{-0.25, -0.25}, {0.25, 0.15625}},
    vertical_window_bounding_box = {{-0.28125, -0.40625}, {0.03125, 0.125}},
    pictures = pipepics("__boblogistics__/graphics/entity/pipe/tungsten/")
  },

  {
    type = "pipe-to-ground",
    name = "nullius-underground-pipe-1",
    icons = data.raw.item["nullius-underground-pipe-1"].icons,
    flags = {"placeable-neutral", "player-creation"},
    minable = {mining_time = 0.1, result = "nullius-underground-pipe-1"},
    max_health = 150,
    corpse = "pipe-to-ground-remnants",
    dying_explosion = "pipe-to-ground-explosion",
    resistances = {
      { type = "impact", decrease = 100, percent = 90 },
      { type = "fire", decrease = 20, percent = 50 }
    },
    fast_replaceable_group = "pipe",
    next_upgrade = "nullius-underground-pipe-2",
    collision_box = {{-0.29, -0.25}, {0.25, 0.2}},
    selection_box = {{-0.5, -0.5}, {0.5, 0.5}},
    damaged_trigger_effect = data.raw["pipe-to-ground"]["pipe-to-ground"].damaged_trigger_effect,
    fluid_box = {
      height = 0.8,
      base_area = 1.875,
      pipe_covers = pipecoverspictures(),
      pipe_connections = {
        { position = {0, -1} },
        {
          position = {0, 1},
          max_underground_distance = 11
        }
      }
    },
    vehicle_impact_sound = data.raw["pipe-to-ground"]["pipe-to-ground"].vehicle_impact_sound,
    pictures = data.raw["pipe-to-ground"]["pipe-to-ground"].pictures
  },

  {
    type = "pipe-to-ground",
    name = "nullius-underground-pipe-2",
    icons = data.raw.item["nullius-underground-pipe-2"].icons,
    flags = {"placeable-neutral", "player-creation"},
    minable = {mining_time = 0.1, result = "nullius-underground-pipe-2"},
    max_health = 200,
    corpse = "pipe-to-ground-remnants",
    dying_explosion = "pipe-to-ground-explosion",
    resistances = {
      { type = "impact", decrease = 100, percent = 90 },
      { type = "fire", decrease = 20, percent = 50 }
    },
    fast_replaceable_group = "pipe",
    next_upgrade = "nullius-underground-pipe-3",
    collision_box = {{-0.29, -0.25}, {0.25, 0.2}},
    selection_box = {{-0.5, -0.5}, {0.5, 0.5}},
    damaged_trigger_effect = data.raw["pipe-to-ground"]["pipe-to-ground"].damaged_trigger_effect,
    fluid_box = {
      height = 1.2,
      base_area = 1,
      pipe_covers = pipecoverspictures(),
      pipe_connections = {
        { position = {0, -1} },
        {
          position = {0, 1},
          max_underground_distance = 15
        }
      }
    },
    vehicle_impact_sound = data.raw["pipe-to-ground"]["pipe-to-ground"].vehicle_impact_sound,
    pictures = undergroundpipepics("__boblogistics__/graphics/entity/pipe/copper-tungsten/")
  },

  {
    type = "pipe-to-ground",
    name = "nullius-underground-pipe-3",
    icons = data.raw.item["nullius-underground-pipe-3"].icons,
    flags = {"placeable-neutral", "player-creation"},
    minable = {mining_time = 0.1, result = "nullius-underground-pipe-3"},
    max_health = 250,
    corpse = "pipe-to-ground-remnants",
    dying_explosion = "pipe-to-ground-explosion",
    resistances = {
      { type = "impact", decrease = 100, percent = 90 },
      { type = "fire", decrease = 20, percent = 50 }
    },
    fast_replaceable_group = "pipe",
    next_upgrade = "nullius-underground-pipe-4",
    collision_box = {{-0.29, -0.25}, {0.25, 0.2}},
    selection_box = {{-0.5, -0.5}, {0.5, 0.5}},
    damaged_trigger_effect = data.raw["pipe-to-ground"]["pipe-to-ground"].damaged_trigger_effect,
    fluid_box = {
      height = 1.6,
      base_area = 0.75,
      pipe_covers = pipecoverspictures(),
      pipe_connections = {
        { position = {0, -1} },
        {
          position = {0, 1},
          max_underground_distance = 19
        }
      }
    },
    vehicle_impact_sound = data.raw["pipe-to-ground"]["pipe-to-ground"].vehicle_impact_sound,
    pictures = data.raw["pipe-to-ground"]["plastic-pipe-to-ground"].pictures
  },

  {
    type = "pipe-to-ground",
    name = "nullius-underground-pipe-4",
    icons = data.raw.item["nullius-underground-pipe-4"].icons,
    flags = {"placeable-neutral", "player-creation"},
    minable = {mining_time = 0.1, result = "nullius-underground-pipe-4"},
    max_health = 300,
    corpse = "pipe-to-ground-remnants",
    dying_explosion = "pipe-to-ground-explosion",
    resistances = {
      { type = "impact", decrease = 100, percent = 90 },
      { type = "fire", decrease = 20, percent = 50 }
    },
    fast_replaceable_group = "pipe",
    collision_box = {{-0.29, -0.25}, {0.25, 0.2}},
    selection_box = {{-0.5, -0.5}, {0.5, 0.5}},
    damaged_trigger_effect = data.raw["pipe-to-ground"]["pipe-to-ground"].damaged_trigger_effect,
    fluid_box = {
      height = 2,
      base_area = 0.6,
      pipe_covers = pipecoverspictures(),
      pipe_connections = {
        { position = {0, -1} },
        {
          position = {0, 1},
          max_underground_distance = 23
        }
      }
    },
    vehicle_impact_sound = data.raw["pipe-to-ground"]["pipe-to-ground"].vehicle_impact_sound,
    pictures = undergroundpipepics("__boblogistics__/graphics/entity/pipe/tungsten/")
  }
})