local BASEENTITY = "__base__/graphics/entity/"

data:extend({
  {
    type = "furnace",
    name = "nullius-chimney-1",
	  icons = data.raw.item["nullius-chimney-1"].icons,
    flags = {"placeable-neutral", "placeable-player", "player-creation"},
    minable = {mining_time = 0.6, result = "nullius-chimney-1"},
    collision_mask = collision_mask_util.get_default_mask("rocket-silo"),
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
    forced_symmetry = "horizontal",
    resistances = {
      { type = "impact", decrease = 100, percent = 90 },
      { type = "fire", percent = 75 }
    },
    fluid_boxes = {
      {
        production_type = "input",
        pipe_covers = pipecoverspictures(),
        volume = 500,
        pipe_connections = {{ flow_direction ="input-output", position = {0.5, 0.5}, direction = defines.direction.south }}
      }
    },
    energy_source = {type = "void"},
    energy_usage = "1kW",
    
    graphics_set = {
  	  animation = {
        north = {
          layers = {
            {
              filename = "__angelspetrochemgraphics__/graphics/entity/flare-stack/flare-stack.png",
              priority = "extra-high",
              frame_count = 1,
              width = 142,
              height = 429,
              shift = {0.06, -1.62},
              scale = 0.5 * 0.85
            },
            {
              draw_as_shadow = true,
              filename = "__angelspetrochemgraphics__/graphics/entity/flare-stack/flare-stack-shadow.png",
              priority = "extra-high",
              width = 382,
              height = 135,
              frame_count = 1,
              shift = {1.68, 0.37},
              scale = 0.5 * 0.85
            }
          }
        },
        east = {
          layers = {
            {
              filename = "__angelspetrochemgraphics__/graphics/entity/flare-stack/flare-stack.png",
              priority = "extra-high",
              width = 142,
              height = 429,
              x = 142,
              frame_count = 1,
              shift = {-0.1, -1.67},
              scale = 0.5 * 0.85
            },
            {
              draw_as_shadow = true,
              filename = "__angelspetrochemgraphics__/graphics/entity/flare-stack/flare-stack-shadow.png",
              priority = "extra-high",
              width = 382,
              height = 135,
              x = 382,
              frame_count = 1,
              shift = {1.52, 0.32},
              scale = 0.5 * 0.85
            }
          }
        },
        south = {
          layers = {
            {
              filename = "__angelspetrochemgraphics__/graphics/entity/flare-stack/flare-stack.png",
              priority = "extra-high",
              width = 142,
              height = 429,
              x = 284,
              frame_count = 1,
              shift = {-0.06, -1.83},
              scale = 0.5 * 0.85
            },
            {
              draw_as_shadow = true,
              filename = "__angelspetrochemgraphics__/graphics/entity/flare-stack/flare-stack-shadow.png",
              priority = "extra-high",
              width = 382,
              height = 135,
              x = 764,
              frame_count = 1,
              shift = {1.56, 0.16},
              scale = 0.5 * 0.85
            }
          }
        },
        west = {
          layers = {
            {
              filename = "__angelspetrochemgraphics__/graphics/entity/flare-stack/flare-stack.png",
              priority = "extra-high",
              width = 142,
              height = 429,
              x = 426,
              frame_count = 1,
              shift = {0.1, -1.78},
              scale = 0.5 * 0.85
            },
            {
              draw_as_shadow = true,
              filename = "__angelspetrochemgraphics__/graphics/entity/flare-stack/flare-stack-shadow.png",
              priority = "extra-high",
              width = 382,
              height = 135,
              x = 1146,
              frame_count = 1,
              shift = {1.72, 0.21},
              scale = 0.5 * 0.85
            }
          }
        }
      },
  
      working_visualisations = {
        {
          apply_recipe_tint = "primary",
          constant_speed = true,
          render_layer = "wires-above",
          north_position = {-0.09, -5.45},
          east_position = {-0.29, -5.59},
          south_position = {-0.1, -5.8},
          west_position = {0.09, -5.61},
          animation = {
              filename = BASEENTITY .. "chemical-plant/chemical-plant-smoke-outer.png",
              frame_count = 47,
              line_length = 16,
              width = 90,
              height = 188,
              scale = 0.6,
              animation_speed = 0.25
          },
        }
      }
    },
    graphics_set_flipped = {
  	  animation = {
        north = {
          layers = {
            {
              filename = "__nullius__/graphics/entity/chimney/flare-stack-flipped.png",
              priority = "extra-high",
              frame_count = 1,
              width = 142,
              height = 429,
              shift = {0.06, -1.62},
              scale = 0.5 * 0.85
            },
            {
              draw_as_shadow = true,
              filename = "__angelspetrochemgraphics__/graphics/entity/flare-stack/flare-stack-shadow.png",
              priority = "extra-high",
              width = 382,
              height = 135,
              frame_count = 1,
              shift = {1.68, 0.37},
              scale = 0.5 * 0.85
            }
          }
        },
        east = {
          layers = {
            {
              filename = "__nullius__/graphics/entity/chimney/flare-stack-flipped.png",
              priority = "extra-high",
              width = 142,
              height = 429,
              x = 142,
              frame_count = 1,
              shift = {-0.1, -1.67},
              scale = 0.5 * 0.85
            },
            {
              draw_as_shadow = true,
              filename = "__angelspetrochemgraphics__/graphics/entity/flare-stack/flare-stack-shadow.png",
              priority = "extra-high",
              width = 382,
              height = 135,
              x = 382,
              frame_count = 1,
              shift = {1.52, 0.32},
              scale = 0.5 * 0.85
            }
          }
        },
        south = {
          layers = {
            {
              filename = "__nullius__/graphics/entity/chimney/flare-stack-flipped.png",
              priority = "extra-high",
              width = 142,
              height = 429,
              x = 284,
              frame_count = 1,
              shift = {-0.06, -1.83},
              scale = 0.5 * 0.85
            },
            {
              draw_as_shadow = true,
              filename = "__angelspetrochemgraphics__/graphics/entity/flare-stack/flare-stack-shadow.png",
              priority = "extra-high",
              width = 382,
              height = 135,
              x = 764,
              frame_count = 1,
              shift = {1.56, 0.16},
              scale = 0.5 * 0.85
            }
          }
        },
        west = {
          layers = {
            {
              filename = "__nullius__/graphics/entity/chimney/flare-stack-flipped.png",
              priority = "extra-high",
              width = 142,
              height = 429,
              x = 426,
              frame_count = 1,
              shift = {0.1, -1.78},
              scale = 0.5 * 0.85
            },
            {
              draw_as_shadow = true,
              filename = "__angelspetrochemgraphics__/graphics/entity/flare-stack/flare-stack-shadow.png",
              priority = "extra-high",
              width = 382,
              height = 135,
              x = 1146,
              frame_count = 1,
              shift = {1.72, 0.21},
              scale = 0.5 * 0.85
            }
          }
        }
      },
  
      working_visualisations = {
        {
          apply_recipe_tint = "primary",
          constant_speed = true,
          render_layer = "wires",
          north_position = {-0.09, -5.45},
          east_position = {-0.29, -5.59},
          south_position = {-0.1, -5.8},
          west_position = {0.09, -5.61},
          animation = {
              filename = BASEENTITY .. "chemical-plant/chemical-plant-smoke-outer.png",
              frame_count = 47,
              line_length = 16,
              width = 90,
              height = 188,
              scale = 0.6,
              animation_speed = 0.25
          },
        }
      }
    },
    impact_category = "metal",
    repair_sound = { filename = "__base__/sound/manual-repair-simple.ogg" },
    open_sound = { filename = "__base__/sound/machine-open.ogg", volume = 0.85 },
    close_sound = { filename = "__base__/sound/machine-close.ogg", volume = 0.75 },
  },
  {
    type = "furnace",
    name = "nullius-chimney-2",
	  icons = data.raw.item["nullius-chimney-2"].icons,
    flags = {"placeable-neutral", "placeable-player", "player-creation"},
    minable = {mining_time = 0.9, result = "nullius-chimney-2"},
    collision_mask = collision_mask_util.get_default_mask("rocket-silo"),
    max_health = 200,
    fast_replaceable_group = "nullius-chimney",
    corpse = "small-remnants",
    collision_box = {{-0.8, -0.8}, {0.8, 0.8}},
    selection_box = {{-1, -1}, {1, 1}},
    crafting_categories = {"nullius-gas-void"},
    result_inventory_size = 1,
    crafting_speed = 5,
    source_inventory_size = 0,
    forced_symmetry = "horizontal",
    resistances = {
      { type = "impact", decrease = 100, percent = 90 },
      { type = "fire", percent = 75 }
    },
    fluid_boxes = {
      {
        production_type = "input",
        pipe_covers = pipecoverspictures(),
        volume = 500,
        pipe_connections = {{ flow_direction ="input-output", position = {0.5, 0.5}, direction = defines.direction.south }}
      },
    },
    energy_source = {type = "void"},
    energy_usage = "1kW",
    graphics_set = {
      animation = {
        north = {
          layers = {
            {
              filename = "__angelspetrochemgraphics__/graphics/entity/flare-stack/flare-stack.png",
              priority = "extra-high",
              frame_count = 1,
              width = 142,
              height = 429,
              shift = util.by_pixel(0, -65),
              scale = 0.5,
            },
            {
              draw_as_shadow = true,
              filename = "__angelspetrochemgraphics__/graphics/entity/flare-stack/flare-stack-shadow.png",
              priority = "extra-high",
              width = 382,
              height = 135,
              frame_count = 1,
              shift = util.by_pixel(61, 10),
              scale = 0.5,
            },
          },
        },
        east = {
          layers = {
            {
              filename = "__angelspetrochemgraphics__/graphics/entity/flare-stack/flare-stack.png",
              priority = "extra-high",
              width = 142,
              height = 429,
              x = 142,
              frame_count = 1,
              shift = util.by_pixel(0, -65),
              scale = 0.5,
            },
            {
              draw_as_shadow = true,
              filename = "__angelspetrochemgraphics__/graphics/entity/flare-stack/flare-stack-shadow.png",
              priority = "extra-high",
              width = 382,
              height = 135,
              x = 382,
              frame_count = 1,
              shift = util.by_pixel(61, 10),
              scale = 0.5,
            },
          },
        },
        south = {
          layers = {
            {
              filename = "__angelspetrochemgraphics__/graphics/entity/flare-stack/flare-stack.png",
              priority = "extra-high",
              width = 142,
              height = 429,
              x = 284,
              frame_count = 1,
              shift = util.by_pixel(0, -65),
              scale = 0.5,
            },
            {
              draw_as_shadow = true,
              filename = "__angelspetrochemgraphics__/graphics/entity/flare-stack/flare-stack-shadow.png",
              priority = "extra-high",
              width = 382,
              height = 135,
              x = 764,
              frame_count = 1,
              shift = util.by_pixel(61, 10),
              scale = 0.5,
            },
          },
        },
        west = {
          layers = {
            {
              filename = "__angelspetrochemgraphics__/graphics/entity/flare-stack/flare-stack.png",
              priority = "extra-high",
              width = 142,
              height = 429,
              x = 426,
              frame_count = 1,
              shift = util.by_pixel(0, -65),
              scale = 0.5,
            },
            {
              draw_as_shadow = true,
              filename = "__angelspetrochemgraphics__/graphics/entity/flare-stack/flare-stack-shadow.png",
              priority = "extra-high",
              width = 382,
              height = 135,
              x = 1146,
              frame_count = 1,
              shift = util.by_pixel(61, 10),
              scale = 0.5,
            },
          },
        },
      },
      working_visualisations = {
        {
          apply_recipe_tint = "primary",
          constant_speed = true,
          render_layer = "wires-above",
          north_position = {-0.22, -6.82},
          east_position = {-0.22, -6.95},
          south_position = {-0.03, -6.95},
          west_position = {-0.03, -6.82},
          animation = {
              filename = BASEENTITY .. "chemical-plant/chemical-plant-smoke-outer.png",
              frame_count = 47,
              line_length = 16,
              width = 90,
              height = 188,
              scale = 0.8
          }
        },
        {
          render_layer = "elevated-higher-object",
          always_draw = true,
          north_animation = {
            layers = {
              {
                filename = "__nullius__/graphics/entity/chimney/flare-stack-chimney.png",
                priority = "extra-high",
                frame_count = 1,
                width = 142,
                height = 429,
                shift = util.by_pixel(0, -65),
                scale = 0.5,
              }
            },
          },
          east_animation = {
            layers = {
              {
                filename = "__nullius__/graphics/entity/chimney/flare-stack-chimney.png",
                priority = "extra-high",
                width = 142,
                height = 429,
                x = 142,
                frame_count = 1,
                shift = util.by_pixel(0, -65),
                scale = 0.5,
              }
            },
          },
          south_animation = {
            layers = {
              {
                filename = "__nullius__/graphics/entity/chimney/flare-stack-chimney.png",
                priority = "extra-high",
                width = 142,
                height = 429,
                x = 284,
                frame_count = 1,
                shift = util.by_pixel(0, -65),
                scale = 0.5,
              }
            },
          },
          west_animation = {
            layers = {
              {
                filename = "__nullius__/graphics/entity/chimney/flare-stack-chimney.png",
                priority = "extra-high",
                width = 142,
                height = 429,
                x = 426,
                frame_count = 1,
                shift = util.by_pixel(0, -65),
                scale = 0.5,
              }
            },
          }
        }
      }
    },
    graphics_set_flipped = {
      animation = {
        north = {
          layers = {
            {
              filename = "__nullius__/graphics/entity/chimney/flare-stack-flipped.png",
              priority = "extra-high",
              frame_count = 1,
              width = 142,
              height = 429,
              shift = util.by_pixel(0, -65),
              scale = 0.5,
            },
            {
              draw_as_shadow = true,
              filename = "__angelspetrochemgraphics__/graphics/entity/flare-stack/flare-stack-shadow.png",
              priority = "extra-high",
              width = 382,
              height = 135,
              frame_count = 1,
              shift = util.by_pixel(61, 10),
              scale = 0.5,
            },
          },
        },
        east = {
          layers = {
            {
              filename = "__nullius__/graphics/entity/chimney/flare-stack-flipped.png",
              priority = "extra-high",
              width = 142,
              height = 429,
              x = 142,
              frame_count = 1,
              shift = util.by_pixel(0, -65),
              scale = 0.5,
            },
            {
              draw_as_shadow = true,
              filename = "__angelspetrochemgraphics__/graphics/entity/flare-stack/flare-stack-shadow.png",
              priority = "extra-high",
              width = 382,
              height = 135,
              x = 382,
              frame_count = 1,
              shift = util.by_pixel(61, 10),
              scale = 0.5,
            },
          },
        },
        south = {
          layers = {
            {
              filename = "__nullius__/graphics/entity/chimney/flare-stack-flipped.png",
              priority = "extra-high",
              width = 142,
              height = 429,
              x = 284,
              frame_count = 1,
              shift = util.by_pixel(0, -65),
              scale = 0.5,
            },
            {
              draw_as_shadow = true,
              filename = "__angelspetrochemgraphics__/graphics/entity/flare-stack/flare-stack-shadow.png",
              priority = "extra-high",
              width = 382,
              height = 135,
              x = 764,
              frame_count = 1,
              shift = util.by_pixel(61, 10),
              scale = 0.5,
            },
          },
        },
        west = {
          layers = {
            {
              filename = "__nullius__/graphics/entity/chimney/flare-stack-flipped.png",
              priority = "extra-high",
              width = 142,
              height = 429,
              x = 426,
              frame_count = 1,
              shift = util.by_pixel(0, -65),
              scale = 0.5,
            },
            {
              draw_as_shadow = true,
              filename = "__angelspetrochemgraphics__/graphics/entity/flare-stack/flare-stack-shadow.png",
              priority = "extra-high",
              width = 382,
              height = 135,
              x = 1146,
              frame_count = 1,
              shift = util.by_pixel(61, 10),
              scale = 0.5,
            },
          },
        },
      },
      working_visualisations = {
        {
          apply_recipe_tint = "primary",
          constant_speed = true,
          render_layer = "wires-above",
          north_position = {-0.22, -6.82},
          east_position = {-0.22, -6.95},
          south_position = {-0.03, -6.95},
          west_position = {-0.03, -6.82},
          animation = {
              filename = BASEENTITY .. "chemical-plant/chemical-plant-smoke-outer.png",
              frame_count = 47,
              line_length = 16,
              width = 90,
              height = 188,
              scale = 0.8
          }
        },
        {
          render_layer = "elevated-higher-object",
          always_draw = true,
          north_animation = {
            layers = {
              {
                filename = "__nullius__/graphics/entity/chimney/flare-stack-flipped-chimney.png",
                priority = "extra-high",
                frame_count = 1,
                width = 142,
                height = 429,
                shift = util.by_pixel(0, -65),
                scale = 0.5,
              },
            }
          },
          east_animation = {
            layers = {
              {
                filename = "__nullius__/graphics/entity/chimney/flare-stack-flipped-chimney.png",
                priority = "extra-high",
                width = 142,
                height = 429,
                x = 142,
                frame_count = 1,
                shift = util.by_pixel(0, -65),
                scale = 0.5,
              }
            }
          },
          south_animation = {
            layers = {
              {
                filename = "__nullius__/graphics/entity/chimney/flare-stack-flipped-chimney.png",
                priority = "extra-high",
                width = 142,
                height = 429,
                x = 284,
                frame_count = 1,
                shift = util.by_pixel(0, -65),
                scale = 0.5,
              }
            }
          },
          west_animation = {
            layers = {
              {
                filename = "__nullius__/graphics/entity/chimney/flare-stack-flipped-chimney.png",
                priority = "extra-high",
                width = 142,
                height = 429,
                x = 426,
                frame_count = 1,
                shift = util.by_pixel(0, -65),
                scale = 0.5,
              }
            }
          }
        }
      }
    },
    impact_category = "metal",
    repair_sound = { filename = "__base__/sound/manual-repair-simple.ogg" },
    open_sound = { filename = "__base__/sound/machine-open.ogg", volume = 0.85 },
    close_sound = { filename = "__base__/sound/machine-close.ogg", volume = 0.75 },
  }
})

