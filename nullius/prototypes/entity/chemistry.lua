local ICONPATH = "__nullius__/graphics/icons/"
local ENTITYPATH = "__nullius__/graphics/entity/"
local BASEENTITY = "__base__/graphics/entity/"


local function hydro_animation(newtint)
  local baselayer = scale_image(
      {
            filename = "__angelsrefininggraphics__/graphics/entity/hydro-plant/hydro-plant-base.png",
            priority = "extra-high",
            width = 459,
            height = 491,
            shift = util.by_pixel(0, 0),
            scale = 0.5,
      }, 0.725)
  baselayer.tint = newtint

  local vertical = { layers = {
    {
	  filename = "__angelsrefininggraphics__/graphics/entity/hydro-plant/hydro-plant-pipe-connections.png",
      priority = "extra-high",
      width = 200,
      height = 100,
      x = 920,
      y = 0,
      frame_count = 1,
      scale = 0.356,
      shift = {-0.98, -2.12}
    },
    {  
      filename = "__angelsrefininggraphics__/graphics/entity/hydro-plant/hydro-plant-pipe-connections.png",
      priority = "extra-high",
      width = 200,
      height = 100,
      x = 1170,
      y = 0,
      frame_count = 1,
      scale = 0.356,
      shift = {0.95, -2.12}
    },
	baselayer
  }}

  return {
    north = vertical,
	east = baselayer,
	south = vertical,
	west = baselayer
  }
end

-- Honestly ? Stolen straight from angels, sue me !!
circuit_connector_definitions["nullius-hydro-plant"] = circuit_connector_definitions.create_vector(universal_connector_template, {
  { variation = 25, main_offset = util.by_pixel( 50.625,  42), shadow_offset = util.by_pixel( 50.625,  42), show_shadow = true },
  { variation = 25, main_offset = util.by_pixel( 50.625,  42), shadow_offset = util.by_pixel( 50.625,  42), show_shadow = true },
  { variation = 25, main_offset = util.by_pixel( 50.625,  42), shadow_offset = util.by_pixel( 50.625,  42), show_shadow = true },
  { variation = 25, main_offset = util.by_pixel( 50.625,  42), shadow_offset = util.by_pixel( 50.625,  42), show_shadow = true },
})

data:extend({
  {
    type = "assembling-machine",
    name = "nullius-hydro-plant-1",
    icons = data.raw.item["nullius-hydro-plant-1"].icons,
    localised_description = {"entity-description.nullius-hydro-plant"},
    flags = {"placeable-neutral","player-creation"},
    minable = {mining_time = 1, result = "nullius-hydro-plant-1"},
    max_health = 250,
    corpse = "big-remnants",
    dying_explosion = "medium-explosion",
    collision_box = {{-2.2, -2.2}, {2.2, 2.2}},
    selection_box = {{-2.5, -2.5}, {2.5, 2.5}},
    crafting_categories = {"nullius-water-treatment"},
    crafting_speed = 1,
    energy_source = {type = "electric", usage_priority = "secondary-input", emissions_per_minute = {pollution = 0.01}, drain="10kW"},
    energy_usage = "240kW",
    ingredient_count = 3,
    resistances = {
      { type = "impact", decrease = 100, percent = 90 },
      { type = "fire", percent = 75 }
    },
    fast_replaceable_group = "hydro-plant",
    next_upgrade = "nullius-hydro-plant-2",
    module_slots = 1,
    allowed_effects = {"speed", "productivity", "consumption", "pollution"},
    circuit_connector = circuit_connector_definitions["nullius-hydro-plant"],
    circuit_wire_max_distance = default_circuit_wire_max_distance,
	  graphics_set = {
	    animation = hydro_animation({0.77, 0.77, 0.68}),
	    working_visualisations = scale_image({
        {
          always_draw = true,
          north_position = util.by_pixel(-52.5, -43),
          east_position = util.by_pixel(-52.5, -43),
          south_position = util.by_pixel(-52.5, -43),
          west_position = util.by_pixel(-52.5, -43),
          animation = {
            layers = {
              {
                filename = "__angelsrefininggraphics__/graphics/entity/hydro-plant/hydro-plant-fan.png",
                priority = "extra-high",
                width = 107,
                height = 77,
                frame_count = 24,
                line_length = 6,
                animation_speed = 0.5,
                shift = util.by_pixel(0, -47.75),
                scale = 0.5,
              },
              {
                filename = "__angelsrefininggraphics__/graphics/entity/hydro-plant/hydro-plant-fan.png",
                priority = "extra-high",
                width = 107,
                height = 77,
                frame_count = 24,
                line_length = 6,
                animation_speed = 0.5,
                shift = util.by_pixel(0, 0.125),
                scale = 0.5,
              },
              {
                filename = "__angelsrefininggraphics__/graphics/entity/hydro-plant/hydro-plant-fan.png",
                priority = "extra-high",
                width = 107,
                height = 77,
                frame_count = 24,
                line_length = 6,
                animation_speed = 0.5,
                shift = util.by_pixel(0, 48),
                scale = 0.5,
              },
            },
          },
        },
        {
          always_draw = true,
          north_position = util.by_pixel(14.5, -21.5),
          east_position = util.by_pixel(14.5, -21.5),
          south_position = util.by_pixel(14.5, -21.5),
          west_position = util.by_pixel(14.5, -21.5),
          animation = {
            layers = {
              {
                filename = "__angelsrefininggraphics__/graphics/entity/hydro-plant/hydro-plant-dynamo.png",
                priority = "extra-high",
                width = 40,
                height = 36,
                frame_count = 24,
                line_length = 6,
                animation_speed = 0.5,
                shift = util.by_pixel(0, -47.75),
                scale = 0.5,
              },
              {
                filename = "__angelsrefininggraphics__/graphics/entity/hydro-plant/hydro-plant-dynamo.png",
                priority = "extra-high",
                width = 40,
                height = 36,
                frame_count = 24,
                line_length = 6,
                animation_speed = 0.5,
                shift = util.by_pixel(0, 0.125),
                scale = 0.5,
              },
              {
                filename = "__angelsrefininggraphics__/graphics/entity/hydro-plant/hydro-plant-dynamo.png",
                priority = "extra-high",
                width = 40,
                height = 36,
                frame_count = 24,
                line_length = 6,
                animation_speed = 0.5,
                shift = util.by_pixel(0, 48),
                scale = 0.5,
              },
            },
          },
        },
        {
          always_draw = true,
          north_animation = {
            draw_as_shadow = true,
            filename = "__angelsrefininggraphics__/graphics/entity/hydro-plant/hydro-plant-shadow.png",
            priority = "extra-high",
            width = 538,
            height = 454,
            shift = util.by_pixel(20, 10.5),
            x = 0,
            y = 0,
            frame_count = 1,
            scale = 0.5,
          },
          east_animation = {
            draw_as_shadow = true,
            filename = "__angelsrefininggraphics__/graphics/entity/hydro-plant/hydro-plant-shadow.png",
            priority = "extra-high",
            width = 538,
            height = 454,
            x = 538,
            y = 0,
            frame_count = 1,
            shift = util.by_pixel(20, 10.5),
            scale = 0.5,
          },
          south_animation = {
            draw_as_shadow = true,
            filename = "__angelsrefininggraphics__/graphics/entity/hydro-plant/hydro-plant-shadow.png",
            priority = "extra-high",
            width = 538,
            x = 1076,
            y = 0,
            height = 454,
            frame_count = 1,
            shift = util.by_pixel(20, 10.5),
            scale = 0.5,
          },
          west_animation = {
            draw_as_shadow = true,
            filename = "__angelsrefininggraphics__/graphics/entity/hydro-plant/hydro-plant-shadow.png",
            priority = "extra-high",
            width = 538,
            height = 454,
            x = 1614,
            y = 0,
            frame_count = 1,
            shift = util.by_pixel(20, 10.5),
            scale = 0.5,
          },
        },
        {
          always_draw = true,
          north_animation = {
            filename = "__angelsrefininggraphics__/graphics/entity/hydro-plant/hydro-plant-pipe-connections.png",
            priority = "extra-high",
            width = 459,
            height = 491,
            x = 0,
            y = 0,
            frame_count = 1,
            scale = 0.5,
          },
          east_animation = {
            filename = "__angelsrefininggraphics__/graphics/entity/hydro-plant/hydro-plant-pipe-connections.png",
            priority = "extra-high",
            frame_count = 1,
            width = 459,
            height = 491,
            x = 459,
            y = 0,
            scale = 0.5,
          },
          south_animation = {
            filename = "__angelsrefininggraphics__/graphics/entity/hydro-plant/hydro-plant-pipe-connections.png",
            priority = "extra-high",
            width = 459,
            height = 491,
            x = 918,
            y = 0,
            frame_count = 1,
            scale = 0.5,
          },
          west_animation = {
            filename = "__angelsrefininggraphics__/graphics/entity/hydro-plant/hydro-plant-pipe-connections.png",
            priority = "extra-high",
            width = 459,
            height = 491,
            x = 1377,
            y = 0,
            frame_count = 1,
            scale = 0.5,
          },
        },
        {
          always_draw = true,
          north_animation = {
            draw_as_shadow = true,
            filename = "__angelsrefininggraphics__/graphics/entity/hydro-plant/vertical-pipe-shadow-patch.png",
            priority = "high",
            width = 128,
            height = 128,
            repeat_count = 36,
            scale = 0.5,
            shift = { -2, -3 },
          },
          south_animation = {
            layers = {
              {
                draw_as_shadow = true,
                filename = "__angelsrefininggraphics__/graphics/entity/hydro-plant/vertical-pipe-shadow-patch.png",
                priority = "high",
                width = 128,
                height = 128,
                repeat_count = 36,
                scale = 0.5,
                shift = { -2, -3 },
              },
              {
                draw_as_shadow = true,
                filename = "__angelsrefininggraphics__/graphics/entity/hydro-plant/vertical-pipe-shadow-patch.png",
                priority = "high",
                width = 128,
                height = 128,
                repeat_count = 36,
                scale = 0.5,
                shift = { 2, -3 },
              },
            },
          }
        }
      }, 0.725),
	  },
    impact_category = "metal",
    working_sound = {
      sound = { filename = "__angelsrefininggraphics__/sound/ore-leaching-plant.ogg", volume = 0.65 },
      idle_sound = { filename = "__base__/sound/idle1.ogg", volume = 0.6 },
    },
    open_sound = {filename = "__base__/sound/open-close/fluid-open.ogg", volume = 0.55},
    close_sound = {filename = "__base__/sound/open-close/fluid-close.ogg", volume = 0.54},
    fluid_boxes = {
      {
        production_type = "input",
        pipe_picture = hydropipepictures(),
        pipe_covers = pipecoverspictures(),
        volume = 500,
        pipe_connections = {{ flow_direction ="input", position = {-1, -2}, direction = defines.direction.north }}
      },
      {
        production_type = "input",
        pipe_picture = hydropipepictures(),
        pipe_covers = pipecoverspictures(),
        volume = 500,
        pipe_connections = {{ flow_direction ="input", position = {1, -2}, direction = defines.direction.north }}
      },
      {
        production_type = "output",
        pipe_picture = hydropipepictures2(),
        pipe_covers = pipecoverspictures(),
        volume = 500,
        pipe_connections = {{ flow_direction ="output", position = {1, 2}, direction = defines.direction.south }}
      },
      {
        production_type = "output",
        pipe_picture = hydropipepictures(),
        pipe_covers = pipecoverspictures(),
        volume = 500,
        pipe_connections = {{ flow_direction ="output", position = {-1, 2}, direction = defines.direction.south }}
      }
    }
  }
})

