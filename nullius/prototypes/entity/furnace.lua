local ICONPATH = "__nullius__/graphics/icons/"
local ENTITYPATH = "__nullius__/graphics/entity/"
local BASEENTITY = "__base__/graphics/entity/"

local sounds = require("__base__/prototypes/entity/sounds")

local function scale_wire_position(wire_pos, scale)
  for _, wire_type in pairs(wire_pos) do
    if wire_type.x then
      wire_type.x = wire_type.x*scale
      wire_type.y = wire_type.y*scale
    else
      wire_type[1] = wire_type[1]*scale
      wire_type[2] = wire_type[2]*scale
    end
  end
end

local function offset_sprite(sprite, scale, only_shift)
  if sprite == nil then return end
  if sprite.shift ~= nil then
    sprite.shift = {sprite.shift[1]*scale,sprite.shift[2]*scale}
  else
    --sprite.shift = {2,2} -- what value do we set if no shift ?
  end
  if sprite.scale and not only_shift then
    sprite.scale = sprite.scale * scale
  end
end

function scale_connector_points(original, scale, only_shift)
  local result = table.deepcopy(original)
  for _, connector in pairs(result) do
    scale_wire_position(connector.points.wire, scale)
    scale_wire_position(connector.points.shadow, scale)
    offset_sprite(connector.sprites.connector_main,scale, only_shift)
    offset_sprite(connector.sprites.connector_shadow,scale, only_shift)
    offset_sprite(connector.sprites.wire_pins,scale, only_shift)
    offset_sprite(connector.sprites.wire_pins_shadow,scale, only_shift)
    offset_sprite(connector.sprites.led_blue_off,scale, only_shift)
    offset_sprite(connector.sprites.led_red,scale, only_shift)
    offset_sprite(connector.sprites.led_green,scale, only_shift)
    offset_sprite(connector.sprites.led_blue,scale, only_shift)
    offset_sprite(connector.sprites.led_light,scale, only_shift)
  end
  return result
end

