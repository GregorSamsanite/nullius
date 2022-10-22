local ICONPATH = "__nullius__/graphics/icons/"
local ENTITYPATH = "__nullius__/graphics/entity/"
local BASEENTITY = "__base__/graphics/entity/"

data:extend({
  {
    type = "container",
    name = "nullius-large-chest-1",
    icons = data.raw.item["nullius-large-chest-1"].icons,
    flags = {"placeable-neutral", "player-creation"},
    minable = { mining_time = 0.9, result = "nullius-large-chest-1" },
    max_health = 500,
    corpse = "steel-chest-remnants",
    open_sound = { filename = "__base__/sound/metallic-chest-open.ogg", volume = 0.7 },
    close_sound = { filename = "__base__/sound/metallic-chest-close.ogg", volume = 0.75 },
    resistances = {
      { type = "impact", decrease = 100, percent = 90 },
      { type = "fire", percent = 75 }
    },
    collision_box = {{-0.75, -0.75}, {0.75, 0.75}},
    selection_box = {{-1, -1}, {1, 1}},
    fast_replaceable_group = "container",
	next_upgrade = "nullius-large-chest-2",
    inventory_size = 100,
    vehicle_impact_sound =  { filename = "__base__/sound/car-metal-impact.ogg", volume = 1 },
    picture = {
      layers = {
        {
          filename = BASEENTITY .. "steel-chest/hr-steel-chest.png",
          priority = "extra-high",
          width = 64,
          height = 80,
          shift = util.by_pixel(-0.45, -0.9),
          scale = 0.9
        },
        {
          filename = BASEENTITY .. "steel-chest/hr-steel-chest-shadow.png",
          priority = "extra-high",
          width = 110,
          height = 46,
          shift = util.by_pixel(22, 14.4),
          draw_as_shadow = true,
          scale = 0.9
        }
      }
    },
    circuit_wire_connection_point = circuit_connector_definitions["chest"].points,
    circuit_connector_sprites = circuit_connector_definitions["chest"].sprites,
    circuit_wire_max_distance = default_circuit_wire_max_distance
  },
  {
    type = "container",
    name = "nullius-large-chest-2",
    icons = data.raw.item["nullius-large-chest-2"].icons,
    flags = {"placeable-neutral", "player-creation"},
    minable = { mining_time = 1.2, result = "nullius-large-chest-2" },
    max_health = 800,
    corpse = "steel-chest-remnants",
    open_sound = { filename = "__base__/sound/metallic-chest-open.ogg", volume = 0.7 },
    close_sound = { filename = "__base__/sound/metallic-chest-close.ogg", volume = 0.75 },
    resistances = {
      { type = "impact", decrease = 100, percent = 90 },
      { type = "fire", percent = 75 }
    },
    collision_box = {{-0.75, -0.75}, {0.75, 0.75}},
    selection_box = {{-1, -1}, {1, 1}},
    fast_replaceable_group = "container",
    inventory_size = 150,
    vehicle_impact_sound =  { filename = "__base__/sound/car-metal-impact.ogg", volume = 1 },
    circuit_wire_connection_point = circuit_connector_definitions["chest"].points,
    circuit_connector_sprites = circuit_connector_definitions["chest"].sprites,
    circuit_wire_max_distance = default_circuit_wire_max_distance,

    picture = {
      layers = {
        {
          filename = ENTITYPATH .. "chest/chest3e.png",
          priority = "extra-high",
          width = 68,
          height = 84,
          shift = util.by_pixel(0, -1.8),
          scale = 0.9
        },
        {
          filename = BASEENTITY .. "infinity-chest/hr-infinity-chest-shadow.png",
          priority = "extra-high",
          width = 116,
          height = 48,
          shift = util.by_pixel(21.6, 10.8),
          draw_as_shadow = true,
          scale = 0.9
        }
      }
    }
  },

  {
    type = "logistic-container",
    name = "nullius-small-storage-chest-1",
    icons = data.raw.item["nullius-small-storage-chest-1"].icons,
    localised_description = {"entity-description.nullius-storage-chest"},
    flags = {"placeable-player", "player-creation"},
    minable = {mining_time = 0.8, result = "nullius-small-storage-chest-1"},
    max_health = 300,
    max_logistic_slots = 1,
    corpse = "storage-chest-remnants",
    dying_explosion = "storage-chest-explosion",
    collision_box = {{-0.35, -0.35}, {0.35, 0.35}},
    selection_box = {{-0.5, -0.5}, {0.5, 0.5}},
    damaged_trigger_effect = data.raw["logistic-container"]["logistic-chest-storage"].damaged_trigger_effect,
    resistances = {
      { type = "impact", decrease = 100, percent = 90 },
      { type = "fire", percent = 75 }
    },
    fast_replaceable_group = "container",
	next_upgrade = "logistic-chest-storage",
    inventory_size = 20,
    logistic_mode = "storage",
    open_sound = data.raw["logistic-container"]["logistic-chest-storage"].open_sound,
    close_sound = data.raw["logistic-container"]["logistic-chest-storage"].close_sound,
    animation_sound = data.raw["logistic-container"]["logistic-chest-storage"].animation_sound,
    vehicle_impact_sound = data.raw["logistic-container"]["logistic-chest-storage"].vehicle_impact_sound,
    opened_duration = data.raw["logistic-container"]["logistic-chest-storage"].opened_duration,
    circuit_wire_connection_point = circuit_connector_definitions["chest"].points,
    circuit_connector_sprites = circuit_connector_definitions["chest"].sprites,
    circuit_wire_max_distance = default_circuit_wire_max_distance,

    animation = {
      layers = {
        {
          filename = ENTITYPATH .. "logistic-entity/logistic-entity.png",
          width = 64,
          height = 64,
          frame_count = 1,
          repeat_count = 16,
          scale = 0.5
        },
        {
          filename = BASEENTITY .. "logistic-chest/hr-logistic-chest-shadow.png",
          priority = "extra-high",
          width = 86,
          height = 44,
          frame_count = 1,
          repeat_count = 16,
          shift = util.by_pixel(8.5, 6),
          draw_as_shadow = true,
          scale = 0.5
        },
        {
          filename = "__boblogistics__/graphics/entity/logistic-chest/logistic-chest-port-back.png",
          width = 10,
          height = 8,
          frame_count = 1,
          repeat_count = 16,
          shift = util.by_pixel(0, -9)
        },
        {
          filename = "__boblogistics__/graphics/entity/logistic-chest/roboport-door-2.png",
          priority = "medium",
          width = 52,
          height = 39,
          frame_count = 16,
          scale = 0.25,
          shift = util.by_pixel(0, -9)
        },
        {
          filename = "__boblogistics__/graphics/entity/logistic-chest/logistic-chest-mask.png",
          width = 32,
          height = 32,
          frame_count = 1,
          repeat_count = 16,
          tint = {r = 0.9, g = 0.75, b = 0.1}
        }
      }
    }
  },
  {
    type = "logistic-container",
    name = "nullius-large-storage-chest-1",
    icons = data.raw.item["nullius-large-storage-chest-1"].icons,
    localised_description = {"entity-description.nullius-storage-chest"},
    flags = {"placeable-neutral", "player-creation"},
    minable = { mining_time = 1.2, result = "nullius-large-storage-chest-1" },
    max_health = 500,
    max_logistic_slots = 1,
    corpse = "storage-chest-remnants",
    dying_explosion = "storage-chest-explosion",
    collision_box = {{-0.75, -0.75}, {0.75, 0.75}},
    selection_box = {{-1, -1}, {1, 1}},
    resistances = {
      { type = "impact", decrease = 100, percent = 90 },
      { type = "fire", percent = 75 }
    },
    fast_replaceable_group = "container",
	next_upgrade = "nullius-large-storage-chest-2",
    inventory_size = 100,
    logistic_mode = "storage",
    open_sound = data.raw["logistic-container"]["logistic-chest-storage"].open_sound,
    close_sound = data.raw["logistic-container"]["logistic-chest-storage"].close_sound,
    animation_sound = data.raw["logistic-container"]["logistic-chest-storage"].animation_sound,
    vehicle_impact_sound = data.raw["logistic-container"]["logistic-chest-storage"].vehicle_impact_sound,
    opened_duration = data.raw["logistic-container"]["logistic-chest-storage"].opened_duration,
    circuit_wire_connection_point = circuit_connector_definitions["chest"].points,
    circuit_connector_sprites = circuit_connector_definitions["chest"].sprites,
    circuit_wire_max_distance = default_circuit_wire_max_distance,

    animation = {
      layers = {
        {
          filename = ENTITYPATH .. "logistic-entity/logistic-entity.png",
          width = 64,
          height = 64,
          frame_count = 1,
          repeat_count = 16,
          scale = 0.9
        },
        {
          filename = BASEENTITY .. "logistic-chest/hr-logistic-chest-shadow.png",
          priority = "extra-high",
          width = 86,
          height = 44,
          frame_count = 1,
          repeat_count = 16,
          shift = util.by_pixel(15.3, 10.8),
          draw_as_shadow = true,
          scale = 0.9
        },
        {
          filename = "__boblogistics__/graphics/entity/logistic-chest/logistic-chest-port-back.png",
          width = 10,
          height = 8,
          frame_count = 1,
          repeat_count = 16,
          shift = util.by_pixel(0, -16.2),
          scale = 1.8
        },
        {
          filename = "__boblogistics__/graphics/entity/logistic-chest/roboport-door-2.png",
          priority = "medium",
          width = 52,
          height = 39,
          frame_count = 16,
          scale = 0.45,
          shift = util.by_pixel(0, -16.2)
        },
        {
          filename = "__boblogistics__/graphics/entity/logistic-chest/logistic-chest-mask.png",
          width = 32,
          height = 32,
          frame_count = 1,
          repeat_count = 16,
          tint = {r = 0.9, g = 0.75, b = 0.1},
          scale = 1.8
        }
      }
    }
  },
  {
    type = "logistic-container",
    name = "nullius-large-storage-chest-2",
    icons = data.raw.item["nullius-large-storage-chest-2"].icons,
    localised_description = {"entity-description.nullius-storage-chest"},
    flags = {"placeable-neutral", "player-creation"},
    minable = { mining_time = 1.5, result = "nullius-large-storage-chest-2" },
    max_health = 800,
    max_logistic_slots = 1,
    corpse = "storage-chest-remnants",
    dying_explosion = "storage-chest-explosion",
    collision_box = {{-0.75, -0.75}, {0.75, 0.75}},
    selection_box = {{-1, -1}, {1, 1}},
    resistances = {
      { type = "impact", decrease = 100, percent = 90 },
      { type = "fire", percent = 75 }
    },
    fast_replaceable_group = "container",
    inventory_size = 150,
    logistic_mode = "storage",
    open_sound = data.raw["logistic-container"]["logistic-chest-storage"].open_sound,
    close_sound = data.raw["logistic-container"]["logistic-chest-storage"].close_sound,
    animation_sound = data.raw["logistic-container"]["logistic-chest-storage"].animation_sound,
    vehicle_impact_sound = data.raw["logistic-container"]["logistic-chest-storage"].vehicle_impact_sound,
    opened_duration = data.raw["logistic-container"]["logistic-chest-storage"].opened_duration,
    circuit_wire_connection_point = circuit_connector_definitions["chest"].points,
    circuit_connector_sprites = circuit_connector_definitions["chest"].sprites,
    circuit_wire_max_distance = default_circuit_wire_max_distance,
    animation = {
      layers = {
        {
          filename = BASEENTITY .. "logistic-chest/hr-logistic-chest-storage.png",
          priority = "extra-high",
          width = 66,
          height = 74,
          frame_count = 7,
          shift = util.by_pixel(0, -3.6),
          scale = 0.9
        },
        {
          filename = BASEENTITY .. "logistic-chest/hr-logistic-chest-shadow.png",
          priority = "extra-high",
          width = 96,
          height = 44,
          repeat_count = 7,
          shift = util.by_pixel(15.3, 9),
          draw_as_shadow = true,
          scale = 0.9
        }
      }
    }
  },

  {
    type = "logistic-container",
    name = "nullius-small-supply-chest-1",
    icons = data.raw.item["nullius-small-supply-chest-1"].icons,
    localised_description = {"entity-description.nullius-supply-chest"},
    flags = {"placeable-player", "player-creation"},
    minable = {mining_time = 0.8, result = "nullius-small-supply-chest-1"},
    max_health = 300,
    corpse = "passive-provider-chest-remnants",
    dying_explosion = "passive-provider-chest-explosion",
    collision_box = {{-0.35, -0.35}, {0.35, 0.35}},
    selection_box = {{-0.5, -0.5}, {0.5, 0.5}},
    damaged_trigger_effect = data.raw["logistic-container"]["logistic-chest-storage"].damaged_trigger_effect,
    resistances = {
      { type = "impact", decrease = 100, percent = 90 },
      { type = "fire", percent = 75 }
    },
    fast_replaceable_group = "container",
	next_upgrade = "logistic-chest-passive-provider",
    inventory_size = 20,
    logistic_mode = "passive-provider",
    open_sound = data.raw["logistic-container"]["logistic-chest-storage"].open_sound,
    close_sound = data.raw["logistic-container"]["logistic-chest-storage"].close_sound,
    animation_sound = data.raw["logistic-container"]["logistic-chest-storage"].animation_sound,
    vehicle_impact_sound = data.raw["logistic-container"]["logistic-chest-storage"].vehicle_impact_sound,
    opened_duration = data.raw["logistic-container"]["logistic-chest-storage"].opened_duration,
    circuit_wire_connection_point = circuit_connector_definitions["chest"].points,
    circuit_connector_sprites = circuit_connector_definitions["chest"].sprites,
    circuit_wire_max_distance = default_circuit_wire_max_distance,

    animation = {
      layers = {
        {
          filename = ENTITYPATH .. "logistic-entity/logistic-entity.png",
          width = 64,
          height = 64,
          frame_count = 1,
          repeat_count = 16,
          scale = 0.5
        },
        {
          filename = BASEENTITY .. "logistic-chest/hr-logistic-chest-shadow.png",
          priority = "extra-high",
          width = 86,
          height = 44,
          frame_count = 1,
          repeat_count = 16,
          shift = util.by_pixel(8.5, 6),
          draw_as_shadow = true,
          scale = 0.5
        },
        {
          filename = "__boblogistics__/graphics/entity/logistic-chest/logistic-chest-port-back.png",
          width = 10,
          height = 8,
          frame_count = 1,
          repeat_count = 16,
          shift = util.by_pixel(0, -9)
        },
        {
          filename = "__boblogistics__/graphics/entity/logistic-chest/roboport-door-2.png",
          priority = "medium",
          width = 52,
          height = 39,
          frame_count = 16,
          scale = 0.25,
          shift = util.by_pixel(0, -9)
        },
        {
          filename = "__boblogistics__/graphics/entity/logistic-chest/logistic-chest-mask.png",
          width = 32,
          height = 32,
          frame_count = 1,
          repeat_count = 16,
          tint = {r = 0.9, g = 0.2, b = 0.1}
        }
      }
    }
  },
  {
    type = "logistic-container",
    name = "nullius-large-supply-chest-1",
    icons = data.raw.item["nullius-large-supply-chest-1"].icons,
    localised_description = {"entity-description.nullius-supply-chest"},
    flags = {"placeable-neutral", "player-creation"},
    minable = { mining_time = 1.2, result = "nullius-large-supply-chest-1" },
    max_health = 500,
    corpse = "passive-provider-chest-remnants",
    dying_explosion = "passive-provider-chest-explosion",
    collision_box = {{-0.75, -0.75}, {0.75, 0.75}},
    selection_box = {{-1, -1}, {1, 1}},
    resistances = {
      { type = "impact", decrease = 100, percent = 90 },
      { type = "fire", percent = 75 }
    },
    fast_replaceable_group = "container",
	next_upgrade = "nullius-large-supply-chest-2",
    inventory_size = 100,
    logistic_mode = "passive-provider",
    open_sound = data.raw["logistic-container"]["logistic-chest-storage"].open_sound,
    close_sound = data.raw["logistic-container"]["logistic-chest-storage"].close_sound,
    animation_sound = data.raw["logistic-container"]["logistic-chest-storage"].animation_sound,
    vehicle_impact_sound = data.raw["logistic-container"]["logistic-chest-storage"].vehicle_impact_sound,
    opened_duration = data.raw["logistic-container"]["logistic-chest-storage"].opened_duration,
    circuit_wire_connection_point = circuit_connector_definitions["chest"].points,
    circuit_connector_sprites = circuit_connector_definitions["chest"].sprites,
    circuit_wire_max_distance = default_circuit_wire_max_distance,

    animation = {
      layers = {
        {
          filename = ENTITYPATH .. "logistic-entity/logistic-entity.png",
          width = 64,
          height = 64,
          frame_count = 1,
          repeat_count = 16,
          scale = 0.9
        },
        {
          filename = BASEENTITY .. "logistic-chest/hr-logistic-chest-shadow.png",
          priority = "extra-high",
          width = 86,
          height = 44,
          frame_count = 1,
          repeat_count = 16,
          shift = util.by_pixel(15.3, 10.8),
          draw_as_shadow = true,
          scale = 0.9
        },
        {
          filename = "__boblogistics__/graphics/entity/logistic-chest/logistic-chest-port-back.png",
          width = 10,
          height = 8,
          frame_count = 1,
          repeat_count = 16,
          shift = util.by_pixel(0, -16.2),
          scale = 1.8
        },
        {
          filename = "__boblogistics__/graphics/entity/logistic-chest/roboport-door-2.png",
          priority = "medium",
          width = 52,
          height = 39,
          frame_count = 16,
          scale = 0.45,
          shift = util.by_pixel(0, -16.2)
        },
        {
          filename = "__boblogistics__/graphics/entity/logistic-chest/logistic-chest-mask.png",
          width = 32,
          height = 32,
          frame_count = 1,
          repeat_count = 16,
          tint = {r = 0.9, g = 0.2, b = 0.1},
          scale = 1.8
        }
      }
    }
  },
  {
    type = "logistic-container",
    name = "nullius-large-supply-chest-2",
    icons = data.raw.item["nullius-large-supply-chest-2"].icons,
    localised_description = {"entity-description.nullius-supply-chest"},
    flags = {"placeable-neutral", "player-creation"},
    minable = { mining_time = 1.5, result = "nullius-large-supply-chest-2" },
    max_health = 800,
    corpse = "passive-provider-chest-remnants",
    dying_explosion = "passive-provider-chest-explosion",
    collision_box = {{-0.75, -0.75}, {0.75, 0.75}},
    selection_box = {{-1, -1}, {1, 1}},
    resistances = {
      { type = "impact", decrease = 100, percent = 90 },
      { type = "fire", percent = 75 }
    },
    fast_replaceable_group = "container",
    inventory_size = 150,
    logistic_mode = "passive-provider",
    open_sound = data.raw["logistic-container"]["logistic-chest-storage"].open_sound,
    close_sound = data.raw["logistic-container"]["logistic-chest-storage"].close_sound,
    animation_sound = data.raw["logistic-container"]["logistic-chest-storage"].animation_sound,
    vehicle_impact_sound = data.raw["logistic-container"]["logistic-chest-storage"].vehicle_impact_sound,
    opened_duration = data.raw["logistic-container"]["logistic-chest-storage"].opened_duration,
    circuit_wire_connection_point = circuit_connector_definitions["chest"].points,
    circuit_connector_sprites = circuit_connector_definitions["chest"].sprites,
    circuit_wire_max_distance = default_circuit_wire_max_distance,
    animation = {
      layers = {
        {
          filename = BASEENTITY .. "logistic-chest/hr-logistic-chest-passive-provider.png",
          priority = "extra-high",
          width = 66,
          height = 74,
          frame_count = 7,
          shift = util.by_pixel(0, -3.6),
          scale = 0.9
        },
        {
          filename = BASEENTITY .. "logistic-chest/hr-logistic-chest-shadow.png",
          priority = "extra-high",
          width = 96,
          height = 44,
          repeat_count = 7,
          shift = util.by_pixel(15.3, 9),
          draw_as_shadow = true,
          scale = 0.9
        }
      }
    }
  },

  {
    type = "logistic-container",
    name = "nullius-small-demand-chest-1",
    icons = data.raw.item["nullius-small-demand-chest-1"].icons,
    localised_description = {"entity-description.nullius-request-slots",
	    {"entity-description.nullius-demand-chest"}, 6},
    flags = {"placeable-player", "player-creation"},
    minable = {mining_time = 0.8, result = "nullius-small-demand-chest-1"},
    max_health = 300,
    max_logistic_slots = 6,
    corpse = "requester-chest-remnants",
    dying_explosion = "requester-chest-explosion",
    collision_box = {{-0.35, -0.35}, {0.35, 0.35}},
    selection_box = {{-0.5, -0.5}, {0.5, 0.5}},
    damaged_trigger_effect = data.raw["logistic-container"]["logistic-chest-storage"].damaged_trigger_effect,
    resistances = {
      { type = "impact", decrease = 100, percent = 90 },
      { type = "fire", percent = 75 }
    },
    fast_replaceable_group = "container",
	next_upgrade = "logistic-chest-requester",
    inventory_size = 20,
    logistic_mode = "requester",
    open_sound = data.raw["logistic-container"]["logistic-chest-storage"].open_sound,
    close_sound = data.raw["logistic-container"]["logistic-chest-storage"].close_sound,
    animation_sound = data.raw["logistic-container"]["logistic-chest-storage"].animation_sound,
    vehicle_impact_sound = data.raw["logistic-container"]["logistic-chest-storage"].vehicle_impact_sound,
    opened_duration = data.raw["logistic-container"]["logistic-chest-storage"].opened_duration,
    circuit_wire_connection_point = circuit_connector_definitions["chest"].points,
    circuit_connector_sprites = circuit_connector_definitions["chest"].sprites,
    circuit_wire_max_distance = default_circuit_wire_max_distance,

    animation = {
      layers = {
        {
          filename = ENTITYPATH .. "logistic-entity/logistic-entity.png",
          width = 64,
          height = 64,
          frame_count = 1,
          repeat_count = 16,
          scale = 0.5
        },
        {
          filename = BASEENTITY .. "logistic-chest/hr-logistic-chest-shadow.png",
          priority = "extra-high",
          width = 86,
          height = 44,
          frame_count = 1,
          repeat_count = 16,
          shift = util.by_pixel(8.5, 6),
          draw_as_shadow = true,
          scale = 0.5
        },
        {
          filename = "__boblogistics__/graphics/entity/logistic-chest/logistic-chest-port-back.png",
          width = 10,
          height = 8,
          frame_count = 1,
          repeat_count = 16,
          shift = util.by_pixel(0, -9)
        },
        {
          filename = "__boblogistics__/graphics/entity/logistic-chest/roboport-door-2.png",
          priority = "medium",
          width = 52,
          height = 39,
          frame_count = 16,
          scale = 0.25,
          shift = util.by_pixel(0, -9)
        },
        {
          filename = "__boblogistics__/graphics/entity/logistic-chest/logistic-chest-mask.png",
          width = 32,
          height = 32,
          frame_count = 1,
          repeat_count = 16,
          tint = {r = 98, g = 203, b = 230}
        }
      }
    }
  },
  {
    type = "logistic-container",
    name = "nullius-large-demand-chest-1",
    icons = data.raw.item["nullius-large-demand-chest-1"].icons,
    localised_description = {"entity-description.nullius-request-slots",
	    {"entity-description.nullius-demand-chest"}, 8},
    flags = {"placeable-neutral", "player-creation"},
    minable = { mining_time = 1.2, result = "nullius-large-demand-chest-1" },
    max_health = 500,
    max_logistic_slots = 8,
    corpse = "requester-chest-remnants",
    dying_explosion = "requester-chest-explosion",
    collision_box = {{-0.75, -0.75}, {0.75, 0.75}},
    selection_box = {{-1, -1}, {1, 1}},
    resistances = {
      { type = "impact", decrease = 100, percent = 90 },
      { type = "fire", percent = 75 }
    },
    fast_replaceable_group = "container",
	next_upgrade = "nullius-large-demand-chest-2",
    inventory_size = 100,
    logistic_mode = "requester",
    open_sound = data.raw["logistic-container"]["logistic-chest-storage"].open_sound,
    close_sound = data.raw["logistic-container"]["logistic-chest-storage"].close_sound,
    animation_sound = data.raw["logistic-container"]["logistic-chest-storage"].animation_sound,
    vehicle_impact_sound = data.raw["logistic-container"]["logistic-chest-storage"].vehicle_impact_sound,
    opened_duration = data.raw["logistic-container"]["logistic-chest-storage"].opened_duration,
    circuit_wire_connection_point = circuit_connector_definitions["chest"].points,
    circuit_connector_sprites = circuit_connector_definitions["chest"].sprites,
    circuit_wire_max_distance = default_circuit_wire_max_distance,

    animation = {
      layers = {
        {
          filename = ENTITYPATH .. "logistic-entity/logistic-entity.png",
          width = 64,
          height = 64,
          frame_count = 1,
          repeat_count = 16,
          scale = 0.9
        },
        {
          filename = BASEENTITY .. "logistic-chest/hr-logistic-chest-shadow.png",
          priority = "extra-high",
          width = 86,
          height = 44,
          frame_count = 1,
          repeat_count = 16,
          shift = util.by_pixel(15.3, 10.8),
          draw_as_shadow = true,
          scale = 0.9
        },
        {
          filename = "__boblogistics__/graphics/entity/logistic-chest/logistic-chest-port-back.png",
          width = 10,
          height = 8,
          frame_count = 1,
          repeat_count = 16,
          shift = util.by_pixel(0, -16.2),
          scale = 1.8
        },
        {
          filename = "__boblogistics__/graphics/entity/logistic-chest/roboport-door-2.png",
          priority = "medium",
          width = 52,
          height = 39,
          frame_count = 16,
          scale = 0.45,
          shift = util.by_pixel(0, -16.2)
        },
        {
          filename = "__boblogistics__/graphics/entity/logistic-chest/logistic-chest-mask.png",
          width = 32,
          height = 32,
          frame_count = 1,
          repeat_count = 16,
          tint = {r = 98, g = 203, b = 230},
          scale = 1.8
        }
      }
    }
  },
  {
    type = "logistic-container",
    name = "nullius-large-demand-chest-2",
    icons = data.raw.item["nullius-large-demand-chest-2"].icons,
    localised_description = {"entity-description.nullius-request-slots",
	    {"entity-description.nullius-demand-chest"}, 20},
    flags = {"placeable-neutral", "player-creation"},
    minable = { mining_time = 1.5, result = "nullius-large-demand-chest-2" },
    max_health = 800,
    max_logistic_slots = 20,
    corpse = "requester-chest-remnants",
    dying_explosion = "requester-chest-explosion",
    collision_box = {{-0.75, -0.75}, {0.75, 0.75}},
    selection_box = {{-1, -1}, {1, 1}},
    resistances = {
      { type = "impact", decrease = 100, percent = 90 },
      { type = "fire", percent = 75 }
    },
    fast_replaceable_group = "container",
    inventory_size = 150,
    logistic_mode = "requester",
    open_sound = data.raw["logistic-container"]["logistic-chest-storage"].open_sound,
    close_sound = data.raw["logistic-container"]["logistic-chest-storage"].close_sound,
    animation_sound = data.raw["logistic-container"]["logistic-chest-storage"].animation_sound,
    vehicle_impact_sound = data.raw["logistic-container"]["logistic-chest-storage"].vehicle_impact_sound,
    opened_duration = data.raw["logistic-container"]["logistic-chest-storage"].opened_duration,
    circuit_wire_connection_point = circuit_connector_definitions["chest"].points,
    circuit_connector_sprites = circuit_connector_definitions["chest"].sprites,
    circuit_wire_max_distance = default_circuit_wire_max_distance,
    animation = {
      layers = {
        {
          filename = BASEENTITY .. "logistic-chest/hr-logistic-chest-requester.png",
          priority = "extra-high",
          width = 66,
          height = 74,
          frame_count = 7,
          shift = util.by_pixel(0, -3.6),
          scale = 0.9
        },
        {
          filename = BASEENTITY .. "logistic-chest/hr-logistic-chest-shadow.png",
          priority = "extra-high",
          width = 96,
          height = 44,
          repeat_count = 7,
          shift = util.by_pixel(15.3, 9),
          draw_as_shadow = true,
          scale = 0.9
        }
      }
    }
  },

  {
    type = "logistic-container",
    name = "nullius-small-buffer-chest-1",
    icons = data.raw.item["nullius-small-buffer-chest-1"].icons,
    localised_description = {"entity-description.nullius-request-slots",
	    {"entity-description.nullius-buffer-chest"}, 4},
    flags = {"placeable-player", "player-creation"},
    minable = {mining_time = 0.8, result = "nullius-small-buffer-chest-1"},
    max_health = 300,
    max_logistic_slots = 4,
    corpse = "buffer-chest-remnants",
    dying_explosion = "buffer-chest-explosion",
    collision_box = {{-0.35, -0.35}, {0.35, 0.35}},
    selection_box = {{-0.5, -0.5}, {0.5, 0.5}},
    damaged_trigger_effect = data.raw["logistic-container"]["logistic-chest-storage"].damaged_trigger_effect,
    resistances = {
      { type = "impact", decrease = 100, percent = 90 },
      { type = "fire", percent = 75 }
    },
    fast_replaceable_group = "container",
	next_upgrade = "logistic-chest-buffer",
    inventory_size = 20,
    logistic_mode = "buffer",
    open_sound = data.raw["logistic-container"]["logistic-chest-storage"].open_sound,
    close_sound = data.raw["logistic-container"]["logistic-chest-storage"].close_sound,
    animation_sound = data.raw["logistic-container"]["logistic-chest-storage"].animation_sound,
    vehicle_impact_sound = data.raw["logistic-container"]["logistic-chest-storage"].vehicle_impact_sound,
    opened_duration = data.raw["logistic-container"]["logistic-chest-storage"].opened_duration,
    circuit_wire_connection_point = circuit_connector_definitions["chest"].points,
    circuit_connector_sprites = circuit_connector_definitions["chest"].sprites,
    circuit_wire_max_distance = default_circuit_wire_max_distance,

    animation = {
      layers = {
        {
          filename = ENTITYPATH .. "logistic-entity/logistic-entity.png",
          width = 64,
          height = 64,
          frame_count = 1,
          repeat_count = 16,
          scale = 0.5
        },
        {
          filename = BASEENTITY .. "logistic-chest/hr-logistic-chest-shadow.png",
          priority = "extra-high",
          width = 86,
          height = 44,
          frame_count = 1,
          repeat_count = 16,
          shift = util.by_pixel(8.5, 6),
          draw_as_shadow = true,
          scale = 0.5
        },
        {
          filename = "__boblogistics__/graphics/entity/logistic-chest/logistic-chest-port-back.png",
          width = 10,
          height = 8,
          frame_count = 1,
          repeat_count = 16,
          shift = util.by_pixel(0, -9)
        },
        {
          filename = "__boblogistics__/graphics/entity/logistic-chest/roboport-door-2.png",
          priority = "medium",
          width = 52,
          height = 39,
          frame_count = 16,
          scale = 0.25,
          shift = util.by_pixel(0, -9)
        },
        {
          filename = "__boblogistics__/graphics/entity/logistic-chest/logistic-chest-mask.png",
          width = 32,
          height = 32,
          frame_count = 1,
          repeat_count = 16,
          tint = {r = 0.2, g = 0.9, b = 0.1}
        }
      }
    }
  },
  {
    type = "logistic-container",
    name = "nullius-large-buffer-chest-1",
    icons = data.raw.item["nullius-large-buffer-chest-1"].icons,
    localised_description = {"entity-description.nullius-request-slots",
	    {"entity-description.nullius-buffer-chest"}, 5},
    flags = {"placeable-neutral", "player-creation"},
    minable = { mining_time = 1.2, result = "nullius-large-buffer-chest-1" },
    max_health = 500,
    max_logistic_slots = 5,
    corpse = "buffer-chest-remnants",
    dying_explosion = "buffer-chest-explosion",
    collision_box = {{-0.75, -0.75}, {0.75, 0.75}},
    selection_box = {{-1, -1}, {1, 1}},
    resistances = {
      { type = "impact", decrease = 100, percent = 90 },
      { type = "fire", percent = 75 }
    },
    fast_replaceable_group = "container",
	next_upgrade = "nullius-large-buffer-chest-2",
    inventory_size = 100,
    logistic_mode = "buffer",
    open_sound = data.raw["logistic-container"]["logistic-chest-storage"].open_sound,
    close_sound = data.raw["logistic-container"]["logistic-chest-storage"].close_sound,
    animation_sound = data.raw["logistic-container"]["logistic-chest-storage"].animation_sound,
    vehicle_impact_sound = data.raw["logistic-container"]["logistic-chest-storage"].vehicle_impact_sound,
    opened_duration = data.raw["logistic-container"]["logistic-chest-storage"].opened_duration,
    circuit_wire_connection_point = circuit_connector_definitions["chest"].points,
    circuit_connector_sprites = circuit_connector_definitions["chest"].sprites,
    circuit_wire_max_distance = default_circuit_wire_max_distance,

    animation = {
      layers = {
        {
          filename = ENTITYPATH .. "logistic-entity/logistic-entity.png",
          width = 64,
          height = 64,
          frame_count = 1,
          repeat_count = 16,
          scale = 0.9
        },
        {
          filename = BASEENTITY .. "logistic-chest/hr-logistic-chest-shadow.png",
          priority = "extra-high",
          width = 86,
          height = 44,
          frame_count = 1,
          repeat_count = 16,
          shift = util.by_pixel(15.3, 10.8),
          draw_as_shadow = true,
          scale = 0.9
        },
        {
          filename = "__boblogistics__/graphics/entity/logistic-chest/logistic-chest-port-back.png",
          width = 10,
          height = 8,
          frame_count = 1,
          repeat_count = 16,
          shift = util.by_pixel(0, -16.2),
          scale = 1.8
        },
        {
          filename = "__boblogistics__/graphics/entity/logistic-chest/roboport-door-2.png",
          priority = "medium",
          width = 52,
          height = 39,
          frame_count = 16,
          scale = 0.45,
          shift = util.by_pixel(0, -16.2)
        },
        {
          filename = "__boblogistics__/graphics/entity/logistic-chest/logistic-chest-mask.png",
          width = 32,
          height = 32,
          frame_count = 1,
          repeat_count = 16,
          tint = {r = 0.2, g = 0.9, b = 0.1},
          scale = 1.8
        }
      }
    }
  },
  {
    type = "logistic-container",
    name = "nullius-large-buffer-chest-2",
    icons = data.raw.item["nullius-large-buffer-chest-2"].icons,
    localised_description = {"entity-description.nullius-request-slots",
	    {"entity-description.nullius-buffer-chest"}, 8},
    flags = {"placeable-neutral", "player-creation"},
    minable = { mining_time = 1.5, result = "nullius-large-buffer-chest-2" },
    max_health = 800,
    max_logistic_slots = 8,
    corpse = "buffer-chest-remnants",
    dying_explosion = "buffer-chest-explosion",
    collision_box = {{-0.75, -0.75}, {0.75, 0.75}},
    selection_box = {{-1, -1}, {1, 1}},
    resistances = {
      { type = "impact", decrease = 100, percent = 90 },
      { type = "fire", percent = 75 }
    },
    fast_replaceable_group = "container",
    inventory_size = 150,
    logistic_mode = "buffer",
    open_sound = data.raw["logistic-container"]["logistic-chest-storage"].open_sound,
    close_sound = data.raw["logistic-container"]["logistic-chest-storage"].close_sound,
    animation_sound = data.raw["logistic-container"]["logistic-chest-storage"].animation_sound,
    vehicle_impact_sound = data.raw["logistic-container"]["logistic-chest-storage"].vehicle_impact_sound,
    opened_duration = data.raw["logistic-container"]["logistic-chest-storage"].opened_duration,
    circuit_wire_connection_point = circuit_connector_definitions["chest"].points,
    circuit_connector_sprites = circuit_connector_definitions["chest"].sprites,
    circuit_wire_max_distance = default_circuit_wire_max_distance,
    animation = {
      layers = {
        {
          filename = BASEENTITY .. "logistic-chest/hr-logistic-chest-buffer.png",
          priority = "extra-high",
          width = 66,
          height = 74,
          frame_count = 7,
          shift = util.by_pixel(0, -3.6),
          scale = 0.9
        },
        {
          filename = BASEENTITY .. "logistic-chest/hr-logistic-chest-shadow.png",
          priority = "extra-high",
          width = 96,
          height = 44,
          repeat_count = 7,
          shift = util.by_pixel(15.3, 9),
          draw_as_shadow = true,
          scale = 0.9
        }
      }
    }
  },

  {
    type = "logistic-container",
    name = "nullius-small-dispatch-chest-1",
    icons = data.raw.item["nullius-small-dispatch-chest-1"].icons,
    localised_description = {"entity-description.nullius-dispatch-chest"},
    flags = {"placeable-player", "player-creation"},
    minable = {mining_time = 0.8, result = "nullius-small-dispatch-chest-1"},
    max_health = 300,
    corpse = "active-provider-chest-remnants",
    dying_explosion = "active-provider-chest-explosion",
    collision_box = {{-0.35, -0.35}, {0.35, 0.35}},
    selection_box = {{-0.5, -0.5}, {0.5, 0.5}},
    damaged_trigger_effect = data.raw["logistic-container"]["logistic-chest-storage"].damaged_trigger_effect,
    resistances = {
      { type = "impact", decrease = 100, percent = 90 },
      { type = "fire", percent = 75 }
    },
    fast_replaceable_group = "container",
	next_upgrade = "logistic-chest-active-provider",
    inventory_size = 20,
    logistic_mode = "active-provider",
    open_sound = data.raw["logistic-container"]["logistic-chest-storage"].open_sound,
    close_sound = data.raw["logistic-container"]["logistic-chest-storage"].close_sound,
    animation_sound = data.raw["logistic-container"]["logistic-chest-storage"].animation_sound,
    vehicle_impact_sound = data.raw["logistic-container"]["logistic-chest-storage"].vehicle_impact_sound,
    opened_duration = data.raw["logistic-container"]["logistic-chest-storage"].opened_duration,
    circuit_wire_connection_point = circuit_connector_definitions["chest"].points,
    circuit_connector_sprites = circuit_connector_definitions["chest"].sprites,
    circuit_wire_max_distance = default_circuit_wire_max_distance,

    animation = {
      layers = {
        {
          filename = ENTITYPATH .. "logistic-entity/logistic-entity.png",
          width = 64,
          height = 64,
          frame_count = 1,
          repeat_count = 16,
          scale = 0.5
        },
        {
          filename = BASEENTITY .. "logistic-chest/hr-logistic-chest-shadow.png",
          priority = "extra-high",
          width = 86,
          height = 44,
          frame_count = 1,
          repeat_count = 16,
          shift = util.by_pixel(8.5, 6),
          draw_as_shadow = true,
          scale = 0.5
        },
        {
          filename = "__boblogistics__/graphics/entity/logistic-chest/logistic-chest-port-back.png",
          width = 10,
          height = 8,
          frame_count = 1,
          repeat_count = 16,
          shift = util.by_pixel(0, -9)
        },
        {
          filename = "__boblogistics__/graphics/entity/logistic-chest/roboport-door-2.png",
          priority = "medium",
          width = 52,
          height = 39,
          frame_count = 16,
          scale = 0.25,
          shift = util.by_pixel(0, -9)
        },
        {
          filename = "__boblogistics__/graphics/entity/logistic-chest/logistic-chest-mask.png",
          width = 32,
          height = 32,
          frame_count = 1,
          repeat_count = 16,
          tint = {r = 0.7, g = 0.1, b = 0.9}
        }
      }
    }
  },
  {
    type = "logistic-container",
    name = "nullius-large-dispatch-chest-1",
    icons = data.raw.item["nullius-large-dispatch-chest-1"].icons,
    localised_description = {"entity-description.nullius-dispatch-chest"},
    flags = {"placeable-neutral", "player-creation"},
    minable = { mining_time = 1.2, result = "nullius-large-dispatch-chest-1" },
    max_health = 500,
    corpse = "active-provider-chest-remnants",
    dying_explosion = "active-provider-chest-explosion",
    collision_box = {{-0.75, -0.75}, {0.75, 0.75}},
    selection_box = {{-1, -1}, {1, 1}},
    resistances = {
      { type = "impact", decrease = 100, percent = 90 },
      { type = "fire", percent = 75 }
    },
    fast_replaceable_group = "container",
	next_upgrade = "nullius-large-dispatch-chest-2",	
    inventory_size = 100,
    logistic_mode = "active-provider",
    open_sound = data.raw["logistic-container"]["logistic-chest-storage"].open_sound,
    close_sound = data.raw["logistic-container"]["logistic-chest-storage"].close_sound,
    animation_sound = data.raw["logistic-container"]["logistic-chest-storage"].animation_sound,
    vehicle_impact_sound = data.raw["logistic-container"]["logistic-chest-storage"].vehicle_impact_sound,
    opened_duration = data.raw["logistic-container"]["logistic-chest-storage"].opened_duration,
    circuit_wire_connection_point = circuit_connector_definitions["chest"].points,
    circuit_connector_sprites = circuit_connector_definitions["chest"].sprites,
    circuit_wire_max_distance = default_circuit_wire_max_distance,

    animation = {
      layers = {
        {
          filename = ENTITYPATH .. "logistic-entity/logistic-entity.png",
          width = 64,
          height = 64,
          frame_count = 1,
          repeat_count = 16,
          scale = 0.9
        },
        {
          filename = BASEENTITY .. "logistic-chest/hr-logistic-chest-shadow.png",
          priority = "extra-high",
          width = 86,
          height = 44,
          frame_count = 1,
          repeat_count = 16,
          shift = util.by_pixel(15.3, 10.8),
          draw_as_shadow = true,
          scale = 0.9
        },
        {
          filename = "__boblogistics__/graphics/entity/logistic-chest/logistic-chest-port-back.png",
          width = 10,
          height = 8,
          frame_count = 1,
          repeat_count = 16,
          shift = util.by_pixel(0, -16.2),
          scale = 1.8
        },
        {
          filename = "__boblogistics__/graphics/entity/logistic-chest/roboport-door-2.png",
          priority = "medium",
          width = 52,
          height = 39,
          frame_count = 16,
          scale = 0.45,
          shift = util.by_pixel(0, -16.2)
        },
        {
          filename = "__boblogistics__/graphics/entity/logistic-chest/logistic-chest-mask.png",
          width = 32,
          height = 32,
          frame_count = 1,
          repeat_count = 16,
          tint = {r = 0.7, g = 0.1, b = 0.9},
          scale = 1.8
        }
      }
    }
  },
  {
    type = "logistic-container",
    name = "nullius-large-dispatch-chest-2",
    icons = data.raw.item["nullius-large-dispatch-chest-2"].icons,
    localised_description = {"entity-description.nullius-dispatch-chest"},
    flags = {"placeable-neutral", "player-creation"},
    minable = { mining_time = 1.5, result = "nullius-large-dispatch-chest-2" },
    max_health = 800,
    corpse = "active-provider-chest-remnants",
    dying_explosion = "active-provider-chest-explosion",
    collision_box = {{-0.75, -0.75}, {0.75, 0.75}},
    selection_box = {{-1, -1}, {1, 1}},
    resistances = {
      { type = "impact", decrease = 100, percent = 90 },
      { type = "fire", percent = 75 }
    },
    fast_replaceable_group = "container",
    inventory_size = 150,
    logistic_mode = "active-provider",
    open_sound = data.raw["logistic-container"]["logistic-chest-storage"].open_sound,
    close_sound = data.raw["logistic-container"]["logistic-chest-storage"].close_sound,
    animation_sound = data.raw["logistic-container"]["logistic-chest-storage"].animation_sound,
    vehicle_impact_sound = data.raw["logistic-container"]["logistic-chest-storage"].vehicle_impact_sound,
    opened_duration = data.raw["logistic-container"]["logistic-chest-storage"].opened_duration,
    circuit_wire_connection_point = circuit_connector_definitions["chest"].points,
    circuit_connector_sprites = circuit_connector_definitions["chest"].sprites,
    circuit_wire_max_distance = default_circuit_wire_max_distance,
    animation = {
      layers = {
        {
          filename = BASEENTITY .. "logistic-chest/hr-logistic-chest-active-provider.png",
          priority = "extra-high",
          width = 66,
          height = 74,
          frame_count = 7,
          shift = util.by_pixel(0, -3.6),
          scale = 0.9
        },
        {
          filename = BASEENTITY .. "logistic-chest/hr-logistic-chest-shadow.png",
          priority = "extra-high",
          width = 96,
          height = 44,
          repeat_count = 7,
          shift = util.by_pixel(15.3, 9),
          draw_as_shadow = true,
          scale = 0.9
        }
      }
    }
  }
})