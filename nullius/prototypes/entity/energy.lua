local ICONPATH = "__nullius__/graphics/icons/"
local ENTICONPATH = "__nullius__/graphics/icons/entity/"
local ENTITYPATH = "__nullius__/graphics/entity/"
local BASEENTITY = "__base__/graphics/entity/"

function accumulator_picture(tint, repeat_count)
  return
  {
    layers = {
      {
        filename = BASEENTITY .. "accumulator/hr-accumulator.png",
        priority = "high",
        width = 130,
        height = 189,
        repeat_count = repeat_count,
        shift = util.by_pixel(0, -16.5),
        tint = tint,
        animation_speed = 0.5,
        scale = 0.75
      },
      {
        filename = BASEENTITY .. "accumulator/hr-accumulator-shadow.png",
        priority = "high",
        width = 234,
        height = 106,
        repeat_count = repeat_count,
        shift = util.by_pixel(43.5, 9),
        draw_as_shadow = true,
        scale = 0.75
      }
    }
  }
end

data:extend({
  {
    type = "solar-panel",
    name = "nullius-solar-panel-1",
    localised_description = {"equipment-description.nullius-solar-panel-1"},
    icons = data.raw.item["nullius-solar-panel-1"].icons,
    flags = {"placeable-neutral", "player-creation"},
    minable = {mining_time = 0.4, result = "nullius-solar-panel-1"},
    max_health = 300,
    corpse = "solar-panel-remnants",
    collision_box = {{-1.7, -1.7}, {1.7, 1.7}},
    selection_box = {{-2, -2}, {2, 2}},
    energy_source = { type = "electric", usage_priority = "solar" },
    production = "100kW",
    resistances = {
      { type = "impact", decrease = 50, percent = 80 },
      { type = "laser", decrease = 50, percent = 80 }
    },
    fast_replaceable_group = "solar-panel",
    next_upgrade = "nullius-solar-panel-2",
    picture = {
      layers = {
        {
          filename = BASEENTITY .. "solar-panel/hr-solar-panel.png",
          priority = "high",
          width = 230,
          height = 224,
          shift = util.by_pixel(-2, 2.4),
          tint = {0.77, 0.77, 0.68},
          scale = 0.64
        },
        {
          filename = BASEENTITY .. "solar-panel/hr-solar-panel-shadow.png",
          priority = "high",
          width = 220,
          height = 180,
          shift = util.by_pixel(6.4, 4),
          draw_as_shadow = true,
          scale = 0.64
        }
      }
    },
    overlay = {
      layers = {
        {
          filename = BASEENTITY .. "solar-panel/hr-solar-panel-shadow-overlay.png",
          priority = "high",
          width = 214,
          height = 180,
          shift = util.by_pixel(7, 4),
          scale = 0.64
        }
      }
    },
    vehicle_impact_sound = { filename = "__base__/sound/car-metal-impact.ogg", volume = 0.6 }
  }
})

data:extend({
  {
    type = "solar-panel",
    name = "nullius-solar-panel-2",
    localised_description = {"equipment-description.nullius-solar-panel-2"},
    icons = data.raw.item["nullius-solar-panel-2"].icons,
    flags = {"placeable-neutral", "player-creation"},
    minable = {mining_time = 0.6, result = "nullius-solar-panel-2"},
    max_health = 350,
    corpse = "solar-panel-remnants",
    collision_box = {{-1.7, -1.7}, {1.7, 1.7}},
    selection_box = {{-2, -2}, {2, 2}},
    energy_source = { type = "electric", usage_priority = "solar" },
    production = "200kW",
    resistances = data.raw["solar-panel"]["nullius-solar-panel-1"].resistances,
    fast_replaceable_group = "solar-panel",
    next_upgrade = "nullius-solar-panel-3",
    overlay = data.raw["solar-panel"]["nullius-solar-panel-1"].overlay,
    vehicle_impact_sound = { filename = "__base__/sound/car-metal-impact.ogg", volume = 0.6 },
    picture = {
      layers = {
        {
          filename = BASEENTITY .. "solar-panel/hr-solar-panel.png",
          priority = "high",
          width = 230,
          height = 224,
          shift = util.by_pixel(-2, 2.4),
          tint = {0.8, 0.8, 0.9},
          scale = 0.64
        },
        data.raw["solar-panel"]["nullius-solar-panel-1"].picture.layers[2]
      }
    }
  },

  {
    type = "solar-panel",
    name = "nullius-solar-panel-3",
    localised_description = {"equipment-description.nullius-solar-panel-3"},
    icons = data.raw.item["nullius-solar-panel-3"].icons,
    flags = {"placeable-neutral", "player-creation"},
    minable = {mining_time = 0.8, result = "nullius-solar-panel-3"},
    max_health = 400,
    corpse = "solar-panel-remnants",
    collision_box = {{-1.7, -1.7}, {1.7, 1.7}},
    selection_box = {{-2, -2}, {2, 2}},
    energy_source = { type = "electric", usage_priority = "solar" },
    production = "500kW",
    resistances = data.raw["solar-panel"]["nullius-solar-panel-1"].resistances,
    fast_replaceable_group = "solar-panel",
    next_upgrade = "nullius-solar-panel-4",
    overlay = data.raw["solar-panel"]["nullius-solar-panel-1"].overlay,
    vehicle_impact_sound = { filename = "__base__/sound/car-metal-impact.ogg", volume = 0.6 },
    picture = {
      layers = {
        {
          filename = BASEENTITY .. "solar-panel/hr-solar-panel.png",
          priority = "high",
          width = 230,
          height = 224,
          shift = util.by_pixel(-2, 2.4),
          scale = 0.64
        },
        data.raw["solar-panel"]["nullius-solar-panel-1"].picture.layers[2]
      }
    }
  },

  {
    type = "solar-panel",
    name = "nullius-solar-panel-4",
    localised_description = {"equipment-description.nullius-solar-panel-4"},
    icons = data.raw.item["nullius-solar-panel-4"].icons,
    flags = {"placeable-neutral", "player-creation"},
    minable = {mining_time = 1, result = "nullius-solar-panel-4"},
    max_health = 500,
    corpse = "solar-panel-remnants",
    collision_box = {{-1.7, -1.7}, {1.7, 1.7}},
    selection_box = {{-2, -2}, {2, 2}},
    energy_source = { type = "electric", usage_priority = "solar" },
    production = "800kW",
    resistances = data.raw["solar-panel"]["nullius-solar-panel-1"].resistances,
    fast_replaceable_group = "solar-panel",
    overlay = data.raw["solar-panel"]["nullius-solar-panel-1"].overlay,
    vehicle_impact_sound = { filename = "__base__/sound/car-metal-impact.ogg", volume = 0.6 },
    picture = {
      layers = {
        {
          filename = BASEENTITY .. "solar-panel/hr-solar-panel.png",
          priority = "high",
          width = 230,
          height = 224,
          shift = util.by_pixel(-2, 2.4),
          tint = {1, 0.75, 0.85},
          scale = 0.64
        },
        data.raw["solar-panel"]["nullius-solar-panel-1"].picture.layers[2]
      }
    }
  },

  {
    type = "accumulator",
    name = "nullius-grid-battery-1",
    icons = data.raw.item["nullius-grid-battery-1"].icons,
    flags = {"placeable-neutral", "player-creation"},
    minable = {mining_time = 0.6, result = "nullius-grid-battery-1"},
    max_health = 200,
    corpse = "accumulator-remnants",
    fast_replaceable_group = "grid-battery",
    next_upgrade = "nullius-grid-battery-2",
    collision_box = {{-1.2, -1.2}, {1.2, 1.2}},
    selection_box = {{-1.5, -1.5}, {1.5, 1.5}},
    drawing_box = {{-1.5, -2.25}, {1.5, 1.5}},
    energy_source = {
      type = "electric",
      buffer_capacity = "15MJ",
      usage_priority = "tertiary",
      input_flow_limit = "200kW",
      output_flow_limit = "500kW"
    },
    resistances = { { type = "impact", decrease = 100, percent = 90 } },
    picture = accumulator_picture({ r=0.9, g=0.85, b=0.7, a=1 }),
    charge_animation = {
      layers = {
        accumulator_picture({ r=0.9, g=0.85, b=0.7, a=1 } , 24),
        {
          filename = BASEENTITY .. "accumulator/hr-accumulator-charge.png",
          priority = "high",
          width = 178,
          height = 206,
          line_length = 6,
          frame_count = 24,
          blend_mode = "additive",
          shift = util.by_pixel(0, -33),
          scale = 0.75
        }
      }
    },
    charge_cooldown = 30,
    charge_light = {intensity = 0.3, size = 7, color = {r = 1.0, g = 1.0, b = 1.0}},
    discharge_animation = {
      layers = {
        accumulator_picture({ r=0.9, g=0.85, b=0.7, a=1 } , 24),
        {
          filename = BASEENTITY .. "accumulator/hr-accumulator-discharge.png",
          priority = "high",
          width = 170,
          height = 210,
          line_length = 6,
          frame_count = 24,
          blend_mode = "additive",
          shift = util.by_pixel(-1.5, -34.5),
          scale = 0.75
        }
      }
    },
    discharge_cooldown = 60,
    discharge_light = {intensity = 0.7, size = 7, color = {r = 1.0, g = 1.0, b = 1.0}},
    vehicle_impact_sound =  { filename = "__base__/sound/car-metal-impact.ogg", volume = 0.65 },
    working_sound = data.raw.accumulator["accumulator"].working_sound,
    circuit_wire_connection_point = circuit_connector_definitions["accumulator"].points,
    circuit_connector_sprites = circuit_connector_definitions["accumulator"].sprites,
    circuit_wire_max_distance = default_circuit_wire_max_distance,
    default_output_signal = {type = "virtual", name = "signal-A"}
  },

  {
    type = "accumulator",
    name = "nullius-grid-battery-2",
    icons = data.raw.item["nullius-grid-battery-2"].icons,
    flags = {"placeable-neutral", "player-creation"},
    minable = {mining_time = 0.9, result = "nullius-grid-battery-2"},
    max_health = 300,
    corpse = "accumulator-remnants",
    fast_replaceable_group = "grid-battery",
    next_upgrade = "nullius-grid-battery-3",
    collision_box = {{-1.2, -1.2}, {1.2, 1.2}},
    selection_box = {{-1.5, -1.5}, {1.5, 1.5}},
    drawing_box = {{-1.5, -2.25}, {1.5, 1.5}},
    energy_source = {
      type = "electric",
      buffer_capacity = "40MJ",
      usage_priority = "tertiary",
      input_flow_limit = "400kW",
      output_flow_limit = "800kW"
    },
    resistances = { { type = "impact", decrease = 100, percent = 90 } },
    picture = accumulator_picture({ r=1, g=1, b=1, a=1 }),
    charge_animation = {
      layers = {
        accumulator_picture({ r=1, g=1, b=1, a=1 } , 24),
        {
          filename = BASEENTITY .. "accumulator/hr-accumulator-charge.png",
          priority = "high",
          width = 178,
          height = 206,
          line_length = 6,
          frame_count = 24,
          blend_mode = "additive",
          shift = util.by_pixel(0, -33),
          scale = 0.75
        }
      }
    },
    charge_cooldown = 30,
    charge_light = {intensity = 0.3, size = 7, color = {r = 1.0, g = 1.0, b = 1.0}},
    discharge_animation = {
      layers = {
        accumulator_picture({ r=1, g=1, b=1, a=1 } , 24),
        {
          filename = BASEENTITY .. "accumulator/hr-accumulator-discharge.png",
          priority = "high",
          width = 170,
          height = 210,
          line_length = 6,
          frame_count = 24,
          blend_mode = "additive",
          shift = util.by_pixel(-1.5, -34.5),
          scale = 0.75
        }
      }
    },
    discharge_cooldown = 60,
    discharge_light = {intensity = 0.7, size = 7, color = {r = 1.0, g = 1.0, b = 1.0}},
    vehicle_impact_sound =  { filename = "__base__/sound/car-metal-impact.ogg", volume = 0.65 },
    working_sound = data.raw.accumulator["accumulator"].working_sound,
    circuit_wire_connection_point = circuit_connector_definitions["accumulator"].points,
    circuit_connector_sprites = circuit_connector_definitions["accumulator"].sprites,
    circuit_wire_max_distance = default_circuit_wire_max_distance,
    default_output_signal = {type = "virtual", name = "signal-A"}
  },

  {
    type = "accumulator",
    name = "nullius-grid-battery-3",
    icons = data.raw.item["nullius-grid-battery-3"].icons,
    flags = {"placeable-neutral", "player-creation"},
    minable = {mining_time = 1.2, result = "nullius-grid-battery-3"},
    max_health = 400,
    corpse = "accumulator-remnants",
    fast_replaceable_group = "grid-battery",
    collision_box = {{-1.2, -1.2}, {1.2, 1.2}},
    selection_box = {{-1.5, -1.5}, {1.5, 1.5}},
    drawing_box = {{-1.5, -2.25}, {1.5, 1.5}},
    energy_source = {
      type = "electric",
      buffer_capacity = "100MJ",
      usage_priority = "tertiary",
      input_flow_limit = "800kW",
      output_flow_limit = "1.5MW"
    },
    resistances = { { type = "impact", decrease = 100, percent = 90 } },
    picture = accumulator_picture({ r=1, g=0.85, b=1, a=1 }),
    charge_animation = {
      layers = {
        accumulator_picture({ r=1, g=0.85, b=1, a=1 } , 24),
        {
          filename = BASEENTITY .. "accumulator/hr-accumulator-charge.png",
          priority = "high",
          width = 178,
          height = 206,
          line_length = 6,
          frame_count = 24,
          blend_mode = "additive",
          shift = util.by_pixel(0, -33),
          scale = 0.75
        }
      }
    },
    charge_cooldown = 30,
    charge_light = {intensity = 0.3, size = 7, color = {r = 1.0, g = 1.0, b = 1.0}},
    discharge_animation = {
      layers = {
        accumulator_picture({ r=1, g=0.85, b=1, a=1 } , 24),
        {
          filename = BASEENTITY .. "accumulator/hr-accumulator-discharge.png",
          priority = "high",
          width = 170,
          height = 210,
          line_length = 6,
          frame_count = 24,
          blend_mode = "additive",
          shift = util.by_pixel(-1.5, -34.5),
          scale = 0.75
        }
      }
    },
    discharge_cooldown = 60,
    discharge_light = {intensity = 0.7, size = 7, color = {r = 1.0, g = 1.0, b = 1.0}},
    vehicle_impact_sound =  { filename = "__base__/sound/car-metal-impact.ogg", volume = 0.65 },
    working_sound = data.raw.accumulator["accumulator"].working_sound,
    circuit_wire_connection_point = circuit_connector_definitions["accumulator"].points,
    circuit_connector_sprites = circuit_connector_definitions["accumulator"].sprites,
    circuit_wire_max_distance = default_circuit_wire_max_distance,
    default_output_signal = {type = "virtual", name = "signal-A"}
  },

  {
    type = "assembling-machine",
    name = "nullius-combustion-chamber-1",
    icons = data.raw.item["nullius-combustion-chamber-1"].icons,
    localised_description = {"entity-description.nullius-combustion-chamber"},
    flags = {"placeable-neutral", "player-creation"},
    minable = {mining_time = 0.6, result = "nullius-combustion-chamber-1"},
    crafting_categories = { "combustion" },
    crafting_speed = 1,
    max_health = 200,
    corpse = "boiler-remnants",
    vehicle_impact_sound =  { filename = "__base__/sound/car-metal-impact.ogg", volume = 0.65 },
    resistances = {
      { type = "impact", decrease = 100, percent = 90 },
      { type = "fire", decrease = 100, percent = 90 },
      { type = "explosion", decrease = 20, percent = 50 }
    },
    fast_replaceable_group = "combustion-chamber",
    next_upgrade = "nullius-combustion-chamber-2",
    collision_box = {{-1.29, -0.79}, {1.29, 0.79}},
    selection_box = {{-1.5, -1}, {1.5, 1}},
    fluid_boxes = {
      {
        base_area = 2,
        height = 2,
        base_level = -1,
        pipe_covers = pipecoverspictures(),
        pipe_connections = {{type = "input", position = {-2, 0.5}}},
        production_type = "input"
      },
      {
        base_area = 2,
        height = 2,
        base_level = -1,
        pipe_covers = pipecoverspictures(),
        pipe_connections = {{type = "input", position = {2, 0.5}}},
        production_type = "input"
      },
      {
        base_area = 4,
        height = 2,
        base_level = 5,
        pipe_covers = pipecoverspictures(),
        pipe_connections = {{type = "output", position = {0, -1.5}}},
        production_type = "output"
      },
      {
        base_area = 4,
        height = 2,
        base_level = 5,
        pipe_covers = pipecoverspictures(),
        pipe_connections = {{type = "output", position = {0, 1.5}}},
        production_type = "output"
      }
    },
    energy_usage = "1kW",
    energy_source = { type = "void" },
    working_sound = {
      sound = { filename = "__base__/sound/boiler.ogg", volume = 0.8 },
      max_sounds_per_type = 3
    },

    animation = {
      north = {
        frame_count = 1,
        layers = {
          {
            filename = BASEENTITY .. "boiler/boiler-N-idle.png",
            priority = "extra-high",
            width = 131,
            height = 108,
            shift = util.by_pixel(-0.5, 4),
            tint = {0.77, 0.77, 0.66, 1},
            hr_version = {
              filename = BASEENTITY .. "boiler/hr-boiler-N-idle.png",
              priority = "extra-high",
              width = 269,
              height = 221,
              shift = util.by_pixel(-1.25, 5.25),
              tint = {0.77, 0.77, 0.66, 1},
              scale = 0.5
            }
          },
          {
            filename = BASEENTITY .. "boiler/boiler-N-shadow.png",
            priority = "extra-high",
            width = 137,
            height = 82,
            shift = util.by_pixel(20.5, 9),
            draw_as_shadow = true,
            hr_version = {
              filename = BASEENTITY .. "boiler/hr-boiler-N-shadow.png",
              priority = "extra-high",
              width = 274,
              height = 164,
              scale = 0.5,
              shift = util.by_pixel(20.5, 9),
              draw_as_shadow = true
            }
          }
        }
      },
      east = {
        frame_count = 1,
        layers = {
          {
            filename = BASEENTITY .. "boiler/boiler-E-idle.png",
            priority = "extra-high",
            width = 105,
            height = 147,
            shift = util.by_pixel(-3.5, -0.5),
            tint = {0.77, 0.77, 0.66, 1},
            hr_version = {
              filename = BASEENTITY .. "boiler/hr-boiler-E-idle.png",
              priority = "extra-high",
              width = 216,
              height = 301,
              shift = util.by_pixel(-3, 1.25),
              tint = {0.77, 0.77, 0.66, 1},
              scale = 0.5
            }
          },
          {
            filename = BASEENTITY .. "boiler/boiler-E-shadow.png",
            priority = "extra-high",
            width = 92,
            height = 97,
            shift = util.by_pixel(30, 9.5),
            draw_as_shadow = true,
            hr_version = {
              filename = BASEENTITY .. "boiler/hr-boiler-E-shadow.png",
              priority = "extra-high",
              width = 184,
              height = 194,
              scale = 0.5,
              shift = util.by_pixel(30, 9.5),
              draw_as_shadow = true
            }
          }
        }
      },
      south = {
        frame_count = 1,
        layers = {
          {
            filename = BASEENTITY .. "boiler/boiler-S-idle.png",
            priority = "extra-high",
            width = 128,
            height = 95,
            shift = util.by_pixel(3, 12.5),
            tint = {0.77, 0.77, 0.66, 1},
            hr_version = {
              filename = BASEENTITY .. "boiler/hr-boiler-S-idle.png",
              priority = "extra-high",
              width = 260,
              height = 192,
              shift = util.by_pixel(4, 13),
              tint = {0.77, 0.77, 0.66, 1},
              scale = 0.5
            }
          },
          {
            filename = BASEENTITY .. "boiler/boiler-S-shadow.png",
            priority = "extra-high",
            width = 156,
            height = 66,
            shift = util.by_pixel(30, 16),
            draw_as_shadow = true,
            hr_version = {
              filename = BASEENTITY .. "boiler/hr-boiler-S-shadow.png",
              priority = "extra-high",
              width = 311,
              height = 131,
              scale = 0.5,
              shift = util.by_pixel(29.75, 15.75),
              draw_as_shadow = true
            }
          }
        }
      },
      west = {
        frame_count = 1,
        layers = {
          {
            filename = BASEENTITY .. "boiler/boiler-W-idle.png",
            priority = "extra-high",
            width = 96,
            height = 132,
            shift = util.by_pixel(1, 5),
            tint = {0.77, 0.77, 0.66, 1},
            hr_version = {
              filename = BASEENTITY .. "boiler/hr-boiler-W-idle.png",
              priority = "extra-high",
              width = 196,
              height = 273,
              shift = util.by_pixel(1.5, 7.75),
              tint = {0.77, 0.77, 0.66, 1},
              scale = 0.5
            }
          },
          {
            filename = BASEENTITY .. "boiler/boiler-W-shadow.png",
            priority = "extra-high",
            width = 103,
            height = 109,
            shift = util.by_pixel(19.5, 6.5),
            draw_as_shadow = true,
            hr_version = {
              filename = BASEENTITY .. "boiler/hr-boiler-W-shadow.png",
              priority = "extra-high",
              width = 206,
              height = 218,
              scale = 0.5,
              shift = util.by_pixel(19.5, 6.5),
              draw_as_shadow = true
            }
          }
        }
      }
    },

    working_visualisations = {
      {
        north_animation = {
          filename = ENTITYPATH .. "boiler/blue-fire-north.png",
          priority = "extra-high",
          frame_count = 64,
          line_length = 8,
          width = 26,
          height = 26,
          animation_speed = 0.5,
          shift = util.by_pixel(0, -8.5),
          scale = 0.5
        },
        east_animation = {
          filename = ENTITYPATH .. "boiler/blue-fire-east.png",
          priority = "extra-high",
          frame_count = 64,
          line_length = 8,
          width = 28,
          height = 28,
          animation_speed = 0.5,
          shift = util.by_pixel(-9.5, -22),
          scale = 0.5
        },
        south_animation = {
          filename = ENTITYPATH .. "boiler/blue-fire-south.png",
          priority = "extra-high",
          frame_count = 64,
          line_length = 8,
          width = 26,
          height = 16,
          animation_speed = 0.5,
          shift = util.by_pixel(-1, -26.5),
          scale = 0.5
        },
        west_animation = {
          filename = ENTITYPATH .. "boiler/blue-fire-west.png",
          priority = "extra-high",
          frame_count = 64,
          line_length = 8,
          width = 30,
          height = 29,
          animation_speed = 0.5,
          shift = util.by_pixel(13, -23.25),
          scale = 0.5
        }
      },
      {
        north_animation = {
          filename = ENTITYPATH .. "boiler/blue-glow-north.png",
          priority = "extra-high",
          frame_count = 1,
          width = 200,
          height = 173,
          shift = util.by_pixel(-1, -6.75),
          blend_mode = "additive",
          scale = 0.5
        },
        east_animation = {
          filename = ENTITYPATH .. "boiler/blue-glow-east.png",
          priority = "extra-high",
          frame_count = 1,
          width = 139,
          height = 244,
          shift = util.by_pixel(0.25, -13),
          blend_mode = "additive",
          scale = 0.5
        },
        south_animation = {
          filename = ENTITYPATH .. "boiler/blue-glow-south.png",
          priority = "extra-high",
          frame_count = 1,
          width = 200,
          height = 162,
          shift = util.by_pixel(1, 5.5),
          blend_mode = "additive",
          scale = 0.5
        },
        west_animation = {
          filename = ENTITYPATH .. "boiler/blue-glow-west.png",
          priority = "extra-high",
          frame_count = 1,
          width = 136,
          height = 217,
          shift = util.by_pixel(2, -6.25),
          blend_mode = "additive",
          scale = 0.5
        }
      }
    }
  }
})

