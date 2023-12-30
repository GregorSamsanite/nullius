local ICONPATH = "__nullius__/graphics/icons/"
local ENTITYPATH = "__nullius__/graphics/entity/"

local BASEENTITY = "__base__/graphics/entity/"

data:extend({
  {
    type = "assembling-machine",
    name = "nullius-small-assembler-1",
	order = "nullius-mbb",
    icon_size = 64,
    icons = data.raw.item["nullius-small-assembler-1"].icons,
    flags = {"placeable-neutral", "placeable-player", "player-creation"},
    minable = {mining_time = 0.6, result = "nullius-small-assembler-1"},
    max_health = 200,
    dying_explosion = "medium-explosion",
    corpse = "medium-remnants",
    resistances = {
      { type = "impact", decrease = 100, percent = 90 }
    },
    collision_box = {{-0.7, -0.7}, {0.7, 0.7}},
    selection_box = {{-1.0, -1.0}, {1.0, 1.0}},
    fast_replaceable_group = "small-assembler",
    next_upgrade = "nullius-small-assembler-2",
    alert_icon_shift = util.by_pixel(-3, -12),
    animation = {
      layers = {
        {
          filename = BASEENTITY .. "assembling-machine-1/assembling-machine-1.png",
          priority="high",
          width = 108,
          height = 114,
          frame_count = 32,
          line_length = 8,
          shift = util.by_pixel(0, 2),
          scale = 0.666
        },
        {
          filename = BASEENTITY .. "assembling-machine-1/assembling-machine-1-shadow.png",
          priority="high",
          width = 95,
          height = 83,
          frame_count = 1,
          line_length = 1,
          repeat_count = 32,
          draw_as_shadow = true,
          shift = util.by_pixel(8.5, 5.5),
          scale = 0.666
        }
      }
    },
    crafting_categories = {
      "tiny-crafting", "small-crafting", "medium-crafting",
      "tiny-assembly", "small-assembly", "medium-assembly",
      "packaging"
    },
    crafting_speed = 0.5,
    module_specification = { module_slots = 1 },
    allowed_effects = {"speed", "productivity", "consumption", "pollution"},
    energy_source = {type="electric", usage_priority="secondary-input", emissions_per_minute=2, drain="1kW"},
    energy_usage = "59kW",
    open_sound = { filename = "__base__/sound/machine-open.ogg", volume = 0.85 },
    close_sound = { filename = "__base__/sound/machine-close.ogg", volume = 0.75 },
    vehicle_impact_sound =  { filename = "__base__/sound/car-metal-impact.ogg", volume = 0.65 },
    working_sound = {
      sound = {
        { filename = "__base__/sound/assembling-machine-t1-1.ogg", volume = 0.8 },
        { filename = "__base__/sound/assembling-machine-t1-2.ogg", volume = 0.8 }
      },
      idle_sound = { filename = "__base__/sound/idle1.ogg", volume = 0.6 },
      apparent_volume = 0.8
    }
  },

  {
    type = "assembling-machine",
    name = "nullius-medium-assembler-1",
	order = "nullius-mcb",
    icon_size = 64,
    icons = data.raw.item["nullius-medium-assembler-1"].icons,
    flags = {"placeable-neutral", "placeable-player", "player-creation"},
    minable = {mining_time = 0.8, result = "nullius-medium-assembler-1"},
    max_health = 300,
    dying_explosion = "medium-explosion",
    corpse = "medium-remnants",
    resistances = {
      { type = "impact", decrease = 100, percent = 90 }
    },
    collision_box = {{-1.2, -1.2}, {1.2, 1.2}},
    selection_box = {{-1.5, -1.5}, {1.5, 1.5}},
    fluid_boxes = {
      {
        production_type = "input",
        pipe_picture = assembler2pipepictures(),
        pipe_covers = pipecoverspictures(),
        base_area = 10,
        base_level = -2,
        pipe_connections = {{ type="input", position = {0, -2} }},
        secondary_draw_orders = { north = -1 }
      },
      {
        production_type = "input",
        pipe_picture = assembler2pipepictures(),
        pipe_covers = pipecoverspictures(),
        base_area = 10,
        base_level = -2,
        pipe_connections = {{ type="input", position = {0, 2} }},
        secondary_draw_orders = { north = -1 }
      },
      off_when_no_fluid_recipe = true
    },
    fast_replaceable_group = "medium-assembler",
    next_upgrade = "nullius-medium-assembler-2",
    alert_icon_shift = util.by_pixel(-3, -12),
    animation = {
      layers = {
        {
          filename = BASEENTITY .. "assembling-machine-1/assembling-machine-1.png",
          priority="high",
          width = 108,
          height = 114,
          frame_count = 32,
          line_length = 8,
          shift = util.by_pixel(0, 2),
          animation_speed = 0.5,
          hr_version = {
            filename = BASEENTITY .. "assembling-machine-1/hr-assembling-machine-1.png",
            priority="high",
            width = 214,
            height = 226,
            frame_count = 32,
            line_length = 8,
            shift = util.by_pixel(0, 2),
            scale = 0.5,
            animation_speed = 0.5
          }
        },
        {
          filename = BASEENTITY .. "assembling-machine-1/assembling-machine-1-shadow.png",
          priority="high",
          width = 95,
          height = 83,
          frame_count = 1,
          line_length = 1,
          repeat_count = 32,
          draw_as_shadow = true,
          shift = util.by_pixel(8.5, 5.5),
          hr_version = {
            filename = BASEENTITY .. "assembling-machine-1/hr-assembling-machine-1-shadow.png",
            priority="high",
            width = 190,
            height = 165,
            frame_count = 1,
            line_length = 1,
            repeat_count = 32,
            draw_as_shadow = true,
            shift = util.by_pixel(8.5, 5),
            scale = 0.5
          }
        }
      }
    },
    crafting_categories = {
      "small-crafting", "medium-crafting", "large-crafting",
      "small-assembly", "medium-assembly", "large-assembly", "medium-only-assembly",
      "small-fluid-assembly", "large-fluid-assembly"
    },
    crafting_speed = 1,
    module_specification = { module_slots = 1 },
    allowed_effects = {"speed", "productivity", "consumption", "pollution"},
    energy_source = {type="electric", usage_priority="secondary-input", emissions_per_minute=5, drain="6kW"},
    energy_usage = "144kW",
    open_sound = { filename = "__base__/sound/machine-open.ogg", volume = 0.85 },
    close_sound = { filename = "__base__/sound/machine-close.ogg", volume = 0.75 },
    vehicle_impact_sound =  { filename = "__base__/sound/car-metal-impact.ogg", volume = 0.65 },
    working_sound = {
      sound = {
        { filename = "__base__/sound/assembling-machine-t1-1.ogg", volume = 0.8 },
        { filename = "__base__/sound/assembling-machine-t1-2.ogg", volume = 0.8 }
      },
      idle_sound = { filename = "__base__/sound/idle1.ogg", volume = 0.6 },
      apparent_volume = 1.2
    }
  },

  {
    type = "assembling-machine",
    name = "nullius-large-assembler-1",
	order = "nullius-mdb",
    icons = data.raw.item["nullius-large-assembler-1"].icons,
    flags = {"placeable-neutral", "placeable-player", "player-creation"},
    minable = {mining_time = 1.5, result = "nullius-large-assembler-1"},
    max_health = 600,
    dying_explosion = "medium-explosion",
    corpse = "medium-remnants",
    resistances = {
      { type = "impact", decrease = 100, percent = 90 }
    },
    collision_box = {{-1.7, -1.7}, {1.7, 1.7}},
    selection_box = {{-2.0, -2.0}, {2.0, 2.0}},
    fluid_boxes = {
      {
        production_type = "input",
        pipe_picture = assembler2pipepictures(),
        pipe_covers = pipecoverspictures(),
        base_area = 10,
        base_level = -2,
        pipe_connections = {{ type="input", position = {0.5, -2.5} }},
        secondary_draw_orders = { north = -1 }
      },
      {
        production_type = "input",
        pipe_picture = assembler2pipepictures(),
        pipe_covers = pipecoverspictures(),
        base_area = 10,
        base_level = -2,
        pipe_connections = {{ type="input", position = {-0.5, 2.5} }},
        secondary_draw_orders = { north = -1 }
      },
      off_when_no_fluid_recipe = true
    },
    fast_replaceable_group = "large-assembler",
    next_upgrade = "nullius-large-assembler-2",
    alert_icon_shift = util.by_pixel(-3, -12),
    animation = {
      layers = {
        {
          filename = BASEENTITY .. "assembling-machine-2/hr-assembling-machine-2.png",
          priority = "high",
          width = 214,
          height = 218,
          frame_count = 32,
          line_length = 8,
          shift = util.by_pixel(0, 4),
          scale = 0.666,
          animation_speed = 0.2
        },
        {
          filename = BASEENTITY .. "assembling-machine-2/hr-assembling-machine-2-shadow.png",
          priority = "high",
          width = 196,
          height = 163,
          frame_count = 32,
          line_length = 8,
          draw_as_shadow = true,
          shift = util.by_pixel(12, 4.75),
          scale = 0.666,
          animation_speed = 0.2
        }
      }
    },
    crafting_categories = {
      "medium-crafting", "large-crafting", "huge-crafting",
      "medium-assembly", "large-assembly", "huge-assembly",
      "large-fluid-assembly", "huge-fluid-assembly"
    },
    crafting_speed = 4,
    module_specification = { module_slots = 2 },
    allowed_effects = {"speed", "productivity", "consumption", "pollution"},
    energy_source = {type="electric", usage_priority="secondary-input", emissions_per_minute=20, drain="50kW"},
    energy_usage = "650kW",
    open_sound = { filename = "__base__/sound/machine-open.ogg", volume = 0.85 },
    close_sound = { filename = "__base__/sound/machine-close.ogg", volume = 0.75 },
    vehicle_impact_sound =  { filename = "__base__/sound/car-metal-impact.ogg", volume = 0.65 },
    working_sound = {
      sound = {
        { filename = "__base__/sound/assembling-machine-t1-1.ogg", volume = 0.8 },
        { filename = "__base__/sound/assembling-machine-t1-2.ogg", volume = 0.8 }
      },
      idle_sound = { filename = "__base__/sound/idle1.ogg", volume = 0.6 },
      apparent_volume = 1.6
    }
  }
})

