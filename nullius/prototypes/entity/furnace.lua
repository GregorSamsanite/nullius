local ICONPATH = "__nullius__/graphics/icons/"
local ENTITYPATH = "__nullius__/graphics/entity/"
local BASEENTITY = "__base__/graphics/entity/"

local floatpipepics = data.raw["assembling-machine"]["ore-floatation-cell"].fluid_boxes[1].pipe_picture


data:extend({
  {
    type = "assembling-machine",
    name = "nullius-small-furnace-1",
    localised_description = {"entity-description.nullius-furnace"},
    icons = data.raw.item["nullius-small-furnace-1"].icons,
    flags = {"placeable-neutral", "placeable-player", "player-creation"},
    minable = {mining_time = 0.6, result = "nullius-small-furnace-1"},
    max_health = 200,
    corpse = "stone-furnace-remnants",
    repair_sound = { filename = "__base__/sound/manual-repair-simple.ogg" },
    mined_sound = { filename = "__base__/sound/deconstruct-bricks.ogg" },
    open_sound = { filename = "__base__/sound/machine-open.ogg", volume = 0.85 },
    close_sound = { filename = "__base__/sound/machine-close.ogg", volume = 0.75 },
    vehicle_impact_sound =  { filename = "__base__/sound/car-stone-impact.ogg", volume = 1.0 },
	working_sound = data.raw["furnace"]["steel-furnace"].working_sound,
    resistances = {
      { type = "impact", decrease = 100, percent = 90 },
      { type = "fire", decrease = 100, percent = 90 },
      { type = "explosion", percent = 50 }
    },
    collision_box = {{-0.7, -0.7}, {0.7, 0.7}},
    selection_box = {{-0.8, -1}, {0.8, 1}},
    crafting_categories = {"dry-smelting"},
    result_inventory_size = 1,
    crafting_speed = 0.25,
    source_inventory_size = 1,
    energy_source = {
      type = "electric",
      usage_priority = "secondary-input",
      emissions_per_minute = 1,
      drain = "6kW"
    },
    energy_usage = "69kW",
    animation = data.raw["furnace"]["stone-furnace"].animation,
    working_visualisations = data.raw["furnace"]["stone-furnace"].working_visualisations,
    fast_replaceable_group = "small-furnace",
    next_upgrade = "nullius-small-furnace-2"
  },

  {
    type = "assembling-machine",
    name = "nullius-small-furnace-2",
    localised_description = {"entity-description.nullius-furnace"},
    icons = data.raw.item["nullius-small-furnace-2"].icons,
    flags = {"placeable-neutral", "placeable-player", "player-creation"},
    minable = {mining_time = 0.9, result = "nullius-small-furnace-2"},
    max_health = 250,
    corpse = "steel-furnace-remnants",
    vehicle_impact_sound =  { filename = "__base__/sound/car-metal-impact.ogg", volume = 0.65 },
    working_sound = data.raw["furnace"]["steel-furnace"].working_sound,
    resistances = {
      { type = "impact", decrease = 100, percent = 90 },
      { type = "fire", decrease = 100, percent = 90 },
      { type = "explosion", percent = 50 }
    },
    collision_box = {{-0.7, -0.7}, {0.7, 0.7}},
    selection_box = {{-0.8, -1}, {0.8, 1}},
    crafting_categories = {"dry-smelting"},
    result_inventory_size = 1,
    crafting_speed = 0.5,
    source_inventory_size = 1,
    energy_source = {
      type = "electric",
      usage_priority = "secondary-input",
      emissions_per_minute = 1,
      drain = "12kW"
    },
    energy_usage = "138kW",
    module_specification = {
      module_slots = 1,
      module_info_icon_shift = {0, 0.5}
    },
    allowed_effects = {"consumption", "speed", "productivity", "pollution"},
    animation = data.raw["furnace"]["steel-furnace"].animation,
    working_visualisations = data.raw["furnace"]["steel-furnace"].working_visualisations,
    fast_replaceable_group = "small-furnace",
    next_upgrade = "nullius-small-furnace-3"
  },

  {
    type = "assembling-machine",
    name = "nullius-small-furnace-3",
    localised_description = {"entity-description.nullius-furnace"},
    icons = data.raw.item["nullius-small-furnace-3"].icons,
    flags = {"placeable-neutral", "placeable-player", "player-creation"},
    minable = {mining_time = 1.2, result = "nullius-small-furnace-3"},
    max_health = 300,
    corpse = "electric-furnace-remnants",
    dying_explosion = "medium-explosion",
    resistances = {
      { type = "impact", decrease = 100, percent = 90 },
      { type = "fire", decrease = 100, percent = 90 },
      { type = "explosion", percent = 50 }
    },
    fast_replaceable_group = "small-furnace",
    collision_box = {{-0.7, -0.7}, {0.7, 0.7}},
    selection_box = {{-0.8, -1}, {0.8, 1}},
    crafting_categories = {"dry-smelting"},
    crafting_speed = 1,
    energy_usage = "270kW",
    energy_source = {
      type = "electric",
      usage_priority = "secondary-input",
      emissions_per_minute = 1,
      drain = "20kW"
    },
    vehicle_impact_sound = { filename = "__base__/sound/car-metal-impact.ogg", volume = 0.65 },
    working_sound = data.raw["furnace"]["electric-furnace"].working_sound,
    module_specification = {
      module_slots = 2,
      module_info_icon_shift = {0, 0.5}
    },
    allowed_effects = {"consumption", "speed", "productivity", "pollution"},

    animation = {
      layers = {
        {
          filename = BASEENTITY .. "electric-furnace/electric-furnace-base.png",
          priority = "high",
          width = 129,
          height = 100,
          frame_count = 1,
          shift = {0.2813, 0},
          scale = 0.6666,
          tint = {0.7, 0.7, 0.85}
        },
        {
          filename = BASEENTITY .. "electric-furnace/electric-furnace-shadow.png",
          priority = "high",
          width = 129,
          height = 100,
          frame_count = 1,
          shift = {0.2813, 0},
          draw_as_shadow = true,
          scale = 0.6666
        }
      }
    },

    working_visualisations = {
      {
        draw_as_light = true,
        fadeout = true,
        animation = {
          layers = {
            {
              filename = BASEENTITY .. "electric-furnace/electric-furnace-heater.png",
              priority = "high",
              width = 25,
              height = 15,
              frame_count = 12,
              animation_speed = 0.5,
              shift = {0.01042, 0.5938},
              scale = 0.6666
            },
            {
              filename = BASEENTITY .. "electric-furnace/electric-furnace-light.png",
              blend_mode = "additive",
              width = 104,
              height = 102,
              repeat_count = 12,
              shift = util.by_pixel(0, 0),
              scale = 0.6666
            }
          }
        }
      },
      {
        draw_as_light = true,
        draw_as_sprite = false,
        fadeout = true,
        animation = {
          filename = BASEENTITY .. "electric-furnace/electric-furnace-ground-light.png",
          blend_mode = "additive",
          width = 82,
          height = 64,
          shift = util.by_pixel(4*0.6666, 68*0.6666)
        }
      },
      {
        animation = {
          filename = BASEENTITY .. "electric-furnace/electric-furnace-propeller-1.png",
          priority = "high",
          width = 19,
          height = 13,
          frame_count = 4,
          animation_speed = 0.5,
          shift = {-0.4479, -0.4271},
          scale = 0.6666
        }
      },
      {
        animation = {
          filename = BASEENTITY .. "electric-furnace/electric-furnace-propeller-2.png",
          priority = "high",
          width = 12,
          height = 9,
          frame_count = 4,
          animation_speed = 0.5,
          shift = {0.041666, -0.8229},
          scale = 0.6666
        }
      }
    },

    water_reflection = {
      pictures = {
        filename = BASEENTITY .. "electric-furnace/electric-furnace-reflection.png",
        priority = "extra-high",
        width = 24,
        height = 24,
        shift = util.by_pixel(3.333, 26.666),
        variation_count = 1,
        scale = 3.333,
      },
      rotate = false,
      orientation_to_variation = false
    }
  },

  {
    type = "assembling-machine",
    name = "nullius-medium-furnace-1",
    localised_description = {"entity-description.nullius-furnace"},
    icons = data.raw.item["nullius-medium-furnace-1"].icons,
    flags = {"placeable-neutral", "placeable-player", "player-creation"},
    minable = {mining_time = 1.2, result = "nullius-medium-furnace-1"},
    max_health = 300,
    corpse = "steel-furnace-remnants",
    vehicle_impact_sound =  { filename = "__base__/sound/car-metal-impact.ogg", volume = 0.65 },
	working_sound = data.raw["furnace"]["steel-furnace"].working_sound,
    resistances = {
      { type = "impact", decrease = 100, percent = 90 },
      { type = "fire", decrease = 100, percent = 90 },
      { type = "explosion", percent = 50 }
    },
    fast_replaceable_group = "medium-furnace",
    next_upgrade = "nullius-medium-furnace-2",
    collision_box = {{-1.2, -1.2}, {1.2, 1.2}},
    selection_box = {{-1.5, -1.5}, {1.5, 1.5}},
    crafting_categories = {"dry-smelting", "vent-smelting"},
    fluid_boxes = {
      {
        production_type = "output",
        pipe_covers = pipecoverspictures(),
        base_level = 3,
        pipe_connections = {{ type="output", position = {0, -2} }}
      },
      off_when_no_fluid_recipe = true
    },
    result_inventory_size = 1,
    crafting_speed = 1,
    source_inventory_size = 1,
    energy_source = {
      type = "electric",
      usage_priority = "secondary-input",
      emissions_per_minute = 1,
      drain = "25kW"
    },
    energy_usage = "270kW",
    module_specification = {
      module_slots = 1,
      module_info_icon_shift = {0, 0.8}
    },
    allowed_effects = {"consumption", "speed", "productivity", "pollution"},
    animation = {
      layers = {
        {
          filename = BASEENTITY .. "steel-furnace/hr-steel-furnace.png",
          priority = "high",
          width = 171,
          height = 174,
          frame_count = 1,
          shift = util.by_pixel(-1.25*1.5, 2*1.5),
          scale = 0.75
        },
        {
          filename = BASEENTITY .. "steel-furnace/hr-steel-furnace-shadow.png",
          priority = "high",
          width = 277,
          height = 85,
          frame_count = 1,
          draw_as_shadow = true,
          shift = util.by_pixel(39.25*1.5, 11.25*1.5),
          scale = 0.75
        }
      }
    },
    working_visualisations = {
      {
        draw_as_light = true,
        fadeout = true,
        effect = "flicker",
        animation = {
            filename = BASEENTITY .. "steel-furnace/hr-steel-furnace-fire.png",
            priority = "high",
            line_length = 8,
            width = 57,
            height = 81,
            frame_count = 48,
            direction_count = 1,
            shift = util.by_pixel(-0.75*1.5, 5.75*1.5),
            scale = 0.75
        }
      },
      {
        fadeout = true,
        draw_as_light = true,
        effect = "flicker",
        animation = {
          filename = BASEENTITY .. "steel-furnace/steel-furnace-glow.png",
          priority = "high",
          width = 60,
          height = 43,
          frame_count = 1,
          shift = {0.03125*1.5, 0.640625*1.5},
          scale = 1.5,
          blend_mode = "additive"
        }
      },
      {
        fadeout = true,
        draw_as_light = true,
        effect = "flicker",
        animation = {
          filename = BASEENTITY .. "steel-furnace/hr-steel-furnace-working.png",
          priority = "high",
          line_length = 1,
          width = 128,
          height = 150,
          frame_count = 1,
          direction_count = 1,
          shift = util.by_pixel(0, -5*1.5),
          blend_mode = "additive",
          scale = 0.75
        }
      }
    }
  },

  {
    type = "assembling-machine",
    name = "nullius-medium-furnace-2",
    localised_description = {"entity-description.nullius-furnace"},
    icons = data.raw.item["nullius-medium-furnace-2"].icons,
    flags = {"placeable-neutral", "placeable-player", "player-creation"},
    minable = {mining_time = 1.6, result = "nullius-medium-furnace-2"},
    max_health = 350,
    corpse = "electric-furnace-remnants",
    dying_explosion = "medium-explosion",
    resistances = {
      { type = "impact", decrease = 100, percent = 90 },
      { type = "fire", decrease = 100, percent = 90 },
      { type = "explosion", percent = 50 }
    },
    fast_replaceable_group = "medium-furnace",
    next_upgrade = "nullius-medium-furnace-3",
    collision_box = {{-1.2, -1.2}, {1.2, 1.2}},
    selection_box = {{-1.5, -1.5}, {1.5, 1.5}},
    fluid_boxes = {
      {
        production_type = "input",
        pipe_covers = pipecoverspictures(),
        base_area = 10,
        base_level = -1,
        pipe_connections = {{ type="input", position = {0, 2} }}
      },
      {
        production_type = "output",
        pipe_covers = pipecoverspictures(),
        base_level = 5,
        pipe_connections = {{ type="output", position = {0, -2} }}
      },
      off_when_no_fluid_recipe = true
    },
    crafting_categories = {"dry-smelting", "vent-smelting", "wet-smelting"},
    crafting_speed = 2,
    energy_usage = "520kW",
    energy_source = {
      type = "electric",
      usage_priority = "secondary-input",
      emissions_per_minute = 1,
      drain = "60kW"
    },
    working_visualisations = data.raw["furnace"]["electric-furnace"].working_visualisations,
    working_sound = data.raw["furnace"]["electric-furnace"].working_sound,
    water_reflection = data.raw["furnace"]["electric-furnace"].water_reflection,
    vehicle_impact_sound = { filename = "__base__/sound/car-metal-impact.ogg", volume = 0.65 },
    module_specification = {
      module_slots = 2,
      module_info_icon_shift = {0, 0.8}
    },
    allowed_effects = {"consumption", "speed", "productivity", "pollution"},

    animation = {
      layers = {
        {
          filename = BASEENTITY .. "electric-furnace/electric-furnace-base.png",
          priority = "high",
          width = 129,
          height = 100,
          frame_count = 1,
          shift = {0.421875, 0},
          tint = {0.7, 0.7, 0.85},
          hr_version = {
            filename = BASEENTITY .. "electric-furnace/hr-electric-furnace.png",
            priority = "high",
            width = 239,
            height = 219,
            frame_count = 1,
            shift = util.by_pixel(0.75, 5.75),
            scale = 0.5,
            tint = {0.7, 0.7, 0.85}
          }
        },
        {
          filename = BASEENTITY .. "electric-furnace/electric-furnace-shadow.png",
          priority = "high",
          width = 129,
          height = 100,
          frame_count = 1,
          shift = {0.421875, 0},
          draw_as_shadow = true,
          hr_version = {
            filename = BASEENTITY .. "electric-furnace/hr-electric-furnace-shadow.png",
            priority = "high",
            width = 227,
            height = 171,
            frame_count = 1,
            draw_as_shadow = true,
            shift = util.by_pixel(11.25, 7.75),
            scale = 0.5
          }
        }
      }
    }
  },

  {
    type = "assembling-machine",
    name = "nullius-large-furnace-1",
    localised_description = {"entity-description.nullius-large-furnace"},
    icons = data.raw.item["nullius-large-furnace-1"].icons,
    flags = {"placeable-neutral", "placeable-player", "player-creation"},
    minable = {mining_time = 2, result = "nullius-large-furnace-1"},
    max_health = 500,
    corpse = "electric-furnace-remnants",
    dying_explosion = "medium-explosion",
    resistances = {
      { type = "impact", decrease = 100, percent = 90 },
      { type = "fire", decrease = 100, percent = 90 },
      { type = "explosion", percent = 50 }
    },
    fast_replaceable_group = "large-furnace",
    next_upgrade = "nullius-large-furnace-2",
    collision_box = {{-1.7, -1.7}, {1.7, 1.7}},
    selection_box = {{-2.0, -2.0}, {2.0, 2.0}},
    fluid_boxes = {
      {
        production_type = "input",
        pipe_covers = pipecoverspictures(),
        base_area = 10,
        base_level = -1,
        pipe_connections = {{ type="input", position = {0.5, 2.5} }}
      },
      {
        production_type = "output",
        pipe_covers = pipecoverspictures(),
        base_level = 5,
        pipe_connections = {{ type="output", position = {-0.5, -2.5} }}
      },
      off_when_no_fluid_recipe = true
    },
    crafting_categories = {"bulk-smelting"},
    crafting_speed = 1,
    energy_usage = "1220kW",
    energy_source = {
      type = "electric",
      usage_priority = "secondary-input",
      emissions_per_minute = 2.5,
      drain = "180kW"
    },
    vehicle_impact_sound = { filename = "__base__/sound/car-metal-impact.ogg", volume = 0.65 },
    working_sound = data.raw["furnace"]["electric-furnace"].working_sound,
    module_specification = {
      module_slots = 2,
      module_info_icon_shift = {0, 1}
    },
    allowed_effects = {"consumption", "speed", "productivity", "pollution"},

    animation = {
      layers = {
        {
          filename = BASEENTITY .. "electric-furnace/hr-electric-furnace.png",
          priority = "high",
          width = 239,
          height = 219,
          frame_count = 1,
          shift = util.by_pixel(1, 7.666),
          scale = 0.6666,
          tint = {0.7, 0.7, 0.85}
        },
        {
          filename = BASEENTITY .. "electric-furnace/hr-electric-furnace-shadow.png",
          priority = "high",
          width = 227,
          height = 171,
          frame_count = 1,
          draw_as_shadow = true,
          shift = util.by_pixel(15, 10.333),
          scale = 0.6666
        }
      }
    },

    working_visualisations = {
      {
        draw_as_light = true,
        fadeout = true,
        animation = {
          layers = {
            {
              filename = BASEENTITY .. "electric-furnace/hr-electric-furnace-heater.png",
              priority = "high",
              width = 60,
              height = 56,
              frame_count = 12,
              animation_speed = 0.5,
              shift = util.by_pixel(2.333, 43.666),
              scale = 0.6666
            },
            {
              filename = BASEENTITY .. "electric-furnace/hr-electric-furnace-light.png",
              blend_mode = "additive",
              width = 202,
              height = 202,
              repeat_count = 12,
              shift = util.by_pixel(1.333, 0),
              scale = 0.6666
            }
          }
        }
      },
      {
        draw_as_light = true,
        draw_as_sprite = false,
        fadeout = true,
        animation = {
          filename = BASEENTITY .. "electric-furnace/hr-electric-furnace-ground-light.png",
          blend_mode = "additive",
          width = 166,
          height = 124,
          shift = util.by_pixel(4, 92),
          scale = 0.6666
        },
      },
      {
        animation = {
          filename = BASEENTITY .. "electric-furnace/hr-electric-furnace-propeller-1.png",
          priority = "high",
          width = 37,
          height = 25,
          frame_count = 4,
          animation_speed = 0.5,
          shift = util.by_pixel(-27.333, -24.666),
          scale = 0.6666
        }
      },
      {
        animation = {
          filename = BASEENTITY .. "electric-furnace/hr-electric-furnace-propeller-2.png",
          priority = "high",
          width = 23,
          height = 15,
          frame_count = 4,
          animation_speed = 0.5,
          shift = util.by_pixel(4.666, -50.666),
          scale = 0.6666
        }
      }
    },

    water_reflection = {
      pictures = {
        filename = BASEENTITY .. "electric-furnace/electric-furnace-reflection.png",
        priority = "extra-high",
        width = 24,
        height = 24,
        shift = util.by_pixel(6.666, 53.333),
        variation_count = 1,
        scale = 6.6666,
      },
      rotate = false,
      orientation_to_variation = false
    }
  }
})

