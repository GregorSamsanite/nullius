data:extend({
  {
    type = "beacon",
    name = "nullius-beacon-1",
    icons = data.raw.item["nullius-beacon-1"].icons,
    flags = {"placeable-player", "player-creation"},
    minable = {mining_time = 0.2, result = "nullius-beacon-1"},
    max_health = 400,
    corpse = "medium-remnants",
    dying_explosion = "beacon-explosion",
    collision_box = {{-1.2, -1.2}, {1.2, 1.2}},
    selection_box = {{-1.5, -1.5}, {1.5, 1.5}},
    damaged_trigger_effect = data.raw.beacon["beacon"].damaged_trigger_effect,
    drawing_box = {{-1.5, -2.2}, {1.5, 1.3}},
    allowed_effects = {"consumption", "speed", "pollution"},
	resistances = {
      { type = "impact", decrease = 50, percent = 80 }
    },
    fast_replaceable_group = "beacon",
    next_upgrade = "nullius-beacon-2",

	water_reflection = data.raw.beacon["beacon"].water_reflection,
    radius_visualisation_picture = data.raw.beacon["beacon"].radius_visualisation_picture,
    supply_area_distance = 3,
    energy_source = { type = "electric", usage_priority = "secondary-input" },
    vehicle_impact_sound = data.raw.beacon["beacon"].vehicle_impact_sound,
    open_sound = data.raw.beacon["beacon"].open_sound,
    close_sound = data.raw.beacon["beacon"].close_sound,
    energy_usage = "100kW",
    distribution_effectivity = 0.5,
    module_specification = {
      module_slots = 1,
      module_info_icon_shift = {0, 0.5},
      module_info_multi_row_initial_height_modifier = -0.3
    },

	graphics_set = {
      module_icons_suppressed = true,
      animation_progress = 1,
      min_animation_progress = 0,
      module_tint_mode = "mix",
      no_modules_tint = {1, 0, 0},
      random_animation_offset = true,
	  apply_module_tint = "secondary",
      apply_module_tint_to_light = "none",

      animation_list = {
        {
          render_layer = "floor-mechanics",
          always_draw = true,
          animation = {
            layers = {
              {
                filename = "__base__/graphics/entity/beacon/hr-beacon-bottom.png",
                width = 212,
                height = 192,
                scale = 0.4,
                shift = util.by_pixel(0.5*0.8, 1*0.8),
				tint = {0.8, 0.9, 0.7}
              },
              {
                filename = "__base__/graphics/entity/beacon/hr-beacon-shadow.png",
                width = 244,
                height = 176,
                scale = 0.4,
                draw_as_shadow = true,
                shift = util.by_pixel(12.5*0.8, 0.5*0.8)
              }
            }
          }
        },
        {
          render_layer = "object",
          always_draw = true,
          animation = {
            filename = "__base__/graphics/entity/beacon/hr-beacon-top.png",
            width = 96,
            height = 140,
            scale = 0.4,
            repeat_count = 45,
            animation_speed = 0.5,
            shift = util.by_pixel(3*0.8, -19*0.8)
          }
        },
        {
          render_layer = "object",
          apply_tint = true,
          draw_as_sprite = true,
          draw_as_light = true,
          always_draw = false,
          animation = {
            filename = "__base__/graphics/entity/beacon/hr-beacon-light.png",
            line_length = 9,
            width = 110,
            height = 186,
            frame_count = 45,
            animation_speed = 0.5,
            scale = 0.4,
            shift = util.by_pixel(0.5*0.8, -18*0.8),
            blend_mode = "additive"
          }
        }
      },

      module_visualisations = {
		{
          art_style = "vanilla",
          use_for_empty_slots = true,
          tier_offset = 0,
          slots = {
            {
			  -- slot 1
              {
                has_empty_slot = true,
                render_layer = "lower-object",
                pictures = {
                  filename = "__base__/graphics/entity/beacon/hr-beacon-module-slot-1.png",
                  line_length = 4,
                  width = 50,
                  height = 66,
                  variation_count = 4,
                  scale = 0.4,
                  shift = util.by_pixel(-16*0.8, 14.5*0.8),
                }
              },
              {
                apply_module_tint = "primary",
                render_layer = "lower-object",
                pictures = {
                  filename = "__base__/graphics/entity/beacon/hr-beacon-module-mask-box-1.png",
                  line_length = 3,
                  width = 36,
                  height = 32,
                  variation_count = 3,
                  scale = 0.4,
                  shift = util.by_pixel(-17*0.8, 15*0.8),
                }
              },
              {
                apply_module_tint = "secondary",
                render_layer = "lower-object-above-shadow",
                pictures = {
                  filename = "__base__/graphics/entity/beacon/hr-beacon-module-mask-lights-1.png",
                  line_length = 3,
                  width = 26,
                  height = 12,
                  variation_count = 3,
                  scale = 0.4,
                  shift = util.by_pixel(-18.5*0.8, 13*0.8),
                }
              },
              {
                apply_module_tint = "secondary",
                draw_as_light = true,
                draw_as_sprite = false,
                pictures = {
                  filename = "__base__/graphics/entity/beacon/hr-beacon-module-lights-1.png",
                  line_length = 3,
                  width = 56,
                  height = 42,
                  variation_count = 3,
                  shift = util.by_pixel(-18*0.8, 13*0.8),
                  scale = 0.4
                }
              }
            }
          }
        }
      }
    }
  },

  {
    type = "beacon",
    name = "nullius-beacon-2",
    icons = data.raw.item["nullius-beacon-2"].icons,
    flags = {"placeable-player", "player-creation"},
    minable = {mining_time = 0.2, result = "nullius-beacon-2"},
    max_health = 500,
    corpse = "medium-remnants",
    dying_explosion = "beacon-explosion",
    collision_box = {{-1.2, -1.2}, {1.2, 1.2}},
    selection_box = {{-1.5, -1.5}, {1.5, 1.5}},
    damaged_trigger_effect = data.raw.beacon["beacon"].damaged_trigger_effect,
    drawing_box = {{-1.5, -2.2}, {1.5, 1.3}},
    allowed_effects = {"consumption", "speed", "pollution"},
	resistances = {
      { type = "impact", decrease = 50, percent = 80 }
    },
    fast_replaceable_group = "beacon",
	next_upgrade = "nullius-beacon-3",

	water_reflection = data.raw.beacon["beacon"].water_reflection,
    radius_visualisation_picture = data.raw.beacon["beacon"].radius_visualisation_picture,
    supply_area_distance = 3,
    energy_source = { type = "electric", usage_priority = "secondary-input" },
    vehicle_impact_sound = data.raw.beacon["beacon"].vehicle_impact_sound,
    open_sound = data.raw.beacon["beacon"].open_sound,
    close_sound = data.raw.beacon["beacon"].close_sound,
    energy_usage = "200kW",
    distribution_effectivity = 0.375,
    module_specification = {
      module_slots = 2,
      module_info_icon_shift = {0, 0.5},
      module_info_multi_row_initial_height_modifier = -0.3
    },

	graphics_set =  {
      module_icons_suppressed = true,
      animation_progress = 1,
      min_animation_progress = 0,
      module_tint_mode = "mix",
      no_modules_tint = {1, 0, 0},
      random_animation_offset = true,
	  apply_module_tint = "secondary",
      apply_module_tint_to_light = "none",

      animation_list = {
        {
          render_layer = "floor-mechanics",
          always_draw = true,
          animation = {
            layers = {
              {
                filename = "__base__/graphics/entity/beacon/hr-beacon-bottom.png",
                width = 212,
                height = 192,
                scale = 0.45,
                shift = util.by_pixel(0.5*0.9, 1*0.9),
				tint = {0.9, 0.8, 1}
              },
              {
                filename = "__base__/graphics/entity/beacon/hr-beacon-shadow.png",
                width = 244,
                height = 176,
                scale = 0.45,
                draw_as_shadow = true,
                shift = util.by_pixel(12.5*0.9, 0.5*0.9),
              }
            }
          }
        },
        {
          render_layer = "object",
          always_draw = true,
          animation = {
            filename = "__base__/graphics/entity/beacon/hr-beacon-top.png",
            width = 96,
            height = 140,
            scale = 0.5,
            repeat_count = 45,
            animation_speed = 0.45,
            shift = util.by_pixel(3*0.9, -19*0.9),
          }
        },
        {
          render_layer = "object",
          apply_tint = true,
          draw_as_sprite = true,
          draw_as_light = true,
          always_draw = false,
          animation = {
            filename = "__base__/graphics/entity/beacon/hr-beacon-light.png",
            line_length = 9,
            width = 110,
            height = 186,
            frame_count = 45,
            animation_speed = 0.5,
            scale = 0.45,
            shift = util.by_pixel(0.5*0.9, -18*0.9),
            blend_mode = "additive",
          }
        }
      },

      module_visualisations = {
		{
          art_style = "vanilla",
          use_for_empty_slots = true,
          tier_offset = 0,
          slots = {
            {
			  -- slot 1
              {
                has_empty_slot = true,
                render_layer = "lower-object",
                pictures = {
                  filename = "__base__/graphics/entity/beacon/hr-beacon-module-slot-1.png",
                  line_length = 4,
                  width = 50,
                  height = 66,
                  variation_count = 4,
                  scale = 0.45,
                  shift = util.by_pixel(-16*0.9, 14.5*0.9),
                }
              },
              {
                apply_module_tint = "primary",
                render_layer = "lower-object",
                pictures = {
                  filename = "__base__/graphics/entity/beacon/hr-beacon-module-mask-box-1.png",
                  line_length = 3,
                  width = 36,
                  height = 32,
                  variation_count = 3,
                  scale = 0.45,
                  shift = util.by_pixel(-17*0.9, 15*0.9),
                }
              },
              {
                apply_module_tint = "secondary",
                render_layer = "lower-object-above-shadow",
                pictures = {
                  filename = "__base__/graphics/entity/beacon/hr-beacon-module-mask-lights-1.png",
                  line_length = 3,
                  width = 26,
                  height = 12,
                  variation_count = 3,
                  scale = 0.45,
                  shift = util.by_pixel(-18.5*0.9, 13*0.9),
                }
              },
              {
                apply_module_tint = "secondary",
                draw_as_light = true,
                draw_as_sprite = false,
                pictures = {
                  filename = "__base__/graphics/entity/beacon/hr-beacon-module-lights-1.png",
                  line_length = 3,
                  width = 56,
                  height = 42,
                  variation_count = 3,
                  shift = util.by_pixel(-18*0.9, 13*0.9),
                  scale = 0.45
                }
              }
            },
            {
              -- slot 2
              {
                has_empty_slot = true,
                render_layer = "lower-object",
                pictures = {
                  filename = "__base__/graphics/entity/beacon/hr-beacon-module-slot-2.png",
                  line_length = 4,
                  width = 46,
                  height = 44,
                  variation_count = 4,
                  scale = 0.45,
                  shift = util.by_pixel(19*0.9, -12*0.9),
                }
              },
              {
                apply_module_tint = "primary",
                render_layer = "lower-object",
                pictures = {
                  filename = "__base__/graphics/entity/beacon/hr-beacon-module-mask-box-2.png",
                  line_length = 3,
                  width = 36,
                  height = 26,
                  variation_count = 3,
                  scale = 0.45,
                  shift = util.by_pixel(20.5*0.9, -12*0.9),
                }
              },
              {
                apply_module_tint = "secondary",
                render_layer = "lower-object-above-shadow",
                pictures = {
                  filename = "__base__/graphics/entity/beacon/hr-beacon-module-mask-lights-2.png",
                  line_length = 3,
                  width = 24,
                  height = 14,
                  variation_count = 3,
                  scale = 0.45,
                  shift = util.by_pixel(22*0.9, -15.5*0.9),
                }
              },
              {
                apply_module_tint = "secondary",
                draw_as_light = true,
                draw_as_sprite = false,
                pictures = {
                  filename = "__base__/graphics/entity/beacon/hr-beacon-module-lights-2.png",
                  line_length = 3,
                  width = 66,
                  height = 46,
                  variation_count = 3,
                  shift = util.by_pixel(22*0.9, -16*0.9),
                  scale = 0.45
                }
              }
            }
          }
        }
      }
    }
  },

  {
    type = "beacon",
    name = "nullius-beacon-3",
    icons = data.raw.item["nullius-beacon-3"].icons,
    flags = {"placeable-player", "player-creation"},
    minable = {mining_time = 0.2, result = "nullius-beacon-3"},
    max_health = 600,
    corpse = "medium-remnants",
    dying_explosion = "beacon-explosion",
    collision_box = {{-1.2, -1.2}, {1.2, 1.2}},
    selection_box = {{-1.5, -1.5}, {1.5, 1.5}},
    damaged_trigger_effect = data.raw.beacon["beacon"].damaged_trigger_effect,
    drawing_box = {{-1.5, -2.2}, {1.5, 1.3}},
    allowed_effects = {"consumption", "speed", "pollution"},
	resistances = {
      { type = "impact", decrease = 50, percent = 80 }
    },
    fast_replaceable_group = "beacon",

	water_reflection = data.raw.beacon["beacon"].water_reflection,
    radius_visualisation_picture = data.raw.beacon["beacon"].radius_visualisation_picture,
    supply_area_distance = 3,
    energy_source = { type = "electric", usage_priority = "secondary-input" },
    vehicle_impact_sound = data.raw.beacon["beacon"].vehicle_impact_sound,
    open_sound = data.raw.beacon["beacon"].open_sound,
    close_sound = data.raw.beacon["beacon"].close_sound,
    energy_usage = "300kW",
    distribution_effectivity = 0.5,
    module_specification = {
      module_slots = 2,
      module_info_icon_shift = {0, 0.5},
      module_info_multi_row_initial_height_modifier = -0.3
    },

	graphics_set =  {
      module_icons_suppressed = true,
      animation_progress = 1,
      min_animation_progress = 0,
      module_tint_mode = "mix",
      no_modules_tint = {1, 0, 0},
      random_animation_offset = true,
	  apply_module_tint = "secondary",
      apply_module_tint_to_light = "none",

      animation_list = {
        {
          render_layer = "floor-mechanics",
          always_draw = true,
          animation = {
            layers = {
              {
                filename = "__base__/graphics/entity/beacon/hr-beacon-bottom.png",
                width = 212,
                height = 192,
                scale = 0.5,
                shift = util.by_pixel(0.5, 1),
              },
              {
                filename = "__base__/graphics/entity/beacon/hr-beacon-shadow.png",
                width = 244,
                height = 176,
                scale = 0.5,
                draw_as_shadow = true,
                shift = util.by_pixel(12.5, 0.5),
              }
            }
          }
        },
        {
          render_layer = "object",
          always_draw = true,
          animation = {
            filename = "__base__/graphics/entity/beacon/hr-beacon-top.png",
            width = 96,
            height = 140,
            scale = 0.5,
            repeat_count = 45,
            animation_speed = 0.5,
            shift = util.by_pixel(3, -19),
          }
        },
        {
          render_layer = "object",
          apply_tint = true,
          draw_as_sprite = true,
          draw_as_light = true,
          always_draw = false,
          animation = {
            filename = "__base__/graphics/entity/beacon/hr-beacon-light.png",
            line_length = 9,
            width = 110,
            height = 186,
            frame_count = 45,
            animation_speed = 0.5,
            scale = 0.5,
            shift = util.by_pixel(0.5, -18),
            blend_mode = "additive",
          }
        }
      },

      module_visualisations = {
		{
          art_style = "vanilla",
          use_for_empty_slots = true,
          tier_offset = 0,
          slots = {
            {
			  -- slot 1
              {
                has_empty_slot = true,
                render_layer = "lower-object",
                pictures = {
                  filename = "__base__/graphics/entity/beacon/hr-beacon-module-slot-1.png",
                  line_length = 4,
                  width = 50,
                  height = 66,
                  variation_count = 4,
                  scale = 0.5,
                  shift = util.by_pixel(-16, 14.5),
                }
              },
              {
                apply_module_tint = "primary",
                render_layer = "lower-object",
                pictures = {
                  filename = "__base__/graphics/entity/beacon/hr-beacon-module-mask-box-1.png",
                  line_length = 3,
                  width = 36,
                  height = 32,
                  variation_count = 3,
                  scale = 0.5,
                  shift = util.by_pixel(-17, 15),
                }
              },
              {
                apply_module_tint = "secondary",
                render_layer = "lower-object-above-shadow",
                pictures = {
                  filename = "__base__/graphics/entity/beacon/hr-beacon-module-mask-lights-1.png",
                  line_length = 3,
                  width = 26,
                  height = 12,
                  variation_count = 3,
                  scale = 0.5,
                  shift = util.by_pixel(-18.5, 13),
                }
              },
              {
                apply_module_tint = "secondary",
                draw_as_light = true,
                draw_as_sprite = false,
                pictures = {
                  filename = "__base__/graphics/entity/beacon/hr-beacon-module-lights-1.png",
                  line_length = 3,
                  width = 56,
                  height = 42,
                  variation_count = 3,
                  shift = util.by_pixel(-18, 13),
                  scale = 0.5
                }
              }
            },
            {
              -- slot 2
              {
                has_empty_slot = true,
                render_layer = "lower-object",
                pictures = {
                  filename = "__base__/graphics/entity/beacon/hr-beacon-module-slot-2.png",
                  line_length = 4,
                  width = 46,
                  height = 44,
                  variation_count = 4,
                  scale = 0.5,
                  shift = util.by_pixel(19, -12),
                }
              },
              {
                apply_module_tint = "primary",
                render_layer = "lower-object",
                pictures = {
                  filename = "__base__/graphics/entity/beacon/hr-beacon-module-mask-box-2.png",
                  line_length = 3,
                  width = 36,
                  height = 26,
                  variation_count = 3,
                  scale = 0.5,
                  shift = util.by_pixel(20.5, -12),
                }
              },
              {
                apply_module_tint = "secondary",
                render_layer = "lower-object-above-shadow",
                pictures = {
                  filename = "__base__/graphics/entity/beacon/hr-beacon-module-mask-lights-2.png",
                  line_length = 3,
                  width = 24,
                  height = 14,
                  variation_count = 3,
                  scale = 0.5,
                  shift = util.by_pixel(22, -15.5),
                }
              },
              {
                apply_module_tint = "secondary",
                draw_as_light = true,
                draw_as_sprite = false,
                pictures = {
                  filename = "__base__/graphics/entity/beacon/hr-beacon-module-lights-2.png",
                  line_length = 3,
                  width = 66,
                  height = 46,
                  variation_count = 3,
                  shift = util.by_pixel(22, -16),
                  scale = 0.5
                }
              }
            }
          }
        }
      }
    }
  },

  {
    type = "radar",
    name = "nullius-sensor-node-1",
	icons = data.raw.item["nullius-sensor-node-1"].icons,
    flags = {"placeable-player", "player-creation"},
    minable = {mining_time = 0.2, result = "nullius-sensor-node-1"},
    max_health = 200,
    fast_replaceable_group = "sensor-node",
    next_upgrade = "nullius-sensor-node-2",
    corpse = "radar-remnants",
    dying_explosion = "radar-explosion",
	resistances = {{ type = "impact", decrease = 50, percent = 80 }},
    collision_box = {{-1.2, -1.2}, {1.2, 1.2}},
    selection_box = {{-1.5, -1.5}, {1.5, 1.5}},
    damaged_trigger_effect = data.raw.radar["radar"].damaged_trigger_effect,
    energy_per_sector = "12MJ",
    max_distance_of_sector_revealed = 5,
    max_distance_of_nearby_sector_revealed = 3,
    energy_per_nearby_scan = "200kJ",
    energy_source = { type = "electric", usage_priority = "secondary-input" },
    energy_usage = "100kW",
	integration_patch = data.raw.radar["radar"].integration_patch,
    vehicle_impact_sound = data.raw.radar["radar"].vehicle_impact_sound,
    working_sound = data.raw.radar["radar"].working_sound,
    radius_minimap_visualisation_color = { r = 0.059, g = 0.092, b = 0.235, a = 0.275 },
    rotation_speed = 0.005,
    water_reflection = data.raw.radar["radar"].water_reflection,

    pictures = {
      layers = {
        {
          filename = "__base__/graphics/entity/radar/radar.png",
          priority = "low",
          width = 98,
          height = 128,
          apply_projection = false,
          direction_count = 64,
          line_length = 8,
          shift = util.by_pixel(1, -16),
		  tint = {0.9, 0.9, 0.65},
          hr_version = {
            filename = "__base__/graphics/entity/radar/hr-radar.png",
            priority = "low",
            width = 196,
            height = 254,
            apply_projection = false,
            direction_count = 64,
            line_length = 8,
            shift = util.by_pixel(1, -16),
			tint = {0.9, 0.9, 0.65},
            scale = 0.5
          }
        },
        {
          filename = "__base__/graphics/entity/radar/radar-shadow.png",
          priority = "low",
          width = 172,
          height = 94,
          apply_projection = false,
          direction_count = 64,
          line_length = 8,
          shift = util.by_pixel(39,3),
          draw_as_shadow = true,
          hr_version = {
            filename = "__base__/graphics/entity/radar/hr-radar-shadow.png",
            priority = "low",
            width = 343,
            height = 186,
            apply_projection = false,
            direction_count = 64,
            line_length = 8,
            shift = util.by_pixel(39.25,3),
            draw_as_shadow = true,
            scale = 0.5
          }
        }
      }
    },
  },

  {
    type = "radar",
    name = "nullius-sensor-node-2",
	icons = data.raw.item["nullius-sensor-node-2"].icons,
    flags = {"placeable-player", "player-creation"},
    minable = {mining_time = 0.2, result = "nullius-sensor-node-2"},
    max_health = 300,
    fast_replaceable_group = "sensor-node",
	next_upgrade = "nullius-sensor-node-3",
    corpse = "radar-remnants",
    dying_explosion = "radar-explosion",
	resistances = {{ type = "impact", decrease = 50, percent = 80 }},
    collision_box = {{-1.2, -1.2}, {1.2, 1.2}},
    selection_box = {{-1.5, -1.5}, {1.5, 1.5}},
    damaged_trigger_effect = data.raw.radar["radar"].damaged_trigger_effect,
    energy_per_sector = "10MJ",
    max_distance_of_sector_revealed = 7,
    max_distance_of_nearby_sector_revealed = 4,
    energy_per_nearby_scan = "200kJ",
    energy_source = { type = "electric", usage_priority = "secondary-input" },
    energy_usage = "150kW",
	integration_patch = data.raw.radar["radar"].integration_patch,
    vehicle_impact_sound = data.raw.radar["radar"].vehicle_impact_sound,
    working_sound = data.raw.radar["radar"].working_sound,
    radius_minimap_visualisation_color = { r = 0.059, g = 0.092, b = 0.235, a = 0.275 },
    rotation_speed = 0.008,
    water_reflection = data.raw.radar["radar"].water_reflection,

    pictures = {
      layers = {
        {
          filename = "__base__/graphics/entity/radar/radar.png",
          priority = "low",
          width = 98,
          height = 128,
          apply_projection = false,
          direction_count = 64,
          line_length = 8,
          shift = util.by_pixel(1, -16),
		  tint = {0.8, 0.8, 1},
          hr_version = {
            filename = "__base__/graphics/entity/radar/hr-radar.png",
            priority = "low",
            width = 196,
            height = 254,
            apply_projection = false,
            direction_count = 64,
            line_length = 8,
            shift = util.by_pixel(1, -16),
			tint = {0.8, 0.8, 1},
            scale = 0.5
          }
        },
        {
          filename = "__base__/graphics/entity/radar/radar-shadow.png",
          priority = "low",
          width = 172,
          height = 94,
          apply_projection = false,
          direction_count = 64,
          line_length = 8,
          shift = util.by_pixel(39,3),
          draw_as_shadow = true,
          hr_version = {
            filename = "__base__/graphics/entity/radar/hr-radar-shadow.png",
            priority = "low",
            width = 343,
            height = 186,
            apply_projection = false,
            direction_count = 64,
            line_length = 8,
            shift = util.by_pixel(39.25,3),
            draw_as_shadow = true,
            scale = 0.5
          }
        }
      }
    },
  },

  {
    type = "radar",
    name = "nullius-sensor-node-3",
	icons = data.raw.item["nullius-sensor-node-3"].icons,
    flags = {"placeable-player", "player-creation"},
    minable = {mining_time = 0.2, result = "nullius-sensor-node-3"},
    max_health = 400,
    fast_replaceable_group = "sensor-node",
    corpse = "radar-remnants",
    dying_explosion = "radar-explosion",
	resistances = {{ type = "impact", decrease = 50, percent = 80 }},
    collision_box = {{-1.2, -1.2}, {1.2, 1.2}},
    selection_box = {{-1.5, -1.5}, {1.5, 1.5}},
    damaged_trigger_effect = data.raw.radar["radar"].damaged_trigger_effect,
    energy_per_sector = "8MJ",
    max_distance_of_sector_revealed = 10,
    max_distance_of_nearby_sector_revealed = 6,
    energy_per_nearby_scan = "200kJ",
    energy_source = { type = "electric", usage_priority = "secondary-input" },
    energy_usage = "250kW",
	integration_patch = data.raw.radar["radar"].integration_patch,
    vehicle_impact_sound = data.raw.radar["radar"].vehicle_impact_sound,
    working_sound = data.raw.radar["radar"].working_sound,
    radius_minimap_visualisation_color = { r = 0.059, g = 0.092, b = 0.235, a = 0.275 },
    rotation_speed = 0.01,
    water_reflection = data.raw.radar["radar"].water_reflection,

    pictures = {
      layers = {
        {
          filename = "__base__/graphics/entity/radar/radar.png",
          priority = "low",
          width = 98,
          height = 128,
          apply_projection = false,
          direction_count = 64,
          line_length = 8,
          shift = util.by_pixel(1, -16),
          hr_version = {
            filename = "__base__/graphics/entity/radar/hr-radar.png",
            priority = "low",
            width = 196,
            height = 254,
            apply_projection = false,
            direction_count = 64,
            line_length = 8,
            shift = util.by_pixel(1, -16),
            scale = 0.5
          }
        },
        {
          filename = "__base__/graphics/entity/radar/radar-shadow.png",
          priority = "low",
          width = 172,
          height = 94,
          apply_projection = false,
          direction_count = 64,
          line_length = 8,
          shift = util.by_pixel(39,3),
          draw_as_shadow = true,
          hr_version = {
            filename = "__base__/graphics/entity/radar/hr-radar-shadow.png",
            priority = "low",
            width = 343,
            height = 186,
            apply_projection = false,
            direction_count = 64,
            line_length = 8,
            shift = util.by_pixel(39.25,3),
            draw_as_shadow = true,
            scale = 0.5
          }
        }
      }
    },
  },

  {
    type = "lab",
    name = "nullius-lab-1",
	icons = data.raw.item["nullius-lab-1"].icons,
    flags = {"placeable-player", "player-creation"},
    minable = {mining_time = 0.5, result = "nullius-lab-1"},
    max_health = 150,
    corpse = "lab-remnants",
    dying_explosion = "lab-explosion",
    fast_replaceable_group = "lab",
    next_upgrade = "nullius-lab-2",
    collision_box = {{-1.2, -1.2}, {1.2, 1.2}},
    selection_box = {{-1.5, -1.5}, {1.5, 1.5}},
    light = {intensity = 0.75, size = 8, color = {r = 1.0, g = 1.0, b = 1.0}},
    damaged_trigger_effect = data.raw.lab["lab"].damaged_trigger_effect,
    working_sound = data.raw.lab["lab"].working_sound,
    vehicle_impact_sound = data.raw.lab["lab"].vehicle_impact_sound,
    open_sound = data.raw.lab["lab"].open_sound,
    close_sound = data.raw.lab["lab"].close_sound,
    energy_source = {
      type = "electric",
      usage_priority = "secondary-input",
	  drain = "5kW"
    },
    energy_usage = "95kW",
    researching_speed = 1,
    inputs = {
	  "nullius-geology-pack",
      "nullius-climatology-pack",
      "nullius-mechanical-pack",
      "nullius-electrical-pack",
      "nullius-chemical-pack",
      "nullius-physics-pack",
      "nullius-astronomy-pack"
	},
    module_specification = {
      module_slots = 2,
      module_info_icon_shift = {0, 0.9}
    },
    allowed_effects = {"speed", "productivity", "consumption", "pollution"},

    on_animation = {
      layers = {
        {
          filename = "__base__/graphics/entity/lab/lab.png",
          width = 98,
          height = 87,
          frame_count = 33,
          line_length = 11,
          animation_speed = 1 / 3,
          shift = util.by_pixel(0, 1.5),
		  tint = {0.8, 1, 0.7},
          hr_version = {
            filename = "__base__/graphics/entity/lab/hr-lab.png",
            width = 194,
            height = 174,
            frame_count = 33,
            line_length = 11,
            animation_speed = 1 / 3,
            shift = util.by_pixel(0, 1.5),
			tint = {0.8, 1, 0.7},
            scale = 0.5
          }
        },
        {
          filename = "__base__/graphics/entity/lab/lab-integration.png",
          width = 122,
          height = 81,
          frame_count = 1,
          line_length = 1,
          repeat_count = 33,
          animation_speed = 1 / 3,
          shift = util.by_pixel(0, 15.5),
          hr_version = {
            filename = "__base__/graphics/entity/lab/hr-lab-integration.png",
            width = 242,
            height = 162,
            frame_count = 1,
            line_length = 1,
            repeat_count = 33,
            animation_speed = 1 / 3,
            shift = util.by_pixel(0, 15.5),
            scale = 0.5
          }
        },
        {
          filename = "__base__/graphics/entity/lab/lab-shadow.png",
          width = 122,
          height = 68,
          frame_count = 1,
          line_length = 1,
          repeat_count = 33,
          animation_speed = 1 / 3,
          shift = util.by_pixel(13, 11),
          draw_as_shadow = true,
          hr_version = {
            filename = "__base__/graphics/entity/lab/hr-lab-shadow.png",
            width = 242,
            height = 136,
            frame_count = 1,
            line_length = 1,
            repeat_count = 33,
            animation_speed = 1 / 3,
            shift = util.by_pixel(13, 11),
            scale = 0.5,
            draw_as_shadow = true
          }
        }
      }
    },
    off_animation = {
      layers = {
        {
          filename = "__base__/graphics/entity/lab/lab.png",
          width = 98,
          height = 87,
          frame_count = 1,
          shift = util.by_pixel(0, 1.5),
		  tint = {0.8, 1, 0.7},
          hr_version = {
            filename = "__base__/graphics/entity/lab/hr-lab.png",
            width = 194,
            height = 174,
            frame_count = 1,
            shift = util.by_pixel(0, 1.5),
			tint = {0.8, 1, 0.7},
            scale = 0.5
          }
        },
        {
          filename = "__base__/graphics/entity/lab/lab-integration.png",
          width = 122,
          height = 81,
          frame_count = 1,
          shift = util.by_pixel(0, 15.5),
          hr_version = {
            filename = "__base__/graphics/entity/lab/hr-lab-integration.png",
            width = 242,
            height = 162,
            frame_count = 1,
            shift = util.by_pixel(0, 15.5),
            scale = 0.5
          }
        },
        {
          filename = "__base__/graphics/entity/lab/lab-shadow.png",
          width = 122,
          height = 68,
          frame_count = 1,
          shift = util.by_pixel(13, 11),
          draw_as_shadow = true,
          hr_version = {
            filename = "__base__/graphics/entity/lab/hr-lab-shadow.png",
            width = 242,
            height = 136,
            frame_count = 1,
            shift = util.by_pixel(13, 11),
            draw_as_shadow = true,
            scale = 0.5
          }
        }
      }
    }
  }
})

