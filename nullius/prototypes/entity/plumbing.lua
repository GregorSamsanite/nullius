local ICONPATH = "__nullius__/graphics/icons/"
local ENTICONPATH = "__nullius__/graphics/icons/entity/"
local ENTITYPATH = "__nullius__/graphics/entity/"
local BASEENTITY = "__base__/graphics/entity/"

require("pipe_graphics")
collision_mask_util = require("collision-mask-util")
local sounds = require("__base__/prototypes/entity/sounds")

local op = table.deepcopy(data.raw["offshore-pump"]["offshore-pump"])
local si1 = {
  type = "assembling-machine",
  name = "nullius-seawater-intake-1",
  icons = data.raw.item["nullius-seawater-intake-1"].icons,
  minable = {mining_time = 0.5, result = "nullius-seawater-intake-1"},
  flags = {"placeable-neutral", "player-creation"},
  collision_mask = { layers = {object = true, ground_tile = true}},
  --collision_mask = {layers={object=true, train=true, is_object=true, is_lower_object=true}}, -- collide just with object-layer and train-layer which don't collide with water, this allows us to build on 1 tile wide ground
    tile_buildability_rules =
    {
      {area = {{-0.6, 1.7}, {0.6, 2.3}}, required_tiles = {layers={ground_tile=true}}, colliding_tiles = {layers={water_tile=true}}, remove_on_collision = true},
      --{area = {{-0.6, -1.3}, {0.6, 0.4}}, required_tiles = {layers={water_tile=true}}, colliding_tiles = {layers={}}},
    },
    
  placeable_position_visualization =
    {
      filename = "__core__/graphics/cursor-boxes-32x32.png",
      priority = "extra-high-no-scale",
      width = 64,
      height = 64,
      scale = 0.5,
      x = 3*64
    },
  crafting_categories = {"seawater-pumping"},
  crafting_speed = 1,
  fixed_recipe = "nullius-seawater",
  show_recipe_icon = false,
  show_recipe_icon_on_map = false,
  energy_source = {
    type = "electric",
	  usage_priority = "secondary-input",
	  emissions_per_minute = {pollution = 0.01},
	  drain = "10kW"
  },
  energy_usage = "190kW",
  ingredient_count = 1,
  max_health = 150,
  corpse = "small-remnants",
  dying_explosion = "offshore-pump-explosion",
  selection_box = {{-1.3, -1.3}, {1.3, 1.3}},
  collision_box = {{-1.3, -1.3}, {1.3, 1.3}},
  resistances = {
    { type = "impact", decrease = 100, percent = 90 },
    { type = "fire", decrease = 100, percent = 90 }
  },
  fluid_boxes = {{
	  production_type = "output",
    volume = 500,
    pipe_covers = pipecoverspictures(),
    filter = "nullius-seawater",
    pipe_connections = {{position = {0, 1}, flow_direction = "output", direction = defines.direction.south}}
  }},
  module_slots = 1,
  allowed_effects = {"speed", "consumption", "pollution"},
  fast_replaceable_group = "seawater-intake",
  next_upgrade = "nullius-seawater-intake-2",
  working_sound = op.working_sound,
  impact_category = op.impact_category,
  -- circuit_connector = circuit_connector_definitions["offshore-pump"],
  -- circuit_wire_max_distance = default_circuit_wire_max_distance,
  graphics_set = {}
}

si2 = util.table.deepcopy(si1)
si2.name = "nullius-seawater-intake-2"
si2.icons = data.raw.item["nullius-seawater-intake-2"].icons
si2.minable = {mining_time = 0.8, result = "nullius-seawater-intake-2"}
si2.crafting_speed = 4
si2.energy_source.drain = "50kW"
si2.energy_usage = "750kW"
si2.next_upgrade = nil
si2.max_health = 300
si2.fluid_boxes[1].volume = 500
si2.module_slots = 2

si2.graphics_set.animation = {
  north = scale_image({ layers = {
    animate_frame(op.graphics_set.glass_pictures.north),
    animate_frame(op.graphics_set.base_pictures.north),
	animate_frame(op.graphics_set.underwater_pictures.north),
	op.graphics_set.animation.north.layers[1],
	op.graphics_set.animation.north.layers[2]
  }}, 1.2, { x = 0, y = 0.9 }),
  east = scale_image({ layers = {
    animate_frame(op.graphics_set.glass_pictures.east),
    animate_frame(op.graphics_set.base_pictures.east),
	animate_frame(op.graphics_set.underwater_pictures.east),
	op.graphics_set.animation.east.layers[1],
	op.graphics_set.animation.east.layers[2]
  }}, 1.2, { x = -0.9, y = 0 }),
  south = scale_image({ layers = {
    animate_frame(op.graphics_set.glass_pictures.south),
    animate_frame(op.graphics_set.base_pictures.south),
	animate_frame(op.graphics_set.underwater_pictures.south),
	op.graphics_set.animation.south.layers[1],
	op.graphics_set.animation.south.layers[2]
  }}, 1.2, { x = 0, y = -0.9 }),
  west = scale_image({ layers = {
    animate_frame(op.graphics_set.glass_pictures.west),
    animate_frame(op.graphics_set.base_pictures.west),
	animate_frame(op.graphics_set.underwater_pictures.west),
	op.graphics_set.animation.west.layers[1],
	op.graphics_set.animation.west.layers[2]
  }}, 1.2, { x = 0.9, y = 0 })
}

si2.graphics_set.working_visualisations = {{
  apply_recipe_tint = "primary",
  north_animation = scale_image(op.graphics_set.fluid_animation.north,
      1.2, { x = 0, y = 0.9 }),
  east_animation = scale_image(op.graphics_set.fluid_animation.east,
      1.2, { x = -0.9, y = 0 }),
  south_animation = scale_image(op.graphics_set.fluid_animation.south,
      1.2, { x = 0, y = -0.9 }),
  west_animation = scale_image(op.graphics_set.fluid_animation.west,
      1.2, { x = 0.9, y = 0 })
}}

si1.graphics_set.animation = {
  north = scale_image(si2.graphics_set.animation.north, 0.75, { x = 0, y = 0.38 }),
  east = scale_image(si2.graphics_set.animation.east, 0.75, { x = -0.38, y = 0 }),
  south = scale_image(si2.graphics_set.animation.south, 0.75, { x = 0, y = -0.38 }),
  west = scale_image(si2.graphics_set.animation.west, 0.75, { x = 0.38, y = 0 })
}

local si2wv = si2.graphics_set.working_visualisations[1]
si1.graphics_set.working_visualisations = {{
  apply_recipe_tint = "primary",
  north_animation = scale_image(si2wv.north_animation, 0.75, { x = 0, y = 0.38 }),
  east_animation = scale_image(si2wv.east_animation, 0.75, { x = -0.38, y = 0 }),
  south_animation = scale_image(si2wv.south_animation, 0.75, { x = 0, y = -0.38 }),
  west_animation = scale_image(si2wv.west_animation, 0.75, { x = 0.38, y = 0 })
}}