local nc3 = util.table.deepcopy(data.raw.furnace["nullius-chimney-2"])
nc3.name = "nullius-chimney-3"
nc3.icons = data.raw.item["nullius-chimney-3"].icons
nc3.minable = {mining_time = 1.5, result = "nullius-chimney-3"}
nc3.max_health = 500
nc3.corpse = "medium-remnants"
nc3.collision_box = {{-1.25, -1.25}, {1.25, 1.25}}
nc3.selection_box = {{-1.5, -1.5}, {1.5, 1.5}}
nc3.crafting_speed = 20
nc3.fluid_boxes = {{
  production_type = "input",
  pipe_covers = pipecoverspictures(),
  volume = 500,
  pipe_connections = {{ flow_direction ="input-output", position = {0, 1}, direction = defines.direction.south }}
}}
nc3.energy_source = {
  type = "electric",
  usage_priority = "secondary-input",
  emissions_per_minute = {pollution = 0.1},
  drain = "5kW"
}
nc3.energy_usage = "295kW"
nc3.module_slots = 1
nc3.allowed_effects = {"speed", "consumption", "pollution"}
nc3.graphics_set.animation = scale_image(nc3.graphics_set.animation.south, 1.5)
nc3.graphics_set.working_visualisations[1] = scale_image(nc3.graphics_set.working_visualisations[1], 1.5)
nc3.graphics_set.working_visualisations[1].north_position = nc3.graphics_set.working_visualisations[1].south_position
nc3.graphics_set.working_visualisations[1].east_position =  nc3.graphics_set.working_visualisations[1].south_position
nc3.graphics_set.working_visualisations[1].west_position =  nc3.graphics_set.working_visualisations[1].south_position
nc3.graphics_set.working_visualisations[2] = {
  animation = scale_image(nc3.graphics_set.working_visualisations[2].south_animation, 1.5),
  render_layer = "elevated-higher-object",
  always_draw = true
}
nc3.graphics_set_flipped = nil
--nc3.forced_symmetry = nil

