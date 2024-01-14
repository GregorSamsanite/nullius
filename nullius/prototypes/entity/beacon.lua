local ICONPATH = "__nullius__/graphics/icons/"
local ENTICONPATH = "__nullius__/graphics/icons/entity/"
local ENTITYPATH = "__nullius__/graphics/entity/"
local BASEENTITY = "__base__/graphics/entity/"

data:extend({
  {
    type = "beacon",
    name = "nullius-beacon-1",
    icons = data.raw.item["nullius-beacon-1"].icons,
    flags = {"placeable-player", "player-creation"},
    minable = {mining_time = 0.8, result = "nullius-beacon-1"},
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
    supply_area_distance = 3.29,
    energy_source = { type = "electric", usage_priority = "secondary-input" },
    vehicle_impact_sound = data.raw.beacon["beacon"].vehicle_impact_sound,
    open_sound = data.raw.beacon["beacon"].open_sound,
    close_sound = data.raw.beacon["beacon"].close_sound,
    energy_usage = "80kW",
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
                filename = BASEENTITY .. "beacon/hr-beacon-bottom.png",
                width = 212,
                height = 192,
                scale = 0.4,
                shift = util.by_pixel(0.5*0.8, 1*0.8),
                tint = {0.8, 0.9, 0.7}
              },
              {
                filename = BASEENTITY .. "beacon/hr-beacon-shadow.png",
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
            filename = BASEENTITY .. "beacon/hr-beacon-top.png",
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
            filename = BASEENTITY .. "beacon/hr-beacon-light.png",
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
                  filename = BASEENTITY .. "beacon/hr-beacon-module-slot-1.png",
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
                  filename = BASEENTITY .. "beacon/hr-beacon-module-mask-box-1.png",
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
                  filename = BASEENTITY .. "beacon/hr-beacon-module-mask-lights-1.png",
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
                  filename = BASEENTITY .. "beacon/hr-beacon-module-lights-1.png",
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
    minable = {mining_time = 1.2, result = "nullius-beacon-2"},
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
    supply_area_distance = 3.29,
    energy_source = { type = "electric", usage_priority = "secondary-input" },
    vehicle_impact_sound = data.raw.beacon["beacon"].vehicle_impact_sound,
    open_sound = data.raw.beacon["beacon"].open_sound,
    close_sound = data.raw.beacon["beacon"].close_sound,
    energy_usage = "150kW",
    distribution_effectivity = 0.4,
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
                filename = BASEENTITY .. "beacon/hr-beacon-bottom.png",
                width = 212,
                height = 192,
                scale = 0.45,
                shift = util.by_pixel(0.5*0.9, 1*0.9),
                tint = {0.9, 0.8, 1}
              },
              {
                filename = BASEENTITY .. "beacon/hr-beacon-shadow.png",
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
            filename = BASEENTITY .. "beacon/hr-beacon-top.png",
            width = 96,
            height = 140,
            scale = 0.45,
            repeat_count = 45,
            animation_speed = 0.55,
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
            filename = BASEENTITY .. "beacon/hr-beacon-light.png",
            line_length = 9,
            width = 110,
            height = 186,
            frame_count = 45,
            animation_speed = 0.55,
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
                  filename = BASEENTITY .. "beacon/hr-beacon-module-slot-1.png",
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
                  filename = BASEENTITY .. "beacon/hr-beacon-module-mask-box-1.png",
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
                  filename = BASEENTITY .. "beacon/hr-beacon-module-mask-lights-1.png",
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
                  filename = BASEENTITY .. "beacon/hr-beacon-module-lights-1.png",
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
                  filename = BASEENTITY .. "beacon/hr-beacon-module-slot-2.png",
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
                  filename = BASEENTITY .. "beacon/hr-beacon-module-mask-box-2.png",
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
                  filename = BASEENTITY .. "beacon/hr-beacon-module-mask-lights-2.png",
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
                  filename = BASEENTITY .. "beacon/hr-beacon-module-lights-2.png",
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
    minable = {mining_time = 1.6, result = "nullius-beacon-3"},
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
    supply_area_distance = 3.29,
    energy_source = { type = "electric", usage_priority = "secondary-input" },
    vehicle_impact_sound = data.raw.beacon["beacon"].vehicle_impact_sound,
    open_sound = data.raw.beacon["beacon"].open_sound,
    close_sound = data.raw.beacon["beacon"].close_sound,
    energy_usage = "250kW",
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
                filename = BASEENTITY .. "beacon/hr-beacon-bottom.png",
                width = 212,
                height = 192,
                scale = 0.5,
                shift = util.by_pixel(0.5, 1),
              },
              {
                filename = BASEENTITY .. "beacon/hr-beacon-shadow.png",
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
            filename = BASEENTITY .. "beacon/hr-beacon-top.png",
            width = 96,
            height = 140,
            scale = 0.5,
            repeat_count = 45,
            animation_speed = 0.6,
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
            filename = BASEENTITY .. "beacon/hr-beacon-light.png",
            line_length = 9,
            width = 110,
            height = 186,
            frame_count = 45,
            animation_speed = 0.6,
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
                  filename = BASEENTITY .. "beacon/hr-beacon-module-slot-1.png",
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
                  filename = BASEENTITY .. "beacon/hr-beacon-module-mask-box-1.png",
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
                  filename = BASEENTITY .. "beacon/hr-beacon-module-mask-lights-1.png",
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
                  filename = BASEENTITY .. "beacon/hr-beacon-module-lights-1.png",
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
                  filename = BASEENTITY .. "beacon/hr-beacon-module-slot-2.png",
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
                  filename = BASEENTITY .. "beacon/hr-beacon-module-mask-box-2.png",
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
                  filename = BASEENTITY .. "beacon/hr-beacon-module-mask-lights-2.png",
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
                  filename = BASEENTITY .. "beacon/hr-beacon-module-lights-2.png",
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
    type = "beacon",
    name = "nullius-large-beacon-1",
    icons = data.raw.item["nullius-large-beacon-1"].icons,
    flags = {"placeable-player", "player-creation"},
    minable = {mining_time = 2.4, result = "nullius-large-beacon-1"},
    max_health = 800,
    corpse = "medium-remnants",
    dying_explosion = "beacon-explosion",
    collision_box = {{-1.7, -1.7}, {1.7, 1.7}},
    selection_box = {{-2, -2}, {2, 2}},
    collision_mask = {"layer-42", "item-layer", "object-layer", "player-layer", "water-tile"},
    damaged_trigger_effect = data.raw.beacon["beacon"].damaged_trigger_effect,
    drawing_box = {{-2, -3}, {2, 1.8}},
    allowed_effects = {"consumption", "speed", "pollution"},
    resistances = {{ type = "impact", decrease = 40, percent = 75 }},
    fast_replaceable_group = "large-beacon",
    next_upgrade = "nullius-large-beacon-2",

    water_reflection = data.raw.beacon["beacon"].water_reflection,
    radius_visualisation_picture = data.raw.beacon["beacon"].radius_visualisation_picture,
    supply_area_distance = 12.29,
    energy_source = { type = "electric", usage_priority = "secondary-input" },
    vehicle_impact_sound = data.raw.beacon["beacon"].vehicle_impact_sound,
    open_sound = data.raw.beacon["beacon"].open_sound,
    close_sound = data.raw.beacon["beacon"].close_sound,
    energy_usage = "600kW",
    distribution_effectivity = 1,
    module_specification = {
      module_slots = 1,
      module_info_icon_shift = {0, 0.65}
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
                filename = BASEENTITY .. "beacon/hr-beacon-bottom.png",
                width = 212,
                height = 192,
                scale = 0.6,
                shift = util.by_pixel(0.5*1.2, 1*1.2),
                tint = {0.9, 0.8, 1}
              },
              {
                filename = BASEENTITY .. "beacon/hr-beacon-shadow.png",
                width = 244,
                height = 176,
                scale = 0.6,
                draw_as_shadow = true,
                shift = util.by_pixel(12.5*1.2, 0.5*1.2),
              }
            }
          }
        },
        {
          render_layer = "object",
          always_draw = true,
          animation = {
            filename = BASEENTITY .. "beacon/hr-beacon-top.png",
            width = 96,
            height = 140,
            scale = 0.6,
            repeat_count = 45,
            animation_speed = 0.35,
            shift = util.by_pixel(3*1.2, -19*1.2),
          }
        },
        {
          render_layer = "object",
          apply_tint = true,
          draw_as_sprite = true,
          draw_as_light = true,
          always_draw = false,
          animation = {
            filename = BASEENTITY .. "beacon/hr-beacon-light.png",
            line_length = 9,
            width = 110,
            height = 186,
            frame_count = 45,
            animation_speed = 0.35,
            scale = 0.6,
            shift = util.by_pixel(0.5*1.2, -18*1.2),
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
                  filename = BASEENTITY .. "beacon/hr-beacon-module-slot-1.png",
                  line_length = 4,
                  width = 50,
                  height = 66,
                  variation_count = 4,
                  scale = 0.6,
                  shift = util.by_pixel(-16*1.2, 14.5*1.2),
                }
              },
              {
                apply_module_tint = "primary",
                render_layer = "lower-object",
                pictures = {
                  filename = BASEENTITY .. "beacon/hr-beacon-module-mask-box-1.png",
                  line_length = 3,
                  width = 36,
                  height = 32,
                  variation_count = 3,
                  scale = 0.6,
                  shift = util.by_pixel(-17*1.2, 15*1.2),
                }
              },
              {
                apply_module_tint = "secondary",
                render_layer = "lower-object-above-shadow",
                pictures = {
                  filename = BASEENTITY .. "beacon/hr-beacon-module-mask-lights-1.png",
                  line_length = 3,
                  width = 26,
                  height = 12,
                  variation_count = 3,
                  scale = 0.6,
                  shift = util.by_pixel(-18.5*1.2, 13*1.2),
                }
              },
              {
                apply_module_tint = "secondary",
                draw_as_light = true,
                draw_as_sprite = false,
                pictures = {
                  filename = BASEENTITY .. "beacon/hr-beacon-module-lights-1.png",
                  line_length = 3,
                  width = 56,
                  height = 42,
                  variation_count = 3,
                  shift = util.by_pixel(-18*1.2, 13*1.2),
                  scale = 0.6
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
    name = "nullius-large-beacon-2",
    icons = data.raw.item["nullius-large-beacon-2"].icons,
    flags = {"placeable-player", "player-creation"},
    minable = {mining_time = 3, result = "nullius-large-beacon-2"},
    max_health = 1000,
    corpse = "medium-remnants",
    dying_explosion = "beacon-explosion",
    collision_box = {{-1.7, -1.7}, {1.7, 1.7}},
    selection_box = {{-2, -2}, {2, 2}},
    collision_mask = {"layer-42", "item-layer", "object-layer", "player-layer", "water-tile"},
    damaged_trigger_effect = data.raw.beacon["beacon"].damaged_trigger_effect,
    drawing_box = {{-2, -3}, {2, 1.8}},
    allowed_effects = {"consumption", "speed", "pollution"},
    resistances = {{ type = "impact", decrease = 40, percent = 75 }},
    fast_replaceable_group = "large-beacon",

    water_reflection = data.raw.beacon["beacon"].water_reflection,
    radius_visualisation_picture = data.raw.beacon["beacon"].radius_visualisation_picture,
    supply_area_distance = 12.29,
    energy_source = { type = "electric", usage_priority = "secondary-input" },
    vehicle_impact_sound = data.raw.beacon["beacon"].vehicle_impact_sound,
    open_sound = data.raw.beacon["beacon"].open_sound,
    close_sound = data.raw.beacon["beacon"].close_sound,
    energy_usage = "1.5MW",
    distribution_effectivity = 1,
    module_specification = {
      module_slots = 2,
      module_info_icon_shift = {0, 0.65}
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
                filename = BASEENTITY .. "beacon/hr-beacon-bottom.png",
                width = 212,
                height = 192,
                scale = 0.665,
                shift = util.by_pixel(0.5*1.33, 1*1.33)
              },
              {
                filename = BASEENTITY .. "beacon/hr-beacon-shadow.png",
                width = 244,
                height = 176,
                scale = 0.665,
                draw_as_shadow = true,
                shift = util.by_pixel(12.5*1.33, 0.5*1.33),
              }
            }
          }
        },
        {
          render_layer = "object",
          always_draw = true,
          animation = {
            filename = BASEENTITY .. "beacon/hr-beacon-top.png",
            width = 96,
            height = 140,
            scale = 0.665,
            repeat_count = 45,
            animation_speed = 0.4,
            shift = util.by_pixel(3*1.33, -19*1.33),
          }
        },
        {
          render_layer = "object",
          apply_tint = true,
          draw_as_sprite = true,
          draw_as_light = true,
          always_draw = false,
          animation = {
            filename = BASEENTITY .. "beacon/hr-beacon-light.png",
            line_length = 9,
            width = 110,
            height = 186,
            frame_count = 45,
            animation_speed = 0.4,
            scale = 0.665,
            shift = util.by_pixel(0.5*1.33, -18*1.33),
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
                  filename = BASEENTITY .. "beacon/hr-beacon-module-slot-1.png",
                  line_length = 4,
                  width = 50,
                  height = 66,
                  variation_count = 4,
                  scale = 0.665,
                  shift = util.by_pixel(-16*1.33, 14.5*1.33),
                }
              },
              {
                apply_module_tint = "primary",
                render_layer = "lower-object",
                pictures = {
                  filename = BASEENTITY .. "beacon/hr-beacon-module-mask-box-1.png",
                  line_length = 3,
                  width = 36,
                  height = 32,
                  variation_count = 3,
                  scale = 0.665,
                  shift = util.by_pixel(-17*1.33, 15*1.33),
                }
              },
              {
                apply_module_tint = "secondary",
                render_layer = "lower-object-above-shadow",
                pictures = {
                  filename = BASEENTITY .. "beacon/hr-beacon-module-mask-lights-1.png",
                  line_length = 3,
                  width = 26,
                  height = 12,
                  variation_count = 3,
                  scale = 0.665,
                  shift = util.by_pixel(-18.5*1.33, 13*1.33),
                }
              },
              {
                apply_module_tint = "secondary",
                draw_as_light = true,
                draw_as_sprite = false,
                pictures = {
                  filename = BASEENTITY .. "beacon/hr-beacon-module-lights-1.png",
                  line_length = 3,
                  width = 56,
                  height = 42,
                  variation_count = 3,
                  shift = util.by_pixel(-18*1.33, 13*1.33),
                  scale = 0.665
                }
              }
            },
            {
              -- slot 2
              {
                has_empty_slot = true,
                render_layer = "lower-object",
                pictures = {
                  filename = BASEENTITY .. "beacon/hr-beacon-module-slot-2.png",
                  line_length = 4,
                  width = 46,
                  height = 44,
                  variation_count = 4,
                  scale = 0.665,
                  shift = util.by_pixel(19*1.33, -12*1.33),
                }
              },
              {
                apply_module_tint = "primary",
                render_layer = "lower-object",
                pictures = {
                  filename = BASEENTITY .. "beacon/hr-beacon-module-mask-box-2.png",
                  line_length = 3,
                  width = 36,
                  height = 26,
                  variation_count = 3,
                  scale = 0.665,
                  shift = util.by_pixel(20.5*1.33, -12*1.33),
                }
              },
              {
                apply_module_tint = "secondary",
                render_layer = "lower-object-above-shadow",
                pictures = {
                  filename = BASEENTITY .. "beacon/hr-beacon-module-mask-lights-2.png",
                  line_length = 3,
                  width = 24,
                  height = 14,
                  variation_count = 3,
                  scale = 0.665,
                  shift = util.by_pixel(22*1.33, -15.5*1.33),
                }
              },
              {
                apply_module_tint = "secondary",
                draw_as_light = true,
                draw_as_sprite = false,
                pictures = {
                  filename = BASEENTITY .. "beacon/hr-beacon-module-lights-2.png",
                  line_length = 3,
                  width = 66,
                  height = 46,
                  variation_count = 3,
                  shift = util.by_pixel(22*1.33, -16*1.33),
                  scale = 0.665
                }
              }
            }
          }
        }
      }
    }
  }
})


