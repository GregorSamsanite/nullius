local ICONPATH = "__nullius__/graphics/icons/"
local ENTITYPATH = "__nullius__/graphics/entity/"

local BASEENTITY = "__base__/graphics/entity/"

local drill_animation_sequence = {
  1, 1, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20,
  21, 22, 23, 24, 25, 26, 27, 28, 29, 30,
  21, 22, 23, 24, 25, 26, 27, 28, 29, 30,
  21, 22, 23, 24, 25, 26, 27, 28, 29, 30,
  21, 22, 23, 24, 25, 26, 27, 28, 29, 30,
  21, 22, 23, 24, 25, 26, 27, 28, 29, 30,
  21, 22, 23, 24, 25, 26, 27, 28, 29, 30,
  21, 22, 23, 24, 25, 26, 27, 28, 29, 30,
  21, 22, 23, 24, 25, 26, 27, 28, 29, 30,
  21, 22, 23, 24, 25, 26, 27, 28, 29, 30,
  21, 22, 23, 24, 25, 26, 27, 28, 29, 30,
  21, 22, 23, 24, 25, 26, 27, 28, 29, 30,
  21, 22, 23, 24, 25, 26, 27, 28, 29, 30,
  21, 22, 23, 24, 25, 26, 27, 28, 29, 30,
  21, 22, 23, 24, 25, 26, 27, 28, 29, 30,
  21, 22, 23, 24, 25, 26, 27, 28, 29, 30,
  21, 20, 19, 18, 17, 16, 15, 14, 13, 12, 11, 10, 9, 8, 7, 6, 5, 4, 3, 2, 1, 1, 1
}

local drill_animation_shadow_sequence = {
  1, 1, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20,
  21, 21, 21, 21, 21, 21, 21, 21, 21, 21,
  21, 21, 21, 21, 21, 21, 21, 21, 21, 21,
  21, 21, 21, 21, 21, 21, 21, 21, 21, 21,
  21, 21, 21, 21, 21, 21, 21, 21, 21, 21,
  21, 21, 21, 21, 21, 21, 21, 21, 21, 21,
  21, 21, 21, 21, 21, 21, 21, 21, 21, 21,
  21, 21, 21, 21, 21, 21, 21, 21, 21, 21,
  21, 21, 21, 21, 21, 21, 21, 21, 21, 21,
  21, 21, 21, 21, 21, 21, 21, 21, 21, 21,
  21, 21, 21, 21, 21, 21, 21, 21, 21, 21,
  21, 21, 21, 21, 21, 21, 21, 21, 21, 21,
  21, 21, 21, 21, 21, 21, 21, 21, 21, 21,
  21, 21, 21, 21, 21, 21, 21, 21, 21, 21,
  21, 21, 21, 21, 21, 21, 21, 21, 21, 21,
  21, 21, 21, 21, 21, 21, 21, 21, 21, 21,
  21, 20, 19, 18, 17, 16, 15, 14, 13, 12, 11, 10, 9, 8, 7, 6, 5, 4, 3, 2, 1, 1, 1
}

