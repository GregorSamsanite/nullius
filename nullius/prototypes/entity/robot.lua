local ICONPATH = "__nullius__/graphics/icons/"
local ENTITYPATH = "__nullius__/graphics/entity/"

circuit_connector_definitions["nullius-hangar-4"] =
    circuit_connector_definitions.create(
  universal_connector_template,
  {{
    variation = 26,
	main_offset = util.by_pixel(6, 20),
	shadow_offset = util.by_pixel(7, 36)
  }}
)
circuit_connector_definitions["nullius-relay"] =
    circuit_connector_definitions.create(
  universal_connector_template,
  {{
	variation = 26,
	main_offset = util.by_pixel(-1, 1),
	shadow_offset = util.by_pixel(0, 6)
  }}
)


data:extend({
  {
    type = "construction-robot",
    name = "nullius-construction-bot-1",
	localised_description = {"equipment-description.nullius-buffer",
	    {"entity-description.construction-robot"},
		{"entity-description.nullius-kilojoule", 800}},
    icons = data.raw.item["nullius-construction-bot-1"].icons,
    flags = {"placeable-player", "player-creation", "placeable-off-grid", "not-on-map"},
    minable = {mining_time = 0.1, result = "nullius-construction-bot-1"},
    max_health = 100,
    collision_box = {{0, 0}, {0, 0}},
    selection_box = {{-0.5, -1.5}, {0.5, -0.5}},
    hit_visualization_box = {{-0.1, -1.1}, {0.1, -1.0}},
    damaged_trigger_effect = data.raw["construction-robot"]["construction-robot"].damaged_trigger_effect,
    dying_explosion = "construction-robot-explosion",
    max_payload_size = 1,
    speed = 0.11574074074,
    energy_per_tick = "0.0833333kJ",
    energy_per_move = "3.6kJ",
    max_energy = "800kJ",
    speed_multiplier_when_out_of_energy = 0.2,
    min_to_charge = 0.2,
    max_to_charge = 0.95,
    working_light = {intensity = 0.8, size = 3, color = {r = 0.8, g = 0.8, b = 0.8}},
    smoke = data.raw["construction-robot"]["construction-robot"].smoke,
    sparks = data.raw["construction-robot"]["construction-robot"].sparks,
    repairing_sound = data.raw["construction-robot"]["construction-robot"].repairing_sound,
    working_sound = data.raw["construction-robot"]["construction-robot"].working_sound,
    water_reflection = data.raw["construction-robot"]["construction-robot"].water_reflection,
    cargo_centered = {0.0, 0.2},
    construction_vector = {0.30, 0.22},
    idle = data.raw["construction-robot"]["construction-robot"].idle,
    idle_with_cargo = data.raw["construction-robot"]["construction-robot"].idle_with_cargo,
    in_motion = data.raw["construction-robot"]["construction-robot"].in_motion,
    in_motion_with_cargo = data.raw["construction-robot"]["construction-robot"].in_motion_with_cargo,
    shadow_idle = data.raw["construction-robot"]["construction-robot"].shadow_idle,
    shadow_idle_with_cargo = data.raw["construction-robot"]["construction-robot"].shadow_idle_with_cargo,
    shadow_in_motion = data.raw["construction-robot"]["construction-robot"].shadow_in_motion,
    shadow_in_motion_with_cargo = data.raw["construction-robot"]["construction-robot"].shadow_in_motion_with_cargo,
    working = data.raw["construction-robot"]["construction-robot"].working,
    shadow_working = data.raw["construction-robot"]["construction-robot"].shadow_working
  },

  {
    type = "construction-robot",
    name = "nullius-construction-bot-2",
	localised_description = {"equipment-description.nullius-buffer",
	    {"entity-description.construction-robot"},
		{"entity-description.nullius-megajoule", 3}},
    icons = data.raw.item["nullius-construction-bot-2"].icons,
    flags = {"placeable-player", "player-creation", "placeable-off-grid", "not-on-map"},
    minable = {mining_time = 0.1, result = "nullius-construction-bot-2"},
    max_health = 200,
    collision_box = {{0, 0}, {0, 0}},
    selection_box = {{-0.5, -1.5}, {0.5, -0.5}},
    hit_visualization_box = {{-0.1, -1.1}, {0.1, -1.0}},
    damaged_trigger_effect = data.raw["construction-robot"]["construction-robot"].damaged_trigger_effect,
    dying_explosion = "construction-robot-explosion",
    max_payload_size = 2,
    speed = 0.185185185,
    energy_per_tick = "0.1666667kJ",
    energy_per_move = "2.7kJ",
    max_energy = "3MJ",
    speed_multiplier_when_out_of_energy = 0.2,
    min_to_charge = 0.2,
    max_to_charge = 0.95,
    working_light = {intensity = 0.8, size = 3, color = {r = 0.8, g = 0.8, b = 0.8}},
    smoke = data.raw["construction-robot"]["construction-robot"].smoke,
    sparks = data.raw["construction-robot"]["construction-robot"].sparks,
    repairing_sound = data.raw["construction-robot"]["construction-robot"].repairing_sound,
    working_sound = data.raw["construction-robot"]["construction-robot"].working_sound,
    water_reflection = data.raw["construction-robot"]["construction-robot"].water_reflection,
    cargo_centered = {0.0, 0.2},
    construction_vector = {0.30, 0.22},
    idle = data.raw["construction-robot"]["bob-construction-robot-2"].idle,
    idle_with_cargo = data.raw["construction-robot"]["bob-construction-robot-2"].idle_with_cargo,
    in_motion = data.raw["construction-robot"]["bob-construction-robot-2"].in_motion,
    in_motion_with_cargo = data.raw["construction-robot"]["bob-construction-robot-2"].in_motion_with_cargo,
    shadow_idle = data.raw["construction-robot"]["bob-construction-robot-2"].shadow_idle,
    shadow_idle_with_cargo = data.raw["construction-robot"]["bob-construction-robot-2"].shadow_idle_with_cargo,
    shadow_in_motion = data.raw["construction-robot"]["bob-construction-robot-2"].shadow_in_motion,
    shadow_in_motion_with_cargo = data.raw["construction-robot"]["bob-construction-robot-2"].shadow_in_motion_with_cargo,
    working = data.raw["construction-robot"]["bob-construction-robot-2"].working,
    shadow_working = data.raw["construction-robot"]["bob-construction-robot-2"].shadow_working
  },

  {
    type = "construction-robot",
    name = "nullius-construction-bot-3",
	localised_description = {"equipment-description.nullius-buffer",
	    {"entity-description.construction-robot"},
		{"entity-description.nullius-megajoule", 8}},
    icons = data.raw.item["nullius-construction-bot-3"].icons,
    flags = {"placeable-player", "player-creation", "placeable-off-grid", "not-on-map"},
    minable = {mining_time = 0.1, result = "nullius-construction-bot-3"},
    max_health = 300,
    collision_box = {{0, 0}, {0, 0}},
    selection_box = {{-0.5, -1.5}, {0.5, -0.5}},
    hit_visualization_box = {{-0.1, -1.1}, {0.1, -1.0}},
    damaged_trigger_effect = data.raw["construction-robot"]["construction-robot"].damaged_trigger_effect,
    dying_explosion = "construction-robot-explosion",
    max_payload_size = 3,
	speed = 0.2777777778,
    energy_per_tick = "0.25kJ",
    energy_per_move = "2.4kJ",
    max_energy = "8MJ",
    speed_multiplier_when_out_of_energy = 0.2,
    min_to_charge = 0.2,
    max_to_charge = 0.95,
    working_light = {intensity = 0.8, size = 3, color = {r = 0.8, g = 0.8, b = 0.8}},
    smoke = data.raw["construction-robot"]["construction-robot"].smoke,
    sparks = data.raw["construction-robot"]["construction-robot"].sparks,
    repairing_sound = data.raw["construction-robot"]["construction-robot"].repairing_sound,
    working_sound = data.raw["construction-robot"]["construction-robot"].working_sound,
    water_reflection = data.raw["construction-robot"]["construction-robot"].water_reflection,
    cargo_centered = {0.0, 0.2},
    construction_vector = {0.30, 0.22},
    idle = data.raw["construction-robot"]["bob-construction-robot-3"].idle,
    idle_with_cargo = data.raw["construction-robot"]["bob-construction-robot-3"].idle_with_cargo,
    in_motion = data.raw["construction-robot"]["bob-construction-robot-3"].in_motion,
    in_motion_with_cargo = data.raw["construction-robot"]["bob-construction-robot-3"].in_motion_with_cargo,
    shadow_idle = data.raw["construction-robot"]["bob-construction-robot-3"].shadow_idle,
    shadow_idle_with_cargo = data.raw["construction-robot"]["bob-construction-robot-3"].shadow_idle_with_cargo,
    shadow_in_motion = data.raw["construction-robot"]["bob-construction-robot-3"].shadow_in_motion,
    shadow_in_motion_with_cargo = data.raw["construction-robot"]["bob-construction-robot-3"].shadow_in_motion_with_cargo,
    working = data.raw["construction-robot"]["bob-construction-robot-3"].working,
    shadow_working = data.raw["construction-robot"]["bob-construction-robot-3"].shadow_working
  },

  {
    type = "construction-robot",
    name = "nullius-construction-bot-4",
	localised_description = {"equipment-description.nullius-buffer",
	    {"entity-description.construction-robot"},
		{"entity-description.nullius-megajoule", 15}},
    icons = data.raw.item["nullius-construction-bot-4"].icons,
    flags = {"placeable-player", "player-creation", "placeable-off-grid", "not-on-map"},
    minable = {mining_time = 0.1, result = "nullius-construction-bot-4"},
    max_health = 400,
    collision_box = {{0, 0}, {0, 0}},
    selection_box = {{-0.5, -1.5}, {0.5, -0.5}},
    hit_visualization_box = {{-0.1, -1.1}, {0.1, -1.0}},
    damaged_trigger_effect = data.raw["construction-robot"]["construction-robot"].damaged_trigger_effect,
    dying_explosion = "construction-robot-explosion",
    max_payload_size = 4,
	speed = 0.34722222222222,
    energy_per_tick = "0.333333333333kJ",
    energy_per_move = "2.16kJ",
    max_energy = "15MJ",
    speed_multiplier_when_out_of_energy = 0.2,
    min_to_charge = 0.2,
    max_to_charge = 0.95,
    working_light = {intensity = 0.8, size = 3, color = {r = 0.8, g = 0.8, b = 0.8}},
    smoke = data.raw["construction-robot"]["construction-robot"].smoke,
    sparks = data.raw["construction-robot"]["construction-robot"].sparks,
    repairing_sound = data.raw["construction-robot"]["construction-robot"].repairing_sound,
    working_sound = data.raw["construction-robot"]["construction-robot"].working_sound,
    water_reflection = data.raw["construction-robot"]["construction-robot"].water_reflection,
    cargo_centered = {0.0, 0.2},
    construction_vector = {0.30, 0.22},
    idle = data.raw["construction-robot"]["bob-construction-robot-5"].idle,
    idle_with_cargo = data.raw["construction-robot"]["bob-construction-robot-5"].idle_with_cargo,
    in_motion = data.raw["construction-robot"]["bob-construction-robot-5"].in_motion,
    in_motion_with_cargo = data.raw["construction-robot"]["bob-construction-robot-5"].in_motion_with_cargo,
    shadow_idle = data.raw["construction-robot"]["bob-construction-robot-5"].shadow_idle,
    shadow_idle_with_cargo = data.raw["construction-robot"]["bob-construction-robot-5"].shadow_idle_with_cargo,
    shadow_in_motion = data.raw["construction-robot"]["bob-construction-robot-5"].shadow_in_motion,
    shadow_in_motion_with_cargo = data.raw["construction-robot"]["bob-construction-robot-5"].shadow_in_motion_with_cargo,
    working = data.raw["construction-robot"]["bob-construction-robot-5"].working,
    shadow_working = data.raw["construction-robot"]["bob-construction-robot-5"].shadow_working
  },

  {
    type = "logistic-robot",
    name = "nullius-logistic-bot-1",
	localised_description = {"equipment-description.nullius-buffer",
	    {"entity-description.logistic-robot"},
		{"entity-description.nullius-megajoule", 1.2}},
    icons = data.raw.item["nullius-logistic-bot-1"].icons,
    flags = {"placeable-player", "player-creation", "placeable-off-grid", "not-on-map"},
    minable = {mining_time = 0.1, result = "nullius-logistic-bot-1"},
    max_health = 100,
    collision_box = {{0, 0}, {0, 0}},
    selection_box = {{-0.5, -1.5}, {0.5, -0.5}},
    hit_visualization_box = {{-0.1, -1.1}, {0.1, -1.0}},
    damaged_trigger_effect = data.raw["logistic-robot"]["logistic-robot"].damaged_trigger_effect,
    dying_explosion = "logistic-robot-explosion",
    max_payload_size = 1,
    speed = 0.0555555,
    max_energy = "1.2MJ",
    energy_per_tick = "0.133333333kJ",
    speed_multiplier_when_out_of_energy = 0.2,
    energy_per_move = "7.2kJ",
    min_to_charge = 0.3,
    max_to_charge = 0.9,
    working_sound = data.raw["logistic-robot"]["logistic-robot"].working_sound,
    water_reflection = data.raw["logistic-robot"]["logistic-robot"].water_reflection,
    cargo_centered = {0.0, 0.2},
    idle = data.raw["logistic-robot"]["logistic-robot"].idle,
    idle_with_cargo = data.raw["logistic-robot"]["logistic-robot"].idle_with_cargo,
    in_motion = data.raw["logistic-robot"]["logistic-robot"].in_motion,
    in_motion_with_cargo = data.raw["logistic-robot"]["logistic-robot"].in_motion_with_cargo,
    shadow_idle = data.raw["logistic-robot"]["logistic-robot"].shadow_idle,
    shadow_idle_with_cargo = data.raw["logistic-robot"]["logistic-robot"].shadow_idle_with_cargo,
    shadow_in_motion = data.raw["logistic-robot"]["logistic-robot"].shadow_in_motion,
    shadow_in_motion_with_cargo = data.raw["logistic-robot"]["logistic-robot"].shadow_in_motion_with_cargo
  },

  {
    type = "logistic-robot",
    name = "nullius-logistic-bot-2",
	localised_description = {"equipment-description.nullius-buffer",
	    {"entity-description.logistic-robot"},
		{"entity-description.nullius-megajoule", 2.5}},
    icons = data.raw.item["nullius-logistic-bot-2"].icons,
    flags = {"placeable-player", "player-creation", "placeable-off-grid", "not-on-map"},
    minable = {mining_time = 0.1, result = "nullius-logistic-bot-2"},
    max_health = 150,
    collision_box = {{0, 0}, {0, 0}},
    selection_box = {{-0.5, -1.5}, {0.5, -0.5}},
    hit_visualization_box = {{-0.1, -1.1}, {0.1, -1.0}},
    damaged_trigger_effect = data.raw["logistic-robot"]["logistic-robot"].damaged_trigger_effect,
    dying_explosion = "logistic-robot-explosion",
    max_payload_size = 2,
    speed = 0.0925926,
    max_energy = "2.5MJ",
    energy_per_tick = "0.266666666kJ",
    speed_multiplier_when_out_of_energy = 0.2,
    energy_per_move = "5.76kJ",
    min_to_charge = 0.25,
    max_to_charge = 0.95,
    working_sound = data.raw["logistic-robot"]["logistic-robot"].working_sound,
    water_reflection = data.raw["logistic-robot"]["logistic-robot"].water_reflection,
    cargo_centered = {0.0, 0.2},
    idle = data.raw["logistic-robot"]["bob-logistic-robot-2"].idle,
    idle_with_cargo = data.raw["logistic-robot"]["bob-logistic-robot-2"].idle_with_cargo,
    in_motion = data.raw["logistic-robot"]["bob-logistic-robot-2"].in_motion,
    in_motion_with_cargo = data.raw["logistic-robot"]["bob-logistic-robot-2"].in_motion_with_cargo,
    shadow_idle = data.raw["logistic-robot"]["bob-logistic-robot-2"].shadow_idle,
    shadow_idle_with_cargo = data.raw["logistic-robot"]["bob-logistic-robot-2"].shadow_idle_with_cargo,
    shadow_in_motion = data.raw["logistic-robot"]["bob-logistic-robot-2"].shadow_in_motion,
    shadow_in_motion_with_cargo = data.raw["logistic-robot"]["bob-logistic-robot-2"].shadow_in_motion_with_cargo
  },

  {
    type = "logistic-robot",
    name = "nullius-logistic-bot-3",
	localised_description = {"equipment-description.nullius-buffer",
	    {"entity-description.logistic-robot"},
		{"entity-description.nullius-megajoule", 6}},
    icons = data.raw.item["nullius-logistic-bot-3"].icons,
    flags = {"placeable-player", "player-creation", "placeable-off-grid", "not-on-map"},
    minable = {mining_time = 0.1, result = "nullius-logistic-bot-3"},
    max_health = 200,
    collision_box = {{0, 0}, {0, 0}},
    selection_box = {{-0.5, -1.5}, {0.5, -0.5}},
    hit_visualization_box = {{-0.1, -1.1}, {0.1, -1.0}},
    damaged_trigger_effect = data.raw["logistic-robot"]["logistic-robot"].damaged_trigger_effect,
    dying_explosion = "logistic-robot-explosion",
    max_payload_size = 4,
    speed = 0.1388889,
    max_energy = "6MJ",
    energy_per_tick = "0.4kJ",
    speed_multiplier_when_out_of_energy = 0.2,
    energy_per_move = "4.8kJ",
    min_to_charge = 0.2,
    max_to_charge = 0.95,
    working_sound = data.raw["logistic-robot"]["logistic-robot"].working_sound,
    water_reflection = data.raw["logistic-robot"]["logistic-robot"].water_reflection,
    cargo_centered = {0.0, 0.2},
    idle = data.raw["logistic-robot"]["bob-logistic-robot-3"].idle,
    idle_with_cargo = data.raw["logistic-robot"]["bob-logistic-robot-3"].idle_with_cargo,
    in_motion = data.raw["logistic-robot"]["bob-logistic-robot-3"].in_motion,
    in_motion_with_cargo = data.raw["logistic-robot"]["bob-logistic-robot-3"].in_motion_with_cargo,
    shadow_idle = data.raw["logistic-robot"]["bob-logistic-robot-3"].shadow_idle,
    shadow_idle_with_cargo = data.raw["logistic-robot"]["bob-logistic-robot-3"].shadow_idle_with_cargo,
    shadow_in_motion = data.raw["logistic-robot"]["bob-logistic-robot-3"].shadow_in_motion,
    shadow_in_motion_with_cargo = data.raw["logistic-robot"]["bob-logistic-robot-3"].shadow_in_motion_with_cargo
  },

  {
    type = "logistic-robot",
    name = "nullius-logistic-bot-4",
	localised_description = {"equipment-description.nullius-buffer",
	    {"entity-description.logistic-robot"},
		{"entity-description.nullius-megajoule", 12}},
    icons = data.raw.item["nullius-logistic-bot-4"].icons,
    flags = {"placeable-player", "player-creation", "placeable-off-grid", "not-on-map"},
    minable = {mining_time = 0.1, result = "nullius-logistic-bot-4"},
    max_health = 250,
    collision_box = {{0, 0}, {0, 0}},
    selection_box = {{-0.5, -1.5}, {0.5, -0.5}},
    hit_visualization_box = {{-0.1, -1.1}, {0.1, -1.0}},
    damaged_trigger_effect = data.raw["logistic-robot"]["logistic-robot"].damaged_trigger_effect,
    dying_explosion = "logistic-robot-explosion",
    max_payload_size = 6,
    speed = 0.185185185,
    max_energy = "12MJ",
    energy_per_tick = "0.66666666kJ",
    speed_multiplier_when_out_of_energy = 0.2,
    energy_per_move = "3.6kJ",
    min_to_charge = 0.2,
    max_to_charge = 0.95,
    working_sound = data.raw["logistic-robot"]["logistic-robot"].working_sound,
    water_reflection = data.raw["logistic-robot"]["logistic-robot"].water_reflection,
    cargo_centered = {0.0, 0.2},
    idle = data.raw["logistic-robot"]["bob-logistic-robot-5"].idle,
    idle_with_cargo = data.raw["logistic-robot"]["bob-logistic-robot-5"].idle_with_cargo,
    in_motion = data.raw["logistic-robot"]["bob-logistic-robot-5"].in_motion,
    in_motion_with_cargo = data.raw["logistic-robot"]["bob-logistic-robot-5"].in_motion_with_cargo,
    shadow_idle = data.raw["logistic-robot"]["bob-logistic-robot-5"].shadow_idle,
    shadow_idle_with_cargo = data.raw["logistic-robot"]["bob-logistic-robot-5"].shadow_idle_with_cargo,
    shadow_in_motion = data.raw["logistic-robot"]["bob-logistic-robot-5"].shadow_in_motion,
    shadow_in_motion_with_cargo = data.raw["logistic-robot"]["bob-logistic-robot-5"].shadow_in_motion_with_cargo
  },

  {
    type = "roboport",
    name = "nullius-hangar-1",
    localised_name = {"equipment-name.nullius-hangar-1"},
    localised_description = {"equipment-description.nullius-buffer",
	    {"equipment-description.nullius-hangar"},
		{"entity-description.nullius-megajoule", 20}},
    icons = data.raw.item["nullius-hangar-1"].icons,
    flags = {"placeable-player", "player-creation"},
    minable = {mining_time = 0.8, result = "nullius-hangar-1"},
    fast_replaceable_group = "nullius-hangar",
    next_upgrade = "nullius-hangar-2",
    max_health = 400,
    corpse = "roboport-remnants",
    dying_explosion = "roboport-explosion",
    collision_box = {{-1.2, -1.2}, {1.2, 1.2}},
    selection_box = {{-1.5, -1.5}, {1.5, 1.5}},
    damaged_trigger_effect = data.raw["roboport"]["roboport"].damaged_trigger_effect,
    resistances = {{ type = "impact", decrease = 50, percent = 80 }},
    energy_source = {
      type = "electric",
      usage_priority = "secondary-input",
      input_flow_limit = "2.5MW",
      buffer_capacity = "20MJ"
    },
    recharge_minimum = "5MJ",
    energy_usage = "200kW",
    -- per one charge slot
    charging_energy = "450kW",
    logistics_radius = 16.5,
    construction_radius = 36.5,
    charge_approach_distance = 4,
    robot_slots_count = 2,
    material_slots_count = 2,
    stationing_offset = {0, 0},
    charging_offsets = {
      {-1.2, -0.4}, {1.2, -0.4}, {1.2, 1.2}, {-1.2, 1.2}
    },

    recharging_animation = data.raw["roboport"]["roboport"].recharging_animation,
    vehicle_impact_sound = data.raw["roboport"]["roboport"].vehicle_impact_sound,
    open_sound = data.raw["roboport"]["roboport"].open_sound,
    close_sound = data.raw["roboport"]["roboport"].close_sound,
    working_sound = data.raw["roboport"]["roboport"].working_sound,
    recharging_light = {intensity = 0.3, size = 4, color = {r = 1.0, g = 1.0, b = 1.0}},
    request_to_open_door_timeout = 15,
    spawn_and_station_height = -0.1,
    draw_logistic_radius_visualization = true,
    draw_construction_radius_visualization = true,
    open_door_trigger_effect = data.raw["roboport"]["roboport"].open_door_trigger_effect,
    close_door_trigger_effect = data.raw["roboport"]["roboport"].close_door_trigger_effect,
    water_reflection = data.raw["roboport"]["roboport"].water_reflection,
    circuit_wire_connection_point = circuit_connector_definitions["roboport"].points,
    circuit_connector_sprites = circuit_connector_definitions["roboport"].sprites,
    circuit_wire_max_distance = default_circuit_wire_max_distance,
    default_available_logistic_output_signal = {type = "virtual", name = "signal-X"},
    default_total_logistic_output_signal = {type = "virtual", name = "signal-Y"},
    default_available_construction_output_signal = {type = "virtual", name = "signal-Z"},
    default_total_construction_output_signal = {type = "virtual", name = "signal-T"},

    base = {
      layers = {
        {
          filename = "__boblogistics__/graphics/entity/roboport/roboport-base-1.png",
          width = 143,
          height = 135,
          shift = {0.5*0.75, 0.25*0.75},
          scale = 0.75,
          hr_version = {
            filename = "__boblogistics__/graphics/entity/roboport/hr-roboport-base-1.png",
            width = 228,
            height = 277,
            shift = util.by_pixel(2*0.75, 7.75*0.75),
            scale = 0.5*0.75
          }
        },
        {
          filename = "__boblogistics__/graphics/entity/roboport/hr-roboport-shadow.png",
          width = 294,
          height = 201,
          draw_as_shadow = true,
          force_hr_shadow = true,
          shift = util.by_pixel(28.5*0.75, 19.25*0.75),
          scale = 0.5*0.75
        }
      }
    },
    base_patch = {
      filename = "__boblogistics__/graphics/entity/roboport/roboport-base-patch-1.png",
      priority = "medium",
      width = 69,
      height = 50,
      frame_count = 1,
      shift = {0.03125*0.75, 0.203125*0.75},
      scale = 0.75,
      hr_version = {
        filename = "__boblogistics__/graphics/entity/roboport/hr-roboport-base-patch-1.png",
        priority = "medium",
        width = 138,
        height = 100,
        frame_count = 1,
        shift = util.by_pixel(1.5*0.75, 5*0.75),
        scale = 0.5*0.75
      }
    },
    base_animation = {
      filename = "__boblogistics__/graphics/entity/roboport/roboport-base-animation.png",
      priority = "medium",
      width = 42,
      height = 31,
      frame_count = 8,
      animation_speed = 0.5,
      shift = {-0.5315*0.75, -1.9375*0.75},
      scale = 0.75,
      hr_version = {
        filename = "__boblogistics__/graphics/entity/roboport/hr-roboport-base-animation.png",
        priority = "medium",
        width = 83,
        height = 59,
        frame_count = 8,
        animation_speed = 0.5,
        shift = util.by_pixel(-17.75*0.75, -61.25*0.75),
        scale = 0.5*0.75
      }
    },
    door_animation_up = {
      filename = "__boblogistics__/graphics/entity/roboport/roboport-door-up.png",
      priority = "medium",
      width = 52,
      height = 20,
      frame_count = 16,
      shift = {0.015625*0.75, -0.890625*0.75},
      scale = 0.75,
      hr_version = {
        filename = "__boblogistics__/graphics/entity/roboport/hr-roboport-door-up.png",
        priority = "medium",
        width = 97,
        height = 38,
        frame_count = 16,
        shift = util.by_pixel(-0.25*0.75, -29.5*0.75),
        scale = 0.5*0.75
      }
    },
    door_animation_down = {
      filename = "__boblogistics__/graphics/entity/roboport/roboport-door-down.png",
      priority = "medium",
      width = 52,
      height = 22,
      frame_count = 16,
      shift = {0.015625*0.75, -0.234375*0.75},
      scale = 0.75,
      hr_version = {
        filename = "__boblogistics__/graphics/entity/roboport/hr-roboport-door-down.png",
        priority = "medium",
        width = 97,
        height = 41,
        frame_count = 16,
        shift = util.by_pixel(-0.25*0.75,-9.75*0.75),
        scale = 0.5*0.75
      }
    }
  },

  {
    type = "roboport",
    name = "nullius-hangar-2",
    localised_name = {"equipment-name.nullius-hangar-2"},
	localised_description = {"equipment-description.nullius-buffer",
	    {"equipment-description.nullius-hangar"},
		{"entity-description.nullius-megajoule", 50}},
    icons = data.raw.item["nullius-hangar-2"].icons,
    flags = {"placeable-player", "player-creation"},
    minable = {mining_time = 1.2, result = "nullius-hangar-2"},
    fast_replaceable_group = "nullius-hangar",
    next_upgrade = "nullius-hangar-3",
    max_health = 500,
    corpse = "roboport-remnants",
    dying_explosion = "roboport-explosion",
    collision_box = {{-1.2, -1.2}, {1.2, 1.2}},
    selection_box = {{-1.5, -1.5}, {1.5, 1.5}},
    damaged_trigger_effect = data.raw["roboport"]["roboport"].damaged_trigger_effect,
    resistances = {{ type = "impact", decrease = 50, percent = 80 }},
    energy_source = {
      type = "electric",
      usage_priority = "secondary-input",
      input_flow_limit = "6MW",
      buffer_capacity = "50MJ"
    },
    recharge_minimum = "10MJ",
    energy_usage = "300kW",
    -- per one charge slot
    charging_energy = "1.2MW",
    logistics_radius = 24.5,
    construction_radius = 54.5,
    charge_approach_distance = 4,
    robot_slots_count = 3,
    material_slots_count = 3,
    stationing_offset = {0, 0},
    charging_offsets = {
      {-1.2, -0.4}, {1.2, -0.4}, {1.2, 1.2}, {-1.2, 1.2}
    },

    recharging_animation = data.raw["roboport"]["roboport"].recharging_animation,
    vehicle_impact_sound = data.raw["roboport"]["roboport"].vehicle_impact_sound,
    open_sound = data.raw["roboport"]["roboport"].open_sound,
    close_sound = data.raw["roboport"]["roboport"].close_sound,
    working_sound = data.raw["roboport"]["roboport"].working_sound,
    recharging_light = {intensity = 0.4, size = 5, color = {r = 1.0, g = 1.0, b = 1.0}},
    request_to_open_door_timeout = 15,
    spawn_and_station_height = -0.1,
    draw_logistic_radius_visualization = true,
    draw_construction_radius_visualization = true,
    open_door_trigger_effect = data.raw["roboport"]["roboport"].open_door_trigger_effect,
    close_door_trigger_effect = data.raw["roboport"]["roboport"].close_door_trigger_effect,
    water_reflection = data.raw["roboport"]["roboport"].water_reflection,
    circuit_wire_connection_point = circuit_connector_definitions["roboport"].points,
    circuit_connector_sprites = circuit_connector_definitions["roboport"].sprites,
    circuit_wire_max_distance = default_circuit_wire_max_distance,
    default_available_logistic_output_signal = {type = "virtual", name = "signal-X"},
    default_total_logistic_output_signal = {type = "virtual", name = "signal-Y"},
    default_available_construction_output_signal = {type = "virtual", name = "signal-Z"},
    default_total_construction_output_signal = {type = "virtual", name = "signal-T"},

    base = {
      layers = {
        {
          filename = "__boblogistics__/graphics/entity/roboport/roboport-base-2.png",
          width = 143,
          height = 135,
          shift = {0.5*0.75, 0.25*0.75},
          scale = 0.75,
          hr_version = {
            filename = "__boblogistics__/graphics/entity/roboport/hr-roboport-base-2.png",
            width = 228,
            height = 277,
            shift = util.by_pixel(2*0.75, 7.75*0.75),
            scale = 0.5*0.75
          }
        },
        {
          filename = "__boblogistics__/graphics/entity/roboport/hr-roboport-shadow.png",
          width = 294,
          height = 201,
          draw_as_shadow = true,
          force_hr_shadow = true,
          shift = util.by_pixel(28.5*0.75, 19.25*0.75),
          scale = 0.5*0.75
        }
      }
    },
    base_patch = {
      filename = "__boblogistics__/graphics/entity/roboport/roboport-base-patch-2.png",
      priority = "medium",
      width = 69,
      height = 50,
      frame_count = 1,
      shift = {0.03125*0.75, 0.203125*0.75},
      scale = 0.75,
      hr_version = {
        filename = "__boblogistics__/graphics/entity/roboport/hr-roboport-base-patch-2.png",
        priority = "medium",
        width = 138,
        height = 100,
        frame_count = 1,
        shift = util.by_pixel(1.5*0.75, 5*0.75),
        scale = 0.5*0.75
      }
    },
    base_animation = {
      filename = "__boblogistics__/graphics/entity/roboport/roboport-base-animation-2.png",
      priority = "medium",
      width = 42,
      height = 31,
      frame_count = 8,
      animation_speed = 0.5,
      shift = {-0.5315*0.75, -1.9375*0.75},
      scale = 0.75,
      hr_version = {
        filename = "__boblogistics__/graphics/entity/roboport/hr-roboport-base-animation-2.png",
        priority = "medium",
        width = 83,
        height = 59,
        frame_count = 8,
        animation_speed = 0.5,
        shift = util.by_pixel(-17.75*0.75, -61.25*0.75),
        scale = 0.5*0.75
      }
    },
    door_animation_up = {
      filename = "__boblogistics__/graphics/entity/roboport/roboport-door-up-2.png",
      priority = "medium",
      width = 52,
      height = 20,
      frame_count = 16,
      shift = {0.015625*0.75, -0.890625*0.75},
      scale = 0.75,
      hr_version = {
        filename = "__boblogistics__/graphics/entity/roboport/hr-roboport-door-up-2.png",
        priority = "medium",
        width = 97,
        height = 38,
        frame_count = 16,
        shift = util.by_pixel(-0.25*0.75, -29.5*0.75),
        scale = 0.5*0.75
      }
    },
    door_animation_down = {
      filename = "__boblogistics__/graphics/entity/roboport/roboport-door-down-2.png",
      priority = "medium",
      width = 52,
      height = 22,
      frame_count = 16,
      shift = {0.015625*0.75, -0.234375*0.75},
      scale = 0.75,
      hr_version = {
        filename = "__boblogistics__/graphics/entity/roboport/hr-roboport-door-down-2.png",
        priority = "medium",
        width = 97,
        height = 41,
        frame_count = 16,
        shift = util.by_pixel(-0.25*0.75,-9.75*0.75),
        scale = 0.5*0.75
      }
    }
  },

  {
    type = "roboport",
    name = "nullius-hangar-3",
    localised_name = {"equipment-name.nullius-hangar-3"},
	localised_description = {"equipment-description.nullius-buffer",
	    {"equipment-description.nullius-hangar"},
		{"entity-description.nullius-megajoule", 150}},
    icons = data.raw.item["nullius-hangar-3"].icons,
    flags = {"placeable-player", "player-creation"},
    minable = {mining_time = 1.6, result = "nullius-hangar-3"},
    fast_replaceable_group = "nullius-hangar",
    max_health = 600,
    corpse = "roboport-remnants",
    dying_explosion = "roboport-explosion",
    collision_box = {{-1.2, -1.2}, {1.2, 1.2}},
    selection_box = {{-1.5, -1.5}, {1.5, 1.5}},
    damaged_trigger_effect = data.raw["roboport"]["roboport"].damaged_trigger_effect,
    resistances = {{ type = "impact", decrease = 50, percent = 80 }},
    energy_source = {
      type = "electric",
      usage_priority = "secondary-input",
      input_flow_limit = "16MW",
      buffer_capacity = "150MJ"
    },
    recharge_minimum = "30MJ",
    energy_usage = "500kW",
    -- per one charge slot
    charging_energy = "3MW",
    logistics_radius = 32.5,
    construction_radius = 72.5,
    charge_approach_distance = 4,
    robot_slots_count = 5,
    material_slots_count = 5,
    stationing_offset = {0, 0},
    charging_offsets = {
      {-1.2, -0.4}, {1.2, -0.4}, {1.2, 1.2}, {-1.2, 1.2}
    },

    recharging_animation = data.raw["roboport"]["roboport"].recharging_animation,
    vehicle_impact_sound = data.raw["roboport"]["roboport"].vehicle_impact_sound,
    open_sound = data.raw["roboport"]["roboport"].open_sound,
    close_sound = data.raw["roboport"]["roboport"].close_sound,
    working_sound = data.raw["roboport"]["roboport"].working_sound,
    recharging_light = {intensity = 0.5, size = 6, color = {r = 1.0, g = 1.0, b = 1.0}},
    request_to_open_door_timeout = 15,
    spawn_and_station_height = -0.1,
    draw_logistic_radius_visualization = true,
    draw_construction_radius_visualization = true,
    open_door_trigger_effect = data.raw["roboport"]["roboport"].open_door_trigger_effect,
    close_door_trigger_effect = data.raw["roboport"]["roboport"].close_door_trigger_effect,
    water_reflection = data.raw["roboport"]["roboport"].water_reflection,
    circuit_wire_connection_point = circuit_connector_definitions["roboport"].points,
    circuit_connector_sprites = circuit_connector_definitions["roboport"].sprites,
    circuit_wire_max_distance = default_circuit_wire_max_distance,
    default_available_logistic_output_signal = {type = "virtual", name = "signal-X"},
    default_total_logistic_output_signal = {type = "virtual", name = "signal-Y"},
    default_available_construction_output_signal = {type = "virtual", name = "signal-Z"},
    default_total_construction_output_signal = {type = "virtual", name = "signal-T"},

    base = {
      layers = {
        {
          filename = "__boblogistics__/graphics/entity/roboport/roboport-base-4.png",
          width = 143,
          height = 135,
          shift = {0.5*0.75, 0.25*0.75},
          scale = 0.75,
          hr_version = {
            filename = "__boblogistics__/graphics/entity/roboport/hr-roboport-base-4.png",
            width = 228,
            height = 277,
            shift = util.by_pixel(2*0.75, 7.75*0.75),
            scale = 0.5*0.75
          }
        },
        {
          filename = "__boblogistics__/graphics/entity/roboport/hr-roboport-shadow.png",
          width = 294,
          height = 201,
          draw_as_shadow = true,
          force_hr_shadow = true,
          shift = util.by_pixel(28.5*0.75, 19.25*0.75),
          scale = 0.5*0.75
        }
      }
    },
    base_patch = {
      filename = "__boblogistics__/graphics/entity/roboport/roboport-base-patch-4.png",
      priority = "medium",
      width = 69,
      height = 50,
      frame_count = 1,
      shift = {0.03125*0.75, 0.203125*0.75},
      scale = 0.75,
      hr_version = {
        filename = "__boblogistics__/graphics/entity/roboport/hr-roboport-base-patch-4.png",
        priority = "medium",
        width = 138,
        height = 100,
        frame_count = 1,
        shift = util.by_pixel(1.5*0.75, 5*0.75),
        scale = 0.5*0.75
      }
    },
    base_animation = {
      filename = "__boblogistics__/graphics/entity/roboport/roboport-base-animation-4.png",
      priority = "medium",
      width = 42,
      height = 31,
      frame_count = 8,
      animation_speed = 0.5,
      shift = {-0.5315*0.75, -1.9375*0.75},
      scale = 0.75,
      hr_version = {
        filename = "__boblogistics__/graphics/entity/roboport/hr-roboport-base-animation-4.png",
        priority = "medium",
        width = 83,
        height = 59,
        frame_count = 8,
        animation_speed = 0.5,
        shift = util.by_pixel(-17.75*0.75, -61.25*0.75),
        scale = 0.5*0.75
      }
    },
    door_animation_up = {
      filename = "__boblogistics__/graphics/entity/roboport/roboport-door-up-4.png",
      priority = "medium",
      width = 52,
      height = 20,
      frame_count = 16,
      shift = {0.015625*0.75, -0.890625*0.75},
      scale = 0.75,
      hr_version = {
        filename = "__boblogistics__/graphics/entity/roboport/hr-roboport-door-up-4.png",
        priority = "medium",
        width = 97,
        height = 38,
        frame_count = 16,
        shift = util.by_pixel(-0.25*0.75, -29.5*0.75),
        scale = 0.5*0.75
      }
    },
    door_animation_down = {
      filename = "__boblogistics__/graphics/entity/roboport/roboport-door-down-4.png",
      priority = "medium",
      width = 52,
      height = 22,
      frame_count = 16,
      shift = {0.015625*0.75, -0.234375*0.75},
      scale = 0.75,
      hr_version = {
        filename = "__boblogistics__/graphics/entity/roboport/hr-roboport-door-down-4.png",
        priority = "medium",
        width = 97,
        height = 41,
        frame_count = 16,
        shift = util.by_pixel(-0.25*0.75,-9.75*0.75),
        scale = 0.5*0.75
      }
    }
  },

  {
    type = "roboport",
    name = "nullius-hangar-4",
    localised_name = {"equipment-name.nullius-hangar-4"},
	localised_description = {"equipment-description.nullius-buffer",
	    {"equipment-description.nullius-hangar"},
		{"entity-description.nullius-megajoule", 150}},
    icons = data.raw.item["nullius-hangar-4"].icons,
    flags = {"placeable-player", "player-creation"},
    minable = {mining_time = 1.5, result = "nullius-hangar-4"},
    fast_replaceable_group = "nullius-charger",
    max_health = 600,
    corpse = "roboport-remnants",
    dying_explosion = "roboport-explosion",
    collision_box = {{-0.7, -0.7}, {0.7, 0.7}},
    selection_box = {{-1, -1}, {1, 1}},
    damaged_trigger_effect = data.raw["roboport"]["roboport"].damaged_trigger_effect,
    resistances = {{ type = "impact", decrease = 50, percent = 80 }},
    energy_source = {
      type = "electric",
      usage_priority = "secondary-input",
      input_flow_limit = "16MW",
      buffer_capacity = "150MJ"
    },
    recharge_minimum = "30MJ",
    energy_usage = "400kW",
    -- per one charge slot
    charging_energy = "3MW",
    logistics_radius = 33,
    construction_radius = 73,
    charge_approach_distance = 4,
    robot_slots_count = 5,
    material_slots_count = 5,
    stationing_offset = {0, 0},
    charging_offsets = {
      {-0.9, -0.3}, {0.9, -0.3}, {0.9, 0.9}, {-0.9, 0.9}
    },

    recharging_animation = data.raw["roboport"]["roboport"].recharging_animation,
    vehicle_impact_sound = data.raw["roboport"]["roboport"].vehicle_impact_sound,
    open_sound = data.raw["roboport"]["roboport"].open_sound,
    close_sound = data.raw["roboport"]["roboport"].close_sound,
    working_sound = data.raw["roboport"]["roboport"].working_sound,
    recharging_light = {intensity = 0.5, size = 6, color = {r = 1.0, g = 1.0, b = 1.0}},
    request_to_open_door_timeout = 15,
    spawn_and_station_height = -0.1,
    draw_logistic_radius_visualization = true,
    draw_construction_radius_visualization = true,
    open_door_trigger_effect = data.raw["roboport"]["roboport"].open_door_trigger_effect,
    close_door_trigger_effect = data.raw["roboport"]["roboport"].close_door_trigger_effect,
    water_reflection = data.raw["roboport"]["roboport"].water_reflection,
    circuit_wire_connection_point = circuit_connector_definitions["nullius-hangar-4"].points,
    circuit_connector_sprites = circuit_connector_definitions["nullius-hangar-4"].sprites,
    circuit_wire_max_distance = default_circuit_wire_max_distance,
    default_available_logistic_output_signal = {type = "virtual", name = "signal-X"},
    default_total_logistic_output_signal = {type = "virtual", name = "signal-Y"},
    default_available_construction_output_signal = {type = "virtual", name = "signal-Z"},
    default_total_construction_output_signal = {type = "virtual", name = "signal-T"},

    base = {
      layers = {
        {
          filename = "__boblogistics__/graphics/entity/roboport/roboport-base-4.png",
          width = 143,
          height = 135,
          shift = {0.5*0.5, 0.25*0.5},
          scale = 0.5,
          hr_version = {
            filename = "__boblogistics__/graphics/entity/roboport/hr-roboport-base-4.png",
            width = 228,
            height = 277,
            shift = util.by_pixel(2*0.5, 7.75*0.5),
            scale = 0.5*0.5
          }
        },
        {
          filename = "__boblogistics__/graphics/entity/roboport/hr-roboport-shadow.png",
          width = 294,
          height = 201,
          draw_as_shadow = true,
          force_hr_shadow = true,
          shift = util.by_pixel(28.5*0.5, 19.25*0.5),
          scale = 0.5*0.5
        }
      }
    },
    base_patch = {
      filename = "__boblogistics__/graphics/entity/roboport/roboport-base-patch-4.png",
      priority = "medium",
      width = 69,
      height = 50,
      frame_count = 1,
      shift = {0.03125*0.5, 0.203125*0.5},
      scale = 0.5,
      hr_version = {
        filename = "__boblogistics__/graphics/entity/roboport/hr-roboport-base-patch-4.png",
        priority = "medium",
        width = 138,
        height = 100,
        frame_count = 1,
        shift = util.by_pixel(1.5*0.5, 5*0.5),
        scale = 0.5*0.5
      }
    },
    base_animation = {
      filename = "__boblogistics__/graphics/entity/roboport/roboport-base-animation-4.png",
      priority = "medium",
      width = 42,
      height = 31,
      frame_count = 8,
      animation_speed = 0.5,
      shift = {-0.5315*0.5, -1.9375*0.5},
      scale = 0.5,
      hr_version = {
        filename = "__boblogistics__/graphics/entity/roboport/hr-roboport-base-animation-4.png",
        priority = "medium",
        width = 83,
        height = 59,
        frame_count = 8,
        animation_speed = 0.5,
        shift = util.by_pixel(-17.75*0.5, -61.25*0.5),
        scale = 0.5*0.5
      }
    },
    door_animation_up = {
      filename = "__boblogistics__/graphics/entity/roboport/roboport-door-up-4.png",
      priority = "medium",
      width = 52,
      height = 20,
      frame_count = 16,
      shift = {0.015625*0.5, -0.890625*0.5},
      scale = 0.5,
      hr_version = {
        filename = "__boblogistics__/graphics/entity/roboport/hr-roboport-door-up-4.png",
        priority = "medium",
        width = 97,
        height = 38,
        frame_count = 16,
        shift = util.by_pixel(-0.25*0.5, -29.5*0.5),
        scale = 0.5*0.5
      }
    },
    door_animation_down = {
      filename = "__boblogistics__/graphics/entity/roboport/roboport-door-down-4.png",
      priority = "medium",
      width = 52,
      height = 22,
      frame_count = 16,
      shift = {0.015625*0.5, -0.234375*0.5},
      scale = 0.5,
      hr_version = {
        filename = "__boblogistics__/graphics/entity/roboport/hr-roboport-door-down-4.png",
        priority = "medium",
        width = 97,
        height = 41,
        frame_count = 16,
        shift = util.by_pixel(-0.25*0.5,-9.75*0.5),
        scale = 0.5*0.5
      }
    }
  },

  {
    type = "roboport",
    name = "nullius-relay-1",
    localised_name = {"equipment-name.nullius-relay-1"},
	localised_description = {"equipment-description.nullius-buffer",
	    {"equipment-description.nullius-relay"},
		{"entity-description.nullius-megajoule", 6}},
    icons = data.raw.item["nullius-relay-1"].icons,
    flags = {"placeable-player", "player-creation"},
    minable = {mining_time = 0.4, result = "nullius-relay-1"},
    fast_replaceable_group = "nullius-relay",
    next_upgrade = "nullius-relay-2",
    max_health = 100,
    corpse = "small-remnants",
    collision_box = {{-0.2, -0.2}, {0.2, 0.2}},
    selection_box = {{-0.5, -0.5}, {0.5, 0.5}},
    dying_explosion = "medium-explosion",
    energy_source = {
      type = "electric",
      usage_priority = "secondary-input",
      input_flow_limit = "500kW",
      buffer_capacity = "6MJ"
    },
    recharge_minimum = "1kJ",
    energy_usage = "12kW",
    -- per one charge slot
    charging_energy = "1kW",
    logistics_radius = 16.5,
    construction_radius = 36.5,
    charge_approach_distance = 1,
    robot_slots_count = 0,
    material_slots_count = 0,
    -- stationing_offset = {0, 0},
    -- charging_offsets = {{0, -1.7}},
    recharging_light = {intensity = 0.4, size = 5},
    request_to_open_door_timeout = 15,
    spawn_and_station_height = 1.75,
    draw_logistic_radius_visualization = true,
    draw_construction_radius_visualization = true,
    recharging_animation = data.raw["roboport"]["roboport"].recharging_animation,
    base_patch = data.raw["roboport"]["bob-logistic-zone-expander"].base_patch,
    door_animation_up = data.raw["roboport"]["bob-logistic-zone-expander"].door_animation_up,
    door_animation_down = data.raw["roboport"]["bob-logistic-zone-expander"].door_animation_down,
	circuit_wire_connection_point = circuit_connector_definitions["nullius-relay"].points,
    circuit_connector_sprites = circuit_connector_definitions["nullius-relay"].sprites,
    circuit_wire_max_distance = default_circuit_wire_max_distance,

    base = {
      filename = "__boblogistics__/graphics/entity/roboport/logistic-zone-expander.png",
      width = 136,
      height = 132,
      shift = {1*0.6, -0.55*0.6},
      scale = 0.6
    },
    base_animation = {
      filename = "__boblogistics__/graphics/entity/roboport/hr-roboport-base-animation.png",
      priority = "medium",
      width = 83,
      height = 59,
      frame_count = 8,
      animation_speed = 0.5,
      shift = {0, -1.9875*0.6},
      scale = 0.5*0.6
    }
  },

  {
    type = "roboport",
    name = "nullius-relay-2",
    localised_name = {"equipment-name.nullius-relay-2"},
	localised_description = {"equipment-description.nullius-buffer",
	    {"equipment-description.nullius-relay"},
		{"entity-description.nullius-megajoule", 15}},
    icons = data.raw.item["nullius-relay-2"].icons,
    flags = {"placeable-player", "player-creation"},
    minable = {mining_time = 0.6, result = "nullius-relay-2"},
    fast_replaceable_group = "nullius-relay",
    next_upgrade = "nullius-relay-3",
    max_health = 150,
    corpse = "small-remnants",
    collision_box = {{-0.2, -0.2}, {0.2, 0.2}},
    selection_box = {{-0.5, -0.5}, {0.5, 0.5}},
    dying_explosion = "medium-explosion",
    energy_source = {
      type = "electric",
      usage_priority = "secondary-input",
      input_flow_limit = "1MW",
      buffer_capacity = "15MJ"
    },
    recharge_minimum = "1kJ",
    energy_usage = "20kW",
    -- per one charge slot
    charging_energy = "1kW",
    logistics_radius = 24.5,
    construction_radius = 54.5,
    charge_approach_distance = 1,
    robot_slots_count = 0,
    material_slots_count = 0,
    -- stationing_offset = {0, 0},
    -- charging_offsets = {{0, -1.7}},
    recharging_light = {intensity = 0.4, size = 5},
    request_to_open_door_timeout = 15,
    spawn_and_station_height = 1.75,
    draw_logistic_radius_visualization = true,
    draw_construction_radius_visualization = true,
    recharging_animation = data.raw["roboport"]["roboport"].recharging_animation,
    base_patch = data.raw["roboport"]["bob-logistic-zone-expander"].base_patch,
    door_animation_up = data.raw["roboport"]["bob-logistic-zone-expander"].door_animation_up,
    door_animation_down = data.raw["roboport"]["bob-logistic-zone-expander"].door_animation_down,
	circuit_wire_connection_point = circuit_connector_definitions["nullius-relay"].points,
    circuit_connector_sprites = circuit_connector_definitions["nullius-relay"].sprites,
    circuit_wire_max_distance = default_circuit_wire_max_distance,

    base = {
      filename = "__boblogistics__/graphics/entity/roboport/logistic-zone-expander-2.png",
      width = 136,
      height = 132,
      shift = {1*0.6, -0.55*0.6},
      scale = 0.6
    },
    base_animation = {
      filename = "__boblogistics__/graphics/entity/roboport/hr-roboport-base-animation-2.png",
      priority = "medium",
      width = 83,
      height = 59,
      frame_count = 8,
      animation_speed = 0.5,
      shift = {0, -1.9875*0.6},
      scale = 0.5*0.6
    }
  },

  {
    type = "roboport",
    name = "nullius-relay-3",
    localised_name = {"equipment-name.nullius-relay-3"},
	localised_description = {"equipment-description.nullius-buffer",
	    {"equipment-description.nullius-relay"},
		{"entity-description.nullius-megajoule", 40}},
    icons = data.raw.item["nullius-relay-3"].icons,
    flags = {"placeable-player", "player-creation"},
    minable = {mining_time = 0.8, result = "nullius-relay-3"},
    fast_replaceable_group = "nullius-relay",
    next_upgrade = "nullius-relay-4",
    max_health = 100,
    corpse = "small-remnants",
    collision_box = {{-0.2, -0.2}, {0.2, 0.2}},
    selection_box = {{-0.5, -0.5}, {0.5, 0.5}},
    dying_explosion = "medium-explosion",
    energy_source = {
      type = "electric",
      usage_priority = "secondary-input",
      input_flow_limit = "2MW",
      buffer_capacity = "40MJ"
    },
    recharge_minimum = "1kJ",
    energy_usage = "30kW",
    -- per one charge slot
    charging_energy = "1kW",
    logistics_radius = 32.5,
    construction_radius = 72.5,
    charge_approach_distance = 1,
    robot_slots_count = 0,
    material_slots_count = 0,
    -- stationing_offset = {0, 0},
    -- charging_offsets = {{0, -1.7}},
    recharging_light = {intensity = 0.4, size = 5},
    request_to_open_door_timeout = 15,
    spawn_and_station_height = 1.75,
    draw_logistic_radius_visualization = true,
    draw_construction_radius_visualization = true,
    recharging_animation = data.raw["roboport"]["roboport"].recharging_animation,
    base_patch = data.raw["roboport"]["bob-logistic-zone-expander"].base_patch,
    door_animation_up = data.raw["roboport"]["bob-logistic-zone-expander"].door_animation_up,
    door_animation_down = data.raw["roboport"]["bob-logistic-zone-expander"].door_animation_down,
	circuit_wire_connection_point = circuit_connector_definitions["nullius-relay"].points,
    circuit_connector_sprites = circuit_connector_definitions["nullius-relay"].sprites,
    circuit_wire_max_distance = default_circuit_wire_max_distance,

    base = {
      filename = "__boblogistics__/graphics/entity/roboport/logistic-zone-expander-4.png",
      width = 136,
      height = 132,
      shift = {1*0.6, -0.55*0.6},
      scale = 0.6
    },
    base_animation = {
      filename = "__boblogistics__/graphics/entity/roboport/hr-roboport-base-animation-4.png",
      priority = "medium",
      width = 83,
      height = 59,
      frame_count = 8,
      animation_speed = 0.5,
      shift = {0, -1.9875*0.6},
      scale = 0.5*0.6
    }
  },

  {
    type = "roboport",
    name = "nullius-relay-4",
    localised_name = {"equipment-name.nullius-relay-4"},
	localised_description = {"equipment-description.nullius-buffer",
	    {"equipment-description.nullius-relay"},
		{"entity-description.nullius-megajoule", 100}},
    icons = data.raw.item["nullius-relay-4"].icons,
    flags = {"placeable-player", "player-creation"},
    minable = {mining_time = 1, result = "nullius-relay-4"},
    fast_replaceable_group = "nullius-relay",
    max_health = 100,
    corpse = "small-remnants",
    collision_box = {{-0.2, -0.2}, {0.2, 0.2}},
    selection_box = {{-0.5, -0.5}, {0.5, 0.5}},
    dying_explosion = "medium-explosion",
    energy_source = {
      type = "electric",
      usage_priority = "secondary-input",
      input_flow_limit = "4MW",
      buffer_capacity = "100MJ"
    },
    recharge_minimum = "1kJ",
    energy_usage = "50kW",
    -- per one charge slot
    charging_energy = "1kW",
    logistics_radius = 48.5,
    construction_radius = 104.5,
    charge_approach_distance = 1,
    robot_slots_count = 0,
    material_slots_count = 0,
    -- stationing_offset = {0, 0},
    -- charging_offsets = {{0, -1.7}},
    recharging_light = {intensity = 0.4, size = 5},
    request_to_open_door_timeout = 15,
    spawn_and_station_height = 1.75,
    draw_logistic_radius_visualization = true,
    draw_construction_radius_visualization = true,
    recharging_animation = data.raw["roboport"]["roboport"].recharging_animation,
    base_patch = data.raw["roboport"]["bob-logistic-zone-expander"].base_patch,
    door_animation_up = data.raw["roboport"]["bob-logistic-zone-expander"].door_animation_up,
    door_animation_down = data.raw["roboport"]["bob-logistic-zone-expander"].door_animation_down,
	circuit_wire_connection_point = circuit_connector_definitions["nullius-relay"].points,
    circuit_connector_sprites = circuit_connector_definitions["nullius-relay"].sprites,
    circuit_wire_max_distance = default_circuit_wire_max_distance,

    base = {
      filename = "__boblogistics__/graphics/entity/roboport/logistic-zone-expander-3.png",
      width = 136,
      height = 132,
      shift = {1*0.6, -0.55*0.6},
      scale = 0.6,
      tint = {0.85, 1, 0.9}
    },
    base_animation = {
      filename = "__boblogistics__/graphics/entity/roboport/hr-roboport-base-animation-3.png",
      priority = "medium",
      width = 83,
      height = 59,
      frame_count = 8,
      animation_speed = 0.5,
      shift = {0, -1.9875*0.6},
      scale = 0.5*0.6,
      tint = {0.85, 1, 0.9}
    }
  },

  {
    type = "roboport",
    name = "nullius-charger-1",
    localised_name = {"equipment-name.nullius-charger-1"},
	localised_description = {"equipment-description.nullius-buffer",
	    {"equipment-description.nullius-charger"},
		{"entity-description.nullius-megajoule", 15}},
    icons = data.raw.item["nullius-charger-1"].icons,
    flags = {"placeable-player", "player-creation"},
    minable = {mining_time = 0.6, result = "nullius-charger-1"},
    fast_replaceable_group = "nullius-charger",
    next_upgrade = "nullius-charger-2",
    max_health = 200,
    corpse = "medium-remnants",
    collision_box = {{-0.7, -0.7}, {0.7, 0.7}},
    selection_box = {{-1, -1}, {1, 1}},
    dying_explosion = "medium-explosion",
    resistances = {{ type = "impact", decrease = 50, percent = 80 }},
    energy_source = {
      type = "electric",
      usage_priority = "secondary-input",
      input_flow_limit = "2MW",
      buffer_capacity = "15MJ"
    },
    recharge_minimum = "1MJ",
    energy_usage = "50kW",
    -- per one charge slot
    charging_energy = "600kW",

    logistics_radius = 0,
	logistics_connection_distance = 4,
    construction_radius = 4,
    charge_approach_distance = 4,
    robot_slots_count = 0,
    material_slots_count = 0,
    stationing_offset = {0, 0},
    charging_offsets = {
      {0, -0.4}, {-0.5, 0.4}, {0.5, 0.4}
    },
    base = data.raw["roboport"]["bob-robo-charge-port"].base,
    base_patch = data.raw["roboport"]["bob-robo-charge-port"].base_patch,
    door_animation_up = data.raw["roboport"]["bob-robo-charge-port"].door_animation_up,
    door_animation_down = data.raw["roboport"]["bob-robo-charge-port"].door_animation_down,
    draw_logistic_radius_visualization = true,
    draw_construction_radius_visualization = true,
    recharging_animation = data.raw["roboport"]["roboport"].recharging_animation,
    recharging_light = {intensity = 0.3, size = 4},
    request_to_open_door_timeout = 15,
    spawn_and_station_height = 0.33,

    base_animation = {
      layers = {
        {
          filename = "__boblogistics__/graphics/entity/roboport/roboport-chargepad.png",
          priority = "medium",
          width = 32,
          height = 32,
          frame_count = 6,
          shift = {0, -0.35},
          animation_speed = 0.1
        },
        {
          filename = "__boblogistics__/graphics/entity/roboport/roboport-chargepad.png",
          priority = "medium",
          width = 32,
          height = 32,
          frame_count = 6,
          shift = {-0.47, 0.35},
          animation_speed = 0.1
        },
        {
          filename = "__boblogistics__/graphics/entity/roboport/roboport-chargepad.png",
          priority = "medium",
          width = 32,
          height = 32,
          frame_count = 6,
          shift = {0.47, 0.35},
          animation_speed = 0.1
        }
      }
    }
  },

  {
    type = "roboport",
    name = "nullius-charger-2",
    localised_name = {"equipment-name.nullius-charger-2"},
	localised_description = {"equipment-description.nullius-buffer",
	    {"equipment-description.nullius-charger"},
		{"entity-description.nullius-megajoule", 40}},
    icons = data.raw.item["nullius-charger-2"].icons,
    flags = {"placeable-player", "player-creation"},
    minable = {mining_time = 0.8, result = "nullius-charger-2"},
    fast_replaceable_group = "nullius-charger",
    next_upgrade = "nullius-charger-3",
    max_health = 200,
    corpse = "medium-remnants",
    collision_box = {{-0.7, -0.7}, {0.7, 0.7}},
    selection_box = {{-1, -1}, {1, 1}},
    dying_explosion = "medium-explosion",
    resistances = {{ type = "impact", decrease = 50, percent = 80 }},
    energy_source = {
      type = "electric",
      usage_priority = "secondary-input",
      input_flow_limit = "5MW",
      buffer_capacity = "40MJ"
    },
    recharge_minimum = "2MJ",
    energy_usage = "100kW",
    -- per one charge slot
    charging_energy = "1.6MW",

    logistics_radius = 0,
	logistics_connection_distance = 5,
    construction_radius = 5,
    charge_approach_distance = 4,
    robot_slots_count = 0,
    material_slots_count = 0,
    stationing_offset = {0, 0},
    charging_offsets = {
      {0, -0.4}, {-0.5, 0.4}, {0.5, 0.4}
    },
    base = data.raw["roboport"]["bob-robo-charge-port"].base,
    base_patch = data.raw["roboport"]["bob-robo-charge-port"].base_patch,
    door_animation_up = data.raw["roboport"]["bob-robo-charge-port"].door_animation_up,
    door_animation_down = data.raw["roboport"]["bob-robo-charge-port"].door_animation_down,
    draw_logistic_radius_visualization = true,
    draw_construction_radius_visualization = true,
    recharging_animation = data.raw["roboport"]["roboport"].recharging_animation,
    recharging_light = {intensity = 0.4, size = 5},
    request_to_open_door_timeout = 15,
    spawn_and_station_height = 0.33,

    base_animation = {
      layers = {
        {
          filename = "__boblogistics__/graphics/entity/roboport/roboport-chargepad-2.png",
          priority = "medium",
          width = 32,
          height = 32,
          frame_count = 6,
          shift = {0, -0.35},
          animation_speed = 0.1
        },
        {
          filename = "__boblogistics__/graphics/entity/roboport/roboport-chargepad-2.png",
          priority = "medium",
          width = 32,
          height = 32,
          frame_count = 6,
          shift = {-0.47, 0.35},
          animation_speed = 0.1
        },
        {
          filename = "__boblogistics__/graphics/entity/roboport/roboport-chargepad-2.png",
          priority = "medium",
          width = 32,
          height = 32,
          frame_count = 6,
          shift = {0.47, 0.35},
          animation_speed = 0.1
        }
      }
    }
  },

  {
    type = "roboport",
    name = "nullius-charger-3",
    localised_name = {"equipment-name.nullius-charger-3"},
	localised_description = {"equipment-description.nullius-buffer",
	    {"equipment-description.nullius-charger"},
		{"entity-description.nullius-megajoule", 100}},
    icons = data.raw.item["nullius-charger-3"].icons,
    flags = {"placeable-player", "player-creation"},
    minable = {mining_time = 1, result = "nullius-charger-3"},
    fast_replaceable_group = "nullius-charger",
    max_health = 200,
    corpse = "medium-remnants",
    collision_box = {{-0.7, -0.7}, {0.7, 0.7}},
    selection_box = {{-1, -1}, {1, 1}},
    dying_explosion = "medium-explosion",
    resistances = {{ type = "impact", decrease = 50, percent = 80 }},
    energy_source = {
      type = "electric",
      usage_priority = "secondary-input",
      input_flow_limit = "15MW",
      buffer_capacity = "100MJ"
    },
    recharge_minimum = "5MJ",
    energy_usage = "200kW",
    -- per one charge slot
    charging_energy = "4MW",

    logistics_radius = 0,
	logistics_connection_distance = 6,
    construction_radius = 6,
    charge_approach_distance = 4,
    robot_slots_count = 0,
    material_slots_count = 0,
    stationing_offset = {0, 0},
    charging_offsets = {
      {0, -0.4}, {-0.5, 0.4}, {0.5, 0.4}
    },
    base = data.raw["roboport"]["bob-robo-charge-port"].base,
    base_patch = data.raw["roboport"]["bob-robo-charge-port"].base_patch,
    door_animation_up = data.raw["roboport"]["bob-robo-charge-port"].door_animation_up,
    door_animation_down = data.raw["roboport"]["bob-robo-charge-port"].door_animation_down,
    draw_logistic_radius_visualization = true,
    draw_construction_radius_visualization = true,
    recharging_animation = data.raw["roboport"]["roboport"].recharging_animation,
    recharging_light = {intensity = 0.5, size = 6},
    request_to_open_door_timeout = 15,
    spawn_and_station_height = 0.33,

    base_animation = {
      layers = {
        {
          filename = "__boblogistics__/graphics/entity/roboport/roboport-chargepad-4.png",
          priority = "medium",
          width = 32,
          height = 32,
          frame_count = 6,
          shift = {0, -0.35},
          animation_speed = 0.1
        },
        {
          filename = "__boblogistics__/graphics/entity/roboport/roboport-chargepad-4.png",
          priority = "medium",
          width = 32,
          height = 32,
          frame_count = 6,
          shift = {-0.47, 0.35},
          animation_speed = 0.1
        },
        {
          filename = "__boblogistics__/graphics/entity/roboport/roboport-chargepad-4.png",
          priority = "medium",
          width = 32,
          height = 32,
          frame_count = 6,
          shift = {0.47, 0.35},
          animation_speed = 0.1
        }
      }
    }
  },

  {
    type = "roboport",
    name = "nullius-charger-4",
    localised_name = {"equipment-name.nullius-charger-4"},
	localised_description = {"equipment-description.nullius-buffer",
	    {"equipment-description.nullius-charger"},
		{"entity-description.nullius-megajoule", 100}},
    icons = data.raw.item["nullius-charger-4"].icons,
    flags = {"placeable-player", "player-creation"},
    minable = {mining_time = 1, result = "nullius-charger-4"},
    max_health = 200,
    corpse = "medium-remnants",
    collision_box = {{-0.2, -0.2}, {0.2, 0.2}},
    selection_box = {{-0.5, -0.5}, {0.5, 0.5}},
    dying_explosion = "medium-explosion",
    resistances = {{ type = "impact", decrease = 50, percent = 80 }},
    energy_source = {
      type = "electric",
      usage_priority = "secondary-input",
      input_flow_limit = "15MW",
      buffer_capacity = "100MJ"
    },
    recharge_minimum = "5MJ",
    energy_usage = "150kW",
    -- per one charge slot
    charging_energy = "5MW",

    logistics_radius = 0,
	logistics_connection_distance = 4.5,
    construction_radius = 4.5,
    charge_approach_distance = 4,
    robot_slots_count = 0,
    material_slots_count = 0,
    stationing_offset = {0, 0},
    charging_offsets = {
      {0, -0.2}, {-0.3, 0.2}, {0.3, 0.2}
    },
    base = data.raw["roboport"]["bob-robo-charge-port"].base,
    base_patch = data.raw["roboport"]["bob-robo-charge-port"].base_patch,
    door_animation_up = data.raw["roboport"]["bob-robo-charge-port"].door_animation_up,
    door_animation_down = data.raw["roboport"]["bob-robo-charge-port"].door_animation_down,
    draw_logistic_radius_visualization = true,
    draw_construction_radius_visualization = true,
    recharging_animation = data.raw["roboport"]["roboport"].recharging_animation,
    recharging_light = {intensity = 0.5, size = 6},
    request_to_open_door_timeout = 15,
    spawn_and_station_height = 0.33,

    base_animation = {
      layers = {
        {
          filename = "__boblogistics__/graphics/entity/roboport/roboport-chargepad-4.png",
          priority = "medium",
          width = 32,
          height = 32,
          frame_count = 6,
          shift = {0, -0.175},
          animation_speed = 0.1,
          scale = 0.5
        },
        {
          filename = "__boblogistics__/graphics/entity/roboport/roboport-chargepad-4.png",
          priority = "medium",
          width = 32,
          height = 32,
          frame_count = 6,
          shift = {-0.235, 0.175},
          animation_speed = 0.1,
          scale = 0.5
        },
        {
          filename = "__boblogistics__/graphics/entity/roboport/roboport-chargepad-4.png",
          priority = "medium",
          width = 32,
          height = 32,
          frame_count = 6,
          shift = {0.235, 0.175},
          animation_speed = 0.1,
          scale = 0.5
        }
      }
    }
  }
})