if mods["reskins-bobs"] then
data.raw.beacon["nullius-beacon-1"].graphics_set.animation_list[1].animation.layers = {
  {
    filename = "__reskins-bobs__/graphics/entity/modules/beacon/hr-beacon-1-bottom.png",
    width = 212,
    height = 192,
    shift = util.by_pixel(0.5*0.8, 1*0.8),
    scale = 0.5*0.8
  },
  {
    filename = "__reskins-bobs__/graphics/entity/modules/beacon/hr-beacon-1-bottom-mask.png",
    width = 212,
    height = 192,
    shift = util.by_pixel(0.5*0.8, 1*0.8),
    tint = tiercolor("yellow"),
    scale = 0.5*0.8
  },
  {
    filename = "__reskins-bobs__/graphics/entity/modules/beacon/hr-beacon-1-bottom-highlights.png",
    width = 212,
    height = 192,
    shift = util.by_pixel(0.5*0.8, 1*0.8),
    blend_mode = "additive",
    scale = 0.5*0.8
  },
  data.raw.beacon["nullius-beacon-1"].graphics_set.animation_list[1].animation.layers[2]
}
data.raw.beacon["nullius-beacon-1"].graphics_set.animation_list[2].animation = {
  filename = "__reskins-bobs__/graphics/entity/modules/beacon/hr-beacon-1-top.png",
  width = 96,
  height = 140,
  repeat_count = 45,
  animation_speed = 0.5,
  shift = util.by_pixel(3*0.8, -19*0.8),
  scale = 0.5*0.8
}