local mcc1 = util.table.deepcopy(
    data.raw["assembling-machine"]["nullius-combustion-chamber-1"])
mcc1.name = "nullius-mirror-combustion-chamber-1"
mcc1.icons[2] = { icon = ICONPATH .. "flip1.png", icon_size = 64 }
mcc1.placeable_by = {item = "nullius-combustion-chamber-1", count = 1}
mcc1.next_upgrade = "nullius-mirror-combustion-chamber-2"
mcc1.localised_name = {"entity-name.nullius-mirrored",
    {"entity-name.nullius-combustion-chamber-1"}}
mcc1.fluid_boxes[1].pipe_connections[1].position = {2, 0.5}
mcc1.fluid_boxes[2].pipe_connections[1].position = {-2, 0.5}

data:extend({
  mcc1,
  {
    type = "assembling-machine",
    name = "nullius-combustion-chamber-2",
    icons = data.raw.item["nullius-combustion-chamber-2"].icons,
    localised_description = {"entity-description.nullius-combustion-chamber"},
    flags = {"placeable-neutral", "player-creation"},
    minable = {mining_time = 0.9, result = "nullius-combustion-chamber-2"},
    crafting_categories = { "combustion" },
    crafting_speed = 2.5,
    base_productivity = 0.02,
    max_health = 300,
    corpse = "boiler-remnants",
    vehicle_impact_sound =  { filename = "__base__/sound/car-metal-impact.ogg", volume = 0.65 },
    resistances = {
      { type = "impact", decrease = 100, percent = 90 },
      { type = "fire", decrease = 100, percent = 90 },
      { type = "explosion", decrease = 20, percent = 50 }
    },
    fast_replaceable_group = "combustion-chamber",
    next_upgrade = "nullius-combustion-chamber-3",
    collision_box = {{-1.29, -0.79}, {1.29, 0.79}},
    selection_box = {{-1.5, -1}, {1.5, 1}},

    fluid_boxes = {
      {
        base_area = 5,
        height = 2,
        base_level = -2,
        pipe_covers = pipecoverspictures(),
        pipe_connections = {{type = "input", position = {-2, 0.5}}},
        production_type = "input"
      },
      {
        base_area = 5,
        height = 2,
        base_level = -2,
        pipe_covers = pipecoverspictures(),
        pipe_connections = {{type = "input", position = {2, 0.5}}},
        production_type = "input"
      },
      {
        base_area = 5,
        height = 2,
        base_level = 6,
        pipe_covers = pipecoverspictures(),
        pipe_connections = {{type = "output", position = {0, -1.5}}},
        production_type = "output"
      },
      {
        base_area = 5,
        height = 2,
        base_level = 6,
        pipe_covers = pipecoverspictures(),
        pipe_connections = {{type = "output", position = {0, 1.5}}},
        production_type = "output"
      }
    },
    energy_usage = "1kW",
    energy_source = { type = "void" },
    working_sound = data.raw["assembling-machine"]["nullius-combustion-chamber-1"].working_sound,
    working_visualisations = data.raw["assembling-machine"]["nullius-combustion-chamber-1"].working_visualisations,

    animation = {
      north = {
        frame_count = 1,
        layers = {
          {
            filename = BASEENTITY .. "boiler/boiler-N-idle.png",
            priority = "extra-high",
            width = 131,
            height = 108,
            shift = util.by_pixel(-0.5, 4),
            tint = {0.8, 0.8, 1, 1},
            hr_version = {
              filename = BASEENTITY .. "boiler/hr-boiler-N-idle.png",
              priority = "extra-high",
              width = 269,
              height = 221,
              shift = util.by_pixel(-1.25, 5.25),
              tint = {0.8, 0.8, 1, 1},
              scale = 0.5
            }
          },
          {
            filename = BASEENTITY .. "boiler/boiler-N-shadow.png",
            priority = "extra-high",
            width = 137,
            height = 82,
            shift = util.by_pixel(20.5, 9),
            draw_as_shadow = true,
            hr_version = {
              filename = BASEENTITY .. "boiler/hr-boiler-N-shadow.png",
              priority = "extra-high",
              width = 274,
              height = 164,
              scale = 0.5,
              shift = util.by_pixel(20.5, 9),
              draw_as_shadow = true
            }
          }
        }
      },
      east = {
        frame_count = 1,
        layers = {
          {
            filename = BASEENTITY .. "boiler/boiler-E-idle.png",
            priority = "extra-high",
            width = 105,
            height = 147,
            shift = util.by_pixel(-3.5, -0.5),
            tint = {0.8, 0.8, 1, 1},
            hr_version = {
              filename = BASEENTITY .. "boiler/hr-boiler-E-idle.png",
              priority = "extra-high",
              width = 216,
              height = 301,
              shift = util.by_pixel(-3, 1.25),
              tint = {0.8, 0.8, 1, 1},
              scale = 0.5
            }
          },
          {
            filename = BASEENTITY .. "boiler/boiler-E-shadow.png",
            priority = "extra-high",
            width = 92,
            height = 97,
            shift = util.by_pixel(30, 9.5),
            draw_as_shadow = true,
            hr_version = {
              filename = BASEENTITY .. "boiler/hr-boiler-E-shadow.png",
              priority = "extra-high",
              width = 184,
              height = 194,
              scale = 0.5,
              shift = util.by_pixel(30, 9.5),
              draw_as_shadow = true
            }
          }
        }
      },
      south = {
        frame_count = 1,
        layers = {
          {
            filename = BASEENTITY .. "boiler/boiler-S-idle.png",
            priority = "extra-high",
            width = 128,
            height = 95,
            shift = util.by_pixel(3, 12.5),
            tint = {0.8, 0.8, 1, 1},
            hr_version = {
              filename = BASEENTITY .. "boiler/hr-boiler-S-idle.png",
              priority = "extra-high",
              width = 260,
              height = 192,
              shift = util.by_pixel(4, 13),
              tint = {0.8, 0.8, 1, 1},
              scale = 0.5
            }
          },
          {
            filename = BASEENTITY .. "boiler/boiler-S-shadow.png",
            priority = "extra-high",
            width = 156,
            height = 66,
            shift = util.by_pixel(30, 16),
            draw_as_shadow = true,
            hr_version = {
              filename = BASEENTITY .. "boiler/hr-boiler-S-shadow.png",
              priority = "extra-high",
              width = 311,
              height = 131,
              scale = 0.5,
              shift = util.by_pixel(29.75, 15.75),
              draw_as_shadow = true
            }
          }
        }
      },
      west = {
        frame_count = 1,
        layers = {
          {
            filename = BASEENTITY .. "boiler/boiler-W-idle.png",
            priority = "extra-high",
            width = 96,
            height = 132,
            shift = util.by_pixel(1, 5),
            tint = {0.8, 0.8, 1, 1},
            hr_version = {
              filename = BASEENTITY .. "boiler/hr-boiler-W-idle.png",
              priority = "extra-high",
              width = 196,
              height = 273,
              shift = util.by_pixel(1.5, 7.75),
              tint = {0.8, 0.8, 1, 1},
              scale = 0.5
            }
          },
          {
            filename = BASEENTITY .. "boiler/boiler-W-shadow.png",
            priority = "extra-high",
            width = 103,
            height = 109,
            shift = util.by_pixel(19.5, 6.5),
            draw_as_shadow = true,
            hr_version = {
              filename = BASEENTITY .. "boiler/hr-boiler-W-shadow.png",
              priority = "extra-high",
              width = 206,
              height = 218,
              scale = 0.5,
              shift = util.by_pixel(19.5, 6.5),
              draw_as_shadow = true
            }
          }
        }
      }
    }
  }
})

data:extend({
  {
    type = "assembling-machine",
    name = "nullius-mirror-combustion-chamber-2",
	icons = {
	  data.raw.item["nullius-combustion-chamber-2"].icons[1],
	  { icon = ICONPATH .. "flip1.png", icon_size = 64 }
	},
    localised_description = {"entity-description.nullius-combustion-chamber"},
    flags = {"placeable-neutral", "player-creation"},
    minable = {mining_time = 0.9, result = "nullius-combustion-chamber-2"},
	placeable_by = {item = "nullius-combustion-chamber-2", count = 1},
    crafting_categories = { "combustion" },
    crafting_speed = 2.5,
    base_productivity = 0.02,
    max_health = 300,
    corpse = "boiler-remnants",
    vehicle_impact_sound =  { filename = "__base__/sound/car-metal-impact.ogg", volume = 0.65 },
    resistances = data.raw["assembling-machine"]["nullius-combustion-chamber-2"].resistances,
    fast_replaceable_group = "combustion-chamber",
    next_upgrade = "nullius-mirror-combustion-chamber-3",
    collision_box = {{-1.29, -0.79}, {1.29, 0.79}},
    selection_box = {{-1.5, -1}, {1.5, 1}},
    energy_usage = "1kW",
    energy_source = { type = "void" },
    working_sound = data.raw["assembling-machine"]["nullius-combustion-chamber-2"].working_sound,
    working_visualisations = data.raw["assembling-machine"]["nullius-combustion-chamber-2"].working_visualisations,
    animation = data.raw["assembling-machine"]["nullius-combustion-chamber-2"].animation,

    fluid_boxes = {
      {
        base_area = 5,
        height = 2,
        base_level = -2,
        pipe_covers = pipecoverspictures(),
        pipe_connections = {{type = "input", position = {2, 0.5}}},
        production_type = "input"
      },
      {
        base_area = 5,
        height = 2,
        base_level = -2,
        pipe_covers = pipecoverspictures(),
        pipe_connections = {{type = "input", position = {-2, 0.5}}},
        production_type = "input"
      },
      {
        base_area = 5,
        height = 2,
        base_level = 6,
        pipe_covers = pipecoverspictures(),
        pipe_connections = {{type = "output", position = {0, -1.5}}},
        production_type = "output"
      },
      {
        base_area = 5,
        height = 2,
        base_level = 6,
        pipe_covers = pipecoverspictures(),
        pipe_connections = {{type = "output", position = {0, 1.5}}},
        production_type = "output"
      }
    }
  },

  {
    type = "assembling-machine",
    name = "nullius-combustion-chamber-3",
	icons = data.raw.item["nullius-combustion-chamber-3"].icons,
    localised_description = {"entity-description.nullius-combustion-chamber"},
    flags = {"placeable-neutral", "player-creation"},
    minable = {mining_time = 1.2, result = "nullius-combustion-chamber-3"},
    crafting_categories = { "combustion" },
    crafting_speed = 6,
    base_productivity = 0.04,
    max_health = 400,
    corpse = "boiler-remnants",
    vehicle_impact_sound =  { filename = "__base__/sound/car-metal-impact.ogg", volume = 0.65 },
    resistances = data.raw["assembling-machine"]["nullius-combustion-chamber-2"].resistances,
    fast_replaceable_group = "combustion-chamber",
    collision_box = {{-1.29, -0.79}, {1.29, 0.79}},
    selection_box = {{-1.5, -1}, {1.5, 1}},
    fluid_boxes = data.raw["assembling-machine"]["nullius-combustion-chamber-2"].fluid_boxes,
    energy_usage = "1kW",
    energy_source = { type = "void" },
    working_sound = data.raw["assembling-machine"]["nullius-combustion-chamber-2"].working_sound,
    working_visualisations = data.raw["assembling-machine"]["nullius-combustion-chamber-2"].working_visualisations,

    animation = {
      north = {
        frame_count = 1,
        layers = {
          {
            filename = BASEENTITY .. "boiler/boiler-N-idle.png",
            priority = "extra-high",
            width = 131,
            height = 108,
            shift = util.by_pixel(-0.5, 4),
            hr_version = {
              filename = BASEENTITY .. "boiler/hr-boiler-N-idle.png",
              priority = "extra-high",
              width = 269,
              height = 221,
              shift = util.by_pixel(-1.25, 5.25),
              scale = 0.5
            }
          },
          {
            filename = BASEENTITY .. "boiler/boiler-N-shadow.png",
            priority = "extra-high",
            width = 137,
            height = 82,
            shift = util.by_pixel(20.5, 9),
            draw_as_shadow = true,
            hr_version = {
              filename = BASEENTITY .. "boiler/hr-boiler-N-shadow.png",
              priority = "extra-high",
              width = 274,
              height = 164,
              scale = 0.5,
              shift = util.by_pixel(20.5, 9),
              draw_as_shadow = true
            }
          }
        }
      },
      east = {
        frame_count = 1,
        layers = {
          {
            filename = BASEENTITY .. "boiler/boiler-E-idle.png",
            priority = "extra-high",
            width = 105,
            height = 147,
            shift = util.by_pixel(-3.5, -0.5),
            hr_version = {
              filename = BASEENTITY .. "boiler/hr-boiler-E-idle.png",
              priority = "extra-high",
              width = 216,
              height = 301,
              shift = util.by_pixel(-3, 1.25),
              scale = 0.5
            }
          },
          {
            filename = BASEENTITY .. "boiler/boiler-E-shadow.png",
            priority = "extra-high",
            width = 92,
            height = 97,
            shift = util.by_pixel(30, 9.5),
            draw_as_shadow = true,
            hr_version = {
              filename = BASEENTITY .. "boiler/hr-boiler-E-shadow.png",
              priority = "extra-high",
              width = 184,
              height = 194,
              scale = 0.5,
              shift = util.by_pixel(30, 9.5),
              draw_as_shadow = true
            }
          }
        }
      },
      south = {
        frame_count = 1,
        layers = {
          {
            filename = BASEENTITY .. "boiler/boiler-S-idle.png",
            priority = "extra-high",
            width = 128,
            height = 95,
            shift = util.by_pixel(3, 12.5),
            hr_version = {
              filename = BASEENTITY .. "boiler/hr-boiler-S-idle.png",
              priority = "extra-high",
              width = 260,
              height = 192,
              shift = util.by_pixel(4, 13),
              scale = 0.5
            }
          },
          {
            filename = BASEENTITY .. "boiler/boiler-S-shadow.png",
            priority = "extra-high",
            width = 156,
            height = 66,
            shift = util.by_pixel(30, 16),
            draw_as_shadow = true,
            hr_version = {
              filename = BASEENTITY .. "boiler/hr-boiler-S-shadow.png",
              priority = "extra-high",
              width = 311,
              height = 131,
              scale = 0.5,
              shift = util.by_pixel(29.75, 15.75),
              draw_as_shadow = true
            }
          }
        }
      },
      west = {
        frame_count = 1,
        layers = {
          {
            filename = BASEENTITY .. "boiler/boiler-W-idle.png",
            priority = "extra-high",
            width = 96,
            height = 132,
            shift = util.by_pixel(1, 5),
            hr_version = {
              filename = BASEENTITY .. "boiler/hr-boiler-W-idle.png",
              priority = "extra-high",
              width = 196,
              height = 273,
              shift = util.by_pixel(1.5, 7.75),
              scale = 0.5
            }
          },
          {
            filename = BASEENTITY .. "boiler/boiler-W-shadow.png",
            priority = "extra-high",
            width = 103,
            height = 109,
            shift = util.by_pixel(19.5, 6.5),
            draw_as_shadow = true,
            hr_version = {
              filename = BASEENTITY .. "boiler/hr-boiler-W-shadow.png",
              priority = "extra-high",
              width = 206,
              height = 218,
              scale = 0.5,
              shift = util.by_pixel(19.5, 6.5),
              draw_as_shadow = true
            }
          }
        }
      }
    }
  }
})