data:extend({
  {
    type = "assembling-machine",
    name = "nullius-hydro-plant-2",
    icons = data.raw.item["nullius-hydro-plant-2"].icons,
    localised_description = {"entity-description.nullius-hydro-plant"},
    flags = {"placeable-neutral","player-creation"},
    minable = {mining_time = 1.5, result = "nullius-hydro-plant-2"},
    max_health = 400,
    corpse = "big-remnants",
    dying_explosion = "medium-explosion",
    collision_box = {{-2.2, -2.2}, {2.2, 2.2}},
    selection_box = {{-2.5, -2.5}, {2.5, 2.5}},
    crafting_categories = {"nullius-water-treatment"},
    crafting_speed = 2,
    energy_source = {type = "electric", usage_priority = "secondary-input", emissions_per_minute = {pollution = 0.05}, drain="20kW"},
    energy_usage = "480kW",
    ingredient_count = 4,
    resistances = {
      { type = "impact", decrease = 100, percent = 90 },
      { type = "fire", percent = 75 }
    },
    module_slots = 2,
    allowed_effects = {"speed", "productivity", "consumption", "pollution"},
    fast_replaceable_group = "hydro-plant",
    next_upgrade = "nullius-hydro-plant-3",
    circuit_connector = circuit_connector_definitions["nullius-hydro-plant"],
    circuit_wire_max_distance = default_circuit_wire_max_distance,
	  graphics_set = {
	    	animation = hydro_animation({0.8, 0.8, 0.9}),
	      working_visualisations = scale_image({
        {
          always_draw = true,
          north_position = util.by_pixel(-52.5, -43),
          east_position = util.by_pixel(-52.5, -43),
          south_position = util.by_pixel(-52.5, -43),
          west_position = util.by_pixel(-52.5, -43),
          animation = {
            layers = {
              {
                filename = "__angelsrefininggraphics__/graphics/entity/hydro-plant/hydro-plant-fan.png",
                priority = "extra-high",
                width = 107,
                height = 77,
                frame_count = 24,
                line_length = 6,
                animation_speed = 0.5,
                shift = util.by_pixel(0, -47.75),
                scale = 0.5,
              },
              {
                filename = "__angelsrefininggraphics__/graphics/entity/hydro-plant/hydro-plant-fan.png",
                priority = "extra-high",
                width = 107,
                height = 77,
                frame_count = 24,
                line_length = 6,
                animation_speed = 0.5,
                shift = util.by_pixel(0, 0.125),
                scale = 0.5,
              },
              {
                filename = "__angelsrefininggraphics__/graphics/entity/hydro-plant/hydro-plant-fan.png",
                priority = "extra-high",
                width = 107,
                height = 77,
                frame_count = 24,
                line_length = 6,
                animation_speed = 0.5,
                shift = util.by_pixel(0, 48),
                scale = 0.5,
              },
            },
          },
        },
        {
          always_draw = true,
          north_position = util.by_pixel(14.5, -21.5),
          east_position = util.by_pixel(14.5, -21.5),
          south_position = util.by_pixel(14.5, -21.5),
          west_position = util.by_pixel(14.5, -21.5),
          animation = {
            layers = {
              {
                filename = "__angelsrefininggraphics__/graphics/entity/hydro-plant/hydro-plant-dynamo.png",
                priority = "extra-high",
                width = 40,
                height = 36,
                frame_count = 24,
                line_length = 6,
                animation_speed = 0.5,
                shift = util.by_pixel(0, -47.75),
                scale = 0.5,
              },
              {
                filename = "__angelsrefininggraphics__/graphics/entity/hydro-plant/hydro-plant-dynamo.png",
                priority = "extra-high",
                width = 40,
                height = 36,
                frame_count = 24,
                line_length = 6,
                animation_speed = 0.5,
                shift = util.by_pixel(0, 0.125),
                scale = 0.5,
              },
              {
                filename = "__angelsrefininggraphics__/graphics/entity/hydro-plant/hydro-plant-dynamo.png",
                priority = "extra-high",
                width = 40,
                height = 36,
                frame_count = 24,
                line_length = 6,
                animation_speed = 0.5,
                shift = util.by_pixel(0, 48),
                scale = 0.5,
              },
            },
          },
        },
        {
          always_draw = true,
          north_animation = {
            draw_as_shadow = true,
            filename = "__angelsrefininggraphics__/graphics/entity/hydro-plant/hydro-plant-shadow.png",
            priority = "extra-high",
            width = 538,
            height = 454,
            shift = util.by_pixel(20, 10.5),
            x = 0,
            y = 0,
            frame_count = 1,
            scale = 0.5,
          },
          east_animation = {
            draw_as_shadow = true,
            filename = "__angelsrefininggraphics__/graphics/entity/hydro-plant/hydro-plant-shadow.png",
            priority = "extra-high",
            width = 538,
            height = 454,
            x = 538,
            y = 0,
            frame_count = 1,
            shift = util.by_pixel(20, 10.5),
            scale = 0.5,
          },
          south_animation = {
            draw_as_shadow = true,
            filename = "__angelsrefininggraphics__/graphics/entity/hydro-plant/hydro-plant-shadow.png",
            priority = "extra-high",
            width = 538,
            x = 1076,
            y = 0,
            height = 454,
            frame_count = 1,
            shift = util.by_pixel(20, 10.5),
            scale = 0.5,
          },
          west_animation = {
            draw_as_shadow = true,
            filename = "__angelsrefininggraphics__/graphics/entity/hydro-plant/hydro-plant-shadow.png",
            priority = "extra-high",
            width = 538,
            height = 454,
            x = 1614,
            y = 0,
            frame_count = 1,
            shift = util.by_pixel(20, 10.5),
            scale = 0.5,
          },
        },
        {
          always_draw = true,
          north_animation = {
            filename = "__angelsrefininggraphics__/graphics/entity/hydro-plant/hydro-plant-pipe-connections.png",
            priority = "extra-high",
            width = 459,
            height = 491,
            x = 0,
            y = 0,
            frame_count = 1,
            scale = 0.5,
          },
          east_animation = {
            filename = "__angelsrefininggraphics__/graphics/entity/hydro-plant/hydro-plant-pipe-connections.png",
            priority = "extra-high",
            frame_count = 1,
            width = 459,
            height = 491,
            x = 459,
            y = 0,
            scale = 0.5,
          },
          south_animation = {
            filename = "__angelsrefininggraphics__/graphics/entity/hydro-plant/hydro-plant-pipe-connections.png",
            priority = "extra-high",
            width = 459,
            height = 491,
            x = 918,
            y = 0,
            frame_count = 1,
            scale = 0.5,
          },
          west_animation = {
            filename = "__angelsrefininggraphics__/graphics/entity/hydro-plant/hydro-plant-pipe-connections.png",
            priority = "extra-high",
            width = 459,
            height = 491,
            x = 1377,
            y = 0,
            frame_count = 1,
            scale = 0.5,
          },
        },
        {
          always_draw = true,
          north_animation = {
            draw_as_shadow = true,
            filename = "__angelsrefininggraphics__/graphics/entity/hydro-plant/vertical-pipe-shadow-patch.png",
            priority = "high",
            width = 128,
            height = 128,
            repeat_count = 36,
            scale = 0.5,
            shift = { -2, -3 },
          },
          south_animation = {
            layers = {
              {
                draw_as_shadow = true,
                filename = "__angelsrefininggraphics__/graphics/entity/hydro-plant/vertical-pipe-shadow-patch.png",
                priority = "high",
                width = 128,
                height = 128,
                repeat_count = 36,
                scale = 0.5,
                shift = { -2, -3 },
              },
              {
                draw_as_shadow = true,
                filename = "__angelsrefininggraphics__/graphics/entity/hydro-plant/vertical-pipe-shadow-patch.png",
                priority = "high",
                width = 128,
                height = 128,
                repeat_count = 36,
                scale = 0.5,
                shift = { 2, -3 },
              },
            },
          },
        }
      }, 0.725),
	  },
    impact_category = "metal",
    working_sound = {
      sound = { filename = "__angelsrefininggraphics__/sound/ore-leaching-plant.ogg", volume = 0.65 },
      idle_sound = { filename = "__base__/sound/idle1.ogg", volume = 0.6 },
    },
    open_sound = {filename = "__base__/sound/open-close/fluid-open.ogg", volume = 0.55},
    close_sound = {filename = "__base__/sound/open-close/fluid-close.ogg", volume = 0.54},
    fluid_boxes = {
      {
        production_type = "input",
        pipe_picture = data.raw["assembling-machine"]["nullius-hydro-plant-1"].fluid_boxes[1].pipe_picture,
        pipe_covers = pipecoverspictures(),
        volume = 500,
        pipe_connections = {{ flow_direction ="input", position = {-1, -2}, direction = defines.direction.north }}
      },
      {
        production_type = "input",
        pipe_picture = data.raw["assembling-machine"]["nullius-hydro-plant-1"].fluid_boxes[2].pipe_picture,
        pipe_covers = pipecoverspictures(),
        volume = 500,
        pipe_connections = {{ flow_direction ="input", position = {1, -2}, direction = defines.direction.north }}
      },
      {
        production_type = "output",
        pipe_picture = data.raw["assembling-machine"]["nullius-hydro-plant-1"].fluid_boxes[3].pipe_picture,
        pipe_covers = pipecoverspictures(),
        volume = 500,
        pipe_connections = {{ flow_direction ="output", position = {1, 2}, direction = defines.direction.south }}
      },
      {
        production_type = "output",
        pipe_picture = data.raw["assembling-machine"]["nullius-hydro-plant-1"].fluid_boxes[4].pipe_picture,
        pipe_covers = pipecoverspictures(),
        volume = 500,
        pipe_connections = {{ flow_direction ="output", position = {-1, 2}, direction = defines.direction.south }}
      },
    }
  },

  {
    type = "assembling-machine",
    name = "nullius-hydro-plant-3",
    icons = data.raw.item["nullius-hydro-plant-3"].icons,
    localised_description = {"entity-description.nullius-hydro-plant"},
    flags = {"placeable-neutral","player-creation"},
    minable = {mining_time = 2, result = "nullius-hydro-plant-3"},
    max_health = 500,
    corpse = "big-remnants",
    dying_explosion = "medium-explosion",
    collision_box = {{-2.2, -2.2}, {2.2, 2.2}},
    selection_box = {{-2.5, -2.5}, {2.5, 2.5}},
    crafting_categories = {"nullius-water-treatment"},
    crafting_speed = 4,
    energy_source = {type = "electric", usage_priority = "secondary-input", emissions_per_minute = {pollution = 0.1}, drain="40kW"},
    energy_usage = "960kW",
    ingredient_count = 6,
    resistances = {
      { type = "impact", decrease = 100, percent = 90 },
      { type = "fire", percent = 75 }
    },
    module_slots = 3,
    allowed_effects = {"speed", "productivity", "consumption", "pollution"},
    fast_replaceable_group = "hydro-plant",
    circuit_connector = circuit_connector_definitions["nullius-hydro-plant"],
    circuit_wire_max_distance = default_circuit_wire_max_distance,
	  graphics_set = {
	      animation = hydro_animation(),
	      working_visualisations = scale_image({
        {
          always_draw = true,
          north_position = util.by_pixel(-52.5, -43),
          east_position = util.by_pixel(-52.5, -43),
          south_position = util.by_pixel(-52.5, -43),
          west_position = util.by_pixel(-52.5, -43),
          animation = {
            layers = {
              {
                filename = "__angelsrefininggraphics__/graphics/entity/hydro-plant/hydro-plant-fan.png",
                priority = "extra-high",
                width = 107,
                height = 77,
                frame_count = 24,
                line_length = 6,
                animation_speed = 0.5,
                shift = util.by_pixel(0, -47.75),
                scale = 0.5,
              },
              {
                filename = "__angelsrefininggraphics__/graphics/entity/hydro-plant/hydro-plant-fan.png",
                priority = "extra-high",
                width = 107,
                height = 77,
                frame_count = 24,
                line_length = 6,
                animation_speed = 0.5,
                shift = util.by_pixel(0, 0.125),
                scale = 0.5,
              },
              {
                filename = "__angelsrefininggraphics__/graphics/entity/hydro-plant/hydro-plant-fan.png",
                priority = "extra-high",
                width = 107,
                height = 77,
                frame_count = 24,
                line_length = 6,
                animation_speed = 0.5,
                shift = util.by_pixel(0, 48),
                scale = 0.5,
              },
            },
          },
        },
        {
          always_draw = true,
          north_position = util.by_pixel(14.5, -21.5),
          east_position = util.by_pixel(14.5, -21.5),
          south_position = util.by_pixel(14.5, -21.5),
          west_position = util.by_pixel(14.5, -21.5),
          animation = {
            layers = {
              {
                filename = "__angelsrefininggraphics__/graphics/entity/hydro-plant/hydro-plant-dynamo.png",
                priority = "extra-high",
                width = 40,
                height = 36,
                frame_count = 24,
                line_length = 6,
                animation_speed = 0.5,
                shift = util.by_pixel(0, -47.75),
                scale = 0.5,
              },
              {
                filename = "__angelsrefininggraphics__/graphics/entity/hydro-plant/hydro-plant-dynamo.png",
                priority = "extra-high",
                width = 40,
                height = 36,
                frame_count = 24,
                line_length = 6,
                animation_speed = 0.5,
                shift = util.by_pixel(0, 0.125),
                scale = 0.5,
              },
              {
                filename = "__angelsrefininggraphics__/graphics/entity/hydro-plant/hydro-plant-dynamo.png",
                priority = "extra-high",
                width = 40,
                height = 36,
                frame_count = 24,
                line_length = 6,
                animation_speed = 0.5,
                shift = util.by_pixel(0, 48),
                scale = 0.5,
              },
            },
          },
        },
        {
          always_draw = true,
          north_animation = {
            draw_as_shadow = true,
            filename = "__angelsrefininggraphics__/graphics/entity/hydro-plant/hydro-plant-shadow.png",
            priority = "extra-high",
            width = 538,
            height = 454,
            shift = util.by_pixel(20, 10.5),
            x = 0,
            y = 0,
            frame_count = 1,
            scale = 0.5,
          },
          east_animation = {
            draw_as_shadow = true,
            filename = "__angelsrefininggraphics__/graphics/entity/hydro-plant/hydro-plant-shadow.png",
            priority = "extra-high",
            width = 538,
            height = 454,
            x = 538,
            y = 0,
            frame_count = 1,
            shift = util.by_pixel(20, 10.5),
            scale = 0.5,
          },
          south_animation = {
            draw_as_shadow = true,
            filename = "__angelsrefininggraphics__/graphics/entity/hydro-plant/hydro-plant-shadow.png",
            priority = "extra-high",
            width = 538,
            x = 1076,
            y = 0,
            height = 454,
            frame_count = 1,
            shift = util.by_pixel(20, 10.5),
            scale = 0.5,
          },
          west_animation = {
            draw_as_shadow = true,
            filename = "__angelsrefininggraphics__/graphics/entity/hydro-plant/hydro-plant-shadow.png",
            priority = "extra-high",
            width = 538,
            height = 454,
            x = 1614,
            y = 0,
            frame_count = 1,
            shift = util.by_pixel(20, 10.5),
            scale = 0.5,
          },
        },
        {
          always_draw = true,
          north_animation = {
            filename = "__angelsrefininggraphics__/graphics/entity/hydro-plant/hydro-plant-pipe-connections.png",
            priority = "extra-high",
            width = 459,
            height = 491,
            x = 0,
            y = 0,
            frame_count = 1,
            scale = 0.5,
          },
          east_animation = {
            filename = "__angelsrefininggraphics__/graphics/entity/hydro-plant/hydro-plant-pipe-connections.png",
            priority = "extra-high",
            frame_count = 1,
            width = 459,
            height = 491,
            x = 459,
            y = 0,
            scale = 0.5,
          },
          south_animation = {
            filename = "__angelsrefininggraphics__/graphics/entity/hydro-plant/hydro-plant-pipe-connections.png",
            priority = "extra-high",
            width = 459,
            height = 491,
            x = 918,
            y = 0,
            frame_count = 1,
            scale = 0.5,
          },
          west_animation = {
            filename = "__angelsrefininggraphics__/graphics/entity/hydro-plant/hydro-plant-pipe-connections.png",
            priority = "extra-high",
            width = 459,
            height = 491,
            x = 1377,
            y = 0,
            frame_count = 1,
            scale = 0.5,
          },
        },
        {
          always_draw = true,
          north_animation = {
            draw_as_shadow = true,
            filename = "__angelsrefininggraphics__/graphics/entity/hydro-plant/vertical-pipe-shadow-patch.png",
            priority = "high",
            width = 128,
            height = 128,
            repeat_count = 36,
            scale = 0.5,
            shift = { -2, -3 },
          },
          south_animation = {
            layers = {
              {
                draw_as_shadow = true,
                filename = "__angelsrefininggraphics__/graphics/entity/hydro-plant/vertical-pipe-shadow-patch.png",
                priority = "high",
                width = 128,
                height = 128,
                repeat_count = 36,
                scale = 0.5,
                shift = { -2, -3 },
              },
              {
                draw_as_shadow = true,
                filename = "__angelsrefininggraphics__/graphics/entity/hydro-plant/vertical-pipe-shadow-patch.png",
                priority = "high",
                width = 128,
                height = 128,
                repeat_count = 36,
                scale = 0.5,
                shift = { 2, -3 },
              },
            },
          },
        },
      }, 0.725),
	  },
    impact_category = "metal",
    working_sound = {
      sound = { filename = "__angelsrefininggraphics__/sound/ore-leaching-plant.ogg", volume = 0.65 },
      idle_sound = { filename = "__base__/sound/idle1.ogg", volume = 0.6 },
    },
    open_sound = {filename = "__base__/sound/open-close/fluid-open.ogg", volume = 0.55},
    close_sound = {filename = "__base__/sound/open-close/fluid-close.ogg", volume = 0.54},
    fluid_boxes = {
      {
        production_type = "input",
        pipe_picture = data.raw["assembling-machine"]["nullius-hydro-plant-1"].fluid_boxes[1].pipe_picture,
        pipe_covers = pipecoverspictures(),
        volume = 500,
        pipe_connections = {{ flow_direction ="input", position = {-1, -2}, direction = defines.direction.north }}
      },
      {
        production_type = "input",
        pipe_picture = data.raw["assembling-machine"]["nullius-hydro-plant-1"].fluid_boxes[2].pipe_picture,
        pipe_covers = pipecoverspictures(),
        volume = 500,
        pipe_connections = {{ flow_direction ="input", position = {1, -2}, direction = defines.direction.north }}
      },
      {
        production_type = "output",
        pipe_picture = data.raw["assembling-machine"]["nullius-hydro-plant-1"].fluid_boxes[3].pipe_picture,
        pipe_covers = pipecoverspictures(),
        volume = 500,
        pipe_connections = {{ flow_direction ="output", position = {1, 2}, direction = defines.direction.south }}
      },
      {
        production_type = "output",
        pipe_picture = data.raw["assembling-machine"]["nullius-hydro-plant-1"].fluid_boxes[4].pipe_picture,
        pipe_covers = pipecoverspictures(),
        volume = 500,
        pipe_connections = {{ flow_direction ="output", position = {-1, 2}, direction = defines.direction.south }}
      },
    }
  }
})