data.raw.beacon["nullius-beacon-2"].graphics_set.animation_list[1].animation.layers = {
  {
    filename = "__reskins-bobs__/graphics/entity/modules/beacon/hr-beacon-2-bottom.png",
    width = 212,
    height = 192,
    shift = util.by_pixel(0.5*0.9, 1*0.9),
    scale = 0.5*0.9
  },
  {
    filename = "__reskins-bobs__/graphics/entity/modules/beacon/hr-beacon-2-bottom-mask.png",
    width = 212,
    height = 192,
    shift = util.by_pixel(0.5*0.9, 1*0.9),
    tint = tiercolor("red"),
    scale = 0.5*0.9
  },
  {
    filename = "__reskins-bobs__/graphics/entity/modules/beacon/hr-beacon-2-bottom-highlights.png",
    width = 212,
    height = 192,
    shift = util.by_pixel(0.5*0.9, 1*0.9),
    blend_mode = "additive",
    scale = 0.5*0.9
  },
  data.raw.beacon["nullius-beacon-2"].graphics_set.animation_list[1].animation.layers[2]
}
data.raw.beacon["nullius-beacon-2"].graphics_set.animation_list[2].animation = {
  filename = "__reskins-bobs__/graphics/entity/modules/beacon/hr-beacon-2-top.png",
  width = 96,
  height = 140,
  repeat_count = 45,
  animation_speed = 0.55,
  shift = util.by_pixel(3*0.9, -19*0.9),
  scale = 0.5*0.9
}
table.insert(data.raw.beacon["nullius-beacon-2"].graphics_set.animation_list, {
  render_layer = "transport-belt-circuit-connector",
  always_draw = true,
  animation = {
    filename = "__reskins-bobs__/graphics/entity/modules/beacon/hr-beacon-2-bottom-slot-overlay.png",
    width = 212,
    height = 192,
    shift = util.by_pixel(0.5*0.9, 1*0.9),
    scale = 0.5*0.9
  }
})