data:extend({
  {
    type = "mining-drill",
    name = "nullius-small-miner-1",
    icons = data.raw.item["nullius-small-miner-1"].icons,
    localised_description = {"entity-description.nullius-miner"},
    flags = {"placeable-neutral", "player-creation"},
    resource_categories = {"basic-solid"},
    minable = {mining_time = 0.4, result = "nullius-small-miner-1"},
    max_health = 150,
    corpse = "burner-mining-drill-remnants",
    collision_box = {{ -0.75, -0.75}, {0.75, 0.75}},
    selection_box = {{ -1, -1}, {1, 1}},
    mining_speed = 0.3,
    vehicle_impact_sound =  { filename = "__base__/sound/car-metal-impact.ogg", volume = 0.65 },
    energy_source = {
      type = "electric",
      emissions_per_minute = 3,
      usage_priority = "secondary-input"
    },
    energy_usage = "75kW",
    working_sound = data.raw["mining-drill"]["burner-mining-drill"].working_sound,
    animations = data.raw["mining-drill"]["burner-mining-drill"].animations,
    resistances = {
      { type = "impact", decrease = 100, percent = 90 },
      { type = "physical", decrease = 20, percent = 50 }
    },

    monitor_visualization_tint = {r=78, g=173, b=255},
    resource_searching_radius = 0.99,
    vector_to_place_result = {-0.5, -1.3},
    fast_replaceable_group = "small-miner",
    next_upgrade = "nullius-small-miner-2",

    circuit_wire_connection_points = circuit_connector_definitions["electric-mining-drill"].points,
    circuit_connector_sprites = circuit_connector_definitions["electric-mining-drill"].sprites,
    circuit_wire_max_distance = default_circuit_wire_max_distance
  },

  {
    type = "mining-drill",
    name = "nullius-medium-miner-1",
    icons = data.raw.item["nullius-medium-miner-1"].icons,
    localised_description = {"entity-description.nullius-miner"},
    flags = {"placeable-neutral", "player-creation"},
    resource_categories = {"basic-solid"},
    minable = {mining_time = 0.6, result = "nullius-medium-miner-1"},
    max_health = 250,
    corpse = "burner-mining-drill-remnants",
    collision_box = {{ -1.25, -1.25}, {1.25, 1.25}},
    selection_box = {{ -1.5, -1.5}, {1.5, 1.5}},
    mining_speed = 0.6,
    vehicle_impact_sound =  { filename = "__base__/sound/car-metal-impact.ogg", volume = 0.65 },
    energy_source = {
      type = "electric",
      emissions_per_minute = 6,
      usage_priority = "secondary-input"
    },
    energy_usage = "150kW",
    resistances = {
      { type = "impact", decrease = 100, percent = 90 },
      { type = "physical", decrease = 20, percent = 50 }
    },

    monitor_visualization_tint = {r=78, g=173, b=255},
    resource_searching_radius = 1.49,
    vector_to_place_result = {0, -1.85},
    fast_replaceable_group = "medium-miner",
    next_upgrade = "nullius-medium-miner-2",

    working_sound = {
      sound = {
        filename = "__base__/sound/burner-mining-drill.ogg",
        volume = 1.2
      }
    },
    animations = {
      north = {
        layers = {
          {
            priority = "high",
            width = 173,
            height = 188,
            line_length = 4,
            shift = util.by_pixel(2.75*1.5, 0.75),
            filename = BASEENTITY .. "burner-mining-drill/hr-burner-mining-drill-N.png",
            frame_count = 32,
            animation_speed = 0.5,
            run_mode = "forward-then-backward",
            scale = 0.75
          },
          {
            priority = "high",
            width = 217,
            height = 150,
            line_length = 4,
            shift = util.by_pixel(23.75*1.5, -1.5),
            filename = BASEENTITY .. "burner-mining-drill/hr-burner-mining-drill-N-shadow.png",
            frame_count = 32,
            animation_speed = 0.5,
            run_mode = "forward-then-backward",
            draw_as_shadow = true,
            scale = 0.75
          }
        }
      },
      east = {
        layers = {
          {
            priority = "high",
            width = 185,
            height = 168,
            line_length = 4,
            shift = util.by_pixel(2.75*1.5, 1.5),
            filename = BASEENTITY .. "burner-mining-drill/hr-burner-mining-drill-E.png",
            frame_count = 32,
            animation_speed = 0.5,
            run_mode = "forward-then-backward",
            scale = 0.75
          },
          {
            priority = "high",
            width = 185,
            height = 128,
            line_length = 4,
            shift = util.by_pixel(13.75*1.5, 0.75),
            filename = BASEENTITY .. "burner-mining-drill/hr-burner-mining-drill-E-shadow.png",
            frame_count = 32,
            animation_speed = 0.5,
            run_mode = "forward-then-backward",
            draw_as_shadow = true,
            scale = 0.75
          }
        }
      },
      south = {
        layers = {
          {
            priority = "high",
            width = 174,
            height = 174,
            line_length = 4,
            shift = util.by_pixel(0.75, -0.75),
            filename = BASEENTITY .. "burner-mining-drill/hr-burner-mining-drill-S.png",
            frame_count = 32,
            animation_speed = 0.5,
            run_mode = "forward-then-backward",
            scale = 0.75
          },
          {
            priority = "high",
            width = 174,
            height = 137,
            line_length = 4,
            shift = util.by_pixel(16.5, 2.75*1.5),
            filename = BASEENTITY .. "burner-mining-drill/hr-burner-mining-drill-S-shadow.png",
            frame_count = 32,
            animation_speed = 0.5,
            run_mode = "forward-then-backward",
            draw_as_shadow = true,
            scale = 0.75
          }
        }
      },
      west = {
        layers = {
          {
            priority = "high",
            width = 180,
            height = 176,
            line_length = 4,
            shift = util.by_pixel(-2.25, 0),
            filename = BASEENTITY .. "burner-mining-drill/hr-burner-mining-drill-W.png",
            frame_count = 32,
            animation_speed = 0.5,
            run_mode = "forward-then-backward",
            scale = 0.75
          },
          {
            priority = "high",
            width = 176,
            height = 130,
            line_length = 4,
            shift = util.by_pixel(7.5*1.5, 1.5),
            filename = BASEENTITY .. "burner-mining-drill/hr-burner-mining-drill-W-shadow.png",
            frame_count = 32,
            animation_speed = 0.5,
            run_mode = "forward-then-backward",
            draw_as_shadow = true,
            scale = 0.75
          }
        }
      }
    },

    circuit_wire_connection_points = circuit_connector_definitions["electric-mining-drill"].points,
    circuit_connector_sprites = circuit_connector_definitions["electric-mining-drill"].sprites,
    circuit_wire_max_distance = default_circuit_wire_max_distance
  },

  {
    type = "mining-drill",
    name = "nullius-small-miner-2",
    icons = data.raw.item["nullius-small-miner-2"].icons,
    localised_description = {"entity-description.nullius-miner"},
    flags = {"placeable-neutral", "player-creation"},
    minable = {mining_time = 0.6, result = "nullius-small-miner-2"},
    max_health = 200,
    resource_categories = {"basic-solid"},
    corpse = "medium-remnants",
    dying_explosion = "electric-mining-drill-explosion",
    collision_box = {{ -0.75, -0.75}, {0.75, 0.75}},
    selection_box = {{ -1, -1}, {1, 1}},
    vector_to_place_result = {-0.35, -1.35},
    resource_searching_radius = 0.99,

    mining_speed = 0.6,
    energy_source = {
      type = "electric",
      emissions_per_minute = 6,
      usage_priority = "secondary-input"
    },
    energy_usage = "180kW",
    monitor_visualization_tint = {r=78, g=173, b=255},
    fast_replaceable_group = "small-miner",
    next_upgrade = "nullius-small-miner-3",

    damaged_trigger_effect = data.raw["mining-drill"]["electric-mining-drill"].damaged_trigger_effect,
    working_sound = data.raw["mining-drill"]["electric-mining-drill"].working_sound,
    vehicle_impact_sound = data.raw["mining-drill"]["electric-mining-drill"].vehicle_impact_sound,
    open_sound = data.raw["mining-drill"]["electric-mining-drill"].open_sound,
    close_sound = data.raw["mining-drill"]["electric-mining-drill"].close_sound,
    radius_visualisation_picture = {
      filename = BASEENTITY .. "electric-mining-drill/electric-mining-drill-radius-visualization.png",
      width = 10,
      height = 10
    },
    module_specification = { module_slots = 1 },
    allowed_effects = {"speed", "productivity", "consumption", "pollution"},
    circuit_wire_connection_points = circuit_connector_definitions["electric-mining-drill"].points,
    circuit_connector_sprites = circuit_connector_definitions["electric-mining-drill"].sprites,
    circuit_wire_max_distance = default_circuit_wire_max_distance,

    graphics_set = {
      drilling_vertical_movement_duration = 10 / 0.4,
      animation_progress = 1,
      min_animation_progress = 0,
      max_animation_progress = 30,

      status_colors = data.raw["mining-drill"]["electric-mining-drill"].graphics_set.status_colors,
      circuit_connector_layer = "object",
      circuit_connector_secondary_draw_order = { north = 14, east = 30, south = 30, west = 30 },

      animation = {
        north = {
          layers = {
            {
              priority = "high",
              filename = BASEENTITY .. "electric-mining-drill/electric-mining-drill-N.png",
              line_length = 1,
              width = 96,
              height = 104,
              frame_count = 1,
              animation_speed = 0.4,
              direction_count = 1,
              shift = util.by_pixel(0, -4*0.6666),
              repeat_count = 5,
              scale = 0.6666,
              tint = {0.6, 0.7, 0.8}
            },
            {
              priority = "high",
              filename = BASEENTITY .. "electric-mining-drill/electric-mining-drill-N-output.png",
              line_length = 5,
              width = 32,
              height = 34,
              frame_count = 5,
              animation_speed = 0.4,
              direction_count = 1,
              shift = util.by_pixel(-4*0.6666, -44*0.6666),
              scale = 0.6666
            },
            {
              priority = "high",
              filename = BASEENTITY .. "electric-mining-drill/electric-mining-drill-N-shadow.png",
              line_length = 1,
              width = 106,
              height = 104,
              frame_count = 1,
              animation_speed = 0.4,
              draw_as_shadow = true,
              shift = util.by_pixel(6*0.6666, -4*0.6666),
              repeat_count = 5,
              scale = 0.6666
            }
          }
        },
        east = {
          layers = {
            {
              priority = "high",
              filename = BASEENTITY .. "electric-mining-drill/electric-mining-drill-E.png",
              line_length = 1,
              width = 94,
              height = 94,
              frame_count = 1,
              animation_speed = 0.4,
              direction_count = 1,
              shift = util.by_pixel(0, -4*0.6666),
              repeat_count = 5,
              scale = 0.6666,
              tint = {0.6, 0.7, 0.8}
            },
            {
              priority = "high",
              filename = BASEENTITY .. "electric-mining-drill/electric-mining-drill-E-output.png",
              line_length = 5,
              width = 26,
              height = 38,
              frame_count = 5,
              animation_speed = 0.4,
              direction_count = 1,
              shift = util.by_pixel(30*0.6666, -8*0.6666),
              scale = 0.6666
            },
            {
              priority = "high",
              filename = BASEENTITY .. "electric-mining-drill/electric-mining-drill-E-shadow.png",
              line_length = 1,
              width = 112,
              height = 92,
              frame_count = 1,
              animation_speed = 0.4,
              draw_as_shadow = true,
              shift = util.by_pixel(10*0.6666, 2*0.6666),
              repeat_count = 5,
              scale = 0.6666
            }
          }
        },
        south = {
          layers = {
            {
              priority = "high",
              filename = BASEENTITY .. "electric-mining-drill/electric-mining-drill-S.png",
              line_length = 1,
              width = 92,
              height = 98,
              frame_count = 1,
              animation_speed = 0.4,
              direction_count = 1,
              shift = util.by_pixel(0, -2*0.6666),
              repeat_count = 5,
              scale = 0.6666,
              tint = {0.6, 0.7, 0.8}
            },
            {
              priority = "high",
              filename = BASEENTITY .. "electric-mining-drill/electric-mining-drill-S-shadow.png",
              line_length = 1,
              width = 106,
              height = 102,
              frame_count = 1,
              animation_speed = 0.4,
              draw_as_shadow = true,
              shift = util.by_pixel(6*0.6666, 2*0.6666),
              repeat_count = 5,
              scale = 0.6666
            }
          }
        },
        west = {
          layers = {
            {
              priority = "high",
              filename = BASEENTITY .. "electric-mining-drill/electric-mining-drill-W.png",
              line_length = 1,
              width = 96,
              height = 94,
              frame_count = 1,
              animation_speed = 0.4,
              direction_count = 1,
              shift = util.by_pixel(0, -4*0.6666),
              repeat_count = 5,
              scale = 0.6666,
              tint = {0.6, 0.7, 0.8}
            },
            {
              priority = "high",
              filename = BASEENTITY .. "electric-mining-drill/electric-mining-drill-W-output.png",
              line_length = 5,
              width = 24,
              height = 28,
              frame_count = 5,
              animation_speed = 0.4,
              direction_count = 1,
              shift = util.by_pixel(-30*0.6666, -12*0.6666),
              scale = 0.6666
            },
            {
              priority = "high",
              filename = BASEENTITY .. "electric-mining-drill/electric-mining-drill-W-shadow.png",
              line_length = 1,
              width = 102,
              height = 92,
              frame_count = 1,
              animation_speed = 0.4,
              draw_as_shadow = true,
              shift = util.by_pixel(-6*0.6666, 2*0.6666),
              repeat_count = 5,
              scale = 0.6666
            }
          }
        },
      },

      shift_animation_waypoints = data.raw["mining-drill"]["electric-mining-drill"].graphics_set.shift_animation_waypoints,
      shift_animation_waypoint_stop_duration = 195 / 0.4,
      shift_animation_transition_duration = 30 / 0.4,

      working_visualisations = {
        {
          constant_speed = true,
          synced_fadeout = true,
          align_to_waypoint = true,
          apply_tint = "resource-color",
          animation = {
            priority = "high",
            filename = BASEENTITY .. "electric-mining-drill/electric-mining-drill-smoke.png",
            line_length = 6,
            width = 24,
            height = 38,
            frame_count = 30,
            animation_speed = 0.4,
            direction_count = 1,
            shift = util.by_pixel(0, 2*0.6666),
            scale = 0.6666
          },
          north_position = { 0, 0.25*0.6666 },
          east_position = { 0, 0 },
          south_position = { 0, 0.25*0.6666 },
          west_position = { 0, 0 },
        },

        {
          constant_speed = true,
          fadeout = true,
          apply_tint = "resource-color",
          north_animation = {
            layers = {
              {
                priority = "high",
                filename = BASEENTITY .. "electric-mining-drill/electric-mining-drill-N-smoke.png",
                line_length = 5,
                width = 24,
                height = 30,
                frame_count = 10,
                animation_speed = 0.4,
                direction_count = 1,
                shift = util.by_pixel(-2*0.6666, -44*0.6666),
                scale = 0.6666
              }
            }
          },
          east_animation = nil,
          south_animation = nil,
          west_animation = nil,
        },

        -- drill back animation
        {
          animated_shift = true,
          always_draw = true,
          north_animation = {
            layers = {
              {
                priority = "high",
                filename = BASEENTITY .. "electric-mining-drill/electric-mining-drill.png",
                line_length = 6,
                width = 84,
                height = 80,
                frame_count = 30,
                animation_speed = 0.4,
                frame_sequence = drill_animation_sequence,
                direction_count = 1,
                shift = util.by_pixel(0, -12*0.6666),
                scale = 0.6666,
                tint = {0.6, 0.7, 0.8}
              },
              {
                priority = "high",
                filename = BASEENTITY .. "electric-mining-drill/electric-mining-drill-shadow.png",
                line_length = 7,
                width = 112,
                height = 26,
                frame_count = 21,
                animation_speed = 0.4,
                frame_sequence = drill_animation_shadow_sequence,
                draw_as_shadow = true,
                shift = util.by_pixel(20*0.6666, 6*0.6666),
                scale = 0.6666
              }
            }
          },
          east_animation = {
            layers = {
              {
                priority = "high",
                filename = BASEENTITY .. "electric-mining-drill/electric-mining-drill-horizontal.png",
                line_length = 6,
                width = 40,
                height = 80,
                frame_count = 30,
                animation_speed = 0.4,
                frame_sequence = drill_animation_sequence,
                direction_count = 1,
                shift = util.by_pixel(2*0.6666, -12*0.6666),
                scale = 0.6666,
                tint = {0.6, 0.7, 0.8}
              },
              {
                priority = "high",
                filename = BASEENTITY .. "electric-mining-drill/electric-mining-drill-horizontal-shadow.png",
                line_length = 7,
                width = 92,
                height = 80,
                frame_count = 21,
                animation_speed = 0.4,
                frame_sequence = drill_animation_shadow_sequence,
                draw_as_shadow = true,
                shift = util.by_pixel(32*0.6666, 2*0.6666),
                scale = 0.6666
              }
            }
          },
          south_animation = {
            layers = {
              {
                priority = "high",
                filename = BASEENTITY .. "electric-mining-drill/electric-mining-drill.png",
                line_length = 6,
                width = 84,
                height = 80,
                frame_count = 30,
                animation_speed = 0.4,
                frame_sequence = drill_animation_sequence,
                direction_count = 1,
                shift = util.by_pixel(0, -12*0.6666),
                scale = 0.6666,
                tint = {0.6, 0.7, 0.8}
              },
              {
                priority = "high",
                filename = BASEENTITY .. "electric-mining-drill/electric-mining-drill-shadow.png",
                line_length = 7,
                width = 112,
                height = 26,
                frame_count = 21,
                animation_speed = 0.4,
                frame_sequence = drill_animation_shadow_sequence,
                draw_as_shadow = true,
                shift = util.by_pixel(20*0.6666, 6*0.6666),
                scale = 0.6666
              }
            }
          },
          west_animation = {
            layers = {
              {
                priority = "high",
                filename = BASEENTITY .. "electric-mining-drill/electric-mining-drill-horizontal.png",
                line_length = 6,
                width = 40,
                height = 80,
                frame_count = 30,
                animation_speed = 0.4,
                frame_sequence = drill_animation_sequence,
                direction_count = 1,
                shift = util.by_pixel(2*0.6666, -12*0.6666),
                scale = 0.6666,
                tint = {0.6, 0.7, 0.8}
              },
              {
                priority = "high",
                filename = BASEENTITY .. "electric-mining-drill/electric-mining-drill-horizontal-shadow.png",
                line_length = 7,
                width = 92,
                height = 80,
                frame_count = 21,
                animation_speed = 0.4,
                frame_sequence = drill_animation_shadow_sequence,
                draw_as_shadow = true,
                shift = util.by_pixel(32*0.6666, 2*0.6666),
                scale = 0.6666
              }
            }
          },
        },

        -- dust animation 2
        {
          constant_speed = true,
          synced_fadeout = true,
          align_to_waypoint = true,
          apply_tint = "resource-color",
          animation = {
            priority = "high",
            filename = BASEENTITY .. "electric-mining-drill/electric-mining-drill-smoke-front.png",
            line_length = 6,
            width = 76,
            height = 68,
            frame_count = 30,
            animation_speed = 0.4,
            direction_count = 1,
            shift = util.by_pixel(-4*0.6666, 8*0.6666),
            scale = 0.6666
          },
          north_position = { 0, 0.25*0.6666 },
          east_position = { 0, 0 },
          south_position = { 0, 0.25*0.6666 },
          west_position = { 0, 0 },
        },

        -- dust animation directional 2
        {
          constant_speed = true,
          fadeout = true,
          apply_tint = "resource-color",
          north_animation = nil,
          east_animation = {
            layers = {
              {
                priority = "high",
                filename = BASEENTITY .. "electric-mining-drill/electric-mining-drill-E-smoke.png",
                line_length = 5,
                width = 24,
                height = 28,
                frame_count = 10,
                animation_speed = 0.4,
                direction_count = 1,
                shift = util.by_pixel(24*0.6666, -12*0.6666),
                scale = 0.6666
              }
            }
          },
          south_animation = {
            layers = {
              {
                priority = "high",
                filename = BASEENTITY .. "electric-mining-drill/electric-mining-drill-S-smoke.png",
                line_length = 5,
                width = 24,
                height = 18,
                frame_count = 10,
                animation_speed = 0.4,
                direction_count = 1,
                shift = util.by_pixel(-2*0.6666, 20*0.6666),
                scale = 0.6666
              }
            }
          },
          west_animation = {
            layers = {
              {
                priority = "high",
                filename = BASEENTITY .. "electric-mining-drill/electric-mining-drill-W-smoke.png",
                line_length = 5,
                width = 26,
                height = 30,
                frame_count = 10,
                animation_speed = 0.4,
                direction_count = 1,
                shift = util.by_pixel(-26*0.6666, -12*0.6666),
                scale = 0.6666
              }
            }
          }
        },

        -- drill front animation
        {
          animated_shift = true,
          always_draw = true,
          east_animation = {
            priority = "high",
            filename = BASEENTITY .. "electric-mining-drill/electric-mining-drill-horizontal-front.png",
            line_length = 6,
            width = 32,
            height = 76,
            frame_count = 30,
            animation_speed = 0.4,
            frame_sequence = drill_animation_sequence,
            direction_count = 1,
            shift = util.by_pixel(-2*0.6666, 4*0.6666),
            scale = 0.6666,
            tint = {0.6, 0.7, 0.8}
          },
          west_animation = {
            priority = "high",
            filename = BASEENTITY .. "electric-mining-drill/electric-mining-drill-horizontal-front.png",
            line_length = 6,
            width = 32,
            height = 76,
            frame_count = 30,
            animation_speed = 0.4,
            frame_sequence = drill_animation_sequence,
            direction_count = 1,
            shift = util.by_pixel(-2*0.6666, 4*0.6666),
            scale = 0.6666,
            tint = {0.6, 0.7, 0.8}
          }
        },

        -- front frame
        {
          always_draw = true,
          north_animation = nil,
          east_animation = {
            priority = "high",
            filename = BASEENTITY .. "electric-mining-drill/electric-mining-drill-E-front.png",
            line_length = 1,
            width = 66,
            height = 74,
            frame_count = 1,
            animation_speed = 0.4,
            direction_count = 1,
            shift = util.by_pixel(22*0.6666, 10*0.6666),
            scale = 0.6666,
            tint = {0.6, 0.7, 0.8}
          },
          south_animation = {
            layers = {
              {
                priority = "high",
                filename = BASEENTITY .. "electric-mining-drill/electric-mining-drill-S-output.png",
                line_length = 5,
                width = 44,
                height = 28,
                frame_count = 5,
                animation_speed = 0.4,
                shift = util.by_pixel(-2*0.6666, 34*0.6666),
                scale = 0.6666
              },
              {
                priority = "high",
                filename = BASEENTITY .. "electric-mining-drill/electric-mining-drill-S-front.png",
                line_length = 1,
                width = 96,
                height = 54,
                frame_count = 1,
                animation_speed = 0.4,
                repeat_count = 5,
                shift = util.by_pixel(0, 26*0.6666),
                scale = 0.6666,
                tint = {0.6, 0.7, 0.8}
              }
            }
          },
          west_animation = {
            priority = "high",
            filename = BASEENTITY .. "electric-mining-drill/electric-mining-drill-W-front.png",
            line_length = 1,
            width = 68,
            height = 70,
            frame_count = 1,
            animation_speed = 0.4,
            direction_count = 1,
            shift = util.by_pixel(-22*0.6666, 12*0.6666),
            scale = 0.6666,
            tint = {0.6, 0.7, 0.8}
          }
        },

        -- LEDs
        {
          apply_tint = "status",
          always_draw = true,
          draw_as_sprite = true,
          draw_as_light = true,
          north_animation = {
            filename = BASEENTITY .. "electric-mining-drill/electric-mining-drill-N-light.png",
            width = 16,
            height = 16,
            blend_mode = nil,
            tint = {1,1,1,0.5},
            shift = util.by_pixel(26*0.6666, -48*0.6666),
            scale = 0.6666
          },
          east_animation = {
            filename = BASEENTITY .. "electric-mining-drill/electric-mining-drill-E-light.png",
            width = 16,
            height = 18,
            blend_mode = nil,
            tint = {1,1,1,0.5},
            shift = util.by_pixel(38*0.6666, -32*0.6666),
            scale = 0.6666
          },
          south_animation = {
            filename = BASEENTITY .. "electric-mining-drill/electric-mining-drill-S-light.png",
            width = 20,
            height = 24,
            blend_mode = nil,
            tint = {1,1,1,0.5},
            shift = util.by_pixel(26*0.6666, 26*0.6666),
            scale = 0.6666
          },
          west_animation = {
            filename = BASEENTITY .. "electric-mining-drill/electric-mining-drill-W-light.png",
            width = 18,
            height = 18,
            blend_mode = nil,
            tint = {1,1,1,0.5},
            shift = util.by_pixel(-40*0.6666, -32*0.6666),
            scale = 0.6666
          }
        },

        -- light
        {
          light = {intensity = 1, size = 3, color={r=1, g=1, b=1}, minimum_darkness = 0.1},
          north_position = {0.8*0.6666, -1.5*0.6666},
          east_position = {1.2*0.6666, -1*0.6666},
          south_position = {0.8*0.6666, 0.8*0.6666},
          west_position = {-1.2*0.6666, -1*0.6666}
        },
        {
          always_draw = true,
          apply_tint = "status",
          light = { intensity = 0.8, size = 1.5, color={r=1, g=1, b=1}, minimum_darkness = 0.1 },
          north_position = {0.8*0.6666, -1.5*0.6666},
          east_position = {1.2*0.6666, -1*0.6666},
          south_position = {0.8*0.6666, 0.8*0.6666},
          west_position = {-1.2*0.6666, -1*0.6666}
        }
      }
    }
  }
})

