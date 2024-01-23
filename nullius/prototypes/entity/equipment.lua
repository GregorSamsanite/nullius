local BASEENTITY = "__base__/graphics/entity/"
local ICONPATH = "__nullius__/graphics/icons/"
local EQUIPPATH = "__nullius__/graphics/equipment/"

data:extend({
  {
    type = "equipment-grid",
    name = "nullius-armor-grid-1",
    width = 5,
    height = 6,
    equipment_categories = {"cybernetic", "android"}
  },
  {
    type = "equipment-grid",
    name = "nullius-armor-grid-2",
    width = 6,
    height = 8,
    equipment_categories = {"cybernetic", "android"}
  },
  {
    type = "equipment-grid",
    name = "nullius-armor-grid-3",
    width = 8,
    height = 10,
    equipment_categories = {"cybernetic", "android"}
  },
  {
    type = "equipment-grid",
    name = "nullius-armor-grid-4",
    width = 9,
    height = 12,
    equipment_categories = {"cybernetic", "android"}
  },
  {
    type = "equipment-grid",
    name = "nullius-armor-grid-5",
    width = 10,
    height = 14,
    equipment_categories = {"cybernetic", "android"}
  },
  {
    type = "equipment-grid",
    name = "nullius-armor-grid-6",
    width = 10,
    height = 18,
    equipment_categories = {"cybernetic", "android"}
  },
  {
    type = "equipment-grid",
    name = "nullius-mecha-grid-1",
    width = 10,
    height = 10,
    equipment_categories = {"cybernetic"}
  },
  {
    type = "equipment-grid",
    name = "nullius-mecha-grid-2",
    width = 10,
    height = 15,
    equipment_categories = {"cybernetic"}
  },

  {
    type = "battery-equipment",
    name = "nullius-capacitor",
    take_result = "nullius-capacitor",
    order = "bb",
    sprite = {
      filename = "__base__/graphics/icons/battery.png",
      width = 64,
      height = 64,
      priority = "medium"
    },
    shape = {
      width = 1,
      height = 1,
      type = "full"
    },
    energy_source = {
      type = "electric",
      buffer_capacity = "1MJ",
      usage_priority = "tertiary"
    },
    categories = {"cybernetic"}
  },

  {
    type = "battery-equipment",
    name = "nullius-battery-1",
    localised_description = {"equipment-description.nullius-battery"},
    take_result = "nullius-uncharged-battery-1",
    order = "bcb",
    sprite = {
      filename = "__base__/graphics/icons/battery-equipment.png",
      width = 64,
      height = 64,
      priority = "medium"
    },
    shape = {
      width = 1,
      height = 1,
      type = "full"
    },
    energy_source = {
      type = "electric",
      buffer_capacity = "3MJ",
      usage_priority = "tertiary"
    },
    categories = {"cybernetic"}
  },

  {
    type = "battery-equipment",
    name = "nullius-battery-2",
    localised_description = {"equipment-description.nullius-battery"},
    take_result = "nullius-uncharged-battery-2",
    order = "bdb",
    sprite = {
      filename = "__base__/graphics/icons/battery-mk2-equipment.png",
      width = 64,
      height = 64,
      priority = "medium"
    },
    shape = {
      width = 1,
      height = 1,
      type = "full"
    },
    energy_source = {
      type = "electric",
      buffer_capacity = "12MJ",
      usage_priority = "tertiary"
    },
    categories = {"cybernetic"}
  },

  {
    type = "battery-equipment",
    name = "nullius-battery-3",
    localised_description = {"equipment-description.nullius-battery"},
    take_result = "nullius-uncharged-battery-3",
    order = "beb",
    sprite = {
      filename = ICONPATH .. "battery3.png",
      width = 64,
      height = 64,
      priority = "medium"
    },
    shape = {
      width = 1,
      height = 1,
      type = "full"
    },
    energy_source = {
      type = "electric",
      buffer_capacity = "25MJ",
      usage_priority = "tertiary"
    },
    categories = {"cybernetic"}
  }
})

local charged1 = util.table.deepcopy(data.raw["battery-equipment"]["nullius-battery-1"])
local charged2 = util.table.deepcopy(data.raw["battery-equipment"]["nullius-battery-2"])
local charged3 = util.table.deepcopy(data.raw["battery-equipment"]["nullius-battery-3"])
charged1.name = "nullius-charged-battery-1"
charged2.name = "nullius-charged-battery-2"
charged3.name = "nullius-charged-battery-3"
charged1.order = "bcc"
charged2.order = "bdc"
charged3.order = "bec"
charged1.localised_name = {"equipment-name.nullius-battery-1"}
charged2.localised_name = {"equipment-name.nullius-battery-2"}
charged3.localised_name = {"equipment-name.nullius-battery-3"}

data:extend({
  charged1,
  charged2,
  charged3,

  {
    type = "solar-panel-equipment",
    name = "nullius-solar-panel-1",
    order = "cb",
    sprite = {
      filename = "__base__/graphics/icons/solar-panel.png",
      width = 64,
      height = 64,
      tint = {0.77, 0.77, 0.68},
      priority = "medium"
    },
    shape = {
      width = 2,
      height = 2,
      type = "full"
    },
    energy_source = {
      type = "electric",
      usage_priority = "primary-output"
    },
    power = "100kW",
    categories = {"cybernetic"}
  },
  {
    type = "solar-panel-equipment",
    name = "nullius-solar-panel-2",
    order = "cc",
    sprite = {
      filename = "__base__/graphics/icons/solar-panel.png",
      width = 64,
      height = 64,
      tint = {0.8, 0.8, 0.9},
      priority = "medium"
    },
    shape = {
      width = 2,
      height = 2,
      type = "full"
    },
    energy_source = {
      type = "electric",
      usage_priority = "primary-output"
    },
    power = "200kW",
    categories = {"cybernetic"}
  },
  {
    type = "solar-panel-equipment",
    name = "nullius-solar-panel-3",
    order = "cd",
    sprite = {
      filename = "__base__/graphics/icons/solar-panel.png",
      width = 64,
      height = 64,
      priority = "medium"
    },
    shape = {
      width = 2,
      height = 2,
      type = "full"
    },
    energy_source = {
      type = "electric",
      usage_priority = "primary-output"
    },
    power = "500kW",
    categories = {"cybernetic"}
  },
  {
    type = "solar-panel-equipment",
    name = "nullius-solar-panel-4",
    order = "ce",
    sprite = {
      filename = "__base__/graphics/icons/solar-panel.png",
      width = 64,
      height = 64,
      tint = {1, 0.75, 0.85},
      priority = "medium"
    },
    shape = {
      width = 2,
      height = 2,
      type = "full"
    },
    energy_source = {
      type = "electric",
      usage_priority = "primary-output"
    },
    power = "800kW",
    categories = {"cybernetic"}
  }
})

if mods["reskins-bobs"] then
  data.raw["solar-panel-equipment"]["nullius-solar-panel-1"].sprite = { layers = {
    {
      filename = "__reskins-bobs__/graphics/entity/power/solar-panel-small/base/hr-solar-panel-small.png",
      size = 150,
      priority = "medium"
    },
    {
      filename = "__reskins-bobs__/graphics/entity/power/solar-panel-small/hr-solar-panel-small-mask.png",
      size = 150,
      priority = "medium",
      tint = tiercolor("yellow")
    },
    {
      filename = "__reskins-bobs__/graphics/entity/power/solar-panel-small/hr-solar-panel-small-highlights.png",
      size = 150,
      priority = "medium",
      blend_mode = "additive"
    }
  }}

  data.raw["solar-panel-equipment"]["nullius-solar-panel-2"].sprite =
    util.table.deepcopy(data.raw["solar-panel-equipment"]["nullius-solar-panel-1"].sprite)
  data.raw["solar-panel-equipment"]["nullius-solar-panel-2"].sprite.layers[2].tint = tiercolor("red")

  data.raw["solar-panel-equipment"]["nullius-solar-panel-3"].sprite =
    util.table.deepcopy(data.raw["solar-panel-equipment"]["nullius-solar-panel-1"].sprite)
  data.raw["solar-panel-equipment"]["nullius-solar-panel-3"].sprite.layers[2].tint = tiercolor("blue")

  data.raw["solar-panel-equipment"]["nullius-solar-panel-4"].sprite =
    util.table.deepcopy(data.raw["solar-panel-equipment"]["nullius-solar-panel-1"].sprite)
  data.raw["solar-panel-equipment"]["nullius-solar-panel-4"].sprite.layers[2].tint = tiercolor("green")
end