local android1 = data.raw.character["character"]
android1.order = "nullius-akb"
local android2 = util.table.deepcopy(android1)
android2.name = "nullius-android-2"
android2.localised_name = {"", {"item-name.nullius-android"}, " ", 2}
android2.icons = data.raw.item["nullius-android-2"].icons
android2.order = "nullius-akc"
android2.selection_box = {{-0.4, -1.55}, {0.4, 0.2}}
android2.animations = scale_image(android2.animations, 1.1)
android2.animations[2].armors = {"nullius-chassis-3", "nullius-chassis-4"}
android2.animations[3].armors = {"nullius-chassis-5", "nullius-chassis-6"}
android2.max_health = 500
android2.inventory_size = 90
android2.build_distance = 15
android2.drop_item_distance = 15
android2.reach_distance = 15
android2.item_pickup_distance = 2
android2.loot_pickup_distance = 3
android2.enter_vehicle_distance = 4
android2.reach_resource_distance = 4.7
android2.running_speed = 0.2
android2.distance_per_frame = 0.15
android2.tool_attack_result.action_delivery.target_effects.damage.amount = 12
android2.mining_speed = 0.8
data:extend({ android2 })


local hangar_paste = {
  "nullius-hangar-1", "nullius-hangar-2",
  "nullius-hangar-4", "nullius-hangar-4",
  "nullius-relay-1", "nullius-relay-2",
  "nullius-relay-4", "nullius-relay-4"
}