data:extend({
  {
    type = "assembling-machine",
    name = "nullius-medium-furnace-3",
    localised_description = {"entity-description.nullius-furnace"},
    icons = data.raw.item["nullius-medium-furnace-3"].icons,
    flags = {"placeable-neutral", "placeable-player", "player-creation"},
    minable = {mining_time = 2, result = "nullius-medium-furnace-3"},
    max_health = 400,
    corpse = "electric-furnace-remnants",
    dying_explosion = "medium-explosion",
    resistances = {
      { type = "impact", decrease = 100, percent = 90 },
      { type = "fire", decrease = 100, percent = 90 },
      { type = "explosion", percent = 50 }
    },
    fast_replaceable_group = "medium-furnace",
    collision_box = {{-1.2, -1.2}, {1.2, 1.2}},
    selection_box = {{-1.5, -1.5}, {1.5, 1.5}},
    fluid_boxes = data.raw["assembling-machine"]["nullius-medium-furnace-2"].fluid_boxes,
    crafting_categories = {"dry-smelting", "vent-smelting", "wet-smelting"},
    crafting_speed = 4,
    energy_usage = "1000kW",
    energy_source = {
      type = "electric",
      usage_priority = "secondary-input",
      emissions_per_minute = 2,
      drain = "100kW"
    },
    module_specification = {
      module_slots = 3,
      module_info_icon_shift = {0, 0.8}
    },
    allowed_effects = {"consumption", "speed", "productivity", "pollution"},
    animation = data.raw["furnace"]["electric-furnace"].animation,
    working_visualisations = data.raw["furnace"]["electric-furnace"].working_visualisations,
    working_sound = data.raw["furnace"]["electric-furnace"].working_sound,
    water_reflection = data.raw["furnace"]["electric-furnace"].water_reflection,
    vehicle_impact_sound = { filename = "__base__/sound/car-metal-impact.ogg", volume = 0.65 }
  },

  {
    type = "assembling-machine",
    name = "nullius-large-furnace-2",
    localised_description = {"entity-description.nullius-large-furnace"},
    icons = data.raw.item["nullius-large-furnace-2"].icons,
    flags = {"placeable-neutral", "placeable-player", "player-creation"},
    minable = {mining_time = 2.5, result = "nullius-large-furnace-2"},
    max_health = 600,
    corpse = "electric-furnace-remnants",
    dying_explosion = "medium-explosion",
    resistances = {
      { type = "impact", decrease = 100, percent = 90 },
      { type = "fire", decrease = 100, percent = 90 },
      { type = "explosion", percent = 50 }
    },
    fast_replaceable_group = "large-furnace",
    collision_box = {{-1.7, -1.7}, {1.7, 1.7}},
    selection_box = {{-2.0, -2.0}, {2.0, 2.0}},
    fluid_boxes = data.raw["assembling-machine"]["nullius-large-furnace-1"].fluid_boxes,
    crafting_categories = {"bulk-smelting"},
    crafting_speed = 2,
    energy_usage = "2200kW",
    energy_source = {
      type = "electric",
      usage_priority = "secondary-input",
      emissions_per_minute = 5,
      drain = "400kW"
    },
    vehicle_impact_sound = { filename = "__base__/sound/car-metal-impact.ogg", volume = 0.65 },
    working_sound = data.raw["furnace"]["electric-furnace"].working_sound,
    working_visualisations = data.raw["assembling-machine"]["nullius-large-furnace-1"].working_visualisations,
    water_reflection = data.raw["assembling-machine"]["nullius-large-furnace-1"].water_reflection,
    module_specification = {
      module_slots = 3,
      module_info_icon_shift = {0, 1}
    },
    allowed_effects = {"consumption", "speed", "productivity", "pollution"},

    animation = {
      layers = {
        {
          filename = BASEENTITY .. "electric-furnace/hr-electric-furnace.png",
          priority = "high",
          width = 239,
          height = 219,
          frame_count = 1,
          shift = util.by_pixel(1, 7.666),
          scale = 0.6666
        },
        {
          filename = BASEENTITY .. "electric-furnace/hr-electric-furnace-shadow.png",
          priority = "high",
          width = 227,
          height = 171,
          frame_count = 1,
          draw_as_shadow = true,
          shift = util.by_pixel(15, 10.333),
          scale = 0.6666
        }
      }
    }
  },

  {
    type = "assembling-machine",
    name = "nullius-foundry-1",
    icons = data.raw.item["nullius-foundry-1"].icons,
    flags = {"placeable-neutral", "player-creation"},
    minable = {mining_time = 0.8, result = "nullius-foundry-1"},
    fast_replaceable_group = "foundry",
    next_upgrade = "nullius-foundry-2",
    max_health = 300,
    corpse = "big-remnants",
    dying_explosion = "medium-explosion",
    collision_box = {{-1.3, -1.3}, {1.3, 1.3}},
    selection_box = {{-1.5, -1.5}, {1.5, 1.5}},
    crafting_categories = {"machine-casting", "hand-casting"},
    crafting_speed = 1,
    energy_source = {
      type = "electric",
      usage_priority = "secondary-input",
      emissions_per_minute = 0.5,
      drain = "10kW"
    },
    energy_usage = "150kW",
    animation = {
      layers = {
        {
          filename = "__angelssmelting__/graphics/entity/casting-machine/hr-casting-machine-base.png",
          priority = "high",
          width = 205,
          height = 244,
          line_length = 7,
          frame_count = 49,
          animation_speed = 0.4,
          shift = util.by_pixel(0, -2),
          scale = 0.5,
          tint = {0.6, 0.8, 0.7}
        },
        {
          filename = "__angelssmelting__/graphics/entity/casting-machine/hr-casting-machine-shadow.png",
          priority = "high",
          width = 248,
          height = 206,
          line_length = 7,
          frame_count = 49,
          animation_speed = 0.4,
          draw_as_shadow = true,
          shift = util.by_pixel(11.5, 8.5),
          scale = 0.5
        }
      }
    },
    working_visualisations = {
      {
        draw_as_sprite = false,
        draw_as_light = true,
        always_draw = true,
        animation = {
          filename = "__angelssmelting__/graphics/entity/casting-machine/hr-casting-machine-light.png",
          priority = "high",
          width = 205,
          height = 244,
          shift = util.by_pixel(0, -2),
          scale = 0.5
        }
      }
    },
    resistances = {
      { type = "impact", decrease = 100, percent = 90 },
      { type = "fire", decrease = 50, percent = 80 }
    },
    module_specification = { module_slots = 1 },
    allowed_effects = {"speed", "productivity", "consumption", "pollution"},
    fluid_boxes = {
      {
        production_type = "input",
        pipe_covers = pipecoverspictures(),
        base_area = 10,
        base_level = -1,
        pipe_connections = {{ type="input", position = {-2, 1} }}
      },
      {
        production_type = "output",
        pipe_covers = pipecoverspictures(),
        base_level = 3,
        pipe_connections = {{ type="output", position = {2, -1} }}
      },
    },
	vehicle_impact_sound = data.raw["furnace"]["stone-furnace"].vehicle_impact_sound,
    working_sound = data.raw["furnace"]["stone-furnace"].working_sound
  }
})