data:extend({
  {
    type = "mining-drill",
    name = "nullius-small-miner-3",
    icons = data.raw.item["nullius-small-miner-3"].icons,
    localised_description = {"entity-description.nullius-miner"},
    flags = {"placeable-neutral", "player-creation"},
    minable = {mining_time = 0.8, result = "nullius-small-miner-3"},
    max_health = 250,
    resource_categories = {"basic-solid"},
    corpse = "medium-remnants",
    dying_explosion = "electric-mining-drill-explosion",
    collision_box = {{ -0.75, -0.75}, {0.75, 0.75}},
    selection_box = {{ -1, -1}, {1, 1}},
    vector_to_place_result = {-0.35, -1.35},
    resource_searching_radius = 0.99,

    mining_speed = 1.2,
    energy_source = {
      type = "electric",
      emissions_per_minute = 12,
      usage_priority = "secondary-input"
    },
    energy_usage = "400kW",
    monitor_visualization_tint = {r=78, g=173, b=255},
    fast_replaceable_group = "small-miner",
    base_productivity = 0.05,

    damaged_trigger_effect = data.raw["mining-drill"]["electric-mining-drill"].damaged_trigger_effect,
    working_sound = data.raw["mining-drill"]["electric-mining-drill"].working_sound,
    vehicle_impact_sound = data.raw["mining-drill"]["electric-mining-drill"].vehicle_impact_sound,
    open_sound = data.raw["mining-drill"]["electric-mining-drill"].open_sound,
    close_sound = data.raw["mining-drill"]["electric-mining-drill"].close_sound,
    radius_visualisation_picture = data.raw["mining-drill"]["nullius-small-miner-2"].radius_visualisation_picture,
    module_specification = { module_slots = 2 },
    allowed_effects = {"speed", "productivity", "consumption", "pollution"},
    circuit_wire_connection_points = circuit_connector_definitions["electric-mining-drill"].points,
    circuit_connector_sprites = circuit_connector_definitions["electric-mining-drill"].sprites,
    circuit_wire_max_distance = default_circuit_wire_max_distance,

    graphics_set = {
      drilling_vertical_movement_duration = 10 / 0.4,
      animation_progress = 1,
      min_animation_progress = 0,
      max_animation_progress = 30,

      status_colors = data.raw["mining-drill"]["electric-mining-drill"].graphics_set.status_colors,
      circuit_connector_layer = "object",
      circuit_connector_secondary_draw_order = { north = 14, east = 30, south = 30, west = 30 },

      animation = {
        north = {
          layers = {
            {
              priority = "high",
              filename = BASEENTITY .. "electric-mining-drill/electric-mining-drill-N.png",
              line_length = 1,
              width = 96,
              height = 104,
              frame_count = 1,
              animation_speed = 0.4,
              direction_count = 1,
              shift = util.by_pixel(0, -4*0.6666),
              repeat_count = 5,
              scale = 0.6666
            },
            data.raw["mining-drill"]["nullius-small-miner-2"].graphics_set.animation.north.layers[2],
            data.raw["mining-drill"]["nullius-small-miner-2"].graphics_set.animation.north.layers[3]
          }
        },
        east = {
          layers = {
            {
              priority = "high",
              filename = BASEENTITY .. "electric-mining-drill/electric-mining-drill-E.png",
              line_length = 1,
              width = 94,
              height = 94,
              frame_count = 1,
              animation_speed = 0.4,
              direction_count = 1,
              shift = util.by_pixel(0, -4*0.6666),
              repeat_count = 5,
              scale = 0.6666
            },
            data.raw["mining-drill"]["nullius-small-miner-2"].graphics_set.animation.east.layers[2],
            data.raw["mining-drill"]["nullius-small-miner-2"].graphics_set.animation.east.layers[3]
          }
        },
        south = {
          layers = {
            {
              priority = "high",
              filename = BASEENTITY .. "electric-mining-drill/electric-mining-drill-S.png",
              line_length = 1,
              width = 92,
              height = 98,
              frame_count = 1,
              animation_speed = 0.4,
              direction_count = 1,
              shift = util.by_pixel(0, -2*0.6666),
              repeat_count = 5,
              scale = 0.6666
            },
            data.raw["mining-drill"]["nullius-small-miner-2"].graphics_set.animation.west.layers[2]
          }
        },
        west = {
          layers = {
            {
              priority = "high",
              filename = BASEENTITY .. "electric-mining-drill/electric-mining-drill-W.png",
              line_length = 1,
              width = 96,
              height = 94,
              frame_count = 1,
              animation_speed = 0.4,
              direction_count = 1,
              shift = util.by_pixel(0, -4*0.6666),
              repeat_count = 5,
              scale = 0.6666
            },
            data.raw["mining-drill"]["nullius-small-miner-2"].graphics_set.animation.west.layers[2],
            data.raw["mining-drill"]["nullius-small-miner-2"].graphics_set.animation.west.layers[3]
          }
        },
      },

      shift_animation_waypoints = data.raw["mining-drill"]["electric-mining-drill"].graphics_set.shift_animation_waypoints,
      shift_animation_waypoint_stop_duration = 195 / 0.4,
      shift_animation_transition_duration = 30 / 0.4,

      working_visualisations = {
        data.raw["mining-drill"]["nullius-small-miner-2"].graphics_set.working_visualisations[1],
        data.raw["mining-drill"]["nullius-small-miner-2"].graphics_set.working_visualisations[2],

        -- drill back animation
        {
          animated_shift = true,
          always_draw = true,
          north_animation = {
            layers = {
              {
                priority = "high",
                filename = BASEENTITY .. "electric-mining-drill/electric-mining-drill.png",
                line_length = 6,
                width = 84,
                height = 80,
                frame_count = 30,
                animation_speed = 0.4,
                frame_sequence = drill_animation_sequence,
                direction_count = 1,
                shift = util.by_pixel(0, -12*0.6666),
                scale = 0.6666
              },
              data.raw["mining-drill"]["nullius-small-miner-2"].graphics_set.working_visualisations[3].north_animation.layers[2]
            }
          },
          east_animation = {
            layers = {
              {
                priority = "high",
                filename = BASEENTITY .. "electric-mining-drill/electric-mining-drill-horizontal.png",
                line_length = 6,
                width = 40,
                height = 80,
                frame_count = 30,
                animation_speed = 0.4,
                frame_sequence = drill_animation_sequence,
                direction_count = 1,
                shift = util.by_pixel(2*0.6666, -12*0.6666),
                scale = 0.6666
              },
              data.raw["mining-drill"]["nullius-small-miner-2"].graphics_set.working_visualisations[3].east_animation.layers[2]
            }
          },
          south_animation = {
            layers = {
              {
                priority = "high",
                filename = BASEENTITY .. "electric-mining-drill/electric-mining-drill.png",
                line_length = 6,
                width = 84,
                height = 80,
                frame_count = 30,
                animation_speed = 0.4,
                frame_sequence = drill_animation_sequence,
                direction_count = 1,
                shift = util.by_pixel(0, -12*0.6666),
                scale = 0.6666
              },
              data.raw["mining-drill"]["nullius-small-miner-2"].graphics_set.working_visualisations[3].south_animation.layers[2]
            }
          },
          west_animation = {
            layers = {
              {
                priority = "high",
                filename = BASEENTITY .. "electric-mining-drill/electric-mining-drill-horizontal.png",
                line_length = 6,
                width = 40,
                height = 80,
                frame_count = 30,
                animation_speed = 0.4,
                frame_sequence = drill_animation_sequence,
                direction_count = 1,
                shift = util.by_pixel(2*0.6666, -12*0.6666),
                scale = 0.6666
              },
              data.raw["mining-drill"]["nullius-small-miner-2"].graphics_set.working_visualisations[3].west_animation.layers[2]
            }
          },
        },

        data.raw["mining-drill"]["nullius-small-miner-2"].graphics_set.working_visualisations[4],
        data.raw["mining-drill"]["nullius-small-miner-2"].graphics_set.working_visualisations[5],

        -- drill front animation
        {
          animated_shift = true,
          always_draw = true,
          east_animation = {
            priority = "high",
            filename = BASEENTITY .. "electric-mining-drill/electric-mining-drill-horizontal-front.png",
            line_length = 6,
            width = 32,
            height = 76,
            frame_count = 30,
            animation_speed = 0.4,
            frame_sequence = drill_animation_sequence,
            direction_count = 1,
            shift = util.by_pixel(-2*0.6666, 4*0.6666),
            scale = 0.6666
          },
          west_animation = {
            priority = "high",
            filename = BASEENTITY .. "electric-mining-drill/electric-mining-drill-horizontal-front.png",
            line_length = 6,
            width = 32,
            height = 76,
            frame_count = 30,
            animation_speed = 0.4,
            frame_sequence = drill_animation_sequence,
            direction_count = 1,
            shift = util.by_pixel(-2*0.6666, 4*0.6666),
            scale = 0.6666
          }
        },

        -- front frame
        {
          always_draw = true,
          north_animation = nil,
          east_animation = {
            priority = "high",
            filename = BASEENTITY .. "electric-mining-drill/electric-mining-drill-E-front.png",
            line_length = 1,
            width = 66,
            height = 74,
            frame_count = 1,
            animation_speed = 0.4,
            direction_count = 1,
            shift = util.by_pixel(22*0.6666, 10*0.6666),
            scale = 0.6666
          },
          south_animation = {
            layers = {
              data.raw["mining-drill"]["nullius-small-miner-2"].graphics_set.working_visualisations[7].south_animation.layers[1],
              {
                priority = "high",
                filename = BASEENTITY .. "electric-mining-drill/electric-mining-drill-S-front.png",
                line_length = 1,
                width = 96,
                height = 54,
                frame_count = 1,
                animation_speed = 0.4,
                repeat_count = 5,
                shift = util.by_pixel(0, 26*0.6666),
                scale = 0.6666
              }
            }
          },
          west_animation = {
            priority = "high",
            filename = BASEENTITY .. "electric-mining-drill/electric-mining-drill-W-front.png",
            line_length = 1,
            width = 68,
            height = 70,
            frame_count = 1,
            animation_speed = 0.4,
            direction_count = 1,
            shift = util.by_pixel(-22*0.6666, 12*0.6666),
            scale = 0.6666
          }
        },

        data.raw["mining-drill"]["nullius-small-miner-2"].graphics_set.working_visualisations[8],
        data.raw["mining-drill"]["nullius-small-miner-2"].graphics_set.working_visualisations[9],
        data.raw["mining-drill"]["nullius-small-miner-2"].graphics_set.working_visualisations[10]
      }
    }
  },

  {
    type = "mining-drill",
    name = "nullius-medium-miner-2",
    icons = data.raw.item["nullius-medium-miner-2"].icons,
    localised_description = {"entity-description.nullius-miner"},
    flags = {"placeable-neutral", "player-creation"},
    minable = {mining_time = 0.9, result = "nullius-medium-miner-2"},
    max_health = 300,
    resource_categories = {"basic-solid"},
    corpse = "medium-remnants",
    dying_explosion = "electric-mining-drill-explosion",
    collision_box = {{ -1.25, -1.25}, {1.25, 1.25}},
    selection_box = {{ -1.5, -1.5}, {1.5, 1.5}},
    vector_to_place_result = {0, -1.85},
    resource_searching_radius = 2.49,

    mining_speed = 1,
    energy_source = {
      type = "electric",
      emissions_per_minute = 10,
      usage_priority = "secondary-input"
    },
    energy_usage = "300kW",
    module_specification = { module_slots = 1 },
    allowed_effects = {"speed", "productivity", "consumption", "pollution"},

    radius_visualisation_picture = data.raw["mining-drill"]["electric-mining-drill"].radius_visualisation_picture,
    monitor_visualization_tint = {r=78, g=173, b=255},
    fast_replaceable_group = "medium-miner",
    next_upgrade = "nullius-medium-miner-3",
    damaged_trigger_effect = data.raw["mining-drill"]["electric-mining-drill"].damaged_trigger_effect,
    working_sound = data.raw["mining-drill"]["electric-mining-drill"].working_sound,
    vehicle_impact_sound = data.raw["mining-drill"]["electric-mining-drill"].vehicle_impact_sound,
    open_sound = data.raw["mining-drill"]["electric-mining-drill"].open_sound,
    close_sound = data.raw["mining-drill"]["electric-mining-drill"].close_sound,
    circuit_wire_connection_points = circuit_connector_definitions["electric-mining-drill"].points,
    circuit_connector_sprites = circuit_connector_definitions["electric-mining-drill"].sprites,
    circuit_wire_max_distance = default_circuit_wire_max_distance,

    graphics_set = {
      drilling_vertical_movement_duration = 10 / 0.4,
      animation_progress = 1,
      min_animation_progress = 0,
      max_animation_progress = 30,
      status_colors = data.raw["mining-drill"]["electric-mining-drill"].graphics_set.status_colors,
      circuit_connector_layer = "object",
      circuit_connector_secondary_draw_order = { north = 14, east = 30, south = 30, west = 30 },

      animation = {
        north = {
          layers = {
            {
              priority = "high",
              filename = BASEENTITY .. "electric-mining-drill/electric-mining-drill-N.png",
              line_length = 1,
              width = 96,
              height = 104,
              frame_count = 1,
              animation_speed = 0.4,
              direction_count = 1,
              shift = util.by_pixel(0, -4),
              repeat_count = 5,
              tint = {0.6, 0.7, 0.8},
              hr_version = {
                priority = "high",
                filename = BASEENTITY .. "electric-mining-drill/hr-electric-mining-drill-N.png",
                line_length = 1,
                width = 190,
                height = 208,
                frame_count = 1,
                animation_speed = 0.4,
                direction_count = 1,
                shift = util.by_pixel(0, -4),
                repeat_count = 5,
                scale = 0.5,
                tint = {0.6, 0.7, 0.8}
              }
            },
            data.raw["mining-drill"]["electric-mining-drill"].graphics_set.animation.north.layers[2],
            data.raw["mining-drill"]["electric-mining-drill"].graphics_set.animation.north.layers[3]
          }
        },
        east = {
          layers = {
            {
              priority = "high",
              filename = BASEENTITY .. "electric-mining-drill/electric-mining-drill-E.png",
              line_length = 1,
              width = 96,
              height = 94,
              frame_count = 1,
              animation_speed = 0.4,
              direction_count = 1,
              shift = util.by_pixel(0, -4),
              repeat_count = 5,
              tint = {0.6, 0.7, 0.8},
              hr_version = {
                priority = "high",
                filename = BASEENTITY .. "electric-mining-drill/hr-electric-mining-drill-E.png",
                line_length = 1,
                width = 192,
                height = 188,
                frame_count = 1,
                animation_speed = 0.4,
                direction_count = 1,
                shift = util.by_pixel(0, -4),
                repeat_count = 5,
                scale = 0.5,
                tint = {0.6, 0.7, 0.8}
              }
            },
            data.raw["mining-drill"]["electric-mining-drill"].graphics_set.animation.east.layers[2],
            data.raw["mining-drill"]["electric-mining-drill"].graphics_set.animation.east.layers[3]
          }
        },
        south = {
          layers = {
            {
              priority = "high",
              filename = BASEENTITY .. "electric-mining-drill/electric-mining-drill-S.png",
              line_length = 1,
              width = 92,
              height = 98,
              frame_count = 1,
              animation_speed = 0.4,
              direction_count = 1,
              shift = util.by_pixel(0, -2),
              repeat_count = 5,
              tint = {0.6, 0.7, 0.8},
              hr_version = {
                priority = "high",
                filename = BASEENTITY .. "electric-mining-drill/hr-electric-mining-drill-S.png",
                line_length = 1,
                width = 184,
                height = 192,
                frame_count = 1,
                animation_speed = 0.4,
                direction_count = 1,
                shift = util.by_pixel(0, -1),
                repeat_count = 5,
                scale = 0.5,
                tint = {0.6, 0.7, 0.8}
              }
            },
            data.raw["mining-drill"]["electric-mining-drill"].graphics_set.animation.south.layers[2]
          }
        },
        west = {
          layers = {
            {
              priority = "high",
              filename = BASEENTITY .. "electric-mining-drill/electric-mining-drill-W.png",
              line_length = 1,
              width = 96,
              height = 94,
              frame_count = 1,
              animation_speed = 0.4,
              direction_count = 1,
              shift = util.by_pixel(0, -4),
              repeat_count = 5,
              tint = {0.6, 0.7, 0.8},
              hr_version = {
                priority = "high",
                filename = BASEENTITY .. "electric-mining-drill/hr-electric-mining-drill-W.png",
                line_length = 1,
                width = 192,
                height = 188,
                frame_count = 1,
                animation_speed = 0.4,
                direction_count = 1,
                shift = util.by_pixel(0, -4),
                repeat_count = 5,
                scale = 0.5,
                tint = {0.6, 0.7, 0.8}
              }
            },
            data.raw["mining-drill"]["electric-mining-drill"].graphics_set.animation.west.layers[2],
            data.raw["mining-drill"]["electric-mining-drill"].graphics_set.animation.west.layers[3]
          }
        },
      },

      shift_animation_waypoints = data.raw["mining-drill"]["electric-mining-drill"].graphics_set.shift_animation_waypoints,
      shift_animation_waypoint_stop_duration = 195 / 0.4,
      shift_animation_transition_duration = 30 / 0.4,

      working_visualisations = {
        data.raw["mining-drill"]["electric-mining-drill"].graphics_set.working_visualisations[1],
        data.raw["mining-drill"]["electric-mining-drill"].graphics_set.working_visualisations[2],

        -- drill back animation
        {
          animated_shift = true,
          always_draw = true,
          north_animation = {
            layers = {
              {
                priority = "high",
                filename = BASEENTITY .. "electric-mining-drill/electric-mining-drill.png",
                line_length = 6,
                width = 84,
                height = 80,
                frame_count = 30,
                animation_speed = 0.4,
                frame_sequence = drill_animation_sequence,
                direction_count = 1,
                shift = util.by_pixel(0, -12),
                tint = {0.6, 0.7, 0.8},
                hr_version = {
                  priority = "high",
                  filename = BASEENTITY .. "electric-mining-drill/hr-electric-mining-drill.png",
                  line_length = 6,
                  width = 162,
                  height = 156,
                  frame_count = 30,
                  animation_speed = 0.4,
                  frame_sequence = drill_animation_sequence,
                  direction_count = 1,
                  shift = util.by_pixel(1, -11),
                  scale = 0.5,
                  tint = {0.6, 0.7, 0.8}
                }
              },
              data.raw["mining-drill"]["electric-mining-drill"].graphics_set.working_visualisations[3].north_animation.layers[2]
            }
          },
          east_animation = {
            layers = {
              {
                priority = "high",
                filename = BASEENTITY .. "electric-mining-drill/electric-mining-drill-horizontal.png",
                line_length = 6,
                width = 40,
                height = 80,
                frame_count = 30,
                animation_speed = 0.4,
                frame_sequence = drill_animation_sequence,
                direction_count = 1,
                shift = util.by_pixel(2, -12),
                tint = {0.6, 0.7, 0.8},
                hr_version = {
                  priority = "high",
                  filename = BASEENTITY .. "electric-mining-drill/hr-electric-mining-drill-horizontal.png",
                  line_length = 6,
                  width = 80,
                  height = 160,
                  frame_count = 30,
                  animation_speed = 0.4,
                  frame_sequence = drill_animation_sequence,
                  direction_count = 1,
                  shift = util.by_pixel(2, -12),
                  scale = 0.5,
                  tint = {0.6, 0.7, 0.8}
                }
              },
              data.raw["mining-drill"]["electric-mining-drill"].graphics_set.working_visualisations[3].east_animation.layers[2]
            }
          },
          south_animation = {
            layers = {
              {
                priority = "high",
                filename = BASEENTITY .. "electric-mining-drill/electric-mining-drill.png",
                line_length = 6,
                width = 84,
                height = 80,
                frame_count = 30,
                animation_speed = 0.4,
                frame_sequence = drill_animation_sequence,
                direction_count = 1,
                shift = util.by_pixel(0, -12),
                tint = {0.6, 0.7, 0.8},
                hr_version = {
                  priority = "high",
                  filename = BASEENTITY .. "electric-mining-drill/hr-electric-mining-drill.png",
                  line_length = 6,
                  width = 162,
                  height = 156,
                  frame_count = 30,
                  animation_speed = 0.4,
                  frame_sequence = drill_animation_sequence,
                  direction_count = 1,
                  shift = util.by_pixel(1, -11),
                  scale = 0.5,
                  tint = {0.6, 0.7, 0.8}
                }
              },
              data.raw["mining-drill"]["electric-mining-drill"].graphics_set.working_visualisations[3].south_animation.layers[2]
            }
          },
          west_animation = {
            layers = {
              {
                priority = "high",
                filename = BASEENTITY .. "electric-mining-drill/electric-mining-drill-horizontal.png",
                line_length = 6,
                width = 40,
                height = 80,
                frame_count = 30,
                animation_speed = 0.4,
                frame_sequence = drill_animation_sequence,
                direction_count = 1,
                shift = util.by_pixel(2, -12),
                tint = {0.6, 0.7, 0.8},
                hr_version = {
                  priority = "high",
                  filename = BASEENTITY .. "electric-mining-drill/hr-electric-mining-drill-horizontal.png",
                  line_length = 6,
                  width = 80,
                  height = 160,
                  frame_count = 30,
                  animation_speed = 0.4,
                  frame_sequence = drill_animation_sequence,
                  direction_count = 1,
                  shift = util.by_pixel(2, -12),
                  scale = 0.5,
                  tint = {0.6, 0.7, 0.8}
                }
              },
              data.raw["mining-drill"]["electric-mining-drill"].graphics_set.working_visualisations[3].west_animation.layers[2]
            }
          },
        },

        data.raw["mining-drill"]["electric-mining-drill"].graphics_set.working_visualisations[4],
        data.raw["mining-drill"]["electric-mining-drill"].graphics_set.working_visualisations[5],

        -- drill front animation
        {
          animated_shift = true,
          always_draw = true,
          east_animation = {
            priority = "high",
            filename = BASEENTITY .. "electric-mining-drill/electric-mining-drill-horizontal-front.png",
            line_length = 6,
            width = 32,
            height = 76,
            frame_count = 30,
            animation_speed = 0.4,
            frame_sequence = drill_animation_sequence,
            direction_count = 1,
            shift = util.by_pixel(-2, 4),
            tint = {0.6, 0.7, 0.8},
            hr_version = {
              priority = "high",
              filename = BASEENTITY .. "electric-mining-drill/hr-electric-mining-drill-horizontal-front.png",
              line_length = 6,
              width = 66,
              height = 154,
              frame_count = 30,
              animation_speed = 0.4,
              frame_sequence = drill_animation_sequence,
              direction_count = 1,
              shift = util.by_pixel(-3, 3),
              scale = 0.5,
              tint = {0.6, 0.7, 0.8}
            }
          },
          west_animation = {
            priority = "high",
            filename = BASEENTITY .. "electric-mining-drill/electric-mining-drill-horizontal-front.png",
            line_length = 6,
            width = 32,
            height = 76,
            frame_count = 30,
            animation_speed = 0.4,
            frame_sequence = drill_animation_sequence,
            direction_count = 1,
            shift = util.by_pixel(-2, 4),
            tint = {0.6, 0.7, 0.8},
            hr_version = {
              priority = "high",
              filename = BASEENTITY .. "electric-mining-drill/hr-electric-mining-drill-horizontal-front.png",
              line_length = 6,
              width = 66,
              height = 154,
              frame_count = 30,
              animation_speed = 0.4,
              frame_sequence = drill_animation_sequence,
              direction_count = 1,
              shift = util.by_pixel(-3, 3),
              scale = 0.5,
              tint = {0.6, 0.7, 0.8}
            }
          }
        },

        -- front frame
        {
          always_draw = true,
          north_animation = nil,
          east_animation = {
            priority = "high",
            filename = BASEENTITY .. "electric-mining-drill/electric-mining-drill-E-front.png",
            line_length = 1,
            width = 66,
            height = 74,
            frame_count = 1,
            animation_speed = 0.4,
            direction_count = 1,
            shift = util.by_pixel(22, 10),
            tint = {0.6, 0.7, 0.8},
            hr_version = {
              priority = "high",
              filename = BASEENTITY .. "electric-mining-drill/hr-electric-mining-drill-E-front.png",
              line_length = 1,
              width = 136,
              height = 148,
              frame_count = 1,
              animation_speed = 0.4,
              direction_count = 1,
              shift = util.by_pixel(21, 10),
              scale = 0.5,
              tint = {0.6, 0.7, 0.8}
            }
          },
          south_animation = {
            layers = {
              data.raw["mining-drill"]["electric-mining-drill"].graphics_set.working_visualisations[7].south_animation.layers[1],
              {
                priority = "high",
                filename = BASEENTITY .. "electric-mining-drill/electric-mining-drill-S-front.png",
                line_length = 1,
                width = 96,
                height = 54,
                frame_count = 1,
                animation_speed = 0.4,
                repeat_count = 5,
                shift = util.by_pixel(0, 26),
                tint = {0.6, 0.7, 0.8},
                hr_version = {
                  priority = "high",
                  filename = BASEENTITY .. "electric-mining-drill/hr-electric-mining-drill-S-front.png",
                  line_length = 1,
                  width = 190,
                  height = 104,
                  frame_count = 1,
                  animation_speed = 0.4,
                  repeat_count = 5,
                  shift = util.by_pixel(0, 27),
                  scale = 0.5,
                  tint = {0.6, 0.7, 0.8}
                }
              },
            }
          },
          west_animation = {
            priority = "high",
            filename = BASEENTITY .. "electric-mining-drill/electric-mining-drill-W-front.png",
            line_length = 1,
            width = 68,
            height = 70,
            frame_count = 1,
            animation_speed = 0.4,
            direction_count = 1,
            shift = util.by_pixel(-22, 12),
            tint = {0.6, 0.7, 0.8},
            hr_version = {
              priority = "high",
              filename = BASEENTITY .. "electric-mining-drill/hr-electric-mining-drill-W-front.png",
              line_length = 1,
              width = 134,
              height = 140,
              frame_count = 1,
              animation_speed = 0.4,
              direction_count = 1,
              shift = util.by_pixel(-22, 12),
              scale = 0.5,
              tint = {0.6, 0.7, 0.8}
            }
          }
        },

        data.raw["mining-drill"]["electric-mining-drill"].graphics_set.working_visualisations[8],
        data.raw["mining-drill"]["electric-mining-drill"].graphics_set.working_visualisations[9],
        data.raw["mining-drill"]["electric-mining-drill"].graphics_set.working_visualisations[10]
      }
    }
  },

  {
    type = "mining-drill",
    name = "nullius-medium-miner-3",
    icons = data.raw.item["nullius-medium-miner-2"].icons,
    localised_description = {"entity-description.nullius-miner"},
    flags = {"placeable-neutral", "player-creation"},
    minable = {mining_time = 1.2, result = "nullius-medium-miner-3"},
    max_health = 300,
    resource_categories = {"basic-solid"},
    corpse = "medium-remnants",
    dying_explosion = "electric-mining-drill-explosion",
    collision_box = {{ -1.25, -1.25}, {1.25, 1.25}},
    selection_box = {{ -1.5, -1.5}, {1.5, 1.5}},
    vector_to_place_result = {0, -1.85},
    resource_searching_radius = 2.49,

    mining_speed = 2,
    energy_source = {
      type = "electric",
      emissions_per_minute = 20,
      usage_priority = "secondary-input"
    },
    energy_usage = "750kW",
    module_specification = { module_slots = 2 },
    allowed_effects = {"speed", "productivity", "consumption", "pollution"},
    base_productivity = 0.05,

    radius_visualisation_picture = data.raw["mining-drill"]["electric-mining-drill"].radius_visualisation_picture,
    monitor_visualization_tint = {r=78, g=173, b=255},
    fast_replaceable_group = "medium-miner",
    damaged_trigger_effect = data.raw["mining-drill"]["electric-mining-drill"].damaged_trigger_effect,
    working_sound = data.raw["mining-drill"]["electric-mining-drill"].working_sound,
    vehicle_impact_sound = data.raw["mining-drill"]["electric-mining-drill"].vehicle_impact_sound,
    open_sound = data.raw["mining-drill"]["electric-mining-drill"].open_sound,
    close_sound = data.raw["mining-drill"]["electric-mining-drill"].close_sound,
    graphics_set = data.raw["mining-drill"]["electric-mining-drill"].graphics_set,

    circuit_wire_connection_points = circuit_connector_definitions["electric-mining-drill"].points,
    circuit_connector_sprites = circuit_connector_definitions["electric-mining-drill"].sprites,
    circuit_wire_max_distance = default_circuit_wire_max_distance
  },

  {
    type = "mining-drill",
    name = "nullius-large-miner-1",
    icons = data.raw.item["nullius-large-miner-1"].icons,
    localised_description = {"entity-description.nullius-miner"},
    flags = {"placeable-neutral", "player-creation"},
    minable = {mining_time = 1.2, result = "nullius-large-miner-1"},
    max_health = 400,
    resource_categories = {"basic-solid"},
    corpse = "medium-remnants",
    dying_explosion = "electric-mining-drill-explosion",
    collision_box = {{ -1.7, -1.7}, {1.7, 1.7}},
    selection_box = {{ -2, -2}, {2, 2}},
    vector_to_place_result = {-0.35, -2.35},
    resource_searching_radius = 3.99,

    mining_speed = 1.5,
    energy_source = {
      type = "electric",
      emissions_per_minute = 15,
      usage_priority = "secondary-input"
    },
    energy_usage = "450kW",
    monitor_visualization_tint = {r=78, g=173, b=255},
    fast_replaceable_group = "large-miner",
    next_upgrade = "nullius-large-miner-2",

    damaged_trigger_effect = data.raw["mining-drill"]["electric-mining-drill"].damaged_trigger_effect,
    working_sound = data.raw["mining-drill"]["electric-mining-drill"].working_sound,
    vehicle_impact_sound = data.raw["mining-drill"]["electric-mining-drill"].vehicle_impact_sound,
    open_sound = data.raw["mining-drill"]["electric-mining-drill"].open_sound,
    close_sound = data.raw["mining-drill"]["electric-mining-drill"].close_sound,
    radius_visualisation_picture = {
      filename = BASEENTITY .. "electric-mining-drill/electric-mining-drill-radius-visualization.png",
      width = 10,
      height = 10
    },
    module_specification = { module_slots = 1 },
    allowed_effects = {"speed", "productivity", "consumption", "pollution"},
    circuit_wire_connection_points = circuit_connector_definitions["electric-mining-drill"].points,
    circuit_connector_sprites = circuit_connector_definitions["electric-mining-drill"].sprites,
    circuit_wire_max_distance = default_circuit_wire_max_distance,

    graphics_set = {
      drilling_vertical_movement_duration = 10 / 0.4,
      animation_progress = 1,
      min_animation_progress = 0,
      max_animation_progress = 30,

      status_colors = data.raw["mining-drill"]["electric-mining-drill"].graphics_set.status_colors,

      circuit_connector_layer = "object",
      circuit_connector_secondary_draw_order = { north = 14, east = 30, south = 30, west = 30 },

      animation = {
        north = {
          layers = {
            {
              priority = "high",
              filename = BASEENTITY .. "electric-mining-drill/hr-electric-mining-drill-N.png",
              line_length = 1,
              width = 190,
              height = 208,
              frame_count = 1,
              animation_speed = 0.4,
              direction_count = 1,
              shift = util.by_pixel(0, -4*1.3333),
              repeat_count = 5,
              scale = 0.6666,
              tint = {0.6, 0.7, 0.8}
            },
            {
              priority = "high",
              filename = BASEENTITY .. "electric-mining-drill/hr-electric-mining-drill-N-output.png",
              line_length = 5,
              width = 60,
              height = 66,
              frame_count = 5,
              animation_speed = 0.4,
              direction_count = 1,
              shift = util.by_pixel(-3*1.3333, -44*1.3333),
              scale = 0.6666
            },
            {
              priority = "high",
              filename = BASEENTITY .. "electric-mining-drill/hr-electric-mining-drill-N-shadow.png",
              line_length = 1,
              width = 212,
              height = 204,
              frame_count = 1,
              animation_speed = 0.4,
              draw_as_shadow = true,
              shift = util.by_pixel(6*1.3333, -3*1.3333),
              repeat_count = 5,
              scale = 0.6666
            }
          }
        },
        east = {
          layers = {
            {
              priority = "high",
              filename = BASEENTITY .. "electric-mining-drill/hr-electric-mining-drill-E.png",
              line_length = 1,
              width = 192,
              height = 188,
              frame_count = 1,
              animation_speed = 0.4,
              direction_count = 1,
              shift = util.by_pixel(0, -4*1.3333),
              repeat_count = 5,
              scale = 0.6666,
              tint = {0.6, 0.7, 0.8}
            },
            {
              priority = "high",
              filename = BASEENTITY .. "electric-mining-drill/hr-electric-mining-drill-E-output.png",
              line_length = 5,
              width = 50,
              height = 74,
              frame_count = 5,
              animation_speed = 0.4,
              direction_count = 1,
              shift = util.by_pixel(30*1.3333, -8*1.3333),
              scale = 0.6666
            },
            {
              priority = "high",
              filename = BASEENTITY .. "electric-mining-drill/hr-electric-mining-drill-E-shadow.png",
              line_length = 1,
              width = 222,
              height = 182,
              frame_count = 1,
              animation_speed = 0.4,
              draw_as_shadow = true,
              shift = util.by_pixel(10*1.3333, 2*1.3333),
              repeat_count = 5,
              scale = 0.6666
            }
          }
        },
        south = {
          layers = {
            {
              priority = "high",
              filename = BASEENTITY .. "electric-mining-drill/hr-electric-mining-drill-S.png",
              line_length = 1,
              width = 184,
              height = 192,
              frame_count = 1,
              animation_speed = 0.4,
              direction_count = 1,
              shift = util.by_pixel(0, -1*1.3333),
              repeat_count = 5,
              scale = 0.6666,
              tint = {0.6, 0.7, 0.8}
            },
            {
              priority = "high",
              filename = BASEENTITY .. "electric-mining-drill/hr-electric-mining-drill-S-shadow.png",
              line_length = 1,
              width = 212,
              height = 204,
              frame_count = 1,
              animation_speed = 0.4,
              draw_as_shadow = true,
              shift = util.by_pixel(6*1.3333, 2*1.3333),
              repeat_count = 5,
              scale = 0.6666
            }
          }
        },
        west = {
          layers = {
            {
              priority = "high",
              filename = BASEENTITY .. "electric-mining-drill/hr-electric-mining-drill-W.png",
              line_length = 1,
              width = 192,
              height = 188,
              frame_count = 1,
              animation_speed = 0.4,
              direction_count = 1,
              shift = util.by_pixel(0, -4*1.3333),
              repeat_count = 5,
              scale = 0.6666,
              tint = {0.6, 0.7, 0.8}
            },
            {
              priority = "high",
              filename = BASEENTITY .. "electric-mining-drill/hr-electric-mining-drill-W-output.png",
              line_length = 5,
              width = 50,
              height = 60,
              frame_count = 5,
              animation_speed = 0.4,
              direction_count = 1,
              shift = util.by_pixel(-31*1.3333, -13*1.3333),
              scale = 0.6666
            },
            {
              priority = "high",
              filename = BASEENTITY .. "electric-mining-drill/hr-electric-mining-drill-W-shadow.png",
              line_length = 1,
              width = 200,
              height = 182,
              frame_count = 1,
              animation_speed = 0.4,
              draw_as_shadow = true,
              shift = util.by_pixel(-5*1.3333, 2*1.3333),
              repeat_count = 5,
              scale = 0.6666
            }
          }
        }
      },

      shift_animation_waypoints = data.raw["mining-drill"]["electric-mining-drill"].graphics_set.shift_animation_waypoints,
      shift_animation_waypoint_stop_duration = 195 / 0.4,
      shift_animation_transition_duration = 30 / 0.4,

      working_visualisations = {
        -- dust animation 1
        {
          constant_speed = true,
          synced_fadeout = true,
          align_to_waypoint = true,
          apply_tint = "resource-color",
          animation = {
            priority = "high",
            filename = BASEENTITY .. "electric-mining-drill/hr-electric-mining-drill-smoke.png",
            line_length = 6,
            width = 48,
            height = 72,
            frame_count = 30,
            animation_speed = 0.4,
            direction_count = 1,
            shift = util.by_pixel(0, 3*1.3333),
            scale = 0.6666
          },
          north_position = { 0, 0.25*1.3333 },
          east_position = { 0, 0 },
          south_position = { 0, 0.25*1.3333 },
          west_position = { 0, 0 },
        },

        -- dust animation directional 1
        {
          constant_speed = true,
          fadeout = true,
          apply_tint = "resource-color",
          north_animation = {
            layers = {
              {
                priority = "high",
                filename = BASEENTITY .. "electric-mining-drill/hr-electric-mining-drill-N-smoke.png",
                line_length = 5,
                width = 42,
                height = 58,
                frame_count = 10,
                animation_speed = 0.4,
                direction_count = 1,
                shift = util.by_pixel(-1*1.3333, -44*1.3333),
                scale = 0.6666
              }
            }
          },
          east_animation = nil,
          south_animation = nil,
          west_animation = nil,
        },

        -- drill back animation
        {
          animated_shift = true,
          always_draw = true,
          north_animation = {
            layers = {
              {
                priority = "high",
                filename = BASEENTITY .. "electric-mining-drill/hr-electric-mining-drill.png",
                line_length = 6,
                width = 162,
                height = 156,
                frame_count = 30,
                animation_speed = 0.4,
                frame_sequence = drill_animation_sequence,
                direction_count = 1,
                shift = util.by_pixel(1*1.3333, -11*1.3333),
                scale = 0.6666,
                tint = {0.6, 0.7, 0.8}
              },
              {
                priority = "high",
                filename = BASEENTITY .. "electric-mining-drill/hr-electric-mining-drill-shadow.png",
                line_length = 7,
                width = 218,
                height = 56,
                frame_count = 21,
                animation_speed = 0.4,
                frame_sequence = drill_animation_shadow_sequence,
                draw_as_shadow = true,
                shift = util.by_pixel(21*1.3333, 5*1.3333),
                scale = 0.6666
              }
            }
          },
          east_animation = {
            layers = {
              {
                priority = "high",
                filename = BASEENTITY .. "electric-mining-drill/hr-electric-mining-drill-horizontal.png",
                line_length = 6,
                width = 80,
                height = 160,
                frame_count = 30,
                animation_speed = 0.4,
                frame_sequence = drill_animation_sequence,
                direction_count = 1,
                shift = util.by_pixel(2*1.3333, -12*1.3333),
                scale = 0.6666,
                tint = {0.6, 0.7, 0.8}
              },
              {
                priority = "high",
                filename = BASEENTITY .. "electric-mining-drill/hr-electric-mining-drill-horizontal-shadow.png",
                line_length = 7,
                width = 180,
                height = 164,
                frame_count = 21,
                animation_speed = 0.4,
                frame_sequence = drill_animation_shadow_sequence,
                draw_as_shadow = true,
                shift = util.by_pixel(33*1.3333, 1*1.3333),
                scale = 0.6666
              }
            }
          },
          south_animation = {
            layers = {
              {
                priority = "high",
                filename = BASEENTITY .. "electric-mining-drill/hr-electric-mining-drill.png",
                line_length = 6,
                width = 162,
                height = 156,
                frame_count = 30,
                animation_speed = 0.4,
                frame_sequence = drill_animation_sequence,
                direction_count = 1,
                shift = util.by_pixel(1*1.3333, -11*1.3333),
                scale = 0.6666,
                tint = {0.6, 0.7, 0.8}
              },
              {
                priority = "high",
                filename = BASEENTITY .. "electric-mining-drill/hr-electric-mining-drill-shadow.png",
                line_length = 7,
                width = 218,
                height = 56,
                frame_count = 21,
                animation_speed = 0.4,
                frame_sequence = drill_animation_shadow_sequence,
                draw_as_shadow = true,
                shift = util.by_pixel(21*1.3333, 5*1.3333),
                scale = 0.6666
              }
            }
          },
          west_animation = {
            layers = {
              {
                priority = "high",
                filename = BASEENTITY .. "electric-mining-drill/hr-electric-mining-drill-horizontal.png",
                line_length = 6,
                width = 80,
                height = 160,
                frame_count = 30,
                animation_speed = 0.4,
                frame_sequence = drill_animation_sequence,
                direction_count = 1,
                shift = util.by_pixel(2*1.3333, -12*1.3333),
                scale = 0.6666,
                tint = {0.6, 0.7, 0.8}
              },
              {
                priority = "high",
                filename = BASEENTITY .. "electric-mining-drill/hr-electric-mining-drill-horizontal-shadow.png",
                line_length = 7,
                width = 180,
                height = 164,
                frame_count = 21,
                animation_speed = 0.4,
                frame_sequence = drill_animation_shadow_sequence,
                draw_as_shadow = true,
                shift = util.by_pixel(33*1.3333, 1*1.3333),
                scale = 0.6666
              }
            }
          }
        },

        -- dust animation 2
        {
          constant_speed = true,
          synced_fadeout = true,
          align_to_waypoint = true,
          apply_tint = "resource-color",
          animation = {
            priority = "high",
            filename = BASEENTITY .. "electric-mining-drill/hr-electric-mining-drill-smoke-front.png",
            line_length = 6,
            width = 148,
            height = 132,
            frame_count = 30,
            animation_speed = 0.4,
            direction_count = 1,
            shift = util.by_pixel(-3*1.3333, 9*1.3333),
            scale = 0.6666
          },
          north_position = { 0, 0.25*1.3333 },
          east_position = { 0, 0 },
          south_position = { 0, 0.25*1.3333 },
          west_position = { 0, 0 },
        },

        -- dust animation directional 2
        {
          constant_speed = true,
          fadeout = true,
          apply_tint = "resource-color",
          north_animation = nil,
          east_animation = {
            layers = {
              {
                priority = "high",
                filename = BASEENTITY .. "electric-mining-drill/hr-electric-mining-drill-E-smoke.png",
                line_length = 5,
                width = 46,
                height = 56,
                frame_count = 10,
                animation_speed = 0.4,
                direction_count = 1,
                shift = util.by_pixel(24*1.3333, -12*1.3333),
                scale = 0.6666
              }
            }
          },
          south_animation = {
            layers = {
              {
                priority = "high",
                filename = BASEENTITY .. "electric-mining-drill/hr-electric-mining-drill-S-smoke.png",
                line_length = 5,
                width = 48,
                height = 36,
                frame_count = 10,
                animation_speed = 0.4,
                direction_count = 1,
                shift = util.by_pixel(-2*1.3333, 20*1.3333),
                scale = 0.6666
              }
            }
          },
          west_animation = {
            layers = {
              {
                priority = "high",
                filename = BASEENTITY .. "electric-mining-drill/hr-electric-mining-drill-W-smoke.png",
                line_length = 5,
                width = 46,
                height = 54,
                frame_count = 10,
                animation_speed = 0.4,
                direction_count = 1,
                shift = util.by_pixel(-25*1.3333, -11*1.3333),
                scale = 0.6666
              }
            }
          }
        },

        -- drill front animation
        {
          animated_shift = true,
          always_draw = true,
          east_animation = {
            priority = "high",
            filename = BASEENTITY .. "electric-mining-drill/hr-electric-mining-drill-horizontal-front.png",
            line_length = 6,
            width = 66,
            height = 154,
            frame_count = 30,
            animation_speed = 0.4,
            frame_sequence = drill_animation_sequence,
            direction_count = 1,
            shift = util.by_pixel(-3*1.3333, 3*1.3333),
            scale = 0.6666,
            tint = {0.6, 0.7, 0.8}
          },
          west_animation = {
            priority = "high",
            filename = BASEENTITY .. "electric-mining-drill/hr-electric-mining-drill-horizontal-front.png",
            line_length = 6,
            width = 66,
            height = 154,
            frame_count = 30,
            animation_speed = 0.4,
            frame_sequence = drill_animation_sequence,
            direction_count = 1,
            shift = util.by_pixel(-3*1.3333, 3*1.3333),
            scale = 0.6666,
            tint = {0.6, 0.7, 0.8}
          }
        },

        -- front frame
        {
          always_draw = true,
          north_animation = nil,
          east_animation = {
            priority = "high",
            filename = BASEENTITY .. "electric-mining-drill/hr-electric-mining-drill-E-front.png",
            line_length = 1,
            width = 136,
            height = 148,
            frame_count = 1,
            animation_speed = 0.4,
            direction_count = 1,
            shift = util.by_pixel(21*1.3333, 10*1.3333),
            scale = 0.6666,
            tint = {0.6, 0.7, 0.8}
          },
          south_animation = {
            layers = {
              {
                priority = "high",
                filename = BASEENTITY .. "electric-mining-drill/hr-electric-mining-drill-S-output.png",
                line_length = 5,
                width = 84,
                height = 56,
                frame_count = 5,
                animation_speed = 0.4,
                shift = util.by_pixel(-1*1.3333, 34*1.3333),
                scale = 0.6666
              },
              {
                priority = "high",
                filename = BASEENTITY .. "electric-mining-drill/hr-electric-mining-drill-S-front.png",
                line_length = 1,
                width = 190,
                height = 104,
                frame_count = 1,
                animation_speed = 0.4,
                repeat_count = 5,
                shift = util.by_pixel(0, 27*1.3333),
                scale = 0.6666,
                tint = {0.6, 0.7, 0.8}
              }
            }
          },
          west_animation = {
            priority = "high",
            filename = BASEENTITY .. "electric-mining-drill/hr-electric-mining-drill-W-front.png",
            line_length = 1,
            width = 134,
            height = 140,
            frame_count = 1,
            animation_speed = 0.4,
            direction_count = 1,
            shift = util.by_pixel(-22*1.3333, 12*1.3333),
            scale = 0.6666,
            tint = {0.6, 0.7, 0.8}
          }
        },

        -- LEDs
        {
          apply_tint = "status",
          always_draw = true,
          draw_as_sprite = true,
          -- draw_as_light = true,
          north_animation = {
            filename = BASEENTITY .. "electric-mining-drill/hr-electric-mining-drill-N-light.png",
            width = 32,
            height = 32,
            blend_mode = nil,
            tint = {1,1,1,0.5},
            shift = util.by_pixel(26*1.3333, -48*1.3333),
            scale = 0.6666
          },
          east_animation = {
            filename = BASEENTITY .. "electric-mining-drill/hr-electric-mining-drill-E-light.png",
            width = 32,
            height = 34,
            blend_mode = nil,
            tint = {1,1,1,0.5},
            shift = util.by_pixel(38*1.3333, -32*1.3333),
            scale = 0.6666
          },
          south_animation = {
            filename = BASEENTITY .. "electric-mining-drill/hr-electric-mining-drill-S-light.png",
            width = 38,
            height = 46,
            blend_mode = nil,
            tint = {1,1,1,0.5},
            shift = util.by_pixel(26*1.3333, 26*1.3333),
            scale = 0.6666
          },
          west_animation = {
            filename = BASEENTITY .. "electric-mining-drill/hr-electric-mining-drill-W-light.png",
            width = 32,
            height = 34,
            blend_mode = nil,
            tint = {1,1,1,0.5},
            shift = util.by_pixel(-39*1.3333, -32*1.3333),
            scale = 0.6666
          }
        },

        -- light
        {
          light = {intensity = 1, size = 4, color={r=1, g=1, b=1}, minimum_darkness = 0.1},
          north_position = {0.8*1.3333, -1.5*1.3333},
          east_position = {1.2*1.3333, -1*1.3333},
          south_position = {0.8*1.3333, 0.8*1.3333},
          west_position = {-1.2*1.3333, -1*1.3333}
        },
        {
          always_draw = true,
          apply_tint = "status",
          light = { intensity = 0.8, size = 2, color={r=1, g=1, b=1}, minimum_darkness = 0.1 },
          north_position = {0.8*1.3333, -1.5*1.3333},
          east_position = {1.2*1.3333, -1*1.3333},
          south_position = {0.8*1.3333, 0.8*1.3333},
          west_position = {-1.2*1.3333, -1*1.3333}
        }
      }
    }
  }
})