data:extend({
  {
    type = "assembling-machine",
    name = "nullius-mirror-combustion-chamber-3",
	icons = {
	  data.raw.item["nullius-combustion-chamber-3"].icons[1],
	  { icon = ICONPATH .. "flip1.png", icon_size = 64 }
	},
    localised_description = {"entity-description.nullius-combustion-chamber"},
    flags = {"placeable-neutral", "player-creation"},
    minable = {mining_time = 1.2, result = "nullius-combustion-chamber-3"},
	placeable_by = {item = "nullius-combustion-chamber-3", count = 1},
    crafting_categories = { "combustion" },
    crafting_speed = 6,
    base_productivity = 0.04,
    max_health = 400,
    corpse = "boiler-remnants",
    vehicle_impact_sound =  { filename = "__base__/sound/car-metal-impact.ogg", volume = 0.65 },
    resistances = data.raw["assembling-machine"]["nullius-combustion-chamber-2"].resistances,
    fast_replaceable_group = "combustion-chamber",
    collision_box = {{-1.29, -0.79}, {1.29, 0.79}},
    selection_box = {{-1.5, -1}, {1.5, 1}},
    fluid_boxes = data.raw["assembling-machine"]["nullius-mirror-combustion-chamber-2"].fluid_boxes,
    energy_usage = "1kW",
    energy_source = { type = "void" },
    working_sound = data.raw["assembling-machine"]["nullius-combustion-chamber-2"].working_sound,
    working_visualisations = data.raw["assembling-machine"]["nullius-combustion-chamber-3"].working_visualisations,
    animation = data.raw["assembling-machine"]["nullius-combustion-chamber-3"].animation
  },

  {
    type = "assembling-machine",
    name = "nullius-surge-compressor-1",
	icons = {{
      icon = "__angelsrefining__/graphics/icons/thermal-extractor.png",
      icon_size = 32,
      tint = {0.6, 0.6, 0.4}
    }},
	localised_description = {"entity-description.nullius-surge",
	    {"entity-description.nullius-compressor"}},
    flags = {"placeable-neutral", "player-creation"},
    minable = {mining_time = 0.8, result = "nullius-compressor-1"},
	placeable_by = {item = "nullius-compressor-1", count = 1},
    fast_replaceable_group = "compressor",
    next_upgrade = "nullius-surge-compressor-2",
    max_health = 200,
    corpse = "big-remnants",
    dying_explosion = "medium-explosion",
    collision_box = {{-1.7, -1.7}, {1.7, 1.7}},
    selection_box = {{-2, -2}, {2, 2}},
    crafting_categories = {"compression"},
    crafting_speed = 1,
    energy_source = {
      type = "electric",
      emissions_per_minute = 1,
      drain = "5kW",
      output_flow_limit = "0kW",
      usage_priority = "tertiary",
      render_no_power_icon = false
    },
    energy_usage = "995kW",
    resistances = {
      { type = "impact", decrease = 100, percent = 90 }
    },
    vehicle_impact_sound = {filename = "__base__/sound/car-metal-impact.ogg", volume = 0.65},
    working_sound = data.raw["mining-drill"]["thermal-extractor"].working_sound,
    fluid_boxes = {
      {
        production_type = "input",
        pipe_covers = pipecoverspictures(),
        base_area = 10,
        base_level = -2,
        height = 2,
        pipe_connections = {{ type="input", position = {2.5, 1.5} }}
      },
      {
        production_type = "output",
        pipe_covers = pipecoverspictures(),
        base_level = 8,
		height = 2,
        base_area = 4,
        pipe_connections = {{ type="output", position = {-2.5, -1.5} }}
      }
    },

    animation = {
      north = {
        priority = "high",
        width = 288,
        height = 288,
        line_length = 4,
        filename = "__angelsrefining__/graphics/entity/thermal-extractor/thermal-extractor-animation.png",
        frame_count = 16,
        scale = 0.465,
        animation_speed = 0.5,
        tint = {0.6, 0.6, 0.4}
      },
      east = {
        layers = {
          {
            filename = "__angelsrefining__/graphics/entity/thermal-extractor/thermal-extractor-base.png",
            priority = "high",
            width = 288,
            height = 288,
            repeat_count = 16,
            scale = 0.465,
            animation_speed = 0.5
          },
          {
            filename = "__angelsrefining__/graphics/entity/thermal-extractor/thermal-extractor-base.png",
            priority = "high",
            width = 288,
            height = 288,
            x = 576,
            repeat_count = 16,
            scale = 0.465,
            animation_speed = 0.5
          },
          {
            priority = "high",
            width = 288,
            height = 288,
            line_length = 4,
            filename = "__angelsrefining__/graphics/entity/thermal-extractor/thermal-extractor-animation.png",
            frame_count = 16,
            scale = 0.465,
            animation_speed = 0.5,
            tint = {0.6, 0.6, 0.4}
          }
        }
      },
      south = {
        priority = "high",
        width = 288,
        height = 288,
        line_length = 4,
        filename = "__angelsrefining__/graphics/entity/thermal-extractor/thermal-extractor-animation.png",
        frame_count = 16,
        scale = 0.465,
        animation_speed = 0.5,
        tint = {0.6, 0.6, 0.4}
      },
      west = {
        layers = {
          {
            filename = "__angelsrefining__/graphics/entity/thermal-extractor/thermal-extractor-base.png",
            priority = "high",
            width = 288,
            height = 288,
            repeat_count = 16,
            scale = 0.465,
            animation_speed = 0.5
          },
          {
            filename = "__angelsrefining__/graphics/entity/thermal-extractor/thermal-extractor-base.png",
            priority = "high",
            width = 288,
            height = 288,
            x = 576,
            repeat_count = 16,
            scale = 0.465,
            animation_speed = 0.5
          },
          {
            priority = "high",
            width = 288,
            height = 288,
            line_length = 4,
            filename = "__angelsrefining__/graphics/entity/thermal-extractor/thermal-extractor-animation.png",
            frame_count = 16,
            scale = 0.465,
            animation_speed = 0.5,
            tint = {0.6, 0.6, 0.4}
          }
        }
      }
    }
  }
})

data:extend({
  {
    type = "assembling-machine",
    name = "nullius-priority-compressor-1",
	icons = {{
      icon = "__angelsrefining__/graphics/icons/thermal-extractor.png",
      icon_size = 32,
      tint = {0.6, 0.51, 0.34}
    }},
	localised_description = {"entity-description.nullius-priority",
	    {"entity-description.nullius-compressor"}},
    flags = {"placeable-neutral", "player-creation"},
    minable = {mining_time = 0.8, result = "nullius-compressor-1"},
	placeable_by = {item = "nullius-compressor-1", count = 1},
    fast_replaceable_group = "compressor",
    next_upgrade = "nullius-priority-compressor-2",
    max_health = 200,
    corpse = "big-remnants",
    dying_explosion = "medium-explosion",
    collision_box = {{-1.7, -1.7}, {1.7, 1.7}},
    selection_box = {{-2, -2}, {2, 2}},
    crafting_categories = {"compression"},
    crafting_speed = 0.5,
    energy_source = {
      type = "electric",
      emissions_per_minute = 1,
      drain = "5kW",
      usage_priority = "secondary-input"
    },
    energy_usage = "495kW",
    resistances = data.raw["assembling-machine"]["nullius-surge-compressor-1"].resistances,
    vehicle_impact_sound = {filename = "__base__/sound/car-metal-impact.ogg", volume = 0.65},
    working_sound = data.raw["mining-drill"]["thermal-extractor"].working_sound,
    fluid_boxes = data.raw["assembling-machine"]["nullius-surge-compressor-1"].fluid_boxes,

    animation = {
      north = {
        priority = "high",
        width = 288,
        height = 288,
        line_length = 4,
        filename = "__angelsrefining__/graphics/entity/thermal-extractor/thermal-extractor-animation.png",
        frame_count = 16,
        scale = 0.465,
        animation_speed = 0.5,
        tint = {0.6, 0.51, 0.34}
      },
      east = {
        layers = {
          {
            filename = "__angelsrefining__/graphics/entity/thermal-extractor/thermal-extractor-base.png",
            priority = "high",
            width = 288,
            height = 288,
            repeat_count = 16,
            scale = 0.465,
            animation_speed = 0.5
          },
          {
            filename = "__angelsrefining__/graphics/entity/thermal-extractor/thermal-extractor-base.png",
            priority = "high",
            width = 288,
            height = 288,
            x = 576,
            repeat_count = 16,
            scale = 0.465,
            animation_speed = 0.5
          },
          {
            priority = "high",
            width = 288,
            height = 288,
            line_length = 4,
            filename = "__angelsrefining__/graphics/entity/thermal-extractor/thermal-extractor-animation.png",
            frame_count = 16,
            scale = 0.465,
            animation_speed = 0.5,
            tint = {0.6, 0.51, 0.34}
          }
        }
      },
      south = {
        priority = "high",
        width = 288,
        height = 288,
        line_length = 4,
        filename = "__angelsrefining__/graphics/entity/thermal-extractor/thermal-extractor-animation.png",
        frame_count = 16,
        scale = 0.465,
        animation_speed = 0.5,
        tint = {0.6, 0.51, 0.34}
      },
      west = {
        layers = {
          {
            filename = "__angelsrefining__/graphics/entity/thermal-extractor/thermal-extractor-base.png",
            priority = "high",
            width = 288,
            height = 288,
            repeat_count = 16,
            scale = 0.465,
            animation_speed = 0.5
          },
          {
            filename = "__angelsrefining__/graphics/entity/thermal-extractor/thermal-extractor-base.png",
            priority = "high",
            width = 288,
            height = 288,
            x = 576,
            repeat_count = 16,
            scale = 0.465,
            animation_speed = 0.5
          },
          {
            priority = "high",
            width = 288,
            height = 288,
            line_length = 4,
            filename = "__angelsrefining__/graphics/entity/thermal-extractor/thermal-extractor-animation.png",
            frame_count = 16,
            scale = 0.465,
            animation_speed = 0.5,
            tint = {0.6, 0.51, 0.34}
          }
        }
      }
    }
  },

  {
    type = "assembling-machine",
    name = "nullius-surge-compressor-2",
	icons = {{
      icon = "__angelsrefining__/graphics/icons/thermal-extractor.png",
      icon_size = 32,
      tint = {0.65, 0.65, 0.9}
    }},
	localised_description = {"entity-description.nullius-surge",
	    {"entity-description.nullius-compressor"}},
    flags = {"placeable-neutral", "player-creation"},
    minable = {mining_time = 1.2, result = "nullius-compressor-2"},
	placeable_by = {item = "nullius-compressor-2", count = 1},
    fast_replaceable_group = "compressor",
    next_upgrade = "nullius-surge-compressor-3",
    max_health = 250,
    corpse = "big-remnants",
    dying_explosion = "medium-explosion",
    collision_box = {{-1.7, -1.7}, {1.7, 1.7}},
    selection_box = {{-2, -2}, {2, 2}},
    crafting_categories = {"compression"},
    crafting_speed = 3,
    energy_source = {
      type = "electric",
      emissions_per_minute = 1,
      drain = "15kW",
      output_flow_limit = "0kW",
      usage_priority = "tertiary",
      render_no_power_icon = false
    },
    energy_usage = "2925kW",
    resistances = data.raw["assembling-machine"]["nullius-surge-compressor-1"].resistances,
    vehicle_impact_sound = {filename = "__base__/sound/car-metal-impact.ogg", volume = 0.65},
    working_sound = data.raw["mining-drill"]["thermal-extractor"].working_sound,
    fluid_boxes = {
      {
        production_type = "input",
        pipe_covers = pipecoverspictures(),
        base_area = 15,
        base_level = -3,
        height = 2,
        pipe_connections = {{ type="input", position = {2.5, 1.5} }}
      },
      {
        production_type = "output",
        pipe_covers = pipecoverspictures(),
        base_level = 10,
        height = 3,
        base_area = 5,
        pipe_connections = {{ type="output", position = {-2.5, -1.5} }}
      }
    },

    animation = {
      north = {
        priority = "high",
        width = 288,
        height = 288,
        line_length = 4,
        filename = "__angelsrefining__/graphics/entity/thermal-extractor/thermal-extractor-animation.png",
        frame_count = 16,
        scale = 0.465,
        animation_speed = 0.3,
        tint = {0.65, 0.65, 0.9}
      },
      east = {
        layers = {
          {
            filename = "__angelsrefining__/graphics/entity/thermal-extractor/thermal-extractor-base.png",
            priority = "high",
            width = 288,
            height = 288,
            repeat_count = 16,
            scale = 0.465,
            animation_speed = 0.3
          },
          {
            filename = "__angelsrefining__/graphics/entity/thermal-extractor/thermal-extractor-base.png",
            priority = "high",
            width = 288,
            height = 288,
            x = 576,
            repeat_count = 16,
            scale = 0.465,
            animation_speed = 0.3
          },
          {
            priority = "high",
            width = 288,
            height = 288,
            line_length = 4,
            filename = "__angelsrefining__/graphics/entity/thermal-extractor/thermal-extractor-animation.png",
            frame_count = 16,
            scale = 0.465,
            animation_speed = 0.3,
            tint = {0.65, 0.65, 0.9}
          }
        }
      },
      south = {
        priority = "high",
        width = 288,
        height = 288,
        line_length = 4,
        filename = "__angelsrefining__/graphics/entity/thermal-extractor/thermal-extractor-animation.png",
        frame_count = 16,
        scale = 0.465,
        animation_speed = 0.3,
        tint = {0.65, 0.65, 0.9}
      },
      west = {
        layers = {
          {
            filename = "__angelsrefining__/graphics/entity/thermal-extractor/thermal-extractor-base.png",
            priority = "high",
            width = 288,
            height = 288,
            repeat_count = 16,
            scale = 0.465,
            animation_speed = 0.3
          },
          {
            filename = "__angelsrefining__/graphics/entity/thermal-extractor/thermal-extractor-base.png",
            priority = "high",
            width = 288,
            height = 288,
            x = 576,
            repeat_count = 16,
            scale = 0.465,
            animation_speed = 0.3
          },
          {
            priority = "high",
            width = 288,
            height = 288,
            line_length = 4,
            filename = "__angelsrefining__/graphics/entity/thermal-extractor/thermal-extractor-animation.png",
            frame_count = 16,
            scale = 0.465,
            animation_speed = 0.3,
            tint = {0.65, 0.65, 0.9}
          }
        }
      }
    }
  }
})

data:extend({
  {
    type = "assembling-machine",
    name = "nullius-priority-compressor-2",
	icons = {{
      icon = "__angelsrefining__/graphics/icons/thermal-extractor.png",
      icon_size = 32,
      tint = {0.65, 0.55, 0.76}
    }},
	localised_description = {"entity-description.nullius-priority",
	    {"entity-description.nullius-compressor"}},
    flags = {"placeable-neutral", "player-creation"},
    minable = {mining_time = 1.2, result = "nullius-compressor-2"},
	placeable_by = {item = "nullius-compressor-2", count = 1},
    fast_replaceable_group = "compressor",
    next_upgrade = "nullius-priority-compressor-3",
    max_health = 250,
    corpse = "big-remnants",
    dying_explosion = "medium-explosion",
    collision_box = {{-1.7, -1.7}, {1.7, 1.7}},
    selection_box = {{-2, -2}, {2, 2}},
    crafting_categories = {"compression"},
    crafting_speed = 2,
    energy_source = {
      type = "electric",
      emissions_per_minute = 1,
      drain = "30kW",
      usage_priority = "secondary-input"
    },
    energy_usage = "1930kW",
    resistances = data.raw["assembling-machine"]["nullius-surge-compressor-2"].resistances,
    vehicle_impact_sound = {filename = "__base__/sound/car-metal-impact.ogg", volume = 0.65},
    working_sound = data.raw["mining-drill"]["thermal-extractor"].working_sound,
    fluid_boxes = data.raw["assembling-machine"]["nullius-surge-compressor-2"].fluid_boxes,

    animation = {
      north = {
        priority = "high",
        width = 288,
        height = 288,
        line_length = 4,
        filename = "__angelsrefining__/graphics/entity/thermal-extractor/thermal-extractor-animation.png",
        frame_count = 16,
        scale = 0.465,
        animation_speed = 0.3,
        tint = {0.65, 0.55, 0.76}
      },
      east = {
        layers = {
          data.raw["assembling-machine"]["nullius-surge-compressor-2"].animation.east.layers[1],
          data.raw["assembling-machine"]["nullius-surge-compressor-2"].animation.east.layers[2],
          {
            priority = "high",
            width = 288,
            height = 288,
            line_length = 4,
            filename = "__angelsrefining__/graphics/entity/thermal-extractor/thermal-extractor-animation.png",
            frame_count = 16,
            scale = 0.465,
            animation_speed = 0.3,
            tint = {0.65, 0.55, 0.76}
          }
        }
      },
      south = {
        priority = "high",
        width = 288,
        height = 288,
        line_length = 4,
        filename = "__angelsrefining__/graphics/entity/thermal-extractor/thermal-extractor-animation.png",
        frame_count = 16,
        scale = 0.465,
        animation_speed = 0.3,
        tint = {0.65, 0.55, 0.76}
      },
      west = {
        layers = {
          data.raw["assembling-machine"]["nullius-surge-compressor-2"].animation.west.layers[1],
          data.raw["assembling-machine"]["nullius-surge-compressor-2"].animation.west.layers[2],
          {
            priority = "high",
            width = 288,
            height = 288,
            line_length = 4,
            filename = "__angelsrefining__/graphics/entity/thermal-extractor/thermal-extractor-animation.png",
            frame_count = 16,
            scale = 0.465,
            animation_speed = 0.3,
            tint = {0.65, 0.55, 0.76}
          }
        }
      }
    }
  },

  {
    type = "assembling-machine",
    name = "nullius-surge-compressor-3",
	icons = {{
      icon = "__angelsrefining__/graphics/icons/thermal-extractor.png",
      icon_size = 32
    }},
	localised_description = {"entity-description.nullius-surge",
	    {"entity-description.nullius-compressor"}},
    flags = {"placeable-neutral", "player-creation"},
    minable = {mining_time = 1.6, result = "nullius-compressor-3"},
	placeable_by = {item = "nullius-compressor-3", count = 1},
    fast_replaceable_group = "compressor",
    max_health = 300,
    corpse = "big-remnants",
    dying_explosion = "medium-explosion",
    collision_box = {{-1.7, -1.7}, {1.7, 1.7}},
    selection_box = {{-2, -2}, {2, 2}},
    crafting_categories = {"compression"},
    crafting_speed = 8,
    energy_source = {
      type = "electric",
      emissions_per_minute = 1,
      drain = "25kW",
      output_flow_limit = "0kW",
      usage_priority = "tertiary",
      render_no_power_icon = false
    },
    energy_usage = "7725kW",
    resistances = data.raw["assembling-machine"]["nullius-surge-compressor-1"].resistances,
    vehicle_impact_sound = {filename = "__base__/sound/car-metal-impact.ogg", volume = 0.65},
    working_sound = data.raw["mining-drill"]["thermal-extractor"].working_sound,
    fluid_boxes = {
      {
        production_type = "input",
        pipe_covers = pipecoverspictures(),
        base_area = 20,
        base_level = -4,
        height = 2,
        pipe_connections = {{ type="input", position = {2.5, 1.5} }}
      },
      {
        production_type = "output",
        pipe_covers = pipecoverspictures(),
        base_level = 10,
        height = 3,
        base_area = 8,
        pipe_connections = {{ type="output", position = {-2.5, -1.5} }}
      }
    },

    animation = {
      north = {
        priority = "high",
        width = 288,
        height = 288,
        line_length = 4,
        filename = "__angelsrefining__/graphics/entity/thermal-extractor/thermal-extractor-animation.png",
        frame_count = 16,
        scale = 0.465,
        animation_speed = 0.2
      },
      east = {
        layers = {
          {
            filename = "__angelsrefining__/graphics/entity/thermal-extractor/thermal-extractor-base.png",
            priority = "high",
            width = 288,
            height = 288,
            repeat_count = 16,
            scale = 0.465,
            animation_speed = 0.2
          },
          {
            filename = "__angelsrefining__/graphics/entity/thermal-extractor/thermal-extractor-base.png",
            priority = "high",
            width = 288,
            height = 288,
            x = 576,
            repeat_count = 16,
            scale = 0.465,
            animation_speed = 0.2
          },
          {
            priority = "high",
            width = 288,
            height = 288,
            line_length = 4,
            filename = "__angelsrefining__/graphics/entity/thermal-extractor/thermal-extractor-animation.png",
            frame_count = 16,
            scale = 0.465,
            animation_speed = 0.2
          }
        }
      },
      south = {
        priority = "high",
        width = 288,
        height = 288,
        line_length = 4,
        filename = "__angelsrefining__/graphics/entity/thermal-extractor/thermal-extractor-animation.png",
        frame_count = 16,
        scale = 0.465,
        animation_speed = 0.2
      },
      west = {
        layers = {
          {
            filename = "__angelsrefining__/graphics/entity/thermal-extractor/thermal-extractor-base.png",
            priority = "high",
            width = 288,
            height = 288,
            repeat_count = 16,
            scale = 0.465,
            animation_speed = 0.2
          },
          {
            filename = "__angelsrefining__/graphics/entity/thermal-extractor/thermal-extractor-base.png",
            priority = "high",
            width = 288,
            height = 288,
            x = 576,
            repeat_count = 16,
            scale = 0.465,
            animation_speed = 0.2
          },
          {
            priority = "high",
            width = 288,
            height = 288,
            line_length = 4,
            filename = "__angelsrefining__/graphics/entity/thermal-extractor/thermal-extractor-animation.png",
            frame_count = 16,
            scale = 0.465,
            animation_speed = 0.2
          }
        }
      }
    }
  }
})