data:extend({
  {
    type = "lab",
    name = "nullius-lab-2",
	icons = data.raw.item["nullius-lab-2"].icons,
    flags = {"placeable-player", "player-creation"},
    minable = {mining_time = 0.5, result = "nullius-lab-2"},
    max_health = 200,
    corpse = "lab-remnants",
    dying_explosion = "lab-explosion",
    fast_replaceable_group = "lab",
    next_upgrade = "nullius-lab-3",
    collision_box = {{-1.2, -1.2}, {1.2, 1.2}},
    selection_box = {{-1.5, -1.5}, {1.5, 1.5}},
    light = {intensity = 0.75, size = 8, color = {r = 1.0, g = 1.0, b = 1.0}},
    damaged_trigger_effect = data.raw.lab["lab"].damaged_trigger_effect,
    working_sound = data.raw.lab["lab"].working_sound,
    vehicle_impact_sound = data.raw.lab["lab"].vehicle_impact_sound,
    open_sound = data.raw.lab["lab"].open_sound,
    close_sound = data.raw.lab["lab"].close_sound,
    energy_source = {
      type = "electric",
      usage_priority = "secondary-input",
	  drain = "15kW"
    },
    energy_usage = "210kW",
    researching_speed = 2,
	inputs = data.raw.lab["nullius-lab-1"].inputs,
    module_specification = {
      module_slots = 3,
      module_info_icon_shift = {0, 0.9}
    },
    allowed_effects = {"speed", "productivity", "consumption", "pollution"},

    on_animation = {
      layers = {
        {
          filename = "__base__/graphics/entity/lab/lab.png",
          width = 98,
          height = 87,
          frame_count = 33,
          line_length = 11,
          animation_speed = 1 / 3,
          shift = util.by_pixel(0, 1.5),
		  tint = {0.9, 0.8, 1},
          hr_version = {
            filename = "__base__/graphics/entity/lab/hr-lab.png",
            width = 194,
            height = 174,
            frame_count = 33,
            line_length = 11,
            animation_speed = 1 / 3,
            shift = util.by_pixel(0, 1.5),
			tint = {0.9, 0.8, 1},
            scale = 0.5
          }
        },
		data.raw.lab["nullius-lab-1"].on_animation.layers[2],
		data.raw.lab["nullius-lab-1"].on_animation.layers[3]
      }
    },
    off_animation = {
      layers = {
        {
          filename = "__base__/graphics/entity/lab/lab.png",
          width = 98,
          height = 87,
          frame_count = 1,
          shift = util.by_pixel(0, 1.5),
		  tint = {0.9, 0.8, 1},
          hr_version = {
            filename = "__base__/graphics/entity/lab/hr-lab.png",
            width = 194,
            height = 174,
            frame_count = 1,
            shift = util.by_pixel(0, 1.5),
			tint = {0.9, 0.8, 1},
            scale = 0.5
          }
        },
		data.raw.lab["nullius-lab-1"].off_animation.layers[2],
		data.raw.lab["nullius-lab-1"].off_animation.layers[3]
	  }
	}
  },

  {
    type = "lab",
    name = "nullius-lab-3",
	icons = data.raw.item["nullius-lab-3"].icons,
    flags = {"placeable-player", "player-creation"},
    minable = {mining_time = 0.5, result = "nullius-lab-3"},
    max_health = 250,
    corpse = "lab-remnants",
    dying_explosion = "lab-explosion",
    fast_replaceable_group = "lab",
    collision_box = {{-1.2, -1.2}, {1.2, 1.2}},
    selection_box = {{-1.5, -1.5}, {1.5, 1.5}},
    light = {intensity = 0.75, size = 8, color = {r = 1.0, g = 1.0, b = 1.0}},
    damaged_trigger_effect = data.raw.lab["lab"].damaged_trigger_effect,
    working_sound = data.raw.lab["lab"].working_sound,
    vehicle_impact_sound = data.raw.lab["lab"].vehicle_impact_sound,
    open_sound = data.raw.lab["lab"].open_sound,
    close_sound = data.raw.lab["lab"].close_sound,
    energy_source = {
      type = "electric",
      usage_priority = "secondary-input",
	  drain = "40kW"
    },
    energy_usage = "460kW",
    researching_speed = 4,
	inputs = data.raw.lab["nullius-lab-1"].inputs,
    module_specification = {
      module_slots = 4,
      module_info_icon_shift = {0, 0.9}
    },
    allowed_effects = {"speed", "productivity", "consumption", "pollution"},

    on_animation = {
      layers = {
        {
          filename = "__base__/graphics/entity/lab/lab.png",
          width = 98,
          height = 87,
          frame_count = 33,
          line_length = 11,
          animation_speed = 1 / 3,
          shift = util.by_pixel(0, 1.5),
          hr_version = {
            filename = "__base__/graphics/entity/lab/hr-lab.png",
            width = 194,
            height = 174,
            frame_count = 33,
            line_length = 11,
            animation_speed = 1 / 3,
            shift = util.by_pixel(0, 1.5),
            scale = 0.5
          }
        },
		data.raw.lab["nullius-lab-1"].on_animation.layers[2],
		data.raw.lab["nullius-lab-1"].on_animation.layers[3]
      }
    },
    off_animation = {
      layers = {
        {
          filename = "__base__/graphics/entity/lab/lab.png",
          width = 98,
          height = 87,
          frame_count = 1,
          shift = util.by_pixel(0, 1.5),
          hr_version = {
            filename = "__base__/graphics/entity/lab/hr-lab.png",
            width = 194,
            height = 174,
            frame_count = 1,
            shift = util.by_pixel(0, 1.5),
            scale = 0.5
          }
        },
		data.raw.lab["nullius-lab-1"].off_animation.layers[2],
		data.raw.lab["nullius-lab-1"].off_animation.layers[3]
	  }
	}
  },

  {
    type = "lamp",
    name = "nullius-lamp-1",
    icon = "__nullius__/graphics/lamp1.png",
    icon_size = 64,
    flags = {"placeable-neutral", "player-creation"},
    minable = {mining_time = 0.1, result = "nullius-lamp-1"},
    max_health = 100,
    fast_replaceable_group = "lamp",
    next_upgrade = "nullius-lamp-2",
    corpse = "lamp-remnants",
    dying_explosion = "lamp-explosion",
    collision_box = {{-0.15, -0.15}, {0.15, 0.15}},
    selection_box = {{-0.5, -0.5}, {0.5, 0.5}},
	damaged_trigger_effect = data.raw["lamp"]["small-lamp"].damaged_trigger_effect,
	vehicle_impact_sound = data.raw["lamp"]["small-lamp"].vehicle_impact_sound,
	open_sound = data.raw["lamp"]["small-lamp"].open_sound,
	close_sound = data.raw["lamp"]["small-lamp"].close_sound,
	working_sound = data.raw["lamp"]["small-lamp"].working_sound,
    energy_source = { type = "electric", usage_priority = "lamp" },
	signal_to_color_mapping = data.raw["lamp"]["small-lamp"].signal_to_color_mapping,
    circuit_wire_connection_point = circuit_connector_definitions["lamp"].points,
    circuit_connector_sprites = circuit_connector_definitions["lamp"].sprites,
    circuit_wire_max_distance = default_circuit_wire_max_distance,

    energy_usage_per_tick = "4KW",
    darkness_for_all_lamps_on = 0.5,
    darkness_for_all_lamps_off = 0.3,
    light = {intensity = 0.85, size = 36, color = {r=1.0, g=1.0, b=1.0}},
    light_when_colored = {intensity = 1, size = 6, color = {r=1.0, g=1.0, b=1.0}},
    glow_size = 6,
    glow_color_intensity = 0.125,

    picture_off = {
      layers = {
        {
          filename = "__base__/graphics/entity/small-lamp/lamp.png",
          priority = "high",
          width = 42,
          height = 36,
          frame_count = 1,
          axially_symmetrical = false,
          direction_count = 1,
          shift = util.by_pixel(0,2.4),
		  scale = 0.8,
          hr_version = {
            filename = "__base__/graphics/entity/small-lamp/hr-lamp.png",
            priority = "high",
            width = 83,
            height = 70,
            frame_count = 1,
            axially_symmetrical = false,
            direction_count = 1,
            shift = util.by_pixel(0.2,2.4),
            scale = 0.4
          }
        },
        {
          filename = "__base__/graphics/entity/small-lamp/lamp-shadow.png",
          priority = "high",
          width = 38,
          height = 24,
          frame_count = 1,
          axially_symmetrical = false,
          direction_count = 1,
          shift = util.by_pixel(3.2,4),
          draw_as_shadow = true,
		  scale = 0.8,
          hr_version = {
            filename = "__base__/graphics/entity/small-lamp/hr-lamp-shadow.png",
            priority = "high",
            width = 76,
            height = 47,
            frame_count = 1,
            axially_symmetrical = false,
            direction_count = 1,
            shift = util.by_pixel(3.2, 3.8),
            draw_as_shadow = true,
            scale = 0.4
          }
        }
      }
    },
    picture_on = {
      filename = "__base__/graphics/entity/small-lamp/lamp-light.png",
      priority = "high",
      width = 46,
      height = 40,
      frame_count = 1,
      axially_symmetrical = false,
      direction_count = 1,
      shift = util.by_pixel(0, -5.6),
	  scale = 0.8,
      hr_version = {
        filename = "__base__/graphics/entity/small-lamp/hr-lamp-light.png",
        priority = "high",
        width = 90,
        height = 78,
        frame_count = 1,
        axially_symmetrical = false,
        direction_count = 1,
        shift = util.by_pixel(0, -5.6),
        scale = 0.4
      }
    }
  },

  {
    type = "lamp",
    name = "nullius-lamp-2",
    icon = "__nullius__/graphics/lamp2.png",
    icon_size = 64,
    flags = {"placeable-neutral", "player-creation"},
    minable = {mining_time = 0.1, result = "nullius-lamp-2"},
    max_health = 150,
    fast_replaceable_group = "lamp",
    corpse = "lamp-remnants",
    dying_explosion = "lamp-explosion",
    collision_box = {{-0.15, -0.15}, {0.15, 0.15}},
    selection_box = {{-0.5, -0.5}, {0.5, 0.5}},
	damaged_trigger_effect = data.raw["lamp"]["small-lamp"].damaged_trigger_effect,
	vehicle_impact_sound = data.raw["lamp"]["small-lamp"].vehicle_impact_sound,
	open_sound = data.raw["lamp"]["small-lamp"].open_sound,
	close_sound = data.raw["lamp"]["small-lamp"].close_sound,
	working_sound = data.raw["lamp"]["small-lamp"].working_sound,
    energy_source = { type = "electric", usage_priority = "lamp" },
	signal_to_color_mapping = data.raw["lamp"]["small-lamp"].signal_to_color_mapping,
    circuit_wire_connection_point = circuit_connector_definitions["lamp"].points,
    circuit_connector_sprites = circuit_connector_definitions["lamp"].sprites,
    circuit_wire_max_distance = default_circuit_wire_max_distance,

    energy_usage_per_tick = "8KW",
    darkness_for_all_lamps_on = 0.4,
    darkness_for_all_lamps_off = 0.2,
    light = {intensity = 0.95, size = 64, color = {r=1.0, g=1.0, b=1.0}},
    light_when_colored = {intensity = 1, size = 10, color = {r=1.0, g=1.0, b=1.0}},
    glow_size = 10,
    glow_color_intensity = 0.15,

    picture_off = {
      layers = {
        {
          filename = "__base__/graphics/entity/small-lamp/lamp.png",
          priority = "high",
          width = 42,
          height = 36,
          frame_count = 1,
          axially_symmetrical = false,
          direction_count = 1,
          shift = util.by_pixel(0,3.3),
		  scale = 1.1,
          hr_version = {
            filename = "__base__/graphics/entity/small-lamp/hr-lamp.png",
            priority = "high",
            width = 83,
            height = 70,
            frame_count = 1,
            axially_symmetrical = false,
            direction_count = 1,
            shift = util.by_pixel(0.275,3.3),
            scale = 0.55
          }
        },
        {
          filename = "__base__/graphics/entity/small-lamp/lamp-shadow.png",
          priority = "high",
          width = 38,
          height = 24,
          frame_count = 1,
          axially_symmetrical = false,
          direction_count = 1,
          shift = util.by_pixel(4.4,5.5),
          draw_as_shadow = true,
		  scale = 1.1,
          hr_version = {
            filename = "__base__/graphics/entity/small-lamp/hr-lamp-shadow.png",
            priority = "high",
            width = 76,
            height = 47,
            frame_count = 1,
            axially_symmetrical = false,
            direction_count = 1,
            shift = util.by_pixel(4.4, 5.225),
            draw_as_shadow = true,
            scale = 0.55
          }
        }
      }
    },
    picture_on = {
      filename = "__base__/graphics/entity/small-lamp/lamp-light.png",
      priority = "high",
      width = 46,
      height = 40,
      frame_count = 1,
      axially_symmetrical = false,
      direction_count = 1,
      shift = util.by_pixel(0, -7.7),
	  scale = 1.1,
      hr_version = {
        filename = "__base__/graphics/entity/small-lamp/hr-lamp-light.png",
        priority = "high",
        width = 90,
        height = 78,
        frame_count = 1,
        axially_symmetrical = false,
        direction_count = 1,
        shift = util.by_pixel(0, -7.7),
        scale = 0.55
      }
    }
  },

  {
    type = "electric-turret",
    name = "nullius-turret",
    icon = "__base__/graphics/icons/laser-turret.png",
    icon_size = 64,
	icon_mipmaps = 4,
    flags = { "placeable-player", "placeable-enemy", "player-creation"},
    minable = { mining_time = 0.5, result = "nullius-turret" },
    max_health = 2000,
	resistances = {
      { type = "impact", decrease = 100, percent = 90 },
      { type = "laser", decrease = 50, percent = 75 },
	  { type = "explosion", decrease = 50, percent = 75 },
      { type = "physical", decrease = 20, percent = 50 }
    },
    collision_box = {{ -0.7, -0.7}, {0.7, 0.7}},
    selection_box = {{ -1, -1}, {1, 1}},
    damaged_trigger_effect = data.raw["electric-turret"]["laser-turret"].damaged_trigger_effect,
    rotation_speed = 0.01,
    preparing_speed = 0.05,
    folding_speed = 0.05,
    preparing_sound = data.raw["electric-turret"]["laser-turret"].preparing_sound,
    folding_sound = data.raw["electric-turret"]["laser-turret"].folding_sound,
    corpse = "laser-turret-remnants",
    dying_explosion = "laser-turret-explosion",
    energy_source = {
      type = "electric",
      buffer_capacity = "8MJ",
      input_flow_limit = "20MW",
      drain = "100kW",
      usage_priority = "primary-input"
    },
    folded_animation = data.raw["electric-turret"]["laser-turret"].folded_animation,
    folding_animation = data.raw["electric-turret"]["laser-turret"].folding_animation,
    preparing_animation = data.raw["electric-turret"]["laser-turret"].preparing_animation,
    prepared_animation = data.raw["electric-turret"]["laser-turret"].prepared_animation,
    energy_glow_animation = data.raw["electric-turret"]["laser-turret"].energy_glow_animation,
    base_picture = data.raw["electric-turret"]["laser-turret"].base_picture,
    glow_light_intensity = 0.5, -- defaults to 0
    vehicle_impact_sound = data.raw["electric-turret"]["laser-turret"].vehicle_impact_sound,
    water_reflection = data.raw["electric-turret"]["laser-turret"].water_reflection,
    call_for_help_radius = 40,

    attack_parameters = {
      type = "beam",
      cooldown = 60,
      range = 48,
      source_direction_count = 64,
      source_offset = {0, -3.423489 / 4},
      damage_modifier = 10,
      ammo_type = {
        category = "laser",
        energy_consumption = "2MJ",
        action = {
          type = "direct",
          action_delivery = {
            type = "beam",
            beam = "laser-beam",
            max_length = 48,
            duration = 60,
            source_offset = {0, -1.31439 }
          }
        }
      }
    }
  }
})