data:extend({
  {
    type = "assembling-machine",
    name = "nullius-foundry-2",
    icons = data.raw.item["nullius-foundry-2"].icons,
    flags = {"placeable-neutral", "player-creation"},
    minable = {mining_time = 1.2, result = "nullius-foundry-2"},
    fast_replaceable_group = "foundry",
    next_upgrade = "nullius-foundry-3",
    max_health = 400,
    corpse = "big-remnants",
    dying_explosion = "medium-explosion",
    collision_box = {{-1.3, -1.3}, {1.3, 1.3}},
    selection_box = {{-1.5, -1.5}, {1.5, 1.5}},
    crafting_categories = {"machine-casting", "hand-casting"},
    crafting_speed = 2,
    energy_source = {
      type = "electric",
      usage_priority = "secondary-input",
      emissions_per_minute = 1,
      drain = "25kW"
    },
    energy_usage = "265kW",
    animation = {
      layers = {
        {
          filename = "__angelssmelting__/graphics/entity/casting-machine/hr-casting-machine-base.png",
          priority = "high",
          width = 205,
          height = 244,
          line_length = 7,
          frame_count = 49,
          animation_speed = 0.5,
          shift = util.by_pixel(0, -2),
          scale = 0.5,
          tint = {0.7, 0.8, 1}
        },
        {
          filename = "__angelssmelting__/graphics/entity/casting-machine/hr-casting-machine-shadow.png",
          priority = "high",
          width = 248,
          height = 206,
          line_length = 7,
          frame_count = 49,
          animation_speed = 0.5,
          draw_as_shadow = true,
          shift = util.by_pixel(11.5, 8.5),
          scale = 0.5
        }
      }
    },
    working_visualisations = data.raw["assembling-machine"]["nullius-foundry-1"].working_visualisations,
    resistances = {
      { type = "impact", decrease = 100, percent = 90 },
      { type = "fire", decrease = 50, percent = 80 }
    },
    module_specification = { module_slots = 2 },
    allowed_effects = {"speed", "productivity", "consumption", "pollution"},
    fluid_boxes = {
      {
        production_type = "input",
        pipe_covers = pipecoverspictures(),
        base_area = 10,
        base_level = -1.5,
        pipe_connections = {{ type="input", position = {-2, 1} }}
      },
      {
        production_type = "output",
        pipe_covers = pipecoverspictures(),
        base_area = 5,
        base_level = 4,
        pipe_connections = {{ type="output", position = {2, -1} }}
      },
    },
	vehicle_impact_sound = data.raw["assembling-machine"]["nullius-foundry-1"].vehicle_impact_sound,
    working_sound = data.raw["assembling-machine"]["nullius-foundry-1"].working_sound
  },

  {
    type = "assembling-machine",
    name = "nullius-foundry-3",
    icons = data.raw.item["nullius-foundry-3"].icons,
    flags = {"placeable-neutral", "player-creation"},
    minable = {mining_time = 1.6, result = "nullius-foundry-3"},
    fast_replaceable_group = "foundry",
    max_health = 500,
    corpse = "big-remnants",
    dying_explosion = "medium-explosion",
    collision_box = {{-1.3, -1.3}, {1.3, 1.3}},
    selection_box = {{-1.5, -1.5}, {1.5, 1.5}},
    crafting_categories = {"machine-casting", "hand-casting"},
    crafting_speed = 4,
    energy_source = {
      type = "electric",
      usage_priority = "secondary-input",
      emissions_per_minute = 2,
      drain = "50kW"
    },
    energy_usage = "525kW",
    animation = {
      layers = {
        {
          filename = "__angelssmelting__/graphics/entity/casting-machine/hr-casting-machine-base.png",
          priority = "high",
          width = 205,
          height = 244,
          line_length = 7,
          frame_count = 49,
          animation_speed = 0.6,
          shift = util.by_pixel(0, -2),
          scale = 0.5
        },
        {
          filename = "__angelssmelting__/graphics/entity/casting-machine/hr-casting-machine-shadow.png",
          priority = "high",
          width = 248,
          height = 206,
          line_length = 7,
          frame_count = 49,
          animation_speed = 0.6,
          draw_as_shadow = true,
          shift = util.by_pixel(11.5, 8.5),
          scale = 0.5
        }
      }
    },
    working_visualisations = data.raw["assembling-machine"]["nullius-foundry-1"].working_visualisations,
    resistances = {
      { type = "impact", decrease = 100, percent = 90 },
      { type = "fire", decrease = 50, percent = 80 }
    },
    module_specification = { module_slots = 3 },
    allowed_effects = {"speed", "productivity", "consumption", "pollution"},
    fluid_boxes = {
      {
        production_type = "input",
        pipe_covers = pipecoverspictures(),
        base_area = 10,
        base_level = -2,
        pipe_connections = {{ type="input", position = {-2, 1} }}
      },
      {
        production_type = "output",
        pipe_covers = pipecoverspictures(),
        base_area = 10,
        base_level = 5,
        pipe_connections = {{ type="output", position = {2, -1} }}
      },
    },
	vehicle_impact_sound = data.raw["assembling-machine"]["nullius-foundry-1"].vehicle_impact_sound,
    working_sound = data.raw["assembling-machine"]["nullius-foundry-1"].working_sound
  },

  {
    type = "assembling-machine",
    name = "nullius-crusher-1",
    icons = data.raw.item["nullius-crusher-1"].icons,
    flags = {"placeable-neutral","player-creation"},
    minable = {mining_time = 0.6, result = "nullius-crusher-1"},
    fast_replaceable_group = "crusher",
    next_upgrade = "nullius-crusher-2",
    max_health = 300,
    corpse = "big-remnants",
    dying_explosion = "medium-explosion",
    collision_box = {{-1.2, -1.2}, {1.2, 1.2}},
    selection_box = {{-1.5, -1.5}, {1.5, 1.5}},
    crafting_categories = {"ore-crushing", "hand-crushing"},
    crafting_speed = 1,
    module_specification = { module_slots = 1 },
    allowed_effects = {"speed", "productivity", "consumption", "pollution"},
    energy_source = {
      type = "electric",
      usage_priority = "secondary-input",
      emissions_per_minute = 0.5,
      drain = "3kW"
    },
    energy_usage = "97kW",
    resistances = {
      { type = "impact", decrease = 100, percent = 90 },
      { type = "physical", decrease = 50, percent = 80 }
    },
    fluid_boxes = {
      {
        production_type = "input",
        pipe_covers = pipecoverspictures(),
        base_area = 5,
        base_level = -2,
        height = 2,
        pipe_connections = {{ type="input", position = {0, 2} }}
      },
      {
        production_type = "output",
        pipe_covers = pipecoverspictures(),
        base_level = 2,
        base_area = 3,
        height = 2,
        pipe_connections = {{ type="output", position = {0, -2} }}
      },
      off_when_no_fluid_recipe = true
    },
    animation = util.table.deepcopy(data.raw["assembling-machine"]["ore-crusher"].animation),
    vehicle_impact_sound = { filename = "__base__/sound/car-metal-impact.ogg", volume = 0.65 },
    working_sound = data.raw["assembling-machine"]["burner-ore-crusher"].working_sound,
  },

  {
    type = "assembling-machine",
    name = "nullius-crusher-2",
    icons = data.raw.item["nullius-crusher-2"].icons,
    flags = {"placeable-neutral","player-creation"},
    minable = {mining_time = 0.9, result = "nullius-crusher-2"},
    fast_replaceable_group = "crusher",
    next_upgrade = "nullius-crusher-3",
    max_health = 400,
    corpse = "big-remnants",
    dying_explosion = "medium-explosion",
    collision_box = {{-1.2, -1.2}, {1.2, 1.2}},
    selection_box = {{-1.5, -1.5}, {1.5, 1.5}},
    crafting_categories = {"ore-crushing", "hand-crushing"},
    crafting_speed = 2,
    energy_source = {
      type = "electric",
      usage_priority = "secondary-input",
      emissions_per_minute = 0.75,
      drain = "8kW"
    },
    energy_usage = "172kW",
    resistances = {
      { type = "impact", decrease = 100, percent = 90 },
      { type = "physical", decrease = 50, percent = 80 }
    },
    module_specification = { module_slots = 2 },
    allowed_effects = {"speed", "productivity", "consumption", "pollution"},
    vehicle_impact_sound =  { filename = "__base__/sound/car-metal-impact.ogg", volume = 0.65 },
    working_sound = data.raw["assembling-machine"]["ore-crusher"].working_sound,
    fluid_boxes = {
      {
        production_type = "input",
        pipe_covers = pipecoverspictures(),
        base_area = 5,
        base_level = -2,
        height = 2,
        pipe_connections = {{ type="input", position = {0, 2} }}
      },
      {
        production_type = "output",
        pipe_covers = pipecoverspictures(),
        base_level = 4,
        base_area = 4,
        height = 2,
        pipe_connections = {{ type="output", position = {0, -2} }}
      },
      off_when_no_fluid_recipe = true
    },
    animation = util.table.deepcopy(data.raw["assembling-machine"]["ore-crusher-2"].animation)
  },

  {
    type = "assembling-machine",
    name = "nullius-crusher-3",
    icons = data.raw.item["nullius-crusher-3"].icons,
    flags = {"placeable-neutral","player-creation"},
    minable = {mining_time = 1.2, result = "nullius-crusher-3"},
    fast_replaceable_group = "crusher",
    max_health = 500,
    corpse = "big-remnants",
    dying_explosion = "medium-explosion",
    collision_box = {{-1.2, -1.2}, {1.2, 1.2}},
    selection_box = {{-1.5, -1.5}, {1.5, 1.5}},
    crafting_categories = {"ore-crushing", "hand-crushing", "bio-harvesting"},
    crafting_speed = 4,
    energy_source = {
      type = "electric",
      usage_priority = "secondary-input",
      emissions_per_minute = 1,
      drain = "20kW"
    },
    energy_usage = "330kW",
    resistances = {
      { type = "impact", decrease = 100, percent = 90 },
      { type = "physical", decrease = 50, percent = 80 }
    },
    module_specification = { module_slots = 3 },
    allowed_effects = {"speed", "productivity", "consumption", "pollution"},
    vehicle_impact_sound =  { filename = "__base__/sound/car-metal-impact.ogg", volume = 0.65 },
    working_sound = data.raw["assembling-machine"]["ore-crusher"].working_sound,
    fluid_boxes = {
      {
        production_type = "input",
        pipe_covers = pipecoverspictures(),
        base_area = 5,
        base_level = -2,
        height = 2,
        pipe_connections = {{ type="input", position = {0, 2} }}
      },
      {
        production_type = "output",
        pipe_covers = pipecoverspictures(),
        base_level = 5,
        base_area = 5,
        height = 2,
        pipe_connections = {{ type="output", position = {0, -2} }}
      },
      off_when_no_fluid_recipe = true
    },
    animation = util.table.deepcopy(data.raw["assembling-machine"]["ore-crusher-3"].animation)
  }
})