data:extend({
  {
    type = "mining-drill",
    name = "nullius-large-miner-2",
    icons = data.raw.item["nullius-large-miner-2"].icons,
    localised_description = {"entity-description.nullius-miner"},
    flags = {"placeable-neutral", "player-creation"},
    minable = {mining_time = 1.6, result = "nullius-large-miner-2"},
    max_health = 500,
    resource_categories = {"basic-solid"},
    corpse = "medium-remnants",
    dying_explosion = "electric-mining-drill-explosion",
    collision_box = {{ -1.7, -1.7}, {1.7, 1.7}},
    selection_box = {{ -2, -2}, {2, 2}},
    vector_to_place_result = {-0.35, -2.35},
    resource_searching_radius = 3.99,

    mining_speed = 3,
    energy_source = {
      type = "electric",
      emissions_per_minute = 30,
      usage_priority = "secondary-input"
    },
    energy_usage = "1.2MW",
    monitor_visualization_tint = {r=78, g=173, b=255},
    fast_replaceable_group = "large-miner",
    base_productivity = 0.05,

    damaged_trigger_effect = data.raw["mining-drill"]["electric-mining-drill"].damaged_trigger_effect,
    working_sound = data.raw["mining-drill"]["electric-mining-drill"].working_sound,
    vehicle_impact_sound = data.raw["mining-drill"]["electric-mining-drill"].vehicle_impact_sound,
    open_sound = data.raw["mining-drill"]["electric-mining-drill"].open_sound,
    close_sound = data.raw["mining-drill"]["electric-mining-drill"].close_sound,
    radius_visualisation_picture = data.raw["mining-drill"]["nullius-large-miner-1"].radius_visualisation_picture,
    module_specification = { module_slots = 2 },
    allowed_effects = {"speed", "productivity", "consumption", "pollution"},
    circuit_wire_connection_points = circuit_connector_definitions["electric-mining-drill"].points,
    circuit_connector_sprites = circuit_connector_definitions["electric-mining-drill"].sprites,
    circuit_wire_max_distance = default_circuit_wire_max_distance,

    graphics_set = {
      drilling_vertical_movement_duration = 10 / 0.4,
      animation_progress = 1,
      min_animation_progress = 0,
      max_animation_progress = 30,
      status_colors = data.raw["mining-drill"]["electric-mining-drill"].graphics_set.status_colors,
      circuit_connector_layer = "object",
      circuit_connector_secondary_draw_order = { north = 14, east = 30, south = 30, west = 30 },

      animation = {
        north = {
          layers = {
            {
              priority = "high",
              filename = BASEENTITY .. "electric-mining-drill/hr-electric-mining-drill-N.png",
              line_length = 1,
              width = 190,
              height = 208,
              frame_count = 1,
              animation_speed = 0.4,
              direction_count = 1,
              shift = util.by_pixel(0, -4*1.3333),
              repeat_count = 5,
              scale = 0.6666
            },
            data.raw["mining-drill"]["nullius-large-miner-1"].graphics_set.animation.north.layers[2],
            data.raw["mining-drill"]["nullius-large-miner-1"].graphics_set.animation.north.layers[3]
          }
        },
        east = {
          layers = {
            {
              priority = "high",
              filename = BASEENTITY .. "electric-mining-drill/hr-electric-mining-drill-E.png",
              line_length = 1,
              width = 192,
              height = 188,
              frame_count = 1,
              animation_speed = 0.4,
              direction_count = 1,
              shift = util.by_pixel(0, -4*1.3333),
              repeat_count = 5,
              scale = 0.6666
            },
            data.raw["mining-drill"]["nullius-large-miner-1"].graphics_set.animation.east.layers[2],
            data.raw["mining-drill"]["nullius-large-miner-1"].graphics_set.animation.east.layers[3]
          }
        },
        south = {
          layers = {
            {
              priority = "high",
              filename = BASEENTITY .. "electric-mining-drill/hr-electric-mining-drill-S.png",
              line_length = 1,
              width = 184,
              height = 192,
              frame_count = 1,
              animation_speed = 0.4,
              direction_count = 1,
              shift = util.by_pixel(0, -1*1.3333),
              repeat_count = 5,
              scale = 0.6666
            },
            data.raw["mining-drill"]["nullius-large-miner-1"].graphics_set.animation.south.layers[2]
          }
        },
        west = {
          layers = {
            {
              priority = "high",
              filename = BASEENTITY .. "electric-mining-drill/hr-electric-mining-drill-W.png",
              line_length = 1,
              width = 192,
              height = 188,
              frame_count = 1,
              animation_speed = 0.4,
              direction_count = 1,
              shift = util.by_pixel(0, -4*1.3333),
              repeat_count = 5,
              scale = 0.6666
            },
            data.raw["mining-drill"]["nullius-large-miner-1"].graphics_set.animation.west.layers[2],
            data.raw["mining-drill"]["nullius-large-miner-1"].graphics_set.animation.west.layers[3]
          }
        }
      },

      shift_animation_waypoints = data.raw["mining-drill"]["electric-mining-drill"].graphics_set.shift_animation_waypoints,
      shift_animation_waypoint_stop_duration = 195 / 0.4,
      shift_animation_transition_duration = 30 / 0.4,

      working_visualisations = {
        data.raw["mining-drill"]["nullius-large-miner-1"].graphics_set.working_visualisations[1],
        data.raw["mining-drill"]["nullius-large-miner-1"].graphics_set.working_visualisations[2],

        -- drill back animation
        {
          animated_shift = true,
          always_draw = true,
          north_animation = {
            layers = {
              {
                priority = "high",
                filename = BASEENTITY .. "electric-mining-drill/hr-electric-mining-drill.png",
                line_length = 6,
                width = 162,
                height = 156,
                frame_count = 30,
                animation_speed = 0.4,
                frame_sequence = drill_animation_sequence,
                direction_count = 1,
                shift = util.by_pixel(1*1.3333, -11*1.3333),
                scale = 0.6666
              },
              data.raw["mining-drill"]["nullius-large-miner-1"].graphics_set.working_visualisations[3].north_animation.layers[2]
            }
          },
          east_animation = {
            layers = {
              {
                priority = "high",
                filename = BASEENTITY .. "electric-mining-drill/hr-electric-mining-drill-horizontal.png",
                line_length = 6,
                width = 80,
                height = 160,
                frame_count = 30,
                animation_speed = 0.4,
                frame_sequence = drill_animation_sequence,
                direction_count = 1,
                shift = util.by_pixel(2*1.3333, -12*1.3333),
                scale = 0.6666
              },
              data.raw["mining-drill"]["nullius-large-miner-1"].graphics_set.working_visualisations[3].east_animation.layers[2]
            }
          },
          south_animation = {
            layers = {
              {
                priority = "high",
                filename = BASEENTITY .. "electric-mining-drill/hr-electric-mining-drill.png",
                line_length = 6,
                width = 162,
                height = 156,
                frame_count = 30,
                animation_speed = 0.4,
                frame_sequence = drill_animation_sequence,
                direction_count = 1,
                shift = util.by_pixel(1*1.3333, -11*1.3333),
                scale = 0.6666
              },
              data.raw["mining-drill"]["nullius-large-miner-1"].graphics_set.working_visualisations[3].south_animation.layers[2]
            }
          },
          west_animation = {
            layers = {
              {
                priority = "high",
                filename = BASEENTITY .. "electric-mining-drill/hr-electric-mining-drill-horizontal.png",
                line_length = 6,
                width = 80,
                height = 160,
                frame_count = 30,
                animation_speed = 0.4,
                frame_sequence = drill_animation_sequence,
                direction_count = 1,
                shift = util.by_pixel(2*1.3333, -12*1.3333),
                scale = 0.6666
              },
              data.raw["mining-drill"]["nullius-large-miner-1"].graphics_set.working_visualisations[3].west_animation.layers[2]
            }
          }
        },

        data.raw["mining-drill"]["nullius-large-miner-1"].graphics_set.working_visualisations[4],
        data.raw["mining-drill"]["nullius-large-miner-1"].graphics_set.working_visualisations[5],

        -- drill front animation
        {
          animated_shift = true,
          always_draw = true,
          east_animation = {
            priority = "high",
            filename = BASEENTITY .. "electric-mining-drill/hr-electric-mining-drill-horizontal-front.png",
            line_length = 6,
            width = 66,
            height = 154,
            frame_count = 30,
            animation_speed = 0.4,
            frame_sequence = drill_animation_sequence,
            direction_count = 1,
            shift = util.by_pixel(-3*1.3333, 3*1.3333),
            scale = 0.6666
          },
          west_animation = {
            priority = "high",
            filename = BASEENTITY .. "electric-mining-drill/hr-electric-mining-drill-horizontal-front.png",
            line_length = 6,
            width = 66,
            height = 154,
            frame_count = 30,
            animation_speed = 0.4,
            frame_sequence = drill_animation_sequence,
            direction_count = 1,
            shift = util.by_pixel(-3*1.3333, 3*1.3333),
            scale = 0.6666
          }
        },

        -- front frame
        {
          always_draw = true,
          north_animation = nil,
          east_animation = {
            priority = "high",
            filename = BASEENTITY .. "electric-mining-drill/hr-electric-mining-drill-E-front.png",
            line_length = 1,
            width = 136,
            height = 148,
            frame_count = 1,
            animation_speed = 0.4,
            direction_count = 1,
            shift = util.by_pixel(21*1.3333, 10*1.3333),
            scale = 0.6666
          },
          south_animation = {
            layers = {
              data.raw["mining-drill"]["nullius-large-miner-1"].graphics_set.working_visualisations[7].south_animation.layers[1],
              {
                priority = "high",
                filename = BASEENTITY .. "electric-mining-drill/hr-electric-mining-drill-S-front.png",
                line_length = 1,
                width = 190,
                height = 104,
                frame_count = 1,
                animation_speed = 0.4,
                repeat_count = 5,
                shift = util.by_pixel(0, 27*1.3333),
                scale = 0.6666
              }
            }
          },
          west_animation = {
            priority = "high",
            filename = BASEENTITY .. "electric-mining-drill/hr-electric-mining-drill-W-front.png",
            line_length = 1,
            width = 134,
            height = 140,
            frame_count = 1,
            animation_speed = 0.4,
            direction_count = 1,
            shift = util.by_pixel(-22*1.3333, 12*1.3333),
            scale = 0.6666
          }
        },

        data.raw["mining-drill"]["nullius-large-miner-1"].graphics_set.working_visualisations[8],
        data.raw["mining-drill"]["nullius-large-miner-1"].graphics_set.working_visualisations[9],
        data.raw["mining-drill"]["nullius-large-miner-1"].graphics_set.working_visualisations[10]
      }
    }
  }
})


