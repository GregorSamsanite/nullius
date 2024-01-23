local ICONPATH = "__nullius__/graphics/icons/"
local ENTITYPATH = "__nullius__/graphics/entity/"
local BASEENTITY = "__base__/graphics/entity/"


local function hydro_animation(basename, newtint)
  local baselayer = scale_image(
      data.raw["assembling-machine"][basename].animation.layers[1], 0.725)
  baselayer.tint = newtint
  if (baselayer.hr_version ~= nil) then
    baselayer.hr_version.tint = newtint
  end

  local vertical = { layers = {
    {
	  filename = "__angelsrefining__/graphics/entity/hydro-plant/hr-hydro-plant-pipe-connections.png",
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
      filename = "__angelsrefining__/graphics/entity/hydro-plant/hr-hydro-plant-pipe-connections.png",
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
    energy_source = {type = "electric", usage_priority = "secondary-input", emissions = 0.01, drain="10kW"},
    energy_usage = "240kW",
    ingredient_count = 3,
    resistances = {
      { type = "impact", decrease = 100, percent = 90 },
      { type = "fire", percent = 75 }
    },
    fast_replaceable_group = "hydro-plant",
    next_upgrade = "nullius-hydro-plant-2",
    module_specification = { module_slots = 1 },
    allowed_effects = {"speed", "productivity", "consumption", "pollution"},
	animation = hydro_animation("hydro-plant",{0.77, 0.77, 0.68}),
	working_visualisations = scale_image(
	    data.raw["assembling-machine"]["hydro-plant"].working_visualisations, 0.725),
    vehicle_impact_sound =  { filename = "__base__/sound/car-metal-impact.ogg", volume = 0.65 },
    working_sound = data.raw["assembling-machine"]["hydro-plant"].working_sound,
    fluid_boxes = {
      {
        production_type = "input",
        pipe_picture = data.raw["assembling-machine"]["hydro-plant"].fluid_boxes[1].pipe_picture,
        pipe_covers = pipecoverspictures(),
        base_area = 10,
        base_level = -1,
        pipe_connections = {{ type="input", position = {-1, -3} }}
      },
      {
        production_type = "input",
        pipe_picture = data.raw["assembling-machine"]["hydro-plant"].fluid_boxes[1].pipe_picture,
        pipe_covers = pipecoverspictures(),
        base_area = 10,
        base_level = -1,
        pipe_connections = {{ type="input", position = {1, -3} }}
      },
      {
        production_type = "output",
        pipe_picture = data.raw["assembling-machine"]["hydro-plant"].fluid_boxes[2].pipe_picture,
        pipe_covers = pipecoverspictures(),
        base_area = 5,
        base_level = 3,
		height = 2,
        pipe_connections = {{ type="output", position = {1, 3} }}
      },
      {
        production_type = "output",
        pipe_picture = data.raw["assembling-machine"]["hydro-plant"].fluid_boxes[3].pipe_picture,
        pipe_covers = pipecoverspictures(),
        base_area = 5,
        base_level = 3,
		height = 2,
        pipe_connections = {{ type="output", position = {-1, 3} }}
      }
    },
    pipe_covers = pipecoverspictures(),
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
    energy_source = {type = "electric", usage_priority = "secondary-input", emissions = 0.05, drain="20kW"},
    energy_usage = "480kW",
    ingredient_count = 4,
    resistances = {
      { type = "impact", decrease = 100, percent = 90 },
      { type = "fire", percent = 75 }
    },
    module_specification = { module_slots = 2 },
    allowed_effects = {"speed", "productivity", "consumption", "pollution"},
    fast_replaceable_group = "hydro-plant",
    next_upgrade = "nullius-hydro-plant-3",
	animation = hydro_animation("hydro-plant-2",{0.8, 0.8, 0.9}),
	working_visualisations = scale_image(
	    data.raw["assembling-machine"]["hydro-plant-2"].working_visualisations, 0.725),
    vehicle_impact_sound =  { filename = "__base__/sound/car-metal-impact.ogg", volume = 0.65 },
    working_sound = data.raw["assembling-machine"]["hydro-plant-2"].working_sound,
    fluid_boxes = {
      {
        production_type = "input",
        pipe_picture = data.raw["assembling-machine"]["nullius-hydro-plant-1"].fluid_boxes[1].pipe_picture,
        pipe_covers = pipecoverspictures(),
        base_area = 10,
        height = 2,
        base_level = -2,
        pipe_connections = {{ type="input", position = {-1, -3} }}
      },
      {
        production_type = "input",
        pipe_picture = data.raw["assembling-machine"]["nullius-hydro-plant-1"].fluid_boxes[2].pipe_picture,
        pipe_covers = pipecoverspictures(),
        base_area = 10,
        height = 2,
        base_level = -2,
        pipe_connections = {{ type="input", position = {1, -3} }}
      },
      {
        production_type = "output",
        pipe_picture = data.raw["assembling-machine"]["nullius-hydro-plant-1"].fluid_boxes[3].pipe_picture,
        pipe_covers = pipecoverspictures(),
        base_area = 10,
        height = 2,
        base_level = 4,
        pipe_connections = {{ type="output", position = {1, 3} }}
      },
      {
        production_type = "output",
        pipe_picture = data.raw["assembling-machine"]["nullius-hydro-plant-1"].fluid_boxes[4].pipe_picture,
        pipe_covers = pipecoverspictures(),
        base_area = 10,
        height = 2,
        base_level = 4,
        pipe_connections = {{ type="output", position = {-1, 3} }}
      },
    },
    pipe_covers = pipecoverspictures(),
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
    energy_source = {type = "electric", usage_priority = "secondary-input", emissions = 0.1, drain="40kW"},
    energy_usage = "960kW",
    ingredient_count = 6,
    resistances = {
      { type = "impact", decrease = 100, percent = 90 },
      { type = "fire", percent = 75 }
    },
    module_specification = { module_slots = 3 },
    allowed_effects = {"speed", "productivity", "consumption", "pollution"},
    fast_replaceable_group = "hydro-plant",
    animation = hydro_animation("hydro-plant-3"),
	working_visualisations = scale_image(
	    data.raw["assembling-machine"]["hydro-plant-3"].working_visualisations, 0.725),
    vehicle_impact_sound =  { filename = "__base__/sound/car-metal-impact.ogg", volume = 0.65 },
    working_sound = data.raw["assembling-machine"]["hydro-plant-3"].working_sound,
    fluid_boxes = {
      {
        production_type = "input",
        pipe_picture = data.raw["assembling-machine"]["nullius-hydro-plant-1"].fluid_boxes[1].pipe_picture,
        pipe_covers = pipecoverspictures(),
        base_area = 15,
        height = 2,
        base_level = -3,
        pipe_connections = {{ type="input", position = {-1, -3} }}
      },
      {
        production_type = "input",
        pipe_picture = data.raw["assembling-machine"]["nullius-hydro-plant-1"].fluid_boxes[2].pipe_picture,
        pipe_covers = pipecoverspictures(),
        base_area = 15,
        height = 2,
        base_level = -3,
        pipe_connections = {{ type="input", position = {1, -3} }}
      },
      {
        production_type = "output",
        pipe_picture = data.raw["assembling-machine"]["nullius-hydro-plant-1"].fluid_boxes[3].pipe_picture,
        pipe_covers = pipecoverspictures(),
        base_area = 15,
        height = 3,
        base_level = 5,
        pipe_connections = {{ type="output", position = {1, 3} }}
      },
      {
        production_type = "output",
        pipe_picture = data.raw["assembling-machine"]["nullius-hydro-plant-1"].fluid_boxes[4].pipe_picture,
        pipe_covers = pipecoverspictures(),
        base_area = 15,
        height = 3,
        base_level = 5,
        pipe_connections = {{ type="output", position = {-1, 3} }}
      },
    },
    pipe_covers = pipecoverspictures(),
  }
})

data.raw["assembling-machine"]["nullius-hydro-plant-1"].working_visualisations[4] = nil
data.raw["assembling-machine"]["nullius-hydro-plant-1"].working_visualisations[5] = nil
data.raw["assembling-machine"]["nullius-hydro-plant-2"].working_visualisations[4] = nil
data.raw["assembling-machine"]["nullius-hydro-plant-2"].working_visualisations[5] = nil
data.raw["assembling-machine"]["nullius-hydro-plant-3"].working_visualisations[4] = nil
data.raw["assembling-machine"]["nullius-hydro-plant-3"].working_visualisations[5] = nil

local mhp1 = util.table.deepcopy(
    data.raw["assembling-machine"]["nullius-hydro-plant-1"])
mhp1.name = "nullius-mirror-hydro-plant-1"
mhp1.icons[2] = { icon = ICONPATH .. "flip1.png", icon_size = 64 }
mhp1.placeable_by = {item = "nullius-hydro-plant-1", count = 1}
mhp1.next_upgrade = "nullius-mirror-hydro-plant-2"
mhp1.localised_name = {"entity-name.nullius-mirrored",
    {"entity-name.nullius-hydro-plant-1"}}
mhp1.fluid_boxes[1].pipe_connections[1].position = {1, -3}
mhp1.fluid_boxes[2].pipe_connections[1].position = {-1, -3}
mhp1.fluid_boxes[3].pipe_connections[1].position = {-1, 3}
mhp1.fluid_boxes[4].pipe_connections[1].position = {1, 3}