data:extend({
  {
    type = "assembling-machine",
    name = "nullius-priority-compressor-3",
	icons = {{
      icon = "__angelsrefining__/graphics/icons/thermal-extractor.png",
      icon_size = 32,
      tint = {1, 0.85, 0.85}
    }},
	localised_description = {"entity-description.nullius-priority",
	    {"entity-description.nullius-compressor"}},
    flags = {"placeable-neutral", "player-creation"},
    minable = {mining_time = 1.6, result = "nullius-compressor-3"},
	placeable_by = {item = "nullius-compressor-3", count = 1},
    fast_replaceable_group = "compressor",
    max_health = 300,
    corpse = "big-remnants",
    dying_explosion = "medium-explosion",
    collision_box = {{-1.7, -1.7}, {1.7, 1.7}},
    selection_box = {{-2, -2}, {2, 2}},
    crafting_categories = {"compression"},
    crafting_speed = 8,
    energy_source = {
      type = "electric",
      emissions_per_minute = 1,
      drain = "100kW",
      usage_priority = "secondary-input"
    },
    energy_usage = "7650kW",
    resistances = data.raw["assembling-machine"]["nullius-surge-compressor-1"].resistances,
    vehicle_impact_sound = {filename = "__base__/sound/car-metal-impact.ogg", volume = 0.65},
    working_sound = data.raw["mining-drill"]["thermal-extractor"].working_sound,
    fluid_boxes = {
      {
        production_type = "input",
        pipe_covers = pipecoverspictures(),
        base_area = 20,
        base_level = -4,
        height = 2,
        pipe_connections = {{ type="input", position = {2.5, 1.5} }}
      },
      {
        production_type = "output",
        pipe_covers = pipecoverspictures(),
        base_level = 10,
        height = 3,
        base_area = 8,
        pipe_connections = {{ type="output", position = {-2.5, -1.5} }}
      }
    },

    animation = {
      north = {
        priority = "high",
        width = 288,
        height = 288,
        line_length = 4,
        filename = "__angelsrefining__/graphics/entity/thermal-extractor/thermal-extractor-animation.png",
        frame_count = 16,
        scale = 0.465,
        animation_speed = 0.2,
        tint = {1, 0.85, 0.85}
      },
      east = {
        layers = {
          data.raw["assembling-machine"]["nullius-surge-compressor-3"].animation.east.layers[1],
          data.raw["assembling-machine"]["nullius-surge-compressor-3"].animation.east.layers[2],
          {
            priority = "high",
            width = 288,
            height = 288,
            line_length = 4,
            filename = "__angelsrefining__/graphics/entity/thermal-extractor/thermal-extractor-animation.png",
            frame_count = 16,
            scale = 0.465,
            animation_speed = 0.2,
            tint = {1, 0.85, 0.85}
          }
        }
      },
      south = {
        priority = "high",
        width = 288,
        height = 288,
        line_length = 4,
        filename = "__angelsrefining__/graphics/entity/thermal-extractor/thermal-extractor-animation.png",
        frame_count = 16,
        scale = 0.465,
        animation_speed = 0.2,
        tint = {1, 0.85, 0.85}
      },
      west = {
        layers = {
          data.raw["assembling-machine"]["nullius-surge-compressor-3"].animation.west.layers[1],
          data.raw["assembling-machine"]["nullius-surge-compressor-3"].animation.west.layers[2],
          {
            priority = "high",
            width = 288,
            height = 288,
            line_length = 4,
            filename = "__angelsrefining__/graphics/entity/thermal-extractor/thermal-extractor-animation.png",
            frame_count = 16,
            scale = 0.465,
            animation_speed = 0.2,
            tint = {1, 0.85, 0.85}
          }
        }
      }
    }
  },

  {
    type = "mining-drill",
    name = "nullius-geothermal-build-1",
    icons = data.raw.item["nullius-geothermal-plant-1"].icons,
    flags = {"placeable-neutral", "player-creation", "hidden", "not-upgradable", "not-deconstructable"},
    minable = { mining_time = 1.8, result = "nullius-geothermal-plant-1" },
    resource_categories = {"basic-fluid"},
    max_health = 500,
    corpse = "big-remnants",
    dying_explosion = "medium-explosion",
    collision_box = {{-2.4, -2.4}, {2.4, 2.4}},
    selection_box = {{-2.5, -2.5}, {2.5, 2.5}},
    resistances = {
      { type = "fire", decrease = 100, percent = 90 },
      { type = "explosion", decrease = 50, percent = 80 },
      { type = "impact", decrease = 50, percent = 80 }
    },
    energy_source = {type = "void"},
    energy_usage = "1kW",
    mining_speed = 1,
    resource_searching_radius = 0.49,
    vector_to_place_result = {0, 0},
    vehicle_impact_sound = data.raw["assembling-machine"]["angels-chemical-furnace"].vehicle_impact_sound,
    working_sound = data.raw["assembling-machine"]["angels-chemical-furnace"].working_sound,
    fast_replaceable_group = "geothermal-plant",
    radius_visualisation_picture = {
      filename = BASEENTITY .. "pumpjack/pumpjack-radius-visualization.png",
      width = 12,
      height = 12
    },
    monitor_visualization_tint = {r=78, g=173, b=255},
    base_render_layer = "lower-object-above-shadow",
    animations = {
      filename = "__angelssmelting__/graphics/entity/chemical-furnace/hr-chemical-furnace-base_01.png",
      width = 332,
      height = 374,
      frame_count = 1,
      tint = {0.5, 0.7, 1},
      shift = util.by_pixel(-1, -11.5),
      scale = 0.5
    }
  },

  {
    type = "mining-drill",
    name = "nullius-geothermal-build-2",
    icons = data.raw.item["nullius-geothermal-plant-2"].icons,
    flags = {"placeable-neutral", "player-creation", "hidden", "not-upgradable", "not-deconstructable"},
    minable = { mining_time = 2.4, result = "nullius-geothermal-plant-2" },
    resource_categories = {"basic-fluid"},
    max_health = 600,
    corpse = "big-remnants",
    dying_explosion = "medium-explosion",
    collision_box = {{-2.4, -2.4}, {2.4, 2.4}},
    selection_box = {{-2.5, -2.5}, {2.5, 2.5}},
    resistances = {
      { type = "fire", decrease = 100, percent = 90 },
      { type = "explosion", decrease = 50, percent = 80 },
      { type = "impact", decrease = 50, percent = 80 }
    },
    energy_source = {type = "void"},
    energy_usage = "2kW",
    mining_speed = 1,
    resource_searching_radius = 0.49,
    vector_to_place_result = {0, 0},
    vehicle_impact_sound = data.raw["assembling-machine"]["angels-chemical-furnace"].vehicle_impact_sound,
    working_sound = data.raw["assembling-machine"]["angels-chemical-furnace"].working_sound,
    fast_replaceable_group = "geothermal-plant",
    radius_visualisation_picture = {
      filename = BASEENTITY .. "pumpjack/pumpjack-radius-visualization.png",
      width = 12,
      height = 12
    },
    monitor_visualization_tint = {r=78, g=173, b=255},
    base_render_layer = "lower-object-above-shadow",
    animations = {
      filename = "__angelssmelting__/graphics/entity/chemical-furnace/hr-chemical-furnace-base_01.png",
      width = 332,
      height = 374,
      frame_count = 1,
      tint = {0.85, 0.75, 1},
      shift = util.by_pixel(-1, -11.5),
      scale = 0.5
    }
  },

  {
    type = "mining-drill",
    name = "nullius-geothermal-build-3",
    icons = data.raw.item["nullius-geothermal-plant-3"].icons,
    flags = {"placeable-neutral", "player-creation", "hidden", "not-upgradable", "not-deconstructable"},
    minable = { mining_time = 3, result = "nullius-geothermal-plant-3" },
    resource_categories = {"basic-fluid"},
    max_health = 750,
    corpse = "big-remnants",
    dying_explosion = "medium-explosion",
    collision_box = {{-2.4, -2.4}, {2.4, 2.4}},
    selection_box = {{-2.5, -2.5}, {2.5, 2.5}},
    resistances = {
      { type = "fire", decrease = 100, percent = 90 },
      { type = "explosion", decrease = 50, percent = 80 },
      { type = "impact", decrease = 50, percent = 80 }
    },
    energy_source = {type = "void"},
    energy_usage = "5kW",
    mining_speed = 1,
    resource_searching_radius = 0.49,
    vector_to_place_result = {0, 0},
    vehicle_impact_sound = data.raw["assembling-machine"]["angels-chemical-furnace"].vehicle_impact_sound,
    working_sound = data.raw["assembling-machine"]["angels-chemical-furnace"].working_sound,
    fast_replaceable_group = "geothermal-plant",
    radius_visualisation_picture = {
      filename = BASEENTITY .. "pumpjack/pumpjack-radius-visualization.png",
      width = 12,
      height = 12
    },
    monitor_visualization_tint = {r=78, g=173, b=255},
    base_render_layer = "lower-object-above-shadow",
    animations = {
      filename = "__angelssmelting__/graphics/entity/chemical-furnace/hr-chemical-furnace-base_01.png",
      width = 332,
      height = 374,
      frame_count = 1,
      shift = util.by_pixel(-1, -11.5),
      scale = 0.5
    }
  },

  {
    type = "reactor",
    name = "nullius-geothermal-reactor-1",
    icons = data.raw.item["nullius-geothermal-plant-1"].icons,
    flags = {"placeable-neutral", "player-creation", "not-blueprintable"},
    minable = { mining_time = 1.8, result = "nullius-geothermal-plant-1" },
    placeable_by = {item = "nullius-geothermal-plant-1", count = 1},
    max_health = 500,
    corpse = "big-remnants",
    dying_explosion = "medium-explosion",
    collision_box = {{-2.4, -2.4}, {2.4, 2.4}},
    selection_box = {{-2.5, -2.5}, {2.5, 2.5}},
    resistances = {
      { type = "fire", decrease = 100, percent = 90 },
      { type = "explosion", decrease = 50, percent = 80 },
      { type = "impact", decrease = 50, percent = 80 }
    },
    energy_source = {type = "void"},
    working_sound = data.raw["assembling-machine"]["angels-chemical-furnace"].working_sound,
    vehicle_impact_sound = data.raw["assembling-machine"]["angels-chemical-furnace"].vehicle_impact_sound,
    fast_replaceable_group = "geothermal-plant",
    next_upgrade = "nullius-geothermal-build-2",
    light = {intensity = 0.4, size = 9.9, shift = {0.0, 0.0}, color = {r = 1.0, g = 0.5, b = 0.0}},
    working_light_picture = {
      filename = "__angelssmelting__/graphics/entity/chemical-furnace/hr-chemical-furnace-base_02.png",
      width = 332,
      height = 374,
      shift = util.by_pixel(-1, -11.5),
      scale = 0.5,
      tint = {0.5, 0.7, 1}
    },
    picture = {
      filename = "__angelssmelting__/graphics/entity/chemical-furnace/hr-chemical-furnace-shadow_01.png",
      width = 448,
      height = 280,
      shift = util.by_pixel(28, 12.5),
      scale = 0.5,
      draw_as_shadow = true
    },
    consumption = "10MW",
    neighbour_bonus = 0,
    heat_buffer = {
      max_temperature = 250,
      specific_heat = "4MJ",
      max_transfer = "30MW",
      minimum_glow_temperature = 150,
      connections =    data.raw.reactor["nuclear-reactor"].heat_buffer.connections
    },
    lower_layer_picture = data.raw.reactor["nuclear-reactor"].lower_layer_picture,
    heat_lower_layer_picture = data.raw.reactor["nuclear-reactor"].heat_lower_layer_picture,
    connection_patches_connected = data.raw.reactor["nuclear-reactor"].connection_patches_connected,
    connection_patches_disconnected = data.raw.reactor["nuclear-reactor"].connection_patches_disconnected,
    heat_connection_patches_connected = data.raw.reactor["nuclear-reactor"].connection_patches_connected,
    heat_connection_patches_disconnected = data.raw.reactor["nuclear-reactor"].connection_patches_connected
  }
})

data:extend({
  {
    type = "reactor",
    name = "nullius-geothermal-reactor-2",
    icons = data.raw.item["nullius-geothermal-plant-2"].icons,
    flags = {"placeable-neutral", "player-creation", "not-blueprintable"},
    minable = { mining_time = 2.4, result = "nullius-geothermal-plant-2" },
    placeable_by = {item = "nullius-geothermal-plant-2", count = 1},
    max_health = 600,
    corpse = "big-remnants",
    dying_explosion = "medium-explosion",
    collision_box = {{-2.4, -2.4}, {2.4, 2.4}},
    selection_box = {{-2.5, -2.5}, {2.5, 2.5}},
    resistances = {
      { type = "fire", decrease = 100, percent = 90 },
      { type = "explosion", decrease = 50, percent = 80 },
      { type = "impact", decrease = 50, percent = 80 }
    },
    energy_source = {type = "void"},
    working_sound = data.raw["assembling-machine"]["angels-chemical-furnace"].working_sound,
    vehicle_impact_sound = data.raw["assembling-machine"]["angels-chemical-furnace"].vehicle_impact_sound,
    fast_replaceable_group = "geothermal-plant",
    next_upgrade = "nullius-geothermal-build-3",
    light = {intensity = 0.4, size = 9.9, shift = {0.0, 0.0}, color = {r = 1.0, g = 0.5, b = 0.0}},
    working_light_picture = {
      filename = "__angelssmelting__/graphics/entity/chemical-furnace/hr-chemical-furnace-base_02.png",
      width = 332,
      height = 374,
      shift = util.by_pixel(-1, -11.5),
      scale = 0.5,
      tint = {0.85, 0.75, 1}
    },
    picture = data.raw.reactor["nullius-geothermal-reactor-1"].picture,
    consumption = "25MW",
    neighbour_bonus = 0,
    heat_buffer = {
      max_temperature = 300,
      specific_heat = "18MJ",
      max_transfer = "100MW",
      minimum_glow_temperature = 200,
      connections =    data.raw.reactor["nuclear-reactor"].heat_buffer.connections
    },
    lower_layer_picture = data.raw.reactor["nuclear-reactor"].lower_layer_picture,
    heat_lower_layer_picture = data.raw.reactor["nuclear-reactor"].heat_lower_layer_picture,
    connection_patches_connected = data.raw.reactor["nuclear-reactor"].connection_patches_connected,
    connection_patches_disconnected = data.raw.reactor["nuclear-reactor"].connection_patches_disconnected,
    heat_connection_patches_connected = data.raw.reactor["nuclear-reactor"].connection_patches_connected,
    heat_connection_patches_disconnected = data.raw.reactor["nuclear-reactor"].connection_patches_connected
  },

  {
    type = "reactor",
    name = "nullius-geothermal-reactor-3",
    icons = data.raw.item["nullius-geothermal-plant-3"].icons,
    flags = {"placeable-neutral", "player-creation", "not-blueprintable"},
    minable = { mining_time = 3, result = "nullius-geothermal-plant-3" },
    placeable_by = {item = "nullius-geothermal-plant-3", count = 1},
    max_health = 750,
    corpse = "big-remnants",
    dying_explosion = "medium-explosion",
    collision_box = {{-2.4, -2.4}, {2.4, 2.4}},
    selection_box = {{-2.5, -2.5}, {2.5, 2.5}},
    resistances = {
      { type = "fire", decrease = 100, percent = 90 },
      { type = "explosion", decrease = 50, percent = 80 },
      { type = "impact", decrease = 50, percent = 80 }
    },
    energy_source = {type = "void"},
    working_sound = data.raw["assembling-machine"]["angels-chemical-furnace"].working_sound,
    vehicle_impact_sound = data.raw["assembling-machine"]["angels-chemical-furnace"].vehicle_impact_sound,
    fast_replaceable_group = "geothermal-plant",
    light = {intensity = 0.4, size = 9.9, shift = {0.0, 0.0}, color = {r = 1.0, g = 0.5, b = 0.0}},
    working_light_picture = {
      filename = "__angelssmelting__/graphics/entity/chemical-furnace/hr-chemical-furnace-base_02.png",
      width = 332,
      height = 374,
      shift = util.by_pixel(-1, -11.5),
      scale = 0.5
    },
    picture = data.raw.reactor["nullius-geothermal-reactor-1"].picture,
    consumption = "60MW",
    neighbour_bonus = 0,
    heat_buffer = {
      max_temperature = 400,
      specific_heat = "80MJ",
      max_transfer = "400MW",
      minimum_glow_temperature = 250,
      connections =    data.raw.reactor["nuclear-reactor"].heat_buffer.connections
    },
    lower_layer_picture = data.raw.reactor["nuclear-reactor"].lower_layer_picture,
    heat_lower_layer_picture = data.raw.reactor["nuclear-reactor"].heat_lower_layer_picture,
    connection_patches_connected = data.raw.reactor["nuclear-reactor"].connection_patches_connected,
    connection_patches_disconnected = data.raw.reactor["nuclear-reactor"].connection_patches_disconnected,
    heat_connection_patches_connected = data.raw.reactor["nuclear-reactor"].connection_patches_connected,
    heat_connection_patches_disconnected = data.raw.reactor["nuclear-reactor"].connection_patches_connected
  }
})


function make_heat_pipe_pictures(path, name_prefix, color, data)
  local all_pictures = {}
  for key, t in pairs(data) do
    if t.empty then
      all_pictures[key] = { priority = "extra-high", filename = "__core__/graphics/empty.png", width = 1, height = 1 }
    else
      local tile_pictures = {}
      for i = 1, (t.variations or 1) do
        local sprite =
        {
          priority = "extra-high",
          filename = path .. name_prefix .. "-" .. (t.name or string.gsub(key, "_", "-")) .. (t.ommit_number and ".png" or ("-" .. tostring(i) .. ".png")),
          width = (t.width or 32),
          height = (t.height or 32),
          shift = t.shift,
          tint = color,
          hr_version =
          {
            priority = "extra-high",
            filename = path .. "hr-" .. name_prefix .. "-" .. (t.name or string.gsub(key, "_", "-")) .. (t.ommit_number and ".png" or ("-" .. tostring(i) .. ".png")),
            width = (t.width or 32) * 2,
            height = (t.height or 32) * 2,
            scale = 0.5,
            shift = t.shift,
            tint = color
          }
        }
        table.insert(tile_pictures, sprite)
      end
      all_pictures[key] = tile_pictures
    end
  end
  return all_pictures
end