if mods["reskins-bobs"] then
local small_miner = util.table.deepcopy(data.raw["mining-drill"]["nullius-small-miner-3"].graphics_set)
small_miner.working_visualisations[3].north_animation.layers = {
  small_miner.working_visualisations[3].north_animation.layers[1],
  {
    priority = "high",
    filename = "__reskins-bobs__/graphics/entity/mining/mining-drill/drill/electric-mining-drill-mask.png",
    line_length = 6,
    width = 84,
    height = 80,
    frame_count = 30,
    animation_speed = 0.4,
    frame_sequence = drill_animation_sequence,
    direction_count = 1,
    shift = util.by_pixel(0, -12*0.6666),
    tint = {240, 160, 0},
    scale = 0.6666
  },
  {
    priority = "high",
    filename = "__reskins-bobs__/graphics/entity/mining/mining-drill/drill/electric-mining-drill-highlights.png",
    line_length = 6,
    width = 84,
    height = 80,
    frame_count = 30,
    animation_speed = 0.4,
    frame_sequence = drill_animation_sequence,
    direction_count = 1,
    shift = util.by_pixel(0, -12*0.6666),
    blend_mode = "additive",
    scale = 0.6666
  },
  small_miner.working_visualisations[3].north_animation.layers[2]
}
small_miner.working_visualisations[3].east_animation.layers = {
  small_miner.working_visualisations[3].east_animation.layers[1],
  {
    priority = "high",
    filename = "__reskins-bobs__/graphics/entity/mining/mining-drill/drill/electric-mining-drill-horizontal-mask.png",
    line_length = 6,
    width = 40,
    height = 80,
    frame_count = 30,
    animation_speed = 0.4,
    frame_sequence = drill_animation_sequence,
    direction_count = 1,
    shift = util.by_pixel(2*0.6666, -12*0.6666),
    tint = {240, 160, 0},
    scale = 0.6666
  },
  {
    priority = "high",
    filename = "__reskins-bobs__/graphics/entity/mining/mining-drill/drill/electric-mining-drill-horizontal-highlights.png",
    line_length = 6,
    width = 40,
    height = 80,
    frame_count = 30,
    animation_speed = 0.4,
    frame_sequence = drill_animation_sequence,
    direction_count = 1,
    shift = util.by_pixel(2*0.6666, -12*0.6666),
    blend_mode = "additive",
    scale = 0.6666
  },
  small_miner.working_visualisations[3].east_animation.layers[2]
}
small_miner.working_visualisations[6].east_animation = { layers = {
  small_miner.working_visualisations[6].east_animation,
  {
    priority = "high",
    filename = "__reskins-bobs__/graphics/entity/mining/mining-drill/drill/electric-mining-drill-horizontal-front-mask.png",
    line_length = 6,
    width = 32,
    height = 76,
    frame_count = 30,
    animation_speed = 0.4,
    frame_sequence = drill_animation_sequence,
    direction_count = 1,
    shift = util.by_pixel(-2*0.6666, 4*0.6666),
    tint = {240, 160, 0},
    scale = 0.6666
  },
  {
    priority = "high",
    filename = "__reskins-bobs__/graphics/entity/mining/mining-drill/drill/electric-mining-drill-horizontal-front-highlights.png",
    line_length = 6,
    width = 32,
    height = 76,
    frame_count = 30,
    animation_speed = 0.4,
    frame_sequence = drill_animation_sequence,
    direction_count = 1,
    shift = util.by_pixel(-2*0.6666, 4*0.6666),
    blend_mode = "additive",
    scale = 0.6666
  }
}}
small_miner.working_visualisations[3].south_animation =
    small_miner.working_visualisations[3].north_animation