data:extend({
  mhp1,
  {
    type = "assembling-machine",
    name = "nullius-mirror-hydro-plant-2",
	localised_name = {"entity-name.nullius-mirrored",
        {"entity-name.nullius-hydro-plant-2"}},
	icons = {
	  data.raw.item["nullius-hydro-plant-2"].icons[1],
	  { icon = ICONPATH .. "flip1.png", icon_size = 64 }
	},
    localised_description = {"entity-description.nullius-hydro-plant"},
    flags = {"placeable-neutral", "player-creation"},
    minable = {mining_time = 1.5, result = "nullius-hydro-plant-2"},
	placeable_by = {item = "nullius-hydro-plant-2", count = 1},
    max_health = 400,
    corpse = "big-remnants",
    dying_explosion = "medium-explosion",
    collision_box = {{-2.2, -2.2}, {2.2, 2.2}},
    selection_box = {{-2.5, -2.5}, {2.5, 2.5}},
    crafting_categories = {"nullius-water-treatment"},
    crafting_speed = 2,
    energy_source = {type = "electric", usage_priority = "secondary-input", emissions = 0.05, drain="20kW"},
    energy_usage = "480kW",
    ingredient_count = 4,
    resistances = data.raw["assembling-machine"]["nullius-hydro-plant-2"].resistances,
    module_specification = { module_slots = 2 },
    allowed_effects = {"speed", "productivity", "consumption", "pollution"},
    fast_replaceable_group = "hydro-plant",
    next_upgrade = "nullius-mirror-hydro-plant-3",
    animation = data.raw["assembling-machine"]["nullius-hydro-plant-2"].animation,
    working_visualisations = data.raw["assembling-machine"]["nullius-hydro-plant-2"].working_visualisations,
    vehicle_impact_sound =  { filename = "__base__/sound/car-metal-impact.ogg", volume = 0.65 },
    working_sound = data.raw["assembling-machine"]["hydro-plant"].working_sound,

    fluid_boxes = {
      {
        production_type = "input",
        pipe_picture = data.raw["assembling-machine"]["nullius-hydro-plant-1"].fluid_boxes[1].pipe_picture,
        pipe_covers = pipecoverspictures(),
        base_area = 10,
        height = 2,
        base_level = -2,
        pipe_connections = {{ type="input", position = {1, -3} }}
      },
      {
        production_type = "input",
        pipe_picture = data.raw["assembling-machine"]["nullius-hydro-plant-1"].fluid_boxes[2].pipe_picture,
        pipe_covers = pipecoverspictures(),
        base_area = 10,
        height = 2,
        base_level = -2,
        pipe_connections = {{ type="input", position = {-1, -3} }}
      },
      {
        production_type = "output",
        pipe_picture = data.raw["assembling-machine"]["nullius-hydro-plant-1"].fluid_boxes[3].pipe_picture,
        pipe_covers = pipecoverspictures(),
        base_area = 10,
        height = 2,
        base_level = 4,
        pipe_connections = {{ type="output", position = {-1, 3} }}
      },
      {
        production_type = "output",
        pipe_picture = data.raw["assembling-machine"]["nullius-hydro-plant-1"].fluid_boxes[4].pipe_picture,
        pipe_covers = pipecoverspictures(),
        base_area = 10,
        height = 2,
        base_level = 4,
        pipe_connections = {{ type="output", position = {1, 3} }}
      },
    }
  },

  {
    type = "assembling-machine",
    name = "nullius-mirror-hydro-plant-3",
	localised_name = {"entity-name.nullius-mirrored",
	    {"entity-name.nullius-hydro-plant-3"}},
	icons = {
	  data.raw.item["nullius-hydro-plant-3"].icons[1],
	  { icon = ICONPATH .. "flip1.png", icon_size = 64 }
	},
    localised_description = {"entity-description.nullius-hydro-plant"},
    flags = {"placeable-neutral", "player-creation"},
    minable = {mining_time = 2, result = "nullius-hydro-plant-3"},
	placeable_by = {item = "nullius-hydro-plant-3", count = 1},
    max_health = 500,
    corpse = "big-remnants",
    dying_explosion = "medium-explosion",
    collision_box = {{-2.2, -2.2}, {2.2, 2.2}},
    selection_box = {{-2.5, -2.5}, {2.5, 2.5}},
    crafting_categories = {"nullius-water-treatment"},
    crafting_speed = 4,
    energy_source = {type = "electric", usage_priority = "secondary-input", emissions = 0.1, drain="40kW"},
    energy_usage = "960kW",
    ingredient_count = 6,
    resistances = {
      { type = "impact", decrease = 100, percent = 90 },
      { type = "fire", percent = 75 }
    },
    module_specification = { module_slots = 3 },
    allowed_effects = {"speed", "productivity", "consumption", "pollution"},
    fast_replaceable_group = "hydro-plant",
    animation = data.raw["assembling-machine"]["nullius-hydro-plant-3"].animation,
    working_visualisations = data.raw["assembling-machine"]["nullius-hydro-plant-3"].working_visualisations,
    vehicle_impact_sound =  { filename = "__base__/sound/car-metal-impact.ogg", volume = 0.65 },
    working_sound = data.raw["assembling-machine"]["hydro-plant"].working_sound,

    fluid_boxes = {
      {
        production_type = "input",
        pipe_picture = data.raw["assembling-machine"]["nullius-hydro-plant-1"].fluid_boxes[1].pipe_picture,
        pipe_covers = pipecoverspictures(),
        base_area = 15,
        height = 2,
        base_level = -3,
        pipe_connections = {{ type="input", position = {1, -3} }}
      },
      {
        production_type = "input",
        pipe_picture = data.raw["assembling-machine"]["nullius-hydro-plant-1"].fluid_boxes[2].pipe_picture,
        pipe_covers = pipecoverspictures(),
        base_area = 15,
        height = 2,
        base_level = -3,
        pipe_connections = {{ type="input", position = {-1, -3} }}
      },
      {
        production_type = "output",
        pipe_picture = data.raw["assembling-machine"]["nullius-hydro-plant-1"].fluid_boxes[3].pipe_picture,
        pipe_covers = pipecoverspictures(),
        base_area = 15,
        height = 3,
        base_level = 5,
        pipe_connections = {{ type="output", position = {-1, 3} }}
      },
      {
        production_type = "output",
        pipe_picture = data.raw["assembling-machine"]["nullius-hydro-plant-1"].fluid_boxes[4].pipe_picture,
        pipe_covers = pipecoverspictures(),
        base_area = 15,
        height = 3,
        base_level = 5,
        pipe_connections = {{ type="output", position = {1, 3} }}
      },
    },
    pipe_covers = pipecoverspictures(),
  },

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
    drawing_box = {{-2.5, -2.8}, {2.5, 2.5}},
    scale_entity_info_icon = true,
    crafting_categories = {"distillation"},
    crafting_speed = 1,
    energy_source = {
      type = "electric",
      usage_priority = "secondary-input",
      emissions_per_minute = 6,
      drain = "20kW"
    },
    energy_usage = "280kW",

    resistances = {
      { type = "impact", decrease = 100, percent = 90 }
    },
    working_sound = data.raw["assembling-machine"]["oil-refinery"].working_sound,
	fluid_boxes = {
      {
        production_type = "input",
        pipe_covers = pipecoverspictures(),
        base_area = 10,
        base_level = -1,
        pipe_connections = {{ type="input", position = {-1, 3} }}
      },
      {
        production_type = "input",
        pipe_covers = pipecoverspictures(),
        base_area = 10,
        base_level = -1,
        pipe_connections = {{ type="input", position = {1, 3} }}
      },
      {
        production_type = "output",
        pipe_covers = pipecoverspictures(),
        base_level = 3,
		height = 2,
        base_area = 4,
        pipe_connections = {{ type="output", position = {-2, -3} }}
      },
      {
        production_type = "output",
        pipe_covers = pipecoverspictures(),
        base_level = 3,
		height = 2,
        base_area = 4,
        pipe_connections = {{ type="output", position = {0, -3} }}
      },
      {
        production_type = "output",
        pipe_covers = pipecoverspictures(),
        base_level = 3,
		height = 2,
        base_area = 4,
        pipe_connections = {{ type="output", position = {2, -3} }}
      }
    },
    vehicle_impact_sound =  { filename = "__base__/sound/car-metal-impact.ogg", volume = 0.65 },
    module_specification = { module_slots = 1 },
    allowed_effects = {"speed", "productivity", "consumption", "pollution"},
    fast_replaceable_group = "distillery",
    next_upgrade = "nullius-distillery-2",

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
          filename = BASEENTITY .. "chemical-plant/hr-chemical-plant-smoke-outer.png",
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
          width = 337,
          height = 255,
          frame_count = 1,
          shift = {2.515625, 0.484375},
          tint = {0.77, 0.77, 0.66, 1},
          hr_version = {
            filename = BASEENTITY .. "oil-refinery/hr-oil-refinery.png",
            width = 386,
            height = 430,
            frame_count = 1,
            shift = util.by_pixel(0, -7.5),
            scale = 0.5,
            tint = {0.77, 0.77, 0.66, 1}
          }
        },
        {
          filename = BASEENTITY .. "oil-refinery/oil-refinery-shadow.png",
          width = 337,
          height = 213,
          frame_count = 1,
          shift = util.by_pixel(82.5, 26.5),
          draw_as_shadow = true,
          hr_version = {
            filename = BASEENTITY .. "oil-refinery/hr-oil-refinery-shadow.png",
            width = 674,
            height = 426,
            frame_count = 1,
            shift = util.by_pixel(82.5, 26.5),
            draw_as_shadow = true,
            force_hr_shadow = true,
            scale = 0.5
          }
        }
      }
    })
  }
})

local md1 = util.table.deepcopy(
    data.raw["assembling-machine"]["nullius-distillery-1"])