data.raw["assembling-machine"]["nullius-hydro-plant-1"].graphics_set.working_visualisations[4] = nil
data.raw["assembling-machine"]["nullius-hydro-plant-1"].graphics_set.working_visualisations[5] = nil
data.raw["assembling-machine"]["nullius-hydro-plant-2"].graphics_set.working_visualisations[4] = nil
data.raw["assembling-machine"]["nullius-hydro-plant-2"].graphics_set.working_visualisations[5] = nil
data.raw["assembling-machine"]["nullius-hydro-plant-3"].graphics_set.working_visualisations[4] = nil
data.raw["assembling-machine"]["nullius-hydro-plant-3"].graphics_set.working_visualisations[5] = nil

data:extend({
  {
    type = "assembling-machine",
    name = "nullius-distillery-1",
	  order = "z-nullius-cbb",
    icons = data.raw.item["nullius-distillery-1"].icons,
    localised_description = {"entity-description.nullius-distillery"},
    flags = {"placeable-neutral","player-creation"},
    minable = {mining_time = 1.2, result = "nullius-distillery-1"},
    max_health = 350,
    dying_explosion = "medium-explosion",
    corpse = "oil-refinery-remnants",
    collision_box = {{-2.3, -2.3}, {2.3, 2.3}},
    selection_box = {{-2.5, -2.5}, {2.5, 2.5}},
    
    crafting_categories = {"distillation"},
    crafting_speed = 1,
    energy_source = {
      type = "electric",
      usage_priority = "secondary-input",
      emissions_per_minute = {pollution = 6},
      drain = "20kW"
    },
    energy_usage = "280kW",

    resistances = {
      { type = "impact", decrease = 100, percent = 90 }
    },
    working_sound = data.raw["assembling-machine"]["oil-refinery"].working_sound,
    open_sound = data.raw["assembling-machine"]["oil-refinery"].open_sound,
    close_sound = data.raw["assembling-machine"]["oil-refinery"].close_sound,
    circuit_wire_max_distance = assembling_machine_circuit_wire_max_distance,
    circuit_connector = circuit_connector_definitions["oil-refinery"],
	  fluid_boxes = {
      {
        production_type = "input",
        pipe_covers = pipecoverspictures(),
        volume = 500,
        pipe_connections = {{ flow_direction ="input", position = {-1, 2}, direction = defines.direction.south }}
      },
      {
        production_type = "input",
        pipe_covers = pipecoverspictures(),
        volume = 500,
        pipe_connections = {{ flow_direction ="input", position = {1, 2}, direction = defines.direction.south }}
      },
      {
        production_type = "output",
        pipe_covers = pipecoverspictures(),
        volume = 500,
        pipe_connections = {{ flow_direction ="output", position = {-2, -2}, direction = defines.direction.north }}
      },
      {
        production_type = "output",
        pipe_covers = pipecoverspictures(),
        volume = 500,
        pipe_connections = {{ flow_direction ="output", position = {0, -2}, direction = defines.direction.north }}
      },
      {
        production_type = "output",
        pipe_covers = pipecoverspictures(),
        volume = 500,
        pipe_connections = {{ flow_direction ="output", position = {2, -2}, direction = defines.direction.north }}
      }
    },
    impact_category = "metal",
    module_slots = 1,
    allowed_effects = {"speed", "productivity", "consumption", "pollution"},
    fast_replaceable_group = "distillery",
    next_upgrade = "nullius-distillery-2",

    graphics_set = {
      working_visualisations = {
        {
          apply_recipe_tint = "primary",
          constant_speed = true,
          north_position = {1, -3.85},
          east_position = {-1.7, -3.8},
          south_position = {-1.85, -4.4},
          west_position = {1.7, -3.65},
          render_layer = "wires",
          animation = {
            filename = BASEENTITY .. "chemical-plant/chemical-plant-smoke-outer.png",
            frame_count = 47,
            line_length = 16,
            width = 90,
            height = 188,
            animation_speed = 0.25,
            scale = 0.7
          }
        },
      },
  
      animation = make_4way_animation_from_spritesheet({
        layers = {
          {
              filename = BASEENTITY .. "oil-refinery/oil-refinery.png",
              width = 386,
              height = 430,
              frame_count = 1,
              shift = util.by_pixel(0, -7.5),
              scale = 0.5,
              tint = {0.77, 0.77, 0.66, 1}
          },
          {
              filename = BASEENTITY .. "oil-refinery/oil-refinery-shadow.png",
              width = 674,
              height = 426,
              frame_count = 1,
              shift = util.by_pixel(82.5, 26.5),
              draw_as_shadow = true,
              force_hr_shadow = true,
              scale = 0.5
          }
        }
      })
    }
  }
})

