local ICONPATH = "__nullius__/graphics/icons/"

data:extend{
  {
    type = "item-subgroup",
    name = "unmirror-1", --those two are useless
    group = "chemistry",
    order = "md"
  },
  {
    type = "item-subgroup",
    name = "unmirror-2",
    group = "chemistry",
    order = "me"
  },
  {
    type = "assembling-machine",
    name = "nullius-mirror-nanofabricator-2",
	  localised_name = {"entity-name.nullius-mirrored",
        {"entity-name.nullius-nanofabricator-2"}},
	  icons = {
	  data.raw.item["nullius-nanofabricator-2"].icons[1],
      { icon = ICONPATH .. "flip1.png", icon_size = 64 }
    },
    hidden = true,
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
    module_slots = 4,
    allowed_effects = {"speed", "productivity", "consumption", "pollution"},
    crafting_categories = {"nanotechnology"},
    fast_replaceable_group = "nanofabricator",
    crafting_speed = 2,
    energy_source = data.raw["assembling-machine"]["nullius-nanofabricator-2"].energy_source,
    energy_usage = "940kW",
    graphics_set = {
        animation = data.raw["assembling-machine"]["nullius-nanofabricator-2"].graphics_set.animation,
    },
    impact_category = "metal",
    working_sound = data.raw["assembling-machine"]["nullius-nanofabricator-1"].working_sound,
    fluid_boxes = {
      {
        production_type = "input",
        pipe_picture = data.raw["assembling-machine"]
		    ["nullius-nanofabricator-1"].fluid_boxes[1].pipe_picture,
        pipe_covers = pipecoverspictures(),
        volume = 500,
        pipe_connections = {{ flow_direction ="input", position = {-1.5, 0.5}, direction = defines.direction.west }}
      },
      {
        production_type = "input",
        pipe_picture = data.raw["assembling-machine"]
		    ["nullius-nanofabricator-1"].fluid_boxes[2].pipe_picture,
        pipe_covers = pipecoverspictures(),
        volume = 500,
        pipe_connections = {{ flow_direction ="input", position = {-0.5, -1.5}, direction = defines.direction.north }}
      },
      {
        production_type = "input",
        pipe_picture = data.raw["assembling-machine"]
		    ["nullius-nanofabricator-1"].fluid_boxes[3].pipe_picture,
        pipe_covers = pipecoverspictures(),
        volume = 500,
        pipe_connections = {{ flow_direction ="input", position = {0.5, 1.5}, direction = defines.direction.south }}
      },
      {
        production_type = "output",
        pipe_picture = data.raw["assembling-machine"]
		    ["nullius-nanofabricator-1"].fluid_boxes[4].pipe_picture,
        pipe_covers = pipecoverspictures(),
        volume = 500,
        pipe_connections = {{ flow_direction ="output", position = {1.5, -0.5}, direction = defines.direction.east }}
      },
    },
    fluid_boxes_off_when_no_fluid_recipe = true,
    circuit_wire_max_distance = assembling_machine_circuit_wire_max_distance,
    circuit_connector = data.raw["assembling-machine"]["nullius-nanofabricator-2"].circuit_connector
  },
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
    hidden = true,
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
    energy_source = {type = "electric", usage_priority = "secondary-input", emissions_per_minute = {pollution = 0.05}, drain="20kW"},
    energy_usage = "480kW",
    ingredient_count = 4,
    resistances = data.raw["assembling-machine"]["nullius-hydro-plant-2"].resistances,
    module_slots = 2,
    allowed_effects = {"speed", "productivity", "consumption", "pollution"},
    fast_replaceable_group = "hydro-plant",
    next_upgrade = "nullius-mirror-hydro-plant-3",
    graphics_set = data.raw["assembling-machine"]["nullius-hydro-plant-2"].graphics_set,
    impact_category = "metal",
    working_sound = data.raw["assembling-machine"]["nullius-hydro-plant-1"].working_sound,

    fluid_boxes = {
      {
        production_type = "input",
        pipe_picture = data.raw["assembling-machine"]["nullius-hydro-plant-1"].fluid_boxes[1].pipe_picture,
        pipe_covers = pipecoverspictures(),
        volume = 500,
        pipe_connections = {{ flow_direction ="input", position = {1, -2}, direction = defines.direction.north }}
      },
      {
        production_type = "input",
        pipe_picture = data.raw["assembling-machine"]["nullius-hydro-plant-1"].fluid_boxes[2].pipe_picture,
        pipe_covers = pipecoverspictures(),
        volume = 500,
        pipe_connections = {{ flow_direction ="input", position = {-1, -2}, direction = defines.direction.north }}
      },
      {
        production_type = "output",
        pipe_picture = data.raw["assembling-machine"]["nullius-hydro-plant-1"].fluid_boxes[3].pipe_picture,
        pipe_covers = pipecoverspictures(),
        volume = 500,
        pipe_connections = {{ flow_direction ="output", position = {-1, 2}, direction = defines.direction.south }}
      },
      {
        production_type = "output",
        pipe_picture = data.raw["assembling-machine"]["nullius-hydro-plant-1"].fluid_boxes[4].pipe_picture,
        pipe_covers = pipecoverspictures(),
        volume = 500,
        pipe_connections = {{ flow_direction ="output", position = {1, 2}, direction = defines.direction.south }}
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
    hidden = true,
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
    graphics_set = data.raw["assembling-machine"]["nullius-hydro-plant-3"].graphics_set,
    impact_category = "metal",
    working_sound = data.raw["assembling-machine"]["nullius-hydro-plant-1"].working_sound,

    fluid_boxes = {
      {
        production_type = "input",
        pipe_picture = data.raw["assembling-machine"]["nullius-hydro-plant-1"].fluid_boxes[1].pipe_picture,
        pipe_covers = pipecoverspictures(),
        volume = 500,
        pipe_connections = {{ flow_direction ="input", position = {1, -2}, direction = defines.direction.north }}
      },
      {
        production_type = "input",
        pipe_picture = data.raw["assembling-machine"]["nullius-hydro-plant-1"].fluid_boxes[2].pipe_picture,
        pipe_covers = pipecoverspictures(),
        volume = 500,
        pipe_connections = {{ flow_direction ="input", position = {-1, -2}, direction = defines.direction.north }}
      },
      {
        production_type = "output",
        pipe_picture = data.raw["assembling-machine"]["nullius-hydro-plant-1"].fluid_boxes[3].pipe_picture,
        pipe_covers = pipecoverspictures(),
        volume = 500,
        pipe_connections = {{ flow_direction ="output", position = {-1, 2}, direction = defines.direction.south }}
      },
      {
        production_type = "output",
        pipe_picture = data.raw["assembling-machine"]["nullius-hydro-plant-1"].fluid_boxes[4].pipe_picture,
        pipe_covers = pipecoverspictures(),
        volume = 500,
        pipe_connections = {{ flow_direction ="output", position = {1, 2}, direction = defines.direction.south }}
      },
    },
  },
   {
    type = "assembling-machine",
    name = "nullius-mirror-distillery-2",
	  order = "z-nullius-ccc",
	  icons = {
	    data.raw.item["nullius-distillery-2"].icons[1],
	    { icon = ICONPATH .. "flip1.png", icon_size = 64 }
	  },
    localised_description = {"entity-description.nullius-distillery"},
    hidden = true,
    flags = {"placeable-neutral","player-creation"},
    minable = {mining_time = 1.8, result = "nullius-distillery-2"},
	  placeable_by = {item = "nullius-distillery-2", count = 1},
    max_health = 500,
    dying_explosion = "medium-explosion",
    corpse = "oil-refinery-remnants",
    collision_box = {{-2.3, -2.3}, {2.3, 2.3}},
    selection_box = {{-2.5, -2.5}, {2.5, 2.5}},
    
    crafting_categories = {"distillation"},
    crafting_speed = 2,
    energy_source = data.raw["assembling-machine"]["nullius-distillery-2"].energy_source,
    energy_usage = "550kW",
    resistances = data.raw["assembling-machine"]["nullius-distillery-2"].resistances,
    working_sound = data.raw["assembling-machine"]["oil-refinery"].working_sound,
    impact_category = "metal",
    module_slots = 2,
    allowed_effects = {"speed", "productivity", "consumption", "pollution"},
    fast_replaceable_group = "distillery",
    next_upgrade = "nullius-mirror-distillery-3",
    graphics_set = data.raw["assembling-machine"]["nullius-distillery-2"].graphics_set,

    fluid_boxes = {
      {
        production_type = "input",
        pipe_covers = pipecoverspictures(),
        volume = 500,
        pipe_connections = {{ flow_direction ="input", position = {1, 2}, direction = defines.direction.south }}
      },
      {
        production_type = "input",
        pipe_covers = pipecoverspictures(),
        volume = 500,
        pipe_connections = {{ flow_direction ="input", position = {-1, 2}, direction = defines.direction.south }}
      },
      {
        production_type = "output",
        pipe_covers = pipecoverspictures(),
        volume = 500,
        pipe_connections = {{ flow_direction ="output", position = {2, -2}, direction = defines.direction.north }}
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
        pipe_connections = {{ flow_direction ="output", position = {-2, -2}, direction = defines.direction.north }}
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
    hidden = true,
	  placeable_by = {item = "nullius-distillery-3", count = 1},
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
    impact_category = "metal",
    module_slots = 3,
    allowed_effects = {"speed", "productivity", "consumption", "pollution"},
    fast_replaceable_group = "distillery",
    graphics_set = {
      animation = data.raw["assembling-machine"]["oil-refinery"].graphics_set.animation,
      working_visualisations = data.raw["assembling-machine"]["nullius-distillery-1"].graphics_set.working_visualisations,
    },

    fluid_boxes = {
      {
        production_type = "input",
        pipe_covers = pipecoverspictures(),
        volume = 500,
        pipe_connections = {{ flow_direction ="input", position = {1, 2}, direction = defines.direction.south }}
      },
      {
        production_type = "input",
        pipe_covers = pipecoverspictures(),
        volume = 500,
        pipe_connections = {{ flow_direction ="input", position = {-1, 2}, direction = defines.direction.south }}
      },
      {
        production_type = "output",
        pipe_covers = pipecoverspictures(),
        volume = 500,
        pipe_connections = {{ flow_direction ="output", position = {2, -2}, direction = defines.direction.north }}
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
        pipe_connections = {{ flow_direction ="output", position = {-2, -2}, direction = defines.direction.north }}
      }
    }
  },
  {
    type = "assembling-machine",
    name = "nullius-mirror-surge-electrolyzer-2",
	  localised_name = {"entity-name.nullius-mirrored",
        {"entity-name.nullius-surge-electrolyzer-2"}},
	  icons = {
      {
        icon = "__angelspetrochemgraphics__/graphics/icons/electrolyser.png",
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
    hidden = true,
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
    graphics_set = data.raw["assembling-machine"]["nullius-surge-electrolyzer-2"].graphics_set,
    impact_category = "metal",
    working_sound = data.raw["assembling-machine"]["nullius-surge-electrolyzer-1"].working_sound,
    fluid_boxes = {
      {
        production_type = "input",
        pipe_covers = pipecoverspictures(),
        volume = 500,
        pipe_connections = {{ flow_direction ="input", position = {1.5, -1.5}, direction = defines.direction.north }}
      },
      {
        production_type = "output",
        pipe_covers = pipecoverspictures(),
        volume = 500,
        pipe_connections = {{ flow_direction ="output", position = {1.5, 1.5}, direction = defines.direction.south }}
      },
      {
        production_type = "output",
        pipe_covers = pipecoverspictures(),
        volume = 500,
        pipe_connections = {{ flow_direction ="output", position = {-1.5, -1.5}, direction = defines.direction.north }}
      },
      {
        production_type = "output",
        pipe_covers = pipecoverspictures(),
        volume = 500,
        pipe_connections = {{ flow_direction ="output", position = {-1.5, 1.5}, direction = defines.direction.south }}
      }
    }
  },
}

local mnf1 = util.table.deepcopy(
    data.raw["assembling-machine"]["nullius-nanofabricator-1"])
mnf1.name = "nullius-mirror-nanofabricator-1"
mnf1.icons[2] = { icon = ICONPATH .. "flip1.png", icon_size = 64 }
mnf1.order = data.raw.item["nullius-nanofabricator-1"].order .. "c"
mnf1.placeable_by = {item = "nullius-nanofabricator-1", count = 1}
mnf1.next_upgrade = "nullius-mirror-nanofabricator-2"
mnf1.localised_name = {"entity-name.nullius-mirrored",
    {"entity-name.nullius-nanofabricator-1"}}
mnf1.fluid_boxes[1].pipe_connections[1].position = {-1.5, 0.5}
mnf1.fluid_boxes[2].pipe_connections[1].position = {-0.5, -1.5}
mnf1.fluid_boxes[3].pipe_connections[1].position = {0.5, 1.5}
mnf1.fluid_boxes[4].pipe_connections[1].position = {1.5, -0.5}
mnf1.hidden = true

local mhp1 = util.table.deepcopy(
    data.raw["assembling-machine"]["nullius-hydro-plant-1"])
mhp1.name = "nullius-mirror-hydro-plant-1"
mhp1.icons[2] = { icon = ICONPATH .. "flip1.png", icon_size = 64 }
mhp1.placeable_by = {item = "nullius-hydro-plant-1", count = 1}
mhp1.next_upgrade = "nullius-mirror-hydro-plant-2"
mhp1.localised_name = {"entity-name.nullius-mirrored",
    {"entity-name.nullius-hydro-plant-1"}}
mhp1.fluid_boxes[1].pipe_connections[1].position = {1, -2}
mhp1.fluid_boxes[2].pipe_connections[1].position = {-1, -2}
mhp1.fluid_boxes[3].pipe_connections[1].position = {-1, 2}
mhp1.fluid_boxes[4].pipe_connections[1].position = {1, 2}
mhp1.hidden = true

local md1 = util.table.deepcopy(
    data.raw["assembling-machine"]["nullius-distillery-1"])
md1.name = "nullius-mirror-distillery-1"
md1.order = "z-nullius-cbc"
md1.icons[2] = { icon = ICONPATH .. "flip1.png", icon_size = 64 }
md1.placeable_by = {item = "nullius-distillery-1", count = 1}
md1.next_upgrade = "nullius-mirror-distillery-2"
md1.localised_name = {"entity-name.nullius-mirrored",
    {"entity-name.nullius-distillery-1"}}
md1.fluid_boxes[1].pipe_connections[1].position = {1, 2}
md1.fluid_boxes[2].pipe_connections[1].position = {-1, 2}
md1.fluid_boxes[3].pipe_connections[1].position = {2, -2}
md1.fluid_boxes[5].pipe_connections[1].position = {-2, -2}
md1.hidden = true

local mse1 = util.table.deepcopy(
    data.raw["assembling-machine"]["nullius-surge-electrolyzer-1"])
mse1.name = "nullius-mirror-surge-electrolyzer-1"
mse1.icons[2] = { icon = ICONPATH .. "flip1.png", icon_size = 64 }
mse1.order = data.raw.item["nullius-electrolyzer-1"].order .. "e"
mse1.placeable_by = {item = "nullius-electrolyzer-1", count = 1}
mse1.next_upgrade = "nullius-mirror-surge-electrolyzer-2"
mse1.localised_name = {"entity-name.nullius-mirrored",
    {"entity-name.nullius-surge-electrolyzer-1"}}
mse1.fluid_boxes[1].pipe_connections[1].position = {1.5, -1.5}
mse1.fluid_boxes[2].pipe_connections[1].position = {1.5, 1.5}
mse1.fluid_boxes[3].pipe_connections[1].position = {-1.5, -1.5}
mse1.fluid_boxes[4].pipe_connections[1].position = {-1.5, 1.5}
mse1.hidden = true

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
mpe1.hidden = true

data:extend{
  {
    type = "assembling-machine",
    name = "nullius-mirror-priority-electrolyzer-2",
	  localised_name = {"entity-name.nullius-mirrored",
        {"entity-name.nullius-priority-electrolyzer-2"}},
	  icons = {
      {
        icon = "__angelspetrochemgraphics__/graphics/icons/electrolyser.png",
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
    hidden = true,
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
    graphics_set = data.raw["assembling-machine"]["nullius-priority-electrolyzer-2"].graphics_set,
    impact_category = "metal",
    working_sound = data.raw["assembling-machine"]["nullius-surge-electrolyzer-1"].working_sound,
    fluid_boxes = data.raw["assembling-machine"]["nullius-mirror-surge-electrolyzer-2"].fluid_boxes
  },
   {
    type = "assembling-machine",
    name = "nullius-mirror-surge-electrolyzer-3",
	  localised_name = {"entity-name.nullius-mirrored",
        {"entity-name.nullius-surge-electrolyzer-3"}},
	  icons = {
      {
        icon = "__angelspetrochemgraphics__/graphics/icons/electrolyser.png",
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
    hidden = true,
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
    graphics_set = data.raw["assembling-machine"]["nullius-surge-electrolyzer-3"].graphics_set,
    impact_category = "metal",
    working_sound = data.raw["assembling-machine"]["nullius-surge-electrolyzer-1"].working_sound,
    fluid_boxes = {
      {
        production_type = "input",
        pipe_covers = pipecoverspictures(),
        volume = 500,
        pipe_connections = {{ flow_direction ="input", position = {1.5, -1.5}, direction = defines.direction.north }}
      },
      {
        production_type = "output",
        pipe_covers = pipecoverspictures(),
        volume = 500,
        pipe_connections = {{ flow_direction ="output", position = {1.5, 1.5}, direction = defines.direction.south }}
      },
      {
        production_type = "output",
        pipe_covers = pipecoverspictures(),
        volume = 500,
        pipe_connections = {{ flow_direction ="output", position = {-1.5, -1.5}, direction = defines.direction.north }}
      },
      {
        production_type = "output",
        pipe_covers = pipecoverspictures(),
        volume = 500,
        pipe_connections = {{ flow_direction ="output", position = {-1.5, 1.5}, direction = defines.direction.south }}
      }
    }
  },
}
data:extend{
  {
    type = "assembling-machine",
    name = "nullius-mirror-priority-electrolyzer-3",
	  localised_name = {"entity-name.nullius-mirrored",
        {"entity-name.nullius-priority-electrolyzer-3"}},
	  icons = {
      {
        icon = "__angelspetrochemgraphics__/graphics/icons/electrolyser.png",
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
    hidden = true,
    minable = {mining_time = 2, result = "nullius-electrolyzer-3"},
	  placeable_by = {item = "nullius-electrolyzer-3", count = 1},
    fast_replaceable_group = "electrolyzer", --todo: maybe remove that
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
    graphics_set = data.raw["assembling-machine"]["nullius-priority-electrolyzer-3"].graphics_set,
    impact_category = "metal",
    working_sound = data.raw["assembling-machine"]["nullius-surge-electrolyzer-1"].working_sound
  },
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
    hidden = true,
    minable = { mining_time = 1.6, result = "nullius-chemical-plant-2"},
	  placeable_by = {item = "nullius-chemical-plant-2", count = 1},
    max_health = 400,
    corpse = "chemical-plant-remnants",
    dying_explosion = "medium-explosion",
    collision_box = {{-1.2, -1.2}, {1.2, 1.2}},
    selection_box = {{-1.5, -1.5}, {1.5, 1.5}},
    
    module_slots = 2,
    allowed_effects = {"speed", "productivity", "consumption", "pollution"},
    fast_replaceable_group = "chemical-plant",
    next_upgrade = "nullius-mirror-chemical-plant-3",

    graphics_set = {
      animation = data.raw["assembling-machine"]["nullius-chemical-plant-2"].graphics_set.animation,
      working_visualisations = data.raw["assembling-machine"]["nullius-chemical-plant-1"].graphics_set.working_visualisations,
    },
    resistances = data.raw["assembling-machine"]["nullius-chemical-plant-2"].resistances,
    impact_category = "metal",
    working_sound = data.raw["assembling-machine"]["nullius-chemical-plant-2"].working_sound,
    crafting_speed = 2,
    energy_source = data.raw["assembling-machine"]["nullius-chemical-plant-2"].energy_source,
    energy_usage = "384kW",
    crafting_categories = {"basic-chemistry"},

    fluid_boxes = {
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
        pipe_connections = {{ flow_direction ="input", position = {-1, -1}, direction = defines.direction.north }}
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
        pipe_connections = {{ flow_direction ="output", position = {1, 1}, direction = defines.direction.south }}
      },
      {
        production_type = "output",
        pipe_covers = pipecoverspictures(),
        volume = 500,
        pipe_connections = {{ flow_direction ="output", position = {-1, 1}, direction = defines.direction.south }}
      }
    }
  },
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
    hidden = true,
	  placeable_by = {item = "nullius-chemical-plant-3", count = 1},
    max_health = 500,
    corpse = "chemical-plant-remnants",
    dying_explosion = "medium-explosion",
    collision_box = {{-1.2, -1.2}, {1.2, 1.2}},
    selection_box = {{-1.5, -1.5}, {1.5, 1.5}},
    
    module_slots = 3,
    allowed_effects = {"speed", "productivity", "consumption", "pollution"},
    fast_replaceable_group = "chemical-plant",
    graphics_set = {
      animation = data.raw["assembling-machine"]["nullius-chemical-plant-3"].graphics_set.animation,
      working_visualisations = data.raw["assembling-machine"]["nullius-chemical-plant-1"].graphics_set.working_visualisations,
    },
    resistances = data.raw["assembling-machine"]["nullius-chemical-plant-3"].resistances,
    energy_source = data.raw["assembling-machine"]["nullius-chemical-plant-3"].energy_source,
    impact_category = "metal",
    working_sound = data.raw["assembling-machine"]["chemical-plant"].working_sound,
    crafting_speed = 4,
    energy_usage = "760kW",
    crafting_categories = {"basic-chemistry"},
    fluid_boxes = {
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
        pipe_connections = {{ flow_direction ="input", position = {-1, -1}, direction = defines.direction.north }}
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
        pipe_connections = {{ flow_direction ="output", position = {1, 1}, direction = defines.direction.south }}
      },
      {
        production_type = "output",
        pipe_covers = pipecoverspictures(),
        volume = 500,
        pipe_connections = {{ flow_direction ="output", position = {-1, 1}, direction = defines.direction.south }}
      }
    }
  }
}

local mcp1 = util.table.deepcopy(
    data.raw["assembling-machine"]["nullius-chemical-plant-1"])
mcp1.name = "nullius-mirror-chemical-plant-1"
mcp1.icons[2] = { icon = ICONPATH .. "flip1.png", icon_size = 64 }
mcp1.order = "z-nullius-bbc"
mcp1.placeable_by = {item = "nullius-chemical-plant-1", count = 1}
mcp1.next_upgrade = "nullius-mirror-chemical-plant-2"
mcp1.localised_name = {"entity-name.nullius-mirrored",
    {"entity-name.nullius-chemical-plant-1"}}
mcp1.fluid_boxes[1].pipe_connections[1].position = {1, -1}
mcp1.fluid_boxes[2].pipe_connections[1].position = {-1, -1}
mcp1.fluid_boxes[4].pipe_connections[1].position = {1, 1}
mcp1.fluid_boxes[5].pipe_connections[1].position = {-1, 1}
mcp1.hidden = true

local mcc1 = util.table.deepcopy(
    data.raw["assembling-machine"]["nullius-combustion-chamber-1"])
mcc1.name = "nullius-mirror-combustion-chamber-1"
mcc1.icons[2] = { icon = ICONPATH .. "flip1.png", icon_size = 64 }
mcc1.placeable_by = {item = "nullius-combustion-chamber-1", count = 1}
mcc1.next_upgrade = "nullius-mirror-combustion-chamber-2"
mcc1.localised_name = {"entity-name.nullius-mirrored",
    {"entity-name.nullius-combustion-chamber-1"}}
mcc1.fluid_boxes[1].pipe_connections[1].position = {1, 0.5}
mcc1.fluid_boxes[2].pipe_connections[1].position = {-1, 0.5}
mcc1.hidden = true

data:extend{
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
    hidden = true,
	  placeable_by = {item = "nullius-combustion-chamber-2", count = 1},
    crafting_categories = { "combustion" },
    crafting_speed = 2.5,
    effect_receiver = {
      base_effect = {productivity = 0.02}
    },
    max_health = 300,
    corpse = "boiler-remnants",
    impact_category = "metal",
    resistances = data.raw["assembling-machine"]["nullius-combustion-chamber-2"].resistances,
    fast_replaceable_group = "combustion-chamber",
    next_upgrade = "nullius-mirror-combustion-chamber-3",
    collision_box = {{-1.29, -0.79}, {1.29, 0.79}},
    selection_box = {{-1.5, -1}, {1.5, 1}},
    energy_usage = "1kW",
    energy_source = { type = "void" },
    working_sound = data.raw["assembling-machine"]["nullius-combustion-chamber-2"].working_sound,
    graphics_set = data.raw["assembling-machine"]["nullius-combustion-chamber-2"].graphics_set,
    
    fluid_boxes = {
      {
        volume = 500,
        pipe_covers = pipecoverspictures(),
        pipe_connections = {{flow_direction = "input", position = {1, 0.5}, direction = defines.direction.east }},
        production_type = "input"
      },
      {
        volume = 500,
        pipe_covers = pipecoverspictures(),
        pipe_connections = {{flow_direction = "input", position = {-1, 0.5}, direction = defines.direction.west }},
        production_type = "input"
      },
      {
        volume = 500,
        pipe_covers = pipecoverspictures(),
        pipe_connections = {{flow_direction = "output", position = {0, -0.5}, direction = defines.direction.north }},
        production_type = "output"
      },
      {
        volume = 500,
        pipe_covers = pipecoverspictures(),
        pipe_connections = {{flow_direction = "output", position = {0, 0.5}, direction = defines.direction.south }},
        production_type = "output"
      }
    }
  },
}

data:extend{
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
    hidden = true,
	  placeable_by = {item = "nullius-combustion-chamber-3", count = 1},
    crafting_categories = { "combustion" },
    crafting_speed = 6,
    effect_receiver = {
      base_effect = {productivity = 0.04}
    },
    max_health = 400,
    corpse = "boiler-remnants",
    impact_category = "metal",
    resistances = data.raw["assembling-machine"]["nullius-combustion-chamber-2"].resistances,
    fast_replaceable_group = "combustion-chamber",
    collision_box = {{-1.29, -0.79}, {1.29, 0.79}},
    selection_box = {{-1.5, -1}, {1.5, 1}},
    fluid_boxes = data.raw["assembling-machine"]["nullius-mirror-combustion-chamber-2"].fluid_boxes,
    energy_usage = "1kW",
    energy_source = { type = "void" },
    working_sound = data.raw["assembling-machine"]["nullius-combustion-chamber-2"].working_sound,
    graphics_set = data.raw["assembling-machine"]["nullius-combustion-chamber-3"].graphics_set
  },
}

local ex1m = table.deepcopy(data.raw["assembling-machine"]["nullius-heat-exchanger-1"])
ex1m.name = "nullius-mirror-heat-exchanger-1"
ex1m.localised_name = {"entity-name.nullius-mirrored",
    {"", {"entity-name.heat-exchanger"}, " ", tostring(1)}}
ex1m.fluid_boxes[1].pipe_connections[1].position = {1, 0.5}
ex1m.fluid_boxes[3].pipe_connections[1].position = {-1, 0.5}
ex1m.icons[2] = { icon = ICONPATH .. "flip1.png", icon_size = 64 }
ex1m.placeable_by = {item = "nullius-heat-exchanger-1", count = 1}
ex1m.next_upgrade = "nullius-mirror-heat-exchanger-2"
ex1m.hidden = true

local ex2m = table.deepcopy(data.raw["assembling-machine"]["nullius-heat-exchanger-1"])
ex2m.name = "nullius-mirror-heat-exchanger-2"
ex2m.localised_name = {"entity-name.nullius-mirrored",
    {"", {"entity-name.heat-exchanger"}, " ", tostring(2)}}
ex2m.icons[2] = ex1m.icons[2]
ex2m.placeable_by = {item = "nullius-heat-exchanger-2", count = 1}
ex2m.next_upgrade = "nullius-mirror-heat-exchanger-3"
ex2m.fluid_boxes[1].pipe_connections[1].position = {1, 0.5}
ex2m.fluid_boxes[3].pipe_connections[1].position = {-1, 0.5}
ex2m.hidden = true

local ex3m = util.table.deepcopy(data.raw["assembling-machine"]["nullius-heat-exchanger-1"])
ex3m.name = "nullius-mirror-heat-exchanger-3"
ex3m.localised_name = {"entity-name.nullius-mirrored",
    {"", {"entity-name.heat-exchanger"}, " ", tostring(3)}}
ex3m.icons[2] = ex1m.icons[2]
ex3m.placeable_by = {item = "nullius-heat-exchanger-3", count = 1}
ex3m.next_upgrade = nil
ex3m.fluid_boxes[1].pipe_connections[1].position = {1, 0.5}
ex3m.fluid_boxes[3].pipe_connections[1].position = {-1, 0.5}
ex3m.hidden = true

local boilm = util.table.deepcopy(data.raw["assembling-machine"]["nullius-boiler-1"])
boilm.name = "nullius-mirror-boiler-1"
boilm.localised_name = {"entity-name.nullius-mirrored", {"", {"entity-name.boiler"}, " ", tostring(1)}}
boilm.fluid_boxes[1].pipe_connections[1].position = {1, 0.5}
boilm.fluid_boxes[3].pipe_connections[1].position = {-1, 0.5}
boilm.icons[2] = ex1m.icons[2]
boilm.placeable_by = {item = "nullius-boiler-1", count = 1}
boilm.next_upgrade = "nullius-mirror-boiler-2"
boilm.hidden = true

local boil2m = util.table.deepcopy(data.raw["assembling-machine"]["nullius-boiler-2"])
boil2m.name = "nullius-mirror-boiler-2"
boil2m.localised_name = {"entity-name.nullius-mirrored", {"", {"entity-name.boiler"}, " ", tostring(2)}}
boil2m.fluid_boxes[1].pipe_connections[1].position = {1, 0.5}
boil2m.fluid_boxes[3].pipe_connections[1].position = {-1, 0.5}
boil2m.icons[2] = boilm.icons[2]
boil2m.placeable_by = {item = "nullius-boiler-2", count = 1}
boil2m.next_upgrade = nil
boil2m.hidden = true

local mfc1 = util.table.deepcopy(
    data.raw["assembling-machine"]["nullius-flotation-cell-1"])
mfc1.name = "nullius-mirror-flotation-cell-1"
mfc1.icons[2] = { icon = ICONPATH .. "flip1.png", icon_size = 64 }
mfc1.placeable_by = {item = "nullius-flotation-cell-1", count = 1}
mfc1.next_upgrade = "nullius-mirror-flotation-cell-2"
mfc1.localised_name = {"entity-name.nullius-mirrored",
    {"entity-name.nullius-flotation-cell-1"}}
mfc1.fluid_boxes[1].pipe_connections[1].position = {-1.5, 0.5}
mfc1.fluid_boxes[2].pipe_connections[1].position = {0.5, 1.5}
mfc1.fluid_boxes[3].pipe_connections[1].position = {1.5, -0.5}
mfc1.fluid_boxes[4].pipe_connections[1].position = {-0.5, -1.5}
mfc1.hidden = true

data:extend({
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
	  hidden = true,
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
    module_slots = 2,
    allowed_effects = {"speed", "productivity", "consumption", "pollution"},
    graphics_set = {
      animation = data.raw["assembling-machine"]["nullius-flotation-cell-2"].graphics_set.animation,
      working_visualisations = data.raw["assembling-machine"]["nullius-flotation-cell-2"].graphics_set.working_visualisations,
    },
    impact_category = "metal",
    working_sound = data.raw["assembling-machine"]["nullius-flotation-cell-1"].working_sound,

    fluid_boxes = {
      {
        production_type = "input",
        pipe_picture = floatpipepics,
        pipe_covers = pipecoverspictures(),
        volume = 500,
        pipe_connections = {{ flow_direction ="input", position = {-1.5, 0.5}, direction = defines.direction.west }}
      },
      {
        production_type = "input",
        pipe_picture = floatpipepics,
        pipe_covers = pipecoverspictures(),
        volume = 500,
        pipe_connections = {{ flow_direction ="input", position = {0.5, 1.5}, direction = defines.direction.south }}
      },
      {
        production_type = "output",
        pipe_picture = floatpipepics,
        pipe_covers = pipecoverspictures(),
        volume = 500,
        pipe_connections = {{ flow_direction ="output", position = {1.5, -0.5}, direction = defines.direction.east }}
      },
      {
        production_type = "output",
        pipe_picture = floatpipepics,
        pipe_covers = pipecoverspictures(),
        volume = 500,
        pipe_connections = {{ flow_direction ="output", position = {-0.5, -1.5}, direction = defines.direction.north }}
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
    hidden = true,
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
    module_slots = 3,
    allowed_effects = {"speed", "productivity", "consumption", "pollution"},
    graphics_set = data.raw["assembling-machine"]["nullius-flotation-cell-3"].graphics_set,
    energy_source = data.raw["assembling-machine"]["nullius-flotation-cell-3"].energy_source,
    resistances = data.raw["assembling-machine"]["nullius-flotation-cell-3"].resistances,
    impact_category = "metal",
    working_sound = data.raw["assembling-machine"]["nullius-flotation-cell-1"].working_sound,

    fluid_boxes = {
      {
        production_type = "input",
        pipe_picture = floatpipepics,
        pipe_covers = pipecoverspictures(),
        volume = 500,
        pipe_connections = {{ flow_direction ="input", position = {-1.5, 0.5}, direction = defines.direction.west }}
      },
      {
        production_type = "input",
        pipe_picture = floatpipepics,
        pipe_covers = pipecoverspictures(),
        volume = 500,
        pipe_connections = {{ flow_direction ="input", position = {0.5, 1.5}, direction = defines.direction.south }}
      },
      {
        production_type = "output",
        pipe_picture = floatpipepics,
        pipe_covers = pipecoverspictures(),
        volume = 500,
        pipe_connections = {{ flow_direction ="output", position = {1.5, -0.5}, direction = defines.direction.east }}
      },
      {
        production_type = "output",
        pipe_picture = floatpipepics,
        pipe_covers = pipecoverspictures(),
        volume = 500,
        pipe_connections = {{ flow_direction ="output", position = {-0.5, -1.5}, direction = defines.direction.north }}
      }
    }
  }
})

local nmc1 = util.table.deepcopy(data.raw.furnace["nullius-chimney-1"])
nmc1.name = "nullius-mirror-chimney-1"
table.insert(nmc1.icons,{ icon = "__nullius__/graphics/icons/flip1.png", icon_size = 64 })
nmc1.placeable_by = {item = "nullius-chimney-1", count = 1}
nmc1.next_upgrade = "nullius-mirror-chimney-2"
nmc1.localised_name = {"entity-name.nullius-mirrored",
    {"entity-name.nullius-chimney-1"}}
nmc1.fluid_boxes[1].pipe_connections[1].position = {-0.5, 0.5}
nmc1.graphics_set.animation.north = util.table.deepcopy(nmc1.graphics_set.animation.south)
nmc1.graphics_set.animation.north.layers[1].shift = {-0.06, -1.57}
nmc1.graphics_set.animation.north.layers[2].shift = {1.56, 0.42}
nmc1.graphics_set.animation.east = util.table.deepcopy(nmc1.graphics_set.animation.south)
nmc1.graphics_set.animation.east.layers[1].shift = {-0.2, -1.88}
nmc1.graphics_set.animation.east.layers[2].shift = {1.42, 0.11}
nmc1.graphics_set.animation.west = util.table.deepcopy(nmc1.graphics_set.animation.south)
nmc1.graphics_set.animation.west.layers[1].shift = {0.2, -1.63}
nmc1.graphics_set.animation.west.layers[2].shift = {1.82, 0.36}
nmc1.graphics_set.animation.south.layers[1].shift = {0.09, -1.98}
nmc1.graphics_set.animation.south.layers[2].shift = {1.71, 0.01}
nmc1.graphics_set.working_visualisations[1].north_position = {-0.1, -5.54}
nmc1.graphics_set.working_visualisations[1].east_position = {-0.24, -5.85}
nmc1.graphics_set.working_visualisations[1].south_position = {0.05, -5.95}
nmc1.graphics_set.working_visualisations[1].west_position = {0.16, -5.6}
nmc1.hidden = true

local nmc2 = util.table.deepcopy(data.raw.furnace["nullius-chimney-2"])
nmc2.name = "nullius-mirror-chimney-2"
nmc2.icons[2] = nmc1.icons[3]
nmc2.placeable_by = {item = "nullius-chimney-2", count = 1}
nmc2.localised_name = {"entity-name.nullius-mirrored",
    {"entity-name.nullius-chimney-2"}}
nmc2.fluid_boxes[1].pipe_connections[1].position = {-0.5, 0.5}
nmc2.graphics_set.animation = nmc2.graphics_set.animation.south
nmc2.graphics_set.working_visualisations[1].north_position = nmc2.graphics_set.working_visualisations[1].south_position
nmc2.graphics_set.working_visualisations[1].east_position =  nmc2.graphics_set.working_visualisations[1].south_position
nmc2.graphics_set.working_visualisations[1].west_position =  nmc2.graphics_set.working_visualisations[1].south_position
nmc2.hidden = true

data:extend{mnf1,mhp1,md1,mse1,mpe1,mcp1,mcc1,ex1m,ex2m,ex3m,boilm,boil2m,mfc1,nmc1,nmc2}