md1.name = "nullius-mirror-distillery-1"
md1.order = "z-nullius-cbc"
md1.icons[2] = { icon = ICONPATH .. "flip1.png", icon_size = 64 }
md1.placeable_by = {item = "nullius-distillery-1", count = 1}
md1.next_upgrade = "nullius-mirror-distillery-2"
md1.localised_name = {"entity-name.nullius-mirrored",
    {"entity-name.nullius-distillery-1"}}
md1.fluid_boxes[1].pipe_connections[1].position = {1, 3}
md1.fluid_boxes[2].pipe_connections[1].position = {-1, 3}
md1.fluid_boxes[3].pipe_connections[1].position = {2, -3}
md1.fluid_boxes[5].pipe_connections[1].position = {-2, -3}

data:extend({
  md1,
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
    drawing_box = {{-2.5, -2.8}, {2.5, 2.5}},
    scale_entity_info_icon = true,
    crafting_categories = {"distillation"},
    crafting_speed = 2,
    energy_source = {
      type = "electric",
      usage_priority = "secondary-input",
      emissions_per_minute = 12,
      drain = "50kW"
    },
    energy_usage = "550kW",

    resistances = data.raw["assembling-machine"]["nullius-distillery-1"].resistances,
    working_sound = data.raw["assembling-machine"]["oil-refinery"].working_sound,
    working_visualisations = data.raw["assembling-machine"]["nullius-distillery-1"].working_visualisations,
    vehicle_impact_sound =  { filename = "__base__/sound/car-metal-impact.ogg", volume = 0.65 },
    module_specification = { module_slots = 2 },
    allowed_effects = {"speed", "productivity", "consumption", "pollution"},
    fast_replaceable_group = "distillery",
    next_upgrade = "nullius-distillery-3",

    fluid_boxes = {
      {
        production_type = "input",
        pipe_covers = pipecoverspictures(),
        base_area = 10,
        base_level = -2,
        pipe_connections = {{ type="input", position = {-1, 3} }}
      },
      {
        production_type = "input",
        pipe_covers = pipecoverspictures(),
        base_area = 10,
        base_level = -2,
        pipe_connections = {{ type="input", position = {1, 3} }}
      },
      {
        production_type = "output",
        pipe_covers = pipecoverspictures(),
		base_level = 4,
		height = 2,
        base_area = 5,
        pipe_connections = {{ type="output", position = {-2, -3} }}
      },
      {
        production_type = "output",
        pipe_covers = pipecoverspictures(),
		base_level = 4,
		height = 2,
        base_area = 5,
        pipe_connections = {{ type="output", position = {0, -3} }}
      },
      {
        production_type = "output",
        pipe_covers = pipecoverspictures(),
		base_level = 4,
		height = 2,
        base_area = 5,
        pipe_connections = {{ type="output", position = {2, -3} }}
      }
    },

    animation = make_4way_animation_from_spritesheet({
      layers = {
        {
          filename = BASEENTITY .. "oil-refinery/oil-refinery.png",
          width = 337,
          height = 255,
          frame_count = 1,
          shift = {2.515625, 0.484375},
          tint = {0.8, 0.8, 1, 1},
          hr_version = {
            filename = BASEENTITY .. "oil-refinery/hr-oil-refinery.png",
            width = 386,
            height = 430,
            frame_count = 1,
            shift = util.by_pixel(0, -7.5),
            scale = 0.5,
            tint = {0.8, 0.8, 1, 1}
          }
        },
        {
          filename = BASEENTITY .. "oil-refinery/oil-refinery-shadow.png",
          width = 337,
          height = 213,
          frame_count = 1,
          shift = util.by_pixel(82.5, 26.5),
          draw_as_shadow = true,
          hr_version = {
            filename = BASEENTITY .. "oil-refinery/hr-oil-refinery-shadow.png",
            width = 674,
            height = 426,
            frame_count = 1,
            shift = util.by_pixel(82.5, 26.5),
            draw_as_shadow = true,
            force_hr_shadow = true,
            scale = 0.5
          }
        }
      }
    })
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
    drawing_box = {{-2.5, -2.8}, {2.5, 2.5}},
    scale_entity_info_icon = true,
    crafting_categories = {"distillation"},
    crafting_speed = 4,
    energy_source = {
      type = "electric",
      usage_priority = "secondary-input",
      emissions_per_minute = 24,
      drain = "100kW"
    },
    energy_usage = "1100kW",

    resistances = data.raw["assembling-machine"]["nullius-distillery-1"].resistances,
    working_sound = data.raw["assembling-machine"]["oil-refinery"].working_sound,
    working_visualisations = data.raw["assembling-machine"]["nullius-distillery-1"].working_visualisations,
    vehicle_impact_sound =  { filename = "__base__/sound/car-metal-impact.ogg", volume = 0.65 },
    module_specification = { module_slots = 3 },
    allowed_effects = {"speed", "productivity", "consumption", "pollution"},
    fast_replaceable_group = "distillery",
    animation = data.raw["assembling-machine"]["oil-refinery"].animation,

    fluid_boxes = {
      {
        production_type = "input",
        pipe_covers = pipecoverspictures(),
        base_area = 10,
        base_level = -3,
        height = 2,
        pipe_connections = {{ type="input", position = {-1, 3} }}
      },
      {
        production_type = "input",
        pipe_covers = pipecoverspictures(),
        base_area = 10,
        base_level = -3,
        height = 2,
        pipe_connections = {{ type="input", position = {1, 3} }}
      },
      {
        production_type = "output",
        pipe_covers = pipecoverspictures(),
        base_level = 5,
        base_area = 5,
        height = 3,
        pipe_connections = {{ type="output", position = {-2, -3} }}
      },
      {
        production_type = "output",
        pipe_covers = pipecoverspictures(),
        base_level = 5,
        base_area = 5,
        height = 3,
        pipe_connections = {{ type="output", position = {0, -3} }}
      },
      {
        production_type = "output",
        pipe_covers = pipecoverspictures(),
        base_level = 5,
        base_area = 5,
        height = 3,
        pipe_connections = {{ type="output", position = {2, -3} }}
      }
    }
  }
})