data:extend({
  {
    type = "assembling-machine",
    name = "nullius-distillery-2",
	  order = "z-nullius-ccb",
    icons = data.raw.item["nullius-distillery-2"].icons,
    localised_description = {"entity-description.nullius-distillery"},
    flags = {"placeable-neutral","player-creation"},
    minable = {mining_time = 1.8, result = "nullius-distillery-2"},
    max_health = 500,
    dying_explosion = "medium-explosion",
    corpse = "oil-refinery-remnants",
    collision_box = {{-2.3, -2.3}, {2.3, 2.3}},
    selection_box = {{-2.5, -2.5}, {2.5, 2.5}},
    
    crafting_categories = {"distillation"},
    crafting_speed = 2,
    energy_source = {
      type = "electric",
      usage_priority = "secondary-input",
      emissions_per_minute = {pollution = 12},
      drain = "50kW"
    },
    energy_usage = "550kW",

    resistances = data.raw["assembling-machine"]["nullius-distillery-1"].resistances,
    working_sound = data.raw["assembling-machine"]["oil-refinery"].working_sound,
    open_sound = data.raw["assembling-machine"]["oil-refinery"].open_sound,
    close_sound = data.raw["assembling-machine"]["oil-refinery"].close_sound,
    impact_category = "metal",
    module_slots = 2,
    allowed_effects = {"speed", "productivity", "consumption", "pollution"},
    fast_replaceable_group = "distillery",
    next_upgrade = "nullius-distillery-3",
    circuit_wire_max_distance = assembling_machine_circuit_wire_max_distance,
    circuit_connector = circuit_connector_definitions["oil-refinery"],

    fluid_boxes = {
      {
        production_type = "input",
        pipe_covers = pipecoverspictures(),
        volume = 500,
        pipe_connections = {{ flow_direction ="input", position = {-1, 2}, direction = defines.direction.south }}
      },
      {
        production_type = "input",
        pipe_covers = pipecoverspictures(),
        volume = 500,
        pipe_connections = {{ flow_direction ="input", position = {1, 2}, direction = defines.direction.south }}
      },
      {
        production_type = "output",
        pipe_covers = pipecoverspictures(),
        volume = 500,
        pipe_connections = {{ flow_direction ="output", position = {-2, -2}, direction = defines.direction.north }}
      },
      {
        production_type = "output",
        pipe_covers = pipecoverspictures(),
        volume = 500,
        pipe_connections = {{ flow_direction ="output", position = {0, -2}, direction = defines.direction.north }}
      },
      {
        production_type = "output",
        pipe_covers = pipecoverspictures(),
        volume = 500,
        pipe_connections = {{ flow_direction ="output", position = {2, -2}, direction = defines.direction.north }}
      }
    },

    graphics_set = {
      animation = make_4way_animation_from_spritesheet({
        layers = {
          {
              filename = BASEENTITY .. "oil-refinery/oil-refinery.png",
              width = 386,
              height = 430,
              frame_count = 1,
              shift = util.by_pixel(0, -7.5),
              scale = 0.5,
              tint = {0.8, 0.8, 1, 1}
          },
          {
              filename = BASEENTITY .. "oil-refinery/oil-refinery-shadow.png",
              width = 674,
              height = 426,
              frame_count = 1,
              shift = util.by_pixel(82.5, 26.5),
              draw_as_shadow = true,
              force_hr_shadow = true,
              scale = 0.5
          }
        }
      }),
      working_visualisations = data.raw["assembling-machine"]["nullius-distillery-1"].graphics_set.working_visualisations,
    }
  },

  {
    type = "assembling-machine",
    name = "nullius-distillery-3",
	  order = "z-nullius-cdb",
    icons = data.raw.item["nullius-distillery-3"].icons,
    localised_description = {"entity-description.nullius-distillery"},
    flags = {"placeable-neutral", "player-creation"},
    minable = {mining_time = 2.4, result = "nullius-distillery-3"},
    max_health = 600,
    dying_explosion = "medium-explosion",
    corpse = "oil-refinery-remnants",
    collision_box = {{-2.3, -2.3}, {2.3, 2.3}},
    selection_box = {{-2.5, -2.5}, {2.5, 2.5}},
    
    crafting_categories = {"distillation"},
    crafting_speed = 4,
    energy_source = {
      type = "electric",
      usage_priority = "secondary-input",
      emissions_per_minute = {pollution = 24},
      drain = "100kW"
    },
    energy_usage = "1100kW",

    resistances = data.raw["assembling-machine"]["nullius-distillery-1"].resistances,
    working_sound = data.raw["assembling-machine"]["oil-refinery"].working_sound,
    open_sound = data.raw["assembling-machine"]["oil-refinery"].open_sound,
    close_sound = data.raw["assembling-machine"]["oil-refinery"].close_sound,
    impact_category = "metal",
    module_slots = 3,
    allowed_effects = {"speed", "productivity", "consumption", "pollution"},
    fast_replaceable_group = "distillery",
    circuit_wire_max_distance = assembling_machine_circuit_wire_max_distance,
    circuit_connector = circuit_connector_definitions["oil-refinery"],
    graphics_set = {
      animation = data.raw["assembling-machine"]["oil-refinery"].graphics_set.animation,
      working_visualisations = data.raw["assembling-machine"]["nullius-distillery-1"].graphics_set.working_visualisations,
    },

    fluid_boxes = {
      {
        production_type = "input",
        pipe_covers = pipecoverspictures(),
        volume = 500,
        pipe_connections = {{ flow_direction ="input", position = {-1, 2}, direction = defines.direction.south }}
      },
      {
        production_type = "input",
        pipe_covers = pipecoverspictures(),
        volume = 500,
        pipe_connections = {{ flow_direction ="input", position = {1, 2}, direction = defines.direction.south }}
      },
      {
        production_type = "output",
        pipe_covers = pipecoverspictures(),
        volume = 500,
        pipe_connections = {{ flow_direction ="output", position = {-2, -2}, direction = defines.direction.north }}
      },
      {
        production_type = "output",
        pipe_covers = pipecoverspictures(),
        volume = 500,
        pipe_connections = {{ flow_direction ="output", position = {0, -2}, direction = defines.direction.north }}
      },
      {
        production_type = "output",
        pipe_covers = pipecoverspictures(),
        volume = 500,
        pipe_connections = {{ flow_direction ="output", position = {2, -2}, direction = defines.direction.north }}
      }
    }
  }
})