data:extend({
  nc3,
  {
    type = "furnace",
    name = "nullius-outfall-1",
	  icons = data.raw.item["nullius-outfall-1"].icons,
    collision_mask = {layers = {object = true, ground_tile = true}},
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
        volume = 500,
        pipe_connections = {{ flow_direction ="input-output", position = {0, 0}, direction = defines.direction.south }}
      },
    },
    energy_source = {type = "void"},
    energy_usage = "1kW",
    graphics_set = {
      animation = {
        north = {
          filename = "__angelsrefininggraphics__/graphics/entity/seafloor-pump/seafloor-pump.png",
          priority = "high",
          shift = {-0.02, -0.8},
          width = 160,
          height = 160,
          frame_count = 1,
          scale = 0.85
        },
        east = {
          filename = "__angelsrefininggraphics__/graphics/entity/seafloor-pump/seafloor-pump.png",
          priority = "high",
          shift = {0.8, -0.05},
          x = 160,
          width = 160,
          height = 160,
          frame_count = 1,
          scale = 0.85
        },
        south = {
          filename = "__angelsrefininggraphics__/graphics/entity/seafloor-pump/seafloor-pump.png",
          priority = "high",
          shift = {0, 0.85},
          x = 320,
          width = 160,
          height = 160,
          frame_count = 1,
          scale = 0.85
        },
        west = {
          filename = "__angelsrefininggraphics__/graphics/entity/seafloor-pump/seafloor-pump.png",
          priority = "high",
          shift = {-0.75, 0},
          x = 480,
          width = 160,
          height = 160,
          frame_count = 1,
          scale = 0.85
        }
      }
    },
    placeable_position_visualization = {
      filename = "__core__/graphics/cursor-boxes-32x32.png",
      priority = "extra-high-no-scale",
      width = 64,
      height = 64,
      scale = 0.5,
      x = 3 * 64,
    },
    impact_category = "metal",
    repair_sound = { filename = "__base__/sound/manual-repair-simple.ogg" },
    open_sound = { filename = "__base__/sound/machine-open.ogg", volume = 0.85 },
    close_sound = { filename = "__base__/sound/machine-close.ogg", volume = 0.75 },
  },
  {
    type = "furnace",
    name = "nullius-outfall-2",
	  icons = data.raw.item["nullius-outfall-2"].icons,
    collision_mask = {layers = {object = true, ground_tile = true}},
    flags = {"placeable-neutral", "placeable-player", "player-creation"},
    minable = {mining_time = 0.8, result = "nullius-outfall-2"},
    max_health = 300,
    fast_replaceable_group = "nullius-outfall",
	  next_upgrade = "nullius-outfall-3",
    corpse = "small-remnants",
    collision_box = {{-1.4, -2.45}, {1.4, 0.3}},
    selection_box = {{-1.6, -2.49}, {1.6, 0.49}},
    crafting_categories = {"nullius-liquid-void"},
    result_inventory_size = 1,
    crafting_speed = 4,
    source_inventory_size = 0,
    resistances = {
      { type = "impact", decrease = 100, percent = 90 },
      { type = "fire", percent = 75 }
    },
    fluid_boxes = {
      {
        production_type = "input",
        pipe_covers = pipecoverspictures(),
        volume = 500,
        pipe_connections = {{ flow_direction ="input-output", position = {0, 0}, direction = defines.direction.south }}
      },
    },
    energy_source = {type = "void"},
    energy_usage = "1kW",
    graphics_set = {
      animation = {
        north = {
          filename = "__angelsrefininggraphics__/graphics/entity/seafloor-pump/seafloor-pump.png",
          priority = "high",
          shift = {0, -1},
          width = 160,
          height = 160,
          frame_count = 1
        },
        east = {
          filename = "__angelsrefininggraphics__/graphics/entity/seafloor-pump/seafloor-pump.png",
          priority = "high",
          shift = {1, 0},
          x = 160,
          width = 160,
          height = 160,
          frame_count = 1
        },
        south = {
          filename = "__angelsrefininggraphics__/graphics/entity/seafloor-pump/seafloor-pump.png",
          priority = "high",
          shift = {0, 1},
          x = 320,
          width = 160,
          height = 160,
          frame_count = 1
        },
        west = {
          filename = "__angelsrefininggraphics__/graphics/entity/seafloor-pump/seafloor-pump.png",
          priority = "high",
          shift = {-1, 0},
          x = 480,
          width = 160,
          height = 160,
          frame_count = 1
        }
      }
    },
    placeable_position_visualization = {
      filename = "__core__/graphics/cursor-boxes-32x32.png",
      priority = "extra-high-no-scale",
      width = 64,
      height = 64,
      scale = 0.5,
      x = 3 * 64,
    },
    impact_category = "metal",
    repair_sound = { filename = "__base__/sound/manual-repair-simple.ogg" },
    open_sound = { filename = "__base__/sound/machine-open.ogg", volume = 0.85 },
    close_sound = { filename = "__base__/sound/machine-close.ogg", volume = 0.75 },
  }
})


local no3 = util.table.deepcopy(data.raw.furnace["nullius-outfall-2"])
no3.name = "nullius-outfall-3"
no3.icons = data.raw.item["nullius-outfall-3"].icons
no3.minable = {mining_time = 1, result = "nullius-outfall-3"}
no3.max_health = 400
no3.crafting_speed = 10
no3.energy_source = {
  type = "electric",
  usage_priority = "secondary-input",
  emissions_per_minute = {pollution = 0.1},
  drain = "5kW"
}
no3.energy_usage = "195kW"
no3.module_slots = 1
no3.allowed_effects = {"speed", "consumption", "pollution"}
no3.next_upgrade = nil
no3.graphics_set.animation.north.filename = "__angelsrefininggraphics__/graphics/entity/sea-pump/sea-pump.png"
no3.graphics_set.animation.east.filename =  no3.graphics_set.animation.north.filename
no3.graphics_set.animation.south.filename = no3.graphics_set.animation.north.filename
no3.graphics_set.animation.west.filename =  no3.graphics_set.animation.north.filename

data:extend({ no3 })