data.raw.beacon["nullius-beacon-3"].graphics_set.animation_list[1].animation.layers = {
  {
    filename = "__reskins-bobs__/graphics/entity/modules/beacon/hr-beacon-3-bottom.png",
    width = 212,
    height = 192,
    shift = util.by_pixel(0.5, 1),
    scale = 0.5
  },
  {
    filename = "__reskins-bobs__/graphics/entity/modules/beacon/hr-beacon-3-bottom-mask.png",
    width = 212,
    height = 192,
    shift = util.by_pixel(0.5, 1),
    tint = tiercolor("blue"),
    scale = 0.5
  },
  {
    filename = "__reskins-bobs__/graphics/entity/modules/beacon/hr-beacon-3-bottom-highlights.png",
    width = 212,
    height = 192,
    shift = util.by_pixel(0.5, 1),
    blend_mode = "additive",
    scale = 0.5
  },
  data.raw.beacon["nullius-beacon-3"].graphics_set.animation_list[1].animation.layers[2]
}
data.raw.beacon["nullius-beacon-3"].graphics_set.animation_list[2].animation = {
  filename = "__reskins-bobs__/graphics/entity/modules/beacon/hr-beacon-3-top.png",
  width = 96,
  height = 140,
  repeat_count = 45,
  animation_speed = 0.6,
  shift = util.by_pixel(3, -19),
  scale = 0.5
}
table.insert(data.raw.beacon["nullius-beacon-3"].graphics_set.animation_list, {
  render_layer = "transport-belt-circuit-connector",
  always_draw = true,
  animation = { layers = {
    {
      filename = "__reskins-bobs__/graphics/entity/modules/beacon/hr-beacon-3-bottom-slot-overlay.png",
      width = 212,
      height = 192,
      shift = util.by_pixel(0.5, 1),
      scale = 0.5
    },
    {
      filename = "__reskins-bobs__/graphics/entity/modules/beacon/hr-beacon-3-bottom-slot-overlay-mask.png",
      width = 212,
      height = 192,
      shift = util.by_pixel(0.5, 1),
      tint = tiercolor("blue"),
      scale = 0.5
    },
    {
      filename = "__reskins-bobs__/graphics/entity/modules/beacon/hr-beacon-3-bottom-slot-overlay-highlights.png",
      width = 212,
      height = 192,
      shift = util.by_pixel(0.5, 1),
      scale = 0.5,
      blend_mode = "additive"
    }
  }}
})

