local ICONPATH = "__nullius__/graphics/icons/"
local ENTITYPATH = "__nullius__/graphics/entity/"

local BASEENTITY = "__base__/graphics/entity/"

-- Conditional evaluation.
-- e_rails(f) = f() if elevated rails is loaded, nil otherwise.
local e_rails
if mods["elevated-rails"] ~= nil then
  e_rails = function(thunk) return thunk() end
else
  e_rails = function(thunk) end
end

data:extend({
  {
    type = "locomotive",
    name = "nullius-locomotive-1",
    icons = data.raw["item-with-entity-data"]["nullius-locomotive-1"].icons,
    flags = {"placeable-neutral", "player-creation", "placeable-off-grid"},
    minable = {mining_time = 0.6, result = "nullius-locomotive-1"},
    mined_sound = {filename = "__core__/sound/deconstruct-large.ogg",volume = 0.8},
    max_health = 500,
    corpse = "locomotive-remnants",
    dying_explosion = "locomotive-explosion",
    fast_replaceable_group = "locomotive",
    collision_box = {{-0.6, -2.6}, {0.6, 2.6}},
    selection_box = {{-1, -3}, {1, 3}},
    damaged_trigger_effect = data.raw.locomotive["locomotive"].damaged_trigger_effect,
    alert_icon_shift = util.by_pixel(0, -24),
    weight = 1200,
    max_speed = 0.5555556,
    max_power = "180kW",
    reversing_power_modifier = 0.4,
    braking_force = 3,
    friction_force = 0.25,
    vertical_selection_shift = -0.5,
    air_resistance = 0.004,
    connection_distance = 3,
    joint_distance = 4,
    energy_per_hit_point = 4,
    resistances = {
      { type = "impact", decrease = 100, percent = 90 },
      { type = "poison", decrease = 50, percent = 80 },
      { type = "fire", decrease = 20, percent = 50 },
      { type = "physical", decrease = 20, percent = 30 },
      { type = "explosion", decrease = 20, percent = 30 }
    },
    energy_source = {
      type = "burner",
      fuel_categories = {"vehicle"},
      effectivity = 0.9,
      fuel_inventory_size = 1,
      burnt_inventory_size = 2,
      smoke = data.raw.locomotive["locomotive"].energy_source.smoke
    },
    front_light = data.raw.locomotive["locomotive"].front_light,
    front_light_pictures = data.raw.locomotive["locomotive"].front_light_pictures,
    back_light = data.raw.locomotive["locomotive"].back_light,
    stand_by_light = data.raw.locomotive["locomotive"].stand_by_light,
    color = {r = 0.9, g = 0.85, b = 0, a = 0.5},

    minimap_representation = data.raw.locomotive["locomotive"].minimap_representation,
    selected_minimap_representation = data.raw.locomotive["locomotive"].selected_minimap_representation,
    wheels = data.raw.locomotive["locomotive"].wheels,
    stop_trigger = data.raw.locomotive["locomotive"].stop_trigger,
    drive_over_tie_trigger = data.raw.locomotive["locomotive"].drive_over_tie_trigger,
    drive_over_elevated_tie_trigger = data.raw.locomotive["locomotive"].drive_over_elevated_die_trigger,
    impact_category = data.raw.locomotive["locomotive"].impact_category,
    working_sound = data.raw.locomotive["locomotive"].working_sound,
    open_sound = data.raw.locomotive["locomotive"].open_sound,
    close_sound = data.raw.locomotive["locomotive"].close_sound,
    elevated_rail_sound = data.raw.locomotive["locomotive"].elevated_rail_sound,
    water_reflection = data.raw.locomotive["locomotive"].water_reflection,
    tie_distance = 50,
    elevated_selection_priority = data.raw.locomotive["locomotive"].elevated_selection_priority,
    --sound_minimum_speed = 0.5,
    --sound_scaling_ratio = 0.35,

    pictures = {
      slope_angle_between_frames = data.raw.locomotive["locomotive"].pictures.slope_angle_between_frames,
      slope_back_equals_front = data.raw.locomotive["locomotive"].pictures.slope_back_equals_front,
      rotated = {
        layers = {
          util.sprite_load("__base__/graphics/entity/locomotive/locomotive",
            {
              dice = 4,
              priority = "very-low",
              allow_low_quality_rotation = true,
              direction_count = 256,
              scale = 0.5,
              usage = "train",
              tint = {0.62, 0.6, 0.5},
            }
          ),
          util.sprite_load("__base__/graphics/entity/locomotive/locomotive-mask",
            {
              dice = 4,
              priority = "very-low",
              flags = { "mask" },
              apply_runtime_tint = true,
              tint_as_overlay = true,
              allow_low_quality_rotation = true,
              direction_count = 256,
              scale = 0.5,
              usage = "train",
            }
          ),
          util.sprite_load("__base__/graphics/entity/locomotive/locomotive-shadow",
            {
              dice = 4,
              priority = "very-low",
              flags = { "shadow" },
              draw_as_shadow = true,
              allow_low_quality_rotation = true,
              direction_count = 256,
              scale = 0.5,
              usage = "train",
            }
          )
        }
      },
      sloped = e_rails(function()
        local sprites = util.table.deepcopy(data.raw["locomotive"]["locomotive"].pictures.sloped)
        sprites.layers[1].tint = {0.62, 0.6, 0.5}
        return sprites
      end)
    }
  }
})

