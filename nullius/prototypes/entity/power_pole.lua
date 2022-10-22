local ICONPATH = "__nullius__/graphics/icons/"
local ENTITYPATH = "__nullius__/graphics/entity/"

local BASEENTITY = "__base__/graphics/entity/"

data:extend({
  {
    type = "electric-pole",
    name = "nullius-power-pole-3",
    icons = data.raw.item["nullius-power-pole-3"].icons,
    flags = {"placeable-neutral", "player-creation", "fast-replaceable-no-build-while-moving"},
    minable = {mining_time = 1.2, result = "nullius-power-pole-3"},
    max_health = 125,
    maximum_wire_distance = 14.5,
    supply_area_distance = 5.5,
    fast_replaceable_group = "power-pole",
    next_upgrade = "nullius-power-pole-4",
    resistances = {{ type = "impact", decrease = 100, percent = 90 }},
    corpse = "medium-electric-pole-remnants",
    dying_explosion = "medium-electric-pole-explosion",
    track_coverage_during_build_by_moving = true,
    collision_box = {{-0.15, -0.15}, {0.15, 0.15}},
    selection_box = {{-0.5, -0.5}, {0.5, 0.5}},
    damaged_trigger_effect = data.raw["electric-pole"]["medium-electric-pole"].damaged_trigger_effect,
    drawing_box = {{-0.5, -2.8}, {0.5, 0.5}},
    vehicle_impact_sound = data.raw["electric-pole"]["medium-electric-pole"].vehicle_impact_sound,
    open_sound = data.raw["electric-pole"]["medium-electric-pole"].open_sound,
    close_sound = data.raw["electric-pole"]["medium-electric-pole"].close_sound,
    connection_points = data.raw["electric-pole"]["medium-electric-pole"].connection_points,
    radius_visualisation_picture = data.raw["electric-pole"]["medium-electric-pole"].radius_visualisation_picture,
    water_reflection = data.raw["electric-pole"]["medium-electric-pole"].water_reflection,

    pictures = {
      layers = {
        {
          filename = ENTITYPATH .. "poles/hr-pole3.png",
          priority = "extra-high",
          width = 84,
          height = 252,
          direction_count = 4,
          shift = util.by_pixel(3.5, -44),
          scale = 0.5
        },
        data.raw["electric-pole"]["medium-electric-pole"].pictures.layers[2]
      }
    }
  },

  {
    type = "electric-pole",
    name = "nullius-power-pole-4",
    icons = data.raw.item["nullius-power-pole-4"].icons,
    flags = {"placeable-neutral", "player-creation", "fast-replaceable-no-build-while-moving"},
    minable = {mining_time = 1.5, result = "nullius-power-pole-4"},
    max_health = 150,
    maximum_wire_distance = 17.5,
    supply_area_distance = 6.5,
    fast_replaceable_group = "power-pole",
    resistances = {{ type = "impact", decrease = 100, percent = 90 }},
    corpse = "medium-electric-pole-remnants",
    dying_explosion = "medium-electric-pole-explosion",
    track_coverage_during_build_by_moving = true,
    collision_box = {{-0.15, -0.15}, {0.15, 0.15}},
    selection_box = {{-0.5, -0.5}, {0.5, 0.5}},
    damaged_trigger_effect = data.raw["electric-pole"]["medium-electric-pole"].damaged_trigger_effect,
    drawing_box = {{-0.5, -2.8}, {0.5, 0.5}},
    vehicle_impact_sound = data.raw["electric-pole"]["medium-electric-pole"].vehicle_impact_sound,
    open_sound = data.raw["electric-pole"]["medium-electric-pole"].open_sound,
    close_sound = data.raw["electric-pole"]["medium-electric-pole"].close_sound,
    connection_points = data.raw["electric-pole"]["medium-electric-pole"].connection_points,
    radius_visualisation_picture = data.raw["electric-pole"]["medium-electric-pole"].radius_visualisation_picture,
    water_reflection = data.raw["electric-pole"]["medium-electric-pole"].water_reflection,
    pictures = util.table.deepcopy(data.raw["electric-pole"]["medium-electric-pole"].pictures)
  },

  {
    type = "electric-pole",
    name = "nullius-pylon-2",
    icons = data.raw.item["nullius-pylon-2"].icons,
    flags = {"placeable-neutral", "player-creation", "fast-replaceable-no-build-while-moving"},
    minable = {mining_time = 1.6, result = "nullius-pylon-2"},
    max_health = 200,
    maximum_wire_distance = 48.5,
    supply_area_distance = 3,
    fast_replaceable_group = "pylon",
    next_upgrade = "nullius-pylon-3",
    corpse = "big-electric-pole-remnants",
    dying_explosion = "big-electric-pole-explosion",
    resistances = {{ type = "impact", decrease = 100, percent = 90 }},
    collision_box = {{-0.65, -0.65}, {0.65, 0.65}},
    selection_box = {{-1, -1}, {1, 1}},
    damaged_trigger_effect = data.raw["electric-pole"]["big-electric-pole"].damaged_trigger_effect,
    drawing_box = {{-1, -3}, {1, 0.5}},

    vehicle_impact_sound = data.raw["electric-pole"]["big-electric-pole"].vehicle_impact_sound,
    open_sound = data.raw["electric-pole"]["big-electric-pole"].open_sound,
    close_sound = data.raw["electric-pole"]["big-electric-pole"].close_sound,
    connection_points = data.raw["electric-pole"]["big-electric-pole"].connection_points,
    radius_visualisation_picture = data.raw["electric-pole"]["big-electric-pole"].radius_visualisation_picture,
    water_reflection = data.raw["electric-pole"]["big-electric-pole"].water_reflection,
    pictures = {
      layers = {
        {
          filename = BASEENTITY .. "big-electric-pole/hr-big-electric-pole.png",
          priority = "extra-high",
          width = 148,
          height = 312,
          direction_count = 4,
          shift = util.by_pixel(0, -51),
          scale = 0.5
        },
        {
          filename = BASEENTITY .. "big-electric-pole/hr-big-electric-pole-shadow.png",
          priority = "extra-high",
          width = 374,
          height = 94,
          direction_count = 4,
          shift = util.by_pixel(60, 0),
          draw_as_shadow = true,
          scale = 0.5
        }
      }
    }
  },

  {
    type = "electric-pole",
    name = "nullius-pylon-3",
    icons = data.raw.item["nullius-pylon-3"].icons,
    flags = {"placeable-neutral", "player-creation", "fast-replaceable-no-build-while-moving"},
    minable = {mining_time = 2, result = "nullius-pylon-3"},
    max_health = 250,
    maximum_wire_distance = 64,
    supply_area_distance = 4,
    fast_replaceable_group = "pylon",
    corpse = "big-electric-pole-remnants",
    dying_explosion = "big-electric-pole-explosion",
    resistances = {{ type = "impact", decrease = 100, percent = 90 }},
    collision_box = {{-0.65, -0.65}, {0.65, 0.65}},
    selection_box = {{-1, -1}, {1, 1}},
    damaged_trigger_effect = data.raw["electric-pole"]["big-electric-pole"].damaged_trigger_effect,
    drawing_box = {{-1, -3}, {1, 0.5}},
    vehicle_impact_sound = data.raw["electric-pole"]["big-electric-pole"].vehicle_impact_sound,
    open_sound = data.raw["electric-pole"]["big-electric-pole"].open_sound,
    close_sound = data.raw["electric-pole"]["big-electric-pole"].close_sound,
    connection_points = data.raw["electric-pole"]["big-electric-pole"].connection_points,
    radius_visualisation_picture = data.raw["electric-pole"]["big-electric-pole"].radius_visualisation_picture,
    water_reflection = data.raw["electric-pole"]["big-electric-pole"].water_reflection,

    pictures = {
      layers = {
        {
          filename = ENTITYPATH .. "poles/large-pole-3-entity.png",
          priority = "extra-high",
          width = 148,
          height = 312,
          direction_count = 4,
          shift = util.by_pixel(0, -51),
          scale = 0.5
        },
        data.raw["electric-pole"]["big-electric-pole"].pictures.layers[2]
      }
    }
  },

  {
    type = "electric-pole",
    name = "nullius-substation-2",
    icons = data.raw.item["nullius-substation-2"].icons,
    flags = {"placeable-neutral", "player-creation"},
    minable = {mining_time = 2, result = "nullius-substation-2"},
    max_health = 300,
    maximum_wire_distance = 32.5,
    supply_area_distance = 16,
    fast_replaceable_group = "pylon",
    next_upgrade = "nullius-substation-3",
    corpse = "substation-remnants",
    dying_explosion = "substation-explosion",
    track_coverage_during_build_by_moving = true,
    resistances = {{ type = "impact", decrease = 100, percent = 90 }},
    collision_box = {{-0.65, -0.65}, {0.65, 0.65}},
    selection_box = {{-1, -1}, {1, 1}},
    drawing_box = {{-1, -3}, {1, 1}},
    damaged_trigger_effect = data.raw["electric-pole"]["substation"].damaged_trigger_effect,
    vehicle_impact_sound = data.raw["electric-pole"]["substation"].vehicle_impact_sound,
    open_sound = data.raw["electric-pole"]["substation"].open_sound,
    close_sound = data.raw["electric-pole"]["substation"].close_sound,
    working_sound = data.raw["electric-pole"]["substation"].working_sound,
    connection_points = data.raw["electric-pole"]["substation"].connection_points,
    radius_visualisation_picture = data.raw["electric-pole"]["substation"].radius_visualisation_picture,
    water_reflection = data.raw["electric-pole"]["substation"].water_reflection,
    pictures = util.table.deepcopy(data.raw["electric-pole"]["substation"].pictures)
  },

  {
    type = "electric-pole",
    name = "nullius-substation-3",
    icons = data.raw.item["nullius-substation-3"].icons,
    flags = {"placeable-neutral", "player-creation"},
    minable = {mining_time = 2.5, result = "nullius-substation-3"},
    max_health = 400,
    maximum_wire_distance = 40.5,
    supply_area_distance = 20,
    fast_replaceable_group = "pylon",
    corpse = "substation-remnants",
    dying_explosion = "substation-explosion",
    track_coverage_during_build_by_moving = true,
    resistances = {{ type = "impact", decrease = 100, percent = 90 }},
    collision_box = {{-0.65, -0.65}, {0.65, 0.65}},
    selection_box = {{-1, -1}, {1, 1}},
    drawing_box = {{-1, -3}, {1, 1}},
    damaged_trigger_effect = data.raw["electric-pole"]["substation"].damaged_trigger_effect,
    vehicle_impact_sound = data.raw["electric-pole"]["substation"].vehicle_impact_sound,
    open_sound = data.raw["electric-pole"]["substation"].open_sound,
    close_sound = data.raw["electric-pole"]["substation"].close_sound,
    working_sound = data.raw["electric-pole"]["substation"].working_sound,
    connection_points = data.raw["electric-pole"]["substation"].connection_points,
    radius_visualisation_picture = data.raw["electric-pole"]["substation"].radius_visualisation_picture,
    water_reflection = data.raw["electric-pole"]["substation"].water_reflection,

    pictures = {
      layers = {
        {
          filename = ENTITYPATH .. "poles/substation-3-entity.png",
          priority = "high",
          width = 138,
          height = 270,
          direction_count = 4,
          shift = util.by_pixel(0, 1-32),
          scale = 0.5
        },
        data.raw["electric-pole"]["substation"].pictures.layers[2]
      }
    }
  }
})