for i=1,4 do
  local bh = data.raw.roboport["nullius-hangar-" .. i]
  bh.additional_pastable_entities = hangar_paste
  local ch = util.table.deepcopy(bh)
  ch.name = "nullius-hangar-construction-" .. i
  ch.localised_name = { "entity-name.nullius-construction-only", ch.localised_name }
  ch.placeable_by = {item = "nullius-hangar-" .. i, count = 1}
  ch.logistics_radius = 0
  ch.logistics_connection_distance = ((1 + i) * 16) + 0.5
  ch.construction_radius = ((1 + i) * 32) + 4.5
  local br = data.raw.roboport["nullius-relay-" .. i]
  br.additional_pastable_entities = hangar_paste
  local cr = util.table.deepcopy(br)
  cr.name = "nullius-relay-construction-" .. i
  cr.localised_name = { "entity-name.nullius-construction-only", cr.localised_name }
  cr.placeable_by = {item = "nullius-relay-" .. i, count = 1}
  cr.logistics_radius = 0
  cr.logistics_connection_distance = ch.logistics_connection_distance
  cr.construction_radius = ch.construction_radius
  if (i < 4) then
    ch.next_upgrade = "nullius-hangar-construction-" .. (i + 1)
	cr.next_upgrade = "nullius-relay-construction-" .. (i + 1)
  end
  data:extend({ ch, cr })