data:extend({
  {
    type = "locomotive",
    name = "nullius-locomotive-2",
    icons = data.raw["item-with-entity-data"]["nullius-locomotive-2"].icons,
    flags = {"placeable-neutral", "player-creation", "placeable-off-grid"},
    minable = {mining_time = 0.8, result = "nullius-locomotive-2"},
    mined_sound = {filename = "__core__/sound/deconstruct-large.ogg", volume = 0.8},
    max_health = 1000,
    corpse = "locomotive-remnants",
    dying_explosion = "locomotive-explosion",
    fast_replaceable_group = "locomotive",
    collision_box = {{-0.6, -2.6}, {0.6, 2.6}},
    selection_box = {{-1, -3}, {1, 3}},
    damaged_trigger_effect = data.raw.locomotive["locomotive"].damaged_trigger_effect,
    alert_icon_shift = util.by_pixel(0, -24),
    weight = 2000,
    max_speed = 1.11111111,
    max_power = "475kW",
    reversing_power_modifier = 0.6,
    braking_force = 10,
    friction_force = 0.4,
    vertical_selection_shift = -0.5,
    air_resistance = 0.007,
    connection_distance = 3,
    joint_distance = 4,
    energy_per_hit_point = 5,
    resistances = data.raw.locomotive["nullius-locomotive-1"].resistances,
    energy_source = {
      type = "burner",
      fuel_categories = {"vehicle"},
      effectivity = 0.95,
      fuel_inventory_size = 2,
      burnt_inventory_size = 2,
      smoke = data.raw.locomotive["locomotive"].energy_source.smoke
    },
    front_light = data.raw.locomotive["locomotive"].front_light,
    front_light_pictures = data.raw.locomotive["locomotive"].front_light_pictures,
    back_light = data.raw.locomotive["locomotive"].back_light,
    stand_by_light = data.raw.locomotive["locomotive"].stand_by_light,
    color = {r = 0.95, g = 0.1, b = 0, a = 0.5},

    minimap_representation = data.raw.locomotive["locomotive"].minimap_representation,
    selected_minimap_representation = data.raw.locomotive["locomotive"].selected_minimap_representation,
    wheels = data.raw.locomotive["locomotive"].wheels,
    stop_trigger = data.raw.locomotive["locomotive"].stop_trigger,
    drive_over_tie_trigger = data.raw.locomotive["locomotive"].drive_over_tie_trigger,
    drive_over_elevated_tie_trigger = data.raw.locomotive["locomotive"].drive_over_elevated_die_trigger,
    impact_category = data.raw.locomotive["locomotive"].impact_category,
    working_sound = data.raw.locomotive["locomotive"].working_sound,
    open_sound = data.raw.locomotive["locomotive"].open_sound,
    close_sound = data.raw.locomotive["locomotive"].close_sound,
    elevated_rail_sound = data.raw.locomotive["locomotive"].elevated_rail_sound,
    water_reflection = data.raw.locomotive["locomotive"].water_reflection,
    tie_distance = 50,
    elevated_selection_priority = data.raw.locomotive["locomotive"].elevated_selection_priority,
    --sound_minimum_speed = 0.5,
    --sound_scaling_ratio = 0.35,

    pictures = {
      rotated = {
        layers = {
          util.sprite_load("__base__/graphics/entity/locomotive/locomotive",
            {
              dice = 4,
              priority = "very-low",
              allow_low_quality_rotation = true,
              direction_count = 256,
              scale = 0.5,
              usage = "train",
              tint = {1, 0.9, 0.8},
            }
          ),
          data.raw.locomotive["nullius-locomotive-1"].pictures.rotated.layers[2],
          data.raw.locomotive["nullius-locomotive-1"].pictures.rotated.layers[3]
        }
      },
      sloped = e_rails(function()
        local sprites = util.table.deepcopy(data.raw["locomotive"]["locomotive"].pictures.sloped)
        sprites.layers[1].tint = {1, 0.9, 0.8}
        return sprites
      end)
    }
  },

  {
    type = "locomotive",
    name = "nullius-locomotive-3",
    icons = data.raw["item-with-entity-data"]["nullius-locomotive-3"].icons,
    flags = {"placeable-neutral", "player-creation", "placeable-off-grid"},
    minable = {mining_time = 1, result = "nullius-locomotive-3"},
    mined_sound = {filename = "__core__/sound/deconstruct-large.ogg", volume = 0.8},
    max_health = 1500,
    corpse = "locomotive-remnants",
    dying_explosion = "locomotive-explosion",
    fast_replaceable_group = "locomotive",
    collision_box = {{-0.6, -2.6}, {0.6, 2.6}},
    selection_box = {{-1, -3}, {1, 3}},
    damaged_trigger_effect = data.raw.locomotive["locomotive"].damaged_trigger_effect,
    alert_icon_shift = util.by_pixel(0, -24),
    weight = 3000,
    max_speed = 1.85185185,
    max_power = "1MW",
    reversing_power_modifier = 0.75,
    braking_force = 30,
    friction_force = 0.6,
    vertical_selection_shift = -0.5,
    air_resistance = 0.01,
    connection_distance = 3,
    joint_distance = 4,
    energy_per_hit_point = 5,
    resistances = data.raw.locomotive["nullius-locomotive-1"].resistances,
    energy_source = {
      type = "burner",
	    fuel_categories = {"nullius-nuclear", "vehicle"},
      effectivity = 1,
      fuel_inventory_size = 2,
      burnt_inventory_size = 2,
      smoke = data.raw.locomotive["locomotive"].energy_source.smoke
    },
    front_light = data.raw.locomotive["locomotive"].front_light,
    front_light_pictures = data.raw.locomotive["locomotive"].front_light_pictures,
    back_light = data.raw.locomotive["locomotive"].back_light,
    stand_by_light = data.raw.locomotive["locomotive"].stand_by_light,
    color = {r = 0.2, g = 0.3, b = 0.8, a = 0.5},

    minimap_representation = data.raw.locomotive["locomotive"].minimap_representation,
    selected_minimap_representation = data.raw.locomotive["locomotive"].selected_minimap_representation,
    wheels = data.raw.locomotive["locomotive"].wheels,
    stop_trigger = data.raw.locomotive["locomotive"].stop_trigger,
    drive_over_tie_trigger = data.raw.locomotive["locomotive"].drive_over_tie_trigger,
    drive_over_elevated_tie_trigger = data.raw.locomotive["locomotive"].drive_over_elevated_die_trigger,
    impact_category = data.raw.locomotive["locomotive"].impact_category,
    working_sound = data.raw.locomotive["locomotive"].working_sound,
    open_sound = data.raw.locomotive["locomotive"].open_sound,
    close_sound = data.raw.locomotive["locomotive"].close_sound,
    elevated_rail_sound = data.raw.locomotive["locomotive"].elevated_rail_sound,
    water_reflection = data.raw.locomotive["locomotive"].water_reflection,
    tie_distance = 50,
    elevated_selection_priority = data.raw.locomotive["locomotive"].elevated_selection_priority,
    --sound_minimum_speed = 0.5,
    --sound_scaling_ratio = 0.35,

    pictures = {
      rotated = {
        layers = {
          util.sprite_load("__base__/graphics/entity/locomotive/locomotive",
            {
              dice = 4,
              priority = "very-low",
              allow_low_quality_rotation = true,
              direction_count = 256,
              scale = 0.5,
              usage = "train",
              tint = {0.9, 0.95, 1}
            }
          ),
          data.raw.locomotive["nullius-locomotive-1"].pictures.rotated.layers[2],
          data.raw.locomotive["nullius-locomotive-1"].pictures.rotated.layers[3]
        }
      },
      sloped = e_rails(function()
        local sprites = util.table.deepcopy(data.raw["locomotive"]["locomotive"].pictures.sloped)
        sprites.layers[1].tint = {0.9, 0.95, 1}
        return sprites
      end)
    }
  },

  {
    type = "locomotive",
    name = "nullius-solar-locomotive",
    icons = data.raw["item-with-entity-data"]["nullius-solar-locomotive"].icons,
    flags = {"placeable-neutral", "player-creation", "placeable-off-grid"},
    minable = {mining_time = 1, result = "nullius-solar-locomotive"},
    mined_sound = {filename = "__core__/sound/deconstruct-large.ogg", volume = 0.8},
    max_health = 1500,
    corpse = "locomotive-remnants",
    dying_explosion = "locomotive-explosion",
    fast_replaceable_group = "locomotive",
    collision_box = {{-0.6, -2.6}, {0.6, 2.6}},
    selection_box = {{-1, -3}, {1, 3}},
    damaged_trigger_effect = data.raw.locomotive["locomotive"].damaged_trigger_effect,
    alert_icon_shift = util.by_pixel(0, -24),
    weight = 3000,
    max_speed = 1.11111111,
    max_power = "700kW",
    reversing_power_modifier = 0.75,
    braking_force = 20,
    friction_force = 0.6,
    vertical_selection_shift = -0.5,
    air_resistance = 0.01,
    connection_distance = 3,
    joint_distance = 4,
    energy_per_hit_point = 5,
    resistances = data.raw.locomotive["nullius-locomotive-1"].resistances,
    energy_source = {type = "void"},
    front_light = data.raw.locomotive["locomotive"].front_light,
    front_light_pictures = data.raw.locomotive["locomotive"].front_light_pictures,
    back_light = data.raw.locomotive["locomotive"].back_light,
    stand_by_light = data.raw.locomotive["locomotive"].stand_by_light,
    color = {r = 0.2, g = 0.8, b = 0.3, a = 0.5},

    minimap_representation = data.raw.locomotive["locomotive"].minimap_representation,
    selected_minimap_representation = data.raw.locomotive["locomotive"].selected_minimap_representation,
    wheels = data.raw.locomotive["locomotive"].wheels,
    stop_trigger = data.raw.locomotive["locomotive"].stop_trigger,
    drive_over_tie_trigger = data.raw.locomotive["locomotive"].drive_over_tie_trigger,
    drive_over_elevated_tie_trigger = data.raw.locomotive["locomotive"].drive_over_elevated_die_trigger,
    impact_category = data.raw.locomotive["locomotive"].impact_category,
    working_sound = data.raw.locomotive["locomotive"].working_sound,
    open_sound = data.raw.locomotive["locomotive"].open_sound,
    close_sound = data.raw.locomotive["locomotive"].close_sound,
    elevated_rail_sound = data.raw.locomotive["locomotive"].elevated_rail_sound,
    water_reflection = data.raw.locomotive["locomotive"].water_reflection,
    tie_distance = 50,
    elevated_selection_priority = data.raw.locomotive["locomotive"].elevated_selection_priority,
    --sound_minimum_speed = 0.5,
    --sound_scaling_ratio = 0.35,

    pictures = {
      rotated = {
        layers = {
          util.sprite_load("__base__/graphics/entity/locomotive/locomotive",
            {
              dice = 4,
              priority = "very-low",
              allow_low_quality_rotation = true,
              direction_count = 256,
              scale = 0.5,
              usage = "train",
              tint = {0.9, 1, 0.95}
            }
          ),
          data.raw.locomotive["nullius-locomotive-1"].pictures.rotated.layers[2],
          data.raw.locomotive["nullius-locomotive-1"].pictures.rotated.layers[3]
        }
      },
      sloped = e_rails(function()
        local sprites = util.table.deepcopy(data.raw["locomotive"]["locomotive"].pictures.sloped)
        sprites.layers[1].tint = {0.9, 1, 0.95}
        return sprites
      end)
    }
  },

  {
    type = "cargo-wagon",
    name = "nullius-cargo-wagon-1",
    icons = data.raw["item-with-entity-data"]["nullius-cargo-wagon-1"].icons,
    flags = {"placeable-neutral", "player-creation", "placeable-off-grid"},
    inventory_size = 25,
    minable = {mining_time = 0.6, result = "nullius-cargo-wagon-1"},
    mined_sound = {filename = "__core__/sound/deconstruct-large.ogg",volume = 0.8},
    max_health = 400,
    corpse = "cargo-wagon-remnants",
    dying_explosion = "cargo-wagon-explosion",
    fast_replaceable_group = "cargo-wagon",
    collision_box = {{-0.6, -2.4}, {0.6, 2.4}},
    selection_box = {{-1, -2.703125}, {1, 3.296875}},
    damaged_trigger_effect = data.raw["cargo-wagon"]["cargo-wagon"].damaged_trigger_effect,
    vertical_selection_shift = -0.796875,
    weight = 600,
    max_speed = 0.8333333,
    braking_force = 1,
    friction_force = 0.25,
    air_resistance = 0.005,
    connection_distance = 3,
    joint_distance = 4,
    energy_per_hit_point = 5,
    resistances = {
      { type = "impact", decrease = 40, percent = 80 },
      { type = "poison", decrease = 40, percent = 80 },
      { type = "fire", decrease = 20, percent = 50 },
      { type = "physical", decrease = 20, percent = 20 },
      { type = "explosion", decrease = 20, percent = 20 }
    },
    back_light = data.raw["cargo-wagon"]["cargo-wagon"].back_light,
    stand_by_light = data.raw["cargo-wagon"]["cargo-wagon"].stand_by_light,
    color = {r = 0.425, g = 0.4, b = 0, a = 0.5},
    minimap_representation = data.raw["cargo-wagon"]["cargo-wagon"].minimap_representation,
    selected_minimap_representation = data.raw["cargo-wagon"]["cargo-wagon"].selected_minimap_representation,
    wheels = data.raw["cargo-wagon"]["cargo-wagon"].wheels,
    drive_over_tie_trigger = data.raw["cargo-wagon"]["cargo-wagon"].drive_over_tie_trigger,
    working_sound = data.raw["cargo-wagon"]["cargo-wagon"].working_sound,
    tie_distance = 50,
    crash_trigger = data.raw["cargo-wagon"]["cargo-wagon"].crash_trigger,
    open_sound = data.raw["cargo-wagon"]["cargo-wagon"].open_sound,
    close_sound = data.raw["cargo-wagon"]["cargo-wagon"].close_sound,
    impact_category = data.raw["cargo-wagon"]["cargo-wagon"].impact_category,
    water_reflection = data.raw["cargo-wagon"]["cargo-wagon"].water_reflection,
    --sound_minimum_speed = 1,
    pictures = data.raw["cargo-wagon"]["cargo-wagon"].pictures,
    horizontal_doors = data.raw["cargo-wagon"]["cargo-wagon"].horizontal_doors,
    vertical_doors = data.raw["cargo-wagon"]["cargo-wagon"].vertical_doors
  },

  {
    type = "cargo-wagon",
    name = "nullius-cargo-wagon-2",
    icons = data.raw["item-with-entity-data"]["nullius-cargo-wagon-2"].icons,
    flags = {"placeable-neutral", "player-creation", "placeable-off-grid"},
    inventory_size = 50,
    minable = {mining_time = 0.8, result = "nullius-cargo-wagon-2"},
    mined_sound = {filename = "__core__/sound/deconstruct-large.ogg",volume = 0.8},
    max_health = 600,
    corpse = "cargo-wagon-remnants",
    dying_explosion = "cargo-wagon-explosion",
    fast_replaceable_group = "cargo-wagon",
    collision_box = {{-0.6, -2.4}, {0.6, 2.4}},
    selection_box = {{-1, -2.703125}, {1, 3.296875}},
    damaged_trigger_effect = data.raw["cargo-wagon"]["cargo-wagon"].damaged_trigger_effect,
    vertical_selection_shift = -0.796875,
    weight = 1000,
    max_speed = 1.6666667,
    braking_force = 2,
    friction_force = 0.4,
    air_resistance = 0.01,
    connection_distance = 3,
    joint_distance = 4,
    energy_per_hit_point = 5,
    resistances = {
      { type = "impact", decrease = 40, percent = 80 },
      { type = "poison", decrease = 40, percent = 80 },
      { type = "fire", decrease = 20, percent = 50 },
      { type = "physical", decrease = 20, percent = 20 },
      { type = "explosion", decrease = 20, percent = 20 }
    },
    back_light = data.raw["cargo-wagon"]["cargo-wagon"].back_light,
    stand_by_light = data.raw["cargo-wagon"]["cargo-wagon"].stand_by_light,
    color = {r = 0.3, g = 0, b = 0, a = 0.6},
    minimap_representation = data.raw["cargo-wagon"]["cargo-wagon"].minimap_representation,
    selected_minimap_representation = data.raw["cargo-wagon"]["cargo-wagon"].selected_minimap_representation,
    wheels = data.raw["cargo-wagon"]["cargo-wagon"].wheels,
    drive_over_tie_trigger = data.raw["cargo-wagon"]["cargo-wagon"].drive_over_tie_trigger,
    working_sound = data.raw["cargo-wagon"]["cargo-wagon"].working_sound,
    tie_distance = 50,
    crash_trigger = data.raw["cargo-wagon"]["cargo-wagon"].crash_trigger,
    open_sound = data.raw["cargo-wagon"]["cargo-wagon"].open_sound,
    close_sound = data.raw["cargo-wagon"]["cargo-wagon"].close_sound,
    impact_category = data.raw["cargo-wagon"]["cargo-wagon"].impact_category,
    water_reflection = data.raw["cargo-wagon"]["cargo-wagon"].water_reflection,
    --sound_minimum_speed = 1,
    pictures = data.raw["cargo-wagon"]["cargo-wagon"].pictures,
    horizontal_doors = data.raw["cargo-wagon"]["cargo-wagon"].horizontal_doors,
    vertical_doors = data.raw["cargo-wagon"]["cargo-wagon"].vertical_doors
  },

  {
    type = "cargo-wagon",
    name = "nullius-cargo-wagon-3",
    icons = data.raw["item-with-entity-data"]["nullius-cargo-wagon-3"].icons,
    flags = {"placeable-neutral", "player-creation", "placeable-off-grid"},
    inventory_size = 100,
    minable = {mining_time = 1, result = "nullius-cargo-wagon-3"},
    mined_sound = {filename = "__core__/sound/deconstruct-large.ogg", volume = 0.8},
    max_health = 800,
    corpse = "cargo-wagon-remnants",
    dying_explosion = "cargo-wagon-explosion",
    fast_replaceable_group = "cargo-wagon",
    collision_box = {{-0.6, -2.4}, {0.6, 2.4}},
    selection_box = {{-1, -2.703125}, {1, 3.296875}},
    damaged_trigger_effect = data.raw["cargo-wagon"]["cargo-wagon"].damaged_trigger_effect,
    vertical_selection_shift = -0.796875,
    weight = 1500,
    max_speed = 2.2222222,
    braking_force = 4,
    friction_force = 0.6,
    air_resistance = 0.015,
    connection_distance = 3,
    joint_distance = 4,
    energy_per_hit_point = 5,
    resistances = {
      { type = "impact", decrease = 40, percent = 80 },
      { type = "poison", decrease = 40, percent = 80 },
      { type = "fire", decrease = 20, percent = 50 },
      { type = "physical", decrease = 20, percent = 20 },
      { type = "explosion", decrease = 20, percent = 20 }
    },
    back_light = data.raw["cargo-wagon"]["cargo-wagon"].back_light,
    stand_by_light = data.raw["cargo-wagon"]["cargo-wagon"].stand_by_light,
    color = {r = 0.5, g = 0.5, b = 0.6, a = 0.5},
    minimap_representation = data.raw["cargo-wagon"]["cargo-wagon"].minimap_representation,
    selected_minimap_representation = data.raw["cargo-wagon"]["cargo-wagon"].selected_minimap_representation,
    wheels = data.raw["cargo-wagon"]["cargo-wagon"].wheels,
    drive_over_tie_trigger = data.raw["cargo-wagon"]["cargo-wagon"].drive_over_tie_trigger,
    working_sound = data.raw["cargo-wagon"]["cargo-wagon"].working_sound,
    tie_distance = 50,
    crash_trigger = data.raw["cargo-wagon"]["cargo-wagon"].crash_trigger,
    open_sound = data.raw["cargo-wagon"]["cargo-wagon"].open_sound,
    close_sound = data.raw["cargo-wagon"]["cargo-wagon"].close_sound,
    impact_category = data.raw["cargo-wagon"]["cargo-wagon"].impact_category,
    water_reflection = data.raw["cargo-wagon"]["cargo-wagon"].water_reflection,
    --sound_minimum_speed = 1,
    pictures = data.raw["cargo-wagon"]["cargo-wagon"].pictures,
    horizontal_doors = data.raw["cargo-wagon"]["cargo-wagon"].horizontal_doors,
    vertical_doors = data.raw["cargo-wagon"]["cargo-wagon"].vertical_doors
  },

  {
    type = "fluid-wagon",
    name = "nullius-fluid-wagon-1",
    icons = data.raw["item-with-entity-data"]["nullius-fluid-wagon-1"].icons,
    flags = {"placeable-neutral", "player-creation", "placeable-off-grid"},
    minable = {mining_time = 0.6, result = "nullius-fluid-wagon-1"},
    mined_sound = {filename = "__core__/sound/deconstruct-large.ogg",volume = 0.8},
    max_health = 500,
    capacity = 25000,
    corpse = "fluid-wagon-remnants",
    dying_explosion = "fluid-wagon-explosion",
    fast_replaceable_group = "fluid-wagon",
    collision_box = {{-0.6, -2.4}, {0.6, 2.4}},
    selection_box = {{-1, -2.703125}, {1, 3.296875}},
    damaged_trigger_effect = data.raw["fluid-wagon"]["fluid-wagon"].damaged_trigger_effect,
    vertical_selection_shift = -0.796875,
    weight = 750,
	  max_speed = 1.48148148,
    braking_force = 1,
    friction_force = 0.25,
    air_resistance = 0.006,
    connection_distance = 3,
    joint_distance = 4,
    energy_per_hit_point = 5,
    resistances = {
      { type = "impact", decrease = 40, percent = 80 },
      { type = "fire", decrease = 40, percent = 60 },
      { type = "poison", decrease = 30, percent = 50 },
      { type = "physical", decrease = 30, percent = 50 }
    },
    back_light = data.raw["fluid-wagon"]["fluid-wagon"].back_light,
    stand_by_light = data.raw["fluid-wagon"]["fluid-wagon"].stand_by_light,
    color = {r = 0.85, g = 0.85, b = 0.55, a = 1},
    minimap_representation = data.raw["fluid-wagon"]["fluid-wagon"].minimap_representation,
    selected_minimap_representation = data.raw["fluid-wagon"]["fluid-wagon"].selected_minimap_representation,
    wheels = data.raw["fluid-wagon"]["fluid-wagon"].wheels,
    drive_over_tie_trigger = data.raw["fluid-wagon"]["fluid-wagon"].drive_over_tie_trigger,
    tie_distance = 50,
    working_sound = data.raw["fluid-wagon"]["fluid-wagon"].working_sound,
    crash_trigger = data.raw["fluid-wagon"]["fluid-wagon"].crash_trigger,
    impact_category = data.raw["fluid-wagon"]["fluid-wagon"].impact_category,
    water_reflection = data.raw["fluid-wagon"]["fluid-wagon"].water_reflection,
    --sound_minimum_speed = 0.1,
  
    pictures = {
      slope_angle_between_frames = data.raw["fluid-wagon"]["fluid-wagon"].pictures.slope_angle_between_frames,
      slope_back_equals_front = data.raw["fluid-wagon"]["fluid-wagon"].pictures.slope_back_equals_front,
      rotated = {
        layers = {
          util.sprite_load("__base__/graphics/entity/fluid-wagon/fluid-wagon",
            {
              dice = 4,
              priority = "very-low",
              allow_low_quality_rotation = true,
              back_equals_front = true,
              direction_count = 128,
              scale = 0.5,
              usage = "train",
              apply_runtime_tint = true,
            }
          ),
          util.sprite_load("__base__/graphics/entity/fluid-wagon/fluid-wagon-shadow",
            {
              dice = 4,
              priority = "very-low",
              allow_low_quality_rotation = true,
              back_equals_front = true,
              draw_as_shadow = true,
              direction_count = 128,
              scale = 0.5,
              usage = "train",
            }
          )
        }
      },
      sloped = e_rails(function()
        local sprites = util.table.deepcopy(data.raw["fluid-wagon"]["fluid-wagon"].pictures.sloped)
        sprites.layers[1].apply_runtime_tint = true
        return sprites
      end)
    }
  }
})