data:extend({
  {
    type = "assembling-machine",
    name = "nullius-mirror-distillery-2",
	order = "z-nullius-ccc",
	icons = {
	  data.raw.item["nullius-distillery-2"].icons[1],
	  { icon = ICONPATH .. "flip1.png", icon_size = 64 }
	},
    localised_description = {"entity-description.nullius-distillery"},
    flags = {"placeable-neutral","player-creation"},
    minable = {mining_time = 1.8, result = "nullius-distillery-2"},
	placeable_by = {item = "nullius-distillery-2", count = 1},
    max_health = 500,
    dying_explosion = "medium-explosion",
    corpse = "oil-refinery-remnants",
    collision_box = {{-2.3, -2.3}, {2.3, 2.3}},
    selection_box = {{-2.5, -2.5}, {2.5, 2.5}},
    drawing_box = {{-2.5, -2.8}, {2.5, 2.5}},
    scale_entity_info_icon = true,
    crafting_categories = {"distillation"},
    crafting_speed = 2,
    energy_source = data.raw["assembling-machine"]["nullius-distillery-2"].energy_source,
    energy_usage = "550kW",
    resistances = data.raw["assembling-machine"]["nullius-distillery-2"].resistances,
    working_sound = data.raw["assembling-machine"]["oil-refinery"].working_sound,
    working_visualisations = data.raw["assembling-machine"]["nullius-distillery-2"].working_visualisations,
    vehicle_impact_sound =  { filename = "__base__/sound/car-metal-impact.ogg", volume = 0.65 },
    module_specification = { module_slots = 2 },
    allowed_effects = {"speed", "productivity", "consumption", "pollution"},
    fast_replaceable_group = "distillery",
    next_upgrade = "nullius-mirror-distillery-3",
    animation = data.raw["assembling-machine"]["nullius-distillery-2"].animation,

    fluid_boxes = {
      {
        production_type = "input",
        pipe_covers = pipecoverspictures(),
        base_area = 10,
        base_level = -2,
        pipe_connections = {{ type="input", position = {1, 3} }}
      },
      {
        production_type = "input",
        pipe_covers = pipecoverspictures(),
        base_area = 10,
        base_level = -2,
        pipe_connections = {{ type="input", position = {-1, 3} }}
      },
      {
        production_type = "output",
        pipe_covers = pipecoverspictures(),
		base_level = 4,
		height = 2,
        base_area = 5,
        pipe_connections = {{ type="output", position = {2, -3} }}
      },
      {
        production_type = "output",
        pipe_covers = pipecoverspictures(),
		base_level = 4,
		height = 2,
        base_area = 5,
        pipe_connections = {{ type="output", position = {0, -3} }}
      },
      {
        production_type = "output",
        pipe_covers = pipecoverspictures(),
		base_level = 4,
		height = 2,
        base_area = 5,
        pipe_connections = {{ type="output", position = {-2, -3} }}
      }
    }
  },

  {
    type = "assembling-machine",
    name = "nullius-mirror-distillery-3",
	order = "z-nullius-cdc",
	icons = {
	  data.raw.item["nullius-distillery-3"].icons[1],
	  { icon = ICONPATH .. "flip1.png", icon_size = 64 }
	},
    localised_description = {"entity-description.nullius-distillery"},
    flags = {"placeable-neutral", "player-creation"},
    minable = {mining_time = 2.4, result = "nullius-distillery-3"},
	placeable_by = {item = "nullius-distillery-3", count = 1},
    max_health = 600,
    dying_explosion = "medium-explosion",
    corpse = "oil-refinery-remnants",
    collision_box = {{-2.3, -2.3}, {2.3, 2.3}},
    selection_box = {{-2.5, -2.5}, {2.5, 2.5}},
    drawing_box = {{-2.5, -2.8}, {2.5, 2.5}},
    scale_entity_info_icon = true,
    crafting_categories = {"distillation"},
    crafting_speed = 4,
    energy_source = {
      type = "electric",
      usage_priority = "secondary-input",
      emissions_per_minute = 24,
      drain = "100kW"
    },
    energy_usage = "1100kW",

    resistances = data.raw["assembling-machine"]["nullius-distillery-1"].resistances,
    working_sound = data.raw["assembling-machine"]["oil-refinery"].working_sound,
    working_visualisations = data.raw["assembling-machine"]["nullius-distillery-1"].working_visualisations,
    vehicle_impact_sound =  { filename = "__base__/sound/car-metal-impact.ogg", volume = 0.65 },
    module_specification = { module_slots = 3 },
    allowed_effects = {"speed", "productivity", "consumption", "pollution"},
    fast_replaceable_group = "distillery",
    animation = data.raw["assembling-machine"]["oil-refinery"].animation,

    fluid_boxes = {
      {
        production_type = "input",
        pipe_covers = pipecoverspictures(),
        base_area = 10,
        base_level = -3,
        height = 2,
        pipe_connections = {{ type="input", position = {1, 3} }}
      },
      {
        production_type = "input",
        pipe_covers = pipecoverspictures(),
        base_area = 10,
        base_level = -3,
        height = 2,
        pipe_connections = {{ type="input", position = {-1, 3} }}
      },
      {
        production_type = "output",
        pipe_covers = pipecoverspictures(),
        base_level = 5,
        base_area = 5,
        height = 3,
        pipe_connections = {{ type="output", position = {2, -3} }}
      },
      {
        production_type = "output",
        pipe_covers = pipecoverspictures(),
        base_level = 5,
        base_area = 5,
        height = 3,
        pipe_connections = {{ type="output", position = {0, -3} }}
      },
      {
        production_type = "output",
        pipe_covers = pipecoverspictures(),
        base_level = 5,
        base_area = 5,
        height = 3,
        pipe_connections = {{ type="output", position = {-2, -3} }}
      }
    }
  },

  {
    type = "assembling-machine",
    name = "nullius-surge-electrolyzer-1",
	icons = {{
      icon = "__angelspetrochem__/graphics/icons/electrolyser.png",
      icon_size = 32,
      tint = {0.8, 0.8, 0.6}
    }},
	order = data.raw.item["nullius-electrolyzer-1"].order .. "d",
    localised_description = {"entity-description.nullius-surge",
	    {"entity-description.nullius-electrolyzer"}},
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
      emissions_per_minute = 0.5,
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
    animation = {
      north = {
        filename = "__angelspetrochem__/graphics/entity/electrolyser/electrolyser-north.png",
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
        filename = "__angelspetrochem__/graphics/entity/electrolyser/electrolyser-east.png",
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
        filename = "__angelspetrochem__/graphics/entity/electrolyser/electrolyser-north.png",
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
        filename = "__angelspetrochem__/graphics/entity/electrolyser/electrolyser-east.png",
        width = 224,
        height = 224,
        frame_count = 36,
        line_length = 6,
        shift = {0, 0},
        animation_speed = 0.5,
        scale = 0.78,
        tint = {r=0.8, g=0.8, b=0.6}
      }
    },
	vehicle_impact_sound = data.raw["assembling-machine"]["angels-electrolyser"].vehicle_impact_sound,
	working_sound = {
      sound = { filename = "__angelspetrochem__/sound/electrolyser.ogg", volume = 0.15 },
      idle_sound = { filename = "__base__/sound/idle1.ogg", volume = 0.4 },
      audible_distance_modifier = 0.75
    },
    fluid_boxes = {
      {
        production_type = "input",
        pipe_covers = pipecoverspictures(),
		base_area = 20,
        base_level = -3,
		height = 3,
        pipe_connections = {{ type="input", position = {-1.5, -2.5} }}
      },
      {
        production_type = "output",
        pipe_covers = pipecoverspictures(),
		base_area = 15,
        base_level = 3,
        height = 2,
        pipe_connections = {{ type="output", position = {-1.5, 2.5} }}
      },
      {
        production_type = "output",
        pipe_covers = pipecoverspictures(),
        base_area = 15,
        base_level = 3,
        height = 2,
        pipe_connections = {{ type="output", position = {1.5, -2.5} }}
      },
      {
        production_type = "output",
        pipe_covers = pipecoverspictures(),
        base_area = 15,
        base_level = 3,
        height = 2,
        pipe_connections = {{ type="output", position = {1.5, 2.5} }}
      }
    },
    pipe_covers = pipecoverspictures()
  }
})

data:extend({
  {
    type = "assembling-machine",
    name = "nullius-priority-electrolyzer-1",
	icons = {{
      icon = "__angelspetrochem__/graphics/icons/electrolyser.png",
      icon_size = 32,
      tint = {0.8, 0.68, 0.51}
    }},
	order = data.raw.item["nullius-electrolyzer-1"].order .. "b",
	localised_description = {"entity-description.nullius-priority",
	    {"entity-description.nullius-electrolyzer"}},
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
      emissions_per_minute = 0.5,
      drain = "10kW",
      usage_priority = "secondary-input"
    },
    energy_usage = "990kW",
    resistances = data.raw["assembling-machine"]["nullius-surge-electrolyzer-1"].resistances,
    fluid_boxes = data.raw["assembling-machine"]["nullius-surge-electrolyzer-1"].fluid_boxes,
    animation = {
      north = {
        filename = "__angelspetrochem__/graphics/entity/electrolyser/electrolyser-north.png",
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
        filename = "__angelspetrochem__/graphics/entity/electrolyser/electrolyser-east.png",
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
        filename = "__angelspetrochem__/graphics/entity/electrolyser/electrolyser-north.png",
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
        filename = "__angelspetrochem__/graphics/entity/electrolyser/electrolyser-east.png",
        width = 224,
        height = 224,
        frame_count = 36,
        line_length = 6,
        shift = {0, 0},
        animation_speed = 0.5,
        scale = 0.78,
        tint = {0.8, 0.68, 0.51}
      }
    },
	vehicle_impact_sound = data.raw["assembling-machine"]["nullius-surge-electrolyzer-1"].vehicle_impact_sound,
    working_sound = data.raw["assembling-machine"]["nullius-surge-electrolyzer-1"].working_sound
  },

  {
    type = "assembling-machine",
    name = "nullius-surge-electrolyzer-2",
	icons = {{
      icon = "__angelspetrochem__/graphics/icons/electrolyser.png",
      icon_size = 32,
      tint = {0.8, 0.9, 1}
    }},
	order = data.raw.item["nullius-electrolyzer-2"].order .. "d",
	localised_description = {"entity-description.nullius-surge",
	    {"entity-description.nullius-electrolyzer"}},
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
      emissions_per_minute = 1,
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
    animation = {
      north = {
        filename = "__angelspetrochem__/graphics/entity/electrolyser/electrolyser-north.png",
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
        filename = "__angelspetrochem__/graphics/entity/electrolyser/electrolyser-east.png",
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
        filename = "__angelspetrochem__/graphics/entity/electrolyser/electrolyser-north.png",
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
        filename = "__angelspetrochem__/graphics/entity/electrolyser/electrolyser-east.png",
        width = 224,
        height = 224,
        frame_count = 36,
        line_length = 6,
        shift = {0, 0},
        animation_speed = 0.5,
        scale = 0.78,
        tint = {r=0.8, g=0.9, b=1}
      }
    },
    vehicle_impact_sound =  { filename = "__base__/sound/car-metal-impact.ogg", volume = 0.65 },
    working_sound = data.raw["assembling-machine"]["nullius-surge-electrolyzer-1"].working_sound,
    fluid_boxes = {
      {
        production_type = "input",
        pipe_covers = pipecoverspictures(),
		base_area = 20,
        base_level = -5,
		height = 4,
        pipe_connections = {{ type="input", position = {-1.5, -2.5} }}
      },
      {
        production_type = "output",
        pipe_covers = pipecoverspictures(),
        base_area = 15,
        base_level = 4,
        height = 3,
        pipe_connections = {{ type="output", position = {-1.5, 2.5} }}
      },
      {
        production_type = "output",
        pipe_covers = pipecoverspictures(),
        base_area = 15,
        base_level = 4,
        height = 3,
        pipe_connections = {{ type="output", position = {1.5, -2.5} }}
      },
      {
        production_type = "output",
        pipe_covers = pipecoverspictures(),
        base_area = 15,
        base_level = 4,
        height = 3,
        pipe_connections = {{ type="output", position = {1.5, 2.5} }}
      }
    }
  }
})

local mse1 = util.table.deepcopy(
    data.raw["assembling-machine"]["nullius-surge-electrolyzer-1"])
mse1.name = "nullius-mirror-surge-electrolyzer-1"
mse1.icons[2] = { icon = ICONPATH .. "flip1.png", icon_size = 64 }
mse1.order = data.raw.item["nullius-electrolyzer-1"].order .. "e"
mse1.placeable_by = {item = "nullius-electrolyzer-1", count = 1}
mse1.next_upgrade = "nullius-mirror-surge-electrolyzer-2"
mse1.localised_name = {"entity-name.nullius-mirrored",
    {"entity-name.nullius-surge-electrolyzer-1"}}
mse1.fluid_boxes[1].pipe_connections[1].position = {1.5, -2.5}
mse1.fluid_boxes[2].pipe_connections[1].position = {1.5, 2.5}
mse1.fluid_boxes[3].pipe_connections[1].position = {-1.5, -2.5}
mse1.fluid_boxes[4].pipe_connections[1].position = {-1.5, 2.5}