data.raw.beacon["nullius-large-beacon-1"].graphics_set.animation_list[1].animation.layers = {
  {
    filename = "__reskins-bobs__/graphics/entity/modules/beacon/hr-beacon-1-bottom.png",
    width = 212,
    height = 192,
    shift = util.by_pixel(0.5*1.2, 1*1.2),
    scale = 0.5*1.2
  },
  {
    filename = "__reskins-bobs__/graphics/entity/modules/beacon/hr-beacon-1-bottom-mask.png",
    width = 212,
    height = 192,
    shift = util.by_pixel(0.5*1.2, 1*1.2),
    tint = tiercolor("red"),
    scale = 0.5*1.2
  },
  {
    filename = "__reskins-bobs__/graphics/entity/modules/beacon/hr-beacon-1-bottom-highlights.png",
    width = 212,
    height = 192,
    shift = util.by_pixel(0.5*1.2, 1*1.2),
    blend_mode = "additive",
    scale = 0.5*1.2
  },
  data.raw.beacon["nullius-large-beacon-1"].graphics_set.animation_list[1].animation.layers[2]
}
data.raw.beacon["nullius-large-beacon-1"].graphics_set.animation_list[2].animation = {
  filename = "__reskins-bobs__/graphics/entity/modules/beacon/hr-beacon-1-top.png",
  width = 96,
  height = 140,
  repeat_count = 45,
  animation_speed = 0.35,
  shift = util.by_pixel(3*1.2, -19*1.2),
  scale = 0.5*1.2
}