data.raw["assembling-machine"]["nullius-crusher-1"].animation.layers[1].tint = {0.6, 0.6, 0.6}
data.raw["assembling-machine"]["nullius-crusher-2"].animation.layers[1].tint = {0.6, 0.65, 0.85}
if (data.raw["assembling-machine"]["nullius-crusher-1"].animation.layers[1].hr_version ~= nil) then
data.raw["assembling-machine"]["nullius-crusher-1"].animation.layers[1].hr_version.tint = {0.6, 0.6, 0.6}
data.raw["assembling-machine"]["nullius-crusher-2"].animation.layers[1].hr_version.tint = {0.6, 0.65, 0.85}
end


data:extend({
  {
    type = "assembling-machine",
    name = "nullius-flotation-cell-1",
    icons = data.raw.item["nullius-flotation-cell-1"].icons,
    localised_description = {"entity-description.nullius-flotation-cell"},
    flags = {"placeable-neutral","player-creation"},
    minable = {mining_time = 1, result = "nullius-flotation-cell-1"},
    fast_replaceable_group = "flotation-cell",
    next_upgrade = "nullius-flotation-cell-2",
    max_health = 300,
    corpse = "big-remnants",
    dying_explosion = "medium-explosion",
    collision_box = {{-1.75, -1.75}, {1.75, 1.75}},
    selection_box = {{-2, -2}, {2, 2}},
    crafting_categories = {"ore-flotation"},
    crafting_speed = 1,
    energy_source = {
      type = "electric",
      usage_priority = "secondary-input",
      emissions_per_minute = 0.5,
      drain = "7kW"
    },
    energy_usage = "193kW",
    resistances = {
      { type = "impact", decrease = 100, percent = 90 },
      { type = "acid", decrease = 50, percent = 80 }
    },
    module_specification = { module_slots = 1 },
    allowed_effects = {"speed", "productivity", "consumption", "pollution"},
    fluid_boxes = {
      {
        production_type = "input",
        pipe_picture = floatpipepics,
        pipe_covers = pipecoverspictures(),
        base_area = 10,
        base_level = -1,
        pipe_connections = {{ type="input", position = {-0.5, 2.5} }}
      },
      {
        production_type = "input",
        pipe_picture = floatpipepics,
        pipe_covers = pipecoverspictures(),
        base_area = 10,
        base_level = -1,
        pipe_connections = {{ type="input", position = {-2.5, -0.5} }}
      },
      {
        production_type = "output",
        pipe_picture = floatpipepics,
        pipe_covers = pipecoverspictures(),
        base_level = 3,
        pipe_connections = {{ type="output", position = {0.5, -2.5} }}
      },
      {
        production_type = "output",
        pipe_picture = floatpipepics,
        pipe_covers = pipecoverspictures(),
        base_level = 3,
        pipe_connections = {{ type="output", position = {2.5, 0.5} }}
      }
    },
	animation = scale_image(data.raw["assembling-machine"]["ore-floatation-cell"].animation.east, 0.81),
	working_visualisations = scale_image(data.raw["assembling-machine"]["ore-floatation-cell"].working_visualisations, 0.81),
    vehicle_impact_sound =  { filename = "__base__/sound/car-metal-impact.ogg", volume = 0.65 },
    working_sound = data.raw["assembling-machine"]["ore-floatation-cell"].working_sound,
    pipe_covers = pipecoverspictures()
  },

  {
    type = "assembling-machine",
    name = "nullius-flotation-cell-2",
    icons = data.raw.item["nullius-flotation-cell-2"].icons,
    localised_description = {"entity-description.nullius-flotation-cell"},
    flags = {"placeable-neutral","player-creation"},
    minable = {mining_time = 1.5, result = "nullius-flotation-cell-2"},
    fast_replaceable_group = "flotation-cell",
    next_upgrade = "nullius-flotation-cell-3",
    max_health = 400,
    corpse = "big-remnants",
    dying_explosion = "medium-explosion",
    collision_box = {{-1.75, -1.75}, {1.75, 1.75}},
    selection_box = {{-2, -2}, {2, 2}},
    crafting_categories = {"ore-flotation"},
    crafting_speed = 2,
    energy_source = {
      type = "electric",
      usage_priority = "secondary-input",
      emissions_per_minute = 1,
      drain = "15kW"
    },
    energy_usage = "385kW",
    resistances = {
      { type = "impact", decrease = 100, percent = 90 },
      { type = "acid", decrease = 50, percent = 80 }
    },
    module_specification = { module_slots = 2 },
    allowed_effects = {"speed", "productivity", "consumption", "pollution"},
    fluid_boxes = {
      {
        production_type = "input",
        pipe_picture = floatpipepics,
        pipe_covers = pipecoverspictures(),
        base_area = 10,
        base_level = -2,
        pipe_connections = {{ type="input", position = {-0.5, 2.5} }}
      },
      {
        production_type = "input",
        pipe_picture = floatpipepics,
        pipe_covers = pipecoverspictures(),
        base_area = 10,
        base_level = -2,
        pipe_connections = {{ type="input", position = {-2.5, -0.5} }}
      },
      {
        production_type = "output",
        pipe_picture = floatpipepics,
        pipe_covers = pipecoverspictures(),
        base_area = 5,
        base_level = 4,
		height = 2,
        pipe_connections = {{ type="output", position = {0.5, -2.5} }}
      },
      {
        production_type = "output",
        pipe_picture = floatpipepics,
        pipe_covers = pipecoverspictures(),
        base_area = 5,
        base_level = 4,
		height = 2,
        pipe_connections = {{ type="output", position = {2.5, 0.5} }}
      }
    },
	animation = scale_image(data.raw["assembling-machine"]["ore-floatation-cell-2"].animation.east, 0.81),
	working_visualisations = scale_image(data.raw["assembling-machine"]["ore-floatation-cell-2"].working_visualisations, 0.81),
    vehicle_impact_sound = { filename = "__base__/sound/car-metal-impact.ogg", volume = 0.65 },
    working_sound = data.raw["assembling-machine"]["ore-floatation-cell-2"].working_sound,
    pipe_covers = pipecoverspictures()
  },

  {
    type = "assembling-machine",
    name = "nullius-flotation-cell-3",
    icons = data.raw.item["nullius-flotation-cell-3"].icons,
    localised_description = {"entity-description.nullius-flotation-cell"},
    flags = {"placeable-neutral","player-creation"},
    minable = {mining_time = 2, result = "nullius-flotation-cell-3"},
    fast_replaceable_group = "flotation-cell",
    max_health = 500,
    corpse = "big-remnants",
    dying_explosion = "medium-explosion",
    collision_box = {{-1.75, -1.75}, {1.75, 1.75}},
    selection_box = {{-2, -2}, {2, 2}},
    crafting_categories = {"ore-flotation"},
    crafting_speed = 4,
    energy_source = {
      type = "electric",
      usage_priority = "secondary-input",
      emissions_per_minute = 1,
      drain = "30kW"
    },
    energy_usage = "770kW",
    resistances = {
      { type = "impact", decrease = 100, percent = 90 },
      { type = "acid", decrease = 50, percent = 80 }
    },
    module_specification = { module_slots = 3 },
    allowed_effects = {"speed", "productivity", "consumption", "pollution"},
    fluid_boxes = {
      {
        production_type = "input",
        pipe_picture = floatpipepics,
        pipe_covers = pipecoverspictures(),
        base_area = 10,
        base_level = -3,
        height = 2,
        pipe_connections = {{ type="input", position = {-0.5, 2.5} }}
      },
      {
        production_type = "input",
        pipe_picture = floatpipepics,
        pipe_covers = pipecoverspictures(),
        base_area = 10,
        base_level = -3,
        height = 2,
        pipe_connections = {{ type="input", position = {-2.5, -0.5} }}
      },
      {
        production_type = "output",
        pipe_picture = floatpipepics,
        pipe_covers = pipecoverspictures(),
        base_area = 5,
        base_level = 5,
        height = 3,
        pipe_connections = {{ type="output", position = {0.5, -2.5} }}
      },
      {
        production_type = "output",
        pipe_picture = floatpipepics,
        pipe_covers = pipecoverspictures(),
        base_area = 5,
        base_level = 5,
        height = 3,
        pipe_connections = {{ type="output", position = {2.5, 0.5} }}
      }
    },
	animation = scale_image(data.raw["assembling-machine"]["ore-floatation-cell-3"].animation.east, 0.81),
	working_visualisations = scale_image(data.raw["assembling-machine"]["ore-floatation-cell-3"].working_visualisations, 0.81),
    vehicle_impact_sound =  { filename = "__base__/sound/car-metal-impact.ogg", volume = 0.65 },
    working_sound = data.raw["assembling-machine"]["ore-floatation-cell-3"].working_sound,
    pipe_covers = pipecoverspictures()
  }
})