local mpe1 = util.table.deepcopy(
    data.raw["assembling-machine"]["nullius-priority-electrolyzer-1"])
mpe1.name = "nullius-mirror-priority-electrolyzer-1"
mpe1.icons[2] = { icon = ICONPATH .. "flip1.png", icon_size = 64 }
mpe1.order = data.raw.item["nullius-electrolyzer-1"].order .. "c"
mpe1.placeable_by = {item = "nullius-electrolyzer-1", count = 1}
mpe1.next_upgrade = "nullius-mirror-priority-electrolyzer-2"
mpe1.localised_name = {"entity-name.nullius-mirrored",
    {"entity-name.nullius-priority-electrolyzer-1"}}
mpe1.fluid_boxes = mse1.fluid_boxes

data:extend({
  mse1,
  mpe1,
  {
    type = "assembling-machine",
    name = "nullius-priority-electrolyzer-2",
	icons = {{
      icon = "__angelspetrochem__/graphics/icons/electrolyser.png",
      icon_size = 32,
      tint = {0.8, 0.76, 0.85}
    }},
	order = data.raw.item["nullius-electrolyzer-2"].order .. "b",
	localised_description = {"entity-description.nullius-priority",
	    {"entity-description.nullius-electrolyzer"}},
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
      emissions_per_minute = 1,
      drain = "25kW",
      usage_priority = "secondary-input"
    },
    energy_usage = "2915kW",
    resistances = data.raw["assembling-machine"]["nullius-surge-electrolyzer-2"].resistances,
    fluid_boxes = data.raw["assembling-machine"]["nullius-surge-electrolyzer-2"].fluid_boxes,
    animation = {
      north = {
        filename = "__angelspetrochem__/graphics/entity/electrolyser/electrolyser-north.png",
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
        filename = "__angelspetrochem__/graphics/entity/electrolyser/electrolyser-east.png",
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
        filename = "__angelspetrochem__/graphics/entity/electrolyser/electrolyser-north.png",
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
        filename = "__angelspetrochem__/graphics/entity/electrolyser/electrolyser-east.png",
        width = 224,
        height = 224,
        frame_count = 36,
        line_length = 6,
        shift = {0, 0},
        animation_speed = 0.5,
        scale = 0.78,
        tint = {0.8, 0.76, 0.85}
      }
    },
    vehicle_impact_sound = { filename = "__base__/sound/car-metal-impact.ogg", volume = 0.65 },
    working_sound = data.raw["assembling-machine"]["nullius-surge-electrolyzer-1"].working_sound
  },

  {
    type = "assembling-machine",
    name = "nullius-mirror-surge-electrolyzer-2",
	localised_name = {"entity-name.nullius-mirrored",
        {"entity-name.nullius-surge-electrolyzer-2"}},
	icons = {
      {
        icon = "__angelspetrochem__/graphics/icons/electrolyser.png",
        icon_size = 32,
        tint = {0.8, 0.9, 1}
      },
      {
        icon = ICONPATH .. "flip1.png",
        icon_size = 64
      }
    },
	order = data.raw.item["nullius-electrolyzer-2"].order .. "e",
	localised_description = {"entity-description.nullius-surge",
	    {"entity-description.nullius-electrolyzer"}},
    flags = {"placeable-neutral","player-creation"},
    minable = {mining_time = 1.5, result = "nullius-electrolyzer-2"},
	placeable_by = {item = "nullius-electrolyzer-2", count = 1},
    fast_replaceable_group = "electrolyzer",
    next_upgrade = "nullius-mirror-surge-electrolyzer-3",
    max_health = 400,
    corpse = "big-remnants",
    dying_explosion = "medium-explosion",
    collision_box = {{-1.8, -1.8}, {1.8, 1.8}},
    selection_box = {{-2, -2}, {2, 2}},
    crafting_categories = {"nullius-electrolysis"},
    crafting_speed = 2,
    energy_source = data.raw["assembling-machine"]["nullius-surge-electrolyzer-2"].energy_source,
    energy_usage = data.raw["assembling-machine"]["nullius-surge-electrolyzer-2"].energy_usage,
    resistances = data.raw["assembling-machine"]["nullius-surge-electrolyzer-2"].resistances,
    animation = data.raw["assembling-machine"]["nullius-surge-electrolyzer-2"].animation,
    vehicle_impact_sound =  { filename = "__base__/sound/car-metal-impact.ogg", volume = 0.65 },
    working_sound = data.raw["assembling-machine"]["nullius-surge-electrolyzer-1"].working_sound,
    fluid_boxes = {
      {
        production_type = "input",
        pipe_covers = pipecoverspictures(),
        base_area = 20,
        base_level = -5,
		height = 4,
        pipe_connections = {{ type="input", position = {1.5, -2.5} }}
      },
      {
        production_type = "output",
        pipe_covers = pipecoverspictures(),
        base_area = 15,
        base_level = 4,
        height = 3,
        pipe_connections = {{ type="output", position = {1.5, 2.5} }}
      },
      {
        production_type = "output",
        pipe_covers = pipecoverspictures(),
        base_area = 15,
        base_level = 4,
        height = 3,
        pipe_connections = {{ type="output", position = {-1.5, -2.5} }}
      },
      {
        production_type = "output",
        pipe_covers = pipecoverspictures(),
        base_area = 15,
        base_level = 4,
        height = 3,
        pipe_connections = {{ type="output", position = {-1.5, 2.5} }}
      }
    }
  }
})

data:extend({
  {
    type = "assembling-machine",
    name = "nullius-mirror-priority-electrolyzer-2",
	localised_name = {"entity-name.nullius-mirrored",
        {"entity-name.nullius-priority-electrolyzer-2"}},
	icons = {
      {
        icon = "__angelspetrochem__/graphics/icons/electrolyser.png",
        icon_size = 32,
        tint = {0.8, 0.76, 0.85}
      },
      {
        icon = ICONPATH .. "flip1.png",
        icon_size = 64
      }
    },
	order = data.raw.item["nullius-electrolyzer-2"].order .. "c",
	localised_description = {"entity-description.nullius-priority",
	    {"entity-description.nullius-electrolyzer"}},
    flags = {"placeable-neutral","player-creation"},
    minable = {mining_time = 1.5, result = "nullius-electrolyzer-2"},
	placeable_by = {item = "nullius-electrolyzer-2", count = 1},
    fast_replaceable_group = "electrolyzer",
    next_upgrade = "nullius-mirror-priority-electrolyzer-3",
    max_health = 400,
    corpse = "big-remnants",
    dying_explosion = "medium-explosion",
    collision_box = {{-1.8, -1.8}, {1.8, 1.8}},
    selection_box = {{-2, -2}, {2, 2}},
    crafting_categories = {"nullius-electrolysis"},
    crafting_speed = 1.5,
    energy_source = data.raw["assembling-machine"]["nullius-priority-electrolyzer-2"].energy_source,
    energy_usage = data.raw["assembling-machine"]["nullius-priority-electrolyzer-2"].energy_usage,
    resistances = data.raw["assembling-machine"]["nullius-priority-electrolyzer-2"].resistances,
    animation = data.raw["assembling-machine"]["nullius-priority-electrolyzer-2"].animation,
    vehicle_impact_sound = { filename = "__base__/sound/car-metal-impact.ogg", volume = 0.65 },
    working_sound = data.raw["assembling-machine"]["nullius-surge-electrolyzer-1"].working_sound,
    fluid_boxes = data.raw["assembling-machine"]["nullius-mirror-surge-electrolyzer-2"].fluid_boxes
  },

  {
    type = "assembling-machine",
    name = "nullius-surge-electrolyzer-3",
    icon = "__angelspetrochem__/graphics/icons/electrolyser.png",
    icon_size = 32,
	order = data.raw.item["nullius-electrolyzer-3"].order .. "d",
	localised_description = {"entity-description.nullius-surge",
	    {"entity-description.nullius-electrolyzer"}},
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
      emissions_per_minute = 2,
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
    animation = {
      north = {
        filename = "__angelspetrochem__/graphics/entity/electrolyser/electrolyser-north.png",
        width = 224,
        height = 224,
        frame_count = 36,
        line_length = 6,
        shift = {0, 0},
        animation_speed = 0.5,
        scale = 0.78
      },
      east = {
        filename = "__angelspetrochem__/graphics/entity/electrolyser/electrolyser-east.png",
        width = 224,
        height = 224,
        frame_count = 36,
        line_length = 6,
        shift = {0, 0},
        animation_speed = 0.5,
        scale = 0.78
      },
      south = {
        filename = "__angelspetrochem__/graphics/entity/electrolyser/electrolyser-north.png",
        width = 224,
        height = 224,
        frame_count = 36,
        line_length = 6,
        shift = {0, 0},
        animation_speed = 0.5,
        scale = 0.78
      },
      west = {
        filename = "__angelspetrochem__/graphics/entity/electrolyser/electrolyser-east.png",
        width = 224,
        height = 224,
        frame_count = 36,
        line_length = 6,
        shift = {0, 0},
        animation_speed = 0.5,
        scale = 0.78
      }
    },
    vehicle_impact_sound =  { filename = "__base__/sound/car-metal-impact.ogg", volume = 0.65 },
    working_sound = data.raw["assembling-machine"]["nullius-surge-electrolyzer-1"].working_sound,
    fluid_boxes = {
      {
        production_type = "input",
        pipe_covers = pipecoverspictures(),
        base_area = 20,
        base_level = -8,
        height = 6,
        pipe_connections = {{ type="input", position = {-1.5, -2.5} }}
      },
      {
        production_type = "output",
        pipe_covers = pipecoverspictures(),
        base_area = 15,
        base_level = 5,
        height = 4,
        pipe_connections = {{ type="output", position = {-1.5, 2.5} }}
      },
      {
        production_type = "output",
        pipe_covers = pipecoverspictures(),
        base_area = 15,
        base_level = 5,
        height = 4,
        pipe_connections = {{ type="output", position = {1.5, -2.5} }}
      },
      {
        production_type = "output",
        pipe_covers = pipecoverspictures(),
        base_area = 15,
        base_level = 5,
        height = 4,
        pipe_connections = {{ type="output", position = {1.5, 2.5} }}
      }
    }
  }
})