circuit_connector_definitions["nullius-electrolyser"] = circuit_connector_definitions.create_vector(universal_connector_template, {
  { variation =  4, main_offset = util.by_pixel( 20.875,  62), shadow_offset = util.by_pixel( 20.875,  62), show_shadow = true },
  { variation =  4, main_offset = util.by_pixel( 20.875,  62), shadow_offset = util.by_pixel( 20.875,  62), show_shadow = true },
  { variation =  4, main_offset = util.by_pixel( 20.875,  62), shadow_offset = util.by_pixel( 20.875,  62), show_shadow = true },
  { variation =  4, main_offset = util.by_pixel( 20.875,  62), shadow_offset = util.by_pixel( 20.875,  62), show_shadow = true },
})

data:extend({
  {
    type = "assembling-machine",
    name = "nullius-surge-electrolyzer-1",
	  icons = {{
      icon = "__angelspetrochemgraphics__/graphics/icons/electrolyser.png",
      icon_size = 32,
      tint = {0.8, 0.8, 0.6}
    }},
	  order = data.raw.item["nullius-electrolyzer-1"].order .. "d",
    localised_description = {"entity-description.nullius-surge",
	    {"entity-description.nullius-electrolyzer"}},
    subgroup = "electrolyzer-mode-surge",
    flags = {"placeable-neutral","player-creation"},
    minable = {mining_time = 1, result = "nullius-electrolyzer-1"},
	  placeable_by = {item = "nullius-electrolyzer-1", count = 1},
    fast_replaceable_group = "electrolyzer",
    next_upgrade = "nullius-surge-electrolyzer-2",
    max_health = 300,
    corpse = "big-remnants",
    dying_explosion = "medium-explosion",
    collision_box = {{-1.8, -1.8}, {1.8, 1.8}},
    selection_box = {{-2, -2}, {2, 2}},
    crafting_categories = {"nullius-electrolysis"},
    crafting_speed = 1,
    energy_source = {
      type = "electric",
      emissions_per_minute = {pollution = 0.5},
      drain = "10kW",
      output_flow_limit = "0kW",
      usage_priority = "tertiary",
      render_no_power_icon = false
    },
    energy_usage = "1990kW",
    resistances = {
      { type = "impact", decrease = 100, percent = 90 },
      { type = "fire", percent = 75 }
    },
    circuit_connector = circuit_connector_definitions["nullius-electrolyser"],
    circuit_wire_max_distance = default_circuit_wire_max_distance,
    graphics_set = {
      animation = {
        north = {
          filename = "__angelspetrochemgraphics__/graphics/entity/electrolyser/electrolyser-north.png",
          width = 224,
          height = 224,
          frame_count = 36,
          line_length = 6,
          shift = {0, 0},
          animation_speed = 0.5,
          scale = 0.78,
          tint = {r=0.8, g=0.8, b=0.6}
        },
        east = {
          filename = "__angelspetrochemgraphics__/graphics/entity/electrolyser/electrolyser-east.png",
          width = 224,
          height = 224,
          frame_count = 36,
          line_length = 6,
          shift = {0, 0},
          animation_speed = 0.5,
          scale = 0.78,
          tint = {r=0.8, g=0.8, b=0.6}
        },
        south = {
          filename = "__angelspetrochemgraphics__/graphics/entity/electrolyser/electrolyser-north.png",
          width = 224,
          height = 224,
          frame_count = 36,
          line_length = 6,
          shift = {0, 0},
          animation_speed = 0.5,
          scale = 0.78,
          tint = {r=0.8, g=0.8, b=0.6}
        },
        west = {
          filename = "__angelspetrochemgraphics__/graphics/entity/electrolyser/electrolyser-east.png",
          width = 224,
          height = 224,
          frame_count = 36,
          line_length = 6,
          shift = {0, 0},
          animation_speed = 0.5,
          scale = 0.78,
          tint = {r=0.8, g=0.8, b=0.6}
        }
      }
    },
	impact_category = "metal",
	working_sound = {
      sound = { filename = "__angelspetrochemgraphics__/sound/electrolyser.ogg", volume = 0.15, audible_distance_modifier = 0.75 },
      idle_sound = { filename = "__base__/sound/idle1.ogg", volume = 0.4, audible_distance_modifier = 0.75 },
      
    },
    open_sound = data.raw["assembling-machine"]["chemical-plant"].open_sound,
    close_sound = data.raw["assembling-machine"]["chemical-plant"].close_sound,
    fluid_boxes = {
      {
        production_type = "input",
        pipe_covers = pipecoverspictures(),
        volume = 500,
        pipe_connections = {{ flow_direction ="input", position = {-1.5, -1.5}, direction = defines.direction.north }}
      },
      {
        production_type = "output",
        pipe_covers = pipecoverspictures(),
        volume = 500,
        pipe_connections = {{ flow_direction ="output", position = {-1.5, 1.5}, direction = defines.direction.south }}
      },
      {
        production_type = "output",
        pipe_covers = pipecoverspictures(),
        volume = 500,
        pipe_connections = {{ flow_direction ="output", position = {1.5, -1.5}, direction = defines.direction.north }}
      },
      {
        production_type = "output",
        pipe_covers = pipecoverspictures(),
        volume = 500,
        pipe_connections = {{ flow_direction ="output", position = {1.5, 1.5}, direction = defines.direction.south }}
      }
    }
  }
})