data:extend({
  {
    type = "assembling-machine",
    name = "nullius-small-assembler-2",
	order = "nullius-mbc",
    icon_size = 64,
    icons = data.raw.item["nullius-small-assembler-2"].icons,
    flags = {"placeable-neutral", "placeable-player", "player-creation"},
    minable = {mining_time = 0.9, result = "nullius-small-assembler-2"},
    max_health = 300,
    dying_explosion = "medium-explosion",
    corpse = "medium-remnants",
    resistances = {
      { type = "impact", decrease = 100, percent = 90 }
    },
    collision_box = {{-0.7, -0.7}, {0.7, 0.7}},
    selection_box = {{-1.0, -1.0}, {1.0, 1.0}},
    fast_replaceable_group = "small-assembler",
    next_upgrade = "nullius-small-assembler-3",
    alert_icon_shift = util.by_pixel(-3, -12),
    animation = {
      layers = {
        {
          filename = BASEENTITY .. "assembling-machine-2/assembling-machine-2.png",
          priority = "high",
          width = 108,
          height = 110,
          frame_count = 32,
          line_length = 8,
          shift = util.by_pixel(0, 4),
          scale = 0.666,
          animation_speed = 0.8
        },
        data.raw["assembling-machine"]["nullius-small-assembler-1"].animation.layers[2]
      }
    },
    crafting_categories = {
      "tiny-crafting", "small-crafting", "medium-crafting",
      "tiny-assembly", "small-assembly", "medium-assembly",
      "packaging"
    },
    crafting_speed = 1,
    module_specification = { module_slots = 2 },
    allowed_effects = {"speed", "productivity", "consumption", "pollution"},
    energy_source = {type="electric", usage_priority="secondary-input", emissions_per_minute=4, drain="2kW"},
    energy_usage = "123kW",
    open_sound = { filename = "__base__/sound/machine-open.ogg", volume = 0.85 },
    close_sound = { filename = "__base__/sound/machine-close.ogg", volume = 0.75 },
    vehicle_impact_sound =  { filename = "__base__/sound/car-metal-impact.ogg", volume = 0.65 },
    working_sound = data.raw["assembling-machine"]["nullius-small-assembler-1"].working_sound
  },

  {
    type = "assembling-machine",
    name = "nullius-small-assembler-3",
	order = "nullius-mbd",
    icon_size = 64,
    icons = data.raw.item["nullius-small-assembler-3"].icons,
    flags = {"placeable-neutral", "placeable-player", "player-creation"},
    minable = {mining_time = 1.2, result = "nullius-small-assembler-3"},
    max_health = 400,
    dying_explosion = "medium-explosion",
    corpse = "medium-remnants",
    resistances = {
      { type = "impact", decrease = 100, percent = 90 }
    },
    collision_box = {{-0.7, -0.7}, {0.7, 0.7}},
    selection_box = {{-1.0, -1.0}, {1.0, 1.0}},
    fast_replaceable_group = "small-assembler",
    alert_icon_shift = util.by_pixel(-3, -12),
    animation = {
      layers = {
        {
          filename = BASEENTITY .. "assembling-machine-3/assembling-machine-3.png",
          priority = "high",
          width = 108,
          height = 119,
          frame_count = 32,
          line_length = 8,
          shift = util.by_pixel(0, -0.3333),
          scale = 0.666,
          animation_speed = 0.6
        },
        {
          filename = BASEENTITY .. "assembling-machine-3/assembling-machine-3-shadow.png",
          priority = "high",
          width = 130,
          height = 82,
          frame_count = 32,
          line_length = 8,
          draw_as_shadow = true,
          shift = util.by_pixel(18.667, 2.6667),
          scale = 0.666,
          animation_speed = 0.6
        }
      }
    },
    crafting_categories = {
      "tiny-crafting", "small-crafting", "medium-crafting",
      "tiny-assembly", "small-assembly", "medium-assembly",
      "packaging"
    },
    crafting_speed = 2,
    module_specification = { module_slots = 3 },
    allowed_effects = {"speed", "productivity", "consumption", "pollution"},
    energy_source = {type="electric", usage_priority="secondary-input", emissions_per_minute=8, drain="5kW"},
    energy_usage = "270kW",
    open_sound = { filename = "__base__/sound/machine-open.ogg", volume = 0.85 },
    close_sound = { filename = "__base__/sound/machine-close.ogg", volume = 0.75 },
    vehicle_impact_sound =  { filename = "__base__/sound/car-metal-impact.ogg", volume = 0.65 },
    working_sound = data.raw["assembling-machine"]["nullius-small-assembler-1"].working_sound
  },

  {
    type = "assembling-machine",
    name = "nullius-medium-assembler-2",
	order = "nullius-mcc",
    icon_size = 64,
    icons = data.raw.item["nullius-medium-assembler-2"].icons,
    flags = {"placeable-neutral", "placeable-player", "player-creation"},
    minable = {mining_time = 1.2, result = "nullius-medium-assembler-2"},
    max_health = 450,
    dying_explosion = "medium-explosion",
    corpse = "medium-remnants",
    resistances = {
      { type = "impact", decrease = 100, percent = 90 }
    },
    collision_box = {{-1.2, -1.2}, {1.2, 1.2}},
    selection_box = {{-1.5, -1.5}, {1.5, 1.5}},
    fluid_boxes = data.raw["assembling-machine"]["nullius-medium-assembler-1"].fluid_boxes,
    fast_replaceable_group = "medium-assembler",
    next_upgrade = "nullius-medium-assembler-3",
    alert_icon_shift = util.by_pixel(-3, -12),
    animation = {
      layers = {
        {
          filename = BASEENTITY .. "assembling-machine-2/assembling-machine-2.png",
          priority = "high",
          width = 108,
          height = 110,
          frame_count = 32,
          line_length = 8,
          shift = util.by_pixel(0, 4),
          animation_speed = 0.4,
          hr_version = {
            filename = BASEENTITY .. "assembling-machine-2/hr-assembling-machine-2.png",
            priority = "high",
            width = 214,
            height = 218,
            frame_count = 32,
            line_length = 8,
            shift = util.by_pixel(0, 4),
            scale = 0.5,
            animation_speed = 0.4
          }
        },
        {
          filename = BASEENTITY .. "assembling-machine-2/assembling-machine-2-shadow.png",
          priority = "high",
          width = 98,
          height = 82,
          frame_count = 32,
          line_length = 8,
          draw_as_shadow = true,
          shift = util.by_pixel(12, 5),
          animation_speed = 0.4,
          hr_version = {
            filename = BASEENTITY .. "assembling-machine-2/hr-assembling-machine-2-shadow.png",
            priority = "high",
            width = 196,
            height = 163,
            frame_count = 32,
            line_length = 8,
            draw_as_shadow = true,
            shift = util.by_pixel(12, 4.75),
            scale = 0.5,
            animation_speed = 0.4
          }
        }
      }
    },
    crafting_categories = {
      "small-crafting", "medium-crafting", "large-crafting",
      "small-assembly", "medium-assembly", "large-assembly", "medium-only-assembly",
      "small-fluid-assembly", "large-fluid-assembly"
    },
    crafting_speed = 2,
    module_specification = { module_slots = 2 },
    allowed_effects = {"speed", "productivity", "consumption", "pollution"},
    energy_source = {type="electric", usage_priority="secondary-input", emissions_per_minute=10, drain="15kW"},
    energy_usage = "285kW",
    open_sound = { filename = "__base__/sound/machine-open.ogg", volume = 0.85 },
    close_sound = { filename = "__base__/sound/machine-close.ogg", volume = 0.75 },
    vehicle_impact_sound =  { filename = "__base__/sound/car-metal-impact.ogg", volume = 0.65 },
    working_sound = data.raw["assembling-machine"]["nullius-medium-assembler-1"].working_sound
  },

  {
    type = "assembling-machine",
    name = "nullius-medium-assembler-3",
	order = "nullius-mcd",
    icon_size = 64,
    icons = data.raw.item["nullius-medium-assembler-3"].icons,
    flags = {"placeable-neutral", "placeable-player", "player-creation"},
    minable = {mining_time = 1.6, result = "nullius-medium-assembler-3"},
    max_health = 600,
    dying_explosion = "medium-explosion",
    corpse = "medium-remnants",
    resistances = {
      { type = "impact", decrease = 100, percent = 90 }
    },
    collision_box = {{-1.2, -1.2}, {1.2, 1.2}},
    selection_box = {{-1.5, -1.5}, {1.5, 1.5}},
    fluid_boxes = data.raw["assembling-machine"]["nullius-medium-assembler-1"].fluid_boxes,
    fast_replaceable_group = "medium-assembler",
    alert_icon_shift = util.by_pixel(-3, -12),
    animation = {
      layers = {
        {
          filename = BASEENTITY .. "assembling-machine-3/assembling-machine-3.png",
          priority = "high",
          width = 108,
          height = 119,
          frame_count = 32,
          line_length = 8,
          shift = util.by_pixel(0, -0.5),
          animation_speed = 0.3,
          hr_version = {
            filename = BASEENTITY .. "assembling-machine-3/hr-assembling-machine-3.png",
            priority = "high",
            width = 214,
            height = 237,
            frame_count = 32,
            line_length = 8,
            shift = util.by_pixel(0, -0.75),
            scale = 0.5,
            animation_speed = 0.3
          }
        },
        {
          filename = BASEENTITY .. "assembling-machine-3/assembling-machine-3-shadow.png",
          priority = "high",
          width = 130,
          height = 82,
          frame_count = 32,
          line_length = 8,
          draw_as_shadow = true,
          shift = util.by_pixel(28, 4),
          animation_speed = 0.3,
          hr_version = {
            filename = BASEENTITY .. "assembling-machine-3/hr-assembling-machine-3-shadow.png",
            priority = "high",
            width = 260,
            height = 162,
            frame_count = 32,
            line_length = 8,
            draw_as_shadow = true,
            shift = util.by_pixel(28, 4),
            scale = 0.5,
            animation_speed = 0.3
          }
        }
      }
    },
    crafting_categories = {
      "small-crafting", "medium-crafting", "large-crafting",
      "small-assembly", "medium-assembly", "large-assembly", "medium-only-assembly",
      "small-fluid-assembly", "large-fluid-assembly"
    },
    crafting_speed = 4,
    module_specification = { module_slots = 3 },
    allowed_effects = {"speed", "productivity", "consumption", "pollution"},
    energy_source = {type="electric", usage_priority="secondary-input", emissions_per_minute=20, drain="30kW"},
    energy_usage = "670kW",
    open_sound = { filename = "__base__/sound/machine-open.ogg", volume = 0.85 },
    close_sound = { filename = "__base__/sound/machine-close.ogg", volume = 0.75 },
    vehicle_impact_sound =  { filename = "__base__/sound/car-metal-impact.ogg", volume = 0.65 },
    working_sound = data.raw["assembling-machine"]["nullius-medium-assembler-1"].working_sound
  },

  {
    type = "assembling-machine",
    name = "nullius-large-assembler-2",
	order = "nullius-mdc",
    icons = data.raw.item["nullius-large-assembler-2"].icons,
    flags = {"placeable-neutral", "placeable-player", "player-creation"},
    minable = {mining_time = 2, result = "nullius-large-assembler-2"},
    max_health = 800,
    dying_explosion = "medium-explosion",
    corpse = "medium-remnants",
    resistances = {
      { type = "impact", decrease = 100, percent = 90 }
    },
    collision_box = {{-1.7, -1.7}, {1.7, 1.7}},
    selection_box = {{-2.0, -2.0}, {2.0, 2.0}},
    fluid_boxes = data.raw["assembling-machine"]["nullius-large-assembler-1"].fluid_boxes,
    fast_replaceable_group = "large-assembler",
    alert_icon_shift = util.by_pixel(-3, -12),
    animation = {
      layers = {
        {
          filename = BASEENTITY .. "assembling-machine-3/hr-assembling-machine-3.png",
          priority = "high",
          width = 214,
          height = 237,
          frame_count = 32,
          line_length = 8,
          shift = util.by_pixel(0, -1),
          scale = 0.666,
          animation_speed = 0.15
        },
        {
          filename = BASEENTITY .. "assembling-machine-3/hr-assembling-machine-3-shadow.png",
          priority = "high",
          width = 260,
          height = 162,
          frame_count = 32,
          line_length = 8,
          draw_as_shadow = true,
          shift = util.by_pixel(37.333, 5.3333),
          scale = 0.666,
          animation_speed = 0.15
        }
      }
    },
    crafting_categories = {
      "medium-crafting", "large-crafting", "huge-crafting",
      "medium-assembly", "large-assembly", "huge-assembly",
      "large-fluid-assembly", "huge-fluid-assembly"
    },
    crafting_speed = 8,
    module_specification = { module_slots = 3 },
    allowed_effects = {"speed", "productivity", "consumption", "pollution"},
    energy_source = {type="electric", usage_priority="secondary-input", emissions_per_minute=40, drain="100kW"},
    energy_usage = "1500kW",
    open_sound = { filename = "__base__/sound/machine-open.ogg", volume = 0.85 },
    close_sound = { filename = "__base__/sound/machine-close.ogg", volume = 0.75 },
    vehicle_impact_sound =  { filename = "__base__/sound/car-metal-impact.ogg", volume = 0.65 },
    working_sound = data.raw["assembling-machine"]["nullius-large-assembler-1"].working_sound
  }
})