local floatpipepics = {
    north = {
      filename = "__angelsrefininggraphics__/graphics/entity/ore-floatation-cell/pipe-north.png",
      priority = "extra-high",
      width = 48,
      height = 48,
      shift = { 0.01, 0.95 },
    },
    east = {
      filename = "__angelsrefininggraphics__/graphics/entity/ore-floatation-cell/pipe-east.png",
      priority = "extra-high",
      width = 40,
      height = 45,
      shift = { -0.71875, 0.1 },
    },
    south = {
      filename = "__angelsrefininggraphics__/graphics/entity/ore-floatation-cell/pipe-south.png",
      priority = "extra-high",
      width = 34,
      height = 39,
      shift = { 0, -0.75 },
    },
    west = {
      filename = "__angelsrefininggraphics__/graphics/entity/ore-floatation-cell/pipe-west.png",
      priority = "extra-high",
      width = 40,
      height = 45,
      shift = { 0.78125, 0.01 },
    },
  }


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
    impact_category = "stone",
	  working_sound = data.raw["furnace"]["steel-furnace"].working_sound,
    resistances = {
      { type = "impact", decrease = 100, percent = 90 },
      { type = "fire", decrease = 100, percent = 90 },
      { type = "explosion", percent = 50 }
    },
    collision_box = {{-0.7, -0.7}, {0.7, 0.7}},
    selection_box = {{-0.8, -1}, {0.8, 1}},
    crafting_categories = {"dry-smelting"},
    --result_inventory_size = 1,
    --source_inventory_size = 1,
    crafting_speed = 0.25,
    energy_source = {
      type = "electric",
      usage_priority = "secondary-input",
      emissions_per_minute = {pollution = 1},
      drain = "6kW"
    },
    circuit_wire_max_distance = furnace_circuit_wire_max_distance,
    circuit_connector = circuit_connector_definitions["stone-furnace"],
    energy_usage = "69kW",
    graphics_set = data.raw["furnace"]["stone-furnace"].graphics_set,
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
    impact_category = "metal",
    working_sound = data.raw["furnace"]["steel-furnace"].working_sound,
    open_sound = { filename = "__base__/sound/machine-open.ogg", volume = 0.85 },
    close_sound = { filename = "__base__/sound/machine-close.ogg", volume = 0.75 },
    resistances = {
      { type = "impact", decrease = 100, percent = 90 },
      { type = "fire", decrease = 100, percent = 90 },
      { type = "explosion", percent = 50 }
    },
    collision_box = {{-0.7, -0.7}, {0.7, 0.7}},
    selection_box = {{-0.8, -1}, {0.8, 1}},
    crafting_categories = {"dry-smelting"},
    --result_inventory_size = 1,
    --source_inventory_size = 1,
    crafting_speed = 0.5,
    energy_source = {
      type = "electric",
      usage_priority = "secondary-input",
      emissions_per_minute = {pollution = 1},
      drain = "12kW"
    },
    circuit_wire_max_distance = furnace_circuit_wire_max_distance,
    circuit_connector = circuit_connector_definitions["steel-furnace"],
    energy_usage = "138kW",
    module_slots = 1,
    allowed_effects = {"consumption", "speed", "productivity", "pollution"},
    graphics_set = data.raw["furnace"]["steel-furnace"].graphics_set,
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
      emissions_per_minute = {pollution = 1},
      drain = "20kW"
    },
    impact_category = "metal",
    working_sound = data.raw["furnace"]["electric-furnace"].working_sound,
    open_sound = { filename = "__base__/sound/machine-open.ogg", volume = 0.85 },
    close_sound = { filename = "__base__/sound/machine-close.ogg", volume = 0.75 },
    module_slots = 2,
    allowed_effects = {"consumption", "speed", "productivity", "pollution"},
    circuit_wire_max_distance = furnace_circuit_wire_max_distance,
    circuit_connector = scale_connector_points(circuit_connector_definitions["electric-furnace"],0.6666),

    graphics_set = {
      animation = {
        layers = {
          {
              filename = BASEENTITY .. "electric-furnace/electric-furnace.png",
              priority = "high",
              width = 239,
              height = 219,
              frame_count = 1,
              shift = util.by_pixel(0.75, 5.75),
              scale = 0.5*0.6666,
              tint = {0.7, 0.7, 0.85}
          },
          {
              filename = BASEENTITY .. "electric-furnace/electric-furnace-shadow.png",
              priority = "high",
              width = 227,
              height = 171,
              frame_count = 1,
              draw_as_shadow = true,
              shift = util.by_pixel(11.25, 7.75),
              scale = 0.5*0.6666
          },
        }
      },
  
      working_visualisations = {
        {
          fadeout = true,
          animation = {
            layers = {
              {
                filename = BASEENTITY .. "electric-furnace/electric-furnace-heater.png",
                priority = "high",
                width = 60,
                height = 56,
                frame_count = 12,
                animation_speed = 0.5,
                draw_as_glow = true,
                shift = util.by_pixel(1.75*0.6666, 35*0.6666),
                scale = 0.6666*0.5
              },
              {
                filename = BASEENTITY .. "electric-furnace/electric-furnace-light.png",
                blend_mode = "additive",
                width = 202,
                height = 202,
                repeat_count = 12,
                draw_as_glow = true,
                shift = util.by_pixel(1*0.6666, 0),
                scale = 0.6666*0.5
              }
            }
          }
        },
        {
          fadeout = true,
          animation = {
            draw_as_light = true,
            filename = BASEENTITY .. "electric-furnace/electric-furnace-ground-light.png",
            blend_mode = "additive",
            width = 166,
            height = 124,
            shift = util.by_pixel(3, 69),
            scale = 0.5*0.6666,
          }
        },
        {
          animation = {
            filename = BASEENTITY .. "electric-furnace/electric-furnace-propeller-1.png",
            priority = "high",
            width = 37,
            height = 25,
            frame_count = 4,
            animation_speed = 0.5,
            shift = util.by_pixel(-20.5*0.6666, -16.5*0.6666),
            scale = 0.6666*0.5
          }
        },
        {
          animation = {
            filename = BASEENTITY .. "electric-furnace/electric-furnace-propeller-2.png",
            priority = "high",
            width = 23,
            height = 15,
            frame_count = 4,
            animation_speed = 0.5,
            shift = util.by_pixel(4*0.6666, -34*0.6666),
            scale = 0.6666*0.5
          }
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
    impact_category = "metal",
	  working_sound = data.raw["furnace"]["steel-furnace"].working_sound,
	  open_sound = { filename = "__base__/sound/machine-open.ogg", volume = 0.85 },
    close_sound = { filename = "__base__/sound/machine-close.ogg", volume = 0.75 },
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
        volume = 500,
        pipe_connections = {{ flow_direction ="output", position = {0, -1}, direction = defines.direction.north }}
      },
    },
    fluid_boxes_off_when_no_fluid_recipe = true,
    --result_inventory_size = 1,
    --source_inventory_size = 1,
    crafting_speed = 1,
    energy_source = {
      type = "electric",
      usage_priority = "secondary-input",
      emissions_per_minute = {pollution = 1},
      drain = "25kW"
    },
    energy_usage = "270kW",
    module_slots = 1,
    allowed_effects = {"consumption", "speed", "productivity", "pollution"},
    
    circuit_wire_max_distance = furnace_circuit_wire_max_distance,
    circuit_connector = scale_connector_points(circuit_connector_definitions["steel-furnace"],1.5),
    
    graphics_set = {
      animation = {
        layers = {
          {
            filename = BASEENTITY .. "steel-furnace/steel-furnace.png",
            priority = "high",
            width = 171,
            height = 174,
            frame_count = 1,
            shift = util.by_pixel(-1.25*1.5, 2*1.5),
            scale = 0.75
          },
          {
            filename = BASEENTITY .. "steel-furnace/steel-furnace-shadow.png",
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
          fadeout = true,
          effect = "flicker",
          animation = {
              draw_as_glow = true,
              filename = BASEENTITY .. "steel-furnace/steel-furnace-fire.png",
              priority = "high",
              line_length = 8,
              width = 57,
              height = 81,
              frame_count = 48,
              shift = util.by_pixel(-0.75*1.5, 5.75*1.5),
              scale = 0.75
          }
        },
        {
          fadeout = true,
          effect = "flicker",
          animation = {
            filename = BASEENTITY .. "steel-furnace/steel-furnace-glow.png",
            draw_as_glow = true,
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
          effect = "flicker",
          animation = {
            filename = BASEENTITY .. "steel-furnace/steel-furnace-working.png",
            draw_as_glow = true,
            priority = "high",
            line_length = 1,
            width = 128,
            height = 150,
            frame_count = 1,
            shift = util.by_pixel(0, -5*1.5),
            blend_mode = "additive",
            scale = 0.75
          }
        },
         {
          fadeout = true,
          effect = "flicker",
          animation =
          {
            filename = BASEENTITY .. "steel-furnace/steel-furnace-ground-light.png",
            priority = "high",
            line_length = 1,
            width = 152,
            height = 126,
            draw_as_light = true,
            shift = util.by_pixel(1, 48),
            blend_mode = "additive",
            scale = 0.75,
          },
        },
      },
      water_reflection =
      {
        pictures =
        {
          filename = BASEENTITY .. "steel-furnace/steel-furnace-reflection.png",
          priority = "extra-high",
          width = 20,
          height = 24,
          shift = util.by_pixel(0, 45),
          variation_count = 1,
          scale = 75
        },
        rotate = false,
        orientation_to_variation = false
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
        volume = 500,
        pipe_connections = {{ flow_direction ="input", position = {0, 1}, direction = defines.direction.south }}
      },
      {
        production_type = "output",
        pipe_covers = pipecoverspictures(),
        volume = 500,
        pipe_connections = {{ flow_direction ="output", position = {0, -1}, direction = defines.direction.north }}
      },
    },
    fluid_boxes_off_when_no_fluid_recipe = true,
    crafting_categories = {"dry-smelting", "vent-smelting", "wet-smelting"},
    crafting_speed = 2,
    energy_usage = "520kW",
    energy_source = {
      type = "electric",
      usage_priority = "secondary-input",
      emissions_per_minute = {pollution = 1},
      drain = "60kW"
    },
    working_sound = data.raw["furnace"]["electric-furnace"].working_sound,
    open_sound = { filename = "__base__/sound/machine-open.ogg", volume = 0.85 },
    close_sound = { filename = "__base__/sound/machine-close.ogg", volume = 0.75 },
    impact_category = "metal",
    module_slots = 2,
    allowed_effects = {"consumption", "speed", "productivity", "pollution"},
    
    circuit_wire_max_distance = furnace_circuit_wire_max_distance,
    circuit_connector = circuit_connector_definitions["electric-furnace"],

    graphics_set = {
      animation = {
        layers = {
          {
              filename = BASEENTITY .. "electric-furnace/electric-furnace.png",
              priority = "high",
              width = 239,
              height = 219,
              frame_count = 1,
              shift = util.by_pixel(0.75, 5.75),
              scale = 0.5,
              tint = {0.7, 0.7, 0.85}
          },
          {
              filename = BASEENTITY .. "electric-furnace/electric-furnace-shadow.png",
              priority = "high",
              width = 227,
              height = 171,
              frame_count = 1,
              draw_as_shadow = true,
              shift = util.by_pixel(11.25, 7.75),
              scale = 0.5
          }
        }
      },
      working_visualisations = data.raw["furnace"]["electric-furnace"].graphics_set.working_visualisations,
      water_reflection = data.raw["furnace"]["electric-furnace"].graphics_set.water_reflection,
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
        volume = 500,
        pipe_connections = {{ flow_direction ="input", position = {0.5, 1.4}, direction = defines.direction.south }}
      },
      {
        production_type = "output",
        pipe_covers = pipecoverspictures(),
        volume = 500,
        pipe_connections = {{ flow_direction ="output", position = {-0.5, -1.4}, direction = defines.direction.north }}
      },
    },
    fluid_boxes_off_when_no_fluid_recipe = true,
    crafting_categories = {"bulk-smelting"},
    crafting_speed = 1,
    energy_usage = "1220kW",
    energy_source = {
      type = "electric",
      usage_priority = "secondary-input",
      emissions_per_minute = {pollution = 2.5},
      drain = "180kW"
    },
    impact_category = "metal",
    working_sound = data.raw["furnace"]["electric-furnace"].working_sound,
    open_sound = { filename = "__base__/sound/machine-open.ogg", volume = 0.85 },
    close_sound = { filename = "__base__/sound/machine-close.ogg", volume = 0.75 },
    module_slots = 2,
    allowed_effects = {"consumption", "speed", "productivity", "pollution"},
    
    circuit_wire_max_distance = furnace_circuit_wire_max_distance,
    circuit_connector = scale_connector_points(circuit_connector_definitions["electric-furnace"],1.2),

    graphics_set = {
      animation = {
        layers = {
          {
            filename = BASEENTITY .. "electric-furnace/electric-furnace.png",
            priority = "high",
            width = 239,
            height = 219,
            frame_count = 1,
            shift = util.by_pixel(1, 7.666),
            scale = 0.6666,
            tint = {0.7, 0.7, 0.85}
          },
          {
            filename = BASEENTITY .. "electric-furnace/electric-furnace-shadow.png",
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
          fadeout = true,
          animation = {
            layers = {
              {
                filename = BASEENTITY .. "electric-furnace/electric-furnace-heater.png",
                draw_as_glow = true,
                priority = "high",
                width = 60,
                height = 56,
                frame_count = 12,
                animation_speed = 0.5,
                shift = util.by_pixel(2.333, 43.666),
                scale = 0.6666
              },
              {
                filename = BASEENTITY .. "electric-furnace/electric-furnace-light.png",
                blend_mode = "additive",
                width = 202,
                height = 202,
                repeat_count = 12,
                shift = util.by_pixel(1.333, 0),
                scale = 0.6666,
                draw_as_glow = true,
              }
            }
          }
        },
        {
          fadeout = true,
          animation = {
            filename = BASEENTITY .. "electric-furnace/electric-furnace-ground-light.png",
            blend_mode = "additive",
            width = 166,
            height = 124,
            shift = util.by_pixel(4, 92),
            draw_as_light = true,
            scale = 0.6666
          },
        },
        {
          animation = {
            filename = BASEENTITY .. "electric-furnace/electric-furnace-propeller-1.png",
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
            filename = BASEENTITY .. "electric-furnace/electric-furnace-propeller-2.png",
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
    },
  }
})

circuit_connector_definitions["nullius-foundry"] = circuit_connector_definitions.create_vector(universal_connector_template, {
  { variation =  4, main_offset = util.by_pixel(-41.125,  35.125), shadow_offset = util.by_pixel(-41.125,  35.125), show_shadow = true },
  { variation =  4, main_offset = util.by_pixel(-41.125,  35.125), shadow_offset = util.by_pixel(-41.125,  35.125), show_shadow = true },
  { variation =  4, main_offset = util.by_pixel(-41.125,  35.125), shadow_offset = util.by_pixel(-41.125,  35.125), show_shadow = true },
  { variation =  4, main_offset = util.by_pixel(-41.125,  35.125), shadow_offset = util.by_pixel(-41.125,  35.125), show_shadow = true },
})

circuit_connector_definitions["nullius-crusher"] = circuit_connector_definitions.create_vector(universal_connector_template, {
  { variation = 30, main_offset = util.by_pixel( 35.875, -31.625), shadow_offset = util.by_pixel( 35.875, -31.625), show_shadow = true },
  { variation = 30, main_offset = util.by_pixel( 35.875, -31.625), shadow_offset = util.by_pixel( 35.875, -31.625), show_shadow = true },
  { variation = 30, main_offset = util.by_pixel( 35.875, -31.625), shadow_offset = util.by_pixel( 35.875, -31.625), show_shadow = true },
  { variation = 30, main_offset = util.by_pixel( 35.875, -31.625), shadow_offset = util.by_pixel( 35.875, -31.625), show_shadow = true },
})

local function get_foundry_graphics_set(is_flipped, speed, tint)
	local flipped = is_flipped == true and "-flipped" or ""
  local graphics_set = {
    animation = {
      layers = {
        util.sprite_load("__angelssmeltinggraphics__/graphics/entity/casting-machine/casting-machine-animation" .. flipped, {
          priority = "high",
          frame_count = 49,
          animation_speed = speed,
          scale = 0.5,
          tint = tint,
        }),
        util.sprite_load("__angelssmeltinggraphics__/graphics/entity/casting-machine/casting-machine-animation-shadow" .. flipped, {
          priority = "high",
          frame_count = 49,
          animation_speed = speed,
          draw_as_shadow = true,
          scale = 0.5,
        }),
        util.sprite_load("__angelssmeltinggraphics__/graphics/entity/casting-machine/casting-machine-lights" .. flipped, {
          priority = "high",
          frame_count = 49,
          animation_speed = speed,
          draw_as_light = true,
          scale = 0.5,
        }),
      },
    },
    working_visualisations = {
      -- Integration patch.
      {
        always_draw = true,
        render_layer = "floor",
        animation = util.sprite_load("__angelssmeltinggraphics__/graphics/entity/casting-machine/casting-machine-integration-patch" .. flipped, {
          priority = "high",
          scale = 0.5,
        }),
      },
    }
  }

  return graphics_set
end

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
    fluid_boxes_off_when_no_fluid_recipe = true,
    crafting_categories = {"dry-smelting", "vent-smelting", "wet-smelting"},
    crafting_speed = 4,
    energy_usage = "1000kW",
    energy_source = {
      type = "electric",
      usage_priority = "secondary-input",
      emissions_per_minute = {pollution = 2},
      drain = "100kW"
    },
    module_slots = 3,
    allowed_effects = {"consumption", "speed", "productivity", "pollution"},
    graphics_set = data.raw["furnace"]["electric-furnace"].graphics_set,
    working_sound = data.raw["furnace"]["electric-furnace"].working_sound,
    open_sound = { filename = "__base__/sound/machine-open.ogg", volume = 0.85 },
    close_sound = { filename = "__base__/sound/machine-close.ogg", volume = 0.75 },
    impact_category = "metal",
    circuit_wire_max_distance = furnace_circuit_wire_max_distance,
    circuit_connector = circuit_connector_definitions["electric-furnace"],
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
    fluid_boxes_off_when_no_fluid_recipe = true,
    crafting_categories = {"bulk-smelting"},
    crafting_speed = 2,
    energy_usage = "2200kW",
    energy_source = {
      type = "electric",
      usage_priority = "secondary-input",
      emissions_per_minute = {pollution = 5},
      drain = "400kW"
    },
    impact_category = "metal",
    working_sound = data.raw["furnace"]["electric-furnace"].working_sound,
    open_sound = { filename = "__base__/sound/machine-open.ogg", volume = 0.85 },
    close_sound = { filename = "__base__/sound/machine-close.ogg", volume = 0.75 },
    module_slots = 3,
    allowed_effects = {"consumption", "speed", "productivity", "pollution"},
    
    circuit_wire_max_distance = furnace_circuit_wire_max_distance,
    circuit_connector = scale_connector_points(circuit_connector_definitions["electric-furnace"],1.2),

    graphics_set = {
      animation = {
        layers = {
          {
            filename = BASEENTITY .. "electric-furnace/electric-furnace.png",
            priority = "high",
            width = 239,
            height = 219,
            frame_count = 1,
            shift = util.by_pixel(1, 7.666),
            scale = 0.6666
          },
          {
            filename = BASEENTITY .. "electric-furnace/electric-furnace-shadow.png",
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
      working_visualisations = data.raw["assembling-machine"]["nullius-large-furnace-1"].graphics_set.working_visualisations,
      water_reflection = data.raw["assembling-machine"]["nullius-large-furnace-1"].graphics_set.water_reflection,
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
      emissions_per_minute = {pollution = 0.5},
      drain = "10kW"
    },
    energy_usage = "150kW",
    circuit_connector = circuit_connector_definitions["nullius-foundry"],
    circuit_wire_max_distance = default_circuit_wire_max_distance,
    
    graphics_set = get_foundry_graphics_set(false, 0.4, {0.6, 0.8, 0.7}),
    graphics_set_flipped = get_foundry_graphics_set(true, 0.4, {0.6, 0.8, 0.7}),
    forced_symmetry = "horizontal",

    resistances = {
      { type = "impact", decrease = 100, percent = 90 },
      { type = "fire", decrease = 50, percent = 80 }
    },
    module_slots = 1,
    allowed_effects = {"speed", "productivity", "consumption", "pollution"},
    fluid_boxes = {
      {
        production_type = "input",
        pipe_covers = pipecoverspictures(),
        volume = 500,
        pipe_connections = {{ flow_direction ="input", position = {-1, 1}, direction = defines.direction.west }}
      },
      {
        production_type = "output",
        pipe_covers = pipecoverspictures(),
        volume = 500,
        pipe_connections = {{ flow_direction ="output", position = {1, -1}, direction = defines.direction.east }}
      },
    },
	  impact_category = data.raw["furnace"]["stone-furnace"].impact_category,
    working_sound = data.raw["furnace"]["stone-furnace"].working_sound,
    open_sound = sounds.metal_large_open,
    close_sound = sounds.metal_large_close
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
      emissions_per_minute = {pollution = 1},
      drain = "25kW"
    },
    energy_usage = "265kW",
    circuit_connector = circuit_connector_definitions["nullius-foundry"],
    circuit_wire_max_distance = default_circuit_wire_max_distance,
    
    graphics_set = get_foundry_graphics_set(false, 0.5, {0.7, 0.8, 1}),
    graphics_set_flipped = get_foundry_graphics_set(true, 0.5, {0.7, 0.8, 1}),
    forced_symmetry = "horizontal",
   
    resistances = {
      { type = "impact", decrease = 100, percent = 90 },
      { type = "fire", decrease = 50, percent = 80 }
    },
    module_slots = 2,
    allowed_effects = {"speed", "productivity", "consumption", "pollution"},
    fluid_boxes = {
      {
        production_type = "input",
        pipe_covers = pipecoverspictures(),
        volume = 500,
        pipe_connections = {{ flow_direction ="input", position = {-1, 1}, direction = defines.direction.west }}
      },
      {
        production_type = "output",
        pipe_covers = pipecoverspictures(),
        volume = 500,
        pipe_connections = {{ flow_direction ="output", position = {1, -1}, direction = defines.direction.east }}
      },
    },
	  impact_category = data.raw["assembling-machine"]["nullius-foundry-1"].impact_category,
    working_sound = data.raw["assembling-machine"]["nullius-foundry-1"].working_sound,
    open_sound = sounds.metal_large_open,
    close_sound = sounds.metal_large_close
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
      emissions_per_minute = {pollution = 2},
      drain = "50kW"
    },
    energy_usage = "525kW",
    circuit_connector = circuit_connector_definitions["nullius-foundry"],
    circuit_wire_max_distance = default_circuit_wire_max_distance,
    
    graphics_set = get_foundry_graphics_set(false, 0.6),
    graphics_set_flipped = get_foundry_graphics_set(true, 0.6),
    forced_symmetry = "horizontal",
    
    resistances = {
      { type = "impact", decrease = 100, percent = 90 },
      { type = "fire", decrease = 50, percent = 80 }
    },
    module_slots = 3,
    allowed_effects = {"speed", "productivity", "consumption", "pollution"},
    fluid_boxes = {
      {
        production_type = "input",
        pipe_covers = pipecoverspictures(),
        volume = 500,
        pipe_connections = {{ flow_direction ="input", position = {-1, 1}, direction = defines.direction.west }}
      },
      {
        production_type = "output",
        pipe_covers = pipecoverspictures(),
        volume = 500,
        pipe_connections = {{ flow_direction ="output", position = {1, -1}, direction = defines.direction.east }}
      },
    },
	  impact_category = data.raw["assembling-machine"]["nullius-foundry-1"].impact_category,
    working_sound = data.raw["assembling-machine"]["nullius-foundry-1"].working_sound,
    open_sound = sounds.metal_large_open,
    close_sound = sounds.metal_large_close
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
    module_slots = 1,
    allowed_effects = {"speed", "productivity", "consumption", "pollution"},
    energy_source = {
      type = "electric",
      usage_priority = "secondary-input",
      emissions_per_minute = {pollution = 0.5},
      drain = "3kW"
    },
    energy_usage = "97kW",
    resistances = {
      { type = "impact", decrease = 100, percent = 90 },
      { type = "physical", decrease = 50, percent = 80 }
    },
    circuit_connector = circuit_connector_definitions["nullius-crusher"],
    circuit_wire_max_distance = default_circuit_wire_max_distance,
    
    fluid_boxes = {
      {
        production_type = "input",
        pipe_covers = pipecoverspictures(),
        volume = 500,
        pipe_connections = {{ flow_direction ="input", position = {0, 1}, direction = defines.direction.south }}
      },
      {
        production_type = "output",
        pipe_covers = pipecoverspictures(),
        volume = 500,
        pipe_connections = {{ flow_direction ="output", position = {0, -1}, direction = defines.direction.north }}
      },
    },
    fluid_boxes_off_when_no_fluid_recipe = true,
    graphics_set = {
      animation = {
        layers = {
          {
            filename = "__angelsrefininggraphics__/graphics/entity/ore-crusher/ore-crusher-base.png",
            priority = "extra-high",
            width = 189,
            height = 214,
            frame_count = 16,
            line_length = 4,
            shift = util.by_pixel(-0.5, -5),
            animation_speed = 0.5,
            scale = 0.5,
          },
          {
            filename = "__angelsrefininggraphics__/graphics/entity/ore-crusher/ore-crusher-shadow.png",
            priority = "extra-high",
            width = 282,
            height = 140,
            repeat_count = 16,
            shift = util.by_pixel(24, 17.5),
            draw_as_shadow = true,
            animation_speed = 0.5,
            scale = 0.5,
          },
        },
      },
    },
    impact_category = "metal",
    working_sound = {
      sound = { filename = "__angelsrefininggraphics__/sound/ore-crusher.ogg", volume = 0.6 },
      idle_sound = { filename = "__base__/sound/idle1.ogg", volume = 0.6 },
    },
    open_sound = sounds.machine_open,
    close_sound = sounds.machine_close
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
      emissions_per_minute = {pollution = 0.75},
      drain = "8kW"
    },
    energy_usage = "172kW",
    resistances = {
      { type = "impact", decrease = 100, percent = 90 },
      { type = "physical", decrease = 50, percent = 80 }
    },
    module_slots = 2,
    allowed_effects = {"speed", "productivity", "consumption", "pollution"},
    impact_category = "metal",
    working_sound = {
      sound = { filename = "__angelsrefininggraphics__/sound/ore-crusher.ogg", volume = 0.6 },
      idle_sound = { filename = "__base__/sound/idle1.ogg", volume = 0.6 },
    },
    open_sound = sounds.machine_open,
    close_sound = sounds.machine_close,
    circuit_connector = circuit_connector_definitions["nullius-crusher"],
    circuit_wire_max_distance = default_circuit_wire_max_distance,
    fluid_boxes = {
      {
        production_type = "input",
        pipe_covers = pipecoverspictures(),
        volume = 500,
        pipe_connections = {{ flow_direction ="input", position = {0, 1}, direction = defines.direction.south }}
      },
      {
        production_type = "output",
        pipe_covers = pipecoverspictures(),
        volume = 500,
        pipe_connections = {{ flow_direction ="output", position = {0, -1}, direction = defines.direction.north }}
      },
    },
    fluid_boxes_off_when_no_fluid_recipe = true,
    graphics_set = {
      animation = {
        layers = {
          {
            filename = "__angelsrefininggraphics__/graphics/entity/ore-crusher/ore-crusher-base.png",
            priority = "extra-high",
            width = 189,
            height = 214,
            frame_count = 16,
            line_length = 4,
            shift = util.by_pixel(-0.5, -5),
            animation_speed = 0.5,
            scale = 0.5,
          },
          {
            filename = "__angelsrefininggraphics__/graphics/entity/ore-crusher/ore-crusher-shadow.png",
            priority = "extra-high",
            width = 282,
            height = 140,
            repeat_count = 16,
            shift = util.by_pixel(24, 17.5),
            draw_as_shadow = true,
            animation_speed = 0.5,
            scale = 0.5,
          },
        },
      },
    }
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
      emissions_per_minute = {pollution = 1},
      drain = "20kW"
    },
    energy_usage = "330kW",
    resistances = {
      { type = "impact", decrease = 100, percent = 90 },
      { type = "physical", decrease = 50, percent = 80 }
    },
    module_slots = 3,
    allowed_effects = {"speed", "productivity", "consumption", "pollution"},
    impact_category = "metal",
    working_sound = {
      sound = { filename = "__angelsrefininggraphics__/sound/ore-crusher.ogg", volume = 0.6 },
      idle_sound = { filename = "__base__/sound/idle1.ogg", volume = 0.6 },
    },
    open_sound = sounds.machine_open,
    close_sound = sounds.machine_close,
    circuit_connector = circuit_connector_definitions["nullius-crusher"],
    circuit_wire_max_distance = default_circuit_wire_max_distance,
    fluid_boxes = {
      {
        production_type = "input",
        pipe_covers = pipecoverspictures(),
        volume = 500,
        pipe_connections = {{ flow_direction ="input", position = {0, 1}, direction = defines.direction.south }}
      },
      {
        production_type = "output",
        pipe_covers = pipecoverspictures(),
        volume = 500,
        pipe_connections = {{ flow_direction ="output", position = {0, -1}, direction = defines.direction.north }}
      },
    },
    fluid_boxes_off_when_no_fluid_recipe = true,
    graphics_set = {
      animation = {
        layers = {
          {
            filename = "__angelsrefininggraphics__/graphics/entity/ore-crusher/ore-crusher-base.png",
            priority = "extra-high",
            width = 189,
            height = 214,
            frame_count = 16,
            line_length = 4,
            shift = util.by_pixel(-0.5, -5),
            animation_speed = 0.5,
            scale = 0.5,
          },
          {
            filename = "__angelsrefininggraphics__/graphics/entity/ore-crusher/ore-crusher-shadow.png",
            priority = "extra-high",
            width = 282,
            height = 140,
            repeat_count = 16,
            shift = util.by_pixel(24, 17.5),
            draw_as_shadow = true,
            animation_speed = 0.5,
            scale = 0.5,
          },
        },
      },
    }
  }
})