data:extend({
  {
    type = "assembling-machine",
    name = "nullius-priority-electrolyzer-1",
	  icons = {{
      icon = "__angelspetrochemgraphics__/graphics/icons/electrolyser.png",
      icon_size = 32,
      tint = {0.8, 0.68, 0.51}
    }},
	  order = data.raw.item["nullius-electrolyzer-1"].order .. "b",
	  localised_description = {"entity-description.nullius-priority",
	    {"entity-description.nullius-electrolyzer"}},
    subgroup = "electrolyzer-mode-priority",
    flags = {"placeable-neutral","player-creation"},
    minable = {mining_time = 1, result = "nullius-electrolyzer-1"},
	  placeable_by = {item = "nullius-electrolyzer-1", count = 1},
    fast_replaceable_group = "electrolyzer",
    next_upgrade = "nullius-priority-electrolyzer-2",
    max_health = 300,
    corpse = "big-remnants",
    dying_explosion = "medium-explosion",
    collision_box = {{-1.8, -1.8}, {1.8, 1.8}},
    selection_box = {{-2, -2}, {2, 2}},
    crafting_categories = {"nullius-electrolysis"},
    crafting_speed = 0.5,
    energy_source = {
      type = "electric",
      emissions_per_minute = {pollution = 0.5},
      drain = "10kW",
      usage_priority = "secondary-input"
    },
    energy_usage = "990kW",
    resistances = data.raw["assembling-machine"]["nullius-surge-electrolyzer-1"].resistances,
    fluid_boxes = data.raw["assembling-machine"]["nullius-surge-electrolyzer-1"].fluid_boxes,
    circuit_connector = circuit_connector_definitions["nullius-electrolyser"],
    circuit_wire_max_distance = default_circuit_wire_max_distance,
    graphics_set = {
      animation = {
        north = {
          filename = "__angelspetrochemgraphics__/graphics/entity/electrolyser/electrolyser-north.png",
          width = 224,
          height = 224,
          frame_count = 36,
          line_length = 6,
          shift = {0, 0},
          animation_speed = 0.5,
          scale = 0.78,
          tint = {0.8, 0.68, 0.51}
        },
        east = {
          filename = "__angelspetrochemgraphics__/graphics/entity/electrolyser/electrolyser-east.png",
          width = 224,
          height = 224,
          frame_count = 36,
          line_length = 6,
          shift = {0, 0},
          animation_speed = 0.5,
          scale = 0.78,
          tint = {0.8, 0.68, 0.51}
        },
        south = {
          filename = "__angelspetrochemgraphics__/graphics/entity/electrolyser/electrolyser-north.png",
          width = 224,
          height = 224,
          frame_count = 36,
          line_length = 6,
          shift = {0, 0},
          animation_speed = 0.5,
          scale = 0.78,
          tint = {0.8, 0.68, 0.51}
        },
        west = {
          filename = "__angelspetrochemgraphics__/graphics/entity/electrolyser/electrolyser-east.png",
          width = 224,
          height = 224,
          frame_count = 36,
          line_length = 6,
          shift = {0, 0},
          animation_speed = 0.5,
          scale = 0.78,
          tint = {0.8, 0.68, 0.51}
        }
      }
    },
	  impact_category = data.raw["assembling-machine"]["nullius-surge-electrolyzer-1"].impact_category,
    working_sound = data.raw["assembling-machine"]["nullius-surge-electrolyzer-1"].working_sound,
    open_sound = data.raw["assembling-machine"]["nullius-surge-electrolyzer-1"].open_sound,
    close_sound = data.raw["assembling-machine"]["nullius-surge-electrolyzer-1"].close_sound
  },

  {
    type = "assembling-machine",
    name = "nullius-surge-electrolyzer-2",
	  icons = {{
      icon = "__angelspetrochemgraphics__/graphics/icons/electrolyser.png",
      icon_size = 32,
      tint = {0.8, 0.9, 1}
    }},
	  order = data.raw.item["nullius-electrolyzer-2"].order .. "d",
	  localised_description = {"entity-description.nullius-surge",
	    {"entity-description.nullius-electrolyzer"}},
    subgroup = "electrolyzer-mode-surge",
    flags = {"placeable-neutral","player-creation"},
    minable = {mining_time = 1.5, result = "nullius-electrolyzer-2"},
	  placeable_by = {item = "nullius-electrolyzer-2", count = 1},
    fast_replaceable_group = "electrolyzer",
    next_upgrade = "nullius-surge-electrolyzer-3",
    max_health = 400,
    corpse = "big-remnants",
    dying_explosion = "medium-explosion",
    collision_box = {{-1.8, -1.8}, {1.8, 1.8}},
    selection_box = {{-2, -2}, {2, 2}},
    crafting_categories = {"nullius-electrolysis"},
    crafting_speed = 2,
    energy_source = {
      type = "electric",
      emissions_per_minute = {pollution = 1},
      drain = "15kW",
      output_flow_limit = "0kW",
      usage_priority = "tertiary",
      render_no_power_icon = false
    },
    energy_usage = "3905kW",
    resistances = {
      { type = "impact", decrease = 100, percent = 90 },
      { type = "fire", percent = 75 }
    },
    circuit_connector = circuit_connector_definitions["nullius-electrolyser"],
    circuit_wire_max_distance = default_circuit_wire_max_distance,
    graphics_set = {
      animation = {
        north = {
          filename = "__angelspetrochemgraphics__/graphics/entity/electrolyser/electrolyser-north.png",
          width = 224,
          height = 224,
          frame_count = 36,
          line_length = 6,
          shift = {0, 0},
          animation_speed = 0.5,
          scale = 0.78,
          tint = {r=0.8, g=0.9, b=1}
        },
        east = {
          filename = "__angelspetrochemgraphics__/graphics/entity/electrolyser/electrolyser-east.png",
          width = 224,
          height = 224,
          frame_count = 36,
          line_length = 6,
          shift = {0, 0},
          animation_speed = 0.5,
          scale = 0.78,
          tint = {r=0.8, g=0.9, b=1}
        },
        south = {
          filename = "__angelspetrochemgraphics__/graphics/entity/electrolyser/electrolyser-north.png",
          width = 224,
          height = 224,
          frame_count = 36,
          line_length = 6,
          shift = {0, 0},
          animation_speed = 0.5,
          scale = 0.78,
          tint = {r=0.8, g=0.9, b=1}
        },
        west = {
          filename = "__angelspetrochemgraphics__/graphics/entity/electrolyser/electrolyser-east.png",
          width = 224,
          height = 224,
          frame_count = 36,
          line_length = 6,
          shift = {0, 0},
          animation_speed = 0.5,
          scale = 0.78,
          tint = {r=0.8, g=0.9, b=1}
        }
      }
    },
    impact_category = "metal",
    working_sound = data.raw["assembling-machine"]["nullius-surge-electrolyzer-1"].working_sound,
    open_sound = data.raw["assembling-machine"]["nullius-surge-electrolyzer-1"].open_sound,
    close_sound = data.raw["assembling-machine"]["nullius-surge-electrolyzer-1"].close_sound,
    fluid_boxes = {
      {
        production_type = "input",
        pipe_covers = pipecoverspictures(),
        volume = 500,
        pipe_connections = {{ flow_direction ="input", position = {-1.5, -1.5}, direction = defines.direction.north }}
      },
      {
        production_type = "output",
        pipe_covers = pipecoverspictures(),
        volume = 500,
        pipe_connections = {{ flow_direction ="output", position = {-1.5, 1.5}, direction = defines.direction.south }}
      },
      {
        production_type = "output",
        pipe_covers = pipecoverspictures(),
        volume = 500,
        pipe_connections = {{ flow_direction ="output", position = {1.5, -1.5}, direction = defines.direction.north }}
      },
      {
        production_type = "output",
        pipe_covers = pipecoverspictures(),
        volume = 500,
        pipe_connections = {{ flow_direction ="output", position = {1.5, 1.5}, direction = defines.direction.south }}
      }
    }
  }
})

data:extend({
  {
    type = "assembling-machine",
    name = "nullius-priority-electrolyzer-2",
	  icons = {{
      icon = "__angelspetrochemgraphics__/graphics/icons/electrolyser.png",
      icon_size = 32,
      tint = {0.8, 0.76, 0.85}
    }},
	  order = data.raw.item["nullius-electrolyzer-2"].order .. "b",
	  localised_description = {"entity-description.nullius-priority",
	    {"entity-description.nullius-electrolyzer"}},
    subgroup = "electrolyzer-mode-priority",
    flags = {"placeable-neutral","player-creation"},
    minable = {mining_time = 1.5, result = "nullius-electrolyzer-2"},
	  placeable_by = {item = "nullius-electrolyzer-2", count = 1},
    fast_replaceable_group = "electrolyzer",
    next_upgrade = "nullius-priority-electrolyzer-3",
    max_health = 400,
    corpse = "big-remnants",
    dying_explosion = "medium-explosion",
    collision_box = {{-1.8, -1.8}, {1.8, 1.8}},
    selection_box = {{-2, -2}, {2, 2}},
    crafting_categories = {"nullius-electrolysis"},
    crafting_speed = 1.5,
    energy_source = {
      type = "electric",
      emissions_per_minute = {pollution = 1},
      drain = "25kW",
      usage_priority = "secondary-input"
    },
    energy_usage = "2915kW",
    resistances = data.raw["assembling-machine"]["nullius-surge-electrolyzer-2"].resistances,
    fluid_boxes = data.raw["assembling-machine"]["nullius-surge-electrolyzer-2"].fluid_boxes,
    circuit_connector = circuit_connector_definitions["nullius-electrolyser"],
    circuit_wire_max_distance = default_circuit_wire_max_distance,
    graphics_set = {
      animation = {
        north = {
          filename = "__angelspetrochemgraphics__/graphics/entity/electrolyser/electrolyser-north.png",
          width = 224,
          height = 224,
          frame_count = 36,
          line_length = 6,
          shift = {0, 0},
          animation_speed = 0.5,
          scale = 0.78,
          tint = {0.8, 0.76, 0.85}
        },
        east = {
          filename = "__angelspetrochemgraphics__/graphics/entity/electrolyser/electrolyser-east.png",
          width = 224,
          height = 224,
          frame_count = 36,
          line_length = 6,
          shift = {0, 0},
          animation_speed = 0.5,
          scale = 0.78,
          tint = {0.8, 0.76, 0.85}
        },
        south = {
          filename = "__angelspetrochemgraphics__/graphics/entity/electrolyser/electrolyser-north.png",
          width = 224,
          height = 224,
          frame_count = 36,
          line_length = 6,
          shift = {0, 0},
          animation_speed = 0.5,
          scale = 0.78,
          tint = {0.8, 0.76, 0.85}
        },
        west = {
          filename = "__angelspetrochemgraphics__/graphics/entity/electrolyser/electrolyser-east.png",
          width = 224,
          height = 224,
          frame_count = 36,
          line_length = 6,
          shift = {0, 0},
          animation_speed = 0.5,
          scale = 0.78,
          tint = {0.8, 0.76, 0.85}
        }
      }
    },
    impact_category = "metal",
    working_sound = data.raw["assembling-machine"]["nullius-surge-electrolyzer-1"].working_sound,
    open_sound = data.raw["assembling-machine"]["nullius-surge-electrolyzer-1"].open_sound,
    close_sound = data.raw["assembling-machine"]["nullius-surge-electrolyzer-1"].close_sound
  }
})