local nanofab_pipes = util.table.deepcopy(
    data.raw["assembling-machine"]["crystallizer"].fluid_boxes[1].pipe_picture)
nanofab_pipes.south = util.table.deepcopy(
    data.raw["pipe-to-ground"]["pipe-to-ground"].pictures.down.hr_version)
nanofab_pipes.south.shift = {0, -1}

data:extend({
  {
    type = "assembling-machine",
    name = "nullius-nanofabricator-1",
    icons = data.raw.item["nullius-nanofabricator-1"].icons,
	order = data.raw.item["nullius-nanofabricator-1"].order .. "b",
	localised_description = {"entity-description.nullius-nanofabricator"},
    flags = {"placeable-neutral", "placeable-player", "player-creation"},
    minable = {mining_time = 2, result = "nullius-nanofabricator-1"},
    max_health = 300,
    corpse = "big-remnants",
    dying_explosion = "medium-explosion",
    resistances = { { type = "impact", decrease = 50, percent = 80 } },
    collision_box = {{-1.75, -1.75}, {1.75, 1.75}},
    selection_box = {{-2, -2}, {2, 2}},
    module_specification = { module_slots = 3 },
    allowed_effects = {"speed", "productivity", "consumption", "pollution"},
    crafting_categories = {"nanotechnology"},
    fast_replaceable_group = "nanofabricator",
    next_upgrade = "nullius-nanofabricator-2",
    crafting_speed = 1,
    energy_source = {
      type = "electric",
      usage_priority = "secondary-input",
      emissions_per_minute = 2,
      drain = "30kW"
    },
    energy_usage = "470kW",
    animation = scale_image(data.raw["assembling-machine"]["crystallizer"].animation, 0.775),
    vehicle_impact_sound = data.raw["assembling-machine"]["crystallizer"].vehicle_impact_sound,
    working_sound = data.raw["assembling-machine"]["crystallizer"].working_sound,
    fluid_boxes = {
      {
        production_type = "input",
        pipe_picture = nanofab_pipes,
        pipe_covers = pipecoverspictures(),
        base_area = 5,
        base_level = -2,
        pipe_connections = {{ type="input", position = {-2.5, -0.5} }}
      },
      {
        production_type = "input",
        pipe_picture = nanofab_pipes,
        pipe_covers = pipecoverspictures(),
        base_area = 5,
        base_level = -2,
        pipe_connections = {{ type="input", position = {-0.5, 2.5} }}
      },
      {
        production_type = "input",
        pipe_picture = nanofab_pipes,
        pipe_covers = pipecoverspictures(),
        base_area = 5,
        base_level = -2,
        pipe_connections = {{ type="input", position = {0.5, -2.5} }}
      },
      {
        production_type = "output",
        pipe_picture = nanofab_pipes,
        pipe_covers = pipecoverspictures(),
        base_area = 3,
        base_level = 4,
        pipe_connections = {{ type="output", position = {2.5, 0.5} }}
      },
      off_when_no_fluid_recipe = true
    }
  }
})