data:extend({
  {
    type = "heat-pipe",
    name = "nullius-heat-pipe-1",
    icons = data.raw.item["nullius-heat-pipe-1"].icons,
    flags = {"placeable-neutral", "player-creation"},
    minable = {mining_time = 0.3, result = "nullius-heat-pipe-1"},
    max_health = 100,
    fast_replaceable_group = "heat-pipe",
    next_upgrade = "nullius-heat-pipe-2",
    corpse = "heat-pipe-remnants",
    dying_explosion = "heat-pipe-explosion",
    random_corpse_variation = true,
    resistances = {
      { type = "fire", decrease = 100, percent = 90 },
      { type = "explosion", decrease = 50, percent = 80 },
      { type = "impact", decrease = 50, percent = 80 }
    },
    collision_box = {{-0.3, -0.3}, {0.3, 0.3}},
    selection_box = {{-0.5, -0.5}, {0.5, 0.5}},
    working_sound = data.raw["heat-pipe"]["heat-pipe"].working_sound,
    vehicle_impact_sound = data.raw["heat-pipe"]["heat-pipe"].vehicle_impact_sound,
    damaged_trigger_effect = data.raw["heat-pipe"]["heat-pipe"].damaged_trigger_effect,
    min_temperature_gradient = 4,
    heat_buffer = {
      max_temperature = 250,
      specific_heat = "100kJ",
      max_transfer = "30MW",
      minimum_glow_temperature = 150,
      connections = data.raw["heat-pipe"]["heat-pipe"].heat_buffer.connections,
      heat_glow = data.raw["heat-pipe"]["heat-pipe"].heat_buffer.heat_glow
    },

    connection_sprites = make_heat_pipe_pictures(BASEENTITY .. "heat-pipe/",
        "heat-pipe", {0.5, 0.7, 0.9},
      {
        single = { name = "straight-vertical-single", ommit_number = true },
        straight_vertical = { variations = 6 },
        straight_horizontal = { variations = 6 },
        corner_right_up = { name = "corner-up-right", variations = 6 },
        corner_left_up = { name = "corner-up-left", variations = 6 },
        corner_right_down = { name = "corner-down-right", variations = 6 },
        corner_left_down = { name = "corner-down-left", variations = 6 },
        t_up = {},
        t_down = {},
        t_right = {},
        t_left = {},
        cross = { name = "t" },
        ending_up = {},
        ending_down = {},
        ending_right = {},
        ending_left = {}
      }
    ),

    heat_glow_sprites = make_heat_pipe_pictures(BASEENTITY .. "heat-pipe/",
        "heated", {0.6, 0.6, 0.9},
      {
        single = { empty = true },
        straight_vertical = { variations = 6 },
        straight_horizontal = { variations = 6 },
        corner_right_up = { name = "corner-up-right", variations = 6 },
        corner_left_up = { name = "corner-up-left", variations = 6 },
        corner_right_down = { name = "corner-down-right", variations = 6 },
        corner_left_down = { name = "corner-down-left", variations = 6 },
        t_up = {},
        t_down = {},
        t_right = {},
        t_left = {},
        cross = { name = "t" },
        ending_up = {},
        ending_down = {},
        ending_right = {},
        ending_left = {}
      }
    )
  },

  {
    type = "heat-pipe",
    name = "nullius-heat-pipe-2",
    icons = data.raw.item["nullius-heat-pipe-2"].icons,
    flags = {"placeable-neutral", "player-creation"},
    minable = {mining_time = 0.5, result = "nullius-heat-pipe-2"},
    max_health = 150,
    fast_replaceable_group = "heat-pipe",
    next_upgrade = "nullius-heat-pipe-3",
    corpse = "heat-pipe-remnants",
    dying_explosion = "heat-pipe-explosion",
    random_corpse_variation = true,
    resistances = {
      { type = "fire", decrease = 100, percent = 90 },
      { type = "explosion", decrease = 50, percent = 80 },
      { type = "impact", decrease = 50, percent = 80 }
    },
    collision_box = {{-0.3, -0.3}, {0.3, 0.3}},
    selection_box = {{-0.5, -0.5}, {0.5, 0.5}},
    working_sound = data.raw["heat-pipe"]["heat-pipe"].working_sound,
    vehicle_impact_sound = data.raw["heat-pipe"]["heat-pipe"].vehicle_impact_sound,
    damaged_trigger_effect = data.raw["heat-pipe"]["heat-pipe"].damaged_trigger_effect,
    min_temperature_gradient = 2,
    heat_buffer = {
      max_temperature = 500,
      specific_heat = "250kJ",
      max_transfer = "80MW",
      minimum_glow_temperature = 200,
      connections = data.raw["heat-pipe"]["heat-pipe"].heat_buffer.connections,
      heat_glow = data.raw["heat-pipe"]["heat-pipe"].heat_buffer.heat_glow
    },

    connection_sprites = make_heat_pipe_pictures(BASEENTITY .. "heat-pipe/",
        "heat-pipe", {0.75, 0.85, 0.95},
      {
        single = { name = "straight-vertical-single", ommit_number = true },
        straight_vertical = { variations = 6 },
        straight_horizontal = { variations = 6 },
        corner_right_up = { name = "corner-up-right", variations = 6 },
        corner_left_up = { name = "corner-up-left", variations = 6 },
        corner_right_down = { name = "corner-down-right", variations = 6 },
        corner_left_down = { name = "corner-down-left", variations = 6 },
        t_up = {},
        t_down = {},
        t_right = {},
        t_left = {},
        cross = { name = "t" },
        ending_up = {},
        ending_down = {},
        ending_right = {},
        ending_left = {}
      }
    ),

    heat_glow_sprites = make_heat_pipe_pictures(BASEENTITY .. "heat-pipe/",
        "heated", {0.8, 0.8, 0.95},
      {
        single = { empty = true },
        straight_vertical = { variations = 6 },
        straight_horizontal = { variations = 6 },
        corner_right_up = { name = "corner-up-right", variations = 6 },
        corner_left_up = { name = "corner-up-left", variations = 6 },
        corner_right_down = { name = "corner-down-right", variations = 6 },
        corner_left_down = { name = "corner-down-left", variations = 6 },
        t_up = {},
        t_down = {},
        t_right = {},
        t_left = {},
        cross = { name = "t" },
        ending_up = {},
        ending_down = {},
        ending_right = {},
        ending_left = {}
      }
    )
  },

  {
    type = "heat-pipe",
    name = "nullius-heat-pipe-3",
    icons = data.raw.item["nullius-heat-pipe-3"].icons,
    flags = {"placeable-neutral", "player-creation"},
    minable = {mining_time = 0.7, result = "nullius-heat-pipe-3"},
    max_health = 200,
    fast_replaceable_group = "heat-pipe",
    corpse = "heat-pipe-remnants",
    dying_explosion = "heat-pipe-explosion",
    random_corpse_variation = true,
    resistances = {
      { type = "fire", decrease = 100, percent = 90 },
      { type = "explosion", decrease = 50, percent = 80 },
      { type = "impact", decrease = 50, percent = 80 }
    },
    collision_box = {{-0.3, -0.3}, {0.3, 0.3}},
    selection_box = {{-0.5, -0.5}, {0.5, 0.5}},
    working_sound = data.raw["heat-pipe"]["heat-pipe"].working_sound,
    vehicle_impact_sound = data.raw["heat-pipe"]["heat-pipe"].vehicle_impact_sound,
    damaged_trigger_effect = data.raw["heat-pipe"]["heat-pipe"].damaged_trigger_effect,
    connection_sprites = data.raw["heat-pipe"]["heat-pipe"].connection_sprites,
    heat_glow_sprites = data.raw["heat-pipe"]["heat-pipe"].heat_glow_sprites,
    min_temperature_gradient = 1,
    heat_buffer = {
      max_temperature = 1500,
      specific_heat = "500kJ",
      max_transfer = "200MW",
      minimum_glow_temperature = 250,
      connections = data.raw["heat-pipe"]["heat-pipe"].heat_buffer.connections,
      heat_glow = data.raw["heat-pipe"]["heat-pipe"].heat_buffer.heat_glow
    }
  }
})

if mods["reskins-bobs"] then
data.raw["heat-pipe"]["nullius-heat-pipe-1"].connection_sprites =
    data.raw["heat-pipe"]["heat-pipe"].connection_sprites
data.raw["heat-pipe"]["nullius-heat-pipe-2"].connection_sprites =
    make_heat_pipe_pictures("__reskins-bobs__/graphics/entity/power/heat-pipe/gold-copper/",
      "heat-pipe", nil, {
        single = { name = "straight-vertical-single", ommit_number = true },
        straight_vertical = { variations = 6 },
        straight_horizontal = { variations = 6 },
        corner_right_up = { name = "corner-up-right", variations = 6 },
        corner_left_up = { name = "corner-up-left", variations = 6 },
        corner_right_down = { name = "corner-down-right", variations = 6 },
        corner_left_down = { name = "corner-down-left", variations = 6 },
        t_up = {}, t_down = {}, t_right = {}, t_left = {},
        ending_up = {}, ending_down = {}, ending_right = {}, ending_left = {},
        cross = { name = "t" }
    })
data.raw["heat-pipe"]["nullius-heat-pipe-3"].connection_sprites =
    make_heat_pipe_pictures("__reskins-bobs__/graphics/entity/power/heat-pipe/silver-titanium/",
      "heat-pipe", nil, {
        single = { name = "straight-vertical-single", ommit_number = true },
        straight_vertical = { variations = 6 },
        straight_horizontal = { variations = 6 },
        corner_right_up = { name = "corner-up-right", variations = 6 },
        corner_left_up = { name = "corner-up-left", variations = 6 },
        corner_right_down = { name = "corner-down-right", variations = 6 },
        corner_left_down = { name = "corner-down-left", variations = 6 },
        t_up = {}, t_down = {}, t_right = {}, t_left = {},
        ending_up = {}, ending_down = {}, ending_right = {}, ending_left = {},
        cross = { name = "t" }
    })
end


data:extend({
  {
    type = "reactor",
    name = "nullius-thermal-tank-1",
    localised_name = {"entity-name.nullius-thermal-tank-1"},
    localised_description = {"entity-description.nullius-thermal-tank-1"},
    icons = data.raw.item["nullius-thermal-tank-1"].icons,
    flags = {"placeable-neutral", "player-creation", "hidden", "not-upgradable"},
    minable = { mining_time = 1, result = "nullius-thermal-tank-1" },
    placeable_by = {item = "nullius-thermal-tank-1", count = 1},
    subgroup = "heat-storage",
    order = "ucb",
    max_health = 200,
    collision_box = {{-1.2, -1.2}, {1.2, 1.2}},
    selection_box = {{-1.5, -1.5}, {1.5, 1.5}},
    resistances = {
      { type = "fire", decrease = 60, percent = 90 },
      { type = "impact", decrease = 40, percent = 80 }
    },
    energy_source = {
      type = "electric",
      usage_priority = "tertiary",
      emissions_per_minute = 0.02,
      drain = "0W",
      render_no_power_icon = false,
      render_no_network_icon = false
    },
    consumption = "2kW",
    working_sound = data.raw["assembling-machine"]["angels-chemical-furnace"].working_sound,
    vehicle_impact_sound = data.raw["assembling-machine"]["angels-chemical-furnace"].vehicle_impact_sound,
    light = {intensity = 0.4, size = 2.9, shift = {0.0, 0.0}, color = {r = 1.0, g = 0.5, b = 0.0}},
    picture = {
      layers = {
        {
          filename = ENTITYPATH .. "thermaltank/thermaltank1.png",
          width = 180,
          height = 180,
          scale = 0.73,
          shift = {0.3,-0.3}
        },
        {
          filename = ENTITYPATH .. "thermaltank/thermaltank-shadow.png",
          width = 230,
          height = 180,
          scale = 0.73,
          shift = {0.3,-0.3},
          draw_as_shadow = true,
        },
      }
    },
    working_light_picture = {
      layers = {
        {
          filename = ENTITYPATH .. "thermaltank/thermaltank1.png",
          width = 180,
          height = 180,
          scale = 0.73,
          shift = {0.28,-0.3}
        },
        {
          filename = ENTITYPATH .. "thermaltank/thermaltank-shadow.png",
          width = 230,
          height = 180,
          scale = 0.73,
          shift = {0.28,-0.3},
          draw_as_shadow = true,
        },
      }
    },
    neighbour_bonus = 0,
    heat_buffer = {
      max_temperature = 250,
      specific_heat = "4MJ",
      max_transfer = "25MW",
      minimum_glow_temperature = 120,
      connections = {
        {
          position = {0, 1},
          direction = defines.direction.south
        },
        {
          position = {-1, 0},
          direction = defines.direction.west
        }
      },
      pipe_covers = data.raw.boiler["heat-exchanger"].energy_source.pipe_covers,
      heat_pipe_covers = data.raw.boiler["heat-exchanger"].energy_source.heat_pipe_covers
    }
  },

  {
    type = "reactor",
    name = "nullius-thermal-tank-2",
    localised_name = {"entity-name.nullius-thermal-tank-2"},
    localised_description = {"entity-description.nullius-thermal-tank-2"},
    icons = data.raw.item["nullius-thermal-tank-2"].icons,
    flags = {"placeable-neutral", "player-creation", "hidden", "not-upgradable"},
    minable = { mining_time = 1.5, result = "nullius-thermal-tank-2" },
    placeable_by = {item = "nullius-thermal-tank-2", count = 1},
    subgroup = "heat-storage",
    order = "ucc",
    max_health = 300,
    collision_box = {{-1.2, -1.2}, {1.2, 1.2}},
    selection_box = {{-1.5, -1.5}, {1.5, 1.5}},
    resistances = {
      { type = "fire", decrease = 100, percent = 90 },
      { type = "impact", decrease = 50, percent = 80 }
    },
    energy_source = {
      type = "electric",
      usage_priority = "tertiary",
      emissions_per_minute = 0.02,
      drain = "0W",
      render_no_power_icon = false,
      render_no_network_icon = false
    },
    consumption = "5kW",
    working_sound = data.raw["assembling-machine"]["angels-chemical-furnace"].working_sound,
    vehicle_impact_sound = data.raw["assembling-machine"]["angels-chemical-furnace"].vehicle_impact_sound,
    light = {intensity = 0.4, size = 2.9, shift = {0.0, 0.0}, color = {r = 1.0, g = 0.5, b = 0.0}},
    picture = {
      layers = {
        {
          filename = ENTITYPATH .. "thermaltank/thermaltank2.png",
          width = 180,
          height = 180,
          scale = 0.73,
          shift = {0.3,-0.3}
        },
        {
          filename = ENTITYPATH .. "thermaltank/thermaltank-shadow.png",
          width = 230,
          height = 180,
          scale = 0.73,
          shift = {0.3,-0.3},
          draw_as_shadow = true,
        },
      }
    },
    working_light_picture = {
      layers = {
        {
          filename = ENTITYPATH .. "thermaltank/thermaltank2.png",
          width = 180,
          height = 180,
          scale = 0.73,
          shift = {0.28,-0.3}
        },
        {
          filename = ENTITYPATH .. "thermaltank/thermaltank-shadow.png",
          width = 230,
          height = 180,
          scale = 0.73,
          shift = {0.28,-0.3},
          draw_as_shadow = true,
        },
      }
    },
    neighbour_bonus = 0,
    heat_buffer = {
      max_temperature = 500,
      specific_heat = "8MJ",
      max_transfer = "60MW",
      minimum_glow_temperature = 200,
      connections = {
        {
          position = {0, 1},
          direction = defines.direction.south
        },
        {
          position = {-1, 0},
          direction = defines.direction.west
        }
      },
      pipe_covers = data.raw.boiler["heat-exchanger"].energy_source.pipe_covers,
      heat_pipe_covers = data.raw.boiler["heat-exchanger"].energy_source.heat_pipe_covers
    }
  },

  {
    type = "reactor",
    name = "nullius-thermal-tank-3",
    localised_name = {"entity-name.nullius-thermal-tank-3"},
    localised_description = {"entity-description.nullius-thermal-tank-3"},
    icons = data.raw.item["nullius-thermal-tank-3"].icons,
    flags = {"placeable-neutral", "player-creation", "hidden", "not-upgradable"},
    minable = { mining_time = 2, result = "nullius-thermal-tank-3" },
    placeable_by = {item = "nullius-thermal-tank-3", count = 1},
    subgroup = "heat-storage",
    order = "ucd",
    max_health = 400,
    collision_box = {{-1.2, -1.2}, {1.2, 1.2}},
    selection_box = {{-1.5, -1.5}, {1.5, 1.5}},
    resistances = {
      { type = "fire", decrease = 100, percent = 90 },
      { type = "impact", decrease = 50, percent = 80 }
    },
    energy_source = {
      type = "electric",
      usage_priority = "tertiary",
      emissions_per_minute = 0.02,
      drain = "0W",
      render_no_power_icon = false,
      render_no_network_icon = false
    },
    consumption = "20kW",
    working_sound = data.raw["assembling-machine"]["angels-chemical-furnace"].working_sound,
    vehicle_impact_sound = data.raw["assembling-machine"]["angels-chemical-furnace"].vehicle_impact_sound,
    light = {intensity = 0.4, size = 2.9, shift = {0.0, 0.0}, color = {r = 1.0, g = 0.5, b = 0.0}},
    picture = {
      layers = {
        {
          filename = ENTITYPATH .. "thermaltank/thermaltank3.png",
          width = 180,
          height = 180,
          scale = 0.73,
          shift = {0.3,-0.3}
        },
        {
          filename = ENTITYPATH .. "thermaltank/thermaltank-shadow.png",
          width = 230,
          height = 180,
          scale = 0.73,
          shift = {0.3,-0.3},
          draw_as_shadow = true,
        },
      }
    },
    working_light_picture = {
      layers = {
        {
          filename = ENTITYPATH .. "thermaltank/thermaltank3.png",
          width = 180,
          height = 180,
          scale = 0.73,
          shift = {0.3,-0.3}
        },
        {
          filename = ENTITYPATH .. "thermaltank/thermaltank-shadow.png",
          width = 230,
          height = 180,
          scale = 0.73,
          shift = {0.3,-0.3},
          draw_as_shadow = true,
        },
      }
    },
    neighbour_bonus = 0,
    heat_buffer = {
      max_temperature = 1500,
      specific_heat = "20MJ",
      max_transfer = "200MW",
      minimum_glow_temperature = 250,
      connections = {
        {
          position = {0, 1},
          direction = defines.direction.south
        },
        {
          position = {-1, 0},
          direction = defines.direction.west
        }
      },
      pipe_covers = data.raw.boiler["heat-exchanger"].energy_source.pipe_covers,
      heat_pipe_covers = data.raw.boiler["heat-exchanger"].energy_source.heat_pipe_covers
    }
  }
})


local function thermal_tank(tier, vert)
  local tank = util.table.deepcopy(data.raw["reactor"]["nullius-thermal-tank-"..tier])
  local shft1 = {12, 0}
  local shft2 = {-12, 0}
  local dir = "horizontal"
  local ord = "b"
  if (vert) then
    dir = "vertical"
    ord = "c"
    shft1 = {0, -11}
    shft2 = {0, 10}
    tank.heat_buffer.connections = {
      { position = {0, -1}, direction = defines.direction.north },
      { position = {0, 1}, direction = defines.direction.south }
    }
  else
    tank.heat_buffer.connections = {
      { position = {1, 0}, direction = defines.direction.east },
      { position = {-1, 0}, direction = defines.direction.west }
    }
  end

  tank.icons = {
    {
      icon = ENTICONPATH .. "thermaltank"..tier..".png",
      icon_size = 64
    },
    {
      icon = "__base__/graphics/icons/tooltips/tooltip-category-chemical.png",
      icon_size = 40,
      scale = 0.4,
      tint = {1, 0.8, 0.6},
      shift = shft1
    },
    {
      icon = "__base__/graphics/icons/tooltips/tooltip-category-chemical.png",
      icon_size = 40,
      scale = 0.4,
      tint = {1, 0.8, 0.6},
      shift = shft2
    }
  }

  tank.name = "nullius-thermal-tank-"..dir.."-"..tier
  tank.localised_name = {"entity-name.nullius-"..dir, {"entity-name.nullius-thermal-tank-"..tier}}
  tank.flags = {"placeable-neutral", "player-creation" }
  tank.order = "t"..tier..ord
  tank.fast_replaceable_group = "thermal-tank"
  if (tier < 3) then
    tank.next_upgrade = "nullius-thermal-tank-"..dir.."-"..(tier+1)
  end
  data:extend({ tank })
end

thermal_tank(1, false)
thermal_tank(1, true)
thermal_tank(2, false)
thermal_tank(2, true)
thermal_tank(3, false)
thermal_tank(3, true)


data:extend({
  {
    type = "storage-tank",
    name = "nullius-thermal-tank-build-1",
    localised_name = {"entity-name.nullius-thermal-tank-1"},
    localised_description = {"entity-description.nullius-thermal-tank-1"},
    icons = data.raw.item["nullius-thermal-tank-1"].icons,
    flags = {"placeable-neutral", "player-creation", "not-upgradable", "hidden", "not-deconstructable" },
    minable = { mining_time = 1, result = "nullius-thermal-tank-1" },
    subgroup = "heat-storage",
    order = "ubc",
    max_health = 300,
    collision_box = {{-1.2, -1.2}, {1.2, 1.2}},
    selection_box = {{-1.5, -1.5}, {1.5, 1.5}},
    resistances = {
      { type = "fire", decrease = 100, percent = 90 },
      { type = "impact", decrease = 50, percent = 80 }
    },
    fast_replaceable_group = "thermal-tank",
    two_direction_only = true,
    fluid_box = {
      height = 2,
      base_area = 5,
      pipe_connections = {
        { position = {0, 2} },
        { position = {0, -2} }
      }
    },
    window_bounding_box = {{-0.125, 0.6875}, {0.1875, 1.1875}},
    flow_length_in_ticks = 120,
    pictures = {
      picture = {
        north = {
          layers = {
            {
              filename = ENTITYPATH .. "thermaltank/thermaltank3.png",
              width = 180,
              height = 180,
              scale = 0.73,
              shift = {0.28,-0.3}
            },
            {
              filename = ENTITYPATH .. "thermaltank/thermaltank-shadow.png",
              width = 230,
              height = 180,
              scale = 0.73,
              shift = {0.3,-0.3},
              draw_as_shadow = true,
            },
            {
              filename = BASEENTITY .. "fire-flame/fire-flame-03.png",
              width = 74,
              height = 117,
              shift = {0, -2.25},
              scale = 0.4
            },
            {
              filename = BASEENTITY .. "fire-flame/fire-flame-03.png",
              width = 74,
              height = 117,
              shift = {0, 1.4},
              scale = 0.4
            }
          }
        },
        east = {
          layers = {
            {
              filename = ENTITYPATH .. "thermaltank/thermaltank3.png",
              width = 180,
              height = 180,
              scale = 0.73,
              shift = {0.28,-0.3}
            },
            {
              filename = ENTITYPATH .. "thermaltank/thermaltank-shadow.png",
              width = 230,
              height = 180,
              scale = 0.73,
              shift = {0.3,-0.3},
              draw_as_shadow = true,
            },
            {
              filename = BASEENTITY .. "fire-flame/fire-flame-03.png",
              width = 74,
              height = 117,
              shift = {1.6, -0.5},
              scale = 0.4
            },
            {
              filename = BASEENTITY .. "fire-flame/fire-flame-03.png",
              width = 74,
              height = 117,
              shift = {-1.6, -0.5},
              scale = 0.4
            }
          }
        }
      },
      fluid_background = data.raw["storage-tank"]["storage-tank"].pictures.fluid_background,
      window_background = data.raw["storage-tank"]["storage-tank"].pictures.window_background,
      flow_sprite = data.raw["storage-tank"]["storage-tank"].pictures.flow_sprite,
      gas_flow = data.raw["storage-tank"]["storage-tank"].pictures.gas_flow
    }
  }
})
data.raw["storage-tank"]["nullius-thermal-tank-build-1"].pictures.picture.west =
    data.raw["storage-tank"]["nullius-thermal-tank-build-1"].pictures.picture.east