data.raw["assembling-machine"]["nullius-crusher-1"].graphics_set.animation.layers[1].tint = {0.6, 0.6, 0.6}
data.raw["assembling-machine"]["nullius-crusher-2"].graphics_set.animation.layers[1].tint = {0.6, 0.65, 0.85}

circuit_connector_definitions["nullius-flotation-cell"] = circuit_connector_definitions.create_vector(universal_connector_template, {
  { variation = 27, main_offset = util.by_pixel(-25.375,  10.875), shadow_offset = util.by_pixel(-25.375,  10.875), show_shadow = true },
  { variation = 27, main_offset = util.by_pixel(-25.375,  10.875), shadow_offset = util.by_pixel(-25.375,  10.875), show_shadow = true },
  { variation = 27, main_offset = util.by_pixel(-25.375,  10.875), shadow_offset = util.by_pixel(-25.375,  10.875), show_shadow = true },
  { variation = 27, main_offset = util.by_pixel(-25.375,  10.875), shadow_offset = util.by_pixel(-25.375,  10.875), show_shadow = true },
})

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
      emissions_per_minute = {pollution = 0.5},
      drain = "7kW"
    },
    energy_usage = "193kW",
    resistances = {
      { type = "impact", decrease = 100, percent = 90 },
      { type = "acid", decrease = 50, percent = 80 }
    },
    circuit_connector = circuit_connector_definitions["nullius-flotation-cell"],
    circuit_wire_max_distance = default_circuit_wire_max_distance,
    module_slots = 1,
    allowed_effects = {"speed", "productivity", "consumption", "pollution"},
    fluid_boxes = {
      {
        production_type = "input",
        pipe_picture = floatpipepics,
        pipe_covers = pipecoverspictures(),
        volume = 500,
        pipe_connections = {{ flow_direction ="input", position = {-0.5, 1.5}, direction = defines.direction.south }}
      },
      {
        production_type = "input",
        pipe_picture = floatpipepics,
        pipe_covers = pipecoverspictures(),
        volume = 500,
        pipe_connections = {{ flow_direction ="input", position = {-1.5, -0.5}, direction = defines.direction.west }}
      },
      {
        production_type = "output",
        pipe_picture = floatpipepics,
        pipe_covers = pipecoverspictures(),
        volume = 500,
        pipe_connections = {{ flow_direction ="output", position = {0.5, -1.5}, direction = defines.direction.north }}
      },
      {
        production_type = "output",
        pipe_picture = floatpipepics,
        pipe_covers = pipecoverspictures(),
        volume = 500,
        pipe_connections = {{ flow_direction ="output", position = {1.5, 0.5}, direction = defines.direction.east }}
      }
    },
    forced_symmetry = "horizontal",
    graphics_set = {
      animation = scale_image({
          layers = {
            {
              filename = "__angelsrefininggraphics__/graphics/entity/ore-floatation-cell/ore-flotation-cell-base.png",
              priority = "extra-high",
              width = 333,
              height = 363,
              x = 333,
              shift = util.by_pixel_hr(-1, -1),
              scale = 0.5,
            },
            {
              filename = "__angelsrefininggraphics__/graphics/entity/ore-floatation-cell/ore-flotation-cell-shadow.png",
              priority = "extra-high",
              width = 390,
              height = 326,
              x = 390,
              shift = util.by_pixel_hr(29, 18),
              draw_as_shadow = true,
              scale = 0.5,
            },
          },
        }, 0.81),
	    working_visualisations = scale_image({
        {
          always_draw = true,
          animation = {
            filename = "__angelsrefininggraphics__/graphics/entity/ore-floatation-cell/ore-flotation-cell-animation-idle.png",
            priority = "extra-high",
            width = 166,
            height = 117,
            frame_count = 32,
            line_length = 8,
            shift = util.by_pixel_hr(62, 5),
            scale = 0.5,
          },
        },
        {
          fadeout = true,
          animation = {
            filename = "__angelsrefininggraphics__/graphics/entity/ore-floatation-cell/ore-flotation-cell-animation-base.png",
            priority = "extra-high",
            width = 166,
            height = 117,
            frame_count = 64,
            line_length = 8,
            shift = util.by_pixel_hr(62, 5),
            scale = 0.5,
          },
        },
        {
          fadeout = true,
          apply_recipe_tint = "primary",
          animation = {
            filename = "__angelsrefininggraphics__/graphics/entity/ore-floatation-cell/ore-flotation-cell-animation-water-tintable.png",
            priority = "extra-high",
            width = 166,
            height = 117,
            frame_count = 64,
            line_length = 8,
            shift = util.by_pixel_hr(62, 5),
            scale = 0.5,
          },
        },
        {
          fadeout = true,
          apply_recipe_tint = "secondary",
          animation = {
            filename = "__angelsrefininggraphics__/graphics/entity/ore-floatation-cell/ore-flotation-cell-animation-froth-tintable.png",
            priority = "extra-high",
            width = 166,
            height = 117,
            frame_count = 64,
            line_length = 8,
            shift = util.by_pixel_hr(62, 5),
            scale = 0.5,
          },
        },
        {
          always_draw = true,
          render_layer = "higher-object-under",
          north_animation = {
            filename = "__angelsrefininggraphics__/graphics/entity/ore-floatation-cell/ore-flotation-cell-pipe-cover-overlays.png",
            priority = "extra-high",
            width = 333,
            height = 363,
            shift = util.by_pixel_hr(-1, -1),
            scale = 0.5,
          },
          east_animation = {
            filename = "__angelsrefininggraphics__/graphics/entity/ore-floatation-cell/ore-flotation-cell-pipe-cover-overlays.png",
            priority = "extra-high",
            width = 333,
            height = 363,
            x = 333,
            shift = util.by_pixel_hr(-1, -1),
            scale = 0.5,
          },
          south_animation = {
            filename = "__angelsrefininggraphics__/graphics/entity/ore-floatation-cell/ore-flotation-cell-pipe-cover-overlays.png",
            priority = "extra-high",
            width = 333,
            height = 363,
            shift = util.by_pixel_hr(-1, -1),
            scale = 0.5,
          },
          west_animation = {
            filename = "__angelsrefininggraphics__/graphics/entity/ore-floatation-cell/ore-flotation-cell-pipe-cover-overlays.png",
            priority = "extra-high",
            width = 333,
            height = 363,
            x = 333,
            shift = util.by_pixel_hr(-1, -1),
            scale = 0.5,
          },
        },
        {
          always_draw = true,
          north_animation = {
            filename = "__angelsrefininggraphics__/graphics/entity/ore-floatation-cell/vertical-pipe-shadow-patch.png",
            priority = "high",
            width = 128,
            height = 128,
            repeat_count = 36,
            draw_as_shadow = true,
            shift = { 0, -2 },
            scale = 0.5,
          },
          south_animation = {
            filename = "__angelsrefininggraphics__/graphics/entity/ore-floatation-cell/vertical-pipe-shadow-patch.png",
            priority = "high",
            width = 128,
            height = 128,
            repeat_count = 36,
            draw_as_shadow = true,
            shift = { 0, -2 },
            scale = 0.5,
          },
        },
      }, 0.81),
    },
    impact_category = "metal",
    working_sound = {
        sound = { filename = "__angelsrefininggraphics__/sound/ore-floatation-cell.ogg", volume = 1 },
        idle_sound = { filename = "__base__/sound/idle1.ogg", volume = 0.6 },
      },
    open_sound = sounds.machine_open,
    close_sound = sounds.machine_close
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
    forced_symmetry = "horizontal",
    energy_source = {
      type = "electric",
      usage_priority = "secondary-input",
      emissions_per_minute = {pollution = 1},
      drain = "15kW"
    },
    energy_usage = "385kW",
    resistances = {
      { type = "impact", decrease = 100, percent = 90 },
      { type = "acid", decrease = 50, percent = 80 }
    },
    circuit_connector = circuit_connector_definitions["nullius-flotation-cell"],
    circuit_wire_max_distance = default_circuit_wire_max_distance,
    module_slots = 2,
    allowed_effects = {"speed", "productivity", "consumption", "pollution"},
    fluid_boxes = {
      {
        production_type = "input",
        pipe_picture = floatpipepics,
        pipe_covers = pipecoverspictures(),
        volume = 500,
        pipe_connections = {{ flow_direction ="input", position = {-0.5, 1.5}, direction = defines.direction.south }}
      },
      {
        production_type = "input",
        pipe_picture = floatpipepics,
        pipe_covers = pipecoverspictures(),
        volume = 500,
        pipe_connections = {{ flow_direction ="input", position = {-1.5, -0.5}, direction = defines.direction.west }}
      },
      {
        production_type = "output",
        pipe_picture = floatpipepics,
        pipe_covers = pipecoverspictures(),
        volume = 500,
        pipe_connections = {{ flow_direction ="output", position = {0.5, -1.5}, direction = defines.direction.north }}
      },
      {
        production_type = "output",
        pipe_picture = floatpipepics,
        pipe_covers = pipecoverspictures(),
        volume = 500,
        pipe_connections = {{ flow_direction ="output", position = {1.5, 0.5}, direction = defines.direction.east }}
      }
    },
	  graphics_set = {
	    animation = scale_image({
          layers = {
            {
              filename = "__angelsrefininggraphics__/graphics/entity/ore-floatation-cell/ore-flotation-cell-base.png",
              priority = "extra-high",
              width = 333,
              height = 363,
              x = 333,
              shift = util.by_pixel_hr(-1, -1),
              scale = 0.5,
            },
            {
              filename = "__angelsrefininggraphics__/graphics/entity/ore-floatation-cell/ore-flotation-cell-shadow.png",
              priority = "extra-high",
              width = 390,
              height = 326,
              x = 390,
              shift = util.by_pixel_hr(29, 18),
              draw_as_shadow = true,
              scale = 0.5,
            },
          },
        }, 0.81),
	    working_visualisations = scale_image({
        {
          always_draw = true,
          animation = {
            filename = "__angelsrefininggraphics__/graphics/entity/ore-floatation-cell/ore-flotation-cell-animation-idle.png",
            priority = "extra-high",
            width = 166,
            height = 117,
            frame_count = 32,
            line_length = 8,
            shift = util.by_pixel_hr(62, 5),
            scale = 0.5,
          },
        },
        {
          fadeout = true,
          animation = {
            filename = "__angelsrefininggraphics__/graphics/entity/ore-floatation-cell/ore-flotation-cell-animation-base.png",
            priority = "extra-high",
            width = 166,
            height = 117,
            frame_count = 64,
            line_length = 8,
            shift = util.by_pixel_hr(62, 5),
            scale = 0.5,
          },
        },
        {
          fadeout = true,
          apply_recipe_tint = "primary",
          animation = {
            filename = "__angelsrefininggraphics__/graphics/entity/ore-floatation-cell/ore-flotation-cell-animation-water-tintable.png",
            priority = "extra-high",
            width = 166,
            height = 117,
            frame_count = 64,
            line_length = 8,
            shift = util.by_pixel_hr(62, 5),
            scale = 0.5,
          },
        },
        {
          fadeout = true,
          apply_recipe_tint = "secondary",
          animation = {
            filename = "__angelsrefininggraphics__/graphics/entity/ore-floatation-cell/ore-flotation-cell-animation-froth-tintable.png",
            priority = "extra-high",
            width = 166,
            height = 117,
            frame_count = 64,
            line_length = 8,
            shift = util.by_pixel_hr(62, 5),
            scale = 0.5,
          },
        },
        {
          always_draw = true,
          render_layer = "higher-object-under",
          north_animation = {
            filename = "__angelsrefininggraphics__/graphics/entity/ore-floatation-cell/ore-flotation-cell-pipe-cover-overlays.png",
            priority = "extra-high",
            width = 333,
            height = 363,
            shift = util.by_pixel_hr(-1, -1),
            scale = 0.5,
          },
          east_animation = {
            filename = "__angelsrefininggraphics__/graphics/entity/ore-floatation-cell/ore-flotation-cell-pipe-cover-overlays.png",
            priority = "extra-high",
            width = 333,
            height = 363,
            x = 333,
            shift = util.by_pixel_hr(-1, -1),
            scale = 0.5,
          },
          south_animation = {
            filename = "__angelsrefininggraphics__/graphics/entity/ore-floatation-cell/ore-flotation-cell-pipe-cover-overlays.png",
            priority = "extra-high",
            width = 333,
            height = 363,
            shift = util.by_pixel_hr(-1, -1),
            scale = 0.5,
          },
          west_animation = {
            filename = "__angelsrefininggraphics__/graphics/entity/ore-floatation-cell/ore-flotation-cell-pipe-cover-overlays.png",
            priority = "extra-high",
            width = 333,
            height = 363,
            x = 333,
            shift = util.by_pixel_hr(-1, -1),
            scale = 0.5,
          },
        },
        {
          always_draw = true,
          north_animation = {
            filename = "__angelsrefininggraphics__/graphics/entity/ore-floatation-cell/vertical-pipe-shadow-patch.png",
            priority = "high",
            width = 128,
            height = 128,
            repeat_count = 36,
            draw_as_shadow = true,
            shift = { 0, -2 },
            scale = 0.5,
          },
          south_animation = {
            filename = "__angelsrefininggraphics__/graphics/entity/ore-floatation-cell/vertical-pipe-shadow-patch.png",
            priority = "high",
            width = 128,
            height = 128,
            repeat_count = 36,
            draw_as_shadow = true,
            shift = { 0, -2 },
            scale = 0.5,
          },
        },
      }, 0.81),
	  },
    impact_category = "metal",
    working_sound = {
      sound = { filename = "__angelsrefininggraphics__/sound/ore-floatation-cell.ogg", volume = 1 },
      idle_sound = { filename = "__base__/sound/idle1.ogg", volume = 0.6 },
    },
    open_sound = sounds.machine_open,
    close_sound = sounds.machine_close
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
    forced_symmetry = "horizontal",
    energy_source = {
      type = "electric",
      usage_priority = "secondary-input",
      emissions_per_minute = {pollution = 1},
      drain = "30kW"
    },
    energy_usage = "770kW",
    resistances = {
      { type = "impact", decrease = 100, percent = 90 },
      { type = "acid", decrease = 50, percent = 80 }
    },
    circuit_connector = circuit_connector_definitions["nullius-flotation-cell"],
    circuit_wire_max_distance = default_circuit_wire_max_distance,
    module_slots = 3,
    allowed_effects = {"speed", "productivity", "consumption", "pollution"},
    fluid_boxes = {
      {
        production_type = "input",
        pipe_picture = floatpipepics,
        pipe_covers = pipecoverspictures(),
        volume = 500,
        pipe_connections = {{ flow_direction ="input", position = {-0.5, 1.5}, direction = defines.direction.south }}
      },
      {
        production_type = "input",
        pipe_picture = floatpipepics,
        pipe_covers = pipecoverspictures(),
        volume = 500,
        pipe_connections = {{ flow_direction ="input", position = {-1.5, -0.5}, direction = defines.direction.west }}
      },
      {
        production_type = "output",
        pipe_picture = floatpipepics,
        pipe_covers = pipecoverspictures(),
        volume = 500,
        pipe_connections = {{ flow_direction ="output", position = {0.5, -1.5}, direction = defines.direction.north }}
      },
      {
        production_type = "output",
        pipe_picture = floatpipepics,
        pipe_covers = pipecoverspictures(),
        volume = 500,
        pipe_connections = {{ flow_direction ="output", position = {1.5, 0.5}, direction = defines.direction.east }}
      }
    },
	  graphics_set = {
	    animation = scale_image({
          layers = {
            {
              filename = "__angelsrefininggraphics__/graphics/entity/ore-floatation-cell/ore-flotation-cell-base.png",
              priority = "extra-high",
              width = 333,
              height = 363,
              x = 333,
              shift = util.by_pixel_hr(-1, -1),
              scale = 0.5,
            },
            {
              filename = "__angelsrefininggraphics__/graphics/entity/ore-floatation-cell/ore-flotation-cell-shadow.png",
              priority = "extra-high",
              width = 390,
              height = 326,
              x = 390,
              shift = util.by_pixel_hr(29, 18),
              draw_as_shadow = true,
              scale = 0.5,
            },
          },
        }, 0.81),
	    working_visualisations = scale_image({
        {
          always_draw = true,
          animation = {
            filename = "__angelsrefininggraphics__/graphics/entity/ore-floatation-cell/ore-flotation-cell-animation-idle.png",
            priority = "extra-high",
            width = 166,
            height = 117,
            frame_count = 32,
            line_length = 8,
            shift = util.by_pixel_hr(62, 5),
            scale = 0.5,
          },
        },
        {
          fadeout = true,
          animation = {
            filename = "__angelsrefininggraphics__/graphics/entity/ore-floatation-cell/ore-flotation-cell-animation-base.png",
            priority = "extra-high",
            width = 166,
            height = 117,
            frame_count = 64,
            line_length = 8,
            shift = util.by_pixel_hr(62, 5),
            scale = 0.5,
          },
        },
        {
          fadeout = true,
          apply_recipe_tint = "primary",
          animation = {
            filename = "__angelsrefininggraphics__/graphics/entity/ore-floatation-cell/ore-flotation-cell-animation-water-tintable.png",
            priority = "extra-high",
            width = 166,
            height = 117,
            frame_count = 64,
            line_length = 8,
            shift = util.by_pixel_hr(62, 5),
            scale = 0.5,
          },
        },
        {
          fadeout = true,
          apply_recipe_tint = "secondary",
          animation = {
            filename = "__angelsrefininggraphics__/graphics/entity/ore-floatation-cell/ore-flotation-cell-animation-froth-tintable.png",
            priority = "extra-high",
            width = 166,
            height = 117,
            frame_count = 64,
            line_length = 8,
            shift = util.by_pixel_hr(62, 5),
            scale = 0.5,
          },
        },
        {
          always_draw = true,
          render_layer = "higher-object-under",
          north_animation = {
            filename = "__angelsrefininggraphics__/graphics/entity/ore-floatation-cell/ore-flotation-cell-pipe-cover-overlays.png",
            priority = "extra-high",
            width = 333,
            height = 363,
            shift = util.by_pixel_hr(-1, -1),
            scale = 0.5,
          },
          east_animation = {
            filename = "__angelsrefininggraphics__/graphics/entity/ore-floatation-cell/ore-flotation-cell-pipe-cover-overlays.png",
            priority = "extra-high",
            width = 333,
            height = 363,
            x = 333,
            shift = util.by_pixel_hr(-1, -1),
            scale = 0.5,
          },
          south_animation = {
            filename = "__angelsrefininggraphics__/graphics/entity/ore-floatation-cell/ore-flotation-cell-pipe-cover-overlays.png",
            priority = "extra-high",
            width = 333,
            height = 363,
            shift = util.by_pixel_hr(-1, -1),
            scale = 0.5,
          },
          west_animation = {
            filename = "__angelsrefininggraphics__/graphics/entity/ore-floatation-cell/ore-flotation-cell-pipe-cover-overlays.png",
            priority = "extra-high",
            width = 333,
            height = 363,
            x = 333,
            shift = util.by_pixel_hr(-1, -1),
            scale = 0.5,
          },
        },
        {
          always_draw = true,
          north_animation = {
            filename = "__angelsrefininggraphics__/graphics/entity/ore-floatation-cell/vertical-pipe-shadow-patch.png",
            priority = "high",
            width = 128,
            height = 128,
            repeat_count = 36,
            draw_as_shadow = true,
            shift = { 0, -2 },
            scale = 0.5,
          },
          south_animation = {
            filename = "__angelsrefininggraphics__/graphics/entity/ore-floatation-cell/vertical-pipe-shadow-patch.png",
            priority = "high",
            width = 128,
            height = 128,
            repeat_count = 36,
            draw_as_shadow = true,
            shift = { 0, -2 },
            scale = 0.5,
          },
        },
      }, 0.81),
	  },
    impact_category = "metal",
    working_sound = {
      sound = { filename = "__angelsrefininggraphics__/sound/ore-floatation-cell.ogg", volume = 1 },
      idle_sound = { filename = "__base__/sound/idle1.ogg", volume = 0.6 },
    },
    open_sound = sounds.machine_open,
    close_sound = sounds.machine_close
  }
})