data.raw["assembling-machine"]["nullius-nanofabricator-1"].animation.layers[1].tint = {0.6, 0.75, 0.75}
if (data.raw["assembling-machine"]["nullius-nanofabricator-1"].animation.layers[1].hr_version ~= nil) then
data.raw["assembling-machine"]["nullius-nanofabricator-1"].animation.layers[1].hr_version.tint = {0.6, 0.75, 0.75}
end

local mnf1 = util.table.deepcopy(
    data.raw["assembling-machine"]["nullius-nanofabricator-1"])
mnf1.name = "nullius-mirror-nanofabricator-1"
mnf1.icons[2] = { icon = ICONPATH .. "flip1.png", icon_size = 64 }
mnf1.order = data.raw.item["nullius-nanofabricator-1"].order .. "c"
mnf1.placeable_by = {item = "nullius-nanofabricator-1", count = 1}
mnf1.next_upgrade = "nullius-mirror-nanofabricator-2"
mnf1.localised_name = {"entity-name.nullius-mirrored",
    {"entity-name.nullius-nanofabricator-1"}}
mnf1.fluid_boxes[1].pipe_connections[1].position = {-2.5, 0.5}
mnf1.fluid_boxes[2].pipe_connections[1].position = {-0.5, -2.5}
mnf1.fluid_boxes[3].pipe_connections[1].position = {0.5, 2.5}
mnf1.fluid_boxes[4].pipe_connections[1].position = {2.5, -0.5}