local function tint_flotation_dir(dir, speed, tint)
  dir.layers[1].animation_speed = speed
  if (tint ~= nil) then dir.layers[1].tint = tint end
  if (dir.layers[1].hr_version ~= nil) then
    dir.layers[1].hr_version.animation_speed = speed
    if (tint ~= nil) then dir.layers[1].hr_version.tint = tint end  
  end
end
local function tint_flotation_cell(num, speed, tint)
  local machine = data.raw["assembling-machine"]["nullius-flotation-cell-"..num]
  tint_flotation_dir(machine.animation, speed, tint)
  machine.working_visualisations[5] = nil
  machine.working_visualisations[6] = nil
end
tint_flotation_cell(1, 0.4, {0.77, 0.77, 0.60})
tint_flotation_cell(2, 0.5, {0.8, 0.8, 1})
tint_flotation_cell(3, 0.6, nil)

local mfc1 = util.table.deepcopy(
    data.raw["assembling-machine"]["nullius-flotation-cell-1"])
mfc1.name = "nullius-mirror-flotation-cell-1"
mfc1.icons[2] = { icon = ICONPATH .. "flip1.png", icon_size = 64 }
mfc1.placeable_by = {item = "nullius-flotation-cell-1", count = 1}
mfc1.next_upgrade = "nullius-mirror-flotation-cell-2"
mfc1.localised_name = {"entity-name.nullius-mirrored",
    {"entity-name.nullius-flotation-cell-1"}}