data:extend({
  {
    type = "assembling-machine",
    name = "nullius-surge-electrolyzer-3",
    icon = "__angelspetrochemgraphics__/graphics/icons/electrolyser.png",
    icon_size = 32,
	  order = data.raw.item["nullius-electrolyzer-3"].order .. "d",
	  localised_description = {"entity-description.nullius-surge",
	    {"entity-description.nullius-electrolyzer"}},
    subgroup = "electrolyzer-mode-surge",
    flags = {"placeable-neutral","player-creation"},
    minable = {mining_time = 2, result = "nullius-electrolyzer-3"},
	  placeable_by = {item = "nullius-electrolyzer-3", count = 1},
    fast_replaceable_group = "electrolyzer",
    max_health = 500,
    corpse = "big-remnants",
    dying_explosion = "medium-explosion",
    collision_box = {{-1.8, -1.8}, {1.8, 1.8}},
    selection_box = {{-2, -2}, {2, 2}},
    crafting_categories = {"nullius-electrolysis"},
    crafting_speed = 4,
    energy_source = {
      type = "electric",
      emissions_per_minute = {pollution = 2},
      drain = "25kW",
      output_flow_limit = "0kW",
      usage_priority = "tertiary",
      render_no_power_icon = false
    },
    energy_usage = "7725kW",
    resistances = {
      { type = "impact", decrease = 100, percent = 90 },
      { type = "fire", percent = 75 }
    },
    circuit_connector = circuit_connector_definitions["nullius-electrolyser"],
    circuit_wire_max_distance = default_circuit_wire_max_distance,
    graphics_set = {
      animation = {
        north = {
          filename = "__angelspetrochemgraphics__/graphics/entity/electrolyser/electrolyser-north.png",
          width = 224,
          height = 224,
          frame_count = 36,
          line_length = 6,
          shift = {0, 0},
          animation_speed = 0.5,
          scale = 0.78
        },
        east = {
          filename = "__angelspetrochemgraphics__/graphics/entity/electrolyser/electrolyser-east.png",
          width = 224,
          height = 224,
          frame_count = 36,
          line_length = 6,
          shift = {0, 0},
          animation_speed = 0.5,
          scale = 0.78
        },
        south = {
          filename = "__angelspetrochemgraphics__/graphics/entity/electrolyser/electrolyser-north.png",
          width = 224,
          height = 224,
          frame_count = 36,
          line_length = 6,
          shift = {0, 0},
          animation_speed = 0.5,
          scale = 0.78
        },
        west = {
          filename = "__angelspetrochemgraphics__/graphics/entity/electrolyser/electrolyser-east.png",
          width = 224,
          height = 224,
          frame_count = 36,
          line_length = 6,
          shift = {0, 0},
          animation_speed = 0.5,
          scale = 0.78
        }
      }
    },
    impact_category = "metal",
    working_sound = data.raw["assembling-machine"]["nullius-surge-electrolyzer-1"].working_sound,
    open_sound = data.raw["assembling-machine"]["nullius-surge-electrolyzer-1"].open_sound,
    close_sound = data.raw["assembling-machine"]["nullius-surge-electrolyzer-1"].close_sound,
    fluid_boxes = {
      {
        production_type = "input",
        pipe_covers = pipecoverspictures(),
        volume = 500,
        pipe_connections = {{ flow_direction ="input", position = {-1.5, -1.5}, direction = defines.direction.north }}
      },
      {
        production_type = "output",
        pipe_covers = pipecoverspictures(),
        volume = 500,
        pipe_connections = {{ flow_direction ="output", position = {-1.5, 1.5}, direction = defines.direction.south }}
      },
      {
        production_type = "output",
        pipe_covers = pipecoverspictures(),
        volume = 500,
        pipe_connections = {{ flow_direction ="output", position = {1.5, -1.5}, direction = defines.direction.north }}
      },
      {
        production_type = "output",
        pipe_covers = pipecoverspictures(),
        volume = 500,
        pipe_connections = {{ flow_direction ="output", position = {1.5, 1.5}, direction = defines.direction.south }}
      }
    }
  }
})

data:extend({
  {
    type = "assembling-machine",
    name = "nullius-priority-electrolyzer-3",
	  icons = {{
      icon = "__angelspetrochemgraphics__/graphics/icons/electrolyser.png",
      icon_size = 32,
      tint = {1, 0.85, 0.85}
    }},
	  order = data.raw.item["nullius-electrolyzer-3"].order .. "b",
	  localised_description = {"entity-description.nullius-priority",
	    {"entity-description.nullius-electrolyzer"}},
    subgroup = "electrolyzer-mode-priority",
    flags = {"placeable-neutral","player-creation"},
    minable = {mining_time = 2, result = "nullius-electrolyzer-3"},
	  placeable_by = {item = "nullius-electrolyzer-3", count = 1},
    fast_replaceable_group = "electrolyzer",
    max_health = 500,
    corpse = "big-remnants",
    dying_explosion = "medium-explosion",
    collision_box = {{-1.8, -1.8}, {1.8, 1.8}},
    selection_box = {{-2, -2}, {2, 2}},
    crafting_categories = {"nullius-electrolysis"},
    crafting_speed = 4,
    energy_source = {
      type = "electric",
      usage_priority = "secondary-input",
      emissions_per_minute = {pollution = 2},
      drain = "100kW"
    },
    energy_usage = "7650kW",
    resistances = data.raw["assembling-machine"]["nullius-surge-electrolyzer-3"].resistances,
    fluid_boxes = data.raw["assembling-machine"]["nullius-surge-electrolyzer-3"].fluid_boxes,
    circuit_connector = circuit_connector_definitions["nullius-electrolyser"],
    circuit_wire_max_distance = default_circuit_wire_max_distance,
    graphics_set = {
      animation = {
        north = {
          filename = "__angelspetrochemgraphics__/graphics/entity/electrolyser/electrolyser-north.png",
          width = 224,
          height = 224,
          frame_count = 36,
          line_length = 6,
          animation_speed = 0.5,
          scale = 0.78,
          tint = {1, 0.85, 0.85}
        },
        east = {
          filename = "__angelspetrochemgraphics__/graphics/entity/electrolyser/electrolyser-east.png",
          width = 224,
          height = 224,
          frame_count = 36,
          line_length = 6,
          animation_speed = 0.5,
          scale = 0.78,
          tint = {1, 0.85, 0.85}
        },
        south = {
          filename = "__angelspetrochemgraphics__/graphics/entity/electrolyser/electrolyser-north.png",
          width = 224,
          height = 224,
          frame_count = 36,
          line_length = 6,
          animation_speed = 0.5,
          scale = 0.78,
          tint = {1, 0.85, 0.85}
        },
        west = {
          filename = "__angelspetrochemgraphics__/graphics/entity/electrolyser/electrolyser-east.png",
          width = 224,
          height = 224,
          frame_count = 36,
          line_length = 6,
          animation_speed = 0.5,
          scale = 0.78,
          tint = {1, 0.85, 0.85}
        }
      }
    },
    impact_category = "metal",
    working_sound = data.raw["assembling-machine"]["nullius-surge-electrolyzer-1"].working_sound,
    open_sound = data.raw["assembling-machine"]["nullius-surge-electrolyzer-1"].open_sound,
    close_sound = data.raw["assembling-machine"]["nullius-surge-electrolyzer-1"].close_sound
  }
})

data:extend({
  {
    type = "assembling-machine",
    name = "nullius-chemical-plant-1",
    icons = data.raw.item["nullius-chemical-plant-1"].icons,
	  order = "z-nullius-bbb",
    localised_description = {"entity-description.nullius-chemical-plant"},
    flags = {"placeable-neutral","placeable-player", "player-creation"},
    minable = { mining_time = 1.2, result = "nullius-chemical-plant-1"},
    max_health = 300,
    corpse = "chemical-plant-remnants",
    dying_explosion = "medium-explosion",
    collision_box = {{-1.2, -1.2}, {1.2, 1.2}},
    selection_box = {{-1.5, -1.5}, {1.5, 1.5}},
    
    fast_replaceable_group = "chemical-plant",
    next_upgrade = "nullius-chemical-plant-2",
    module_slots = 1,
    allowed_effects = {"speed", "productivity", "consumption", "pollution"},
    circuit_wire_max_distance = assembling_machine_circuit_wire_max_distance,
    circuit_connector = circuit_connector_definitions["chemical-plant"],
    graphics_set = {
      animation = make_4way_animation_from_spritesheet({ layers =
      {
        {
            filename = BASEENTITY .. "chemical-plant/chemical-plant.png",
            width = 220,
            height = 292,
            frame_count = 24,
            line_length = 12,
            shift = util.by_pixel(1.5, -9),
            scale = 0.52,
            tint = {0.75, 0.75, 0.6, 1}
        },
        {
            filename = BASEENTITY .. "chemical-plant/chemical-plant-shadow.png",
            width = 312,
            height = 222,
            repeat_count = 24,
            frame_count = 1,
            shift = util.by_pixel(27, 6),
            draw_as_shadow = true,
            scale = 0.52
        }
      }}),
      working_visualisations = {
        {
          apply_recipe_tint = "primary",
          north_animation = {
              filename = BASEENTITY .. "chemical-plant/chemical-plant-liquid-north.png",
              frame_count = 24,
              line_length = 6,
              width = 66,
              height = 44,
              shift = util.by_pixel(24, 15),
              scale = 0.52,
              animation_speed = 0.5
          },
          east_animation = {
              filename = BASEENTITY .. "chemical-plant/chemical-plant-liquid-east.png",
              frame_count = 24,
              line_length = 6,
              width = 70,
              height = 36,
              shift = util.by_pixel(1, 22),
              scale = 0.52,
              animation_speed = 0.5
          },
          south_animation = {
              filename = BASEENTITY .. "chemical-plant/chemical-plant-liquid-south.png",
              frame_count = 24,
              line_length = 6,
              width = 66,
              height = 42,
              shift = util.by_pixel(0, 17),
              scale = 0.52,
              animation_speed = 0.5
          },
          west_animation = {
              filename = BASEENTITY .. "chemical-plant/chemical-plant-liquid-west.png",
              frame_count = 24,
              line_length = 6,
              width = 74,
              height = 36,
              shift = util.by_pixel(-9, 13),
              scale = 0.52,
              animation_speed = 0.5
          }
        },
        {
          apply_recipe_tint = "secondary",
          north_animation = {
              filename = BASEENTITY .. "chemical-plant/chemical-plant-foam-north.png",
              frame_count = 24,
              line_length = 6,
              width = 62,
              height = 42,
              shift = util.by_pixel(25, 15),
              scale = 0.52,
              animation_speed = 0.5
          },
          east_animation = {
              filename = BASEENTITY .. "chemical-plant/chemical-plant-foam-east.png",
              frame_count = 24,
              line_length = 6,
              width = 68,
              height = 36,
              shift = util.by_pixel(1, 22),
              scale = 0.52,
              animation_speed = 0.5
          },
          south_animation = {
              filename = BASEENTITY .. "chemical-plant/chemical-plant-foam-south.png",
              frame_count = 24,
              line_length = 6,
              width = 60,
              height = 40,
              shift = util.by_pixel(2, 17),
              scale = 0.52,
              animation_speed = 0.5
          },
          west_animation = {
              filename = BASEENTITY .. "chemical-plant/chemical-plant-foam-west.png",
              frame_count = 24,
              line_length = 6,
              width = 68,
              height = 28,
              shift = util.by_pixel(-8, 15),
              scale = 0.52,
              animation_speed = 0.5
          }
        },
        {
          apply_recipe_tint = "primary",
          fadeout = true,
          constant_speed = true,
          north_position = util.by_pixel_hr(-30, -163),
          east_position = util.by_pixel_hr(29, -152),
          south_position = util.by_pixel_hr(12, -136),
          west_position = util.by_pixel_hr(-32, -132),
          render_layer = "wires",
          animation = {
              filename = BASEENTITY .. "chemical-plant/chemical-plant-smoke-outer.png",
              frame_count = 47,
              line_length = 16,
              width = 90,
              height = 188,
              animation_speed = 0.4,
              shift = util.by_pixel(-2, -40),
              scale = 0.52
          }
        },
        {
          apply_recipe_tint = "secondary",
          fadeout = true,
          constant_speed = true,
          north_position = util.by_pixel_hr(-30, -163),
          east_position = util.by_pixel_hr(29, -152),
          south_position = util.by_pixel_hr(12, -136),
          west_position = util.by_pixel_hr(-32, -132),
          render_layer = "wires",
          animation = {
              filename = BASEENTITY .. "chemical-plant/chemical-plant-smoke-inner.png",
              frame_count = 47,
              line_length = 16,
              width = 40,
              height = 84,
              animation_speed = 0.4,
              shift = util.by_pixel(0, -14),
              scale = 0.52
          }
        }
      }
    },
    resistances = {
      { type = "impact", decrease = 100, percent = 90 }
    },
    impact_category = "metal",
    working_sound = data.raw["assembling-machine"]["chemical-plant"].working_sound,
    open_sound = data.raw["assembling-machine"]["chemical-plant"].open_sound,
    close_sound = data.raw["assembling-machine"]["chemical-plant"].close_sound,
    crafting_speed = 1,
    energy_source = {
      type = "electric",
      usage_priority = "secondary-input",
      emissions_per_minute = {pollution = 4},
      drain = "8kW"
    },
    energy_usage = "192kW",
    crafting_categories = {"basic-chemistry"},
    fluid_boxes = {
      {
        production_type = "input",
        pipe_covers = pipecoverspictures(),
        volume = 500,
        pipe_connections = {{ flow_direction ="input", position = {-1, -1}, direction = defines.direction.north }}
      },
      {
        production_type = "input",
        pipe_covers = pipecoverspictures(),
        volume = 500,
        pipe_connections = {{ flow_direction ="input", position = {1, -1}, direction = defines.direction.north }}
      },
      {
        production_type = "input",
        pipe_covers = pipecoverspictures(),
        volume = 500,
        pipe_connections = {
          {flow_direction = "input-output", position = {-1, 0}, direction = defines.direction.west},
          {flow_direction = "input-output", position = {1, 0}, direction = defines.direction.east}
        }
      },
      {
        production_type = "output",
        pipe_covers = pipecoverspictures(),
        volume = 500,
        pipe_connections = {{ flow_direction ="output", position = {-1, 1}, direction = defines.direction.south }}
      },
      {
        production_type = "output",
        pipe_covers = pipecoverspictures(),
        volume = 500,
        pipe_connections = {{ flow_direction ="output", position = {1, 1}, direction = defines.direction.south }}
      }
    }
  }
})