data.raw.beacon["nullius-large-beacon-2"].graphics_set.animation_list[1].animation.layers = {
  {
    filename = "__reskins-bobs__/graphics/entity/modules/beacon/hr-beacon-3-bottom.png",
    width = 212,
    height = 192,
    shift = util.by_pixel(0.5*1.33, 1*1.33),
    scale = 0.5*1.33
  },
  {
    filename = "__reskins-bobs__/graphics/entity/modules/beacon/hr-beacon-3-bottom-mask.png",
    width = 212,
    height = 192,
    shift = util.by_pixel(0.5*1.33, 1*1.33),
    tint = tiercolor("blue"),
    scale = 0.5*1.33
  },
  {
    filename = "__reskins-bobs__/graphics/entity/modules/beacon/hr-beacon-3-bottom-highlights.png",
    width = 212,
    height = 192,
    shift = util.by_pixel(0.5*1.33, 1*1.33),
    blend_mode = "additive",
    scale = 0.5*1.33
  },
  data.raw.beacon["nullius-large-beacon-2"].graphics_set.animation_list[1].animation.layers[2]
}
data.raw.beacon["nullius-large-beacon-2"].graphics_set.animation_list[2].animation = {
  filename = "__reskins-bobs__/graphics/entity/modules/beacon/hr-beacon-3-top.png",
  width = 96,
  height = 140,
  repeat_count = 45,
  animation_speed = 0.4,
  shift = util.by_pixel(3*1.33, -19*1.33),
  scale = 0.5*1.33
}
table.insert(data.raw.beacon["nullius-large-beacon-2"].graphics_set.animation_list, {
  render_layer = "transport-belt-circuit-connector",
  always_draw = true,
  animation = { layers = {
    {
      filename = "__reskins-bobs__/graphics/entity/modules/beacon/hr-beacon-3-bottom-slot-overlay.png",
      width = 212,
      height = 192,
      shift = util.by_pixel(0.5*1.33, 1*1.33),
      scale = 0.5*1.33
    },
    {
      filename = "__reskins-bobs__/graphics/entity/modules/beacon/hr-beacon-3-bottom-slot-overlay-mask.png",
      width = 212,
      height = 192,
      shift = util.by_pixel(0.5*1.33, 1*1.33),
      tint = tiercolor("blue"),
      scale = 0.5*1.33
    },
    {
      filename = "__reskins-bobs__/graphics/entity/modules/beacon/hr-beacon-3-bottom-slot-overlay-highlights.png",
      width = 212,
      height = 192,
      shift = util.by_pixel(0.5*1.33, 1*1.33),
      scale = 0.5*1.33,
      blend_mode = "additive"
    }
  }}
})
end