data:extend({
  {
    type = "assembling-machine",
    name = "nullius-mirror-surge-electrolyzer-3",
	localised_name = {"entity-name.nullius-mirrored",
        {"entity-name.nullius-surge-electrolyzer-3"}},
	icons = {
      {
        icon = "__angelspetrochem__/graphics/icons/electrolyser.png",
        icon_size = 32
      },
      {
        icon = ICONPATH .. "flip1.png",
        icon_size = 64
      }
    },
	order = data.raw.item["nullius-electrolyzer-3"].order .. "e",
	localised_description = {"entity-description.nullius-surge",
	    {"entity-description.nullius-electrolyzer"}},
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
    energy_usage = data.raw["assembling-machine"]["nullius-surge-electrolyzer-3"].energy_usage,
    energy_source = data.raw["assembling-machine"]["nullius-surge-electrolyzer-3"].energy_source,
    resistances = data.raw["assembling-machine"]["nullius-surge-electrolyzer-3"].resistances,
    animation = data.raw["assembling-machine"]["nullius-surge-electrolyzer-3"].animation,
    vehicle_impact_sound = { filename = "__base__/sound/car-metal-impact.ogg", volume = 0.65 },
    working_sound = data.raw["assembling-machine"]["nullius-surge-electrolyzer-1"].working_sound,
    fluid_boxes = {
      {
        production_type = "input",
        pipe_covers = pipecoverspictures(),
        base_area = 20,
        base_level = -8,
        height = 6,
        pipe_connections = {{ type="input", position = {1.5, -2.5} }}
      },
      {
        production_type = "output",
        pipe_covers = pipecoverspictures(),
        base_area = 15,
        base_level = 5,
        height = 4,
        pipe_connections = {{ type="output", position = {1.5, 2.5} }}
      },
      {
        production_type = "output",
        pipe_covers = pipecoverspictures(),
        base_area = 15,
        base_level = 5,
        height = 4,
        pipe_connections = {{ type="output", position = {-1.5, -2.5} }}
      },
      {
        production_type = "output",
        pipe_covers = pipecoverspictures(),
        base_area = 15,
        base_level = 5,
        height = 4,
        pipe_connections = {{ type="output", position = {-1.5, 2.5} }}
      }
    }
  }
})

data:extend({
  {
    type = "assembling-machine",
    name = "nullius-priority-electrolyzer-3",
	icons = {{
      icon = "__angelspetrochem__/graphics/icons/electrolyser.png",
      icon_size = 32,
      tint = {1, 0.85, 0.85}
    }},
	order = data.raw.item["nullius-electrolyzer-3"].order .. "b",
	localised_description = {"entity-description.nullius-priority",
	    {"entity-description.nullius-electrolyzer"}},
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
      emissions_per_minute = 2,
      drain = "100kW"
    },
    energy_usage = "7650kW",
    resistances = data.raw["assembling-machine"]["nullius-surge-electrolyzer-3"].resistances,
    fluid_boxes = data.raw["assembling-machine"]["nullius-surge-electrolyzer-3"].fluid_boxes,
    animation = {
      north = {
        filename = "__angelspetrochem__/graphics/entity/electrolyser/electrolyser-north.png",
        width = 224,
        height = 224,
        frame_count = 36,
        line_length = 6,
        animation_speed = 0.5,
        scale = 0.78,
        tint = {1, 0.85, 0.85}
      },
      east = {
        filename = "__angelspetrochem__/graphics/entity/electrolyser/electrolyser-east.png",
        width = 224,
        height = 224,
        frame_count = 36,
        line_length = 6,
        animation_speed = 0.5,
        scale = 0.78,
        tint = {1, 0.85, 0.85}
      },
      south = {
        filename = "__angelspetrochem__/graphics/entity/electrolyser/electrolyser-north.png",
        width = 224,
        height = 224,
        frame_count = 36,
        line_length = 6,
        animation_speed = 0.5,
        scale = 0.78,
        tint = {1, 0.85, 0.85}
      },
      west = {
        filename = "__angelspetrochem__/graphics/entity/electrolyser/electrolyser-east.png",
        width = 224,
        height = 224,
        frame_count = 36,
        line_length = 6,
        animation_speed = 0.5,
        scale = 0.78,
        tint = {1, 0.85, 0.85}
      }
    },
    vehicle_impact_sound =  { filename = "__base__/sound/car-metal-impact.ogg", volume = 0.65 },
    working_sound = data.raw["assembling-machine"]["nullius-surge-electrolyzer-1"].working_sound
  }
})

