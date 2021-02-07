require("__base__/prototypes/entity/combinator-pictures")

data:extend({
  generate_decider_combinator
  {
    type = "decider-combinator",
    name = "nullius-logic-circuit",
    icon = "__base__/graphics/icons/decider-combinator.png",
    icon_size = 64,
	icon_mipmaps = 4,
    flags = {"placeable-neutral", "player-creation"},
    minable = {mining_time = 0.1, result = "nullius-logic-circuit"},
    max_health = 150,
    corpse = "decider-combinator-remnants",
    dying_explosion = "decider-combinator-explosion",
    collision_box = {{-0.35, -0.65}, {0.35, 0.65}},
    selection_box = {{-0.5, -1}, {0.5, 1}},
	damaged_trigger_effect = data.raw["decider-combinator"]["decider-combinator"].damaged_trigger_effect,

    energy_source = {
      type = "electric",
      usage_priority = "secondary-input"
    },
    active_energy_usage = "1KW",

	working_sound = data.raw["decider-combinator"]["decider-combinator"].working_sound,
	vehicle_impact_sound = data.raw["decider-combinator"]["decider-combinator"].vehicle_impact_sound,
	open_sound = data.raw["decider-combinator"]["decider-combinator"].open_sound,
	close_sound = data.raw["decider-combinator"]["decider-combinator"].close_sound,

    activity_led_light = data.raw["decider-combinator"]["decider-combinator"].activity_led_light,
	activity_led_light_offsets = data.raw["decider-combinator"]["decider-combinator"].activity_led_light_offsets,
	screen_light = data.raw["decider-combinator"]["decider-combinator"].screen_light,
	screen_light_offsets = data.raw["decider-combinator"]["decider-combinator"].screen_light_offsets,

    input_connection_bounding_box = {{-0.5, 0}, {0.5, 1}},
    output_connection_bounding_box = {{-0.5, -1}, {0.5, 0}},

    input_connection_points = data.raw["decider-combinator"]["decider-combinator"].input_connection_points,
    output_connection_points = data.raw["decider-combinator"]["decider-combinator"].output_connection_points,
    circuit_wire_max_distance = 11
  },

  generate_arithmetic_combinator
  {
    type = "arithmetic-combinator",
    name = "nullius-arithmetic-circuit",
    icon = "__base__/graphics/icons/arithmetic-combinator.png",
    icon_size = 64,
	icon_mipmaps = 4,
    flags = {"placeable-neutral", "player-creation"},
    minable = {mining_time = 0.1, result = "nullius-arithmetic-circuit"},
    max_health = 150,
    corpse = "arithmetic-combinator-remnants",
    dying_explosion = "arithmetic-combinator-explosion",
    collision_box = {{-0.35, -0.65}, {0.35, 0.65}},
    selection_box = {{-0.5, -1}, {0.5, 1}},
    damaged_trigger_effect = data.raw["arithmetic-combinator"]["arithmetic-combinator"].damaged_trigger_effect,

    energy_source = {
      type = "electric",
      usage_priority = "secondary-input"
    },
    active_energy_usage = "1KW",

    working_sound = data.raw["arithmetic-combinator"]["arithmetic-combinator"].working_sound,
	vehicle_impact_sound = data.raw["arithmetic-combinator"]["arithmetic-combinator"].vehicle_impact_sound,
	open_sound = data.raw["arithmetic-combinator"]["arithmetic-combinator"].open_sound,
	close_sound = data.raw["arithmetic-combinator"]["arithmetic-combinator"].close_sound,

	activity_led_light = data.raw["arithmetic-combinator"]["arithmetic-combinator"].activity_led_light,
	activity_led_light_offsets = data.raw["arithmetic-combinator"]["arithmetic-combinator"].activity_led_light_offsets,
	screen_light = data.raw["arithmetic-combinator"]["arithmetic-combinator"].screen_light,
	screen_light_offsets = data.raw["arithmetic-combinator"]["arithmetic-combinator"].screen_light_offsets,

    input_connection_bounding_box = {{-0.5, 0}, {0.5, 1}},
    output_connection_bounding_box = {{-0.5, -1}, {0.5, 0}},
    circuit_wire_max_distance = 11
  },

  generate_constant_combinator
  {
    type = "constant-combinator",
    name = "nullius-memory-circuit",
    icon = "__base__/graphics/icons/constant-combinator.png",
    icon_size = 64,
	icon_mipmaps = 4,
    flags = {"placeable-neutral", "player-creation"},
    minable = {mining_time = 0.1, result = "nullius-memory-circuit"},
    max_health = 120,
    corpse = "constant-combinator-remnants",
    dying_explosion = "constant-combinator-explosion",
    collision_box = {{-0.35, -0.35}, {0.35, 0.35}},
    selection_box = {{-0.5, -0.5}, {0.5, 0.5}},

    item_slot_count = 16,

	damaged_trigger_effect = data.raw["constant-combinator"]["constant-combinator"].damaged_trigger_effect,
	vehicle_impact_sound = data.raw["constant-combinator"]["constant-combinator"].vehicle_impact_sound,
	open_sound = data.raw["constant-combinator"]["constant-combinator"].open_sound,
	close_sound = data.raw["constant-combinator"]["constant-combinator"].close_sound,

	activity_led_light = data.raw["constant-combinator"]["constant-combinator"].activity_led_light,
	activity_led_light_offsets = data.raw["constant-combinator"]["constant-combinator"].activity_led_light_offsets,
    circuit_wire_max_distance = 11
  },

  {
    type = "programmable-speaker",
    name = "nullius-antenna",
    icon = "__base__/graphics/icons/programmable-speaker.png",
    icon_size = 64,
	icon_mipmaps = 4,
    flags = {"placeable-neutral", "player-creation"},
    minable = {mining_time = 0.1, result = "nullius-antenna"},
    max_health = 150,
    corpse = "programmable-speaker-remnants",
    dying_explosion = "programmable-speaker-explosion",
    collision_box = {{-0.3, -0.3}, {0.3, 0.3}},
    selection_box = {{-0.5, -0.5}, {0.5, 0.5}},
    drawing_box = {{-0.5, -2.5}, {0.5, 0.3}},

    damaged_trigger_effect = data.raw["programmable-speaker"]["programmable-speaker"].damaged_trigger_effect,
    vehicle_impact_sound = data.raw["programmable-speaker"]["programmable-speaker"].vehicle_impact_sound,
	open_sound = data.raw["programmable-speaker"]["programmable-speaker"].open_sound,
	close_sound = data.raw["programmable-speaker"]["programmable-speaker"].close_sound,

    energy_source = {
      type = "electric",
      usage_priority = "secondary-input"
    },
    energy_usage_per_tick = "2KW",

    sprite = data.raw["programmable-speaker"]["programmable-speaker"].sprite,
    water_reflection = data.raw["programmable-speaker"]["programmable-speaker"].water_reflection,
    audible_distance_modifier = 2, --multiplies the default 40 tiles of audible distance by this number
    maximum_polyphony = 10, --maximum number of samples that can play at the same time
    instruments = data.raw["programmable-speaker"]["programmable-speaker"].instruments,

    circuit_wire_connection_point = circuit_connector_definitions["programmable-speaker"].points,
    circuit_connector_sprites = circuit_connector_definitions["programmable-speaker"].sprites,
    circuit_wire_max_distance = 11
  },

})