data:extend({
  {
    type = "roboport-equipment",
    name = "nullius-hangar-1",
    order = "gb",
    localised_description = {"equipment-description.nullius-buffer",
	    {"equipment-description.nullius-hangar"},
		{"entity-description.nullius-megajoule", 4}},
    sprite = {
      filename = EQUIPPATH .. "hangar1.png",
      width = 128,
      height = 128,
      priority = "medium",
      scale = 0.75
    },
    shape = {
      width = 3,
      height = 3,
      type = "full"
    },
    energy_source = {
      type = "electric",
      buffer_capacity = "4MJ",
      input_flow_limit = "400kW",
      usage_priority = "secondary-input"
    },
    charging_energy = "300kW",

    robot_limit = 10,
    construction_radius = 8,
    spawn_and_station_height = 0.4,
    spawn_and_station_shadow_height_offset = 0.5,
    charge_approach_distance = 2.6,
    robots_shrink_when_entering_and_exiting = true,

    recharging_animation = {
      filename = BASEENTITY .. "roboport/roboport-recharging.png",
      priority = "high",
      width = 37,
      height = 35,
      frame_count = 16,
      scale = 1.5,
      animation_speed = 0.5
    },
    recharging_light = {intensity = 0.4, size = 5},
    stationing_offset = {0, -0.6},
    charging_station_shift = {0, 0.5},
    charging_station_count = 1,
    charging_distance = 1.6,
    charging_threshold_distance = 5,
    categories = {"cybernetic"}
  },

  {
    type = "roboport-equipment",
    name = "nullius-hangar-2",
    order = "gc",
    localised_description = {"equipment-description.nullius-buffer",
	    {"equipment-description.nullius-hangar"},
		{"entity-description.nullius-megajoule", 10}},
    sprite = {
      filename = "__base__/graphics/equipment/hr-personal-roboport-mk2-equipment.png",
      width = 128,
      height = 128,
      priority = "medium",
      scale = 0.75
    },
    shape = {
      width = 3,
      height = 3,
      type = "full"
    },
    energy_source = {
      type = "electric",
      buffer_capacity = "10MJ",
      input_flow_limit = "1MW",
      usage_priority = "secondary-input"
    },
    charging_energy = "750kW",

    robot_limit = 16,
    construction_radius = 12,
    spawn_and_station_height = 0.4,
    spawn_and_station_shadow_height_offset = 0.5,
    charge_approach_distance = 2.6,
    robots_shrink_when_entering_and_exiting = true,

    recharging_animation = {
      filename = BASEENTITY .. "roboport/roboport-recharging.png",
      priority = "high",
      width = 37,
      height = 35,
      frame_count = 16,
      scale = 1.5,
      animation_speed = 0.5
    },
    recharging_light = {intensity = 0.4, size = 5},
    stationing_offset = {0, -0.6},
    charging_station_shift = {0, 0.5},
    charging_station_count = 1,
    charging_distance = 1.6,
    charging_threshold_distance = 5,
    categories = {"cybernetic"}
  },

  {
    type = "roboport-equipment",
    name = "nullius-hangar-3",
    order = "gd",
    localised_description = {"equipment-description.nullius-buffer",
	    {"equipment-description.nullius-hangar"},
		{"entity-description.nullius-megajoule", 30}},
    sprite = {
      filename = EQUIPPATH .. "hangar3.png",
      width = 128,
      height = 128,
      priority = "medium",
      scale = 0.75
    },
    shape = {
      width = 3,
      height = 3,
      type = "full"
    },
    energy_source = {
      type = "electric",
      buffer_capacity = "30MJ",
      input_flow_limit = "1.8MW",
      usage_priority = "secondary-input"
    },
    charging_energy = "1.5MW",

    robot_limit = 25,
    construction_radius = 16,
    spawn_and_station_height = 0.4,
    spawn_and_station_shadow_height_offset = 0.5,
    charge_approach_distance = 2.6,
    robots_shrink_when_entering_and_exiting = true,

    recharging_animation = {
      filename = BASEENTITY .. "roboport/roboport-recharging.png",
      priority = "high",
      width = 37,
      height = 35,
      frame_count = 16,
      scale = 1.5,
      animation_speed = 0.5
    },
    recharging_light = {intensity = 0.4, size = 5},
    stationing_offset = {0, -0.6},
    charging_station_shift = {0, 0.5},
    charging_station_count = 1,
    charging_distance = 1.6,
    charging_threshold_distance = 5,
    categories = {"cybernetic"}
  },

  {
    type = "roboport-equipment",
    name = "nullius-hangar-4",
    order = "ge",
    localised_description = {"equipment-description.nullius-buffer",
	    {"equipment-description.nullius-hangar"},
		{"entity-description.nullius-megajoule", 20}},
    sprite = {
      filename = EQUIPPATH .. "hangar3.png", --hangar 4 is just a smaller version of h3
      width = 128,
      height = 128,
      priority = "medium",
      scale = 0.5
    },
    shape = {
      width = 2,
      height = 2,
      type = "full"
    },
    energy_source = {
      type = "electric",
      buffer_capacity = "20MJ",
      input_flow_limit = "1.8MW",
      usage_priority = "secondary-input"
    },
    charging_energy = "1.5MW",

    robot_limit = 25,
    construction_radius = 16,
    spawn_and_station_height = 0.4,
    spawn_and_station_shadow_height_offset = 0.5,
    charge_approach_distance = 2.6,
    robots_shrink_when_entering_and_exiting = true,

    recharging_animation = {
      filename = BASEENTITY .. "roboport/roboport-recharging.png",
      priority = "high",
      width = 37,
      height = 35,
      frame_count = 16,
      scale = 1.5,
      animation_speed = 0.5
    },
    recharging_light = {intensity = 0.4, size = 5},
    stationing_offset = {0, -0.6},
    charging_station_shift = {0, 0.5},
    charging_station_count = 1,
    charging_distance = 1.6,
    charging_threshold_distance = 5,
    categories = {"cybernetic"}
  },

  {
    type = "roboport-equipment",
    name = "nullius-charger-1",
    localised_description = {"equipment-description.nullius-buffer",
	    {"equipment-description.nullius-charger"},
		{"entity-description.nullius-megajoule", 4}},
    order = "hb",
    sprite = {
      filename = "__boblogistics__/graphics/icons/roboport-chargepad.png",
      width = 32,
      height = 32,
      priority = "medium",
      scale = 2
    },
    shape = {
      width = 2,
      height = 2,
      type = "full"
    },
    energy_source = {
      type = "electric",
      buffer_capacity = "4MJ",
      input_flow_limit = "400kW",
      usage_priority = "secondary-input"
    },
    charging_energy = "300kW",

    robot_limit = 0,
    construction_radius = 4,
    spawn_and_station_height = 0.4,
    spawn_and_station_shadow_height_offset = 0.5,
    charge_approach_distance = 2.6,

    recharging_animation = {
      filename = BASEENTITY .. "roboport/roboport-recharging.png",
      priority = "high",
      width = 37,
      height = 35,
      frame_count = 16,
      scale = 1.5,
      animation_speed = 0.5
    },
    recharging_light = {intensity = 0.4, size = 5},
    stationing_offset = {0, -0.6},
    charging_station_shift = {0, 0.5},
    charging_station_count = 1,
    charging_distance = 1.6,
    charging_threshold_distance = 5,
    categories = {"cybernetic"}
  },

  {
    type = "roboport-equipment",
    name = "nullius-charger-2",
    localised_description = {"equipment-description.nullius-buffer",
	    {"equipment-description.nullius-charger"},
		{"entity-description.nullius-megajoule", 10}},
    order = "hc",
    sprite = {
      filename = "__boblogistics__/graphics/icons/roboport-chargepad-2.png",
      width = 32,
      height = 32,
      priority = "medium",
      scale = 2
    },
    shape = {
      width = 2,
      height = 2,
      type = "full"
    },
    energy_source = {
      type = "electric",
      buffer_capacity = "10MJ",
      input_flow_limit = "1MW",
      usage_priority = "secondary-input"
    },
    charging_energy = "750kW",

    robot_limit = 0,
    construction_radius = 4,
    spawn_and_station_height = 0.4,
    spawn_and_station_shadow_height_offset = 0.5,
    charge_approach_distance = 2.6,

    recharging_animation = {
      filename = BASEENTITY .. "roboport/roboport-recharging.png",
      priority = "high",
      width = 37,
      height = 35,
      frame_count = 16,
      scale = 1.5,
      animation_speed = 0.5
    },
    recharging_light = {intensity = 0.4, size = 5},
    stationing_offset = {0, -0.6},
    charging_station_shift = {0, 0.5},
    charging_station_count = 1,
    charging_distance = 1.6,
    charging_threshold_distance = 5,
    categories = {"cybernetic"}
  },

  {
    type = "roboport-equipment",
    name = "nullius-charger-3",
    localised_description = {"equipment-description.nullius-buffer",
	    {"equipment-description.nullius-charger"},
		{"entity-description.nullius-megajoule", 30}},
    order = "hd",
    sprite = {
      filename = "__boblogistics__/graphics/icons/roboport-chargepad-4.png",
      width = 32,
      height = 32,
      priority = "medium",
      scale = 2
    },
    shape = {
      width = 2,
      height = 2,
      type = "full"
    },
    energy_source = {
      type = "electric",
      buffer_capacity = "30MJ",
      input_flow_limit = "2.5MW",
      usage_priority = "secondary-input"
    },
    charging_energy = "1MW",

    robot_limit = 0,
    construction_radius = 4,
    spawn_and_station_height = 0.4,
    spawn_and_station_shadow_height_offset = 0.5,
    charge_approach_distance = 2.6,

    recharging_animation = {
      filename = BASEENTITY .. "roboport/roboport-recharging.png",
      priority = "high",
      width = 37,
      height = 35,
      frame_count = 16,
      scale = 1.5,
      animation_speed = 0.5
    },
    recharging_light = {intensity = 0.4, size = 5},
    stationing_offset = {0, -0.6},
    charging_station_shift = {0, 0.5},
    charging_station_count = 2,
    charging_distance = 1.6,
    charging_threshold_distance = 5,
    categories = {"cybernetic"}
  },

  {
    type = "roboport-equipment",
    name = "nullius-charger-4",
    localised_description = {"equipment-description.nullius-buffer",
	    {"equipment-description.nullius-charger"},
		{"entity-description.nullius-megajoule", 20}},
    order = "he",
    sprite = {
      filename = "__boblogistics__/graphics/icons/roboport-chargepad-4.png",
      width = 32,
      height = 32,
      priority = "medium",
      scale = 1.2
    },
    shape = {
      width = 2,
      height = 1,
      type = "full"
    },
    energy_source = {
      type = "electric",
      buffer_capacity = "20MJ",
      input_flow_limit = "2.5MW",
      usage_priority = "secondary-input"
    },
    charging_energy = "1MW",

    robot_limit = 0,
    construction_radius = 4,
    spawn_and_station_height = 0.4,
    spawn_and_station_shadow_height_offset = 0.5,
    charge_approach_distance = 2.6,

    recharging_animation = {
      filename = BASEENTITY .. "roboport/roboport-recharging.png",
      priority = "high",
      width = 37,
      height = 35,
      frame_count = 16,
      scale = 1.5,
      animation_speed = 0.5
    },
    recharging_light = {intensity = 0.4, size = 5},
    stationing_offset = {0, -0.6},
    charging_station_shift = {0, 0.5},
    charging_station_count = 2,
    charging_distance = 1.6,
    charging_threshold_distance = 5,
    categories = {"cybernetic"}
  },

  {
    type = "roboport-equipment",
    name = "nullius-relay-1",
    localised_description = {"equipment-description.nullius-buffer",
	    {"equipment-description.nullius-relay"},
		{"entity-description.nullius-kilojoule", 200}},
    order = "ib",
    sprite = {
      filename = "__boblogistics__/graphics/entity/roboport/logistic-zone-expander.png",
      width = 32,
      height = 80,
      x = 20,
      y = 24,
      priority = "medium"
    },
    shape = {
      width = 1,
      height = 3,
      type = "full"
    },
    energy_source = {
      type = "electric",
      buffer_capacity = "200kJ",
      input_flow_limit = "40kW",
      usage_priority = "secondary-input",
      drain = "20kW"
    },
    charging_energy = "0kW",

    robot_limit = 0,
    construction_radius = 16,
    spawn_and_station_height = 0.4,
    spawn_and_station_shadow_height_offset = 0.5,
    charge_approach_distance = 2.6,
    robots_shrink_when_entering_and_exiting = true,

    recharging_animation = {
      filename = BASEENTITY .. "roboport/roboport-recharging.png",
      priority = "high",
      width = 37,
      height = 35,
      frame_count = 16,
      scale = 1.5,
      animation_speed = 0.5
    },
    recharging_light = {intensity = 0.4, size = 5},
    stationing_offset = {0, -0.6},
    charging_station_shift = {0, 0.5},
    charging_station_count = 0,
    charging_distance = 1.6,
    charging_threshold_distance = 5,
    categories = {"cybernetic"}
  },

  {
    type = "roboport-equipment",
    name = "nullius-relay-2",
    localised_description = {"equipment-description.nullius-buffer",
	    {"equipment-description.nullius-relay"},
		{"entity-description.nullius-kilojoule", 400}},
    order = "ic",
    sprite = {
      filename = "__boblogistics__/graphics/entity/roboport/logistic-zone-expander-2.png",
      width = 32,
      height = 80,
      x = 20,
      y = 24,
      priority = "medium"
    },
    shape = {
      width = 1,
      height = 3,
      type = "full"
    },
    energy_source = {
      type = "electric",
      buffer_capacity = "400kJ",
      input_flow_limit = "60kW",
      usage_priority = "secondary-input",
      drain = "30kW"
    },
    charging_energy = "0kW",

    robot_limit = 0,
    construction_radius = 24,
    spawn_and_station_height = 0.4,
    spawn_and_station_shadow_height_offset = 0.5,
    charge_approach_distance = 2.6,
    robots_shrink_when_entering_and_exiting = true,

    recharging_animation = {
      filename = BASEENTITY .. "roboport/roboport-recharging.png",
      priority = "high",
      width = 37,
      height = 35,
      frame_count = 16,
      scale = 1.5,
      animation_speed = 0.5
    },
    recharging_light = {intensity = 0.4, size = 5},
    stationing_offset = {0, -0.6},
    charging_station_shift = {0, 0.5},
    charging_station_count = 0,
    charging_distance = 1.6,
    charging_threshold_distance = 5,
    categories = {"cybernetic"}
  },

  {
    type = "roboport-equipment",
    name = "nullius-relay-3",
    localised_description = {"equipment-description.nullius-buffer",
	    {"equipment-description.nullius-relay"},
		{"entity-description.nullius-megajoule", 1}},
    order = "id",
    sprite = {
      filename = "__boblogistics__/graphics/entity/roboport/logistic-zone-expander-4.png",
      width = 32,
      height = 80,
      x = 20,
      y = 24,
      priority = "medium"
    },
    shape = {
      width = 1,
      height = 3,
      type = "full"
    },
    energy_source = {
      type = "electric",
      buffer_capacity = "1MJ",
      input_flow_limit = "100kW",
      usage_priority = "secondary-input",
      drain = "50kW"
    },
    charging_energy = "0kW",

    robot_limit = 0,
    construction_radius = 32,
    spawn_and_station_height = 0.4,
    spawn_and_station_shadow_height_offset = 0.5,
    charge_approach_distance = 2.6,
    robots_shrink_when_entering_and_exiting = true,

    recharging_animation = {
      filename = BASEENTITY .. "roboport/roboport-recharging.png",
      priority = "high",
      width = 37,
      height = 35,
      frame_count = 16,
      scale = 1.5,
      animation_speed = 0.5
    },
    recharging_light = {intensity = 0.4, size = 5},
    stationing_offset = {0, -0.6},
    charging_station_shift = {0, 0.5},
    charging_station_count = 0,
    charging_distance = 1.6,
    charging_threshold_distance = 5,
    categories = {"cybernetic"}
  },

  {
    type = "roboport-equipment",
    name = "nullius-relay-4",
    localised_description = {"equipment-description.nullius-buffer",
	    {"equipment-description.nullius-relay"},
		{"entity-description.nullius-megajoule", 2}},
    order = "ie",
    sprite = {
      filename = "__boblogistics__/graphics/entity/roboport/logistic-zone-expander-3.png",
      width = 32,
      height = 80,
      x = 20,
      y = 24,
      tint = {0.85, 1, 0.9},
      priority = "medium"
    },
    shape = {
      width = 1,
      height = 3,
      type = "full"
    },
    energy_source = {
      type = "electric",
      buffer_capacity = "2MJ",
      input_flow_limit = "150kW",
      usage_priority = "secondary-input",
      drain = "75kW"
    },
    charging_energy = "0kW",

    robot_limit = 0,
    construction_radius = 48,
    spawn_and_station_height = 0.4,
    spawn_and_station_shadow_height_offset = 0.5,
    charge_approach_distance = 2.6,
    robots_shrink_when_entering_and_exiting = true,

    recharging_animation = {
      filename = BASEENTITY .. "roboport/roboport-recharging.png",
      priority = "high",
      width = 37,
      height = 35,
      frame_count = 16,
      scale = 1.5,
      animation_speed = 0.5
    },
    recharging_light = {intensity = 0.4, size = 5},
    stationing_offset = {0, -0.6},
    charging_station_shift = {0, 0.5},
    charging_station_count = 0,
    charging_distance = 1.6,
    charging_threshold_distance = 5,
    categories = {"cybernetic"}
  },

  {
    type = "night-vision-equipment",
    name = "nullius-night-vision-1",
    localised_description = data.raw.item["nullius-night-vision-1"].localised_description,
    order = "eb",
    sprite = {
      filename = "__base__/graphics/equipment/night-vision-equipment.png",
      width = 64,
      height = 64,
      priority = "medium",
      scale = 1.2
    },
    shape = {
      width = 3,
      height = 2,
      type = "full"
    },
    energy_source = {
      type = "electric",
      buffer_capacity = "150kJ",
      input_flow_limit = "20kW",
      usage_priority = "primary-input"
    },
    energy_input = "10kW",
    categories = {"android"},
    activate_sound = { filename = "__base__/sound/nightvision-on.ogg", volume = 0.6 },
    deactivate_sound = { filename = "__base__/sound/nightvision-off.ogg", volume = 0.6 },
    darkness_to_turn_on = 0.6,
    color_lookup = {{0.5, "__core__/graphics/color_luts/nightvision.png"}}
  },

  {
    type = "night-vision-equipment",
    name = "nullius-night-vision-2",
    localised_description = data.raw.item["nullius-night-vision-2"].localised_description,
    order = "ec",
    sprite = {
      filename = EQUIPPATH .. "night-vision-2.png",
      width = 128,
      height = 128,
      priority = "medium",
      scale = 0.5
    },
    shape = {
      width = 3,
      height = 2,
      type = "full"
    },
    energy_source = {
      type = "electric",
      buffer_capacity = "400kJ",
      input_flow_limit = "40kW",
      usage_priority = "primary-input"
    },
    energy_input = "16kW",
    categories = {"android"},
    activate_sound = { filename = "__base__/sound/nightvision-on.ogg", volume = 0.6 },
    deactivate_sound = { filename = "__base__/sound/nightvision-off.ogg", volume = 0.6 },
    darkness_to_turn_on = 0.4,
    color_lookup = {{0.5, "__core__/graphics/color_luts/lut-dawn.png"}}
  },

  {
    type = "night-vision-equipment",
    name = "nullius-night-vision-3",
    localised_description = data.raw.item["nullius-night-vision-3"].localised_description,
    order = "ed",
    sprite = {
      filename = EQUIPPATH .. "night-vision-3.png",
      width = 128,
      height = 128,
      priority = "medium",
      scale = 0.5
    },
    shape = {
      width = 3,
      height = 2,
      type = "full"
    },
    energy_source = {
      type = "electric",
      buffer_capacity = "1MJ",
      input_flow_limit = "80kW",
      usage_priority = "primary-input"
    },
    energy_input = "25kW",
    categories = {"android"},
    activate_sound = { filename = "__base__/sound/nightvision-on.ogg", volume = 0.6 },
    deactivate_sound = { filename = "__base__/sound/nightvision-off.ogg", volume = 0.6 },
    darkness_to_turn_on = 0.1,
    color_lookup = {{0.5, "__core__/graphics/color_luts/identity-lut.png"}}
  },

  {
    type = "belt-immunity-equipment",
    name = "nullius-levitation-field-1",
    localised_name = {"", {"equipment-name.nullius-levitation-field"}, " ", 1},
    localised_description = data.raw.item["nullius-levitation-field-1"].localised_description,
    order = "fb",
    sprite = {
      filename = "__base__/graphics/equipment/hr-belt-immunity-equipment.png",
      width = 64,
      height = 64,
      priority = "medium",
      scale = 1
    },
    shape = {
      width = 2,
      height = 2,
      type = "full"
    },
    energy_source = {
      type = "electric",
      buffer_capacity = "100kJ",
      input_flow_limit = "40kW",
      usage_priority = "primary-input"
    },
    energy_consumption = "20kW",
    categories = {"cybernetic"}
  },
  {
    type = "belt-immunity-equipment",
    name = "nullius-levitation-field-2",
    localised_name = {"", {"equipment-name.nullius-levitation-field"}, " ", 2},
    localised_description = data.raw.item["nullius-levitation-field-2"].localised_description,
    order = "fc",
    sprite = {
      filename = "__base__/graphics/equipment/hr-belt-immunity-equipment.png",
      width = 64,
      height = 64,
      priority = "medium",
      scale = 0.5
    },
    shape = {
      width = 1,
      height = 1,
      type = "full"
    },
    energy_source = {
      type = "electric",
      buffer_capacity = "200kJ",
      input_flow_limit = "25kW",
      usage_priority = "primary-input"
    },
    energy_consumption = "10kW",
    categories = {"cybernetic"}
  },

  {
    type = "movement-bonus-equipment",
    name = "nullius-upgrade-jump-boots",
    localised_description = data.raw.item["nullius-jump-boots"].localised_description,
    take_result = "nullius-jump-boots",
    order = "daj",
    sprite = {
      filename = EQUIPPATH.."boot.png",
      width = 256,
      height = 384,
      priority = "medium",
      scale = 0.5
    },
    shape = {
      width = 2,
      height = 3,
      type = "full"
    },
    energy_source = {
      type = "electric",
      buffer_capacity = "1MJ",
      input_flow_limit = "80kW",
      usage_priority = "secondary-input"
    },
    energy_consumption = "55kW",
    movement_bonus = 0.12,
    categories = {"android"}
  },
  {
    type = "movement-bonus-equipment",
    name = "nullius-leg-augmentation-1",
    localised_description = data.raw.item["nullius-leg-augmentation-1"].localised_description,
    order = "dbb",
    sprite = {
      filename = "__base__/graphics/equipment/hr-exoskeleton-equipment.png",
      width = 128,
      height = 256,
      priority = "medium",
      scale = 0.687,
      tint = {0.75, 0.75, 0.6}
    },
    shape = {
      width = 3,
      height = 5,
      type = "full"
    },
    energy_source = {
      type = "electric",
      buffer_capacity = "6MJ",
      input_flow_limit = "250kW",
      usage_priority = "secondary-input"
    },
    energy_consumption = "160kW",
    movement_bonus = 0.35,
    categories = {"cybernetic"}
  },
  {
    type = "movement-bonus-equipment",
    name = "nullius-leg-augmentation-2",
    localised_description = data.raw.item["nullius-leg-augmentation-2"].localised_description,
    order = "dbc",
    sprite = {
      filename = "__base__/graphics/equipment/hr-exoskeleton-equipment.png",
      width = 128,
      height = 256,
      priority = "medium",
      scale = 0.687,
      tint = {0.8, 0.8, 0.95}
    },
    shape = {
      width = 3,
      height = 5,
      type = "full"
    },
    energy_source = {
      type = "electric",
      buffer_capacity = "15MJ",
      input_flow_limit = "500kW",
      usage_priority = "secondary-input"
    },
    energy_consumption = "300kW",
    movement_bonus = 0.5,
    categories = {"cybernetic"}
  },
  {
    type = "movement-bonus-equipment",
    name = "nullius-leg-augmentation-3",
    localised_description = data.raw.item["nullius-leg-augmentation-3"].localised_description,
    order = "dbd",
    sprite = {
      filename = "__base__/graphics/equipment/hr-exoskeleton-equipment.png",
      width = 128,
      height = 256,
      priority = "medium",
      scale = 0.687
    },
    shape = {
      width = 3,
      height = 5,
      type = "full"
    },
    energy_source = {
      type = "electric",
      buffer_capacity = "30MJ",
      input_flow_limit = "1MW",
      usage_priority = "secondary-input"
    },
    energy_consumption = "500kW",
    movement_bonus = 0.65,
    categories = {"cybernetic"}
  },
  {
    type = "movement-bonus-equipment",
    name = "nullius-leg-augmentation-4",
    localised_description = data.raw.item["nullius-leg-augmentation-4"].localised_description,
    order = "dbe",
    sprite = {
      filename = "__base__/graphics/equipment/hr-exoskeleton-equipment.png",
      width = 128,
      height = 256,
      priority = "medium",
      scale = 0.5
    },
    shape = {
      width = 3,
      height = 4,
      type = "full"
    },
    energy_source = {
      type = "electric",
      buffer_capacity = "30MJ",
      input_flow_limit = "1MW",
      usage_priority = "secondary-input"
    },
    energy_consumption = "400kW",
    movement_bonus = 0.65,
    categories = {"cybernetic"}
  },

  {
    type = "movement-bonus-equipment",
    name = "nullius-upgrade-quadrupedal-adaptation-1",
    localised_description = data.raw.item["nullius-quadrupedal-adaptation-1"].localised_description,
    take_result = "nullius-quadrupedal-adaptation-1",
    order = "dcb",
    sprite = {
      filename = EQUIPPATH.."quadruped.png",
      width = 240,
      height = 160,
      priority = "medium",
      scale = 1,
      tint = {0.75, 0.75, 0.6}
    },
    shape = {
      width = 5,
      height = 4,
      type = "full"
    },
    energy_source = {
      type = "electric",
      buffer_capacity = "8MJ",
      input_flow_limit = "500kW",
      usage_priority = "secondary-input"
    },
    energy_consumption = "300kW",
    movement_bonus = 0.5,
    categories = {"cybernetic"}
  },
  {
    type = "movement-bonus-equipment",
    name = "nullius-upgrade-quadrupedal-adaptation-2",
    localised_description = data.raw.item["nullius-quadrupedal-adaptation-2"].localised_description,
	take_result = "nullius-quadrupedal-adaptation-2",
    order = "dcc",
    sprite = {
      filename = EQUIPPATH.."quadruped.png",
      width = 240,
      height = 160,
      priority = "medium",
      scale = 1,
      tint = {0.8, 0.8, 0.95}
    },
    shape = {
      width = 5,
      height = 4,
      type = "full"
    },
    energy_source = {
      type = "electric",
      buffer_capacity = "20MJ",
      input_flow_limit = "800kW",
      usage_priority = "secondary-input"
    },
    energy_consumption = "550kW",
    movement_bonus = 0.75,
    categories = {"cybernetic"}
  },
  {
    type = "movement-bonus-equipment",
    name = "nullius-upgrade-quadrupedal-adaptation-3",
    localised_description = data.raw.item["nullius-quadrupedal-adaptation-3"].localised_description,
	take_result = "nullius-quadrupedal-adaptation-3",
    order = "dcd",
    sprite = {
      filename = EQUIPPATH.."quadruped.png",
      width = 240,
      height = 160,
      priority = "medium",
      scale = 1
    },
    shape = {
      width = 5,
      height = 4,
      type = "full"
    },
    energy_source = {
      type = "electric",
      buffer_capacity = "40MJ",
      input_flow_limit = "1.5MW",
      usage_priority = "secondary-input"
    },
    energy_consumption = "900kW",
    movement_bonus = 1,
    categories = {"cybernetic"}
  },
  {
    type = "movement-bonus-equipment",
    name = "nullius-upgrade-quadrupedal-adaptation-4",
    localised_description = data.raw.item["nullius-quadrupedal-adaptation-4"].localised_description,
	take_result = "nullius-quadrupedal-adaptation-4",
    order = "dce",
    sprite = {
      filename = EQUIPPATH.."quadruped.png",
      width = 240,
      height = 160,
      priority = "medium",
      scale = 0.75
    },
    shape = {
      width = 5,
      height = 3,
      type = "full"
    },
    energy_source = {
      type = "electric",
      buffer_capacity = "40MJ",
      input_flow_limit = "1.2MW",
      usage_priority = "secondary-input"
    },
    energy_consumption = "750kW",
    movement_bonus = 1,
    categories = {"cybernetic"}
  },

  {
    type = "projectile",
    name = "nullius-missile-1",
    flags = {"not-on-map"},
    acceleration = 0.005,
    light = {intensity = 0.5, size = 4},
    animation = data.raw["projectile"]["explosive-rocket"].animation,
    shadow = data.raw["projectile"]["explosive-rocket"].shadow,
    smoke = data.raw["projectile"]["explosive-rocket"].smoke,
    action = {
      type = "direct",
      action_delivery = {
        type = "instant",
        target_effects = {
          {
            type = "create-entity",
            entity_name = "big-explosion"
          },
          {
            type = "damage",
            damage = {amount = 1000, type = "explosion"}
          },
          {
            type = "invoke-tile-trigger",
            repeat_count = 1,
          },
          {
            type = "destroy-decoratives",
            from_render_layer = "decorative",
            to_render_layer = "object",
            include_soft_decoratives = true, -- soft decoratives are decoratives with grows_through_rail_path = true
            include_decals = true,
            invoke_decorative_trigger = true,
            decoratives_with_trigger_only = false,
            radius = 5.5
          },
          {
            type = "destroy-cliffs",
            radius = 5.5,
            explosion = "explosion"
          },
          {
            type = "nested-result",
            action = {
              type = "area",
              radius = 8.5,
              action_delivery = {
                type = "instant",
                target_effects = {
                  {
                    type = "damage",
                    damage = {amount = 500, type = "explosion"}
                  },
                  {
                    type = "create-entity",
                    entity_name = "explosion"
                  }
                }
              }
            }
          },
          {
            type = "nested-result",
            action = {
              type = "area",
              radius = 5.5,
              action_delivery = {
                type = "instant",
                target_effects = {
                  {
                    type = "damage",
                    damage = {amount = 500, type = "explosion"}
                  }
                }
              }
            }
          }
        }
      }
    }
  },

  {
    type = "projectile",
    name = "nullius-missile-2",
    flags = {"not-on-map"},
    acceleration = 0.004,
    light = {intensity = 0.5, size = 4},
    animation = data.raw["projectile"]["atomic-rocket"].animation,
    shadow = data.raw["projectile"]["atomic-rocket"].shadow,
    smoke = data.raw["projectile"]["atomic-rocket"].smoke,
    action = {
      type = "direct",
      action_delivery = {
        type = "instant",
        target_effects = {
          {
            type = "destroy-cliffs",
            radius = 21,
            explosion = "explosion"
          },
          data.raw.projectile["atomic-rocket"].action.action_delivery.target_effects[3],
          data.raw.projectile["atomic-rocket"].action.action_delivery.target_effects[4],
          data.raw.projectile["atomic-rocket"].action.action_delivery.target_effects[5],
          data.raw.projectile["atomic-rocket"].action.action_delivery.target_effects[6],
          {
            type = "nested-result",
            action = {
              type = "area",
              radius = 18,
              action_delivery = {
                type = "instant",
                target_effects = {
                  {
                    type = "damage",
                    vaporize = true,
                    damage = {amount = 30000, type = "explosion"}
                  },
                  {
                    type = "create-entity",
                    entity_name = "explosion"
                  }
                }
              }
            }
          },
          {
            type = "nested-result",
            action = {
              type = "area",
              radius = 25,
              action_delivery = {
                type = "instant",
                target_effects = {
                  {
                    type = "damage",
                    vaporize = false,
                    damage = {amount = 900, type = "explosion"}
                  },
                  {
                    type = "create-entity",
                    entity_name = "explosion"
                  }
                }
              }
            }
          },
          {
            type = "nested-result",
            action = {
              type = "area",
              radius = 32,
              action_delivery = {
                type = "instant",
                target_effects = {
                  {
                    type = "damage",
                    vaporize = false,
                    damage = {amount = 100, type = "explosion"}
                  },
                  {
                    type = "create-entity",
                    entity_name = "explosion"
                  }
                }
              }
            }
          },
          data.raw.projectile["atomic-rocket"].action.action_delivery.target_effects[9],
          {
            type = "destroy-decoratives",
            from_render_layer = "decorative",
            to_render_layer = "object",
            include_soft_decoratives = true,
            include_decals = true,
            invoke_decorative_trigger = true,
            decoratives_with_trigger_only = false,
            radius = 25
          },
          data.raw.projectile["atomic-rocket"].action.action_delivery.target_effects[14],
          data.raw.projectile["atomic-rocket"].action.action_delivery.target_effects[15],
          data.raw.projectile["atomic-rocket"].action.action_delivery.target_effects[16],
          data.raw.projectile["atomic-rocket"].action.action_delivery.target_effects[17],
          data.raw.projectile["atomic-rocket"].action.action_delivery.target_effects[18],
          {
            type = "set-tile",
            tile_name = "nuclear-ground",
            radius = 20,
            tile_collision_mask = { "water-tile" }
          },
          {
            type = "set-tile",
            tile_name = "water-shallow",
            radius = 18,
            tile_collision_mask = { "water-tile" }
          },
          {
            type = "set-tile",
            tile_name = "water",
            radius = 14
          }
        }
      }
    }
  },
  
  {
    type = "energy-shield-equipment",
    name = "nullius-shield",
	order = "s",
    localised_description = data.raw.item["nullius-shield"].localised_description,
    sprite = {
      filename = "__base__/graphics/equipment/energy-shield-equipment.png",
      width = 64,
      height = 64,
      priority = "medium",
      hr_version = {
        filename = "__base__/graphics/equipment/hr-energy-shield-equipment.png",
        width = 128,
        height = 128,
        priority = "medium",
        scale = 0.5
      }
    },
    shape = {
      width = 2,
      height = 2,
      type = "full"
    },
    max_shield_value = 500,
    energy_source = {
      type = "electric",
      buffer_capacity = "500kJ",
      input_flow_limit = "500kW",
      usage_priority = "primary-input"
    },
    energy_per_shield = "20kJ",
    categories = {"cybernetic"}
  },

  {
    type = "battery-equipment",
    name = "nullius-upgrade-armor-plate",
    take_result = "nullius-armor-plate",
    localised_description = {"",
	    {"equipment-description.nullius-bonus-armor", 100}, "\n",
	    {"equipment-description.nullius-penalty-speed", 1}},
    order = "k",
    sprite = {
      filename = EQUIPPATH.."armor-plate.png",
      width = 128,
      height = 128,
      priority = "medium",
	  scale = 0.5
    },
    shape = {
      width = 1,
      height = 1,
      type = "full"
    },
    energy_source = {
      type = "electric",
      usage_priority = "secondary-input"
    },
    categories = {"android"}
  },
  {
    type = "battery-equipment",
    name = "nullius-upgrade-small-cargo-pod-1",
    take_result = "nullius-small-cargo-pod-1",
    localised_description = {"",
	    {"equipment-description.nullius-bonus-cargo", 2}, "\n",
	    {"equipment-description.nullius-penalty-speed", 0.3}},
    order = "jbb",
    sprite = {
      filename = EQUIPPATH.."small-pod-1.png",
      width = 128,
      height = 128,
      priority = "medium",
	  scale = 0.5
    },
    shape = {
      width = 1,
      height = 1,
      type = "full"
    },
    energy_source = {
      type = "electric",
      usage_priority = "secondary-input"
    },
    categories = {"android"}
  },
  {
    type = "battery-equipment",
    name = "nullius-upgrade-small-cargo-pod-2",
    take_result = "nullius-small-cargo-pod-2",
    localised_description = {"",
	    {"equipment-description.nullius-bonus-cargo", 3}, "\n",
	    {"equipment-description.nullius-penalty-speed", 0.4}},
    order = "jbc",
    sprite = {
      filename = EQUIPPATH.."small-pod-2.png",
      width = 128,
      height = 128,
      priority = "medium",
	  scale = 0.5
    },
    shape = {
      width = 1,
      height = 1,
      type = "full"
    },
    energy_source = {
      type = "electric",
      usage_priority = "secondary-input"
    },
    categories = {"android"}
  },
  {
    type = "battery-equipment",
    name = "nullius-upgrade-large-cargo-pod-1",
    take_result = "nullius-large-cargo-pod-1",
    localised_description = {"",
	    {"equipment-description.nullius-bonus-cargo", 10}, "\n",
	    {"equipment-description.nullius-penalty-speed", 1.5}},
    order = "jcb",
    sprite = {
      filename = EQUIPPATH.."large-pod-1.png",
      width = 256,
      height = 256,
      priority = "medium",
	  scale = 0.5
    },
    shape = {
      width = 2,
      height = 2,
      type = "full"
    },
    energy_source = {
      type = "electric",
      usage_priority = "secondary-input"
    },
    categories = {"android"}
  },
  {
    type = "battery-equipment",
    name = "nullius-upgrade-large-cargo-pod-2",
    take_result = "nullius-large-cargo-pod-2",
    localised_description = {"",
	    {"equipment-description.nullius-bonus-cargo", 12}, "\n",
	    {"equipment-description.nullius-penalty-speed", 1.6}},
    order = "jcb",
    sprite = {
      filename = EQUIPPATH.."large-pod-2.png",
      width = 256,
      height = 256,
      priority = "medium",
	  scale = 0.5
    },
    shape = {
      width = 2,
      height = 2,
      type = "full"
    },
    energy_source = {
      type = "electric",
      usage_priority = "secondary-input"
    },
    categories = {"android"}
  },
  {
    type = "battery-equipment",
    name = "nullius-upgrade-large-cargo-pod-3",
    take_result = "nullius-large-cargo-pod-3",
    localised_description = {"",
	    {"equipment-description.nullius-bonus-cargo", 15}, "\n",
	    {"equipment-description.nullius-penalty-speed", 2}},
    order = "jcb",
    sprite = {
      filename = EQUIPPATH.."large-pod-3.png",
      width = 256,
      height = 256,
      priority = "medium",
	  scale = 0.5
    },
    shape = {
      width = 2,
      height = 2,
      type = "full"
    },
    energy_source = {
      type = "electric",
      usage_priority = "secondary-input"
    },
    categories = {"android"}
  },
  {
    type = "active-defense-equipment",
    name = "nullius-upgrade-trash-compactor",
	localised_name = {"", {"equipment-name.nullius-upgrade-trash-compactor"}, " ", 1},
    take_result = "nullius-trash-compactor",
    localised_description = {"",
	    {"equipment-description.nullius-bonus-trash", 10}, "\n",
	    {"equipment-description.nullius-energy",
		    {"entity-description.nullius-kilowatt", 5}}},
    order = "jdb",
    sprite = {
      filename = EQUIPPATH.."trash-compactor-1.png",
      width = 640,
      height = 220,
      priority = "medium",
	  scale = 0.28
    },
    shape = {
      width = 3,
      height = 1,
      type = "full"
    },
    energy_source = {
      type = "electric",
      buffer_capacity = "300kJ",
      input_flow_limit = "30kW",
	  drain = "5kW",
      usage_priority = "primary-input"
    },
    categories = {"android"},
	automatic = false,
    attack_parameters = {
      type = "projectile",
      cooldown = 60,
      range = 1,
      ammo_type = {
        type = "projectile",
        category = "electric",
		energy_consumption = "5kJ"
      }
    }
  },
  {
    type = "active-defense-equipment",
    name = "nullius-upgrade-trash-compactor-2",
	localised_name = {"", {"equipment-name.nullius-upgrade-trash-compactor"}, " ", 2},
    take_result = "nullius-trash-compactor-2",
    localised_description = {"",
	    {"equipment-description.nullius-bonus-trash", 20}, "\n",
	    {"equipment-description.nullius-energy",
		    {"entity-description.nullius-kilowatt", 12}}},
    order = "jdc",
    sprite = {
      filename = EQUIPPATH.."trash-compactor-2.png",
      width = 640,
      height = 220,
      priority = "medium",
	  scale = 0.29
    },
    shape = {
      width = 3,
      height = 1,
      type = "full"
    },
    energy_source = {
      type = "electric",
      buffer_capacity = "800kJ",
      input_flow_limit = "80kW",
	  drain = "12kW",
      usage_priority = "primary-input"
    },
    categories = {"android"},
	automatic = false,
    attack_parameters = {
      type = "projectile",
      cooldown = 60,
      range = 1,
      ammo_type = {
        type = "projectile",
        category = "electric",
		energy_consumption = "12kJ"
      }
    }
  },

  {
    type = "active-defense-equipment",
    name = "nullius-upgrade-fabrication-tool-1",
    take_result = "nullius-fabrication-tool-1",
	localised_description = {"equipment-description.nullius-buffer",
	    {"equipment-description.nullius-bonus-craft", 25, 12},
		{"entity-description.nullius-megajoule", 2}},
    order = "lbb",
    sprite = {
      filename = EQUIPPATH.."fabrication-tool-1.png",
      width = 256,
      height = 128,
      priority = "medium",
	  scale = 0.5
    },
    shape = {
      width = 2,
      height = 1,
      type = "full"
    },
    energy_source = {
      type = "electric",
      buffer_capacity = "2MJ",
      input_flow_limit = "600kW",
      usage_priority = "secondary-input"
    },
    categories = {"android"},
	automatic = false,
    attack_parameters = {
      type = "projectile",
      cooldown = 60,
      range = 1,
      ammo_type = {
        type = "projectile",
        category = "electric",
		energy_consumption = "12kJ"
      }
    }
  },
  {
    type = "active-defense-equipment",
    name = "nullius-upgrade-fabrication-tool-2",
    take_result = "nullius-fabrication-tool-2",
	localised_description = {"equipment-description.nullius-buffer",
	    {"equipment-description.nullius-bonus-craft", 40, 16},
		{"entity-description.nullius-megajoule", 5}},
    order = "lbc",
    sprite = {
      filename = EQUIPPATH.."fabrication-tool-2.png",
      width = 256,
      height = 128,
      priority = "medium",
	  scale = 0.5
    },
    shape = {
      width = 2,
      height = 1,
      type = "full"
    },
    energy_source = {
      type = "electric",
      buffer_capacity = "5MJ",
      input_flow_limit = "2MW",
      usage_priority = "secondary-input"
    },
    categories = {"android"},
	automatic = false,
    attack_parameters = {
      type = "projectile",
      cooldown = 60,
      range = 1,
      ammo_type = {
        type = "projectile",
        category = "electric",
		energy_consumption = "16kJ"
      }
    }
  },
  {
    type = "active-defense-equipment",
    name = "nullius-upgrade-fabrication-tool-3",
    take_result = "nullius-fabrication-tool-3",
	localised_description = {"equipment-description.nullius-buffer",
	    {"equipment-description.nullius-bonus-craft", 120, 40},
		{"entity-description.nullius-megajoule", 25}},
    order = "lbd",
    sprite = {
      filename = EQUIPPATH.."fabrication-tool-3.png",
      width = 256,
      height = 256,
      priority = "medium",
	  scale = 0.5
    },
    shape = {
      width = 2,
      height = 2,
      type = "full"
    },
    energy_source = {
      type = "electric",
      buffer_capacity = "25MJ",
      input_flow_limit = "12MW",
      usage_priority = "secondary-input"
    },
    categories = {"android"},
	automatic = false,
    attack_parameters = {
      type = "projectile",
      cooldown = 60,
      range = 1,
      ammo_type = {
        type = "projectile",
        category = "electric",
		energy_consumption = "40kJ"
      }
    }
  },
  {
    type = "active-defense-equipment",
    name = "nullius-upgrade-mining-tool-1",
    take_result = "nullius-mining-tool-1",
    localised_description = {"",
	    {"equipment-description.nullius-bonus-mining", 80}, "\n",
	    {"equipment-description.nullius-energy",
		    {"entity-description.nullius-kilowatt", 3}}},
    order = "lcb",
    sprite = {
      filename = EQUIPPATH.."mining-tool-1.png",
      width = 128,
      height = 256,
      priority = "medium",
	  scale = 0.5
    },
    shape = {
      width = 1,
      height = 2,
      type = "full"
    },
    energy_source = {
      type = "electric",
      buffer_capacity = "100kJ",
      input_flow_limit = "10kW",
	  drain = "3kW",
      usage_priority = "primary-input"
    },
    categories = {"android"},
	automatic = false,
    attack_parameters = {
      type = "projectile",
      cooldown = 60,
      range = 1,
      ammo_type = {
        type = "projectile",
        category = "electric",
		energy_consumption = "4kJ"
      }
    }
  },
  {
    type = "active-defense-equipment",
    name = "nullius-upgrade-mining-tool-2",
    take_result = "nullius-mining-tool-2",
    localised_description = {"",
	    {"equipment-description.nullius-bonus-mining", 150}, "\n",
	    {"equipment-description.nullius-energy",
		    {"entity-description.nullius-kilowatt", 5}}},
    order = "lcc",
    sprite = {
      filename = EQUIPPATH.."mining-tool-2.png",
      width = 128,
      height = 256,
      priority = "medium",
	  scale = 0.5
    },
    shape = {
      width = 1,
      height = 2,
      type = "full"
    },
    energy_source = {
      type = "electric",
      buffer_capacity = "250kJ",
      input_flow_limit = "30kW",
	  drain = "5kW",
      usage_priority = "primary-input"
    },
    categories = {"android"},
	automatic = false,
    attack_parameters = {
      type = "projectile",
      cooldown = 60,
      range = 1,
      ammo_type = {
        type = "projectile",
        category = "electric",
		energy_consumption = "6kJ"
      }
    }
  },
  {
    type = "active-defense-equipment",
    name = "nullius-upgrade-multi-tool-1",
    take_result = "nullius-multi-tool-1",
	localised_description = {"equipment-description.nullius-buffer", {"",
			{"equipment-description.nullius-bonus-craft", 50, 20}, "\n",
			{"equipment-description.nullius-bonus-mining", 50}, "\n",
			{"equipment-description.nullius-energy",
				{"entity-description.nullius-kilowatt", 5}}},
		{"entity-description.nullius-megajoule", 5}},
    order = "lcb",
    sprite = {
      filename = EQUIPPATH.."multi-tool-1.png",
      width = 128,
      height = 384,
      priority = "medium",
	  scale = 0.5
    },
    shape = {
      width = 1,
      height = 3,
      type = "full"
    },
    energy_source = {
      type = "electric",
      buffer_capacity = "5MJ",
      input_flow_limit = "2MW",
	  drain = "5kW",
      usage_priority = "primary-input"
    },
    categories = {"android"},
	automatic = false,
    attack_parameters = {
      type = "projectile",
      cooldown = 60,
      range = 1,
      ammo_type = {
        type = "projectile",
        category = "electric",
		energy_consumption = "25kJ"
      }
    }
  },
  {
    type = "active-defense-equipment",
    name = "nullius-upgrade-multi-tool-2",
    take_result = "nullius-multi-tool-2",
	localised_description = {"equipment-description.nullius-buffer", {"",
			{"equipment-description.nullius-bonus-craft", 70, 25}, "\n",
			{"equipment-description.nullius-bonus-mining", 100}, "\n",
			{"equipment-description.nullius-energy",
				{"entity-description.nullius-kilowatt", 10}}},
		{"entity-description.nullius-megajoule", 12}},
    order = "lcc",
    sprite = {
      filename = EQUIPPATH.."multi-tool-2.png",
      width = 128,
      height = 384,
      priority = "medium",
	  scale = 0.5
    },
    shape = {
      width = 1,
      height = 3,
      type = "full"
    },
    energy_source = {
      type = "electric",
      buffer_capacity = "12MJ",
      input_flow_limit = "6MW",
	  drain = "10kW",
      usage_priority = "primary-input"
    },
    categories = {"android"},
	automatic = false,
    attack_parameters = {
      type = "projectile",
      cooldown = 60,
      range = 1,
      ammo_type = {
        type = "projectile",
        category = "electric",
		energy_consumption = "30kJ"
      }
    }
  },
  {
    type = "active-defense-equipment",
    name = "nullius-upgrade-multi-tool-3",
    take_result = "nullius-multi-tool-3",
	localised_description = {"equipment-description.nullius-buffer", {"",
			{"equipment-description.nullius-bonus-craft", 80, 25}, "\n",
			{"equipment-description.nullius-bonus-mining", 125}, "\n",
			{"equipment-description.nullius-bonus-reach", 2}, "\n",
			{"equipment-description.nullius-energy",
				{"entity-description.nullius-kilowatt", 15}}},
		{"entity-description.nullius-megajoule", 20}},
    order = "lcd",
    sprite = {
      filename = EQUIPPATH.."multi-tool-3.png",
      width = 128,
      height = 384,
      priority = "medium",
	  scale = 0.5
    },
    shape = {
      width = 1,
      height = 3,
      type = "full"
    },
    energy_source = {
      type = "electric",
      buffer_capacity = "20MJ",
      input_flow_limit = "12MW",
	  drain = "15kW",
      usage_priority = "primary-input"
    },
    categories = {"android"},
	automatic = false,
    attack_parameters = {
      type = "projectile",
      cooldown = 60,
      range = 2,
      ammo_type = {
        type = "projectile",
        category = "electric",
		energy_consumption = "30kJ"
      }
    }
  },

  {
    type = "active-defense-equipment",
    name = "nullius-upgrade-telekinesis-field-1",
    take_result = "nullius-telekinesis-field-1",
	localised_description = {"equipment-description.nullius-buffer", {"",
			{"equipment-description.nullius-bonus-reach", 8}, "\n",
			{"equipment-description.nullius-energy",
				{"entity-description.nullius-kilowatt", 15}}},
		{"entity-description.nullius-kilojoule", 400}},
    order = "mb",
    sprite = {
      filename = EQUIPPATH.."telekinesis-1.png",
      width = 240,
      height = 360,
      priority = "medium",
	  scale = 0.53333
    },
    shape = {
      width = 2,
      height = 3,
      type = "full"
    },
    energy_source = {
      type = "electric",
      buffer_capacity = "400kJ",
      input_flow_limit = "30kW",
	  drain = "15kW",
      usage_priority = "primary-input"
    },
    categories = {"android"},
	automatic = false,
    attack_parameters = {
      type = "projectile",
      cooldown = 60,
      range = 8,
      ammo_type = {
        type = "projectile",
        category = "electric",
		energy_consumption = "15kJ"
      }
    }
  },
  {
    type = "active-defense-equipment",
    name = "nullius-upgrade-telekinesis-field-2",
    take_result = "nullius-telekinesis-field-2",
	localised_description = {"equipment-description.nullius-buffer", {"",
			{"equipment-description.nullius-bonus-reach", 12}, "\n",
			{"equipment-description.nullius-bonus-mining", 50}, "\n",
			{"equipment-description.nullius-bonus-craft", 20, 12}, "\n",
			{"equipment-description.nullius-energy",
				{"entity-description.nullius-kilowatt", 25}}},
		{"entity-description.nullius-megajoule", 3}},
    order = "mc",
    sprite = {
      filename = EQUIPPATH.."telekinesis-2.png",
      width = 240,
      height = 360,
      priority = "medium",
	  scale = 0.53333
    },
    shape = {
      width = 2,
      height = 3,
      type = "full"
    },
    energy_source = {
      type = "electric",
      buffer_capacity = "3MJ",
      input_flow_limit = "1MW",
	  drain = "25kW",
      usage_priority = "primary-input"
    },
    categories = {"android"},
	automatic = false,
    attack_parameters = {
      type = "projectile",
      cooldown = 60,
      range = 12,
      ammo_type = {
        type = "projectile",
        category = "electric",
		energy_consumption = "25kJ"
      }
    }
  },
  {
    type = "active-defense-equipment",
    name = "nullius-upgrade-telekinesis-field-3",
    take_result = "nullius-telekinesis-field-3",
	localised_description = {"equipment-description.nullius-buffer", {"",
			{"equipment-description.nullius-bonus-reach", 16}, "\n",
			{"equipment-description.nullius-bonus-mining", 100}, "\n",
			{"equipment-description.nullius-bonus-craft", 40, 20}, "\n",
			{"equipment-description.nullius-energy",
				{"entity-description.nullius-kilowatt", 30}}},
		{"entity-description.nullius-megajoule", 8}},
    order = "md",
    sprite = {
      filename = EQUIPPATH.."telekinesis-3.png",
      width = 240,
      height = 360,
      priority = "medium",
	  scale = 0.53333
    },
    shape = {
      width = 2,
      height = 3,
      type = "full"
    },
    energy_source = {
      type = "electric",
      buffer_capacity = "8MJ",
      input_flow_limit = "4MW",
	  drain = "30kW",
      usage_priority = "primary-input"
    },
    categories = {"android"},
	automatic = false,
    attack_parameters = {
      type = "projectile",
      cooldown = 60,
      range = 16,
      ammo_type = {
        type = "projectile",
        category = "electric",
		energy_consumption = "30kJ"
      }
    }
  },
  {
    type = "active-defense-equipment",
    name = "nullius-upgrade-stabilizer-1",
    take_result = "nullius-stabilizer-1",
	localised_description = {"equipment-description.nullius-buffer", {"",
			{"equipment-description.nullius-bonus-speed", 7}, "\n",
			{"equipment-description.nullius-bonus-cargo", 2}, "\n",
			{"equipment-description.nullius-energy",
				{"entity-description.nullius-kilowatt", 30}}},
		{"entity-description.nullius-kilojoule", 700}},
    order = "nb",
    sprite = {
      filename = EQUIPPATH.."stabilizer-1.png",
      width = 256,
      height = 256,
      priority = "medium",
	  scale = 0.5
    },
    shape = {
      width = 2,
      height = 2,
      type = "full"
    },
    energy_source = {
      type = "electric",
      buffer_capacity = "700kJ",
      input_flow_limit = "100kW",
	  drain = "30kW",
      usage_priority = "primary-input"
    },
    categories = {"android"},
	automatic = false,
    attack_parameters = {
      type = "projectile",
      cooldown = 60,
      range = 1,
      ammo_type = {
        type = "projectile",
        category = "electric",
		energy_consumption = "30kJ"
      }
    }
  },
  {
    type = "active-defense-equipment",
    name = "nullius-upgrade-stabilizer-2",
    take_result = "nullius-stabilizer-2",
	localised_description = {"equipment-description.nullius-buffer", {"",
			{"equipment-description.nullius-bonus-speed", 10}, "\n",
			{"equipment-description.nullius-bonus-cargo", 3}, "\n",
			{"equipment-description.nullius-energy",
				{"entity-description.nullius-kilowatt", 40}}},
		{"entity-description.nullius-megajoule", 1}},
    order = "nc",
    sprite = {
      filename = EQUIPPATH.."stabilizer-2.png",
      width = 256,
      height = 256,
      priority = "medium",
	  scale = 0.5
    },
    shape = {
      width = 2,
      height = 2,
      type = "full"
    },
    energy_source = {
      type = "electric",
      buffer_capacity = "1MJ",
      input_flow_limit = "150kW",
	  drain = "40kW",
      usage_priority = "primary-input"
    },
    categories = {"android"},
	automatic = false,
    attack_parameters = {
      type = "projectile",
      cooldown = 60,
      range = 1,
      ammo_type = {
        type = "projectile",
        category = "electric",
		energy_consumption = "40kJ"
      }
    }
  },
  {
    type = "battery-equipment",
    name = "nullius-upgrade-shackle",
    take_result = "nullius-shackle",
    localised_description = {"equipment-description.nullius-penalty-speed", 25},
    order = "ns",
    sprite = {
      filename = EQUIPPATH.."shackle.png",
      width = 128,
      height = 128,
      priority = "medium",
	  scale = 0.5
    },
    shape = {
      width = 1,
      height = 1,
      type = "full"
    },
    energy_source = {
      type = "electric",
      usage_priority = "secondary-input"
    },
    categories = {"android"}
  },
  {
    type = "active-defense-equipment",
    name = "nullius-refueler",
    order = "or",
    sprite = {
      filename = EQUIPPATH.."refueler.png",
      width = 128,
      height = 128,
      priority = "medium",
	  scale = 0.5
    },
    shape = {
      width = 1,
      height = 1,
      type = "full"
    },
    energy_source = {
      type = "electric",
      buffer_capacity = "10kJ",
      input_flow_limit = "2kW",
	  drain = "1kW",
      usage_priority = "primary-input"
    },
    categories = {"cybernetic"},
	automatic = false,
    attack_parameters = {
      type = "projectile",
      cooldown = 60,
      range = 1,
      ammo_type = {
        type = "projectile",
        category = "electric",
		energy_consumption = "1kJ"
      }
    }
  },
  {
    type = "generator-equipment",
    name = "nullius-portable-generator-1",
    localised_name = {"", {"equipment-name.nullius-portable-generator"}, " ", 1},
    localised_description = {"equipment-description.nullius-portable-generator"},
    order = "obb",
    sprite = {
      filename = EQUIPPATH.."generator-1.png",
      width = 128,
      height = 128,
      priority = "medium"
    },
    shape = {
      width = 2,
      height = 2,
      type = "full"
    },
	power = "400kW",
    energy_source = {
      type = "burner",
      usage_priority = "secondary-output"
    },
    burner = {
      fuel_category = "vehicle",
      effectivity = 1,
      fuel_inventory_size = 2,
      burnt_inventory_size = 2
    },
    categories = {"cybernetic"}
  },
  {
    type = "generator-equipment",
    name = "nullius-portable-generator-2",
    localised_name = {"", {"equipment-name.nullius-portable-generator"}, " ", 2},
    localised_description = {"equipment-description.nullius-portable-generator"},
    order = "obc",
    sprite = {
      filename = EQUIPPATH.."generator-2.png",
      width = 256,
      height = 256,
      priority = "medium",
	  scale = 0.75
    },
    shape = {
      width = 3,
      height = 3,
      type = "full"
    },
	power = "1.5MW",
    energy_source = {
      type = "burner",
      usage_priority = "secondary-output"
    },
    burner = {
      fuel_category = "vehicle",
      effectivity = 1,
      fuel_inventory_size = 5,
      burnt_inventory_size = 5
    },
    categories = {"cybernetic"}
  },
  {
    type = "generator-equipment",
    name = "nullius-portable-generator-backup",
    order = "obd",
    sprite = {
      filename = EQUIPPATH.."generator-backup.png",
      width = 256,
      height = 256,
      priority = "medium",
	  scale = 0.75
    },
    shape = {
      width = 3,
      height = 3,
      type = "full"
    },
	power = "1.5MW",
    energy_source = {
      type = "burner",
      usage_priority = "tertiary"
    },
    burner = {
      fuel_category = "vehicle",
      effectivity = 1,
      fuel_inventory_size = 5,
      burnt_inventory_size = 5
    },
    categories = {"cybernetic"}
  },
  {
    type = "generator-equipment",
    name = "nullius-portable-reactor",
    order = "oc",
    sprite = {
      filename = EQUIPPATH.."reactor.png",
      width = 256,
      height = 256,
      priority = "medium"
    },
    shape = {
      width = 4,
      height = 4,
      type = "full"
    },
	power = "6MW",
    energy_source = {
      type = "burner",
      usage_priority = "secondary-output"
    },
    burner = {
      fuel_category = "nullius-nuclear",
      effectivity = 1,
      fuel_inventory_size = 3,
      burnt_inventory_size = 3
    },
    categories = {"cybernetic"}
  },

  {
    type = "active-defense-equipment",
    name = "nullius-upgrade-coprocessor-speed-1",
	take_result = "nullius-coprocessor-speed-1",
	localised_name = {"",
	    {"equipment-name.nullius-upgrade-coprocessor-speed"}, " ", 1},
	localised_description = {"", {"equipment-description.nullius-buffer", {"",
			{"equipment-description.nullius-coprocessor-speed", 20, 10, 5}, "\n",
			{"equipment-description.nullius-bonus-speed", 8}, "\n",
			{"equipment-description.nullius-energy",
				{"entity-description.nullius-kilowatt", 30}}},
		{"entity-description.nullius-megajoule", 3}}, "\n",
		{"equipment-description.nullius-coprocessor-tier-1"}},
    order = "lpbb",
    sprite = {
      filename = EQUIPPATH.."coprocessor/speed1.png",
      width = 64,
      height = 64,
      priority = "medium",
	  scale = 0.5
    },
    shape = {
      width = 1,
      height = 1,
      type = "full"
    },
    energy_source = {
      type = "electric",
	  buffer_capacity = "3MJ",
      input_flow_limit = "1MW",
	  drain = "30kW",
      usage_priority = "secondary-input"
    },
    categories = {"android"},
	automatic = false,
    attack_parameters = {
      type = "projectile",
      cooldown = 60,
      range = 1,
      ammo_type = {
        type = "projectile",
        category = "electric",
		energy_consumption = "10kJ"
      }
    }
  },
  {
    type = "active-defense-equipment",
    name = "nullius-upgrade-coprocessor-speed-2",
	take_result = "nullius-coprocessor-speed-2",
	localised_name = {"",
	    {"equipment-name.nullius-upgrade-coprocessor-speed"}, " ", 2},
	localised_description = {"", {"equipment-description.nullius-buffer", {"",
			{"equipment-description.nullius-coprocessor-speed", 30, 15, 10}, "\n",
			{"equipment-description.nullius-bonus-speed", 12}, "\n",
			{"equipment-description.nullius-energy",
				{"entity-description.nullius-kilowatt", 50}}},
		{"entity-description.nullius-megajoule", 10}}, "\n",
		{"equipment-description.nullius-coprocessor-tier-2"}},
    order = "lpbc",
    sprite = {
      filename = EQUIPPATH.."coprocessor/speed2.png",
      width = 64,
      height = 64,
      priority = "medium",
	  scale = 0.5
    },
    shape = {
      width = 1,
      height = 1,
      type = "full"
    },
    energy_source = {
      type = "electric",
	  buffer_capacity = "10MJ",
      input_flow_limit = "4MW",
	  drain = "50kW",
      usage_priority = "secondary-input"
    },
    categories = {"android"},
	automatic = false,
    attack_parameters = {
      type = "projectile",
      cooldown = 60,
      range = 1,
      ammo_type = {
        type = "projectile",
        category = "electric",
		energy_consumption = "10kJ"
      }
    }
  },
  {
    type = "active-defense-equipment",
    name = "nullius-upgrade-coprocessor-speed-3",
	take_result = "nullius-coprocessor-speed-3",
	localised_name = {"",
	    {"equipment-name.nullius-upgrade-coprocessor-speed"}, " ", 3},
	localised_description = {"", {"equipment-description.nullius-buffer", {"",
			{"equipment-description.nullius-coprocessor-speed", 50, 25, 20}, "\n",
			{"equipment-description.nullius-bonus-speed", 20}, "\n",
			{"equipment-description.nullius-energy",
				{"entity-description.nullius-kilowatt", 80}}},
		{"entity-description.nullius-megajoule", 20}}, "\n",
		{"equipment-description.nullius-coprocessor-tier-3"}},
    order = "lpbd",
    sprite = {
      filename = EQUIPPATH.."coprocessor/speed3.png",
      width = 64,
      height = 64,
      priority = "medium",
	  scale = 0.5
    },
    shape = {
      width = 1,
      height = 1,
      type = "full"
    },
    energy_source = {
      type = "electric",
      buffer_capacity = "20MJ",
      input_flow_limit = "10MW",
	  drain = "80kW",
      usage_priority = "secondary-input"
    },
    categories = {"android"},
	automatic = false,
    attack_parameters = {
      type = "projectile",
      cooldown = 60,
      range = 1,
      ammo_type = {
        type = "projectile",
        category = "electric",
		energy_consumption = "10kJ"
      }
    }
  },
  {
    type = "generator-equipment",
    name = "nullius-upgrade-coprocessor-efficiency-1",
	take_result = "nullius-coprocessor-efficiency-1",
	localised_name = {"",
	    {"equipment-name.nullius-upgrade-coprocessor-efficiency"}, " ", 1},
    localised_description = {"",
	    {"equipment-description.nullius-coprocessor-efficiency", 100, 20}, "\n",
		{"equipment-description.nullius-coprocessor-tier-1"}},
    order = "lpcb",
    sprite = {
      filename = EQUIPPATH.."coprocessor/efficiency1.png",
      width = 64,
      height = 64,
      priority = "medium",
	  scale = 0.5
    },
    shape = {
      width = 1,
      height = 1,
      type = "full"
    },
	energy_source = {
      type = "electric",
      usage_priority = "primary-output"
    },
	power = "100kW",
    categories = {"android"}
  },
  {
    type = "generator-equipment",
    name = "nullius-upgrade-coprocessor-efficiency-2",
	take_result = "nullius-coprocessor-efficiency-2",
	localised_name = {"",
	    {"equipment-name.nullius-upgrade-coprocessor-efficiency"}, " ", 2},
    localised_description = {"",
	    {"equipment-description.nullius-coprocessor-efficiency", 200, 30}, "\n",
		{"equipment-description.nullius-coprocessor-tier-2"}},
    order = "lpcc",
    sprite = {
      filename = EQUIPPATH.."coprocessor/efficiency2.png",
      width = 64,
      height = 64,
      priority = "medium",
	  scale = 0.5
    },
    shape = {
      width = 1,
      height = 1,
      type = "full"
    },
	energy_source = {
      type = "electric",
      usage_priority = "primary-output"
    },
	power = "200kW",
    categories = {"android"}
  },
  {
    type = "generator-equipment",
    name = "nullius-upgrade-coprocessor-efficiency-3",
	take_result = "nullius-coprocessor-efficiency-3",
	localised_name = {"",
	    {"equipment-name.nullius-upgrade-coprocessor-efficiency"}, " ", 3},
    localised_description = {"",
	    {"equipment-description.nullius-coprocessor-efficiency", 300, 40}, "\n",
		{"equipment-description.nullius-coprocessor-tier-3"}},
    order = "lpcd",
    sprite = {
      filename = EQUIPPATH.."coprocessor/efficiency3.png",
      width = 64,
      height = 64,
      priority = "medium",
	  scale = 0.5
    },
    shape = {
      width = 1,
      height = 1,
      type = "full"
    },
	energy_source = {
      type = "electric",
      usage_priority = "primary-output"
    },
	power = "300kW",
    categories = {"android"}
  },
  {
    type = "active-defense-equipment",
    name = "nullius-upgrade-coprocessor-productivity-1",
	take_result = "nullius-coprocessor-productivity-1",
	localised_name = {"",
	    {"equipment-name.nullius-upgrade-coprocessor-productivity"}, " ", 1},
	localised_description = {"", {"equipment-description.nullius-buffer", {"",
			{"equipment-description.nullius-coprocessor-productivity", 6, 10, 25, 20}, "\n",
			{"equipment-description.nullius-energy",
				{"entity-description.nullius-kilowatt", 20}}},
		{"entity-description.nullius-megajoule", 3}}, "\n",
		{"equipment-description.nullius-coprocessor-tier-1"}},
    order = "lpdb",
    sprite = {
      filename = EQUIPPATH.."coprocessor/productivity1.png",
      width = 64,
      height = 64,
      priority = "medium",
	  scale = 0.5
    },
    shape = {
      width = 1,
      height = 1,
      type = "full"
    },
    energy_source = {
      type = "electric",
      buffer_capacity = "3MJ",
      input_flow_limit = "1MW",
	  drain = "20kW",
      usage_priority = "secondary-input"
    },
    categories = {"android"},
	automatic = false,
    attack_parameters = {
      type = "projectile",
      cooldown = 60,
      range = 1,
      ammo_type = {
        type = "projectile",
        category = "electric",
		energy_consumption = "10kJ"
      }
    }
  },
  {
    type = "active-defense-equipment",
    name = "nullius-upgrade-coprocessor-productivity-2",
	take_result = "nullius-coprocessor-productivity-2",
	localised_name = {"",
	    {"equipment-name.nullius-upgrade-coprocessor-productivity"}, " ", 2},
	localised_description = {"", {"equipment-description.nullius-buffer", {"",
			{"equipment-description.nullius-coprocessor-productivity", 8, 15, 30, 30}, "\n",
			{"equipment-description.nullius-energy",
				{"entity-description.nullius-kilowatt", 40}}},
		{"entity-description.nullius-megajoule", 10}}, "\n",
		{"equipment-description.nullius-coprocessor-tier-2"}},
    order = "lpdc",
    sprite = {
      filename = EQUIPPATH.."coprocessor/productivity2.png",
      width = 64,
      height = 64,
      priority = "medium",
	  scale = 0.5
    },
    shape = {
      width = 1,
      height = 1,
      type = "full"
    },
    energy_source = {
      type = "electric",
      buffer_capacity = "10MJ",
      input_flow_limit = "4MW",
	  drain = "40kW",
      usage_priority = "secondary-input"
    },
    categories = {"android"},
	automatic = false,
    attack_parameters = {
      type = "projectile",
      cooldown = 60,
      range = 1,
      ammo_type = {
        type = "projectile",
        category = "electric",
		energy_consumption = "10kJ"
      }
    }
  },
  {
    type = "active-defense-equipment",
    name = "nullius-upgrade-coprocessor-productivity-3",
	take_result = "nullius-coprocessor-productivity-3",
	localised_name = {"",
	    {"equipment-name.nullius-upgrade-coprocessor-productivity"}, " ", 3},
	localised_description = {"", {"equipment-description.nullius-buffer", {"",
			{"equipment-description.nullius-coprocessor-productivity", 10, 15, 40, 50}, "\n",
			{"equipment-description.nullius-energy",
				{"entity-description.nullius-kilowatt", 60}}},
		{"entity-description.nullius-megajoule", 20}}, "\n",
		{"equipment-description.nullius-coprocessor-tier-3"}},
    order = "lpdd",
    sprite = {
      filename = EQUIPPATH.."coprocessor/productivity3.png",
      width = 64,
      height = 64,
      priority = "medium",
	  scale = 0.5
    },
    shape = {
      width = 1,
      height = 1,
      type = "full"
    },
    energy_source = {
      type = "electric",
      buffer_capacity = "20MJ",
      input_flow_limit = "10MW",
	  drain = "60kW",
      usage_priority = "secondary-input"
    },
    categories = {"android"},
	automatic = false,
    attack_parameters = {
      type = "projectile",
      cooldown = 60,
      range = 1,
      ammo_type = {
        type = "projectile",
        category = "electric",
		energy_consumption = "10kJ"
      }
    }
  },
  {
    type = "active-defense-equipment",
    name = "nullius-upgrade-coprocessor-quantum",
	take_result = "nullius-coprocessor-quantum",
    localised_description = {"",
	    {"equipment-description.nullius-coprocessor-quantum"}, "\n",
		{"equipment-description.nullius-energy",
		    {"entity-description.nullius-kilowatt", 25}}},
    order = "lpe",
    sprite = {
      filename = EQUIPPATH.."coprocessor/quantum.png",
      width = 64,
      height = 64,
      priority = "medium",
	  scale = 0.5
    },
    shape = {
      width = 1,
      height = 1,
      type = "full"
    },
    energy_source = {
      type = "electric",
      buffer_capacity = "500kJ",
      input_flow_limit = "50kW",
	  drain = "25kW",
      usage_priority = "primary-input"
    },
    categories = {"android"},
	automatic = false,
    attack_parameters = {
      type = "projectile",
      cooldown = 60,
      range = 1,
      ammo_type = {
        type = "projectile",
        category = "electric",
		energy_consumption = "10kJ"
      }
    }
  },

  {
    type = "active-defense-equipment",
    name = "nullius-deactivated-coprocessor-speed-1",
	take_result = "nullius-coprocessor-speed-1",
	localised_name = {"equipment-name.nullius-deactivated-coprocessor",
	    {"equipment-name.nullius-upgrade-coprocessor-speed"}, 1},
    localised_description = {"equipment-description.nullius-deactivated-coprocessor", 1},
    order = "lqbb",
    sprite = {
      filename = EQUIPPATH.."coprocessor/disabled.png",
      width = 64,
      height = 64,
      priority = "medium",
	  scale = 0.5
    },
    shape = {
      width = 1,
      height = 1,
      type = "full"
    },
    energy_source = {
      type = "electric",
      buffer_capacity = "10kJ",
      input_flow_limit = "5kW",
	  drain = "1kW",
      usage_priority = "secondary-input"
    },
    categories = {"android"},
	automatic = false,
    attack_parameters = {
      type = "projectile",
      cooldown = 60,
      range = 1,
      ammo_type = {
        type = "projectile",
        category = "electric",
		energy_consumption = "1kJ"
      }
    }
  },
  {
    type = "active-defense-equipment",
    name = "nullius-deactivated-coprocessor-speed-2",
	take_result = "nullius-coprocessor-speed-2",
	localised_name = {"equipment-name.nullius-deactivated-coprocessor",
	    {"equipment-name.nullius-upgrade-coprocessor-speed"}, 2},
    localised_description = {"equipment-description.nullius-deactivated-coprocessor", 2},
    order = "lqbc",
    sprite = {
      filename = EQUIPPATH.."coprocessor/disabled.png",
      width = 64,
      height = 64,
      priority = "medium",
	  scale = 0.5
    },
    shape = {
      width = 1,
      height = 1,
      type = "full"
    },
    energy_source = {
      type = "electric",
      buffer_capacity = "20kJ",
      input_flow_limit = "10kW",
	  drain = "2kW",
      usage_priority = "secondary-input"
    },
    categories = {"android"},
	automatic = false,
    attack_parameters = {
      type = "projectile",
      cooldown = 60,
      range = 1,
      ammo_type = {
        type = "projectile",
        category = "electric",
		energy_consumption = "2kJ"
      }
    }
  },
  {
    type = "active-defense-equipment",
    name = "nullius-deactivated-coprocessor-speed-3",
	take_result = "nullius-coprocessor-speed-3",
	localised_name = {"equipment-name.nullius-deactivated-coprocessor",
	    {"equipment-name.nullius-upgrade-coprocessor-speed"}, 3},
    localised_description = {"equipment-description.nullius-deactivated-coprocessor", 3},
    order = "lqbd",
    sprite = {
      filename = EQUIPPATH.."coprocessor/disabled.png",
      width = 64,
      height = 64,
      priority = "medium",
	  scale = 0.5
    },
    shape = {
      width = 1,
      height = 1,
      type = "full"
    },
    energy_source = {
      type = "electric",
      buffer_capacity = "30kJ",
      input_flow_limit = "15kW",
	  drain = "3kW",
      usage_priority = "secondary-input"
    },
    categories = {"android"},
	automatic = false,
    attack_parameters = {
      type = "projectile",
      cooldown = 60,
      range = 1,
      ammo_type = {
        type = "projectile",
        category = "electric",
		energy_consumption = "3kJ"
      }
    }
  },
  {
    type = "active-defense-equipment",
    name = "nullius-deactivated-coprocessor-efficiency-1",
	take_result = "nullius-coprocessor-efficiency-1",
	localised_name = {"equipment-name.nullius-deactivated-coprocessor",
	    {"equipment-name.nullius-upgrade-coprocessor-efficiency"}, 1},
    localised_description = {"equipment-description.nullius-deactivated-coprocessor", 1},
    order = "lqcb",
    sprite = {
      filename = EQUIPPATH.."coprocessor/disabled.png",
      width = 64,
      height = 64,
      priority = "medium",
	  scale = 0.5
    },
    shape = {
      width = 1,
      height = 1,
      type = "full"
    },
    energy_source = {
      type = "electric",
      buffer_capacity = "10kJ",
      input_flow_limit = "5kW",
	  drain = "1kW",
      usage_priority = "secondary-input"
    },
    categories = {"android"},
	automatic = false,
    attack_parameters = {
      type = "projectile",
      cooldown = 60,
      range = 1,
      ammo_type = {
        type = "projectile",
        category = "electric",
		energy_consumption = "1kJ"
      }
    }
  },
  {
    type = "active-defense-equipment",
    name = "nullius-deactivated-coprocessor-efficiency-2",
	take_result = "nullius-coprocessor-efficiency-2",
	localised_name = {"equipment-name.nullius-deactivated-coprocessor",
	    {"equipment-name.nullius-upgrade-coprocessor-efficiency"}, 2},
    localised_description = {"equipment-description.nullius-deactivated-coprocessor", 2},
    order = "lqcc",
    sprite = {
      filename = EQUIPPATH.."coprocessor/disabled.png",
      width = 64,
      height = 64,
      priority = "medium",
	  scale = 0.5
    },
    shape = {
      width = 1,
      height = 1,
      type = "full"
    },
    energy_source = {
      type = "electric",
      buffer_capacity = "20kJ",
      input_flow_limit = "10kW",
	  drain = "2kW",
      usage_priority = "secondary-input"
    },
    categories = {"android"},
	automatic = false,
    attack_parameters = {
      type = "projectile",
      cooldown = 60,
      range = 1,
      ammo_type = {
        type = "projectile",
        category = "electric",
		energy_consumption = "2kJ"
      }
    }
  },
  {
    type = "active-defense-equipment",
    name = "nullius-deactivated-coprocessor-efficiency-3",
	take_result = "nullius-coprocessor-efficiency-3",
	localised_name = {"equipment-name.nullius-deactivated-coprocessor",
	    {"equipment-name.nullius-upgrade-coprocessor-efficiency"}, 3},
    localised_description = {"equipment-description.nullius-deactivated-coprocessor", 3},
    order = "lqcd",
    sprite = {
      filename = EQUIPPATH.."coprocessor/disabled.png",
      width = 64,
      height = 64,
      priority = "medium",
	  scale = 0.5
    },
    shape = {
      width = 1,
      height = 1,
      type = "full"
    },
    energy_source = {
      type = "electric",
      buffer_capacity = "30kJ",
      input_flow_limit = "15kW",
	  drain = "3kW",
      usage_priority = "secondary-input"
    },
    categories = {"android"},
	automatic = false,
    attack_parameters = {
      type = "projectile",
      cooldown = 60,
      range = 1,
      ammo_type = {
        type = "projectile",
        category = "electric",
		energy_consumption = "3kJ"
      }
    }
  },
  {
    type = "active-defense-equipment",
    name = "nullius-deactivated-coprocessor-productivity-1",
	take_result = "nullius-coprocessor-productivity-1",
	localised_name = {"equipment-name.nullius-deactivated-coprocessor",
	    {"equipment-name.nullius-upgrade-coprocessor-productivity"}, 1},
    localised_description = {"equipment-description.nullius-deactivated-coprocessor", 1},
    order = "lqdb",
    sprite = {
      filename = EQUIPPATH.."coprocessor/disabled.png",
      width = 64,
      height = 64,
      priority = "medium",
	  scale = 0.5
    },
    shape = {
      width = 1,
      height = 1,
      type = "full"
    },
    energy_source = {
      type = "electric",
      buffer_capacity = "10kJ",
      input_flow_limit = "5kW",
	  drain = "1kW",
      usage_priority = "secondary-input"
    },
    categories = {"android"},
	automatic = false,
    attack_parameters = {
      type = "projectile",
      cooldown = 60,
      range = 1,
      ammo_type = {
        type = "projectile",
        category = "electric",
		energy_consumption = "1kJ"
      }
    }
  },
  {
    type = "active-defense-equipment",
    name = "nullius-deactivated-coprocessor-productivity-2",
	take_result = "nullius-coprocessor-productivity-2",
	localised_name = {"equipment-name.nullius-deactivated-coprocessor",
	    {"equipment-name.nullius-upgrade-coprocessor-productivity"}, 2},
    localised_description = {"equipment-description.nullius-deactivated-coprocessor", 2},
    order = "lqdc",
    sprite = {
      filename = EQUIPPATH.."coprocessor/disabled.png",
      width = 64,
      height = 64,
      priority = "medium",
	  scale = 0.5
    },
    shape = {
      width = 1,
      height = 1,
      type = "full"
    },
    energy_source = {
      type = "electric",
      buffer_capacity = "20kJ",
      input_flow_limit = "10kW",
	  drain = "2kW",
      usage_priority = "secondary-input"
    },
    categories = {"android"},
	automatic = false,
    attack_parameters = {
      type = "projectile",
      cooldown = 60,
      range = 1,
      ammo_type = {
        type = "projectile",
        category = "electric",
		energy_consumption = "2kJ"
      }
    }
  },
  {
    type = "active-defense-equipment",
    name = "nullius-deactivated-coprocessor-productivity-3",
	take_result = "nullius-coprocessor-productivity-3",
	localised_name = {"equipment-name.nullius-deactivated-coprocessor",
	    {"equipment-name.nullius-upgrade-coprocessor-productivity"}, 3},
    localised_description = {"equipment-description.nullius-deactivated-coprocessor", 3},
    order = "lqdd",
    sprite = {
      filename = EQUIPPATH.."coprocessor/disabled.png",
      width = 64,
      height = 64,
      priority = "medium",
	  scale = 0.5
    },
    shape = {
      width = 1,
      height = 1,
      type = "full"
    },
    energy_source = {
      type = "electric",
      buffer_capacity = "30kJ",
      input_flow_limit = "15kW",
	  drain = "3kW",
      usage_priority = "secondary-input"
    },
    categories = {"android"},
	automatic = false,
    attack_parameters = {
      type = "projectile",
      cooldown = 60,
      range = 1,
      ammo_type = {
        type = "projectile",
        category = "electric",
		energy_consumption = "3kJ"
      }
    }
  },

})