data:extend({
  {
    type = "assembling-machine",
    name = "nullius-chemical-plant-2",
	  order = "z-nullius-bcb",
    icons = data.raw.item["nullius-chemical-plant-2"].icons,
    localised_description = {"entity-description.nullius-chemical-plant"},
    flags = {"placeable-neutral","placeable-player", "player-creation"},
    minable = { mining_time = 1.6, result = "nullius-chemical-plant-2"},
    max_health = 400,
    corpse = "chemical-plant-remnants",
    dying_explosion = "medium-explosion",
    collision_box = {{-1.2, -1.2}, {1.2, 1.2}},
    selection_box = {{-1.5, -1.5}, {1.5, 1.5}},
    
    module_slots = 2,
    allowed_effects = {"speed", "productivity", "consumption", "pollution"},
    fast_replaceable_group = "chemical-plant",
    next_upgrade = "nullius-chemical-plant-3",
    circuit_wire_max_distance = assembling_machine_circuit_wire_max_distance,
    circuit_connector = circuit_connector_definitions["chemical-plant"],

    graphics_set = {
      animation = make_4way_animation_from_spritesheet({ layers =
      {
        {
            filename = BASEENTITY .. "chemical-plant/chemical-plant.png",
            width = 220,
            height = 292,
            frame_count = 24,
            line_length = 12,
            shift = util.by_pixel(1.5, -9),
            scale = 0.52,
            tint = {0.8, 0.8, 1, 1}
        },
        {
            filename = BASEENTITY .. "chemical-plant/chemical-plant-shadow.png",
            width = 312,
            height = 222,
            repeat_count = 24,
            frame_count = 1,
            shift = util.by_pixel(27, 6),
            draw_as_shadow = true,
            scale = 0.52
        }
      }}),
      working_visualisations = data.raw["assembling-machine"]["nullius-chemical-plant-1"].graphics_set.working_visualisations,
    },
    resistances = {
      { type = "impact", decrease = 100, percent = 90 }
    },
    impact_category = "metal",
    working_sound = data.raw["assembling-machine"]["chemical-plant"].working_sound,
    open_sound = data.raw["assembling-machine"]["chemical-plant"].open_sound,
    close_sound = data.raw["assembling-machine"]["chemical-plant"].close_sound,
    crafting_speed = 2,
    energy_source = {
      type = "electric",
      usage_priority = "secondary-input",
      emissions_per_minute = {pollution = 4},
      drain = "16kW"
    },
    energy_usage = "384kW",
    crafting_categories = {"basic-chemistry"},
    fluid_boxes = {
      {
        production_type = "input",
        pipe_covers = pipecoverspictures(),
        volume = 500,
        pipe_connections = {{ flow_direction ="input", position = {-1, -1}, direction = defines.direction.north }}
      },
      {
        production_type = "input",
        pipe_covers = pipecoverspictures(),
        volume = 500,
        pipe_connections = {{ flow_direction ="input", position = {1, -1}, direction = defines.direction.north }}
      },
      {
        production_type = "input",
        pipe_covers = pipecoverspictures(),
        volume = 500,
        pipe_connections = {
          {flow_direction = "input-output", position = {-1, 0}, direction = defines.direction.west},
          {flow_direction = "input-output", position = {1, 0}, direction = defines.direction.east}
        }
      },
      {
        production_type = "output",
        pipe_covers = pipecoverspictures(),
        volume = 500,
        pipe_connections = {{ flow_direction ="output", position = {-1, 1}, direction = defines.direction.south }}
      },
      {
        production_type = "output",
        pipe_covers = pipecoverspictures(),
        volume = 500,
        pipe_connections = {{ flow_direction ="output", position = {1, 1}, direction = defines.direction.south }}
      }
    }
  }
})

data:extend({
  {
    type = "assembling-machine",
    name = "nullius-chemical-plant-3",
	  order = "z-nullius-bdb",
    icons = data.raw.item["nullius-chemical-plant-3"].icons,
    localised_description = {"entity-description.nullius-chemical-plant"},
    flags = {"placeable-neutral","placeable-player", "player-creation"},
    minable = { mining_time = 2, result = "nullius-chemical-plant-3"},
    max_health = 500,
    corpse = "chemical-plant-remnants",
    dying_explosion = "medium-explosion",
    collision_box = {{-1.2, -1.2}, {1.2, 1.2}},
    selection_box = {{-1.5, -1.5}, {1.5, 1.5}},
    
    module_slots = 3,
    allowed_effects = {"speed", "productivity", "consumption", "pollution"},
    fast_replaceable_group = "chemical-plant",
    circuit_wire_max_distance = assembling_machine_circuit_wire_max_distance,
    circuit_connector = circuit_connector_definitions["chemical-plant"],
    
    graphics_set = {
      animation = make_4way_animation_from_spritesheet({ layers =
      {
        {
            filename = BASEENTITY .. "chemical-plant/chemical-plant.png",
            width = 220,
            height = 292,
            frame_count = 24,
            line_length = 12,
            shift = util.by_pixel(1.5, -9),
            scale = 0.52,
        },
        {
            filename = BASEENTITY .. "chemical-plant/chemical-plant-shadow.png",
            width = 312,
            height = 222,
            repeat_count = 24,
            frame_count = 1,
            shift = util.by_pixel(27, 6),
            draw_as_shadow = true,
            scale = 0.52
        }
      }}),
      working_visualisations = data.raw["assembling-machine"]["nullius-chemical-plant-1"].graphics_set.working_visualisations,
    },
    resistances = {
      { type = "impact", decrease = 100, percent = 90 }
    },
    impact_category = "metal",
    working_sound = data.raw["assembling-machine"]["chemical-plant"].working_sound,
    open_sound = data.raw["assembling-machine"]["chemical-plant"].open_sound,
    close_sound = data.raw["assembling-machine"]["chemical-plant"].close_sound,
    crafting_speed = 4,
    energy_source = {
      type = "electric",
      usage_priority = "secondary-input",
      emissions_per_minute = {pollution = 8},
      drain = "40kW"
    },
    energy_usage = "760kW",
    crafting_categories = {"basic-chemistry"},
    fluid_boxes = {
      {
        production_type = "input",
        pipe_covers = pipecoverspictures(),
        volume = 500,
        pipe_connections = {{ flow_direction ="input", position = {-1, -1}, direction = defines.direction.north }}
      },
      {
        production_type = "input",
        pipe_covers = pipecoverspictures(),
        volume = 500,
        pipe_connections = {{ flow_direction ="input", position = {1, -1}, direction = defines.direction.north }}
      },
      {
        production_type = "input",
        pipe_covers = pipecoverspictures(),
        volume = 500,
        pipe_connections = {
          {flow_direction = "input-output", position = {-1, 0}, direction = defines.direction.west},
          {flow_direction = "input-output", position = {1, 0}, direction = defines.direction.east}
        }
      },
      {
        production_type = "output",
        pipe_covers = pipecoverspictures(),
        volume = 500,
        pipe_connections = {{ flow_direction ="output", position = {-1, 1}, direction = defines.direction.south }}
      },
      {
        production_type = "output",
        pipe_covers = pipecoverspictures(),
        volume = 500,
        pipe_connections = {{ flow_direction ="output", position = {1, 1}, direction = defines.direction.south }}
      }
    }
  }
})