local function tint_flotation_dir(dir, speed, tint)
  dir.layers[1].animation_speed = speed
  if (tint ~= nil) then dir.layers[1].tint = tint end
end
local function tint_flotation_cell(num, speed, tint)
  local machine = data.raw["assembling-machine"]["nullius-flotation-cell-"..num]
  tint_flotation_dir(machine.graphics_set.animation, speed, tint)
  machine.graphics_set.working_visualisations[5] = nil
  machine.graphics_set.working_visualisations[6] = nil
end
tint_flotation_cell(1, 0.4, {0.77, 0.77, 0.60})
tint_flotation_cell(2, 0.5, {0.8, 0.8, 1})
tint_flotation_cell(3, 0.6, nil)


if mods["reskins-bobs"] then
local small_animation = data.raw["assembling-machine"]["nullius-small-furnace-3"].graphics_set.animation
local medium_animation = data.raw["assembling-machine"]["nullius-medium-furnace-2"].graphics_set.animation
local large_animation = data.raw["assembling-machine"]["nullius-large-furnace-1"].graphics_set.animation
medium_animation.layers = {
  medium_animation.layers[1],
  {
      filename = "__reskins-bobs__/graphics/entity/assembly/electric-furnace/electric-furnace-mask.png",
      priority = "high",
      width = 238,
      height = 212,
      shift = util.by_pixel(1, 1),
      tint = tiercolor("red"),
      scale = 0.5
  },
  {
      filename = "__reskins-bobs__/graphics/entity/assembly/electric-furnace/electric-furnace-highlights.png",
      priority = "high",
      width = 238,
      height = 212,
      shift = util.by_pixel(1, 1),
      blend_mode = "additive",
      scale = 0.5
  },
  medium_animation.layers[2]
}
medium_animation.layers[1].tint = nil
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
    filename = "__reskins-bobs__/graphics/entity/assembly/electric-furnace/electric-furnace-mask.png",
    priority = "high",
    width = 238,
    height = 212,
    shift = util.by_pixel(1.333, 1.333),
    tint = tiercolor("red"),
    scale = 0.6666
  },
  {
    filename = "__reskins-bobs__/graphics/entity/assembly/electric-furnace/electric-furnace-highlights.png",
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

data.raw["assembling-machine"]["nullius-medium-furnace-3"].graphics_set.animation =
    util.table.deepcopy(data.raw["assembling-machine"]["nullius-medium-furnace-2"].graphics_set.animation)
data.raw["assembling-machine"]["nullius-large-furnace-2"].graphics_set.animation =
    util.table.deepcopy(data.raw["assembling-machine"]["nullius-large-furnace-1"].graphics_set.animation)
data.raw["assembling-machine"]["nullius-medium-furnace-3"].graphics_set.animation.layers[2].tint = tiercolor("deepblue")
data.raw["assembling-machine"]["nullius-large-furnace-2"].graphics_set.animation.layers[2].tint = tiercolor("deepblue")
end