data:extend({
  {
    type = "fluid-wagon",
    name = "nullius-fluid-wagon-2",
    icons = data.raw["item-with-entity-data"]["nullius-fluid-wagon-2"].icons,
    flags = {"placeable-neutral", "player-creation", "placeable-off-grid"},
    minable = {mining_time = 0.8, result = "nullius-fluid-wagon-2"},
    mined_sound = {filename = "__core__/sound/deconstruct-large.ogg",volume = 0.8},
    max_health = 750,
    capacity = 80000,
    corpse = "fluid-wagon-remnants",
    dying_explosion = "fluid-wagon-explosion",
    fast_replaceable_group = "fluid-wagon",
    collision_box = {{-0.6, -2.4}, {0.6, 2.4}},
    selection_box = {{-1, -2.703125}, {1, 3.296875}},
    damaged_trigger_effect = data.raw["fluid-wagon"]["fluid-wagon"].damaged_trigger_effect,
    vertical_selection_shift = -0.796875,
    weight = 1200,
	max_speed = 2.037037,
    braking_force = 2,
    friction_force = 0.4,
    air_resistance = 0.012,
    connection_distance = 3,
    joint_distance = 4,
    energy_per_hit_point = 6,
    resistances = {
      { type = "impact", decrease = 40, percent = 80 },
      { type = "poison", decrease = 40, percent = 80 },
      { type = "fire", decrease = 20, percent = 50 },
      { type = "physical", decrease = 20, percent = 20 },
      { type = "explosion", decrease = 20, percent = 20 }
    },
    back_light = data.raw["fluid-wagon"]["fluid-wagon"].back_light,
    stand_by_light = data.raw["fluid-wagon"]["fluid-wagon"].stand_by_light,
    color = {r = 0.95, g = 0.75, b = 0.75, a = 1},
    minimap_representation = data.raw["fluid-wagon"]["fluid-wagon"].minimap_representation,
    selected_minimap_representation = data.raw["fluid-wagon"]["fluid-wagon"].selected_minimap_representation,
    wheels = data.raw["fluid-wagon"]["fluid-wagon"].wheels,
    drive_over_tie_trigger = data.raw["fluid-wagon"]["fluid-wagon"].drive_over_tie_trigger,
    tie_distance = 50,
    working_sound = data.raw["fluid-wagon"]["fluid-wagon"].working_sound,
    crash_trigger = data.raw["fluid-wagon"]["fluid-wagon"].crash_trigger,
    impact_category = data.raw["fluid-wagon"]["fluid-wagon"].impact_category,
    water_reflection = data.raw["fluid-wagon"]["fluid-wagon"].water_reflection,
    --sound_minimum_speed = 0.1,
    pictures = data.raw["fluid-wagon"]["nullius-fluid-wagon-1"].pictures
  },

  {
    type = "fluid-wagon",
    name = "nullius-fluid-wagon-3",
    icons = data.raw["item-with-entity-data"]["nullius-fluid-wagon-3"].icons,
    flags = {"placeable-neutral", "player-creation", "placeable-off-grid"},
    minable = {mining_time = 1, result = "nullius-fluid-wagon-3"},
    mined_sound = {filename = "__core__/sound/deconstruct-large.ogg", volume = 0.8},
    max_health = 1000,
    capacity = 250000,
    corpse = "fluid-wagon-remnants",
    dying_explosion = "fluid-wagon-explosion",
    fast_replaceable_group = "fluid-wagon",
    collision_box = {{-0.6, -2.4}, {0.6, 2.4}},
    selection_box = {{-1, -2.703125}, {1, 3.296875}},
    damaged_trigger_effect = data.raw["fluid-wagon"]["fluid-wagon"].damaged_trigger_effect,
    vertical_selection_shift = -0.796875,
    weight = 1800,
    max_speed = 2.037037,
    braking_force = 4,
    friction_force = 0.6,
    air_resistance = 0.018,
    connection_distance = 3,
    joint_distance = 4,
    energy_per_hit_point = 6,
    resistances = {
      { type = "impact", decrease = 40, percent = 80 },
      { type = "poison", decrease = 40, percent = 80 },
      { type = "fire", decrease = 20, percent = 50 },
      { type = "physical", decrease = 20, percent = 20 },
      { type = "explosion", decrease = 20, percent = 20 }
    },
    back_light = data.raw["fluid-wagon"]["fluid-wagon"].back_light,
    stand_by_light = data.raw["fluid-wagon"]["fluid-wagon"].stand_by_light,
    color = {r = 0.8, g = 0.8, b = 0.85, a = 1},
    minimap_representation = data.raw["fluid-wagon"]["fluid-wagon"].minimap_representation,
    selected_minimap_representation = data.raw["fluid-wagon"]["fluid-wagon"].selected_minimap_representation,
    wheels = data.raw["fluid-wagon"]["fluid-wagon"].wheels,
    drive_over_tie_trigger = data.raw["fluid-wagon"]["fluid-wagon"].drive_over_tie_trigger,
    tie_distance = 50,
    working_sound = data.raw["fluid-wagon"]["fluid-wagon"].working_sound,
    crash_trigger = data.raw["fluid-wagon"]["fluid-wagon"].crash_trigger,
    impact_category = data.raw["fluid-wagon"]["fluid-wagon"].impact_category,
    water_reflection = data.raw["fluid-wagon"]["fluid-wagon"].water_reflection,
    --sound_minimum_speed = 0.1,
    pictures = data.raw["fluid-wagon"]["nullius-fluid-wagon-1"].pictures
  },

  {
    type = "artillery-wagon",
    name = "nullius-drone-carrier-1",
    icons = data.raw["item-with-entity-data"]["nullius-drone-carrier-1"].icons,
    flags = {"placeable-neutral", "player-creation", "placeable-off-grid"},
    inventory_size = 3,
    ammo_stack_limit = 10,
    minable = {mining_time = 1.2, result = "nullius-drone-carrier-1"},
    mined_sound = {filename = "__core__/sound/deconstruct-large.ogg", volume = 0.8},
    max_health = 800,
    corpse = "artillery-wagon-remnants",
    dying_explosion = "artillery-wagon-explosion",
    collision_box = {{-0.6, -2.4}, {0.6, 2.4}},
    selection_box = {{-1, -2.703125}, {1, 3.296875}},
    damaged_trigger_effect = data.raw["artillery-wagon"]["artillery-wagon"].damaged_trigger_effect,
    vertical_selection_shift = -0.796875,
    weight = 2000,
    max_speed = 1.48148148,
    braking_force = 3,
    friction_force = 0.4,
    air_resistance = 0.015,
    connection_distance = 3,
    joint_distance = 4,
    energy_per_hit_point = 3,
    gun = "nullius-drone-cannon",
    turret_rotation_speed = 0.002,
    turn_after_shooting_cooldown = 60,
    cannon_parking_frame_count = 8,
    cannon_parking_speed = 0.25,
    manual_range_modifier = 200,
    resistances = {
      { type = "impact", decrease = 40, percent = 60 },
      { type = "poison", decrease = 40, percent = 60 },
      { type = "fire", decrease = 10, percent = 20 },
      { type = "physical", decrease = 20, percent = 20 },
      { type = "explosion", decrease = 50, percent = 80 }
    },
    back_light = data.raw["artillery-wagon"]["artillery-wagon"].back_light,
    stand_by_light = data.raw["artillery-wagon"]["artillery-wagon"].stand_by_light,
    color = {r = 0.43, g = 0.23, b = 0, a = 0.5},
    
    cannon_barrel_pictures = data.raw["artillery-wagon"]["artillery-wagon"].cannon_barrel_pictures,
    cannon_base_pictures = data.raw["artillery-wagon"]["artillery-wagon"].cannon_base_pictures,
    cannon_barrel_recoil_shiftings = data.raw["artillery-wagon"]["artillery-wagon"].cannon_barrel_recoil_shiftings,
    cannon_base_height = data.raw["artillery-wagon"]["artillery-wagon"].cannon_base_height,
    cannon_base_shift_when_vertical = data.raw["artillery-wagon"]["artillery-wagon"].cannon_base_shift_when_vertical,
    cannon_base_shift_when_horizontal = data.raw["artillery-wagon"]["artillery-wagon"].cannon_base_shift_when_horizontal,
    
    minimap_representation = data.raw["artillery-wagon"]["artillery-wagon"].minimap_representation,
    selected_minimap_representation = data.raw["artillery-wagon"]["artillery-wagon"].selected_minimap_representation,
    wheels = data.raw["artillery-wagon"]["artillery-wagon"].wheels,
    drive_over_tie_trigger = data.raw["artillery-wagon"]["artillery-wagon"].drive_over_tie_trigger,
    cannon_barrel_light_direction = {0.5976251, 0.0242053, -0.8014102},
    tie_distance = 50,
    working_sound = data.raw["artillery-wagon"]["artillery-wagon"].working_sound,
    crash_trigger = data.raw["artillery-wagon"]["artillery-wagon"].crash_trigger,
    open_sound = data.raw["artillery-wagon"]["artillery-wagon"].open_sound,
    close_sound = data.raw["artillery-wagon"]["artillery-wagon"].close_sound,
    impact_category = data.raw["artillery-wagon"]["artillery-wagon"].impact_category,
    water_reflection = data.raw["artillery-wagon"]["artillery-wagon"].water_reflection,
    rotating_sound = { sound = { filename = "__base__/sound/fight/artillery-rotation-loop.ogg", volume = 0.2}, stopped_sound = { filename = "__base__/sound/fight/artillery-rotation-stop.ogg" }},
    --sound_minimum_speed = 0.1,

    pictures = {
      slope_angle_between_frames = data.raw["artillery-wagon"]["artillery-wagon"].pictures.slope_angle_between_frames,
      rotated = {
        layers = {
          util.sprite_load("__base__/graphics/entity/artillery-wagon/artillery-wagon-base",
            {
              dice = 4,
              priority = "very-low",
              allow_low_quality_rotation = true,
              direction_count = 256,
              scale = 0.5,
              usage = "train",
              tint = { 0.7, 0.7, 0.9 },
            }
          ),
          util.sprite_load("__base__/graphics/entity/artillery-wagon/artillery-wagon-base",
            {
              dice = 4,
              priority = "very-low",
              allow_low_quality_rotation = true,
              draw_as_shadow = true,
              direction_count = 256,
              scale = 0.5,
              usage = "train",
              tint = { 0.7, 0.7, 0.9 }
            }
          ),
          data.raw["artillery-wagon"]["artillery-wagon"].pictures.rotated.layers[2]
        }
      },
      sloped = e_rails(function()
        local sprites = util.table.deepcopy(data.raw["artillery-wagon"]["artillery-wagon"].pictures.sloped)
        sprites.layers[1].tint = {0.7, 0.7, 0.9}
        sprites.layers[2].tint = {0.7, 0.7, 0.9}
        return sprites
      end)
    }
  },

  {
    type = "artillery-wagon",
    name = "nullius-drone-carrier-2",
    icons = data.raw["item-with-entity-data"]["nullius-drone-carrier-2"].icons,
    flags = {"placeable-neutral", "player-creation", "placeable-off-grid"},
    inventory_size = 5,
    ammo_stack_limit = 10,
    minable = {mining_time = 1.5, result = "nullius-drone-carrier-2"},
    mined_sound = {filename = "__core__/sound/deconstruct-large.ogg", volume = 0.8},
    max_health = 1000,
    corpse = "artillery-wagon-remnants",
    dying_explosion = "artillery-wagon-explosion",
    collision_box = {{-0.6, -2.4}, {0.6, 2.4}},
    selection_box = {{-1, -2.703125}, {1, 3.296875}},
    damaged_trigger_effect = data.raw["artillery-wagon"]["artillery-wagon"].damaged_trigger_effect,
    vertical_selection_shift = -0.796875,
    weight = 3000,
    max_speed = 2.037037,
    braking_force = 5,
    friction_force = 0.6,
    air_resistance = 0.025,
    connection_distance = 3,
    joint_distance = 4,
    energy_per_hit_point = 3,
    gun = "nullius-drone-cannon",
    turret_rotation_speed = 0.002,
    turn_after_shooting_cooldown = 60,
    cannon_parking_frame_count = 8,
    cannon_parking_speed = 0.25,
    manual_range_modifier = 300,
    resistances = {
      { type = "impact", decrease = 40, percent = 60 },
      { type = "poison", decrease = 40, percent = 60 },
      { type = "fire", decrease = 10, percent = 20 },
      { type = "physical", decrease = 20, percent = 20 },
      { type = "explosion", decrease = 50, percent = 80 }
    },
    back_light = data.raw["artillery-wagon"]["artillery-wagon"].back_light,
    stand_by_light = data.raw["artillery-wagon"]["artillery-wagon"].stand_by_light,
    color = {r = 0.43, g = 0.23, b = 0, a = 0.5},
    
    pictures = data.raw["artillery-wagon"]["artillery-wagon"].pictures,
    cannon_barrel_pictures = data.raw["artillery-wagon"]["artillery-wagon"].cannon_barrel_pictures,
    cannon_base_pictures = data.raw["artillery-wagon"]["artillery-wagon"].cannon_base_pictures,
    cannon_barrel_recoil_shiftings = data.raw["artillery-wagon"]["artillery-wagon"].cannon_barrel_recoil_shiftings,
    cannon_base_height = data.raw["artillery-wagon"]["artillery-wagon"].cannon_base_height,
    cannon_base_shift_when_vertical = data.raw["artillery-wagon"]["artillery-wagon"].cannon_base_shift_when_vertical,
    cannon_base_shift_when_horizontal = data.raw["artillery-wagon"]["artillery-wagon"].cannon_base_shift_when_horizontal,
    
    minimap_representation = data.raw["artillery-wagon"]["artillery-wagon"].minimap_representation,
    selected_minimap_representation = data.raw["artillery-wagon"]["artillery-wagon"].selected_minimap_representation,
    wheels = data.raw["artillery-wagon"]["artillery-wagon"].wheels,
    drive_over_tie_trigger = data.raw["artillery-wagon"]["artillery-wagon"].drive_over_tie_trigger,
    cannon_barrel_light_direction = {0.5976251, 0.0242053, -0.8014102},
    tie_distance = 50,
    working_sound = data.raw["artillery-wagon"]["artillery-wagon"].working_sound,
    crash_trigger = data.raw["artillery-wagon"]["artillery-wagon"].crash_trigger,
    open_sound = data.raw["artillery-wagon"]["artillery-wagon"].open_sound,
    close_sound = data.raw["artillery-wagon"]["artillery-wagon"].close_sound,
    impact_category = data.raw["artillery-wagon"]["artillery-wagon"].impact_category,
    water_reflection = data.raw["artillery-wagon"]["artillery-wagon"].water_reflection,
    rotating_sound = { sound = { filename = "__base__/sound/fight/artillery-rotation-loop.ogg", volume = 0.2 },stopped_sound = { filename = "__base__/sound/fight/artillery-rotation-stop.ogg" }},
    --sound_minimum_speed = 0.1
  }
})