if settings.startup["bobmods-logistics-inserteroverhaul"].value == false then
data:extend({
  {
    type = "inserter",
    name = "turbo-inserter",
	localised_name = {"entity-name.nullius-inserter-2"},
    icon = "__base__/graphics/icons/fast-inserter.png",
    icon_size = 64, icon_mipmaps = 4,
    flags = {"placeable-neutral", "placeable-player", "player-creation"},
    minable = { mining_time = 0.1, result = "fast-inserter" },
    max_health = 150,
    corpse = "fast-inserter-remnants",
    dying_explosion = "fast-inserter-explosion",
	resistances = {{ type = "impact", decrease = 100, percent = 90 }},
    collision_box = {{-0.15, -0.15}, {0.15, 0.15}},
    selection_box = {{-0.4, -0.35}, {0.4, 0.45}},
    damaged_trigger_effect = data.raw["inserter"]["fast-inserter"].damaged_trigger_effect,
    pickup_position = {0, -1},
    insert_position = {0, 1.2},
	rotation_speed = 0.0333333,
	extension_speed = 0.08,
	energy_per_rotation = "10.25KJ",
	energy_per_movement = "1.5625KJ",
    energy_source = {
      type = "electric",
      usage_priority = "secondary-input",
      drain = "2kW"
    },
    fast_replaceable_group = "inserter",
    next_upgrade = "stack-inserter",
    vehicle_impact_sound = data.raw["inserter"]["fast-inserter"].vehicle_impact_sound,
    open_sound = data.raw["inserter"]["fast-inserter"].open_sound,
    close_sound = data.raw["inserter"]["fast-inserter"].close_sound,
    working_sound = data.raw["inserter"]["fast-inserter"].working_sound,
    hand_base_picture = data.raw["inserter"]["fast-inserter"].hand_base_picture,
    hand_closed_picture = data.raw["inserter"]["fast-inserter"].hand_closed_picture,
    hand_open_picture = data.raw["inserter"]["fast-inserter"].hand_open_picture,
    hand_base_shadow = data.raw["inserter"]["fast-inserter"].hand_base_shadow,
    hand_closed_shadow = data.raw["inserter"]["fast-inserter"].hand_closed_shadow,
    hand_open_shadow = data.raw["inserter"]["fast-inserter"].hand_open_shadow,
    platform_picture = data.raw["inserter"]["fast-inserter"].platform_picture,
    circuit_wire_connection_points = data.raw["inserter"]["fast-inserter"].circuit_wire_connection_points,
    circuit_connector_sprites = data.raw["inserter"]["fast-inserter"].circuit_connector_sprites,
    circuit_wire_max_distance = data.raw["inserter"]["fast-inserter"].circuit_wire_max_distance,
    default_stack_control_input_signal = data.raw["inserter"]["fast-inserter"].default_stack_control_input_signal
  },
  {
    type = "inserter",
    name = "turbo-filter-inserter",
    icon = "__base__/graphics/icons/filter-inserter.png",
    icon_size = 64, icon_mipmaps = 4,
    flags = {"placeable-neutral", "placeable-player", "player-creation"},
    minable = {mining_time = 0.1, result = "filter-inserter"},
    max_health = 150,
    corpse = "filter-inserter-remnants",
    dying_explosion = "filter-inserter-explosion",
	resistances = {{ type = "impact", decrease = 100, percent = 90 }},
    collision_box = {{-0.15, -0.15}, {0.15, 0.15}},
    selection_box = {{-0.4, -0.35}, {0.4, 0.45}},
    damaged_trigger_effect = data.raw["inserter"]["filter-inserter"].damaged_trigger_effect,
    pickup_position = {0, -1},
    insert_position = {0, 1.2},
	rotation_speed = 0.0333333,
	extension_speed = 0.08,
	energy_per_rotation = "10.25KJ",
	energy_per_movement = "1.5625KJ",
    energy_source = {
      type = "electric",
      usage_priority = "secondary-input",
      drain = "2kW"
    },
    fast_replaceable_group = "inserter",
    filter_count = 5,
    vehicle_impact_sound = data.raw["inserter"]["filter-inserter"].vehicle_impact_sound,
    open_sound = data.raw["inserter"]["filter-inserter"].open_sound,
    close_sound = data.raw["inserter"]["filter-inserter"].close_sound,
    working_sound = data.raw["inserter"]["filter-inserter"].working_sound,
    hand_base_picture = data.raw["inserter"]["filter-inserter"].hand_base_picture,
    hand_closed_picture = data.raw["inserter"]["filter-inserter"].hand_closed_picture,
    hand_open_picture = data.raw["inserter"]["filter-inserter"].hand_open_picture,
    hand_base_shadow = data.raw["inserter"]["filter-inserter"].hand_base_shadow,
    hand_closed_shadow = data.raw["inserter"]["filter-inserter"].hand_closed_shadow,
    hand_open_shadow = data.raw["inserter"]["filter-inserter"].hand_open_shadow,
    platform_picture = data.raw["inserter"]["filter-inserter"].platform_picture,
    circuit_wire_connection_points = data.raw["inserter"]["filter-inserter"].circuit_wire_connection_points,
    circuit_connector_sprites = data.raw["inserter"]["filter-inserter"].circuit_connector_sprites,
    circuit_wire_max_distance = data.raw["inserter"]["filter-inserter"].circuit_wire_max_distance,
    default_stack_control_input_signal = data.raw["inserter"]["filter-inserter"].default_stack_control_input_signal
  }
})
end