small_miner.working_visualisations[3].west_animation =
    small_miner.working_visualisations[3].east_animation
small_miner.working_visualisations[6].west_animation =
    small_miner.working_visualisations[6].east_animation
data.raw["mining-drill"]["nullius-small-miner-2"].graphics_set = util.table.deepcopy(small_miner)

small_miner.animation.north.layers[1].filename =
    "__reskins-bobs__/graphics/entity/mining/mining-drill/area-frame/electric-mining-drill-N.png"
small_miner.animation.east.layers[1].filename =
    "__reskins-bobs__/graphics/entity/mining/mining-drill/area-frame/electric-mining-drill-E.png"
small_miner.animation.west.layers[1].filename =
    "__reskins-bobs__/graphics/entity/mining/mining-drill/area-frame/electric-mining-drill-W.png"
small_miner.working_visualisations[7].east_animation.filename =
    "__reskins-bobs__/graphics/entity/mining/mining-drill/area-frame/electric-mining-drill-E-front.png"
small_miner.working_visualisations[7].south_animation.layers[1].filename =
    "__reskins-bobs__/graphics/entity/mining/mining-drill/area-frame/electric-mining-drill-S-output.png"
small_miner.working_visualisations[7].south_animation.layers[2].filename =
    "__reskins-bobs__/graphics/entity/mining/mining-drill/area-frame/electric-mining-drill-S-front.png"