mfc1.fluid_boxes[1].pipe_connections[1].position = {-2.5, 0.5}
mfc1.fluid_boxes[2].pipe_connections[1].position = {0.5, 2.5}
mfc1.fluid_boxes[3].pipe_connections[1].position = {2.5, -0.5}
mfc1.fluid_boxes[4].pipe_connections[1].position = {-0.5, -2.5}

data:extend({
  mfc1,
  {
    type = "assembling-machine",
    name = "nullius-mirror-flotation-cell-2",
	localised_name = {"entity-name.nullius-mirrored",
        {"entity-name.nullius-flotation-cell-2"}},
	icons = {
	  data.raw.item["nullius-flotation-cell-2"].icons[1],
	  { icon = ICONPATH .. "flip1.png", icon_size = 64 }
	},
    localised_description = {"entity-description.nullius-flotation-cell"},
    flags = {"placeable-neutral","player-creation"},
    minable = {mining_time = 1.5, result = "nullius-flotation-cell-2"},
	placeable_by = {item = "nullius-flotation-cell-2", count = 1},
    fast_replaceable_group = "flotation-cell",
    next_upgrade = "nullius-mirror-flotation-cell-3",
    max_health = 400,
    corpse = "big-remnants",
    dying_explosion = "medium-explosion",
    collision_box = {{-1.75, -1.75}, {1.75, 1.75}},
    selection_box = {{-2, -2}, {2, 2}},
    crafting_categories = {"ore-flotation"},
    crafting_speed = 2,
    energy_source = data.raw["assembling-machine"]["nullius-flotation-cell-2"].energy_source,
    energy_usage = "385kW",
    resistances = data.raw["assembling-machine"]["nullius-flotation-cell-2"].resistances,
    module_specification = { module_slots = 2 },
    allowed_effects = {"speed", "productivity", "consumption", "pollution"},
    animation = data.raw["assembling-machine"]["nullius-flotation-cell-2"].animation,
    working_visualisations = data.raw["assembling-machine"]["nullius-flotation-cell-2"].working_visualisations,
    vehicle_impact_sound =  { filename = "__base__/sound/car-metal-impact.ogg", volume = 0.65 },
    working_sound = data.raw["assembling-machine"]["ore-floatation-cell"].working_sound,

    fluid_boxes = {
      {
        production_type = "input",
        pipe_picture = floatpipepics,
        pipe_covers = pipecoverspictures(),
        base_area = 10,
        base_level = -2,
        pipe_connections = {{ type="input", position = {-2.5, 0.5} }}
      },
      {
        production_type = "input",
        pipe_picture = floatpipepics,
        pipe_covers = pipecoverspictures(),
        base_area = 10,
        base_level = -2,
        pipe_connections = {{ type="input", position = {0.5, 2.5} }}
      },
      {
        production_type = "output",
        pipe_picture = floatpipepics,
        pipe_covers = pipecoverspictures(),
		base_area = 5,
        base_level = 4,
		height = 2,
        pipe_connections = {{ type="output", position = {2.5, -0.5} }}
      },
      {
        production_type = "output",
        pipe_picture = floatpipepics,
        pipe_covers = pipecoverspictures(),
		base_area = 5,
        base_level = 4,
		height = 2,
        pipe_connections = {{ type="output", position = {-0.5, -2.5} }}
      }
    }
  },

  {
    type = "assembling-machine",
    name = "nullius-mirror-flotation-cell-3",
	localised_name = {"entity-name.nullius-mirrored",
        {"entity-name.nullius-flotation-cell-3"}},
	icons = {
	  data.raw.item["nullius-flotation-cell-3"].icons[1],
	  { icon = ICONPATH .. "flip1.png", icon_size = 64 }
	},
    localised_description = {"entity-description.nullius-flotation-cell"},
    flags = {"placeable-neutral","player-creation"},
    minable = {mining_time = 2, result = "nullius-flotation-cell-3"},
	placeable_by = {item = "nullius-flotation-cell-3", count = 1},
    fast_replaceable_group = "flotation-cell",
    max_health = 500,
    corpse = "big-remnants",
    dying_explosion = "medium-explosion",
    collision_box = {{-1.75, -1.75}, {1.75, 1.75}},
    selection_box = {{-2, -2}, {2, 2}},
    crafting_categories = {"ore-flotation"},
    crafting_speed = 4,
    energy_usage = "770kW",
    module_specification = { module_slots = 3 },
    allowed_effects = {"speed", "productivity", "consumption", "pollution"},
    animation = data.raw["assembling-machine"]["nullius-flotation-cell-3"].animation,
    working_visualisations = data.raw["assembling-machine"]["nullius-flotation-cell-3"].working_visualisations,
    energy_source = data.raw["assembling-machine"]["nullius-flotation-cell-3"].energy_source,
    resistances = data.raw["assembling-machine"]["nullius-flotation-cell-3"].resistances,
    vehicle_impact_sound =  { filename = "__base__/sound/car-metal-impact.ogg", volume = 0.65 },
    working_sound = data.raw["assembling-machine"]["ore-floatation-cell"].working_sound,

    fluid_boxes = {
      {
        production_type = "input",
        pipe_picture = floatpipepics,
        pipe_covers = pipecoverspictures(),
        base_area = 10,
        base_level = -3,
        height = 2,
        pipe_connections = {{ type="input", position = {-2.5, 0.5} }}
      },
      {
        production_type = "input",
        pipe_picture = floatpipepics,
        pipe_covers = pipecoverspictures(),
        base_area = 10,
        base_level = -3,
        height = 2,
        pipe_connections = {{ type="input", position = {0.5, 2.5} }}
      },
      {
        production_type = "output",
        pipe_picture = floatpipepics,
        pipe_covers = pipecoverspictures(),
		base_area = 5,
        base_level = 5,
        height = 3,
        pipe_connections = {{ type="output", position = {2.5, -0.5} }}
      },
      {
        production_type = "output",
        pipe_picture = floatpipepics,
        pipe_covers = pipecoverspictures(),
		base_area = 5,
        base_level = 5,
        height = 3,
        pipe_connections = {{ type="output", position = {-0.5, -2.5} }}
      }
    }
  }
})