local base_power = {
  [1] = 80,
  [2] = 150,
  [3] = 250
}
local suppression = {
  [1] = 0.9,
  [2] = 0.8,
  [3] = 0.6,
  [4] = 0.3
}
local energy_scale = {
  [1] = 1,
  [2] = 1,
  [3] = 0.8,
  [4] = 0.5
}

for i=1,3 do
  for j=1,4 do
    local beacon = util.table.deepcopy(data.raw.beacon["nullius-beacon-"..i])
	beacon.name = "nullius-beacon-"..i.."-"..j
	beacon.localised_name = {"entity-name.nullius-interference-"..j,
	    {"entity-name.nullius-beacon-"..i}}
	beacon.placeable_by = {item = "nullius-beacon-"..i, count = 1}
	if (i < 3) then
	  beacon.next_upgrade = "nullius-beacon-"..(i+1).."-"..j	
	end
	beacon.energy_usage = (base_power[i] * energy_scale[j]).."kW"
    beacon.distribution_effectivity = beacon.distribution_effectivity * suppression[j]
	local spd = beacon.graphics_set.animation_list[2].animation.animation_speed * suppression[j]
	beacon.graphics_set.animation_list[2].animation.animation_speed = spd
	beacon.graphics_set.animation_list[3].animation.animation_speed = spd
	
	local tnt = beacon.graphics_set.animation_list[1].animation.layers[1].tint
	if (tnt == nil) then tnt = {1, 1, 1} end
	local mult = 1 - (j * 0.1)
	tnt = {(tnt[1] * mult), (tnt[2] * mult), (tnt[3] * mult)}
	beacon.graphics_set.animation_list[1].animation.layers[1].tint = tnt
	data:extend({ beacon })
  end
end


data:extend({
  {
    type = "simple-entity-with-force",
    name = "nullius-beacon-interference-horizontal",
    localised_name = {"entity-name.nullius-beacon-interference"},
    render_layer = "object",
    icon = "__base__/graphics/icons/fluid/steam.png",
    icon_size = 64,
    order = "cb",
    flags = {"placeable-neutral", "player-creation", "not-on-map", "hidden"},
    collision_box = {{-8, -6}, {8, 6}},
    collision_mask = {"layer-42"},
    render_layer = "wires-above",
    selectable_in_game = false,
    random_animation_offset = false,
    picture = {
      filename = ICONPATH .. "blank.png",
      width = 32,
      height = 32
    }
  },
  {
    type = "simple-entity-with-force",
    name = "nullius-beacon-interference-vertical",
    localised_name = {"entity-name.nullius-beacon-interference"},
    render_layer = "object",
    icon = "__base__/graphics/icons/fluid/steam.png",
    icon_size = 64,
    order = "cc",
    flags = {"placeable-neutral", "player-creation", "not-on-map", "hidden"},
    collision_box = {{-6, -8}, {6, 8}},
    collision_mask = {"layer-42"},
    render_layer = "wires-above",
    selectable_in_game = false,
    random_animation_offset = false,
    picture = {
      filename = ICONPATH .. "blank.png",
      width = 32,
      height = 32
    }
  }
})