data:extend({
  mnf1,
  {
    type = "assembling-machine",
    name = "nullius-nanofabricator-2",
    icons = data.raw.item["nullius-nanofabricator-2"].icons,
	order = data.raw.item["nullius-nanofabricator-2"].order .. "b",
	localised_description = {"entity-description.nullius-nanofabricator"},
    flags = {"placeable-neutral", "placeable-player", "player-creation"},
    minable = {mining_time = 2.5, result = "nullius-nanofabricator-2"},
    max_health = 400,
    corpse = "big-remnants",
    dying_explosion = "medium-explosion",
    resistances = { { type = "impact", decrease = 50, percent = 80 } },
    collision_box = {{-1.75, -1.75}, {1.75, 1.75}},
    selection_box = {{-2, -2}, {2, 2}},
    module_specification = { module_slots = 4 },
    allowed_effects = {"speed", "productivity", "consumption", "pollution"},
    crafting_categories = {"nanotechnology"},
    fast_replaceable_group = "nanofabricator",
    crafting_speed = 2,
    energy_source = {
      type = "electric",
      usage_priority = "secondary-input",
      emissions_per_minute = 4,
      drain = "60kW"
    },
    energy_usage = "940kW",
    animation = scale_image(data.raw["assembling-machine"]["crystallizer-2"].animation, 0.775),
    vehicle_impact_sound = {filename = "__base__/sound/car-metal-impact.ogg", volume = 0.65},
    working_sound = data.raw["assembling-machine"]["nullius-nanofabricator-1"].working_sound,
    fluid_boxes = {
      {
        production_type = "input",
        pipe_picture = data.raw["assembling-machine"]
		    ["nullius-nanofabricator-1"].fluid_boxes[1].pipe_picture,
        pipe_covers = pipecoverspictures(),
        base_area = 5,
        base_level = -3,
        height = 2,
        pipe_connections = {{ type="input", position = {-2.5, -0.5} }}
      },
      {
        production_type = "input",
        pipe_picture = data.raw["assembling-machine"]
		    ["nullius-nanofabricator-1"].fluid_boxes[2].pipe_picture,
        pipe_covers = pipecoverspictures(),
        base_area = 5,
        base_level = -3,
        height = 2,
        pipe_connections = {{ type="input", position = {-0.5, 2.5} }}
      },
      {
        production_type = "input",
        pipe_picture = data.raw["assembling-machine"]
		    ["nullius-nanofabricator-1"].fluid_boxes[3].pipe_picture,
        pipe_covers = pipecoverspictures(),
        base_area = 5,
        base_level = -3,
        height = 2,
        pipe_connections = {{ type="input", position = {0.5, -2.5} }}
      },
      {
        production_type = "output",
        pipe_picture = data.raw["assembling-machine"]
		    ["nullius-nanofabricator-1"].fluid_boxes[4].pipe_picture,
        pipe_covers = pipecoverspictures(),
        base_area = 3,
        base_level = 5,
        height = 2,
        pipe_connections = {{ type="output", position = {2.5, 0.5} }}
      },
      off_when_no_fluid_recipe = true
    }
  }
})