data.raw["storage-tank"]["nullius-thermal-tank-build-1"].pictures.picture.south =
    data.raw["storage-tank"]["nullius-thermal-tank-build-1"].pictures.picture.north

data:extend({
  {
    type = "storage-tank",
    name = "nullius-thermal-tank-build-2",
    localised_name = {"entity-name.nullius-thermal-tank-2"},
    localised_description = {"entity-description.nullius-thermal-tank-2"},
    icons = data.raw.item["nullius-thermal-tank-2"].icons,
    flags = {"placeable-neutral", "player-creation", "not-upgradable", "hidden", "not-deconstructable" },
    minable = { mining_time = 1, result = "nullius-thermal-tank-2" },
    subgroup = "heat-storage",
    order = "ubc",
    max_health = 300,
    collision_box = {{-1.2, -1.2}, {1.2, 1.2}},
    selection_box = {{-1.5, -1.5}, {1.5, 1.5}},
    resistances = {
      { type = "fire", decrease = 80, percent = 90 },
      { type = "impact", decrease = 50, percent = 80 }
    },
    fast_replaceable_group = "thermal-tank",
    two_direction_only = true,
    fluid_box = {
      height = 2,
      base_area = 20,
      pipe_connections = {
        { position = {0, 2} },
        { position = {0, -2} }
      }
    },
    window_bounding_box = {{-0.125, 0.6875}, {0.1875, 1.1875}},
    flow_length_in_ticks = 120,
    pictures = data.raw["storage-tank"]["nullius-thermal-tank-build-1"].pictures
  },
  {
    type = "storage-tank",
    name = "nullius-thermal-tank-build-3",
    localised_name = {"entity-name.nullius-thermal-tank-3"},
    localised_description = {"entity-description.nullius-thermal-tank-3"},
    icons = data.raw.item["nullius-thermal-tank-3"].icons,
    flags = {"placeable-neutral", "player-creation", "not-upgradable", "hidden", "not-deconstructable"},
    minable = { mining_time = 1, result = "nullius-thermal-tank-3" },
    subgroup = "heat-storage",
    order = "ubd",
    max_health = 400,
    collision_box = {{-1.2, -1.2}, {1.2, 1.2}},
    selection_box = {{-1.5, -1.5}, {1.5, 1.5}},
    resistances = {
      { type = "fire", decrease = 100, percent = 90 },
      { type = "impact", decrease = 60, percent = 80 }
    },
    fast_replaceable_group = "thermal-tank",
    two_direction_only = true,
    fluid_box = {
      height = 2,
      base_area = 150,
      pipe_connections = {
        { position = {0, 2} },
        { position = {0, -2} }
      }
    },
    window_bounding_box = {{-0.125, 0.6875}, {0.1875, 1.1875}},
    flow_length_in_ticks = 120,
    pictures = data.raw["storage-tank"]["nullius-thermal-tank-build-1"].pictures
  },
  {
    type = "electric-energy-interface",
    name = "nullius-stirling-engine-1",
    icons = data.raw.item["nullius-stirling-engine-1"].icons,
    flags = {"placeable-neutral","player-creation"},
    minable = {mining_time = 1.2, result = "nullius-stirling-engine-1"},
    max_health = 400,
    fast_replaceable_group = "stirling-engine",
    next_upgrade = "nullius-stirling-engine-2",
    dying_explosion = "medium-explosion",
    corpse = "steam-engine-remnants",
    dying_explosion = "steam-engine-explosion",
    alert_icon_shift = util.by_pixel(3, -34),
    resistances = {
      { type = "fire", decrease = 100, percent = 90 },
      { type = "explosion", decrease = 50, percent = 80 },
      { type = "impact", decrease = 50, percent = 80 }
    },
    fast_replaceable_group = "stirling-engine",
    collision_box = {{-1.29, -2.39}, {1.29, 2.39}},
    selection_box = {{-1.5, -2.5}, {1.5, 2.5}},
    energy_source = {
      type = "electric",
      usage_priority = "secondary-output",
      buffer_capacity = "8MJ",
      output_flow_limit = "800kW",
      input_flow_limit = "0kW",
      render_no_power_icon = false
    },
    damaged_trigger_effect = data.raw.generator["steam-engine"].damaged_trigger_effect,
    vehicle_impact_sound = data.raw.generator["steam-engine"].vehicle_impact_sound,
    open_sound = data.raw.generator["steam-engine"].open_sound,
    close_sound = data.raw.generator["steam-engine"].close_sound,
    working_sound = data.raw.generator["steam-engine"].working_sound,
    water_reflection = data.raw.generator["steam-engine"].water_reflection,

    render_layer = "lower-object",
    pictures = {
      north = {
        filename = BASEENTITY .. "steam-engine/steam-engine-V.png",
        width = 112,
        height = 195,
        shift = util.by_pixel(5, -6.5),
        scale = 0.95,
        hr_version = {
          filename = BASEENTITY .. "steam-engine/hr-steam-engine-V.png",
          width = 225,
          height = 391,
          shift = util.by_pixel(4.75, -6.25),
          scale = 0.475
        }
      },
      east = {
        filename = BASEENTITY .. "steam-engine/steam-engine-H.png",
        width = 176,
        height = 128,
        shift = util.by_pixel(1, -5),
        scale = 0.95,
        hr_version = {
          filename = BASEENTITY .. "steam-engine/hr-steam-engine-H.png",
          width = 352,
          height = 257,
          shift = util.by_pixel(1, -4.75),
          scale = 0.475
        }
      },
      south = {
        filename = BASEENTITY .. "steam-engine/steam-engine-V.png",
        width = 112,
        height = 195,
        shift = util.by_pixel(5, -6.5),
        scale = 0.97,
        hr_version = {
          filename = BASEENTITY .. "steam-engine/hr-steam-engine-V.png",
          width = 225,
          height = 391,
          shift = util.by_pixel(4.75, -6.25),
          scale = 0.475
        }
      },
      west = {
        filename = BASEENTITY .. "steam-engine/steam-engine-H.png",
        width = 176,
        height = 128,
        shift = util.by_pixel(1, -5),
        scale = 0.95,
        hr_version = {
          filename = BASEENTITY .. "steam-engine/hr-steam-engine-H.png",
          width = 352,
          height = 257,
          shift = util.by_pixel(1, -4.75),
          scale = 0.475
        }
      }
    }
  },

  {
    type = "electric-energy-interface",
    name = "nullius-stirling-engine-2",
    icons = data.raw.item["nullius-stirling-engine-2"].icons,
    flags = {"placeable-neutral","player-creation"},
    minable = {mining_time = 1.5, result = "nullius-stirling-engine-2"},
    max_health = 500,
    fast_replaceable_group = "stirling-engine",
    next_upgrade = "nullius-stirling-engine-3",
    dying_explosion = "medium-explosion",
    corpse = "steam-engine-remnants",
    dying_explosion = "steam-engine-explosion",
    alert_icon_shift = util.by_pixel(3, -34),
    resistances = {
      { type = "fire", decrease = 100, percent = 90 },
      { type = "explosion", decrease = 50, percent = 80 },
      { type = "impact", decrease = 50, percent = 80 }
    },
    fast_replaceable_group = "stirling-engine",
    collision_box = {{-1.29, -2.39}, {1.29, 2.39}},
    selection_box = {{-1.5, -2.5}, {1.5, 2.5}},
    energy_source = {
      type = "electric",
      usage_priority = "secondary-output",
      buffer_capacity = "30MJ",
      output_flow_limit = "2.5MW",
      input_flow_limit = "0kW",
      render_no_power_icon = false
    },
    damaged_trigger_effect = data.raw.generator["steam-engine"].damaged_trigger_effect,
    vehicle_impact_sound = data.raw.generator["steam-engine"].vehicle_impact_sound,
    open_sound = data.raw.generator["steam-engine"].open_sound,
    close_sound = data.raw.generator["steam-engine"].close_sound,
    working_sound = data.raw.generator["steam-engine"].working_sound,
    water_reflection = data.raw.generator["steam-engine"].water_reflection,

    render_layer = "lower-object",
    pictures = {
      north = {
        filename = BASEENTITY .. "steam-engine/steam-engine-V.png",
        width = 112,
        height = 195,
        shift = util.by_pixel(5, -6.5),
        scale = 0.95,
        hr_version = {
          filename = BASEENTITY .. "steam-engine/hr-steam-engine-V.png",
          width = 225,
          height = 391,
          shift = util.by_pixel(4.75, -6.25),
          scale = 0.475
        }
      },
      east = {
        filename = BASEENTITY .. "steam-engine/steam-engine-H.png",
        width = 176,
        height = 128,
        shift = util.by_pixel(1, -5),
        scale = 0.95,
        hr_version = {
          filename = BASEENTITY .. "steam-engine/hr-steam-engine-H.png",
          width = 352,
          height = 257,
          shift = util.by_pixel(1, -4.75),
          scale = 0.475
        }
      },
      south = {
        filename = BASEENTITY .. "steam-engine/steam-engine-V.png",
        width = 112,
        height = 195,
        shift = util.by_pixel(5, -6.5),
        scale = 0.95,
        hr_version = {
          filename = BASEENTITY .. "steam-engine/hr-steam-engine-V.png",
          width = 225,
          height = 391,
          shift = util.by_pixel(4.75, -6.25),
          scale = 0.475
        }
      },
      west = {
        filename = BASEENTITY .. "steam-engine/steam-engine-H.png",
        width = 176,
        height = 128,
        shift = util.by_pixel(1, -5),
        scale = 0.95,
        hr_version = {
          filename = BASEENTITY .. "steam-engine/hr-steam-engine-H.png",
          width = 352,
          height = 257,
          shift = util.by_pixel(1, -4.75),
          scale = 0.475
        }
      }
    }
  },

  {
    type = "electric-energy-interface",
    name = "nullius-stirling-engine-3",
    icons = data.raw.item["nullius-stirling-engine-3"].icons,
    flags = {"placeable-neutral","player-creation"},
    minable = {mining_time = 1.8, result = "nullius-stirling-engine-3"},
    max_health = 600,
    fast_replaceable_group = "stirling-engine",
    dying_explosion = "medium-explosion",
    corpse = "steam-engine-remnants",
    dying_explosion = "steam-engine-explosion",
    alert_icon_shift = util.by_pixel(3, -34),
    resistances = {
      { type = "fire", decrease = 100, percent = 90 },
      { type = "explosion", decrease = 50, percent = 80 },
      { type = "impact", decrease = 50, percent = 80 }
    },
    fast_replaceable_group = "stirling-engine",
    collision_box = {{-1.29, -2.39}, {1.29, 2.39}},
    selection_box = {{-1.5, -2.5}, {1.5, 2.5}},
    energy_source = {
      type = "electric",
      usage_priority = "secondary-output",
      buffer_capacity = "120MJ",
      output_flow_limit = "8MW",
      input_flow_limit = "0kW",
      render_no_power_icon = false
    },
    damaged_trigger_effect = data.raw.generator["steam-engine"].damaged_trigger_effect,
    vehicle_impact_sound = data.raw.generator["steam-engine"].vehicle_impact_sound,
    open_sound = data.raw.generator["steam-engine"].open_sound,
    close_sound = data.raw.generator["steam-engine"].close_sound,
    working_sound = data.raw.generator["steam-engine"].working_sound,
    water_reflection = data.raw.generator["steam-engine"].water_reflection,

    render_layer = "lower-object",
    pictures = {
      north = {
        filename = BASEENTITY .. "steam-engine/steam-engine-V.png",
        width = 112,
        height = 195,
        shift = util.by_pixel(5, -6.5),
        scale = 0.95,
        hr_version = {
          filename = BASEENTITY .. "steam-engine/hr-steam-engine-V.png",
          width = 225,
          height = 391,
          shift = util.by_pixel(4.75, -6.25),
          scale = 0.475
        }
      },
      east = {
        filename = BASEENTITY .. "steam-engine/steam-engine-H.png",
        width = 176,
        height = 128,
        shift = util.by_pixel(1, -5),
        scale = 0.95,
        hr_version = {
          filename = BASEENTITY .. "steam-engine/hr-steam-engine-H.png",
          width = 352,
          height = 257,
          shift = util.by_pixel(1, -4.75),
          scale = 0.475
        }
      },
      south = {
        filename = BASEENTITY .. "steam-engine/steam-engine-V.png",
        width = 112,
        height = 195,
        shift = util.by_pixel(5, -6.5),
        scale = 0.95,
        hr_version = {
          filename = BASEENTITY .. "steam-engine/hr-steam-engine-V.png",
          width = 225,
          height = 391,
          shift = util.by_pixel(4.75, -6.25),
          scale = 0.475
        }
      },
      west = {
        filename = BASEENTITY .. "steam-engine/steam-engine-H.png",
        width = 176,
        height = 128,
        shift = util.by_pixel(1, -5),
        scale = 0.95,
        hr_version = {
          filename = BASEENTITY .. "steam-engine/hr-steam-engine-H.png",
          width = 352,
          height = 257,
          shift = util.by_pixel(1, -4.75),
          scale = 0.475
        }
      }
    }
  }
})

data:extend({
  {
    type = "heat-interface",
    name = "nullius-stirling-vertical-heat-1",
    icons = data.raw.item["nullius-stirling-engine-1"].icons,
    order = "c",
    flags = {"placeable-neutral","player-creation","not-blueprintable"},
    collision_box = {{-0.5, -2.2}, {0.5, 2.2}},
	collision_mask = { },
    selectable_in_game = false,
    gui_mode = "none",
    heat_buffer = {
      max_temperature = 250,
      specific_heat = "250kJ",
      max_transfer = "2.5MW",
      minimum_glow_temperature = 150,
      connections = {
        {
          position = {0, -2},
          direction = defines.direction.north
        },
        {
          position = {0, 2},
          direction = defines.direction.south
        }
      },
      pipe_covers = data.raw.boiler["heat-exchanger"].energy_source.pipe_covers,
      heat_pipe_covers = data.raw.boiler["heat-exchanger"].energy_source.heat_pipe_covers
    }
  },

  {
    type = "heat-interface",
    name = "nullius-stirling-horizontal-heat-1",
    icons = data.raw.item["nullius-stirling-engine-1"].icons,
    order = "c",
    flags = {"placeable-neutral","player-creation","not-blueprintable"},
    collision_box = {{-2.2, -0.5}, {2.2, 0.5}},
	collision_mask = { },
    selectable_in_game = false,
    gui_mode = "none",
    heat_buffer = {
      max_temperature = 250,
      specific_heat = "250kJ",
      max_transfer = "2.5MW",
      minimum_glow_temperature = 150,
      connections = {
        {
          position = {2, 0},
          direction = defines.direction.east
        },
        {
          position = {-2, 0},
          direction = defines.direction.west
        }
      },
      pipe_covers = data.raw.boiler["heat-exchanger"].energy_source.pipe_covers,
      heat_pipe_covers = data.raw.boiler["heat-exchanger"].energy_source.heat_pipe_covers
    }
  },

  {
    type = "heat-interface",
    name = "nullius-stirling-vertical-heat-2",
    icons = data.raw.item["nullius-stirling-engine-2"].icons,
    order = "c",
    flags = {"placeable-neutral","player-creation","not-blueprintable"},
    collision_box = {{-0.5, -2.2}, {0.5, 2.2}},
	collision_mask = { },
    selectable_in_game = false,
    gui_mode = "none",
    heat_buffer = {
      max_temperature = 500,
      specific_heat = "400kJ",
      max_transfer = "10MW",
      minimum_glow_temperature = 200,
      connections = {
        {
          position = {0, -2},
          direction = defines.direction.north
        },
        {
          position = {0, 2},
          direction = defines.direction.south
        }
      },
      pipe_covers = data.raw.boiler["heat-exchanger"].energy_source.pipe_covers,
      heat_pipe_covers = data.raw.boiler["heat-exchanger"].energy_source.heat_pipe_covers
    }
  },

  {
    type = "heat-interface",
    name = "nullius-stirling-horizontal-heat-2",
    icons = data.raw.item["nullius-stirling-engine-2"].icons,
    order = "c",
    flags = {"placeable-neutral","player-creation","not-blueprintable"},
    collision_box = {{-2.2, -0.5}, {2.2, 0.5}},
	collision_mask = { },
    selectable_in_game = false,
    gui_mode = "none",
    heat_buffer = {
      max_temperature = 500,
      specific_heat = "400kJ",
      max_transfer = "10MW",
      minimum_glow_temperature = 200,
      connections = {
        {
          position = {2, 0},
          direction = defines.direction.east
        },
        {
          position = {-2, 0},
          direction = defines.direction.west
        }
      },
      pipe_covers = data.raw.boiler["heat-exchanger"].energy_source.pipe_covers,
      heat_pipe_covers = data.raw.boiler["heat-exchanger"].energy_source.heat_pipe_covers
    }
  },

  {
    type = "heat-interface",
    name = "nullius-stirling-vertical-heat-3",
    icons = data.raw.item["nullius-stirling-engine-3"].icons,
    order = "c",
    flags = {"placeable-neutral","player-creation","not-blueprintable"},
    collision_box = {{-0.5, -2.2}, {0.5, 2.2}},
	collision_mask = { },
    selectable_in_game = false,
    gui_mode = "none",
    heat_buffer = {
      max_temperature = 1500,
      specific_heat = "800kJ",
      max_transfer = "40MW",
      minimum_glow_temperature = 250,
      connections = {
        {
          position = {0, -2},
          direction = defines.direction.north
        },
        {
          position = {0, 2},
          direction = defines.direction.south
        }
      },
      pipe_covers = data.raw.boiler["heat-exchanger"].energy_source.pipe_covers,
      heat_pipe_covers = data.raw.boiler["heat-exchanger"].energy_source.heat_pipe_covers
    }
  },

  {
    type = "heat-interface",
    name = "nullius-stirling-horizontal-heat-3",
    icons = data.raw.item["nullius-stirling-engine-3"].icons,
    order = "c",
    flags = {"placeable-neutral","player-creation","not-blueprintable"},
    collision_box = {{-2.2, -0.5}, {2.2, 0.5}},
	collision_mask = { },
    selectable_in_game = false,
    gui_mode = "none",
    heat_buffer = {
      max_temperature = 1500,
      specific_heat = "800kJ",
      max_transfer = "40MW",
      minimum_glow_temperature = 250,
      connections = {
        {
          position = {2, 0},
          direction = defines.direction.east
        },
        {
          position = {-2, 0},
          direction = defines.direction.west
        }
      },
      pipe_covers = data.raw.boiler["heat-exchanger"].energy_source.pipe_covers,
      heat_pipe_covers = data.raw.boiler["heat-exchanger"].energy_source.heat_pipe_covers
    }
  },

  {
    type = "animation",
    name = "nullius-stirling-horizontal-shadow",
    filename = BASEENTITY .. "steam-engine/steam-engine-H-shadow.png",
    width = 254,
    height = 80,
    frame_count = 32,
    line_length = 8,
    draw_as_shadow = true,
    shift = util.by_pixel(48, 24),
    hr_version = {
      filename = BASEENTITY .. "steam-engine/hr-steam-engine-H-shadow.png",
      width = 508,
      height = 160,
      frame_count = 32,
      line_length = 8,
      draw_as_shadow = true,
      shift = util.by_pixel(48, 24),
      scale = 0.5
    }
  },
  {
    type = "animation",
    name = "nullius-stirling-vertical-shadow",
    filename = BASEENTITY .. "steam-engine/steam-engine-V-shadow.png",
    width = 165,
    height = 153,
    frame_count = 32,
    line_length = 8,
    draw_as_shadow = true,
    shift = util.by_pixel(40.5, 9.5),
    hr_version = {
      filename = BASEENTITY .. "steam-engine/hr-steam-engine-V-shadow.png",
      width = 330,
      height = 307,
      frame_count = 32,
      line_length = 8,
      draw_as_shadow = true,
      shift = util.by_pixel(40.5, 9.25),
      scale = 0.5
    }
  },

  {
    type = "animation",
    name = "nullius-stirling-horizontal-turbine-1",
    layers = {
      {
        filename = BASEENTITY .. "steam-engine/steam-engine-H.png",
        width = 176,
        height = 128,
        frame_count = 32,
        line_length = 8,
        shift = util.by_pixel(1, -5),
        tint = {0.8, 0.8, 0.6},
        hr_version = {
          filename = BASEENTITY .. "steam-engine/hr-steam-engine-H.png",
          width = 352,
          height = 257,
          frame_count = 32,
          line_length = 8,
          shift = util.by_pixel(1, -4.75),
          tint = {0.8, 0.8, 0.6},
          scale = 0.5
        }
      },
      {
        type = "animation",
        name = "nullius-stirling-horizontal-shadow",
        filename = BASEENTITY .. "steam-engine/steam-engine-H-shadow.png",
        width = 254,
        height = 80,
        frame_count = 32,
        line_length = 8,
        draw_as_shadow = true,
        shift = util.by_pixel(48, 24),
        hr_version = {
          filename = BASEENTITY .. "steam-engine/hr-steam-engine-H-shadow.png",
          width = 508,
          height = 160,
          frame_count = 32,
          line_length = 8,
          draw_as_shadow = true,
          shift = util.by_pixel(48, 24),
          scale = 0.5
        }
      }
    }
  },
  {
    type = "animation",
    name = "nullius-stirling-vertical-turbine-1",
    layers = {
      {
        filename = BASEENTITY .. "steam-engine/steam-engine-V.png",
        width = 112,
        height = 195,
        frame_count = 32,
        line_length = 8,
        shift = util.by_pixel(5, -6.5),
        tint = {0.8, 0.8, 0.6},
        hr_version = {
          filename = BASEENTITY .. "steam-engine/hr-steam-engine-V.png",
          width = 225,
          height = 391,
          frame_count = 32,
          line_length = 8,
          shift = util.by_pixel(4.75, -6.25),
          tint = {0.8, 0.8, 0.6},
          scale = 0.5
        }
      },
      {
        filename = BASEENTITY .. "steam-engine/steam-engine-V-shadow.png",
        width = 165,
        height = 153,
        frame_count = 32,
        line_length = 8,
        draw_as_shadow = true,
        shift = util.by_pixel(40.5, 9.5),
        hr_version = {
          filename = BASEENTITY .. "steam-engine/hr-steam-engine-V-shadow.png",
          width = 330,
          height = 307,
          frame_count = 32,
          line_length = 8,
          draw_as_shadow = true,
          shift = util.by_pixel(40.5, 9.25),
          scale = 0.5
        }
      },
      {
        filename = BASEENTITY .. "pipe-covers/hr-pipe-cover-south.png",
        width = 128,
        height = 128,
        scale = 0.5,
		frame_count = 1,
		repeat_count = 32,
		shift = {0, 2.96}
      },
      {
        filename = BASEENTITY .. "heat-pipe/hr-heat-pipe-ending-down-1.png",
        width = 64,
        height = 27,
        scale = 0.5,
		frame_count = 1,
		repeat_count = 32,
		shift = {0, 2.56}
      }
    }
  }
})