small_miner.working_visualisations[7].west_animation.filename =
    "__reskins-bobs__/graphics/entity/mining/mining-drill/area-frame/electric-mining-drill-W-front.png"
small_miner.working_visualisations[3].north_animation.layers[2].tint = {118, 149, 235}
small_miner.working_visualisations[3].east_animation.layers[2].tint = {118, 149, 235}
small_miner.working_visualisations[6].east_animation.layers[2].tint = {118, 149, 235}
data.raw["mining-drill"]["nullius-small-miner-3"].graphics_set = small_miner


local medium_miner = util.table.deepcopy(data.raw["mining-drill"]["nullius-medium-miner-3"].graphics_set)
medium_miner.working_visualisations[3].north_animation.layers = {
  medium_miner.working_visualisations[3].north_animation.layers[1],
  {
    priority = "high",
    filename = "__reskins-bobs__/graphics/entity/mining/mining-drill/drill/electric-mining-drill-mask.png",
    line_length = 6,
    width = 84,
    height = 80,
    frame_count = 30,
    animation_speed = 0.4,
    frame_sequence = drill_animation_sequence,
    direction_count = 1,
    shift = util.by_pixel(0, -12),
    tint = {240, 160, 0},
    hr_version = {
        priority = "high",
        filename = "__reskins-bobs__/graphics/entity/mining/mining-drill/drill/hr-electric-mining-drill-mask.png",
        line_length = 6,
        width = 162,
        height = 156,
        frame_count = 30,
        animation_speed = 0.4,
        frame_sequence = drill_animation_sequence,
        direction_count = 1,
        shift = util.by_pixel(1, -11),
        tint = {240, 160, 0},
        scale = 0.5
    }
  },
  {
    priority = "high",
    filename = "__reskins-bobs__/graphics/entity/mining/mining-drill/drill/electric-mining-drill-highlights.png",
    line_length = 6,
    width = 84,
    height = 80,
    frame_count = 30,
    animation_speed = 0.4,
    frame_sequence = drill_animation_sequence,
    direction_count = 1,
    shift = util.by_pixel(0, -12),
    blend_mode = "additive",
    hr_version = {
        priority = "high",
        filename = "__reskins-bobs__/graphics/entity/mining/mining-drill/drill/hr-electric-mining-drill-highlights.png",
        line_length = 6,
        width = 162,
        height = 156,
        frame_count = 30,
        animation_speed = 0.4,
        frame_sequence = drill_animation_sequence,
        direction_count = 1,
        shift = util.by_pixel(1, -11),
        blend_mode = "additive",
        scale = 0.5
    }
  },
  medium_miner.working_visualisations[3].north_animation.layers[2]
}
medium_miner.working_visualisations[3].east_animation.layers = {
  medium_miner.working_visualisations[3].east_animation.layers[1],
  {
    priority = "high",
    filename = "__reskins-bobs__/graphics/entity/mining/mining-drill/drill/electric-mining-drill-horizontal-mask.png",
    line_length = 6,
    width = 40,
    height = 80,
    frame_count = 30,
    animation_speed = 0.4,
    frame_sequence = drill_animation_sequence,
    direction_count = 1,
    shift = util.by_pixel(2, -12),
    tint = {240, 160, 0},
    hr_version = {
        priority = "high",
        filename = "__reskins-bobs__/graphics/entity/mining/mining-drill/drill/hr-electric-mining-drill-horizontal-mask.png",
        line_length = 6,
        width = 80,
        height = 160,
        frame_count = 30,
        animation_speed = 0.4,
        frame_sequence = drill_animation_sequence,
        direction_count = 1,
        shift = util.by_pixel(2, -12),
        tint = {240, 160, 0},
        scale = 0.5
    }
  },
  {
    priority = "high",
    filename = "__reskins-bobs__/graphics/entity/mining/mining-drill/drill/electric-mining-drill-horizontal-highlights.png",
    line_length = 6,
    width = 40,
    height = 80,
    frame_count = 30,
    animation_speed = 0.4,
    frame_sequence = drill_animation_sequence,
    direction_count = 1,
    shift = util.by_pixel(2, -12),
    blend_mode = "additive",
    hr_version = {
        priority = "high",
        filename = "__reskins-bobs__/graphics/entity/mining/mining-drill/drill/hr-electric-mining-drill-horizontal-highlights.png",
        line_length = 6,
        width = 80,
        height = 160,
        frame_count = 30,
        animation_speed = 0.4,
        frame_sequence = drill_animation_sequence,
        direction_count = 1,
        shift = util.by_pixel(2, -12),
        blend_mode = "additive",
        scale = 0.5
    }
  },
  medium_miner.working_visualisations[3].east_animation.layers[2]
}
medium_miner.working_visualisations[6].east_animation = { layers = {
  medium_miner.working_visualisations[6].east_animation,
  {
    priority = "high",
    filename = "__reskins-bobs__/graphics/entity/mining/mining-drill/drill/electric-mining-drill-horizontal-front-mask.png",
    line_length = 6,
    width = 32,
    height = 76,
    frame_count = 30,
    animation_speed = 0.4,
    frame_sequence = drill_animation_sequence,
    direction_count = 1,
    shift = util.by_pixel(-2, 4),
    tint = {240, 160, 0},
    hr_version = {
        priority = "high",
        filename = "__reskins-bobs__/graphics/entity/mining/mining-drill/drill/hr-electric-mining-drill-horizontal-front-mask.png",
        line_length = 6,
        width = 66,
        height = 154,
        frame_count = 30,
        animation_speed = 0.4,
        frame_sequence = drill_animation_sequence,
        direction_count = 1,
        shift = util.by_pixel(-3, 3),
        tint = {240, 160, 0},
        scale = 0.5
    }
  },
  {
    priority = "high",
    filename = "__reskins-bobs__/graphics/entity/mining/mining-drill/drill/electric-mining-drill-horizontal-front-highlights.png",
    line_length = 6,
    width = 32,
    height = 76,
    frame_count = 30,
    animation_speed = 0.4,
    frame_sequence = drill_animation_sequence,
    direction_count = 1,
    shift = util.by_pixel(-2, 4),
    blend_mode = "additive",
    hr_version = {
        priority = "high",
        filename = "__reskins-bobs__/graphics/entity/mining/mining-drill/drill/hr-electric-mining-drill-horizontal-front-highlights.png",
        line_length = 6,
        width = 66,
        height = 154,
        frame_count = 30,
        animation_speed = 0.4,
        frame_sequence = drill_animation_sequence,
        direction_count = 1,
        shift = util.by_pixel(-3, 3),
        blend_mode = "additive",
        scale = 0.5
    }
  }
}}
medium_miner.working_visualisations[3].south_animation =
    medium_miner.working_visualisations[3].north_animation