end

data.raw.roboport["nullius-hangar-construction-3"].next_upgrade = nil
data.raw.roboport["nullius-hangar-construction-4"].logistics_connection_distance = 65
data.raw.roboport["nullius-hangar-construction-4"].construction_radius = 133
data.raw.roboport["nullius-relay-construction-4"].logistics_connection_distance = 96.5
data.raw.roboport["nullius-relay-construction-4"].construction_radius = 200.5

data.raw.roboport["nullius-hangar-construction-1"].base_animation.filename =
	"__boblogistics__/graphics/entity/roboport/roboport-base-animation-4.png"
data.raw.roboport["nullius-hangar-construction-1"].base_animation.tint = {0.9, 0.8, 0.7}
data.raw.roboport["nullius-hangar-construction-1"].base_animation.hr_version.filename =
	"__boblogistics__/graphics/entity/roboport/hr-roboport-base-animation-4.png"
data.raw.roboport["nullius-hangar-construction-1"].base_animation.hr_version.tint = {0.9, 0.8, 0.7}
data.raw.roboport["nullius-relay-construction-1"].base_animation.filename =
	data.raw.roboport["nullius-hangar-construction-1"].base_animation.hr_version.filename
data.raw.roboport["nullius-relay-construction-1"].base_animation.tint = {0.9, 0.8, 0.7}
data.raw.roboport["nullius-hangar-construction-2"].base_animation.filename =
	"__boblogistics__/graphics/entity/roboport/roboport-base-animation-3.png"