if mods["reskins-bobs"] then
local small_animation = data.raw["assembling-machine"]["nullius-small-furnace-3"].animation
local medium_animation = data.raw["assembling-machine"]["nullius-medium-furnace-2"].animation
local large_animation = data.raw["assembling-machine"]["nullius-large-furnace-1"].animation
medium_animation.layers = {
  medium_animation.layers[1],
  {
    filename = "__reskins-bobs__/graphics/entity/assembly/electric-furnace/electric-furnace-mask.png",
    priority = "high",
    width = 119,
    height = 106,
    shift = util.by_pixel(1, 1),
    tint = tiercolor("red"),
    hr_version = {
      filename = "__reskins-bobs__/graphics/entity/assembly/electric-furnace/hr-electric-furnace-mask.png",
      priority = "high",
      width = 238,
      height = 212,
      shift = util.by_pixel(1, 1),
      tint = tiercolor("red"),
      scale = 0.5
    }
  },
  {
    filename = "__reskins-bobs__/graphics/entity/assembly/electric-furnace/electric-furnace-highlights.png",
    priority = "high",
    width = 119,
    height = 106,
    shift = util.by_pixel(1, 1),
    blend_mode = "additive",
    hr_version = {
      filename = "__reskins-bobs__/graphics/entity/assembly/electric-furnace/hr-electric-furnace-highlights.png",
      priority = "high",
      width = 238,
      height = 212,
      shift = util.by_pixel(1, 1),
      blend_mode = "additive",
      scale = 0.5
    }
  },
  medium_animation.layers[2]
}
medium_animation.layers[1].tint = nil
medium_animation.layers[1].hr_version.tint = nil
small_animation.layers = {
  small_animation.layers[1],
  {
    filename = "__reskins-bobs__/graphics/entity/assembly/electric-furnace/electric-furnace-mask.png",
    priority = "high",
    width = 119,
    height = 106,
    shift = util.by_pixel(0.6666, 0.6666),
    tint = tiercolor("red"),
    scale = 0.6666
  },
  {
    filename = "__reskins-bobs__/graphics/entity/assembly/electric-furnace/electric-furnace-highlights.png",
    priority = "high",
    width = 119,
    height = 106,
    shift = util.by_pixel(0.6666, 0.6666),
    blend_mode = "additive",
    scale = 0.6666
  },
  small_animation.layers[2]
}
small_animation.layers[1].tint = nil
large_animation.layers = {
  large_animation.layers[1],
  {
    filename = "__reskins-bobs__/graphics/entity/assembly/electric-furnace/hr-electric-furnace-mask.png",
    priority = "high",
    width = 238,
    height = 212,
    shift = util.by_pixel(1.333, 1.333),
    tint = tiercolor("red"),
    scale = 0.6666
  },
  {
    filename = "__reskins-bobs__/graphics/entity/assembly/electric-furnace/hr-electric-furnace-highlights.png",
    priority = "high",
    width = 238,
    height = 212,
    shift = util.by_pixel(1.333, 1.333),
    blend_mode = "additive",
    scale = 0.6666
  },
  large_animation.layers[2]
}
large_animation.layers[1].tint = nil

data.raw["assembling-machine"]["nullius-medium-furnace-3"].animation =
    util.table.deepcopy(data.raw["assembling-machine"]["nullius-medium-furnace-2"].animation)
data.raw["assembling-machine"]["nullius-large-furnace-2"].animation =
    util.table.deepcopy(data.raw["assembling-machine"]["nullius-large-furnace-1"].animation)
data.raw["assembling-machine"]["nullius-medium-furnace-3"].animation.layers[2].tint = tiercolor("deepblue")
data.raw["assembling-machine"]["nullius-medium-furnace-3"].animation.layers[2].hr_version.tint = tiercolor("deepblue")
data.raw["assembling-machine"]["nullius-large-furnace-2"].animation.layers[2].tint = tiercolor("deepblue")
end