data:extend({
  {
    type = "assembling-machine",
    name = "nullius-mirror-nanofabricator-2",
	localised_name = {"entity-name.nullius-mirrored",
        {"entity-name.nullius-nanofabricator-2"}},
	icons = {
	  data.raw.item["nullius-nanofabricator-2"].icons[1],
      { icon = ICONPATH .. "flip1.png", icon_size = 64 }
    },
	order = data.raw.item["nullius-nanofabricator-2"].order .. "c",
	localised_description = {"entity-description.nullius-nanofabricator"},
    flags = {"placeable-neutral", "placeable-player", "player-creation"},
    minable = {mining_time = 2.5, result = "nullius-nanofabricator-2"},
	placeable_by = {item = "nullius-nanofabricator-2", count = 1},
    max_health = 400,
    corpse = "big-remnants",
    dying_explosion = "medium-explosion",
    resistances = { { type = "impact", decrease = 50, percent = 80 } },
    collision_box = {{-1.75, -1.75}, {1.75, 1.75}},
    selection_box = {{-2, -2}, {2, 2}},
    module_specification = { module_slots = 4 },
    allowed_effects = {"speed", "productivity", "consumption", "pollution"},
    crafting_categories = {"nanotechnology"},
    fast_replaceable_group = "nanofabricator",
    crafting_speed = 2,
    energy_source = data.raw["assembling-machine"]["nullius-nanofabricator-2"].energy_source,
    energy_usage = "940kW",
    animation = data.raw["assembling-machine"]["nullius-nanofabricator-2"].animation,
    vehicle_impact_sound = {filename = "__base__/sound/car-metal-impact.ogg", volume = 0.65},
    working_sound = data.raw["assembling-machine"]["nullius-nanofabricator-1"].working_sound,
    fluid_boxes = {
      {
        production_type = "input",
        pipe_picture = data.raw["assembling-machine"]
		    ["nullius-nanofabricator-1"].fluid_boxes[1].pipe_picture,
        pipe_covers = pipecoverspictures(),
        base_area = 5,
        base_level = -3,
        height = 2,
        pipe_connections = {{ type="input", position = {-2.5, 0.5} }}
      },
      {
        production_type = "input",
        pipe_picture = data.raw["assembling-machine"]
		    ["nullius-nanofabricator-1"].fluid_boxes[2].pipe_picture,
        pipe_covers = pipecoverspictures(),
        base_area = 5,
        base_level = -3,
        height = 2,
        pipe_connections = {{ type="input", position = {-0.5, -2.5} }}
      },
      {
        production_type = "input",
        pipe_picture = data.raw["assembling-machine"]
		    ["nullius-nanofabricator-1"].fluid_boxes[3].pipe_picture,
        pipe_covers = pipecoverspictures(),
        base_area = 5,
        base_level = -3,
        height = 2,
        pipe_connections = {{ type="input", position = {0.5, 2.5} }}
      },
      {
        production_type = "output",
        pipe_picture = data.raw["assembling-machine"]
		    ["nullius-nanofabricator-1"].fluid_boxes[4].pipe_picture,
        pipe_covers = pipecoverspictures(),
        base_area = 3,
        base_level = 5,
        height = 2,
        pipe_connections = {{ type="output", position = {2.5, -0.5} }}
      },
      off_when_no_fluid_recipe = true
    }
  },

  {
    type = "furnace",
    name = "nullius-boxer",
    icons = data.raw.item["nullius-boxer"].icons,
    flags = {"placeable-neutral", "player-creation"},
    minable = {mining_time = 0.7, result = "nullius-boxer"},
    max_health = 100,
    corpse = "steel-chest-remnants",
    dying_explosion = "steel-chest-explosion",
    collision_box = {{-0.25, -0.25}, {0.25, 0.25}},
    selection_box = {{-0.5, -0.5}, {0.5, 0.5}},
    drawing_box = {{-0.52, -0.82}, {0.52, 0.52}},
    result_inventory_size = 1,
    source_inventory_size = 1,
    crafting_categories = {"packaging"},
    crafting_speed = 4,
    energy_source = {
	  type = "electric",
	  usage_priority = "secondary-input",
	  emissions_per_minute = 0.1,
	  drain = "5kW"
	},
    energy_usage = "395kW",
    vehicle_impact_sound =  { filename = "__base__/sound/car-metal-impact.ogg", volume = 0.4 },
    working_sound = {
      sound = {
        { filename = "__base__/sound/assembling-machine-t1-1.ogg", volume = 0.6 },
        { filename = "__base__/sound/assembling-machine-t1-2.ogg", volume = 0.6 }
      },
      idle_sound = { filename = "__base__/sound/idle1.ogg", volume = 0.5 },
      apparent_volume = 0.5
    },
    animation = scale_image(data.raw["assembling-machine"]["powder-mixer"].animation, 0.52)
  }
})

data.raw["furnace"]["nullius-boxer"].animation.layers[1].tint = {0.88, 0.92, 1}
if (data.raw["furnace"]["nullius-boxer"].animation.layers[1].hr_version ~= nil) then
  data.raw["furnace"]["nullius-boxer"].animation.layers[1].hr_version.tint = {0.88, 0.92, 1}
end