medium_miner.working_visualisations[3].west_animation =
    medium_miner.working_visualisations[3].east_animation
medium_miner.working_visualisations[6].west_animation =
    medium_miner.working_visualisations[6].east_animation
data.raw["mining-drill"]["nullius-medium-miner-2"].graphics_set = util.table.deepcopy(medium_miner)

medium_miner.animation.north.layers[1].filename =
    "__reskins-bobs__/graphics/entity/mining/mining-drill/area-frame/electric-mining-drill-N.png"
medium_miner.animation.east.layers[1].filename =
    "__reskins-bobs__/graphics/entity/mining/mining-drill/area-frame/electric-mining-drill-E.png"
medium_miner.animation.west.layers[1].filename =
    "__reskins-bobs__/graphics/entity/mining/mining-drill/area-frame/electric-mining-drill-W.png"
medium_miner.working_visualisations[7].east_animation.filename =
    "__reskins-bobs__/graphics/entity/mining/mining-drill/area-frame/electric-mining-drill-E-front.png"
medium_miner.working_visualisations[7].south_animation.layers[1].filename =
    "__reskins-bobs__/graphics/entity/mining/mining-drill/area-frame/electric-mining-drill-S-output.png"
medium_miner.working_visualisations[7].south_animation.layers[2].filename =
    "__reskins-bobs__/graphics/entity/mining/mining-drill/area-frame/electric-mining-drill-S-front.png"
medium_miner.working_visualisations[7].west_animation.filename =
    "__reskins-bobs__/graphics/entity/mining/mining-drill/area-frame/electric-mining-drill-W-front.png"
medium_miner.working_visualisations[3].north_animation.layers[2].tint = {118, 149, 235}
medium_miner.working_visualisations[3].east_animation.layers[2].tint = {118, 149, 235}
medium_miner.working_visualisations[6].east_animation.layers[2].tint = {118, 149, 235}
medium_miner.animation.north.layers[1].hr_version.filename =
    "__reskins-bobs__/graphics/entity/mining/mining-drill/area-frame/hr-electric-mining-drill-N.png"
medium_miner.animation.east.layers[1].hr_version.filename =
    "__reskins-bobs__/graphics/entity/mining/mining-drill/area-frame/hr-electric-mining-drill-E.png"
medium_miner.animation.west.layers[1].hr_version.filename =
    "__reskins-bobs__/graphics/entity/mining/mining-drill/area-frame/hr-electric-mining-drill-W.png"
medium_miner.working_visualisations[7].east_animation.hr_version.filename =
    "__reskins-bobs__/graphics/entity/mining/mining-drill/area-frame/hr-electric-mining-drill-E-front.png"
medium_miner.working_visualisations[7].south_animation.layers[1].hr_version.filename =
    "__reskins-bobs__/graphics/entity/mining/mining-drill/area-frame/hr-electric-mining-drill-S-output.png"
medium_miner.working_visualisations[7].south_animation.layers[2].hr_version.filename =
    "__reskins-bobs__/graphics/entity/mining/mining-drill/area-frame/hr-electric-mining-drill-S-front.png"
medium_miner.working_visualisations[7].west_animation.hr_version.filename =
    "__reskins-bobs__/graphics/entity/mining/mining-drill/area-frame/hr-electric-mining-drill-W-front.png"
medium_miner.working_visualisations[3].north_animation.layers[2].hr_version.tint = {118, 149, 235}
medium_miner.working_visualisations[3].east_animation.layers[2].hr_version.tint = {118, 149, 235}
medium_miner.working_visualisations[6].east_animation.layers[2].hr_version.tint = {118, 149, 235}
data.raw["mining-drill"]["nullius-medium-miner-3"].graphics_set = medium_miner


local large_miner = util.table.deepcopy(data.raw["mining-drill"]["nullius-large-miner-2"].graphics_set)
large_miner.working_visualisations[3].north_animation.layers = {
  large_miner.working_visualisations[3].north_animation.layers[1],
  {
    priority = "high",
    filename = "__reskins-bobs__/graphics/entity/mining/mining-drill/drill/hr-electric-mining-drill-mask.png",
    line_length = 6,
    width = 162,
    height = 156,
    frame_count = 30,
    animation_speed = 0.4,
    frame_sequence = drill_animation_sequence,
    direction_count = 1,
    shift = util.by_pixel(1*1.3333, -11*1.3333),
    tint = {240, 160, 0},
    scale = 0.6666
  },
  {
    priority = "high",
    filename = "__reskins-bobs__/graphics/entity/mining/mining-drill/drill/hr-electric-mining-drill-highlights.png",
    line_length = 6,
    width = 162,
    height = 156,
    frame_count = 30,
    animation_speed = 0.4,
    frame_sequence = drill_animation_sequence,
    direction_count = 1,
    shift = util.by_pixel(1*1.3333, -11*1.3333),
    blend_mode = "additive",
    scale = 0.6666
  },
  large_miner.working_visualisations[3].north_animation.layers[2]
}
large_miner.working_visualisations[3].east_animation.layers = {
  large_miner.working_visualisations[3].east_animation.layers[1],
  {
    priority = "high",
    filename = "__reskins-bobs__/graphics/entity/mining/mining-drill/drill/hr-electric-mining-drill-horizontal-mask.png",
    line_length = 6,
    width = 80,
    height = 160,
    frame_count = 30,
    animation_speed = 0.4,
    frame_sequence = drill_animation_sequence,
    direction_count = 1,
    shift = util.by_pixel(2*1.3333, -12*1.3333),
    tint = {240, 160, 0},
    scale = 0.6666
  },
  {
    priority = "high",
    filename = "__reskins-bobs__/graphics/entity/mining/mining-drill/drill/hr-electric-mining-drill-horizontal-highlights.png",
    line_length = 6,
    width = 80,
    height = 160,
    frame_count = 30,
    animation_speed = 0.4,
    frame_sequence = drill_animation_sequence,
    direction_count = 1,
    shift = util.by_pixel(2*1.3333, -12*1.3333),
    blend_mode = "additive",
    scale = 0.6666
  },
  large_miner.working_visualisations[3].east_animation.layers[2]
}
large_miner.working_visualisations[6].east_animation = { layers = {
  large_miner.working_visualisations[6].east_animation,
  {
    priority = "high",
    filename = "__reskins-bobs__/graphics/entity/mining/mining-drill/drill/hr-electric-mining-drill-horizontal-front-mask.png",
    line_length = 6,
    width = 66,
    height = 154,
    frame_count = 30,
    animation_speed = 0.4,
    frame_sequence = drill_animation_sequence,
    direction_count = 1,
    shift = util.by_pixel(-3*1.3333, 3*1.3333),
    tint = {240, 160, 0},
    scale = 0.6666
  },
  {
    priority = "high",
    filename = "__reskins-bobs__/graphics/entity/mining/mining-drill/drill/hr-electric-mining-drill-horizontal-front-highlights.png",
    line_length = 6,
    width = 66,
    height = 154,
    frame_count = 30,
    animation_speed = 0.4,
    frame_sequence = drill_animation_sequence,
    direction_count = 1,
    shift = util.by_pixel(-3*1.3333, 3*1.3333),
    blend_mode = "additive",
    scale = 0.6666
  }
}}
large_miner.working_visualisations[3].south_animation =
    large_miner.working_visualisations[3].north_animation
large_miner.working_visualisations[3].west_animation =
    large_miner.working_visualisations[3].east_animation
large_miner.working_visualisations[6].west_animation =
    large_miner.working_visualisations[6].east_animation
data.raw["mining-drill"]["nullius-large-miner-1"].graphics_set = util.table.deepcopy(large_miner)

large_miner.animation.north.layers[1].filename =
    "__reskins-bobs__/graphics/entity/mining/mining-drill/area-frame/hr-electric-mining-drill-N.png"
large_miner.animation.east.layers[1].filename =
    "__reskins-bobs__/graphics/entity/mining/mining-drill/area-frame/hr-electric-mining-drill-E.png"
large_miner.animation.west.layers[1].filename =
    "__reskins-bobs__/graphics/entity/mining/mining-drill/area-frame/hr-electric-mining-drill-W.png"
large_miner.working_visualisations[7].east_animation.filename =
    "__reskins-bobs__/graphics/entity/mining/mining-drill/area-frame/hr-electric-mining-drill-E-front.png"
large_miner.working_visualisations[7].south_animation.layers[1].filename =
    "__reskins-bobs__/graphics/entity/mining/mining-drill/area-frame/hr-electric-mining-drill-S-output.png"
large_miner.working_visualisations[7].south_animation.layers[2].filename =
    "__reskins-bobs__/graphics/entity/mining/mining-drill/area-frame/hr-electric-mining-drill-S-front.png"
large_miner.working_visualisations[7].west_animation.filename =
    "__reskins-bobs__/graphics/entity/mining/mining-drill/area-frame/hr-electric-mining-drill-W-front.png"
large_miner.working_visualisations[3].north_animation.layers[2].tint = {118, 149, 235}
large_miner.working_visualisations[3].east_animation.layers[2].tint = {118, 149, 235}
large_miner.working_visualisations[6].east_animation.layers[2].tint = {118, 149, 235}
data.raw["mining-drill"]["nullius-large-miner-2"].graphics_set = large_miner

end