data.raw.roboport["nullius-hangar-construction-2"].base_animation.hr_version.filename =
	"__boblogistics__/graphics/entity/roboport/hr-roboport-base-animation-3.png"
data.raw.roboport["nullius-hangar-construction-2"].base_animation.tint = {0.85, 1, 0.9}
data.raw.roboport["nullius-hangar-construction-2"].base_animation.hr_version.tint = {0.85, 1, 0.9}
data.raw.roboport["nullius-relay-construction-2"].base_animation.filename =
	data.raw.roboport["nullius-hangar-construction-2"].base_animation.hr_version.filename
data.raw.roboport["nullius-hangar-construction-3"].base_animation.filename =
	"__boblogistics__/graphics/entity/roboport/roboport-base-animation-3.png"
data.raw.roboport["nullius-hangar-construction-3"].base_animation.hr_version.filename =
	"__boblogistics__/graphics/entity/roboport/hr-roboport-base-animation-3.png"
data.raw.roboport["nullius-relay-construction-3"].base_animation.filename =
	data.raw.roboport["nullius-hangar-construction-3"].base_animation.hr_version.filename
data.raw.roboport["nullius-relay-construction-3"].base_animation.tint = {1, 1, 0.75}
data.raw.roboport["nullius-hangar-construction-4"].base_animation.filename =
	data.raw.roboport["nullius-hangar-construction-3"].base_animation.filename
data.raw.roboport["nullius-hangar-construction-4"].base_animation.hr_version.filename =
	data.raw.roboport["nullius-hangar-construction-3"].base_animation.hr_version.filename
data.raw.roboport["nullius-relay-construction-4"].base_animation.filename =
	"__boblogistics__/graphics/entity/roboport/hr-roboport-base-animation.png"
data.raw.roboport["nullius-relay-construction-4"].base_animation.tint = {0.7, 0.7, 0.7}