data:extend({
  si1,
  si2,
  {
    type = "offshore-pump",
    name = "nullius-legacy-seawater-intake-1",
	  localised_name = {"entity-name.nullius-legacy",
	    {"entity-name.nullius-seawater-intake-1"}},
    localised_description = {"entity-description.nullius-seawater-intake-1"},
    icons = data.raw.item["nullius-legacy-seawater-intake-1"].icons,
    flags = {"placeable-neutral", "player-creation", "filter-directions",
	    "not-upgradable", "not-blueprintable"},
	  hidden = true,
	  energy_source = {
	    type = "void"
	  },
	  energy_usage = "60kW",
	  fluid_source_offset = op.fluid_source_offset,
    collision_mask = { layers = {object = true, train = true}},
    minable = {mining_time = 0.5, result = "nullius-seawater-intake-1"},
	  placeable_by = {item = "nullius-legacy-seawater-intake-1", count = 1},
    max_health = 150,
    corpse = "small-remnants",
    dying_explosion = "offshore-pump-explosion",
    --fluid = "nullius-seawater",
    collision_box = {{-0.6, -1.05}, {0.6, 0.3}},
    selection_box = {{-1, -1.49}, {1, 0.49}},
    pumping_speed = 2,
    fluid_box = {
      volume = 500,
      pipe_covers = pipecoverspictures(),
      production_type = "output",
      filter = "nullius-seawater",
      pipe_connections = {{position = {0, 0}, flow_direction = "output", direction = defines.direction.south}}
    },
    tile_width = 1,
    tile_height = 1,
    impact_category = op.impact_category,
    working_sound = op.working_sound,
    placeable_position_visualization = op.placeable_position_visualization,
    -- circuit_connector = circuit_connector_definitions["offshore-pump"],
    -- circuit_wire_max_distance = default_circuit_wire_max_distance,
    resistances = {
      { type = "impact", decrease = 100, percent = 90 },
      { type = "fire", percent = 75 }
    },

    graphics_set =
    {
      underwater_layer_offset = 15,
      base_render_layer = "ground-patch",
      animation =
      {
        north =
        {
          layers =
          {
            {
              filename = BASEENTITY .. "offshore-pump/offshore-pump_North.png",
              priority = "high",
              line_length = 8,
              frame_count = 32,
              animation_speed = 0.25,
              width = 90,
              height = 162,
              shift = util.by_pixel(-1*0.75, -15*0.75),
              scale = 0.5*0.75
            },
            {
              filename = BASEENTITY .. "offshore-pump/offshore-pump_North-shadow.png",
              priority = "high",
              line_length = 8,
              frame_count = 32,
              animation_speed = 0.25,
              width = 150,
              height = 134,
              shift = util.by_pixel(13*0.75, -7*0.75),
              draw_as_shadow = true,
              scale = 0.5*0.75
            }
          }
        },
        east =
        {
          layers =
          {
            {
              filename = BASEENTITY .. "offshore-pump/offshore-pump_East.png",
              priority = "high",
              line_length = 8,
              frame_count = 32,
              animation_speed = 0.25,
              width = 124,
              height = 102,
              shift = util.by_pixel(15*0.75, -2*0.75),
              scale = 0.5*0.75
            },
            {
              filename = BASEENTITY .. "offshore-pump/offshore-pump_East-shadow.png",
              priority = "high",
              line_length = 8,
              frame_count = 32,
              animation_speed = 0.25,
              width = 180,
              height = 66,
              shift = util.by_pixel(27*0.75, 8*0.75),
              draw_as_shadow = true,
              scale = 0.5*0.75
            }
          }
        },
        south =
        {
          layers =
          {
            {
              filename = BASEENTITY .. "offshore-pump/offshore-pump_South.png",
              priority = "high",
              line_length = 8,
              frame_count = 32,
              animation_speed = 0.25,
              width = 92,
              height = 192,
              shift = util.by_pixel(-1*0.75, 0),
              scale = 0.5*0.75
            },
            {
              filename = BASEENTITY .. "offshore-pump/offshore-pump_South-shadow.png",
              priority = "high",
              line_length = 8,
              frame_count = 32,
              animation_speed = 0.25,
              width = 164,
              height = 128,
              shift = util.by_pixel(15*0.75, 23*0.75),
              draw_as_shadow = true,
              scale = 0.5*0.75
            }
          }
        },
        west =
        {
          layers =
          {
            {
              filename = BASEENTITY .. "offshore-pump/offshore-pump_West.png",
              priority = "high",
              line_length = 8,
              frame_count = 32,
              animation_speed = 0.25,
              width = 124,
              height = 102,
              shift = util.by_pixel(-15*0.75, -2*0.75),
              scale = 0.5*0.75
            },
            {
              filename = BASEENTITY .. "offshore-pump/offshore-pump_West-shadow.png",
              priority = "high",
              line_length = 8,
              frame_count = 32,
              animation_speed = 0.25,
              width = 172,
              height = 66,
              shift = util.by_pixel(-3*0.75, 8*0.75),
              draw_as_shadow = true,
              scale = 0.5*0.75
            }
          }
        }
      },
      fluid_animation =
      {
        north =
        {
          filename = BASEENTITY .. "offshore-pump/offshore-pump_North-fluid.png",
          apply_runtime_tint = true,
          line_length = 8,
          frame_count = 32,
          animation_speed = 0.25,
          width = 40,
          height = 40,
          shift = util.by_pixel(-1*0.75, -22*0.75),
          scale = 0.5*0.75
        },
        east =
        {
          filename = BASEENTITY .. "offshore-pump/offshore-pump_East-fluid.png",
          apply_runtime_tint = true,
          line_length = 8,
          frame_count = 32,
          animation_speed = 0.25,
          width = 38,
          height = 50,
          shift = util.by_pixel(6*0.75, -11*0.75),
          scale = 0.5*0.75
        },
        south =
        {
          filename = BASEENTITY .. "offshore-pump/offshore-pump_South-fluid.png",
          apply_runtime_tint = true,
          line_length = 8,
          frame_count = 32,
          animation_speed = 0.25,
          width = 36,
          height = 14,
          shift = util.by_pixel(-1*0.75, -4*0.75),
          scale = 0.5*0.75
        },
        west =
        {
          filename = BASEENTITY .. "offshore-pump/offshore-pump_West-fluid.png",
          apply_runtime_tint = true,
          line_length = 8,
          frame_count = 32,
          animation_speed = 0.25,
          width = 36,
          height = 50,
          shift = util.by_pixel(-7*0.75, -11*0.75),
          scale = 0.5*0.75
        }
      },
      glass_pictures =
      {
        north =
        {
          filename = BASEENTITY .. "offshore-pump/offshore-pump_North-glass.png",
          width = 36,
          height = 40,
          shift = util.by_pixel(-2*0.75, -22*0.75),
          scale = 0.5*0.75
        },
        east =
        {
          filename = BASEENTITY .. "offshore-pump/offshore-pump_East-glass.png",
          width = 30,
          height = 32,
          shift = util.by_pixel(5*0.75, -13*0.75),
          scale = 0.5*0.75
        },
        south =
        {
          filename = BASEENTITY .. "offshore-pump/offshore-pump_South-glass.png",
          width = 40,
          height = 24,
          shift = util.by_pixel(-1*0.75, -6*0.75),
          scale = 0.5*0.75
        },
        west =
        {
          filename = BASEENTITY .. "offshore-pump/offshore-pump_West-glass.png",
          width = 30,
          height = 32,
          shift = util.by_pixel(-6*0.75, -14*0.75),
          scale = 0.5*0.75
        }
      },
      base_pictures =
      {
        north =
        {
          filename = BASEENTITY .. "offshore-pump/offshore-pump_North-legs.png",
          width = 114,
          height = 106,
          shift = util.by_pixel(-1*0.75, -5*0.75),
          scale = 0.5*0.75
        },
        east =
        {
          filename = BASEENTITY .. "offshore-pump/offshore-pump_East-legs.png",
          width = 106,
          height = 60,
          shift = util.by_pixel(4*0.75, 13*0.75),
          scale = 0.5*0.75
        },
        south =
        {
          filename = BASEENTITY .. "offshore-pump/offshore-pump_South-legs.png",
          width = 110,
          height = 108,
          shift = util.by_pixel(-2*0.75, 6*0.75),
          scale = 0.5*0.75
        },
        west =
        {
          filename = BASEENTITY .. "offshore-pump/offshore-pump_West-legs.png",
          width = 108,
          height = 64,
          shift = util.by_pixel(-6*0.75, 12*0.75),
          scale = 0.5*0.75
        }
      },
      underwater_pictures =
      {
        north =
        {
          filename = BASEENTITY .. "offshore-pump/offshore-pump_North-underwater.png",
          width = 98,
          height = 36,
          shift = util.by_pixel(-1*0.75, -32*0.75),
          scale = 0.5*0.75
        },
        east =
        {
          filename = BASEENTITY .. "offshore-pump/offshore-pump_East-underwater.png",
          width = 40,
          height = 72,
          shift = util.by_pixel(39*0.75, 17*0.75),
          scale = 0.5*0.75
        },
        south =
        {
          filename = BASEENTITY .. "offshore-pump/offshore-pump_South-underwater.png",
          width = 98,
          height = 48,
          shift = util.by_pixel(-1*0.75, 49*0.75),
          scale = 0.5*0.75
        },
        west =
        {
          filename = BASEENTITY .. "offshore-pump/offshore-pump_West-underwater.png",
          width = 40,
          height = 72,
          shift = util.by_pixel(-40*0.75, 17*0.75),
          scale = 0.5*0.75
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
    name = "nullius-legacy-seawater-intake-2",
	  localised_name = {"entity-name.nullius-legacy",
	    {"entity-name.nullius-seawater-intake-2"}},
    localised_description = {"entity-description.nullius-seawater-intake-2"},
	  icons = data.raw.item["nullius-legacy-seawater-intake-2"].icons,
    flags = {"placeable-neutral", "player-creation", "filter-directions",
	    "not-upgradable", "not-blueprintable"},
	  hidden = true,
	  energy_source = {
	    type = "void"
	  },
	  energy_usage = "60kW",
	  fluid_source_offset = op.fluid_source_offset,
    collision_mask = { layers = {object = true, train = true}},
    minable = {mining_time = 0.8, result = "nullius-seawater-intake-2"},
	  placeable_by = {item = "nullius-legacy-seawater-intake-2", count = 1},
    max_health = 300,
    corpse = "small-remnants",
    dying_explosion = "offshore-pump-explosion",
    --fluid = "nullius-seawater",
    collision_box = {{-0.6, -1.05}, {0.6, 0.3}},
    selection_box = {{-1, -1.49}, {1, 0.49}},
    pumping_speed = 10,
    fluid_box = {
      volume = 500,
      pipe_covers = pipecoverspictures(),
      production_type = "output",
      filter = "nullius-seawater",
      pipe_connections = {{position = {0, 0}, flow_direction = "output", direction = defines.direction.south}}
    },
    tile_width = 1,
    tile_height = 1,
    graphics_set = op.graphics_set,
    impact_category = op.impact_category,
    working_sound = op.working_sound,
    placeable_position_visualization = op.placeable_position_visualization,
    -- circuit_connector = circuit_connector_definitions["offshore-pump"],
    -- circuit_wire_max_distance = default_circuit_wire_max_distance,
    water_reflection = op.water_reflection,
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
    energy_source = {
	    type = "electric",
	    usage_priority = "secondary-input",
	    emissions_per_minute = {pollution = 0.02},
	    drain = "20kW"
	  },
    energy_usage = "280kW",
    ingredient_count = 1,
    minable = {mining_time = 1, result = "nullius-well-1"},
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
    open_sound = {filename = "__base__/sound/open-close/pumpjack-open.ogg", volume = 0.5},
    close_sound = {filename = "__base__/sound/open-close/pumpjack-close.ogg", volume = 0.5},
    impact_category = data.raw["offshore-pump"]["offshore-pump"].impact_category,
    fluid_boxes = {
      {
        production_type = "output",
        volume = 500,
        pipe_covers = pipecoverspictures(),
        pipe_connections = {
          { positions = { {1, -1}, {1, -1}, {-1, 1}, {-1, 1} }, direction = defines.direction.north }
        }
      }
    },
    module_slots = 1,
    allowed_effects = {"speed", "consumption", "pollution"},
    fast_replaceable_group = "well",
    next_upgrade = "nullius-well-2",
    
    circuit_connector = circuit_connector_definitions["pumpjack"],
    circuit_wire_max_distance = default_circuit_wire_max_distance,

    graphics_set = {
      animation = {
        north = {
          layers = {
            {
              filename = BASEENTITY .. "pumpjack/pumpjack-base.png",
              priority = "extra-high",
              width = 261,
              height = 273,
              repeat_count = 40,
              animation_speed = 0.4,
              shift = util.by_pixel(-2.25, -4.75),
              scale = 0.5
            },
            {
              filename = BASEENTITY .. "pumpjack/pumpjack-base-shadow.png",
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
              filename = ENTITYPATH .. "wells/pumpjack-decolorized.png",
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
              filename = BASEENTITY .. "pumpjack/pumpjack-horsehead-shadow.png",
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
              filename = BASEENTITY .. "pumpjack/pumpjack-base.png",
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
              filename = BASEENTITY .. "pumpjack/pumpjack-base-shadow.png",
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
              filename = ENTITYPATH .. "wells/pumpjack-decolorized.png",
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
              filename = BASEENTITY .. "pumpjack/pumpjack-horsehead-shadow.png",
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
              filename = BASEENTITY .. "pumpjack/pumpjack-base.png",
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
              filename = BASEENTITY .. "pumpjack/pumpjack-base-shadow.png",
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
              filename = ENTITYPATH .. "wells/pumpjack-decolorized.png",
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
              filename = BASEENTITY .. "pumpjack/pumpjack-horsehead-shadow.png",
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
              filename = BASEENTITY .. "pumpjack/pumpjack-base.png",
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
              filename = BASEENTITY .. "pumpjack/pumpjack-base-shadow.png",
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
              filename = ENTITYPATH .. "wells/pumpjack-decolorized.png",
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
              filename = BASEENTITY .. "pumpjack/pumpjack-horsehead-shadow.png",
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
    energy_source = {
	  type = "electric",
	  usage_priority = "secondary-input",
	  emissions_per_minute = {pollution = 0.05},
	  drain = "100kW"
	},
    energy_usage = "1100kW",
    ingredient_count = 1,
    minable = {mining_time = 1.5, result = "nullius-well-2"},
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
    open_sound = {filename = "__base__/sound/open-close/pumpjack-open.ogg", volume = 0.5},
    close_sound = {filename = "__base__/sound/open-close/pumpjack-close.ogg", volume = 0.5},
    impact_category = data.raw["offshore-pump"]["offshore-pump"].impact_category,
    fluid_boxes = {
      {
        production_type = "output",
        volume = 500,
        pipe_covers = pipecoverspictures(),
        pipe_connections = {
          { positions = { {1, -1}, {1, -1}, {-1, 1}, {-1, 1} }, direction = defines.direction.north }
        }
      }
    },
    module_slots = 2,
    allowed_effects = {"speed", "consumption", "pollution"},
    fast_replaceable_group = "well",
    
    circuit_connector = circuit_connector_definitions["pumpjack"],
    circuit_wire_max_distance = default_circuit_wire_max_distance,
    
    graphics_set = {
      animation = {
        north = {
          layers = {
            {
              filename = BASEENTITY .. "pumpjack/pumpjack-base.png",
              priority = "extra-high",
              width = 261,
              height = 273,
              repeat_count = 40,
              animation_speed = 0.6,
              shift = util.by_pixel(-2.25, -4.75),
              scale = 0.5
            },
            {
              filename = BASEENTITY .. "pumpjack/pumpjack-base-shadow.png",
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
              filename = ENTITYPATH .. "wells/pumpjack-decolorized.png",
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
              filename = BASEENTITY .. "pumpjack/pumpjack-horsehead-shadow.png",
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
              filename = BASEENTITY .. "pumpjack/pumpjack-base.png",
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
              filename = BASEENTITY .. "pumpjack/pumpjack-base-shadow.png",
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
              filename = ENTITYPATH .. "wells/pumpjack-decolorized.png",
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
              filename = BASEENTITY .. "pumpjack/pumpjack-horsehead-shadow.png",
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
              filename = BASEENTITY .. "pumpjack/pumpjack-base.png",
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
              filename = BASEENTITY .. "pumpjack/pumpjack-base-shadow.png",
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
              filename = ENTITYPATH .. "wells/pumpjack-decolorized.png",
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
              filename = BASEENTITY .. "pumpjack/pumpjack-horsehead-shadow.png",
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
              filename = BASEENTITY .. "pumpjack/pumpjack-base.png",
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
              filename = BASEENTITY .. "pumpjack/pumpjack-base-shadow.png",
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
              filename = ENTITYPATH .. "wells/pumpjack-decolorized.png",
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
              filename = BASEENTITY .. "pumpjack/pumpjack-horsehead-shadow.png",
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
    }
  }
})

local lw1 = util.table.deepcopy(data.raw["assembling-machine"]["nullius-well-1"])
lw1.name = "nullius-legacy-well-1"
lw1.localised_name = {"entity-name.nullius-legacy", {"entity-name.nullius-well-1"}}
lw1.icons = data.raw.item["nullius-legacy-well-1"].icons
lw1.flags = {"placeable-neutral", "player-creation", "not-upgradable", "not-blueprintable"}
lw1.hidden = true
lw1.placeable_by = {item = "nullius-legacy-well-1", count = 1}
lw1.fast_replaceable_group = nil
lw1.next_upgrade = nil
lw1.energy_source = {type="electric", usage_priority="secondary-input", emissions_per_minute = {pollution = 0.01}, drain="1kW"}
lw1.energy_usage = "49kW"
lw1.crafting_speed = 1.25

local lw2 = util.table.deepcopy(data.raw["assembling-machine"]["nullius-well-2"])
lw2.name = "nullius-legacy-well-2"
lw2.localised_name = {"entity-name.nullius-legacy", {"entity-name.nullius-well-2"}}
lw2.icons = data.raw.item["nullius-legacy-well-2"].icons
lw2.flags = {"placeable-neutral", "player-creation", "not-upgradable", "not-blueprintable"}
lw2.hidden = true
lw2.placeable_by = {item = "nullius-legacy-well-2", count = 1}
lw2.fast_replaceable_group = nil
lw2.energy_source = {type="electric", usage_priority="secondary-input", emissions_per_minute = {pollution = 0.02}, drain="5kW"}
lw2.energy_usage = "175kW"
lw2.crafting_speed = 5

circuit_connector_definitions["nullius-air-filter"] = circuit_connector_definitions.create_vector(universal_connector_template, {
  { variation =  4, main_offset = util.by_pixel(-4.375,  -20), shadow_offset = util.by_pixel(-4.375,  -20), show_shadow = true },
  { variation =  4, main_offset = util.by_pixel(-4.375,  -20), shadow_offset = util.by_pixel(-4.375,  -20), show_shadow = true },
  { variation =  4, main_offset = util.by_pixel(-4.375,  -20), shadow_offset = util.by_pixel(-4.375,  -20), show_shadow = true },
  { variation =  4, main_offset = util.by_pixel(-4.375,  -20), shadow_offset = util.by_pixel(-4.375,  62.625), show_shadow = true },
})

data:extend({
  lw1,
  lw2,
  {
    type = "assembling-machine",
    name = "nullius-air-filter-1",
    icons = data.raw.item["nullius-air-filter-1"].icons,
    flags = {"placeable-neutral", "player-creation"},
    crafting_categories = {"air-filtration"},
    crafting_speed = 1,
    fixed_recipe = "nullius-air",
    energy_source = {
	    type = "electric",
	    usage_priority = "secondary-input",
	    emissions_per_minute = {pollution = 0.01},
	    drain = "5kW"
	  },
    energy_usage = "115kW",
    ingredient_count = 1,
    minable = {mining_time = 0.6, result = "nullius-air-filter-1"},
    max_health = 200,
    corpse = "medium-remnants",
    dying_explosion = "medium-explosion",
    collision_box = {{-1.1, -1.1}, {1.1, 1.1}},
    selection_box = {{-1.5, -1.5}, {1.5, 1.5}},
    fast_replaceable_group = "air-filter",
    next_upgrade = "nullius-air-filter-2",
    circuit_connector = circuit_connector_definitions["nullius-air-filter"],
    circuit_wire_max_distance = default_circuit_wire_max_distance,
    graphics_set = {
      animation = {
        north = {
          filename = "__angelspetrochemgraphics__/graphics/entity/air-filter/air-filter.png",
          width = 256,
          height = 256,
          frame_count = 36,
          line_length = 6,
          shift = {0.2, -0.4+0.25},
          animation_speed = 0.5,
          scale = 0.5
        },
        east = {
          filename = "__angelspetrochemgraphics__/graphics/entity/air-filter/air-filter.png",
          width = 256,
          height = 256,
          frame_count = 36,
          line_length = 6,
          shift = {0.2-0.25, -0.4},
          animation_speed = 0.5,
          scale = 0.5
        },
        south = {
          filename = "__angelspetrochemgraphics__/graphics/entity/air-filter/air-filter.png",
          width = 256,
          height = 256,
          frame_count = 36,
          line_length = 6,
          shift = {0.2, -0.4-0.25},
          animation_speed = 0.5,
          scale = 0.5
        },
        west = {
          filename = "__angelspetrochemgraphics__/graphics/entity/air-filter/air-filter.png",
          width = 256,
          height = 256,
          frame_count = 36,
          line_length = 6,
          shift = {0.2+0.25, -0.4},
          animation_speed = 0.5,
          scale = 0.5
        }
      }
    },
    resistances = {
      { type = "impact", decrease = 100, percent = 90 },
      { type = "fire", percent = 75 }
    },
    working_sound = {
      sound = { filename = "__base__/sound/idle1.ogg", volume = 1 },
      idle_sound = { filename = "__base__/sound/idle1.ogg", volume = 0.6 },
    },
    open_sound = sounds.steam_open,
    close_sound = sounds.steam_close,
    impact_category = "metal",
    fluid_boxes = {
      {
        production_type = "output",
        pipe_covers = pipecoverspictures(),
        volume = 500,
        pipe_connections = {{ position = {0, 1}, flow_direction = "output", direction = defines.direction.south }}
      },
    }
  }
})

data:extend({
  {
    type = "assembling-machine",
    name = "nullius-air-filter-2",
    icons = data.raw.item["nullius-air-filter-2"].icons,
    flags = {"placeable-neutral", "player-creation"},
    crafting_categories = {"air-filtration"},
    crafting_speed = 3,
    fixed_recipe = "nullius-air",
    energy_source = {
	    type = "electric",
	    usage_priority = "secondary-input",
	    emissions_per_minute = {pollution = 0.03},
	    drain = "25kW"
	  },
    energy_usage = "375kW",
    ingredient_count = 1,
    minable = {mining_time = 0.8, result = "nullius-air-filter-2"},
    max_health = 300,
    corpse = "medium-remnants",
    dying_explosion = "medium-explosion",
    collision_box = {{-1.1, -1.1}, {1.1, 1.1}},
    selection_box = {{-1.5, -1.5}, {1.5, 1.5}},
    fast_replaceable_group = "air-filter",
    next_upgrade = "nullius-air-filter-3",
    circuit_connector = circuit_connector_definitions["nullius-air-filter"],
    circuit_wire_max_distance = default_circuit_wire_max_distance,
    graphics_set = {
      animation = {
        north = {
          filename = "__angelspetrochemgraphics__/graphics/entity/air-filter/air-filter.png",
          width = 256,
          height = 256,
          frame_count = 36,
          line_length = 6,
          shift = {0.2, -0.4+0.125},
          animation_speed = 0.5,
          scale = 0.55
        },
        east = {
          filename = "__angelspetrochemgraphics__/graphics/entity/air-filter/air-filter.png",
          width = 256,
          height = 256,
          frame_count = 36,
          line_length = 6,
          shift = {0.2-0.125, -0.4},
          animation_speed = 0.5,
          scale = 0.55
        },
        south = {
          filename = "__angelspetrochemgraphics__/graphics/entity/air-filter/air-filter.png",
          width = 256,
          height = 256,
          frame_count = 36,
          line_length = 6,
          shift = {0.2, -0.4-0.125},
          animation_speed = 0.5,
          scale = 0.55
        },
        west = {
          filename = "__angelspetrochemgraphics__/graphics/entity/air-filter/air-filter.png",
          width = 256,
          height = 256,
          frame_count = 36,
          line_length = 6,
          shift = {0.2+0.125, -0.4},
          animation_speed = 0.5,
          scale = 0.55
        }
      }
    },
    resistances = {
      { type = "impact", decrease = 100, percent = 90 },
      { type = "fire", percent = 75 }
    },
    module_slots = 1,
    allowed_effects = {"speed", "consumption", "pollution"},
    working_sound = data.raw["assembling-machine"]["nullius-air-filter-1"].working_sound,
    open_sound = sounds.steam_open,
    close_sound = sounds.steam_close,
    impact_category = "metal",
    fluid_boxes = {
      {
        production_type = "output",
        pipe_covers = pipecoverspictures(),
        volume = 500,
        pipe_connections = {{ position = {0, 1}, flow_direction = "output", direction = defines.direction.south }}
      },
    }
  },

  {
    type = "assembling-machine",
    name = "nullius-air-filter-3",
    icons = data.raw.item["nullius-air-filter-3"].icons,
    flags = {"placeable-neutral", "player-creation"},
    crafting_categories = {"air-filtration"},
    crafting_speed = 8,
    fixed_recipe = "nullius-air",
    energy_source = {
	    type = "electric",
	    usage_priority = "secondary-input",
	    emissions_per_minute = {pollution = 0.1},
	    drain = "100kW"
	  },
    energy_usage = "1100kW",
    ingredient_count = 1,
    minable = {mining_time = 1, result = "nullius-air-filter-3"},
    max_health = 400,
    corpse = "medium-remnants",
    dying_explosion = "medium-explosion",
    collision_box = {{-1.1, -1.1}, {1.1, 1.1}},
    selection_box = {{-1.5, -1.5}, {1.5, 1.5}},
    fast_replaceable_group = "air-filter",
    circuit_connector = circuit_connector_definitions["nullius-air-filter"],
    circuit_wire_max_distance = default_circuit_wire_max_distance,
    graphics_set = {
      animation = {
        filename = "__angelspetrochemgraphics__/graphics/entity/air-filter/air-filter.png",
        width = 256,
        height = 256,
        frame_count = 36,
        line_length = 6,
        shift = {0.3, -0.4},
        animation_speed = 0.6,
        scale = 0.6
      }
    },
    resistances = {
      { type = "impact", decrease = 100, percent = 90 },
      { type = "fire", percent = 75 }
    },
    module_slots = 2,
    allowed_effects = {"speed", "consumption", "pollution"},
    working_sound = data.raw["assembling-machine"]["nullius-air-filter-1"].working_sound,
    open_sound = sounds.steam_open,
    close_sound = sounds.steam_close,
    impact_category = "metal",
    fluid_boxes = {
      {
        production_type = "output",
        pipe_covers = pipecoverspictures(),
        volume = 500,
        pipe_connections = {{ position = {0, 1}, flow_direction = "output", direction = defines.direction.south }}
      },
    }
  },
  
  ---------------------------------------- VALVES -----------------------------------------------
  {
            type = "storage-tank",
            name = "nullius-pump-gauge-input",
            localised_name = {"", {"entity-name.configurable-valve"}, " input gauge"},
            icon = "__base__/graphics/icons/storage-tank.png",
            flags = {
                "not-repairable",
                "not-on-map",
                "not-deconstructable",
                "not-blueprintable",
                "not-flammable",
                "not-upgradable",
                "not-in-kill-statistics",
                "placeable-off-grid", -- To be directly above pump position
                "hide-alt-info",
            },
            selectable_in_game = false,
            selection_priority = 1,
            hidden = true,
            max_health = 500,
            --collision_box = {{-0.29, -0.45}, {0.29, 0.45}},
            collision_box = {{-0.29, -0.9}, {0.29, 0.9}}, --from pump
            collision_mask = { layers = { } }, -- collide with nothing
            selection_box = {{-0.5, -0.5}, {0.5, 0.5}},
            fluid_box = {
                volume = 100,
                pipe_covers = pipecoverspictures(),
                pipe_connections = {
                    { direction = defines.direction.south, position = {0, 0.5}, flow_direction = "input-output" },
                    { connection_type = "linked", flow_direction = "input-output", linked_connection_id=31113 }
                },
                hide_connection_info = true,
                max_pipeline_extent = 1000000, -- Big number, nobody would build this big right?
            },
            show_fluid_icon = false,
            window_bounding_box = {{0,0}, {0,0}},
            flow_length_in_ticks = 360,
            circuit_connector = circuit_connector_definitions["storage-tank"],
            circuit_wire_max_distance = default_circuit_wire_max_distance,
        },
        {
            type = "storage-tank",
            name = "nullius-pump-gauge-output",
            localised_name = {"", {"entity-name.configurable-valve"}, " output gauge"},
            icon = "__base__/graphics/icons/storage-tank.png",
            flags = {
                "not-repairable",
                "not-on-map",
                "not-deconstructable",
                "not-blueprintable",
                "not-flammable",
                "not-upgradable",
                "not-in-kill-statistics",
                "placeable-off-grid", -- To be directly above pump position
                "hide-alt-info",
            },
            selectable_in_game = false,
            selection_priority = 1,
            hidden = true,
            max_health = 500,
            --collision_box = {{-0.29, -0.45}, {0.29, 0.45}},
            collision_box = {{-0.29, -0.9}, {0.29, 0.9}}, --from pump
            collision_mask = { layers = { } }, -- collide with nothing
            selection_box = {{-0.5, -0.5}, {0.5, 0.5}},
            fluid_box = {
                volume = 100,
                pipe_covers = pipecoverspictures(),
                pipe_connections = {
                    { connection_type = "linked", flow_direction = "input-output", linked_connection_id=31113 },
                    { direction = defines.direction.north, position = {0, -0.5}, flow_direction = "input-output" }
                    
                    --{ position = {0, -0.5}, flow_direction = "output", direction = defines.direction.north },
                    --{ position = {0, 0.5}, flow_direction = "input", direction = defines.direction.south }
                },
                hide_connection_info = true,
                max_pipeline_extent = 1000000, -- Big number, nobody would build this big right?
            },
            show_fluid_icon = false,
            window_bounding_box = {{0,0}, {0,0}},
            flow_length_in_ticks = 360,
            circuit_connector = circuit_connector_definitions["storage-tank"],
            circuit_wire_max_distance = default_circuit_wire_max_distance,
        },
    {
    type = "valve",
    name = "nullius-priority-valve",
    icon = "__angelspetrochemgraphics__/graphics/icons/valve-inspector.png",
    icon_size = 32,
    flags = {"placeable-player", "player-creation"},
    hidden = true,
    --minable = {mining_time = 0.2, result = "nullius-priority-valve"},
    max_health = 80,
    corpse = "small-remnants",
    resistances = {
      { type = "impact", decrease = 100, percent = 90 },
      { type = "fire", percent = 75 }
    },
    fast_replaceable_group = "pipe",
    collision_box = {{-0.29, -0.29}, {0.29, 0.29}},
    selection_box = {{-0.5, -0.5}, {0.5, 0.5}},
    fluid_box = {
      volume = 100,
      pipe_connections = {
        {flow_direction = "output", position = {0, 0}, direction = defines.direction.south},
        {flow_direction = "input-output", position = {0, -0}, direction = defines.direction.north }
      },
	    pipe_covers = pipecoverspictures()
    },

    impact_category = "metal",
    
    mode = "overflow",
    threshold = 0.25,
    flow_rate = 50,
    
    animations = {
      north = {
		    layers = {
		      {
            filename = "__boblogistics__/graphics/entity/pipe/steel/pipe-straight-vertical.png",
            frame_count = 1,
            width = 128,
            height = 64,
            scale = 0.5,
            shift = {0, -0.5}
          },
          {
            filename = "__angelspetrochemgraphics__/graphics/entity/valve/valve-inspector.png",
            priority = "extra-high",
            frame_count = 1,
            width = 64,
            height = 64
		  	  }
		    }
      },
      east = {
          filename = "__angelspetrochemgraphics__/graphics/entity/valve/valve-inspector.png",
          priority = "extra-high",
          x = 64,
          frame_count = 1,
          width = 64,
          height = 64,
          shift = {0, 0}
      },
      south = {
		    layers = {
		      {
            filename = "__boblogistics__/graphics/entity/pipe/steel/pipe-straight-vertical.png",
            frame_count = 1,
            width = 128,
            height = 64,
			      scale = 0.5,
			      shift = {0, -0.5}
			    },
		      {
            filename = "__angelspetrochemgraphics__/graphics/entity/valve/valve-inspector.png",
            priority = "extra-high",
            x = 128,
            frame_count = 1,
            width = 64,
            height = 64,
            shift = {0, -0.05}
			    }
		    }
      },
      west = {
        filename = "__angelspetrochemgraphics__/graphics/entity/valve/valve-inspector.png",
        priority = "extra-high",
        x = 192,
        frame_count = 1,
        width = 64,
        height = 64,
        shift = {0, 0}
      }
    }
  },
  
  {
    type = "valve",
    name = "nullius-one-way-valve",
    icon = "__angelspetrochemgraphics__/graphics/icons/valve-overflow.png",
    icon_size = 32,
    flags = {"placeable-player", "player-creation"},
    minable = {mining_time = 0.2, result = "nullius-one-way-valve"},
    max_health = 80,
    corpse = "small-remnants",
    resistances = {
      { type = "impact", decrease = 100, percent = 90 },
      { type = "fire", percent = 75 }
    },
    fast_replaceable_group = "pipe",
    collision_box = {{-0.29, -0.29}, {0.29, 0.29}},
    selection_box = {{-0.5, -0.5}, {0.5, 0.5}},
    fluid_box = {
      volume = 100,
      pipe_connections = {
        {flow_direction = "output", position = {0, 0}, direction = defines.direction.south},
        {flow_direction = "input-output", position = {0, 0}, direction = defines.direction.north }
      },
	    pipe_covers = pipecoverspictures()
    },

    impact_category = "metal",
    
    mode = "one-way",
    flow_rate = 5,
    
    animations = {
      north = {
		    layers = {
		      {
            filename = "__boblogistics__/graphics/entity/pipe/steel/pipe-straight-vertical.png",
            frame_count = 1,
            width = 128,
            height = 64,
            scale = 0.5,
            shift = {0, -0.5}
			    },
			    {
            filename = "__angelspetrochemgraphics__/graphics/entity/valve/valve-overflow.png",
            priority = "extra-high",
            frame_count = 1,
            width = 64,
            height = 64
			    }
		    }
      },
      east = {
          filename = "__angelspetrochemgraphics__/graphics/entity/valve/valve-overflow.png",
          priority = "extra-high",
          x = 64,
          frame_count = 1,
          width = 64,
          height = 64,
          shift = {0, 0}
      },
      south = {
		    layers = {
		      {
            filename = "__boblogistics__/graphics/entity/pipe/steel/pipe-straight-vertical.png",
            frame_count = 1,
            width = 128,
            height = 64,
			      scale = 0.5,
			      shift = {0, -0.5}
			    },
		      {
            filename = "__angelspetrochemgraphics__/graphics/entity/valve/valve-overflow.png",
            priority = "extra-high",
            x = 128,
            frame_count = 1,
            width = 64,
            height = 64,
            shift = {0, -0.05}
			    }
		    }
      },
      west = {
        filename = "__angelspetrochemgraphics__/graphics/entity/valve/valve-overflow.png",
        priority = "extra-high",
        x = 192,
        frame_count = 1,
        width = 64,
        height = 64,
        shift = {0, 0}
      }
    }
  },

  {
    type = "valve",
    name = "nullius-top-up-valve",
    icon = "__angelspetrochemgraphics__/graphics/icons/valve-underflow.png",
    icon_size = 32,
    flags = {"placeable-player", "player-creation"},
    hidden = true,
    --minable = {mining_time = 0.2, result = "nullius-top-up-valve"},
    max_health = 80,
    corpse = "small-remnants",
    resistances = {
      { type = "impact", decrease = 100, percent = 90 },
      { type = "fire", percent = 75 }
    },
    fast_replaceable_group = "pipe",
    collision_box = {{-0.29, -0.29}, {0.29, 0.29}},
    selection_box = {{-0.5, -0.5}, {0.5, 0.5}},
    fluid_box = {
      volume = 100,
      pipe_connections = {
        {flow_direction = "output", position = {0, 0}, direction = defines.direction.south},
        {flow_direction = "input-output", position = {0, 0}, direction = defines.direction.north }
      },
	    pipe_covers = pipecoverspictures()
    },

    impact_category = "metal",
    
    mode = "top-up",
    threshold = 0.5,
    flow_rate = 50,
    
    animations = {
      north = {
		    layers = {
		      {
            filename = "__boblogistics__/graphics/entity/pipe/steel/pipe-straight-vertical.png",
            frame_count = 1,
            width = 128,
            height = 64,
            scale = 0.5,
            shift = {0, -0.5}
			    },
			    {
            filename = "__angelspetrochemgraphics__/graphics/entity/valve/valve-underflow.png",
            priority = "extra-high",
            frame_count = 1,
            width = 64,
            height = 64
			    }
		    }
      },
      east = {
        filename = "__angelspetrochemgraphics__/graphics/entity/valve/valve-underflow.png",
        priority = "extra-high",
        x = 64,
        frame_count = 1,
        width = 64,
        height = 64,
        shift = {0, 0}
      },
      south = {
		    layers = {
		      {
            filename = "__boblogistics__/graphics/entity/pipe/steel/pipe-straight-vertical.png",
            frame_count = 1,
            width = 128,
            height = 64,
            scale = 0.5,
            shift = {0, -0.5}
			    },
			    {
            filename = "__angelspetrochemgraphics__/graphics/entity/valve/valve-underflow.png",
            priority = "extra-high",
            x = 128,
            frame_count = 1,
            width = 64,
            height = 64,
            shift = {0, -0.05}
			    }
		    }
      },
      west = {
        filename = "__angelspetrochemgraphics__/graphics/entity/valve/valve-underflow.png",
        priority = "extra-high",
        x = 192,
        frame_count = 1,
        width = 64,
        height = 64,
        shift = {0, 0}
      }
    }
  },

  {
    type = "valve",
    name = "nullius-relief-valve",
    icon = "__angelspetrochemgraphics__/graphics/icons/valve-return.png",
    icon_size = 32,
    flags = {"placeable-player", "player-creation"},
    hidden = true,
    --minable = {mining_time = 0.2, result = "nullius-relief-valve"},
    max_health = 80,
    corpse = "small-remnants",
    resistances = {
      { type = "impact", decrease = 100, percent = 90 },
      { type = "fire", percent = 75 }
    },
    fast_replaceable_group = "pipe",
    collision_box = {{-0.29, -0.29}, {0.29, 0.29}},
    selection_box = {{-0.5, -0.5}, {0.5, 0.5}},
    fluid_box = {
      volume = 100,
      pipe_connections = {
        {flow_direction = "output", position = {0, 0}, direction = defines.direction.south},
        {flow_direction = "input-output", position = {0, 0}, direction = defines.direction.north }
      },
	    pipe_covers = pipecoverspictures()
    },

    impact_category = "metal",
    
    mode = "overflow",
    threshold = 0.75,
    flow_rate = 50,
    
    animations = {
      north = {
		    layers = {
		      {
            filename = "__boblogistics__/graphics/entity/pipe/steel/pipe-straight-vertical.png",
            frame_count = 1,
            width = 128,
            height = 64,
            scale = 0.5,
            shift = {0, -0.5}
			    },
			    {
            filename = "__angelspetrochemgraphics__/graphics/entity/valve/valve-return.png",
            priority = "extra-high",
            frame_count = 1,
            width = 64,
            height = 64
			    }
		    }
      },
      east = {
        filename = "__angelspetrochemgraphics__/graphics/entity/valve/valve-return.png",
        priority = "extra-high",
        x = 64,
        frame_count = 1,
        width = 64,
        height = 64,
        shift = {0, 0}
      },
      south = {
		    layers = {
		      {
            filename = "__boblogistics__/graphics/entity/pipe/steel/pipe-straight-vertical.png",
            frame_count = 1,
            width = 128,
            height = 64,
            scale = 0.5,
            shift = {0, -0.5}
			    },
			    {
            filename = "__angelspetrochemgraphics__/graphics/entity/valve/valve-return.png",
            priority = "extra-high",
            x = 128,
            frame_count = 1,
            width = 64,
            height = 64,
            shift = {0, -0.05}
			    }
		    }
      },
      west = {
        filename = "__angelspetrochemgraphics__/graphics/entity/valve/valve-return.png",
        priority = "extra-high",
        x = 192,
        frame_count = 1,
        width = 64,
        height = 64,
        shift = {0, 0}
      }
    }
  }
})

circuit_connector_definitions["nullius-small-tank"] = circuit_connector_definitions.create_vector(universal_connector_template, {
  { variation = 25, main_offset = util.by_pixel(-25.125, -23), shadow_offset = util.by_pixel(-25.125, -23), show_shadow = true },
  { variation = 25, main_offset = util.by_pixel(-25.125, -23), shadow_offset = util.by_pixel(-25.125, -23), show_shadow = true },
  { variation = 25, main_offset = util.by_pixel(-25.125, -23), shadow_offset = util.by_pixel(-25.125, -23), show_shadow = true },
  { variation = 25, main_offset = util.by_pixel(-25.125, -23), shadow_offset = util.by_pixel(-25.125, -23), show_shadow = true },
})

data:extend({
  {
    type = "storage-tank",
    name = "nullius-medium-tank-2",
    icons = data.raw.item["nullius-medium-tank-2"].icons,
    flags = {"placeable-player", "player-creation"},
    minable = {mining_time=1.2, result="nullius-medium-tank-2"},
    max_health = 500,
    next_upgrade = "nullius-medium-tank-3",
    corpse = "storage-tank-remnants",
    fast_replaceable_group = "medium-tank",
    collision_box = {{-1.3, -1.3}, {1.3, 1.3}},
    selection_box = {{-1.5, -1.5}, {1.5, 1.5}},
    fluid_box = {
      volume = 30000,
      pipe_covers = pipecoverspictures(),
      max_pipeline_extent = pipe_extents[1],
      pipe_connections = {
        { position = {-1, -1},  direction = defines.direction.north },
        { position = {1, 1},    direction = defines.direction.east },
        { position = {1, 1},    direction = defines.direction.south },
        { position = {-1, -1},  direction = defines.direction.west }
      }
    },
    two_direction_only = true,
    resistances = {
      { type = "impact", decrease = 100, percent = 90 },
      { type = "fire", percent = 75 }
    },
    window_bounding_box = {{-0.125, 0.6875}, {0.1875, 1.1875}},
    flow_length_in_ticks = 360,
    impact_category = "metal",
    working_sound = data.raw["storage-tank"]["storage-tank"].working_sound,
    open_sound = sounds.metal_large_open,
    close_sound = sounds.metal_large_close,
    circuit_connector = circuit_connector_definitions["storage-tank"],
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
            height = 235,
            shift = util.by_pixel(-0.25, -1.25),
            tint = {0.85, 0.9, 1},
            scale = 0.5
          },
          {
              filename = BASEENTITY .. "storage-tank/storage-tank-shadow.png",
              priority = "extra-high",
              frames = 2,
              width = 291,
              height = 153,
              shift = util.by_pixel(29.75, 22.25),
              scale = 0.5,
              draw_as_shadow = true
          }
        }
      },
      fluid_background = data.raw["storage-tank"]["storage-tank"].pictures.fluid_background,
      window_background = data.raw["storage-tank"]["storage-tank"].pictures.window_background,
      flow_sprite = data.raw["storage-tank"]["storage-tank"].pictures.flow_sprite,
      gas_flow = data.raw["storage-tank"]["storage-tank"].pictures.gas_flow
    }
  },

  {
    type = "storage-tank",
    name = "nullius-medium-tank-3",
    icon = ENTICONPATH .. "tank2.png",
    icon_size = 64,
    flags = {"placeable-player", "player-creation"},
    minable = {mining_time=1.6, result="nullius-medium-tank-3"},
    max_health = 600,
    corpse = "storage-tank-remnants",
    fast_replaceable_group = "medium-tank",
    collision_box = {{-1.3, -1.3}, {1.3, 1.3}},
    selection_box = {{-1.5, -1.5}, {1.5, 1.5}},
    fluid_box = {
      volume = 60000,
      pipe_covers = pipecoverspictures(),
      max_pipeline_extent = pipe_extents[2],
      pipe_connections = {
        { position = {-1, -1},  direction = defines.direction.north },
        { position = {1, 1},    direction = defines.direction.east },
        { position = {1, 1},    direction = defines.direction.south },
        { position = {-1, -1},  direction = defines.direction.west }
      }
    },
    two_direction_only = true,
    resistances = {
      { type = "impact", decrease = 100, percent = 90 },
      { type = "fire", percent = 75 }
    },
    window_bounding_box = {{-0.125, 0.6875}, {0.1875, 1.1875}},
    flow_length_in_ticks = 360,
    impact_category = "metal",
    working_sound = data.raw["storage-tank"]["storage-tank"].working_sound,
    open_sound = sounds.metal_large_open,
    close_sound = sounds.metal_large_close,
    circuit_connector = circuit_connector_definitions["storage-tank"],
    circuit_wire_max_distance = default_circuit_wire_max_distance,

    pictures = {
      picture = {
        sheets = {
          {
            filename = ENTITYPATH .. "storage-tank/storage-tank-2.png",
            priority = "extra-high",
            frames = 2,
            width = 219,
            height = 235,
            shift = util.by_pixel(-0.25, -1.25),
            scale = 0.5
          },
          {
              filename = BASEENTITY .. "storage-tank/storage-tank-shadow.png",
              priority = "extra-high",
              frames = 2,
              width = 291,
              height = 153,
              shift = util.by_pixel(29.75, 22.25),
              scale = 0.5,
              draw_as_shadow = true
          }
        }
      },
      fluid_background = data.raw["storage-tank"]["storage-tank"].pictures.fluid_background,
      window_background = data.raw["storage-tank"]["storage-tank"].pictures.window_background,
      flow_sprite = data.raw["storage-tank"]["storage-tank"].pictures.flow_sprite,
      gas_flow = data.raw["storage-tank"]["storage-tank"].pictures.gas_flow
    }
  },

  {
    type = "storage-tank",
    name = "nullius-small-tank-1",
    icons = data.raw.item["nullius-small-tank-1"].icons,
    flags = {"placeable-player", "player-creation"},
    minable = {mining_time = 0.3, result = "nullius-small-tank-1"},
    max_health = 200,
    corpse = "medium-remnants",
    collision_box = {{-0.9, -0.9}, {0.9, 0.9}},
    selection_box = {{-1, -1}, {1, 1}},
    two_direction_only = false,
    fluid_box = {
      volume = 10000,
      pipe_covers = pipecoverspictures(),
      max_pipeline_extent = pipe_extents[2],
      pipe_connections = {
        { position = {0.5, -0.5}, direction = defines.direction.north },
        { position = {0.5, 0.5},  direction = defines.direction.south },
        { position = {-0.5, 0.5}, direction = defines.direction.west }
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
              filename = "__angelspetrochemgraphics__/graphics/entity/petrochem-inline-tank/petrochem-inline-tank.png",
              priority = "extra-high",
              x = 0,
              width = 142,
              height = 199,
              scale = 0.5,
              shift = {0, -0.24},
              tint = {0.8, 0.8, 0.4}
            },
            {
              filename = "__angelspetrochemgraphics__/graphics/entity/petrochem-inline-tank/petrochem-inline-tank.png",
              priority = "extra-high",
              x = 142,
			  y = 117,
              width = 29,
              height = 62,
              scale = 0.5,
              shift = {-0.88, 0.52},
              tint = {0.8, 0.8, 0.4}
            },
            {
              filename = "__angelspetrochemgraphics__/graphics/entity/petrochem-inline-tank/petrochem-inline-tank.png",
              priority = "extra-high",
              x = 171,
			  y = 141,
              width = 11,
              height = 38,
              scale = 0.5,
              shift = {-0.57, 0.705},
              tint = {0.8, 0.8, 0.4}
            },
			{
              filename = "__angelspetrochemgraphics__/graphics/entity/petrochem-inline-tank/petrochem-inline-tank-shadow.png",
              priority = "extra-high",
              x = 0,
              width = 207,
              height = 199,
              shift = {0.52, 0.28},
              draw_as_shadow = true,
              scale = 0.5
			}
          }
        },
        east = {
          layers = {
            {
              filename = "__angelspetrochemgraphics__/graphics/entity/petrochem-inline-tank/petrochem-inline-tank.png",
              priority = "extra-high",
              x = 142,
              width = 142,
              height = 199,
              scale = 0.5,
              shift = {0, -0.24},
              tint = {0.8, 0.8, 0.4}
            },
			{
              filename = "__angelspetrochemgraphics__/graphics/entity/petrochem-inline-tank/petrochem-inline-tank-shadow.png",
              priority = "extra-high",
              x = 207,
              width = 207,
              height = 199,
              shift = {0.52, 0.28},
              draw_as_shadow = true,
              scale = 0.5
			}
          }
        },
        south = {
          layers = {
            {
              filename = "__angelspetrochemgraphics__/graphics/entity/petrochem-inline-tank/petrochem-inline-tank.png",
              priority = "extra-high",
              x = 284,
              width = 142,
              height = 199,
              scale = 0.5,
              shift = {0, -0.24},
              tint = {0.8, 0.8, 0.4}
            },
            {
              filename = "__angelspetrochemgraphics__/graphics/entity/petrochem-inline-tank/petrochem-inline-tank.png",
              priority = "extra-high",
              x = 559,
			  y = 48,
              width = 9,
              height = 62,
              scale = 0.5,
              shift = {1, -0.58},
              tint = {0.8, 0.8, 0.4}
            },
			{
              filename = "__angelspetrochemgraphics__/graphics/entity/petrochem-inline-tank/petrochem-inline-tank-shadow.png",
              priority = "extra-high",
              x = 414,
              width = 207,
              height = 199,
              shift = {0.52, 0.28},
              draw_as_shadow = true,
              scale = 0.5
			}
          }
        },
        west = {
          layers = {
            {
              filename = "__angelspetrochemgraphics__/graphics/entity/petrochem-inline-tank/petrochem-inline-tank.png",
              priority = "extra-high",
              x = 426,
              width = 142,
              height = 199,
              scale = 0.5,
              shift = {0, -0.24},
              tint = {0.8, 0.8, 0.4}
            },
            {
              filename = "__angelspetrochemgraphics__/graphics/entity/petrochem-inline-tank/petrochem-inline-tank.png",
              priority = "extra-high",
              x = 74,
			  y = 136,
			  width = 62,
              height = 63,
              scale = 0.5,
              shift = {0.55, 0.82},
              tint = {0.8, 0.8, 0.4}
            },
			{
              filename = "__angelspetrochemgraphics__/graphics/entity/petrochem-inline-tank/petrochem-inline-tank-shadow.png",
              priority = "extra-high",
              x = 621,
              width = 207,
              height = 199,
              shift = {0.52, 0.28},
              draw_as_shadow = true,
              scale = 0.5
			}
          }
        }
      },
      fluid_background = {
        filename = "__angelspetrochemgraphics__/graphics/entity/electrolyser/blank.png",
        priority = "extra-high",
        width = 1,
        height = 1,
      },
      window_background = {
        filename = "__angelspetrochemgraphics__/graphics/entity/electrolyser/blank.png",
        priority = "extra-high",
        width = 1,
        height = 1,
      },
      flow_sprite = {
        filename = "__angelspetrochemgraphics__/graphics/entity/electrolyser/blank.png",
        priority = "extra-high",
        width = 1,
        height = 1,
      },
      gas_flow = {
        filename = "__angelspetrochemgraphics__/graphics/entity/electrolyser/blank.png",
        priority = "extra-high",
        width = 1,
        height = 1,
        frame_count = 1,
        animation_speed = 0.25,
      }
    },
    flow_length_in_ticks = 360,
    impact_category = "metal",
    working_sound = data.raw["storage-tank"]["storage-tank"].working_sound,
    open_sound = sounds.metal_large_open,
    close_sound = sounds.metal_large_close,
    circuit_connector = circuit_connector_definitions["nullius-small-tank"],
    circuit_wire_max_distance = default_circuit_wire_max_distance
  }
})


data:extend({
  {
    type = "storage-tank",
    name = "nullius-small-tank-2",
    icons = data.raw.item["nullius-small-tank-2"].icons,
    flags = {"placeable-player", "player-creation"},
    minable = {mining_time = 0.3, result = "nullius-small-tank-2"},
    max_health = 250,
    corpse = "medium-remnants",
    collision_box = {{-0.9, -0.9}, {0.9, 0.9}},
    selection_box = {{-1, -1}, {1, 1}},
    two_direction_only = false,
    fluid_box = {
      volume = 20000,
      pipe_covers = pipecoverspictures(),
      max_pipeline_extent = pipe_extents[3],
      pipe_connections = {
        { position = {0.5, -0.5}, direction = defines.direction.north },
        { position = {0.5, 0.5},  direction = defines.direction.south},
        { position = {-0.5, 0.5}, direction = defines.direction.west }
      }
    },
    resistances = {
      { type = "impact", decrease = 100, percent = 90 },
      { type = "fire", percent = 75 }
    },
    window_bounding_box = {{-0.125, 0.6875}, {0.1875, 1.1875}},
    fast_replaceable_group = "small-tank",
    pictures = util.table.deepcopy(data.raw["storage-tank"]["nullius-small-tank-1"].pictures),
    flow_length_in_ticks = 360,
    impact_category = "metal",
    working_sound = data.raw["storage-tank"]["storage-tank"].working_sound,
    open_sound = sounds.metal_large_open,
    close_sound = sounds.metal_large_close,
    circuit_connector = circuit_connector_definitions["nullius-small-tank"],
    circuit_wire_max_distance = default_circuit_wire_max_distance
  }
})

data.raw["storage-tank"]["nullius-small-tank-2"].pictures.picture.north.layers[1].tint = nil
data.raw["storage-tank"]["nullius-small-tank-2"].pictures.picture.north.layers[2].tint = nil
data.raw["storage-tank"]["nullius-small-tank-2"].pictures.picture.north.layers[3].tint = nil
data.raw["storage-tank"]["nullius-small-tank-2"].pictures.picture.east.layers[1].tint = nil
data.raw["storage-tank"]["nullius-small-tank-2"].pictures.picture.south.layers[1].tint = nil
data.raw["storage-tank"]["nullius-small-tank-2"].pictures.picture.south.layers[2].tint = nil
data.raw["storage-tank"]["nullius-small-tank-2"].pictures.picture.west.layers[1].tint = nil
data.raw["storage-tank"]["nullius-small-tank-2"].pictures.picture.west.layers[2].tint = nil
data.raw["storage-tank"]["nullius-small-tank-2"].pictures.picture.west.layers[3].tint = nil

data:extend({
  {
    type = "storage-tank",
    name = "nullius-large-tank-1",
    icons = data.raw.item["nullius-large-tank-1"].icons,
    flags = {"placeable-player", "player-creation"}, -- , "not-rotatable"
    minable = {mining_time = 3, result = "nullius-large-tank-1"},
    collision_mask = collision_mask_util.get_default_mask("rocket-silo"), -- generic tall building
    max_health = 1000,
    corpse = "medium-remnants",
    collision_box = {{-2.2, -2.2}, {2.2, 2.2}},
    selection_box = {{-2.5, -2.5}, {2.5, 2.5}},
    two_direction_only = false,
    fluid_box = {
      volume = 125000,
      pipe_covers = pipecoverspictures(),
      max_pipeline_extent = pipe_extents[1] / 2,
      pipe_connections = {
        { position = {0, -2}, direction = defines.direction.north },
        { position = {2, 0},  direction = defines.direction.east },
        { position = {-2, 0}, direction = defines.direction.west },
        { position = {0, 2},  direction = defines.direction.south },
      },
    },
    fast_replaceable_group = "large-tank",
    next_upgrade = "nullius-large-tank-2",
    window_bounding_box = {{-0.125, 0.6875}, {0.1875, 1.1875}},
    flow_length_in_ticks = 360,
    impact_category = "metal",
    working_sound = {
      sound = {
        filename = "__base__/sound/storage-tank.ogg",
        volume = 0.6,
      },
      match_volume_to_activity = true,
      max_sounds_per_prototype = 3,
    },
    open_sound = sounds.metal_large_open,
    close_sound = sounds.metal_large_close,
    circuit_connector = circuit_connector_definitions["storage-tank"],
    circuit_wire_max_distance = default_circuit_wire_max_distance,
    pictures = {
      picture = {
        sheets = {
          {
            filename = "__angelspetrochemgraphics__/graphics/entity/petrochem-gas-tank/petrochem-gas-tank.png",
            priority = "extra-high",
            frames = 1,
            width = 334,
            height = 387,
            shift = util.by_pixel(-0.5, -6),
            scale = 0.5,
          },
          {
            filename = "__angelspetrochemgraphics__/graphics/entity/petrochem-gas-tank/petrochem-gas-tank-shadow.png",
            priority = "extra-high",
            frames = 1,
            width = 437,
            height = 237,
            shift = util.by_pixel(26, 32),
            draw_as_shadow = true,
            scale = 0.5,
          },
        },
      },
      fluid_background = {
        filename = "__base__/graphics/entity/storage-tank/fluid-background.png",
        priority = "extra-high",
        width = 32,
        height = 15,
      },
      window_background = {
        filename = "__base__/graphics/entity/storage-tank/window-background.png",
        priority = "extra-high",
        width = 34,
        height = 48,
        scale = 0.5,
      },
      flow_sprite = {
        filename = "__base__/graphics/entity/pipe/fluid-flow-low-temperature.png",
        priority = "extra-high",
        width = 160,
        height = 20,
      },
      gas_flow = {
        filename = "__base__/graphics/entity/pipe/steam.png",
        priority = "extra-high",
        line_length = 10,
        width = 48,
        height = 30,
        frame_count = 60,
        animation_speed = 0.25,
        scale = 0.5,
      },
    }
  }
})

data:extend({
  {
    type = "storage-tank",
    name = "nullius-large-tank-2",
    icons = data.raw.item["nullius-large-tank-2"].icons,
    flags = {"placeable-player", "player-creation"}, -- "not-rotatable"
    minable = {mining_time = 3, result = "nullius-large-tank-2"},
    collision_mask = collision_mask_util.get_default_mask("rocket-silo"),
    max_health = 1200,
    corpse = "medium-remnants",
    collision_box = {{-2.2, -2.2}, {2.2, 2.2}},
    selection_box = {{-2.5, -2.5}, {2.5, 2.5}},
    two_direction_only = false,
    fluid_box = {
      volume = 250000,
      pipe_covers = pipecoverspictures(),
      max_pipeline_extent = pipe_extents[1],
      pipe_connections = {
        { position = {0, -2}, direction = defines.direction.north },
        { position = {2, 0},  direction = defines.direction.east },
        { position = {-2, 0}, direction = defines.direction.west },
        { position = {0, 2},  direction = defines.direction.south },
      },
    },
    fast_replaceable_group = "large-tank",
    next_upgrade = "nullius-large-tank-3",
    window_bounding_box = {{-0.125, 0.6875}, {0.1875, 1.1875}},
    flow_length_in_ticks = 360,
    impact_category = "metal",
    working_sound = data.raw["storage-tank"]["nullius-large-tank-1"].working_sound,
    open_sound = sounds.metal_large_open,
    close_sound = sounds.metal_large_close,
    circuit_connector = circuit_connector_definitions["storage-tank"],
    circuit_wire_max_distance = default_circuit_wire_max_distance,
    pictures = table.deepcopy(data.raw["storage-tank"]["nullius-large-tank-1"].pictures)
  },

  {
    type = "storage-tank",
    name = "nullius-large-tank-3",
    icons = data.raw.item["nullius-large-tank-3"].icons,
    flags = {"placeable-player", "player-creation"}, -- , "not-rotatable"
    minable = {mining_time = 3, result = "nullius-large-tank-3"},
    collision_mask = collision_mask_util.get_default_mask("rocket-silo"),
    max_health = 1500,
    corpse = "medium-remnants",
    collision_box = {{-2.2, -2.2}, {2.2, 2.2}},
    selection_box = {{-2.5, -2.5}, {2.5, 2.5}},
    two_direction_only = false,
    fluid_box = {
      volume = 500000,
      pipe_covers = pipecoverspictures(),
      max_pipeline_extent = pipe_extents[2],
      pipe_connections = {
        { position = {0, -2}, direction = defines.direction.north },
        { position = {2, 0},  direction = defines.direction.east },
        { position = {-2, 0}, direction = defines.direction.west },
        { position = {0, 2},  direction = defines.direction.south },
      },
    },
    fast_replaceable_group = "large-tank",
    window_bounding_box = {{-0.125, 0.6875}, {0.1875, 1.1875}},
    flow_length_in_ticks = 360,
    impact_category = "metal",
    working_sound = data.raw["storage-tank"]["nullius-large-tank-1"].working_sound,
    open_sound = sounds.metal_large_open,
    close_sound = sounds.metal_large_close,
    circuit_connector = circuit_connector_definitions["storage-tank"],
    circuit_wire_max_distance = default_circuit_wire_max_distance,
    pictures = table.deepcopy(data.raw["storage-tank"]["nullius-large-tank-1"].pictures)
  }
})

data.raw["storage-tank"]["nullius-large-tank-1"].pictures.
    picture.sheets[1].tint = {0.75, 0.75, 0.6}
data.raw["storage-tank"]["nullius-large-tank-2"].pictures.
    picture.sheets[1].tint = {0.85, 0.85, 0.95}

circuit_connector_definitions["nullius-barreling-pump"] = circuit_connector_definitions.create_vector(universal_connector_template, {
  { variation =  6, main_offset = util.by_pixel( 0.125,  32.125), shadow_offset = util.by_pixel( 0.125,  32.125), show_shadow = true },
  { variation =  0, main_offset = util.by_pixel( 41.25, -5.5), shadow_offset = util.by_pixel( 41.25, -5.5), show_shadow = true },
  { variation =  10, main_offset = util.by_pixel( 0.5, -46.875), shadow_offset = util.by_pixel( 0.5, -46.875), show_shadow = true },
  { variation =  4, main_offset = util.by_pixel(-38.75, -6.875), shadow_offset = util.by_pixel(-38.75, -6.875), show_shadow = true },
})

data:extend({
  {
    type = "mining-drill",
    name = "nullius-extractor-1",
    icons = data.raw.item["nullius-extractor-1"].icons,
    flags = {"placeable-neutral", "player-creation"},
    minable = { mining_time = 1.2, result = "nullius-extractor-1" },
    fast_replaceable_group = "extractor",
    next_upgrade = "nullius-extractor-2",
    resource_categories = {"basic-fluid"},
    drawing_box_vertical_extension = 1,
    max_health = 300,
    corpse = "pumpjack-remnants",
    dying_explosion = "pumpjack-explosion",
    collision_box = {{ -1.7, -1.7}, {1.7, 1.7}},
    selection_box = {{ -2, -2}, {2, 2}},
    
    energy_source = {
      type = "electric",
      emissions_per_minute = {pollution = 5},
      usage_priority = "secondary-input",
      drain = "10kW"
    },
    output_fluid_box = {
      volume = 500,
      pipe_covers = pipecoverspictures(),
      pipe_connections = {
        { positions = { {1.5, -1.5}, {1.5, -1.5}, {-1.5, 1.5}, {-1.5, 1.5} }, direction = defines.direction.north }
      }
    },
    energy_usage = "390kW",
    mining_speed = 1,
    resource_searching_radius = 0.99,
    vector_to_place_result = {0, 0},
    resistances = {
      { type = "impact", decrease = 100, percent = 90 },
      { type = "fire", decrease = 100, percent = 90 }
    },
    damaged_trigger_effect = data.raw["mining-drill"]["pumpjack"].damaged_trigger_effect,
    impact_category = data.raw["mining-drill"]["pumpjack"].impact_category,
    open_sound = data.raw["mining-drill"]["pumpjack"].open_sound,
    close_sound = data.raw["mining-drill"]["pumpjack"].close_sound,
    working_sound = data.raw["mining-drill"]["pumpjack"].working_sound,
    fast_replaceable_group = "geothermal-pump",
    module_slots = 1,
    allowed_effects = {"speed", "productivity", "consumption", "pollution"},
    radius_visualisation_picture = {
      filename = BASEENTITY .. "pumpjack/pumpjack-radius-visualization.png",
      width = 12,
      height = 12
    },
    monitor_visualization_tint = {r=78, g=173, b=255},
    circuit_connector = circuit_connector_definitions["pumpjack"],
    circuit_wire_max_distance = default_circuit_wire_max_distance,
    base_render_layer = "lower-object-above-shadow",
    base_picture = {
      sheets = {
        {
          filename = BASEENTITY .. "pumpjack/pumpjack-base.png",
          priority = "extra-high",
          width = 261,
          height = 273,
          shift = util.by_pixel(-3.75, -7.91666),
          scale = 0.66667
        },
        {
          filename = BASEENTITY .. "pumpjack/pumpjack-base-shadow.png",
          width = 220,
          height = 220,
          scale = 0.66667,
          draw_as_shadow = true,
          shift = util.by_pixel(10, 0.833333)
        }
      }
    },
    graphics_set = {
      animation = {
        north = {
          layers = {
            {
              priority = "high",
              filename = ENTITYPATH .. "wells/pumpjack-decolorized.png",
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
              filename = BASEENTITY .. "pumpjack/pumpjack-horsehead-shadow.png",
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
    }
  },

  {
    type = "mining-drill",
    name = "nullius-extractor-2",
    icons = data.raw.item["nullius-extractor-2"].icons,
    flags = {"placeable-neutral", "player-creation"},
    minable = { mining_time = 2, result = "nullius-extractor-2" },
    fast_replaceable_group = "extractor",
    resource_categories = {"basic-fluid"},
    drawing_box_vertical_extension = 1,
    max_health = 400,
    corpse = "pumpjack-remnants",
    dying_explosion = "pumpjack-explosion",
    collision_box = {{ -1.7, -1.7}, {1.7, 1.7}},
    selection_box = {{ -2, -2}, {2, 2}},
    
    energy_source = {
      type = "electric",
      emissions_per_minute = {pollution = 10},
      usage_priority = "secondary-input",
      drain = "25kW"
    },
    output_fluid_box = {
      volume = 500,
      pipe_covers = pipecoverspictures(),
      pipe_connections = {
        { positions = { {1.5, -1.5}, {1.5, -1.5}, {-1.5, 1.5}, {-1.5, 1.5} }, direction = defines.direction.north }
      }
    },
    energy_usage = "775kW",
    mining_speed = 2,
    resource_searching_radius = 0.99,
    vector_to_place_result = {0, 0},
    resistances = {
      { type = "impact", decrease = 100, percent = 90 },
      { type = "fire", decrease = 100, percent = 90 }
    },
    damaged_trigger_effect = data.raw["mining-drill"]["pumpjack"].damaged_trigger_effect,
    impact_category = data.raw["mining-drill"]["pumpjack"].impact_category,
    open_sound = data.raw["mining-drill"]["pumpjack"].open_sound,
    close_sound = data.raw["mining-drill"]["pumpjack"].close_sound,
    working_sound = data.raw["mining-drill"]["pumpjack"].working_sound,
    fast_replaceable_group = "geothermal-pump",
    module_slots = 2,
    allowed_effects = {"speed", "productivity", "consumption", "pollution"},
    radius_visualisation_picture = {
      filename = BASEENTITY .. "pumpjack/pumpjack-radius-visualization.png",
      width = 12,
      height = 12
    },
    monitor_visualization_tint = {r=78, g=173, b=255},
    circuit_connector = circuit_connector_definitions["pumpjack"],
    circuit_wire_max_distance = default_circuit_wire_max_distance,
    base_render_layer = "lower-object-above-shadow",
    base_picture = {
      sheets = {
        {
          filename = BASEENTITY .. "pumpjack/pumpjack-base.png",
          priority = "extra-high",
          width = 261,
          height = 273,
          shift = util.by_pixel(-3.75, -7.91666),
          scale = 0.66667
        },
        {
          filename = BASEENTITY .. "pumpjack/pumpjack-base-shadow.png",
          width = 220,
          height = 220,
          scale = 0.66667,
          draw_as_shadow = true,
          shift = util.by_pixel(10, 0.833333)
        }
      }
    },
    graphics_set = {
      animation = {
        north = {
          layers = {
            {
              priority = "high",
              filename = ENTITYPATH .. "wells/pumpjack-decolorized.png",
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
              filename = BASEENTITY .. "pumpjack/pumpjack-horsehead-shadow.png",
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
    }
  },

  {
    type = "assembling-machine",
    name = "nullius-barrel-pump-1",
    icons = data.raw.item["nullius-barrel-pump-1"].icons,
    flags = {"placeable-neutral", "player-creation"},
    minable = {mining_time = 0.6, result = "nullius-barrel-pump-1"},
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
      emissions_per_minute = {pollution = 0.5},
      drain = "1kW"
    },
    energy_usage = "24kW",
    module_slots = 1,
    allowed_effects = {"speed", "consumption", "pollution"},
    resistances = {
      { type = "impact", decrease = 100, percent = 90 },
      { type = "fire", decrease = 20, percent = 50 },
      { type = "explosion", decrease = 20, percent = 50 }
    },
    ingredient_count = 2,
    working_sound = {
        sound = {filename = "__base__/sound/oil-refinery.ogg", volume = 2.5},
        idle_sound = {filename = "__base__/sound/idle1.ogg", volume = 0.6},
        --apparent_volume = 2.5
    },
    open_sound = {filename = "__base__/sound/open-close/pumpjack-open.ogg", volume = 0.5},
    close_sound = {filename = "__base__/sound/open-close/pumpjack-close.ogg", volume = 0.5},
    impact_category = "metal",
    circuit_connector = circuit_connector_definitions["nullius-barreling-pump"],
    circuit_wire_max_distance = default_circuit_wire_max_distance,
    fluid_boxes = {
      {
        production_type = "input",
        pipe_covers = pipecoverspictures(),
        volume = 500,
        pipe_connections = {{flow_direction = "input", position = {0, 1}, direction = defines.direction.south}}
      },
      {
        production_type = "output",
        pipe_covers = pipecoverspictures(),
        volume = 500,
        pipe_connections = {{flow_direction ="output", position = {0, -1}, direction = defines.direction.north}}
      }
    },

    graphics_set = {
      animation = {
        north = {
          filename = "__angelsrefininggraphics__/graphics/entity/barreling-pump/barreling-pump.png",
          width = 160,
          height = 160,
          frame_count = 1,
          tint = {0.6, 0.8, 0.8}
        },
        east = {
          filename = "__angelsrefininggraphics__/graphics/entity/barreling-pump/barreling-pump.png",
          x = 480,
          width = 160,
          height = 160,
          frame_count = 1,
          tint = {0.6, 0.8, 0.8}
        },
        south = {
          filename = "__angelsrefininggraphics__/graphics/entity/barreling-pump/barreling-pump.png",
          x = 320,
          width = 160,
          height = 160,
          frame_count = 1,
          tint = {0.6, 0.8, 0.8}
        },
        west = {
          filename = "__angelsrefininggraphics__/graphics/entity/barreling-pump/barreling-pump.png",
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
            filename = "__angelsrefininggraphics__/graphics/entity/barreling-pump/barreling-pump-animation.png",
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
    }
  },

  {
    type = "assembling-machine",
    name = "nullius-barrel-pump-2",
    icons = data.raw.item["nullius-barrel-pump-2"].icons,
    flags = {"placeable-neutral", "player-creation"},
    minable = {mining_time = 0.8, result = "nullius-barrel-pump-2"},
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
      emissions_per_minute = {pollution = 1},
      drain = "2kW"
    },
    energy_usage = "58kW",
    module_slots = 2,
    allowed_effects = {"speed", "consumption", "pollution"},
    resistances = {
      { type = "impact", decrease = 100, percent = 90 },
      { type = "fire", decrease = 20, percent = 50 },
      { type = "explosion", decrease = 20, percent = 50 }
    },
    ingredient_count = 2,
    circuit_connector = circuit_connector_definitions["nullius-barreling-pump"],
    circuit_wire_max_distance = default_circuit_wire_max_distance,
    working_sound = {
      sound = {filename = "__base__/sound/oil-refinery.ogg", volume = 2.5},
      idle_sound = {filename = "__base__/sound/idle1.ogg", volume = 0.6},
      --apparent_volume = 2.5
    },
    open_sound = {filename = "__base__/sound/open-close/pumpjack-open.ogg", volume = 0.5},
    close_sound = {filename = "__base__/sound/open-close/pumpjack-close.ogg", volume = 0.5},
    impact_category = "metal",
    fluid_boxes = {
      {
        production_type = "input",
        pipe_covers = pipecoverspictures(),
        volume = 500,
        pipe_connections = {{flow_direction = "input", position = {0, 1}, direction = defines.direction.south}}
      },
      {
        production_type = "output",
        pipe_covers = pipecoverspictures(),
        volume = 500,
        pipe_connections = {{flow_direction ="output", position = {0, -1}, direction = defines.direction.north}}
      }
    },
    graphics_set = {
      animation = {
        north = {
          filename = "__angelsrefininggraphics__/graphics/entity/barreling-pump/barreling-pump.png",
          width = 160,
          height = 160,
          frame_count = 1,
          shift = {0, 0}
        },
        east = {
          filename = "__angelsrefininggraphics__/graphics/entity/barreling-pump/barreling-pump.png",
          x = 480,
          width = 160,
          height = 160,
          frame_count = 1,
          shift = {0, 0}
        },
        south = {
          filename = "__angelsrefininggraphics__/graphics/entity/barreling-pump/barreling-pump.png",
          x = 320,
          width = 160,
          height = 160,
          frame_count = 1,
          shift = {0, 0}
        },
        west = {
          filename = "__angelsrefininggraphics__/graphics/entity/barreling-pump/barreling-pump.png",
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
            filename = "__angelsrefininggraphics__/graphics/entity/barreling-pump/barreling-pump-animation.png",
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
    }
  },

  {
    type = "pump",
    name = "nullius-pump-1",
    icon = ENTICONPATH .. "pump-yellow.png",
    icon_size = 64,
    flags = {"placeable-neutral", "player-creation"},
    localised_description = {"",
          {"entity-description.nullius-pump-1"},
          {"entity-description.nullius-configurable-pump"},
          " ",
          {"configurable-valves.more-in-factoriopedia"},"\n",
          {"entity-description.nullius-togglable-pump"}
        },
    factoriopedia_description = {"",
          {"entity-description.nullius-pump-1"},
          {"entity-description.nullius-configurable-pump"},
          {"configurable-valves.valve-examples"},
          {"configurable-valves.valve-shortcuts"},
        },
    minable = {mining_time = 0.6, result = "nullius-pump-1"},
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
      volume = 500,
      pipe_covers = pipecoverspictures(),
      pipe_connections =
      {
        { position = {0, -0.5}, flow_direction = "output", direction = defines.direction.north },
        { position = {0, 0.5}, flow_direction = "input", direction = defines.direction.south }
      }
    },
    -- fluid_box =
    --     {
    --       volume = 500,
    --       pipe_covers = pipecoverspictures(),
    --       pipe_connections =
    --       {
    --         {connection_type = "linked", flow_direction = "output", linked_connection_id=31113 + 1 },
    --         {connection_type = "linked", flow_direction = "input", linked_connection_id=31113 - 1 }
    --       },
    --       hide_connection_info = true,
    --     },
    energy_source = {
      type = "electric",
      usage_priority = "primary-input"
    },
    energy_usage = "15kW",
    pumping_speed = 50,
    impact_category = data.raw.pump["pump"].impact_category,
    open_sound = data.raw.pump["pump"].open_sound,
    close_sound = data.raw.pump["pump"].close_sound,
    fluid_wagon_connector_frame_count = 35,
    fluid_wagon_connector_alignment_tolerance = 2.0 / 32.0,
    fluid_wagon_connector_graphics = data.raw.pump["pump"].fluid_wagon_connector_graphics,
    fluid_animation = data.raw.pump["pump"].fluid_animation,
    glass_pictures = data.raw.pump["pump"].glass_pictures,
    circuit_connector = circuit_connector_definitions["pump"],
    circuit_wire_max_distance = default_circuit_wire_max_distance,

    animations = {
      north = {
        layers = {
	      {
            filename = "__base__/graphics/entity/pipe-covers/pipe-cover-north.png",
            width = 128,
            height = 128,
            scale = 0.5,
            frame_count = 1,
            repeat_count = 32,
            animation_speed = 0.5,
			shift = {0, -1.46}
          },
          {
            filename = BASEENTITY .. "pump/pump-north.png",
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
            filename = BASEENTITY .. "pump/pump-east.png",
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
            filename = "__base__/graphics/entity/pipe-covers/pipe-cover-north.png",
            width = 128,
            height = 128,
            scale = 0.5,
            frame_count = 1,
            repeat_count = 32,
            animation_speed = 0.5,
			shift = {0, -1.5}
          },
          {
            filename = BASEENTITY .. "pump/pump-south.png",
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
            filename = BASEENTITY .. "pump/pump-west.png",
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
    flags = {"placeable-neutral", "player-creation"},
    localised_description = {"",
          {"entity-description.nullius-pump-2"},
          {"entity-description.nullius-configurable-pump"},
          " ",
          {"configurable-valves.more-in-factoriopedia"},"\n",
          {"entity-description.nullius-togglable-pump"}
        },
    factoriopedia_description = {"",
          {"entity-description.nullius-pump-2"},
          {"entity-description.nullius-configurable-pump"},
          {"configurable-valves.valve-examples"},
          {"configurable-valves.valve-shortcuts"},
        },
    minable = {mining_time = 0.8, result = "nullius-pump-2"},
    max_health = 200,
    fast_replaceable_group = "pump",
    next_upgrade = "pump",
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
      volume = 500,
      pipe_covers = pipecoverspictures(),
      pipe_connections =
      {
        { position = {0, -0.5}, flow_direction = "output", direction = defines.direction.north },
        { position = {0, 0.5}, flow_direction = "input", direction = defines.direction.south }
      }
    },
    -- fluid_box =
    --     {
    --       volume = 500,
    --       pipe_covers = pipecoverspictures(),
    --       pipe_connections =
    --       {
    --         {connection_type = "linked", flow_direction = "output", linked_connection_id=31113 + 1 },
    --         {connection_type = "linked", flow_direction = "input", linked_connection_id=31113 - 1 }
    --       },
    --       hide_connection_info = true,
    --     },
    energy_source = {
      type = "electric",
      usage_priority = "primary-input"
    },
    energy_usage = "20kW",
    pumping_speed = 100,
    impact_category = data.raw.pump["pump"].impact_category,
    open_sound = data.raw.pump["pump"].open_sound,
    close_sound = data.raw.pump["pump"].close_sound,
    fluid_wagon_connector_frame_count = 35,
    fluid_wagon_connector_alignment_tolerance = 2.0 / 32.0,
    fluid_wagon_connector_graphics = data.raw.pump["pump"].fluid_wagon_connector_graphics,
    fluid_animation = data.raw.pump["pump"].fluid_animation,
    glass_pictures = data.raw.pump["pump"].glass_pictures,
    circuit_connector = circuit_connector_definitions["pump"],
    circuit_wire_max_distance = default_circuit_wire_max_distance,

    animations = {
      north = {
        layers = {
	      {
            filename = "__base__/graphics/entity/pipe-covers/pipe-cover-north.png",
            width = 128,
            height = 128,
            scale = 0.5,
            frame_count = 1,
            repeat_count = 32,
            animation_speed = 0.5,
			shift = {0, -1.46}
          },
          {
            filename = BASEENTITY .. "pump/pump-north.png",
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
            filename = BASEENTITY .. "pump/pump-east.png",
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
            filename = "__base__/graphics/entity/pipe-covers/pipe-cover-north.png",
            width = 128,
            height = 128,
            scale = 0.5,
            frame_count = 1,
            repeat_count = 32,
            animation_speed = 0.5,
			shift = {0, -1.5}
          },
          {
            filename = BASEENTITY .. "pump/pump-south.png",
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
            filename = BASEENTITY .. "pump/pump-west.png",
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
    name = "nullius-togglable-pump-1",
    hidden_in_factoriopedia = true,
    icon = ENTICONPATH .. "pump-yellow.png",
    icon_size = 64,
    flags = {"placeable-neutral", "player-creation"},
    localised_name = {"entity-name.nullius-pump-1"},
    localised_description = {"",
          {"entity-description.nullius-pump-1"},
          {"entity-description.nullius-configurable-pump"},
          " ",
          {"configurable-valves.more-in-factoriopedia"},"\n",
          {"entity-description.nullius-togglable-pump"}
        },
    factoriopedia_description = {"",
          {"entity-description.nullius-pump-1"},
          {"entity-description.nullius-configurable-pump"},
          {"configurable-valves.valve-examples"},
          {"configurable-valves.valve-shortcuts"},
        },
    minable = {mining_time = 0.6, result = "nullius-pump-1"},
    max_health = 150,
    fast_replaceable_group = "pump",
    next_upgrade = "nullius-togglable-pump-2",
    corpse = "pump-remnants",
    dying_explosion = "pump-explosion",
    collision_box = {{-0.29, -0.9}, {0.29, 0.9}},
    selection_box = {{-0.5, -1}, {0.5, 1}},
    working_sound = data.raw.pump["pump"].working_sound,
    damaged_trigger_effect = data.raw.pump["pump"].damaged_trigger_effect,
    placeable_by = {item = "nullius-pump-1", count = 1},
    resistances = {
      { type = "impact", decrease = 100, percent = 90 },
      { type = "fire", decrease = 20, percent = 50 }
    },
  
    fluid_box =
        {
          volume = 500,
          pipe_covers = pipecoverspictures(),
          pipe_connections =
          {
            {connection_type = "linked", flow_direction = "output", linked_connection_id=31113 + 1 },
            {connection_type = "linked", flow_direction = "input", linked_connection_id=31113 - 1 }
          },
          hide_connection_info = true,
        },
    energy_source = {
      type = "electric",
      usage_priority = "primary-input"
    },
    energy_usage = "15kW",
    pumping_speed = 50,
    impact_category = data.raw.pump["pump"].impact_category,
    open_sound = data.raw.pump["pump"].open_sound,
    close_sound = data.raw.pump["pump"].close_sound,
    fluid_wagon_connector_frame_count = 35,
    fluid_wagon_connector_alignment_tolerance = 2.0 / 32.0,
    fluid_wagon_connector_graphics = data.raw.pump["pump"].fluid_wagon_connector_graphics,
    fluid_animation = data.raw.pump["pump"].fluid_animation,
    glass_pictures = data.raw.pump["pump"].glass_pictures,
    circuit_connector = circuit_connector_definitions["pump"],
    circuit_wire_max_distance = default_circuit_wire_max_distance,

    animations = {
      north = {
        layers = {
	      {
            filename = "__base__/graphics/entity/pipe-covers/pipe-cover-north.png",
            width = 128,
            height = 128,
            scale = 0.5,
            frame_count = 1,
            repeat_count = 32,
            animation_speed = 0.5,
			shift = {0, -1.46}
          },
          {
            filename = BASEENTITY .. "pump/pump-north.png",
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
            filename = BASEENTITY .. "pump/pump-east.png",
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
            filename = "__base__/graphics/entity/pipe-covers/pipe-cover-north.png",
            width = 128,
            height = 128,
            scale = 0.5,
            frame_count = 1,
            repeat_count = 32,
            animation_speed = 0.5,
			shift = {0, -1.5}
          },
          {
            filename = BASEENTITY .. "pump/pump-south.png",
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
            filename = BASEENTITY .. "pump/pump-west.png",
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
    name = "nullius-togglable-pump-2",
    hidden_in_factoriopedia = true,
    icon = ENTICONPATH .. "pump-blue.png",
    icon_size = 64,
    flags = {"placeable-neutral", "player-creation"},
    localised_name = {"entity-name.nullius-pump-2"},
    localised_description = {"",
          {"entity-description.nullius-pump-2"},
          {"entity-description.nullius-configurable-pump"},
          " ",
          {"configurable-valves.more-in-factoriopedia"},"\n",
          {"entity-description.nullius-togglable-pump"}
        },
    factoriopedia_description = {"",
          {"entity-description.nullius-pump-2"},
          {"entity-description.nullius-configurable-pump"},
          {"configurable-valves.valve-examples"},
          {"configurable-valves.valve-shortcuts"},
        },
    minable = {mining_time = 0.8, result = "nullius-pump-2"},
    max_health = 200,
    fast_replaceable_group = "pump",
    next_upgrade = "nullius-togglable-pump-3",
    corpse = "pump-remnants",
    dying_explosion = "pump-explosion",
    collision_box = {{-0.29, -0.9}, {0.29, 0.9}},
    selection_box = {{-0.5, -1}, {0.5, 1}},
    working_sound = data.raw.pump["pump"].working_sound,
    damaged_trigger_effect = data.raw.pump["pump"].damaged_trigger_effect,
    placeable_by = {item = "nullius-pump-2", count = 1},
    resistances = {
      { type = "impact", decrease = 100, percent = 90 },
      { type = "fire", decrease = 20, percent = 50 }
    },
    fluid_box =
        {
          volume = 500,
          pipe_covers = pipecoverspictures(),
          pipe_connections =
          {
            {connection_type = "linked", flow_direction = "output", linked_connection_id=31113 + 1 },
            {connection_type = "linked", flow_direction = "input", linked_connection_id=31113 - 1 }
          },
          hide_connection_info = true,
        },
    energy_source = {
      type = "electric",
      usage_priority = "primary-input"
    },
    energy_usage = "20kW",
    pumping_speed = 100,
    impact_category = data.raw.pump["pump"].impact_category,
    open_sound = data.raw.pump["pump"].open_sound,
    close_sound = data.raw.pump["pump"].close_sound,
    fluid_wagon_connector_frame_count = 35,
    fluid_wagon_connector_alignment_tolerance = 2.0 / 32.0,
    fluid_wagon_connector_graphics = data.raw.pump["pump"].fluid_wagon_connector_graphics,
    fluid_animation = data.raw.pump["pump"].fluid_animation,
    glass_pictures = data.raw.pump["pump"].glass_pictures,
    circuit_connector = circuit_connector_definitions["pump"],
    circuit_wire_max_distance = default_circuit_wire_max_distance,

    animations = {
      north = {
        layers = {
	      {
            filename = "__base__/graphics/entity/pipe-covers/pipe-cover-north.png",
            width = 128,
            height = 128,
            scale = 0.5,
            frame_count = 1,
            repeat_count = 32,
            animation_speed = 0.5,
			shift = {0, -1.46}
          },
          {
            filename = BASEENTITY .. "pump/pump-north.png",
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
            filename = BASEENTITY .. "pump/pump-east.png",
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
            filename = "__base__/graphics/entity/pipe-covers/pipe-cover-north.png",
            width = 128,
            height = 128,
            scale = 0.5,
            frame_count = 1,
            repeat_count = 32,
            animation_speed = 0.5,
			shift = {0, -1.5}
          },
          {
            filename = BASEENTITY .. "pump/pump-south.png",
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
            filename = BASEENTITY .. "pump/pump-west.png",
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
    name = "nullius-togglable-pump-3",
    icon = data.raw["pump"]["pump"].icon,
    flags = {"placeable-neutral", "player-creation"},
    hidden_in_factoriopedia = true,
    localised_name = {"entity-name.nullius-pump-3"},
    localised_description = {"",
          {"entity-description.nullius-pump-3"},
          {"entity-description.nullius-configurable-pump"},
          " ",
          {"configurable-valves.more-in-factoriopedia"},"\n",
          {"entity-description.nullius-togglable-pump"}
        },
    factoriopedia_description = {"",
          {"entity-description.nullius-pump-3"},
          {"entity-description.nullius-configurable-pump"},
          {"configurable-valves.valve-examples"},
          {"configurable-valves.valve-shortcuts"},
        },
    subgroup = "pumping",
    order = "nullius-bd",
    energy_usage = "30kW",
    max_health = 250,
    minable = {mining_time = 1, result = "pump"},
    fast_replaceable_group = "pump",
    corpse = "pump-remnants",
    dying_explosion = "pump-explosion",
    collision_box = {{-0.29, -0.9}, {0.29, 0.9}},
    selection_box = {{-0.5, -1}, {0.5, 1}},
    working_sound = data.raw.pump["pump"].working_sound,
    damaged_trigger_effect = data.raw.pump["pump"].damaged_trigger_effect,
    placeable_by = {item = "pump", count = 1},
    resistances = {
      { type = "impact", decrease = 100, percent = 90 },
      { type = "fire", decrease = 20, percent = 50 }
    },
    fluid_box =
    {
      volume = 500,
      pipe_covers = pipecoverspictures(),
      pipe_connections =
      {
        {connection_type = "linked", flow_direction = "output", linked_connection_id=31113 + 1 },
        {connection_type = "linked", flow_direction = "input", linked_connection_id=31113 - 1 }
      },
      hide_connection_info = true,
    },
    energy_source = {
      type = "electric",
      usage_priority = "primary-input"
    },
    pumping_speed = 100,
    impact_category = data.raw.pump["pump"].impact_category,
    open_sound = data.raw.pump["pump"].open_sound,
    close_sound = data.raw.pump["pump"].close_sound,
    fluid_wagon_connector_frame_count = 35,
    fluid_wagon_connector_alignment_tolerance = 2.0 / 32.0,
    fluid_wagon_connector_graphics = data.raw.pump["pump"].fluid_wagon_connector_graphics,
    fluid_animation = data.raw.pump["pump"].fluid_animation,
    glass_pictures = data.raw.pump["pump"].glass_pictures,
    circuit_connector = circuit_connector_definitions["pump"],
    circuit_wire_max_distance = default_circuit_wire_max_distance,
    animations = data.raw.pump["pump"].animations
    
  },

  {
    type = "pump",
    name = "nullius-small-pump-1",
    icons = data.raw.item["nullius-small-pump-1"].icons,
    flags = {"placeable-neutral", "player-creation"},
    localised_description = {"",
          {"entity-description.nullius-small-pump-1"},
          {"entity-description.nullius-configurable-pump"},
          " ",
          {"configurable-valves.more-in-factoriopedia"},"\n",
          {"entity-description.nullius-togglable-pump"}
        },
    factoriopedia_description = {"",
          {"entity-description.nullius-small-pump-1"},
          {"entity-description.nullius-configurable-pump"},
          {"configurable-valves.valve-examples"},
          {"configurable-valves.valve-shortcuts"},
        },
    minable = {mining_time = 0.5, result = "nullius-small-pump-1"},
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
      volume = 500,
      pipe_connections = {
        { position = {0, 0}, flow_direction = "output", direction = defines.direction.south },
        { position = {0, 0}, flow_direction = "input", direction = defines.direction.north }
      },
	  pipe_covers = pipecoverspictures()
    },
    -- fluid_box =
    --     {
    --       volume = 500,
    --       pipe_covers = pipecoverspictures(),
    --       pipe_connections =
    --       {
    --         {connection_type = "linked", flow_direction = "output", linked_connection_id=31113 + 1 },
    --         {connection_type = "linked", flow_direction = "input", linked_connection_id=31113 - 1 }
    --       },
    --       hide_connection_info = true,
    --     },
    energy_source = {
      type = "electric",
      usage_priority = "primary-input"
    },
    energy_usage = "10kW",
    pumping_speed = 40,
    impact_category = data.raw["pump"]["pump"].impact_category,
    open_sound = data.raw["pump"]["pump"].open_sound,
    close_sound = data.raw["pump"]["pump"].close_sound,
    circuit_connector = circuit_connector_definitions["pump"],
    circuit_wire_max_distance = data.raw["pump"]["pump"].circuit_wire_max_distance,

    animations = {
      north = {
		    layers = {
		      {
            filename = "__boblogistics__/graphics/entity/pipe/steel/pipe-straight-vertical.png",
            repeat_count = 16,
            width = 128,
            height = 64,
		        scale = 0.5,
			      animation_speed = 0.5,
			      shift = {0, -0.5}
		      },
		      {
            filename = "__angelsrefininggraphics__/graphics/entity/water-pump/pump-north.png",
            priority = "extra-high",
            frame_count = 16,
			      line_length = 4,
            width = 64,
            height = 64,
			      animation_speed = 0.5,
            tint = {0.75, 0.85, 0.95},
            shift = {0, -0.05}
		      }
		    }
      },
      east = {
        filename = "__angelsrefininggraphics__/graphics/entity/water-pump/pump-east.png",
        priority = "extra-high",
		    frame_count = 16,
		    line_length = 4,
        width = 64,
        height = 64,
		    animation_speed = 0.5,
        tint = {0.75, 0.85, 0.95}
      },
      south = {
		    layers = {
		      {
            filename = "__boblogistics__/graphics/entity/pipe/steel/pipe-straight-vertical.png",
            repeat_count = 16,
            width = 128,
            height = 64,
		        scale = 0.5,
			      animation_speed = 0.5,
			      shift = {0, -0.5}
		      },
		      {
            filename = "__angelsrefininggraphics__/graphics/entity/water-pump/pump-south.png",
            priority = "extra-high",
			      frame_count = 16,
			      line_length = 4,
            width = 64,
            height = 64,
			      animation_speed = 0.5,
            tint = {0.75, 0.85, 0.95},
            shift = {0, -0.05}
		      }
		    }
      },
      west = {
        filename = "__angelsrefininggraphics__/graphics/entity/water-pump/pump-west.png",
        priority = "extra-high",
		    frame_count = 16,
		    line_length = 4,
        width = 64,
        height = 64,
		    animation_speed = 0.5,
        tint = {0.75, 0.85, 0.95}
      }
    }
  },

  {
    type = "pump",
    name = "nullius-small-pump-2",
    icons = data.raw.item["nullius-small-pump-2"].icons,
    flags = {"placeable-neutral", "player-creation"},
    localised_description = {"",
          {"entity-description.nullius-small-pump-2"},
          {"entity-description.nullius-configurable-pump"},
          " ",
          {"configurable-valves.more-in-factoriopedia"},"\n",
          {"entity-description.nullius-togglable-pump"}
        },
    factoriopedia_description = {"",
          {"entity-description.nullius-small-pump-2"},
          {"entity-description.nullius-configurable-pump"},
          {"configurable-valves.valve-examples"},
          {"configurable-valves.valve-shortcuts"},
        },
    minable = {mining_time = 0.7, result = "nullius-small-pump-2"},
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
      volume = 500,
      pipe_connections = {
        { position = {0, 0}, flow_direction = "output", direction = defines.direction.south },
        { position = {0, 0}, flow_direction = "input", direction = defines.direction.north }
      },
    pipe_covers = pipecoverspictures()
    },
      -- fluid_box =
      --   {
      --     volume = 500,
      --     pipe_covers = pipecoverspictures(),
      --     pipe_connections =
      --     {
      --       {connection_type = "linked", flow_direction = "output", linked_connection_id=31113 + 1 },
      --       {connection_type = "linked", flow_direction = "input", linked_connection_id=31113 - 1 }
      --     },
      --     hide_connection_info = true,
      --   },
    energy_source = {
      type = "electric",
      usage_priority = "primary-input"
    },
    energy_usage = "15kW",
    pumping_speed = 80,
    impact_category = data.raw["pump"]["pump"].impact_category,
    open_sound = data.raw["pump"]["pump"].open_sound,
    close_sound = data.raw["pump"]["pump"].close_sound,
    circuit_connector = circuit_connector_definitions["pump"],
    circuit_wire_max_distance = data.raw["pump"]["pump"].circuit_wire_max_distance,

    animations = {
      north = {
		    layers = {
		      {
            filename = "__boblogistics__/graphics/entity/pipe/steel/pipe-straight-vertical.png",
            repeat_count = 16,
            width = 128,
            height = 64,
		        scale = 0.5,
			      animation_speed = 0.667,
			      shift = {0, -0.5}
		      },
		      {
            filename = "__angelsrefininggraphics__/graphics/entity/water-pump/pump-north.png",
            priority = "extra-high",
            frame_count = 16,
			      line_length = 4,
            width = 64,
            height = 64,
			      animation_speed = 0.667,
            tint = {1, 1, 0.85},
            shift = {0, -0.05}
		      }
		    }
      },
      east = {
        filename = "__angelsrefininggraphics__/graphics/entity/water-pump/pump-east.png",
        priority = "extra-high",
		    frame_count = 16,
		    line_length = 4,
        width = 64,
        height = 64,
		    animation_speed = 0.667,
        tint = {1, 1, 0.85}
      },
      south = {
		    layers = {
		      {
            filename = "__boblogistics__/graphics/entity/pipe/steel/pipe-straight-vertical.png",
            repeat_count = 16,
            width = 128,
            height = 64,
		        scale = 0.5,
			      animation_speed = 0.667,
			      shift = {0, -0.5}
		      },
		      {
            filename = "__angelsrefininggraphics__/graphics/entity/water-pump/pump-south.png",
            priority = "extra-high",
			      frame_count = 16,
			      line_length = 4,
            width = 64,
            height = 64,
			      animation_speed = 0.667,
            tint = {1, 1, 0.85},
            shift = {0, -0.05}
		      }
		    }
      },
      west = {
        filename = "__angelsrefininggraphics__/graphics/entity/water-pump/pump-west.png",
        priority = "extra-high",
		    frame_count = 16,
		    line_length = 4,
        width = 64,
        height = 64,
		    animation_speed = 0.667,
        tint = {1, 1, 0.85}
      }
    }
  },
  {
    type = "pump",
    name = "nullius-togglable-small-pump-1",
    icons = data.raw.item["nullius-small-pump-1"].icons,
    flags = {"placeable-neutral", "player-creation"},
    hidden_in_factoriopedia = true,
    localised_name = {"entity-name.nullius-small-pump-1"},
    localised_description = {"",
          {"entity-description.nullius-small-pump-1"},
          {"entity-description.nullius-configurable-pump"},
          " ",
          {"configurable-valves.more-in-factoriopedia"},"\n",
          {"entity-description.nullius-togglable-pump"}
        },
    factoriopedia_description = {"",
          {"entity-description.nullius-small-pump-1"},
          {"entity-description.nullius-configurable-pump"},
          {"configurable-valves.valve-examples"},
          {"configurable-valves.valve-shortcuts"},
        },
    minable = {mining_time = 0.5, result = "nullius-small-pump-1"},
    placeable_by = {item = "nullius-small-pump-1", count = 1},
    max_health = 100,
    fast_replaceable_group = "pipe",
    next_upgrade = "nullius-togglable-small-pump-2",
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
    -- fluid_box = {
    --   volume = 500,
    --   pipe_connections = {
    --     { position = {0, 0}, flow_direction = "output", direction = defines.direction.south },
    --     { position = {0, 0}, flow_direction = "input", direction = defines.direction.north }
    --   },
	  -- pipe_covers = pipecoverspictures()
    -- },
    fluid_box =
        {
          volume = 500,
          pipe_covers = pipecoverspictures(),
          pipe_connections =
          {
            {connection_type = "linked", flow_direction = "output", linked_connection_id=31113 + 1 },
            {connection_type = "linked", flow_direction = "input", linked_connection_id=31113 - 1 }
          },
          hide_connection_info = true,
        },
    energy_source = {
      type = "electric",
      usage_priority = "primary-input"
    },
    energy_usage = "10kW",
    pumping_speed = 40,
    impact_category = data.raw["pump"]["pump"].impact_category,
    open_sound = data.raw["pump"]["pump"].open_sound,
    close_sound = data.raw["pump"]["pump"].close_sound,
    circuit_connector = circuit_connector_definitions["pump"],
    circuit_wire_max_distance = data.raw["pump"]["pump"].circuit_wire_max_distance,

    animations = {
      north = {
		    layers = {
		      {
            filename = "__boblogistics__/graphics/entity/pipe/steel/pipe-straight-vertical.png",
            repeat_count = 16,
            width = 128,
            height = 64,
		        scale = 0.5,
			      animation_speed = 0.5,
			      shift = {0, -0.5}
		      },
		      {
            filename = "__angelsrefininggraphics__/graphics/entity/water-pump/pump-north.png",
            priority = "extra-high",
            frame_count = 16,
			      line_length = 4,
            width = 64,
            height = 64,
			      animation_speed = 0.5,
            tint = {0.75, 0.85, 0.95},
            shift = {0, -0.05}
		      }
		    }
      },
      east = {
        filename = "__angelsrefininggraphics__/graphics/entity/water-pump/pump-east.png",
        priority = "extra-high",
		    frame_count = 16,
		    line_length = 4,
        width = 64,
        height = 64,
		    animation_speed = 0.5,
        tint = {0.75, 0.85, 0.95}
      },
      south = {
		    layers = {
		      {
            filename = "__boblogistics__/graphics/entity/pipe/steel/pipe-straight-vertical.png",
            repeat_count = 16,
            width = 128,
            height = 64,
		        scale = 0.5,
			      animation_speed = 0.5,
			      shift = {0, -0.5}
		      },
		      {
            filename = "__angelsrefininggraphics__/graphics/entity/water-pump/pump-south.png",
            priority = "extra-high",
			      frame_count = 16,
			      line_length = 4,
            width = 64,
            height = 64,
			      animation_speed = 0.5,
            tint = {0.75, 0.85, 0.95},
            shift = {0, -0.05}
		      }
		    }
      },
      west = {
        filename = "__angelsrefininggraphics__/graphics/entity/water-pump/pump-west.png",
        priority = "extra-high",
		    frame_count = 16,
		    line_length = 4,
        width = 64,
        height = 64,
		    animation_speed = 0.5,
        tint = {0.75, 0.85, 0.95}
      }
    }
  },

  {
    type = "pump",
    name = "nullius-togglable-small-pump-2",
    icons = data.raw.item["nullius-small-pump-2"].icons,
    flags = {"placeable-neutral", "player-creation"},
    hidden_in_factoriopedia = true,
    localised_name = {"entity-name.nullius-small-pump-2"},
    localised_description = {"",
          {"entity-description.nullius-small-pump-2"},
          {"entity-description.nullius-configurable-pump"},
          " ",
          {"configurable-valves.more-in-factoriopedia"}, "\n",
          {"entity-description.nullius-togglable-pump"}
        },
    factoriopedia_description = {"",
          {"entity-description.nullius-small-pump-2"},
          {"entity-description.nullius-configurable-pump"},
          {"configurable-valves.valve-examples"},
          {"configurable-valves.valve-shortcuts"},
        },
    minable = {mining_time = 0.7, result = "nullius-small-pump-2"},
    placeable_by = {item = "nullius-small-pump-2", count = 1},
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
    -- fluid_box = {
    --   volume = 500,
    --   pipe_connections = {
    --     { position = {0, 0}, flow_direction = "output", direction = defines.direction.south },
    --     { position = {0, 0}, flow_direction = "input", direction = defines.direction.north }
    --   },
    -- pipe_covers = pipecoverspictures()
    -- },
      fluid_box =
        {
          volume = 500,
          pipe_covers = pipecoverspictures(),
          pipe_connections =
          {
            {connection_type = "linked", flow_direction = "output", linked_connection_id=31113 + 1 },
            {connection_type = "linked", flow_direction = "input", linked_connection_id=31113 - 1 }
          },
          hide_connection_info = true,
        },
    energy_source = {
      type = "electric",
      usage_priority = "primary-input"
    },
    energy_usage = "15kW",
    pumping_speed = 80,
    impact_category = data.raw["pump"]["pump"].impact_category,
    open_sound = data.raw["pump"]["pump"].open_sound,
    close_sound = data.raw["pump"]["pump"].close_sound,
    circuit_connector = circuit_connector_definitions["pump"],
    circuit_wire_max_distance = data.raw["pump"]["pump"].circuit_wire_max_distance,

    animations = {
      north = {
		    layers = {
		      {
            filename = "__boblogistics__/graphics/entity/pipe/steel/pipe-straight-vertical.png",
            repeat_count = 16,
            width = 128,
            height = 64,
		        scale = 0.5,
			      animation_speed = 0.667,
			      shift = {0, -0.5}
		      },
		      {
            filename = "__angelsrefininggraphics__/graphics/entity/water-pump/pump-north.png",
            priority = "extra-high",
            frame_count = 16,
			      line_length = 4,
            width = 64,
            height = 64,
			      animation_speed = 0.667,
            tint = {1, 1, 0.85},
            shift = {0, -0.05}
		      }
		    }
      },
      east = {
        filename = "__angelsrefininggraphics__/graphics/entity/water-pump/pump-east.png",
        priority = "extra-high",
		    frame_count = 16,
		    line_length = 4,
        width = 64,
        height = 64,
		    animation_speed = 0.667,
        tint = {1, 1, 0.85}
      },
      south = {
		    layers = {
		      {
            filename = "__boblogistics__/graphics/entity/pipe/steel/pipe-straight-vertical.png",
            repeat_count = 16,
            width = 128,
            height = 64,
		        scale = 0.5,
			      animation_speed = 0.667,
			      shift = {0, -0.5}
		      },
		      {
            filename = "__angelsrefininggraphics__/graphics/entity/water-pump/pump-south.png",
            priority = "extra-high",
			      frame_count = 16,
			      line_length = 4,
            width = 64,
            height = 64,
			      animation_speed = 0.667,
            tint = {1, 1, 0.85},
            shift = {0, -0.05}
		      }
		    }
      },
      west = {
        filename = "__angelsrefininggraphics__/graphics/entity/water-pump/pump-west.png",
        priority = "extra-high",
		    frame_count = 16,
		    line_length = 4,
        width = 64,
        height = 64,
		    animation_speed = 0.667,
        tint = {1, 1, 0.85}
      }
    }
  },

  {
    type = "pipe",
    name = "nullius-pipe-2",
	  localised_description = {"entity-description.nullius-pipe"},
    icons = data.raw.item["nullius-pipe-2"].icons,
    flags = {"placeable-neutral", "player-creation"},
    icon_draw_specification = {scale = 0.5},
    minable = {mining_time = 0.3, result = "nullius-pipe-2"},
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
      volume = 400,
      pipe_covers = pipecoverspictures(), -- in case a real pipe is connected to a ghost
      max_pipeline_extent = 144,
      pipe_connections = {
        { position = {0, 0}, direction = defines.direction.north },
        { position = {0, 0},  direction = defines.direction.east },
        { position = {0, 0},  direction = defines.direction.south },
        { position = {0, 0}, direction = defines.direction.west }
      },
      hide_connection_info = true
    },
    impact_category = data.raw["pipe"]["pipe"].impact_category,
    working_sound = data.raw["pipe"]["pipe"].working_sound,
    horizontal_window_bounding_box = {{-0.25, -0.25}, {0.25, 0.15625}},
    vertical_window_bounding_box = {{-0.28125, -0.40625}, {0.03125, 0.125}},
    pictures = pipepics("__boblogistics__/graphics/entity/pipe/copper-tungsten/")
  },

  {
    type = "pipe",
    name = "nullius-pipe-3",
	  localised_description = {"entity-description.nullius-pipe"},
    icons = data.raw.item["nullius-pipe-3"].icons,
    flags = {"placeable-neutral", "player-creation"},
    icon_draw_specification = {scale = 0.5},
    minable = {mining_time = 0.4, result = "nullius-pipe-3"},
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
      volume = 400,
      pipe_covers = pipecoverspictures(), -- in case a real pipe is connected to a ghost
      max_pipeline_extent = 320,
      pipe_connections = {
        { position = {0, 0}, direction = defines.direction.north },
        { position = {0, 0},  direction = defines.direction.east },
        { position = {0, 0},  direction = defines.direction.south },
        { position = {0, 0}, direction = defines.direction.west }
      },
      hide_connection_info = true
    },
    impact_category = data.raw["pipe"]["pipe"].impact_category,
    working_sound = data.raw["pipe"]["pipe"].working_sound,
    horizontal_window_bounding_box = {{-0.25, -0.25}, {0.25, 0.15625}},
    vertical_window_bounding_box = {{-0.28125, -0.40625}, {0.03125, 0.125}},
    pictures = pipepics("__boblogistics__/graphics/entity/pipe/plastic/")
  },

  {
    type = "pipe",
    name = "nullius-pipe-4",
	  localised_description = {"entity-description.nullius-pipe"},
    icons = data.raw.item["nullius-pipe-4"].icons,
    flags = {"placeable-neutral", "player-creation"},
    icon_draw_specification = {scale = 0.5},
    minable = {mining_time = 0.5, result = "nullius-pipe-4"},
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
      volume = 400,
      pipe_covers = pipecoverspictures(), -- in case a real pipe is connected to a ghost
      max_pipeline_extent = 672,
      pipe_connections = {
        { position = {0, 0}, direction = defines.direction.north },
        { position = {0, 0},  direction = defines.direction.east },
        { position = {0, 0},  direction = defines.direction.south },
        { position = {0, 0}, direction = defines.direction.west }
      },
      hide_connection_info = true
    },
    impact_category = data.raw["pipe"]["pipe"].impact_category,
    working_sound = data.raw["pipe"]["pipe"].working_sound,
    horizontal_window_bounding_box = {{-0.25, -0.25}, {0.25, 0.15625}},
    vertical_window_bounding_box = {{-0.28125, -0.40625}, {0.03125, 0.125}},
    pictures = pipepics("__boblogistics__/graphics/entity/pipe/tungsten/")
  },

  {
    type = "pipe-to-ground",
    name = "nullius-underground-pipe-2",
	  localised_description = {"entity-description.nullius-underground-pipe"},
    icons = data.raw.item["nullius-underground-pipe-2"].icons,
    flags = {"placeable-neutral", "player-creation"},
    icon_draw_specification = {scale = 0.5},
    minable = {mining_time = 0.6, result = "nullius-underground-pipe-2"},
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
      volume = 400,
      pipe_covers = pipecoverspictures(),
      max_pipeline_extent = 144,
      pipe_connections = {
        { position = {0, 0}, direction = defines.direction.north },
        {
          connection_type = "underground",
          position = {0, 0},
          max_underground_distance = 15,
          direction = defines.direction.south
        }
      },
      hide_connection_info = true
    },
    impact_category = data.raw["pipe-to-ground"]["pipe-to-ground"].impact_category,
    pictures = undergroundpipepics("__boblogistics__/graphics/entity/pipe/copper-tungsten/"),
    visualization = data.raw["pipe-to-ground"]["pipe-to-ground"].visualization,
    disabled_visualization = data.raw["pipe-to-ground"]["pipe-to-ground"].disabled_visualization,
  },

  {
    type = "pipe-to-ground",
    name = "nullius-underground-pipe-3",
	  localised_description = {"entity-description.nullius-underground-pipe"},
    icons = data.raw.item["nullius-underground-pipe-3"].icons,
    flags = {"placeable-neutral", "player-creation"},
    icon_draw_specification = {scale = 0.5},
    minable = {mining_time = 0.8, result = "nullius-underground-pipe-3"},
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
      volume = 400,
      pipe_covers = pipecoverspictures(),
      max_pipeline_extent = 320,
      pipe_connections = {
        { position = {0, 0}, direction = defines.direction.north },
        {
          connection_type = "underground",
          position = {0, 0},
          max_underground_distance = 19,
          direction = defines.direction.south
        }
      },
      hide_connection_info = true
    },
    impact_category = data.raw["pipe-to-ground"]["pipe-to-ground"].impact_category,
    pictures = data.raw["pipe-to-ground"]["bob-plastic-pipe-to-ground"].pictures,
    visualization = data.raw["pipe-to-ground"]["pipe-to-ground"].visualization,
    disabled_visualization = data.raw["pipe-to-ground"]["pipe-to-ground"].disabled_visualization,
  },

  {
    type = "pipe-to-ground",
    name = "nullius-underground-pipe-4",
	  localised_description = {"entity-description.nullius-underground-pipe"},
    icons = data.raw.item["nullius-underground-pipe-4"].icons,
    flags = {"placeable-neutral", "player-creation"},
    icon_draw_specification = {scale = 0.5},
    minable = {mining_time = 1, result = "nullius-underground-pipe-4"},
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
      volume = 400,
      pipe_covers = pipecoverspictures(),
      max_pipeline_extent = 672,
      pipe_connections = {
        { position = {0, 0}, direction = defines.direction.north },
        {
          position = {0, 0},
          connection_type = "underground",
          max_underground_distance = 23,
          direction = defines.direction.south
        }
      },
      hide_connection_info = true
    },
    impact_category = data.raw["pipe-to-ground"]["pipe-to-ground"].impact_category,
    pictures = undergroundpipepics("__boblogistics__/graphics/entity/pipe/tungsten/"),
    visualization = data.raw["pipe-to-ground"]["pipe-to-ground"].visualization,
    disabled_visualization = data.raw["pipe-to-ground"]["pipe-to-ground"].disabled_visualization,
  }
})