data:extend({
  {
    type = "assembling-machine",
    name = "nullius-mirror-priority-electrolyzer-3",
	localised_name = {"entity-name.nullius-mirrored",
        {"entity-name.nullius-priority-electrolyzer-3"}},
	icons = {
      {
        icon = "__angelspetrochem__/graphics/icons/electrolyser.png",
        icon_size = 32,
        tint = {1, 0.85, 0.85}
      },
      {
        icon = ICONPATH .. "flip1.png",
        icon_size = 64
      }
    },
	order = data.raw.item["nullius-electrolyzer-3"].order .. "c",
	localised_description = {"entity-description.nullius-priority",
	    {"entity-description.nullius-electrolyzer"}},
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
    energy_source = data.raw["assembling-machine"]["nullius-priority-electrolyzer-3"].energy_source,
    energy_usage = data.raw["assembling-machine"]["nullius-priority-electrolyzer-3"].energy_usage,
    resistances = data.raw["assembling-machine"]["nullius-surge-electrolyzer-3"].resistances,
    fluid_boxes = data.raw["assembling-machine"]["nullius-mirror-surge-electrolyzer-3"].fluid_boxes,
    animation = data.raw["assembling-machine"]["nullius-priority-electrolyzer-3"].animation,
    vehicle_impact_sound =  { filename = "__base__/sound/car-metal-impact.ogg", volume = 0.65 },
    working_sound = data.raw["assembling-machine"]["nullius-surge-electrolyzer-1"].working_sound
  },

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
    drawing_box = {{-1.5, -1.9}, {1.5, 1.5}},
    fast_replaceable_group = "chemical-plant",
    next_upgrade = "nullius-chemical-plant-2",
    module_specification = { module_slots = 1 },
    allowed_effects = {"speed", "productivity", "consumption", "pollution"},
    animation = make_4way_animation_from_spritesheet({ layers =
    {
      {
        filename = BASEENTITY .. "chemical-plant/chemical-plant.png",
        width = 108,
        height = 148,
        frame_count = 24,
        line_length = 12,
        shift = util.by_pixel(1, -9),
        tint = {0.75, 0.75, 0.6, 1},
        hr_version = {
          filename = BASEENTITY .. "chemical-plant/hr-chemical-plant.png",
          width = 220,
          height = 292,
          frame_count = 24,
          line_length = 12,
          shift = util.by_pixel(1.5, -9),
          scale = 0.52,
          tint = {0.75, 0.75, 0.6, 1}
        }
      },
      {
        filename = BASEENTITY .. "chemical-plant/chemical-plant-shadow.png",
        width = 154,
        height = 112,
        repeat_count = 24,
        frame_count = 1,
        shift = util.by_pixel(28, 6),
        draw_as_shadow = true,
        hr_version = {
          filename = BASEENTITY .. "chemical-plant/hr-chemical-plant-shadow.png",
          width = 312,
          height = 222,
          repeat_count = 24,
          frame_count = 1,
          shift = util.by_pixel(27, 6),
          draw_as_shadow = true,
          scale = 0.52
        }
      }
    }}),
    working_visualisations = {
      {
        apply_recipe_tint = "primary",
        north_animation = {
          filename = BASEENTITY .. "chemical-plant/chemical-plant-liquid-north.png",
          frame_count = 24,
          line_length = 6,
          width = 32,
          height = 24,
          shift = util.by_pixel(24, 14),
          animation_speed = 0.5,
          hr_version = {
            filename = BASEENTITY .. "chemical-plant/hr-chemical-plant-liquid-north.png",
            frame_count = 24,
            line_length = 6,
            width = 66,
            height = 44,
            shift = util.by_pixel(24, 15),
            scale = 0.52,
            animation_speed = 0.5
          }
        },
        east_animation = {
          filename = BASEENTITY .. "chemical-plant/chemical-plant-liquid-east.png",
          frame_count = 24,
          line_length = 6,
          width = 36,
          height = 18,
          shift = util.by_pixel(0, 22),
          animation_speed = 0.5,
          hr_version = {
            filename = BASEENTITY .. "chemical-plant/hr-chemical-plant-liquid-east.png",
            frame_count = 24,
            line_length = 6,
            width = 70,
            height = 36,
            shift = util.by_pixel(1, 22),
            scale = 0.52,
            animation_speed = 0.5
          }
        },
        south_animation = {
          filename = BASEENTITY .. "chemical-plant/chemical-plant-liquid-south.png",
          frame_count = 24,
          line_length = 6,
          width = 34,
          height = 24,
          shift = util.by_pixel(0, 16),
          animation_speed = 0.5,
          hr_version = {
            filename = BASEENTITY .. "chemical-plant/hr-chemical-plant-liquid-south.png",
            frame_count = 24,
            line_length = 6,
            width = 66,
            height = 42,
            shift = util.by_pixel(0, 17),
            scale = 0.52,
            animation_speed = 0.5
          }
        },
        west_animation = {
          filename = BASEENTITY .. "chemical-plant/chemical-plant-liquid-west.png",
          frame_count = 24,
          line_length = 6,
          width = 38,
          height = 20,
          shift = util.by_pixel(-10, 12),
          animation_speed = 0.5,
          hr_version = {
            filename = BASEENTITY .. "chemical-plant/hr-chemical-plant-liquid-west.png",
            frame_count = 24,
            line_length = 6,
            width = 74,
            height = 36,
            shift = util.by_pixel(-9, 13),
            scale = 0.52,
            animation_speed = 0.5
          }
        }
      },
      {
        apply_recipe_tint = "secondary",
        north_animation = {
          filename = BASEENTITY .. "chemical-plant/chemical-plant-foam-north.png",
          frame_count = 24,
          line_length = 6,
          width = 32,
          height = 22,
          shift = util.by_pixel(24, 14),
          animation_speed = 0.5,
          hr_version = {
            filename = BASEENTITY .. "chemical-plant/hr-chemical-plant-foam-north.png",
            frame_count = 24,
            line_length = 6,
            width = 62,
            height = 42,
            shift = util.by_pixel(25, 15),
            scale = 0.52,
            animation_speed = 0.5
          }
        },
        east_animation = {
          filename = BASEENTITY .. "chemical-plant/chemical-plant-foam-east.png",
          frame_count = 24,
          line_length = 6,
          width = 34,
          height = 18,
          shift = util.by_pixel(0, 22),
          animation_speed = 0.5,
          hr_version = {
            filename = BASEENTITY .. "chemical-plant/hr-chemical-plant-foam-east.png",
            frame_count = 24,
            line_length = 6,
            width = 68,
            height = 36,
            shift = util.by_pixel(1, 22),
            scale = 0.52,
            animation_speed = 0.5
          }
        },
        south_animation = {
          filename = BASEENTITY .. "chemical-plant/chemical-plant-foam-south.png",
          frame_count = 24,
          line_length = 6,
          width = 32,
          height = 18,
          shift = util.by_pixel(0, 18),
          animation_speed = 0.5,
          hr_version = {
            filename = BASEENTITY .. "chemical-plant/hr-chemical-plant-foam-south.png",
            frame_count = 24,
            line_length = 6,
            width = 60,
            height = 40,
            shift = util.by_pixel(2, 17),
            scale = 0.52,
            animation_speed = 0.5
          }
        },
        west_animation = {
          filename = BASEENTITY .. "chemical-plant/chemical-plant-foam-west.png",
          frame_count = 24,
          line_length = 6,
          width = 36,
          height = 16,
          shift = util.by_pixel(-10, 14),
          animation_speed = 0.5,
          hr_version = {
            filename = BASEENTITY .. "chemical-plant/hr-chemical-plant-foam-west.png",
            frame_count = 24,
            line_length = 6,
            width = 68,
            height = 28,
            shift = util.by_pixel(-8, 15),
            scale = 0.52,
            animation_speed = 0.5
          }
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
          width = 46,
          height = 94,
          animation_speed = 0.4,
          shift = util.by_pixel(-2, -40),
          hr_version = {
            filename = BASEENTITY .. "chemical-plant/hr-chemical-plant-smoke-outer.png",
            frame_count = 47,
            line_length = 16,
            width = 90,
            height = 188,
            animation_speed = 0.4,
            shift = util.by_pixel(-2, -40),
            scale = 0.52
          }
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
          width = 20,
          height = 42,
          animation_speed = 0.4,
          shift = util.by_pixel(0, -14),
          hr_version = {
            filename = BASEENTITY .. "chemical-plant/hr-chemical-plant-smoke-inner.png",
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
    vehicle_impact_sound =  { filename = "__base__/sound/car-metal-impact.ogg", volume = 0.65 },
    working_sound = data.raw["assembling-machine"]["chemical-plant"].working_sound,
    crafting_speed = 1,
    energy_source = {
      type = "electric",
      usage_priority = "secondary-input",
      emissions_per_minute = 4,
      drain = "8kW"
    },
    energy_usage = "192kW",
    crafting_categories = {"basic-chemistry"},
    fluid_boxes = {
      {
        production_type = "input",
        pipe_covers = pipecoverspictures(),
        base_area = 10,
        base_level = -1,
        pipe_connections = {{ type="input", position = {-1, -2} }}
      },
      {
        production_type = "input",
        pipe_covers = pipecoverspictures(),
        base_area = 10,
        base_level = -1,
        pipe_connections = {{ type="input", position = {1, -2} }}
      },
      {
        production_type = "input",
        pipe_covers = pipecoverspictures(),
        base_area = 2,
        base_level = -1,
        height = 2,
        pipe_connections = {
          {type = "input-output", position = {-2, 0}},
          {type = "input-output", position = {2, 0}}
        }
      },
      {
        production_type = "output",
        pipe_covers = pipecoverspictures(),
        base_level = 3,
		height = 2,
        pipe_connections = {{ type="output", position = {-1, 2} }}
      },
      {
        production_type = "output",
        pipe_covers = pipecoverspictures(),
        base_level = 3,
		height = 2,
        pipe_connections = {{ type="output", position = {1, 2} }}
      }
    }
  }
})

local mcp1 = util.table.deepcopy(
    data.raw["assembling-machine"]["nullius-chemical-plant-1"])
mcp1.name = "nullius-mirror-chemical-plant-1"
mcp1.icons[2] = { icon = ICONPATH .. "flip1.png", icon_size = 64 }
mcp1.order = "z-nullius-bbc"
mcp1.placeable_by = {item = "nullius-chemical-plant-1", count = 1}
mcp1.next_upgrade = "nullius-mirror-chemical-plant-2"
mcp1.localised_name = {"entity-name.nullius-mirrored",
    {"entity-name.nullius-chemical-plant-1"}}
mcp1.fluid_boxes[1].pipe_connections[1].position = {1, -2}
mcp1.fluid_boxes[2].pipe_connections[1].position = {-1, -2}
mcp1.fluid_boxes[4].pipe_connections[1].position = {1, 2}
mcp1.fluid_boxes[5].pipe_connections[1].position = {-1, 2}

data:extend({
  mcp1,
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
    drawing_box = {{-1.5, -1.9}, {1.5, 1.5}},
    module_specification = { module_slots = 2 },
    allowed_effects = {"speed", "productivity", "consumption", "pollution"},
    fast_replaceable_group = "chemical-plant",
    next_upgrade = "nullius-chemical-plant-3",

    animation = make_4way_animation_from_spritesheet({ layers =
    {
      {
        filename = BASEENTITY .. "chemical-plant/chemical-plant.png",
        width = 108,
        height = 148,
        frame_count = 24,
        line_length = 12,
        shift = util.by_pixel(1, -9),
        tint = {0.8, 0.8, 1, 1},
        hr_version = {
          filename = BASEENTITY .. "chemical-plant/hr-chemical-plant.png",
          width = 220,
          height = 292,
          frame_count = 24,
          line_length = 12,
          shift = util.by_pixel(1.5, -9),
          scale = 0.52,
          tint = {0.8, 0.8, 1, 1}
        }
      },
      {
        filename = BASEENTITY .. "chemical-plant/chemical-plant-shadow.png",
        width = 154,
        height = 112,
        repeat_count = 24,
        frame_count = 1,
        shift = util.by_pixel(28, 6),
        draw_as_shadow = true,
        hr_version = {
          filename = BASEENTITY .. "chemical-plant/hr-chemical-plant-shadow.png",
          width = 312,
          height = 222,
          repeat_count = 24,
          frame_count = 1,
          shift = util.by_pixel(27, 6),
          draw_as_shadow = true,
          scale = 0.52
        }
      }
    }}),
    working_visualisations = data.raw["assembling-machine"]["nullius-chemical-plant-1"].working_visualisations,
    resistances = {
      { type = "impact", decrease = 100, percent = 90 }
    },
    vehicle_impact_sound =  { filename = "__base__/sound/car-metal-impact.ogg", volume = 0.65 },
    working_sound = data.raw["assembling-machine"]["chemical-plant"].working_sound,
    crafting_speed = 2,
    energy_source = {
      type = "electric",
      usage_priority = "secondary-input",
      emissions_per_minute = 4,
      drain = "16kW"
    },
    energy_usage = "384kW",
    crafting_categories = {"basic-chemistry"},
    fluid_boxes = {
      {
        production_type = "input",
        pipe_covers = pipecoverspictures(),
        base_area = 10,
        base_level = -2,
        pipe_connections = {{ type="input", position = {-1, -2} }}
      },
      {
        production_type = "input",
        pipe_covers = pipecoverspictures(),
        base_area = 10,
        base_level = -2,
        pipe_connections = {{ type="input", position = {1, -2} }}
      },
      {
        production_type = "input",
        pipe_covers = pipecoverspictures(),
        base_area = 2,
        base_level = -1.5,
        height = 3,
        pipe_connections = {
          {type = "input-output", position = {-2, 0}},
          {type = "input-output", position = {2, 0}}
        }
      },
      {
        production_type = "output",
        pipe_covers = pipecoverspictures(),
        base_area = 5,
        base_level = 4,
		height = 2,
        pipe_connections = {{ type="output", position = {-1, 2} }}
      },
      {
        production_type = "output",
        pipe_covers = pipecoverspictures(),
        base_area = 5,
        base_level = 4,
		height = 2,
        pipe_connections = {{ type="output", position = {1, 2} }}
      }
    }
  }
})

data:extend({
  {
    type = "assembling-machine",
    name = "nullius-mirror-chemical-plant-2",
	localised_name = {"entity-name.nullius-mirrored",
        {"entity-name.nullius-chemical-plant-2"}},
	order = "z-nullius-bcc",
	icons = {
	  data.raw.item["nullius-chemical-plant-2"].icons[1],
	  { icon = ICONPATH .. "flip1.png", icon_size = 64 }
	},
    localised_description = {"entity-description.nullius-chemical-plant"},
    flags = {"placeable-neutral","placeable-player", "player-creation"},
    minable = { mining_time = 1.6, result = "nullius-chemical-plant-2"},
	placeable_by = {item = "nullius-chemical-plant-2", count = 1},
    max_health = 400,
    corpse = "chemical-plant-remnants",
    dying_explosion = "medium-explosion",
    collision_box = {{-1.2, -1.2}, {1.2, 1.2}},
    selection_box = {{-1.5, -1.5}, {1.5, 1.5}},
    drawing_box = {{-1.5, -1.9}, {1.5, 1.5}},
    module_specification = { module_slots = 2 },
    allowed_effects = {"speed", "productivity", "consumption", "pollution"},
    fast_replaceable_group = "chemical-plant",
    next_upgrade = "nullius-mirror-chemical-plant-3",

    animation = data.raw["assembling-machine"]["nullius-chemical-plant-2"].animation,
    working_visualisations = data.raw["assembling-machine"]["nullius-chemical-plant-1"].working_visualisations,
    resistances = data.raw["assembling-machine"]["nullius-chemical-plant-2"].resistances,
    vehicle_impact_sound =  { filename = "__base__/sound/car-metal-impact.ogg", volume = 0.65 },
    working_sound = data.raw["assembling-machine"]["nullius-chemical-plant-2"].working_sound,
    crafting_speed = 2,
    energy_source = data.raw["assembling-machine"]["nullius-chemical-plant-2"].energy_source,
    energy_usage = "384kW",
    crafting_categories = {"basic-chemistry"},

    fluid_boxes = {
      {
        production_type = "input",
        pipe_covers = pipecoverspictures(),
        base_area = 10,
        base_level = -2,
        pipe_connections = {{ type="input", position = {1, -2} }}
      },
      {
        production_type = "input",
        pipe_covers = pipecoverspictures(),
        base_area = 10,
        base_level = -2,
        pipe_connections = {{ type="input", position = {-1, -2} }}
      },
      {
        production_type = "input",
        pipe_covers = pipecoverspictures(),
        base_area = 2,
        base_level = -1.5,
        height = 3,
        pipe_connections = {
          {type = "input-output", position = {-2, 0}},
          {type = "input-output", position = {2, 0}}
        }
      },
      {
        production_type = "output",
        pipe_covers = pipecoverspictures(),
		base_area = 5,
        base_level = 4,
		height = 2,
        pipe_connections = {{ type="output", position = {1, 2} }}
      },
      {
        production_type = "output",
        pipe_covers = pipecoverspictures(),
		base_area = 5,
        base_level = 4,
		height = 2,
        pipe_connections = {{ type="output", position = {-1, 2} }}
      }
    }
  },

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
    drawing_box = {{-1.5, -1.9}, {1.5, 1.5}},
    module_specification = { module_slots = 3 },
    allowed_effects = {"speed", "productivity", "consumption", "pollution"},
    fast_replaceable_group = "chemical-plant",

    animation = make_4way_animation_from_spritesheet({ layers =
    {
      {
        filename = BASEENTITY .. "chemical-plant/chemical-plant.png",
        width = 108,
        height = 148,
        frame_count = 24,
        line_length = 12,
        shift = util.by_pixel(1, -9),
        hr_version = {
          filename = BASEENTITY .. "chemical-plant/hr-chemical-plant.png",
          width = 220,
          height = 292,
          frame_count = 24,
          line_length = 12,
          shift = util.by_pixel(1.5, -9),
          scale = 0.52,
        }
      },
      {
        filename = BASEENTITY .. "chemical-plant/chemical-plant-shadow.png",
        width = 154,
        height = 112,
        repeat_count = 24,
        frame_count = 1,
        shift = util.by_pixel(28, 6),
        draw_as_shadow = true,
        hr_version = {
          filename = BASEENTITY .. "chemical-plant/hr-chemical-plant-shadow.png",
          width = 312,
          height = 222,
          repeat_count = 24,
          frame_count = 1,
          shift = util.by_pixel(27, 6),
          draw_as_shadow = true,
          scale = 0.52
        }
      }
    }}),
    working_visualisations = data.raw["assembling-machine"]["nullius-chemical-plant-1"].working_visualisations,
    resistances = {
      { type = "impact", decrease = 100, percent = 90 }
    },
    vehicle_impact_sound =  { filename = "__base__/sound/car-metal-impact.ogg", volume = 0.65 },
    working_sound = data.raw["assembling-machine"]["chemical-plant"].working_sound,
    crafting_speed = 4,
    energy_source = {
      type = "electric",
      usage_priority = "secondary-input",
      emissions_per_minute = 8,
      drain = "40kW"
    },
    energy_usage = "760kW",
    crafting_categories = {"basic-chemistry"},
    fluid_boxes = {
      {
        production_type = "input",
        pipe_covers = pipecoverspictures(),
        base_area = 10,
        base_level = -3,
		height = 2,
        pipe_connections = {{ type="input", position = {-1, -2} }}
      },
      {
        production_type = "input",
        pipe_covers = pipecoverspictures(),
        base_area = 10,
        base_level = -3,
		height = 2,
        pipe_connections = {{ type="input", position = {1, -2} }}
      },
      {
        production_type = "input",
        pipe_covers = pipecoverspictures(),
        base_area = 3,
        base_level = -2,
        height = 4,
        pipe_connections = {
          {type = "input-output", position = {-2, 0}},
          {type = "input-output", position = {2, 0}}
        }
      },
      {
        production_type = "output",
        pipe_covers = pipecoverspictures(),
        base_area = 5,
        base_level = 5,
		height = 3,
        pipe_connections = {{ type="output", position = {-1, 2} }}
      },
      {
        production_type = "output",
        pipe_covers = pipecoverspictures(),
        base_area = 5,
        base_level = 5,
		height = 3,
        pipe_connections = {{ type="output", position = {1, 2} }}
      }
    }
  }
})

data:extend({
  {
    type = "assembling-machine",
    name = "nullius-mirror-chemical-plant-3",
	localised_name = {"entity-name.nullius-mirrored",
        {"entity-name.nullius-chemical-plant-3"}},
	order = "z-nullius-bdc",
    icons = {
	  data.raw.item["nullius-chemical-plant-3"].icons[1],
	  { icon = ICONPATH .. "flip1.png", icon_size = 64 }
	},
    localised_description = {"entity-description.nullius-chemical-plant"},
    flags = {"placeable-neutral","placeable-player", "player-creation"},
    minable = { mining_time = 2, result = "nullius-chemical-plant-3"},
	placeable_by = {item = "nullius-chemical-plant-3", count = 1},
    max_health = 500,
    corpse = "chemical-plant-remnants",
    dying_explosion = "medium-explosion",
    collision_box = {{-1.2, -1.2}, {1.2, 1.2}},
    selection_box = {{-1.5, -1.5}, {1.5, 1.5}},
    drawing_box = {{-1.5, -1.9}, {1.5, 1.5}},
    module_specification = { module_slots = 3 },
    allowed_effects = {"speed", "productivity", "consumption", "pollution"},
    fast_replaceable_group = "chemical-plant",
    animation = data.raw["assembling-machine"]["nullius-chemical-plant-3"].animation,
    working_visualisations = data.raw["assembling-machine"]["nullius-chemical-plant-1"].working_visualisations,
    resistances = data.raw["assembling-machine"]["nullius-chemical-plant-3"].resistances,
    energy_source = data.raw["assembling-machine"]["nullius-chemical-plant-3"].energy_source,
    vehicle_impact_sound =  { filename = "__base__/sound/car-metal-impact.ogg", volume = 0.65 },
    working_sound = data.raw["assembling-machine"]["chemical-plant"].working_sound,
    crafting_speed = 4,
    energy_usage = "760kW",
    crafting_categories = {"basic-chemistry"},
    fluid_boxes = {
      {
        production_type = "input",
        pipe_covers = pipecoverspictures(),
        base_area = 10,
        base_level = -3,
		height = 2,
        pipe_connections = {{ type="input", position = {1, -2} }}
      },
      {
        production_type = "input",
        pipe_covers = pipecoverspictures(),
        base_area = 10,
        base_level = -3,
		height = 2,
        pipe_connections = {{ type="input", position = {-1, -2} }}
      },
      {
        production_type = "input",
        pipe_covers = pipecoverspictures(),
        base_area = 3,
        base_level = -2,
        height = 4,
        pipe_connections = {
          {type = "input-output", position = {-2, 0}},
          {type = "input-output", position = {2, 0}}
        }
      },
      {
        production_type = "output",
        pipe_covers = pipecoverspictures(),
		base_area = 5,
        base_level = 5,
		height = 3,
        pipe_connections = {{ type="output", position = {1, 2} }}
      },
      {
        production_type = "output",
        pipe_covers = pipecoverspictures(),
		base_area = 5,
        base_level = 5,
		height = 3,
        pipe_connections = {{ type="output", position = {-1, 2} }}
      }
    }
  }
})