if mods["reskins-bobs"] then
data.raw["animation"]["nullius-stirling-horizontal-turbine-1"].layers = {
  data.raw["animation"]["nullius-stirling-horizontal-turbine-1"].layers[1],
  {
    filename = "__reskins-bobs__/graphics/entity/power/steam-engine/steam-engine-H-mask.png",
    width = 176,
    height = 128,
    frame_count = 32,
    line_length = 8,
    shift = util.by_pixel(1, -5),
    tint = tiercolor("yellow"),
    hr_version = {
      filename = "__reskins-bobs__/graphics/entity/power/steam-engine/hr-steam-engine-H-mask.png",
      width = 352,
      height = 257,
      frame_count = 32,
      line_length = 8,
      shift = util.by_pixel(1, -4.75),
      tint = tiercolor("yellow"),
      scale = 0.5
    }
  },
  {
    filename = "__reskins-bobs__/graphics/entity/power/steam-engine/steam-engine-H-highlights.png",
    width = 176,
    height = 128,
    frame_count = 32,
    line_length = 8,
    shift = util.by_pixel(1, -5),
    blend_mode = "additive",
    hr_version = {
      filename = "__reskins-bobs__/graphics/entity/power/steam-engine/hr-steam-engine-H-highlights.png",
      width = 352,
      height = 257,
      frame_count = 32,
      line_length = 8,
      shift = util.by_pixel(1, -4.75),
      blend_mode = "additive",
      scale = 0.5
    }
  },
  data.raw["animation"]["nullius-stirling-horizontal-turbine-1"].layers[2]
}
data.raw["animation"]["nullius-stirling-vertical-turbine-1"].layers = {
  data.raw["animation"]["nullius-stirling-vertical-turbine-1"].layers[1],
  {
    filename = "__reskins-bobs__/graphics/entity/power/steam-engine/steam-engine-V-mask.png",
    width = 112,
    height = 195,
    frame_count = 32,
    line_length = 8,
    shift = util.by_pixel(5, -6.5),
    tint = tiercolor("yellow"),
    hr_version = {
      filename = "__reskins-bobs__/graphics/entity/power/steam-engine/hr-steam-engine-V-mask.png",
      width = 225,
      height = 391,
      frame_count = 32,
      line_length = 8,
      shift = util.by_pixel(4.75, -6.25),
      tint = tiercolor("yellow"),
      scale = 0.5
    }
  },
  {
    filename = "__reskins-bobs__/graphics/entity/power/steam-engine/steam-engine-V-highlights.png",
    width = 112,
    height = 195,
    frame_count = 32,
    line_length = 8,
    shift = util.by_pixel(5, -6.5),
    blend_mode = "additive",
    hr_version = {
      filename = "__reskins-bobs__/graphics/entity/power/steam-engine/hr-steam-engine-V-highlights.png",
      width = 225,
      height = 391,
      frame_count = 32,
      line_length = 8,
      shift = util.by_pixel(4.75, -6.25),
      blend_mode = "additive",
      scale = 0.5
    }
  },
  data.raw["animation"]["nullius-stirling-vertical-turbine-1"].layers[2]
}
data.raw["animation"]["nullius-stirling-horizontal-turbine-1"].layers[1].tint = nil
data.raw["animation"]["nullius-stirling-horizontal-turbine-1"].layers[1].hr_version.tint = nil
data.raw["animation"]["nullius-stirling-vertical-turbine-1"].layers[1].tint = nil
data.raw["animation"]["nullius-stirling-vertical-turbine-1"].layers[1].hr_version.tint = nil
end

local stirling2h = util.table.deepcopy(data.raw["animation"]["nullius-stirling-horizontal-turbine-1"])
local stirling2v = util.table.deepcopy(data.raw["animation"]["nullius-stirling-vertical-turbine-1"])
local stirling3h = util.table.deepcopy(data.raw["animation"]["nullius-stirling-horizontal-turbine-1"])
local stirling3v = util.table.deepcopy(data.raw["animation"]["nullius-stirling-vertical-turbine-1"])
stirling2h.name = "nullius-stirling-horizontal-turbine-2"
stirling2v.name = "nullius-stirling-vertical-turbine-2"
stirling3h.name = "nullius-stirling-horizontal-turbine-3"
stirling3v.name = "nullius-stirling-vertical-turbine-3"

if mods["reskins-bobs"] then
stirling2h.layers[2].tint = tiercolor("orange")
stirling2h.layers[2].hr_version.tint = tiercolor("orange")
stirling2v.layers[2].tint = tiercolor("orange")
stirling2v.layers[2].hr_version.tint = tiercolor("orange")
stirling3h.layers[2].tint = tiercolor("red")
stirling3h.layers[2].hr_version.tint = tiercolor("red")
stirling3v.layers[2].tint = tiercolor("red")
stirling3v.layers[2].hr_version.tint = tiercolor("red")
else
stirling2h.layers[1].tint = {0.75, 0.75, 0.95}
stirling2h.layers[1].hr_version.tint = {0.75, 0.75, 0.95}
stirling2v.layers[1].tint = {0.75, 0.75, 0.95}
stirling2v.layers[1].hr_version.tint = {0.75, 0.75, 0.95}
stirling3h.layers[1].tint = nil
stirling3h.layers[1].hr_version.tint = nil
stirling3v.layers[1].tint = nil
stirling3v.layers[1].hr_version.tint = nil
end

data:extend({
  stirling2h,
  stirling2v,
  stirling3h,
  stirling3v,

  {
    type = "reactor",
    name = "nullius-reactor",
    icon  = "__base__/graphics/icons/nuclear-reactor.png",
    icon_size = 64,
    icon_mipmaps = 4,
    flags = {"placeable-neutral", "player-creation"},
    minable = {mining_time = 4, result = "nullius-reactor"},
    max_health = 500,
    corpse = "nuclear-reactor-remnants",
    dying_explosion = "nuclear-reactor-explosion",
    consumption = "50MW",
    neighbour_bonus = 0.5,
    collision_box = {{-2.2, -2.2}, {2.2, 2.2}},
    selection_box = {{-2.5, -2.5}, {2.5, 2.5}},
    damaged_trigger_effect = data.raw.reactor["nuclear-reactor"].damaged_trigger_effect,
    lower_layer_picture = data.raw.reactor["nuclear-reactor"].lower_layer_picture,
    heat_lower_layer_picture = data.raw.reactor["nuclear-reactor"].heat_lower_layer_picture,
    picture = data.raw.reactor["nuclear-reactor"].picture,
    light = {intensity = 0.8, size = 9.9, shift = {0.0, 0.0}},
	use_fuel_glow_color = true,
    working_light_picture = {
        filename = ENTITYPATH.."reactor/reactor-lights.png",
        blend_mode = "additive",
        draw_as_glow = true,
        width = 320,
        height = 320,
        scale = 0.5,
        shift = { -0.03125, -0.1875 }
    },
    energy_source = {
      type = "burner",
      fuel_category = "nullius-nuclear",
      effectivity = 1,
      fuel_inventory_size = 1,
      burnt_inventory_size = 1
    },
    heat_buffer = {
      max_temperature = 1500,
      specific_heat = "10MJ",
      max_transfer = "500MW",
      minimum_glow_temperature = 400,
      connections = data.raw.reactor["nuclear-reactor"].heat_buffer.connections,
      heat_picture = data.raw.reactor["nuclear-reactor"].heat_buffer.heat_picture,
      heat_glow = data.raw.reactor["nuclear-reactor"].heat_buffer.heat_glow
    },
    connection_patches_connected = data.raw.reactor["nuclear-reactor"].connection_patches_connected,
    connection_patches_disconnected = data.raw.reactor["nuclear-reactor"].connection_patches_disconnected,
    heat_connection_patches_connected = data.raw.reactor["nuclear-reactor"].heat_connection_patches_connected,
    heat_connection_patches_disconnected = data.raw.reactor["nuclear-reactor"].heat_connection_patches_disconnected,
    vehicle_impact_sound = data.raw.reactor["nuclear-reactor"].vehicle_impact_sound,
    open_sound = data.raw.reactor["nuclear-reactor"].open_sound,
    close_sound = data.raw.reactor["nuclear-reactor"].close_sound,
    working_sound = data.raw.reactor["nuclear-reactor"].working_sound,
    meltdown_action = data.raw.reactor["nuclear-reactor"].meltdown_action
  },

  {
    type = "reactor",
    name = "nullius-solar-collector-1",
    localised_name = {"", {"entity-name.nullius-solar-collector"}, " ", 1},
    icons = data.raw.item["nullius-solar-collector-1"].icons,
    flags = {"placeable-neutral","player-creation"},
    minable = {mining_time = 1.2, result = "nullius-solar-collector-1"},
    fast_replaceable_group = "solar-collector",
    next_upgrade = "nullius-solar-collector-2",
    max_health = 250,
    corpse = "solar-panel-remnants",
    consumption = "150W",
    energy_source = { type = "void" },
    neighbour_bonus = 0.1,
    neighbour_collision_increase = 0.1,
    resistances = {
      { type = "fire", decrease = 25, percent = 60 },
      { type = "impact", decrease = 50, percent = 80 },
      { type = "laser", decrease = 50, percent = 80 }
    },
    collision_box = {{-2.25, -1.6}, {2.25, 1.6}},
    selection_box = {{-2.5, -2}, {2.5, 2}},
    heat_buffer = {
      max_temperature = 250,
      specific_heat = "150kJ",
      max_transfer = "3MW",
      minimum_glow_temperature = 150,
      connections = {
        {
          position = {2, 0.5},
          direction = defines.direction.east
        },
        {
          position = {-2, 0.5},
          direction = defines.direction.west
        }
      },
      pipe_covers = data.raw.boiler["heat-exchanger"].energy_source.pipe_covers,
      heat_pipe_covers = data.raw.boiler["heat-exchanger"].energy_source.heat_pipe_covers
    },
    picture = {
      layers = {
        {
          filename = ENTITYPATH .. "collector/collector1.png",
          width = 220,
          height = 140,
          scale = 0.9,
          shift = {0, -0.25}
        },
        {
          filename = ENTITYPATH .. "collector/collectorpipe.png",
          width = 320,
          height = 32,
          scale = 0.5,
          shift = {0, 0.5}
        }
      }
    },
    working_light_picture = {
      layers = {
        {
          filename = ENTITYPATH .. "collector/collector1.png",
          width = 220,
          height = 140,
          scale = 0.9,
          shift = {0, -0.25}
        },
        {
          filename = ENTITYPATH .. "collector/collectorpipe.png",
          width = 320,
          height = 32,
          scale = 0.5,
          shift = {0, 0.5}
        }
      }
    }
  },

  {
    type = "reactor",
    name = "nullius-solar-collector-2",
    localised_name = {"", {"entity-name.nullius-solar-collector"}, " ", 2},
    icons = data.raw.item["nullius-solar-collector-2"].icons,
    flags = {"placeable-neutral","player-creation"},
    minable = {mining_time = 1.8, result = "nullius-solar-collector-2"},
    fast_replaceable_group = "solar-collector",
    next_upgrade = "nullius-solar-collector-3",
    max_health = 300,
    corpse = "solar-panel-remnants",
    consumption = "300W",
    energy_source = { type = "void" },
    neighbour_bonus = 0.1,
    neighbour_collision_increase = 0.1,
    resistances = {
      { type = "fire", decrease = 25, percent = 60 },
      { type = "impact", decrease = 50, percent = 80 },
      { type = "laser", decrease = 50, percent = 80 }
    },
    collision_box = {{-2.25, -1.6}, {2.25, 1.6}},
    selection_box = {{-2.5, -2}, {2.5, 2}},
    heat_buffer = {
      max_temperature = 300,
      specific_heat = "350kJ",
      max_transfer = "8MW",
      minimum_glow_temperature = 175,
      connections = {
        {
          position = {2, 0.5},
          direction = defines.direction.east
        },
        {
          position = {-2, 0.5},
          direction = defines.direction.west
        }
      },
      pipe_covers = data.raw.boiler["heat-exchanger"].energy_source.pipe_covers,
      heat_pipe_covers = data.raw.boiler["heat-exchanger"].energy_source.heat_pipe_covers
    },
    picture = {
      layers = {
        {
          filename = ENTITYPATH .. "collector/collector2.png",
          width = 220,
          height = 140,
          scale = 0.9,
          shift = {0, -0.25}
        },
        {
          filename = ENTITYPATH .. "collector/collectorpipe.png",
          width = 320,
          height = 32,
          scale = 0.5,
          shift = {0, 0.5}
        }
      }
    },
    working_light_picture = {
      layers = {
        {
          filename = ENTITYPATH .. "collector/collector2.png",
          width = 220,
          height = 140,
          scale = 0.9,
          shift = {0, -0.25}
        },
        {
          filename = ENTITYPATH .. "collector/collectorpipe.png",
          width = 320,
          height = 32,
          scale = 0.5,
          shift = {0, 0.5}
        }
      }
    }
  },

  {
    type = "reactor",
    name = "nullius-solar-collector-3",
    localised_name = {"", {"entity-name.nullius-solar-collector"}, " ", 3},
    icons = data.raw.item["nullius-solar-collector-3"].icons,
    flags = {"placeable-neutral","player-creation"},
    minable = {mining_time = 2.4, result = "nullius-solar-collector-3"},
    fast_replaceable_group = "solar-collector",
    max_health = 400,
    corpse = "solar-panel-remnants",
    consumption = "600W",
    energy_source = { type = "void" },
    neighbour_bonus = 0.1,
    neighbour_collision_increase = 0.1,
    resistances = {
      { type = "fire", decrease = 25, percent = 60 },
      { type = "impact", decrease = 50, percent = 80 },
      { type = "laser", decrease = 50, percent = 80 }
    },
    collision_box = {{-2.25, -1.6}, {2.25, 1.6}},
    selection_box = {{-2.5, -2}, {2.5, 2}},
    heat_buffer = {
      max_temperature = 400,
      specific_heat = "800kJ",
      max_transfer = "20MW",
      minimum_glow_temperature = 200,
      connections = {
        {
          position = {2, 0.5},
          direction = defines.direction.east
        },
        {
          position = {-2, 0.5},
          direction = defines.direction.west
        }
      },
      pipe_covers = data.raw.boiler["heat-exchanger"].energy_source.pipe_covers,
      heat_pipe_covers = data.raw.boiler["heat-exchanger"].energy_source.heat_pipe_covers
    },
    picture = {
      layers = {
        {
          filename = ENTITYPATH .. "collector/collector3.png",
          width = 220,
          height = 140,
          scale = 0.9,
          shift = {0, -0.25}
        },
        {
          filename = ENTITYPATH .. "collector/collectorpipe.png",
          width = 320,
          height = 32,
          scale = 0.5,
          shift = {0, 0.5}
        }
      }
    },
    working_light_picture = {
      layers = {
        {
          filename = ENTITYPATH .. "collector/collector3.png",
          width = 220,
          height = 140,
          scale = 0.9,
          shift = {0, -0.25}
        },
        {
          filename = ENTITYPATH .. "collector/collectorpipe.png",
          width = 320,
          height = 32,
          scale = 0.5,
          shift = {0, 0.5}
        }
      }
    }
  },
  {
    type = "assembling-machine",
    name = "nullius-heat-exchanger-1",
    localised_name = {"", {"entity-name.heat-exchanger"}, " ", 1},
    localised_description = {"entity-description.heat-exchanger"},
    icons = data.raw.item["nullius-heat-exchanger-1"].icons,
    minable = {mining_time = 0.6, result = "nullius-heat-exchanger-1"},
    flags = {"placeable-neutral", "player-creation"},
    crafting_categories = { "boiling" },
    crafting_speed = 1,
    max_health = 200,
    resistances = data.raw["assembling-machine"]["nullius-combustion-chamber-1"].resistances,
    fast_replaceable_group = "heat-exchanger",
	next_upgrade = "nullius-heat-exchanger-2",
    collision_box = {{-1.29, -0.79}, {1.29, 0.79}},
    selection_box = {{-1.5, -1}, {1.5, 1}},
    fluid_boxes = {
      {
        base_area = 5,
        height = 2,
        base_level = -2,
        pipe_covers = pipecoverspictures(),
        pipe_connections = {{type = "input", position = {-2, 0.5}}},
        production_type = "input"
      },
      {
        base_area = 8,
        height = 2,
        base_level = 8,
        pipe_covers = pipecoverspictures(),
        pipe_connections = {{type = "output", position = {0, -1.5}}},
        production_type = "output"
      },
      {
        base_area = 8,
        height = 2,
        base_level = 8,
        pipe_covers = pipecoverspictures(),
        pipe_connections = {{type = "output", position = {2, 0.5}}},
        production_type = "output"
      }
    },
    energy_source = {
      type = "heat",
      max_temperature = 250,
      specific_heat = "800kJ",
      max_transfer = "6MW",
      min_working_temperature = 165,
      connections = {{
        position = {0, 0.5},
        direction = defines.direction.south
      }},
      pipe_covers = data.raw.boiler["heat-exchanger"].energy_source.pipe_covers,
      heat_pipe_covers = data.raw.boiler["heat-exchanger"].energy_source.heat_pipe_covers,
      heat_picture = data.raw.boiler["heat-exchanger"].energy_source.heat_picture
    },
    energy_usage = "1.8MW",
    animation = util.table.deepcopy(data.raw.boiler["heat-exchanger"].structure),
    corpse = data.raw.boiler["heat-exchanger"].corpse,
    vehicle_impact_sound = data.raw.boiler["heat-exchanger"].vehicle_impact_sound,
    working_sound = data.raw.boiler["heat-exchanger"].working_sound
  }
})

local ex1 = data.raw["assembling-machine"]["nullius-heat-exchanger-1"]
local ex1m = util.table.deepcopy(ex1)
local boil = util.table.deepcopy(ex1)
ex1m.name = "nullius-mirror-heat-exchanger-1"
ex1m.localised_name = {"entity-name.nullius-mirrored",
    {"", {"entity-name.heat-exchanger"}, " ", 1}}
ex1m.fluid_boxes[1].pipe_connections[1].position = {2, 0.5}
ex1m.fluid_boxes[3].pipe_connections[1].position = {-2, 0.5}
ex1m.icons[2] = { icon = ICONPATH .. "flip1.png", icon_size = 64 }
ex1m.placeable_by = {item = "nullius-heat-exchanger-1", count = 1}
ex1m.next_upgrade = "nullius-mirror-heat-exchanger-2"
local ex2 = util.table.deepcopy(ex1)
ex2.name = "nullius-heat-exchanger-2"
ex2.localised_name = {"", {"entity-name.heat-exchanger"}, " ", 2}
ex2.icons = data.raw.item["nullius-heat-exchanger-2"].icons
ex2.minable = {mining_time = 0.8, result = "nullius-heat-exchanger-2"}
ex2.next_upgrade = "nullius-heat-exchanger-3"
ex2.crafting_speed = 5
ex2.max_health = 300
ex2.energy_source.max_temperature = 400
ex2.energy_source.specific_heat = "5MJ"
ex2.energy_source.max_transfer = "40MW"
ex2.energy_usage = "8.5MW"
ex2.animation.north.layers[1].hr_version.filename = ENTITYPATH .. "exchanger/exchanger-N.png"
ex2.animation.east.layers[1].hr_version.filename = ENTITYPATH .. "exchanger/exchanger-E.png"
ex2.animation.south.layers[1].hr_version.filename = ENTITYPATH .. "exchanger/exchanger-S.png"
ex2.animation.west.layers[1].hr_version.filename = ENTITYPATH .. "exchanger/exchanger-W.png"
ex2.fluid_boxes[1].base_area = 8
ex2.fluid_boxes[1].height = 3
ex2.fluid_boxes[1].base_level = -3
ex2.fluid_boxes[2].base_area = 15
ex2.fluid_boxes[2].height = 3
ex2.fluid_boxes[3].base_area = 15
ex2.fluid_boxes[3].height = 3
local ex2m = util.table.deepcopy(ex2)
ex2m.name = "nullius-mirror-heat-exchanger-2"
ex2m.localised_name = {"entity-name.nullius-mirrored",
    {"", {"entity-name.heat-exchanger"}, " ", 2}}
ex2m.icons[2] = ex1m.icons[2]
ex2m.placeable_by = {item = "nullius-heat-exchanger-2", count = 1}
ex2m.next_upgrade = "nullius-mirror-heat-exchanger-3"
ex2m.fluid_boxes[1].pipe_connections[1].position = {2, 0.5}
ex2m.fluid_boxes[3].pipe_connections[1].position = {-2, 0.5}

local ex3 = util.table.deepcopy(ex1)
ex3.name = "nullius-heat-exchanger-3"
ex3.localised_name = {"", {"entity-name.heat-exchanger"}, " ", 3}
ex3.icons = data.raw.item["nullius-heat-exchanger-3"].icons
ex3.minable = {mining_time = 1, result = "nullius-heat-exchanger-3"}
ex3.next_upgrade = nil
ex3.crafting_speed = 12
ex3.max_health = 500
ex3.crafting_categories = { "boiling", "pressure-boiling" }
ex3.energy_source.max_temperature = 1500
ex3.energy_source.min_working_temperature = 500
ex3.energy_source.specific_heat = "20MJ"
ex3.energy_source.max_transfer = "150MW"
ex3.energy_usage = "20MW"
ex3.animation.north.layers[1].hr_version.filename = ENTITYPATH .. "exchanger/exchanger3-N.png"
ex3.animation.east.layers[1].hr_version.filename = ENTITYPATH .. "exchanger/exchanger3-E.png"
ex3.animation.south.layers[1].hr_version.filename = ENTITYPATH .. "exchanger/exchanger3-S.png"
ex3.animation.west.layers[1].hr_version.filename = ENTITYPATH .. "exchanger/exchanger3-W.png"
ex3.fluid_boxes[1].base_area = 10
ex3.fluid_boxes[1].height = 4
ex3.fluid_boxes[1].base_level = -4
ex3.fluid_boxes[2].base_area = 20
ex3.fluid_boxes[2].height = 5
ex3.fluid_boxes[3].base_area = 20
ex3.fluid_boxes[3].height = 5
local ex3m = util.table.deepcopy(ex3)
ex3m.name = "nullius-mirror-heat-exchanger-3"
ex3m.localised_name = {"entity-name.nullius-mirrored",
    {"", {"entity-name.heat-exchanger"}, " ", 3}}
ex3m.icons[2] = ex1m.icons[2]
ex3m.placeable_by = {item = "nullius-heat-exchanger-3", count = 1}
ex3m.next_upgrade = nil
ex3m.fluid_boxes[1].pipe_connections[1].position = {2, 0.5}
ex3m.fluid_boxes[3].pipe_connections[1].position = {-2, 0.5}
data:extend({ ex1m, ex2, ex2m, ex3, ex3m })


boil.name = "nullius-boiler-1"
boil.localised_name = {"", {"entity-name.boiler"}, " ", 1}
boil.localised_description = {"entity-description.nullius-boiler"}
boil.icons = data.raw.item["nullius-boiler-1"].icons
boil.minable = {mining_time = 1, result = "nullius-boiler-1"}
boil.next_upgrade = "nullius-boiler-2"
boil.crafting_speed = 2
boil.energy_source = {
  type = "electric",
  usage_priority = "secondary-input",
  emissions_per_minute = 1,
  drain = "100kW"
}
boil.energy_usage = "3400kW"
boil.animation = {
  north = { frame_count = 1,
    layers = {
      {
        filename = ENTITYPATH .. "boiler/boiler-north.png",
        priority = "extra-high",
        width = 269,
        height = 221,
        shift = util.by_pixel(-1.25, 5.25),
        scale = 0.5
      },
      data.raw["assembling-machine"]["nullius-combustion-chamber-1"].animation.north.layers[2]
    }
  },
  east = { frame_count = 1,
    layers = {
      {
        filename = ENTITYPATH .. "boiler/boiler-east.png",
        priority = "extra-high",
        width = 216,
        height = 301,
        shift = util.by_pixel(-3, 1.25),
        scale = 0.5
      },
      data.raw["assembling-machine"]["nullius-combustion-chamber-1"].animation.east.layers[2]
    }
  },
  south = { frame_count = 1,
    layers = {
      {
        filename = ENTITYPATH .. "boiler/boiler-south.png",
        priority = "extra-high",
        width = 260,
        height = 192,
        shift = util.by_pixel(4, 13),
        scale = 0.5
      },
      data.raw["assembling-machine"]["nullius-combustion-chamber-1"].animation.south.layers[2]
    }
  },
  west = { frame_count = 1,
    layers = {
      {
        filename = ENTITYPATH .. "boiler/boiler-west.png",
        priority = "extra-high",
        width = 196,
        height = 273,
        shift = util.by_pixel(1.5, 7.75),
        scale = 0.5
      },
      data.raw["assembling-machine"]["nullius-combustion-chamber-1"].animation.west.layers[2]
    }
  }
}
boil.working_visualisations = data.raw["assembling-machine"]["nullius-combustion-chamber-1"].working_visualisations

local boilm = util.table.deepcopy(boil)
boilm.name = "nullius-mirror-boiler-1"
boilm.localised_name = {"entity-name.nullius-mirrored", {"", {"entity-name.boiler"}, " ", 1}}
boilm.fluid_boxes[1].pipe_connections[1].position = {2, 0.5}
boilm.fluid_boxes[3].pipe_connections[1].position = {-2, 0.5}
boilm.icons[2] = ex1m.icons[2]
boilm.placeable_by = {item = "nullius-boiler-1", count = 1}
boilm.next_upgrade = "nullius-mirror-boiler-2"

local boil2 = util.table.deepcopy(boil)
boil2.name = "nullius-boiler-2"
boil2.localised_name = {"", {"entity-name.boiler"}, " ", 2}
boil2.icons = data.raw.item["nullius-boiler-2"].icons
boil2.minable = {mining_time = 1.5, result = "nullius-boiler-2"}
boil2.next_upgrade = nil
boil2.max_health = 500
boil2.crafting_categories = { "boiling", "pressure-boiling" }
boil2.crafting_speed = 5
boil2.energy_source = {
  type = "electric",
  usage_priority = "secondary-input",
  emissions_per_minute = 3,
  drain = "250kW"
}
boil2.energy_usage = "9.75MW"
boil2.animation.north.layers[1].filename = ENTITYPATH .. "boiler/boiler2-north.png"
boil2.animation.east.layers[1].filename = ENTITYPATH .. "boiler/boiler2-east.png"
boil2.animation.south.layers[1].filename = ENTITYPATH .. "boiler/boiler2-south.png"
boil2.animation.west.layers[1].filename = ENTITYPATH .. "boiler/boiler2-west.png"

local boil2m = util.table.deepcopy(boil2)
boil2m.name = "nullius-mirror-boiler-2"
boil2m.localised_name = {"entity-name.nullius-mirrored", {"", {"entity-name.boiler"}, " ", 2}}
boil2m.fluid_boxes[1].pipe_connections[1].position = {2, 0.5}
boil2m.fluid_boxes[3].pipe_connections[1].position = {-2, 0.5}
boil2m.icons[2] = boilm.icons[2]
boil2m.placeable_by = {item = "nullius-boiler-2", count = 1}
boil2m.next_upgrade = nil
data:extend({ boil, boilm, boil2, boil2m})


if mods["reskins-bobs"] then
data.raw["solar-panel"]["nullius-solar-panel-1"].picture = { layers = {
  {
    filename = "__reskins-bobs__/graphics/entity/power/solar-panel-large/base/solar-panel-large.png",
    priority = "high",
    width = 154,
    height = 137,
    shift = util.by_pixel(5, 3.5),
    hr_version = {
      filename = "__reskins-bobs__/graphics/entity/power/solar-panel-large/base/hr-solar-panel-large.png",
      priority = "high",
      width = 308,
      height = 274,
      shift = util.by_pixel(5, 3.5),
      scale = 0.5
    }
  },
  {
    filename = "__reskins-bobs__/graphics/entity/power/solar-panel-large/solar-panel-large-mask.png",
    priority = "high",
    width = 154,
    height = 137,
    shift = util.by_pixel(5, 3.5),
    tint = util.color("de9400"),
    hr_version = {
      filename = "__reskins-bobs__/graphics/entity/power/solar-panel-large/hr-solar-panel-large-mask.png",
      priority = "high",
      width = 308,
      height = 274,
      shift = util.by_pixel(5, 3.5),
      tint = util.color("de9400"),
      scale = 0.5
    }
  },
  {
    filename = "__reskins-bobs__/graphics/entity/power/solar-panel-large/solar-panel-large-highlights.png",
    priority = "high",
    width = 154,
    height = 137,
    shift = util.by_pixel(5, 3.5),
    blend_mode = "additive",
    hr_version = {
      filename = "__reskins-bobs__/graphics/entity/power/solar-panel-large/hr-solar-panel-large-highlights.png",
      priority = "high",
      width = 308,
      height = 274,
      shift = util.by_pixel(5, 3.5),
      blend_mode = "additive",
      scale = 0.5
    }
  },
  {
    filename = "__reskins-bobs__/graphics/entity/power/solar-panel-large/base/solar-panel-large-shadow.png",
    priority = "high",
    width = 154,
    height = 137,
    shift = util.by_pixel(5, 3.5),
    draw_as_shadow = true,
    hr_version = {
      filename = "__reskins-bobs__/graphics/entity/power/solar-panel-large/base/hr-solar-panel-large-shadow.png",
      priority = "high",
      width = 308,
      height = 274,
      shift = util.by_pixel(5, 3.5),
      draw_as_shadow = true,
      scale = 0.5
    }
  }
}}

data.raw["solar-panel"]["nullius-solar-panel-1"].overlay = { layers = {
  {
    filename = "__reskins-bobs__/graphics/entity/power/solar-panel-large/base/solar-panel-large-shadow-overlay.png",
    priority = "high",
    width = 154,
    height = 137,
    shift = util.by_pixel(5, 3.5),
    hr_version = {
      filename = "__reskins-bobs__/graphics/entity/power/solar-panel-large/base/hr-solar-panel-large-shadow-overlay.png",
      priority = "high",
      width = 308,
      height = 274,
      shift = util.by_pixel(5, 3.5),
      scale = 0.5
    }
  }
}}

data.raw["solar-panel"]["nullius-solar-panel-2"].overlay =
    data.raw["solar-panel"]["nullius-solar-panel-1"].overlay
data.raw["solar-panel"]["nullius-solar-panel-2"].picture =
    util.table.deepcopy(data.raw["solar-panel"]["nullius-solar-panel-1"].picture)
data.raw["solar-panel"]["nullius-solar-panel-2"].picture.layers[2].tint = util.color("c20600")
data.raw["solar-panel"]["nullius-solar-panel-2"].picture.layers[2].hr_version.tint = util.color("c20600")

data.raw["solar-panel"]["nullius-solar-panel-3"].overlay =
    data.raw["solar-panel"]["nullius-solar-panel-1"].overlay
data.raw["solar-panel"]["nullius-solar-panel-3"].picture =
    util.table.deepcopy(data.raw["solar-panel"]["nullius-solar-panel-1"].picture)
data.raw["solar-panel"]["nullius-solar-panel-3"].picture.layers[2].tint = util.color("0099ff")
data.raw["solar-panel"]["nullius-solar-panel-3"].picture.layers[2].hr_version.tint = util.color("0099ff")

data.raw["solar-panel"]["nullius-solar-panel-4"].overlay =
    data.raw["solar-panel"]["nullius-solar-panel-1"].overlay
data.raw["solar-panel"]["nullius-solar-panel-4"].picture =
    util.table.deepcopy(data.raw["solar-panel"]["nullius-solar-panel-1"].picture)
data.raw["solar-panel"]["nullius-solar-panel-4"].picture.layers[2].tint = util.color("23de55")
data.raw["solar-panel"]["nullius-solar-panel-4"].picture.layers[2].hr_version.tint = util.color("23de55")


data.raw["accumulator"]["nullius-grid-battery-1"].picture = { layers = {
  {
    filename = "__reskins-bobs__/graphics/entity/power/accumulator/wires/hr-accumulator-3.png",
    priority = "high",
    width = 130,
    height = 189,
    shift = util.by_pixel(0, -11*1.5),
    scale = 0.75
  },
  {
    filename = "__reskins-bobs__/graphics/entity/power/accumulator/hr-accumulator-mask.png",
    priority = "high",
    width = 130,
    height = 189,
    shift = util.by_pixel(0, -11*1.5),
    tint = util.color("c20600"),
    scale = 0.75
  },
  {
    filename = "__reskins-bobs__/graphics/entity/power/accumulator/hr-accumulator-highlights.png",
    priority = "high",
    width = 130,
    height = 189,
    shift = util.by_pixel(0, -11*1.5),
    blend_mode = "additive",
    scale = 0.75
  },
  {
    filename = BASEENTITY .. "accumulator/hr-accumulator-shadow.png",
    priority = "high",
    width = 234,
    height = 106,
    shift = util.by_pixel(29*1.5, 6*1.5),
    draw_as_shadow = true,
    scale = 0.75
  }
}}

local accumpic = util.table.deepcopy(data.raw["accumulator"]["nullius-grid-battery-1"].picture)
accumpic.layers[1].repeat_count = 24
accumpic.layers[1].animation_speed = 0.5
accumpic.layers[2].repeat_count = 24
accumpic.layers[2].animation_speed = 0.5
accumpic.layers[3].repeat_count = 24
accumpic.layers[3].animation_speed = 0.5
accumpic.layers[4].repeat_count = 24
data.raw["accumulator"]["nullius-grid-battery-1"].charge_animation = accumpic
data.raw["accumulator"]["nullius-grid-battery-1"].charge_animation.layers[5] = {
  filename = BASEENTITY .. "accumulator/hr-accumulator-charge.png",
  priority = "high",
  width = 178,
  height = 206,
  line_length = 6,
  frame_count = 24,
  draw_as_glow = true,
  shift = util.by_pixel(0, -22*1.5),
  scale = 0.75
}

data.raw["accumulator"]["nullius-grid-battery-1"].discharge_animation =
    util.table.deepcopy(data.raw["accumulator"]["nullius-grid-battery-1"].charge_animation)
data.raw["accumulator"]["nullius-grid-battery-1"].discharge_animation.layers[5] = {
  filename = BASEENTITY .. "accumulator/hr-accumulator-discharge.png",
  priority = "high",
  width = 170,
  height = 210,
  line_length = 6,
  frame_count = 24,
  draw_as_glow = true,
  shift = util.by_pixel(-1*1.5, -23*1.5),
  scale = 0.75
}


data.raw["accumulator"]["nullius-grid-battery-2"].picture =
    util.table.deepcopy(data.raw["accumulator"]["nullius-grid-battery-1"].picture)
data.raw["accumulator"]["nullius-grid-battery-2"].picture.layers[1].filename =
    "__reskins-bobs__/graphics/entity/power/accumulator/wires/hr-accumulator-1.png"
data.raw["accumulator"]["nullius-grid-battery-2"].picture.layers[2].tint = util.color("0099ff")
data.raw["accumulator"]["nullius-grid-battery-2"].charge_animation =
    util.table.deepcopy(data.raw["accumulator"]["nullius-grid-battery-1"].charge_animation)
data.raw["accumulator"]["nullius-grid-battery-2"].charge_animation.layers[1].filename =
    "__reskins-bobs__/graphics/entity/power/accumulator/wires/hr-accumulator-1.png"
data.raw["accumulator"]["nullius-grid-battery-2"].charge_animation.layers[2].tint = util.color("0099ff")
data.raw["accumulator"]["nullius-grid-battery-2"].discharge_animation =
    util.table.deepcopy(data.raw["accumulator"]["nullius-grid-battery-1"].discharge_animation)
data.raw["accumulator"]["nullius-grid-battery-2"].discharge_animation.layers[1].filename =
    "__reskins-bobs__/graphics/entity/power/accumulator/wires/hr-accumulator-1.png"
data.raw["accumulator"]["nullius-grid-battery-2"].discharge_animation.layers[2].tint = util.color("0099ff")

data.raw["accumulator"]["nullius-grid-battery-3"].picture =
    util.table.deepcopy(data.raw["accumulator"]["nullius-grid-battery-1"].picture)
data.raw["accumulator"]["nullius-grid-battery-3"].picture.layers[1].filename =
    "__reskins-bobs__/graphics/entity/power/accumulator/wires/hr-accumulator-2.png"
data.raw["accumulator"]["nullius-grid-battery-3"].picture.layers[2].tint = util.color("23de55")
data.raw["accumulator"]["nullius-grid-battery-3"].charge_animation =
    util.table.deepcopy(data.raw["accumulator"]["nullius-grid-battery-1"].charge_animation)
data.raw["accumulator"]["nullius-grid-battery-3"].charge_animation.layers[1].filename =
    "__reskins-bobs__/graphics/entity/power/accumulator/wires/hr-accumulator-2.png"
data.raw["accumulator"]["nullius-grid-battery-3"].charge_animation.layers[2].tint = util.color("23de55")
data.raw["accumulator"]["nullius-grid-battery-3"].discharge_animation =
    util.table.deepcopy(data.raw["accumulator"]["nullius-grid-battery-1"].discharge_animation)
data.raw["accumulator"]["nullius-grid-battery-3"].discharge_animation.layers[1].filename =
    "__reskins-bobs__/graphics/entity/power/accumulator/wires/hr-accumulator-2.png"
data.raw["accumulator"]["nullius-grid-battery-3"].discharge_animation.layers[2].tint = util.color("23de55")

end
