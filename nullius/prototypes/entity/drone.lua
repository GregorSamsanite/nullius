local ICONPATH = "__nullius__/graphics/icons/"
local ENTITYPATH = "__nullius__/graphics/entity/"

local BASEENTITY = "__base__/graphics/entity/"

data:extend({
  {
    type = "artillery-turret",
    name = "nullius-drone-launcher-1",
    icons = data.raw.item["nullius-drone-launcher-1"].icons,
    flags = {"placeable-neutral", "placeable-player", "player-creation"},
    inventory_size = 3,
    ammo_stack_limit = 10,
    automated_ammo_count = 10,
    alert_when_attacking = false,
    minable = {mining_time = 1.5, result = "nullius-drone-launcher-1"},
	fast_replaceable_group = "drone-launcher",
    next_upgrade = "nullius-drone-launcher-2",
    open_sound = data.raw["artillery-turret"]["artillery-turret"].open_sound,
    close_sound = data.raw["artillery-turret"]["artillery-turret"].close_sound,
    mined_sound = {filename = "__core__/sound/deconstruct-large.ogg",volume = 0.8},
    rotating_sound = { sound = { filename = "__base__/sound/fight/artillery-rotation-loop.ogg", volume = 0.6 }},
    rotating_stopped_sound = { filename = "__base__/sound/fight/artillery-rotation-stop.ogg" },
    max_health = 1000,
    corpse = "artillery-turret-remnants",
    dying_explosion = "artillery-turret-explosion",
    collision_box = {{-1.25, -1.25}, {1.25, 1.25}},
    selection_box = {{-1.5, -1.5}, {1.5, 1.5}},
    damaged_trigger_effect = data.raw["artillery-turret"]["artillery-turret"].damaged_trigger_effect,
    gun = "nullius-drone-cannon",
    turret_rotation_speed = 0.002,
    turn_after_shooting_cooldown = 60,
    cannon_parking_frame_count = 8,
    cannon_parking_speed = 0.25,
    manual_range_modifier = 200,
    resistances = {
      { type = "fire", decrease = 20, percent = 80 },
      { type = "physical", decrease = 20, percent = 50 },
      { type = "impact", decrease = 100, percent = 90 },
      { type = "explosion", decrease = 50, percent = 90 }
    },
    cannon_barrel_recoil_shiftings = data.raw["artillery-turret"]["artillery-turret"].cannon_barrel_recoil_shiftings,
    cannon_barrel_light_direction = {0.5976251, 0.0242053, -0.8014102},
    cannon_barrel_recoil_shiftings_load_correction_matrix = data.raw["artillery-turret"]["artillery-turret"].cannon_barrel_recoil_shiftings_load_correction_matrix,
    vehicle_impact_sound = data.raw["artillery-turret"]["artillery-turret"].vehicle_impact_sound,
    water_reflection = data.raw["artillery-turret"]["artillery-turret"].water_reflection,
    base_shift = util.by_pixel(0, -22),
    base_picture_render_layer = "lower-object-above-shadow",
    cannon_barrel_pictures = data.raw["artillery-turret"]["artillery-turret"].cannon_barrel_pictures,
    cannon_base_pictures = data.raw["artillery-turret"]["artillery-turret"].cannon_base_pictures,

    base_picture = {
      layers = {
        {
          filename = BASEENTITY .. "artillery-turret/artillery-turret-base.png",
          priority = "high",
          width = 104,
          height = 100,
          direction_count = 1,
          frame_count = 1,
          shift = util.by_pixel(-0, 22),
          tint = {0.7, 0.7, 0.9},
          hr_version = {
            filename = BASEENTITY .. "artillery-turret/hr-artillery-turret-base.png",
            priority = "high",
            line_length = 1,
            width = 207,
            height = 199,
            frame_count = 1,
            direction_count = 1,
            shift = util.by_pixel(-0, 22),
            scale = 0.5,
            tint = {0.7, 0.7, 0.9}
          }
        },
        {
          filename = BASEENTITY .. "artillery-turret/artillery-turret-base-shadow.png",
          priority = "high",
          line_length = 1,
          width = 138,
          height = 75,
          frame_count = 1,
          direction_count = 1,
          shift = util.by_pixel(18, 38),
          draw_as_shadow = true,
          hr_version = {
            filename = BASEENTITY .. "artillery-turret/hr-artillery-turret-base-shadow.png",
            priority = "high",
            line_length = 1,
            width = 277,
            height = 149,
            frame_count = 1,
            direction_count = 1,
            shift = util.by_pixel(18, 38),
            draw_as_shadow = true,
            scale = 0.5
          }
        }
      }
    }
  },

  {
    type = "artillery-turret",
    name = "nullius-drone-launcher-2",
    icons = data.raw.item["nullius-drone-launcher-2"].icons,
    flags = {"placeable-neutral", "placeable-player", "player-creation"},
    inventory_size = 5,
    ammo_stack_limit = 10,
    automated_ammo_count = 10,
    alert_when_attacking = false,
    minable = {mining_time = 2, result = "nullius-drone-launcher-2"},
	fast_replaceable_group = "drone-launcher",
    open_sound = data.raw["artillery-turret"]["artillery-turret"].open_sound,
    close_sound = data.raw["artillery-turret"]["artillery-turret"].close_sound,
    mined_sound = {filename = "__core__/sound/deconstruct-large.ogg",volume = 0.8},
    rotating_sound = { sound = { filename = "__base__/sound/fight/artillery-rotation-loop.ogg", volume = 0.6 }},
    rotating_stopped_sound = { filename = "__base__/sound/fight/artillery-rotation-stop.ogg" },
    max_health = 1200,
    corpse = "artillery-turret-remnants",
    dying_explosion = "artillery-turret-explosion",
    collision_box = {{-1.25, -1.25}, {1.25, 1.25}},
    selection_box = {{-1.5, -1.5}, {1.5, 1.5}},
    damaged_trigger_effect = data.raw["artillery-turret"]["artillery-turret"].damaged_trigger_effect,
    gun = "nullius-drone-cannon",
    turret_rotation_speed = 0.002,
    turn_after_shooting_cooldown = 60,
    cannon_parking_frame_count = 8,
    cannon_parking_speed = 0.25,
    manual_range_modifier = 300,
    resistances = {
      { type = "fire", decrease = 20, percent = 80 },
      { type = "physical", decrease = 20, percent = 50 },
      { type = "impact", decrease = 100, percent = 90 },
      { type = "explosion", decrease = 50, percent = 90 }
    },
    cannon_barrel_recoil_shiftings = data.raw["artillery-turret"]["artillery-turret"].cannon_barrel_recoil_shiftings,
    cannon_barrel_light_direction = {0.5976251, 0.0242053, -0.8014102},
    cannon_barrel_recoil_shiftings_load_correction_matrix = data.raw["artillery-turret"]["artillery-turret"].cannon_barrel_recoil_shiftings_load_correction_matrix,
    vehicle_impact_sound = data.raw["artillery-turret"]["artillery-turret"].vehicle_impact_sound,
    water_reflection = data.raw["artillery-turret"]["artillery-turret"].water_reflection,
    base_shift = util.by_pixel(0, -22),
    base_picture_render_layer = "lower-object-above-shadow",
    cannon_barrel_pictures = data.raw["artillery-turret"]["artillery-turret"].cannon_barrel_pictures,
    cannon_base_pictures = data.raw["artillery-turret"]["artillery-turret"].cannon_base_pictures,

    base_picture = {
      layers = {
        {
          filename = BASEENTITY .. "artillery-turret/artillery-turret-base.png",
          priority = "high",
          width = 104,
          height = 100,
          direction_count = 1,
          frame_count = 1,
          shift = util.by_pixel(-0, 22),
          hr_version = {
            filename = BASEENTITY .. "artillery-turret/hr-artillery-turret-base.png",
            priority = "high",
            line_length = 1,
            width = 207,
            height = 199,
            frame_count = 1,
            direction_count = 1,
            shift = util.by_pixel(-0, 22),
            scale = 0.5
          }
        },
        {
          filename = BASEENTITY .. "artillery-turret/artillery-turret-base-shadow.png",
          priority = "high",
          line_length = 1,
          width = 138,
          height = 75,
          frame_count = 1,
          direction_count = 1,
          shift = util.by_pixel(18, 38),
          draw_as_shadow = true,
          hr_version = {
            filename = BASEENTITY .. "artillery-turret/hr-artillery-turret-base-shadow.png",
            priority = "high",
            line_length = 1,
            width = 277,
            height = 149,
            frame_count = 1,
            direction_count = 1,
            shift = util.by_pixel(18, 38),
            draw_as_shadow = true,
            scale = 0.5
          }
        }
      }
    }
  },

  {
    type = "artillery-projectile",
    name = "nullius-scout-drone-projectile-1",
    flags = {"not-on-map"},
    reveal_map = true,
    map_color = {r=1, g=1, b=0},
    chart_picture = data.raw["artillery-projectile"]["artillery-projectile"].chart_picture,
    height_from_ground = 280 / 64,

    picture = {
      filename = BASEENTITY .. "distractor-robot/hr-distractor-robot.png",
      width = 72,
      height = 62,
      scale = 0.5
    },
    shadow = {
      filename = BASEENTITY .. "distractor-robot/hr-distractor-robot-shadow.png",
      width = 96,
      height = 59,
      scale = 0.5
    },
    action = {
      type = "direct",
      action_delivery = {
        type = "instant",
        target_effects = {
          {
            type = "script",
            effect_id = "nullius-scout-drone-effect-1"
          }
        }
      }
    }
  }
})

data:extend({
  {
    type = "artillery-projectile",
    name = "nullius-scout-drone-projectile-2",
    flags = {"not-on-map"},
    reveal_map = true,
    map_color = {r=1, g=1, b=0},
    chart_picture = data.raw["artillery-projectile"]["artillery-projectile"].chart_picture,
    height_from_ground = 280 / 64,
    picture = data.raw["artillery-projectile"]["nullius-scout-drone-projectile-1"].picture,
    shadow = data.raw["artillery-projectile"]["nullius-scout-drone-projectile-1"].shadow,

    action = {
      type = "direct",
      action_delivery = {
        type = "instant",
        target_effects = {
          {
            type = "script",
            effect_id = "nullius-scout-drone-effect-2"
          }
        }
      }
    }
  },

  {
    type = "artillery-projectile",
    name = "nullius-demolition-drone-projectile",
    flags = {"not-on-map"},
    reveal_map = true,
    map_color = {r=1, g=1, b=0},
    chart_picture = data.raw["artillery-projectile"]["artillery-projectile"].chart_picture,
    height_from_ground = 280 / 64,

    picture = data.raw["artillery-projectile"]["nullius-scout-drone-projectile-1"].picture,
    shadow = data.raw["artillery-projectile"]["nullius-scout-drone-projectile-1"].shadow,

    action = {
      type = "direct",
      action_delivery = {
        type = "instant",
        target_effects = {
          data.raw.projectile["atomic-rocket"].action.action_delivery.target_effects[3],
          data.raw.projectile["atomic-rocket"].action.action_delivery.target_effects[4],
          data.raw.projectile["atomic-rocket"].action.action_delivery.target_effects[5],
          data.raw.projectile["atomic-rocket"].action.action_delivery.target_effects[6],
          data.raw.projectile["atomic-rocket"].action.action_delivery.target_effects[9],
          {
            type = "nested-result",
            action = {
              type = "area",
              show_in_tooltip = false,
              target_entities = false,
              trigger_from_target = true,
              repeat_count = 1000,
              radius = 45,
              action_delivery = {
                type = "projectile",
                projectile = "atomic-bomb-wave-spawns-cluster-nuke-explosion",
                starting_speed = 0.5,
                starting_speed_deviation = 0.1
              }
            }
          },
          data.raw.projectile["atomic-rocket"].action.action_delivery.target_effects[15],
          data.raw.projectile["atomic-rocket"].action.action_delivery.target_effects[16],
          {
            type = "nested-result",
            action = {
              type = "area",
              show_in_tooltip = false,
              target_entities = false,
              trigger_from_target = true,
              repeat_count = 300,
              radius = 45,
              action_delivery = {
                type = "projectile",
                projectile = "atomic-bomb-wave-spawns-nuclear-smoke",
                starting_speed = 0.9,
                starting_speed_deviation = 0.1
              }
            }
          },
          data.raw.projectile["atomic-rocket"].action.action_delivery.target_effects[18],
          {
            type = "script",
            effect_id = "nullius-demolition-drone-effect"
          }
        }
      }
    }
  }
})

data:extend({
  {
    type = "artillery-projectile",
    name = "nullius-excavation-drone-projectile",
    flags = {"not-on-map"},
    reveal_map = true,
    map_color = {r=1, g=1, b=0},
    chart_picture = data.raw["artillery-projectile"]["artillery-projectile"].chart_picture,
    height_from_ground = 280 / 64,
    picture = data.raw["artillery-projectile"]["nullius-demolition-drone-projectile"].picture,
    shadow = data.raw["artillery-projectile"]["nullius-demolition-drone-projectile"].shadow,

    action = {
      type = "direct",
      action_delivery = {
        type = "instant",
        target_effects = {
          data.raw["artillery-projectile"]["nullius-demolition-drone-projectile"].action.action_delivery.target_effects[1],
          data.raw["artillery-projectile"]["nullius-demolition-drone-projectile"].action.action_delivery.target_effects[2],
          data.raw["artillery-projectile"]["nullius-demolition-drone-projectile"].action.action_delivery.target_effects[3],
          data.raw["artillery-projectile"]["nullius-demolition-drone-projectile"].action.action_delivery.target_effects[4],
          data.raw["artillery-projectile"]["nullius-demolition-drone-projectile"].action.action_delivery.target_effects[5],
          data.raw["artillery-projectile"]["nullius-demolition-drone-projectile"].action.action_delivery.target_effects[6],
          data.raw["artillery-projectile"]["nullius-demolition-drone-projectile"].action.action_delivery.target_effects[7],
          data.raw["artillery-projectile"]["nullius-demolition-drone-projectile"].action.action_delivery.target_effects[8],
          data.raw["artillery-projectile"]["nullius-demolition-drone-projectile"].action.action_delivery.target_effects[9],
          data.raw["artillery-projectile"]["nullius-demolition-drone-projectile"].action.action_delivery.target_effects[10],
          {
            type = "script",
            effect_id = "nullius-excavation-drone-effect"
          }
        }
      }
    }
  }
})

local exs = util.table.deepcopy(data.raw["artillery-projectile"]["nullius-excavation-drone-projectile"])
exs.name = "nullius-shallow-excavation-drone-projectile"
exs.action.action_delivery.target_effects[11] = {
  type = "script",
  effect_id = "nullius-shallow-excavation-drone-effect"
}
data:extend({ exs })


local function create_flare(base_name, suffix)
  local prefix = "nullius-"..base_name
  if (suffix ~= nil) then
    suffix = "-"..suffix
  else
    suffix = ""
  end
  data:extend({
    {
      type = "artillery-flare",
      name = prefix.."-flare"..suffix,
      icons = data.raw.capsule[prefix.."-remote"..suffix].icons,
      shot_category = prefix.."-drone"..suffix,
      flags = {"placeable-off-grid", "not-on-map"},
      map_color = {r=1, g=0.5, b=0},
      life_time = 60 * 60,
      initial_height = 0,
      initial_vertical_speed = 0,
      initial_frame_speed = 1,
      shots_per_flare = 1,
      early_death_ticks = 3 * 60,
      pictures = data.raw["artillery-flare"]["artillery-flare"].pictures
    }
  })
end


local function create_projectile(base_name, suffix, drone_picture, drone_shadow)
  local prefix = "nullius-"..base_name
  if (drone_picture == nil) then
    drone_picture = {
      filename = BASEENTITY .. "destroyer-robot/hr-destroyer-robot.png",
      width = 88,
      height = 77,
      x = 264,
      scale = 0.5
    }
  end
  if (drone_shadow == nil) then
    drone_shadow = {
      filename = BASEENTITY .. "destroyer-robot/hr-destroyer-robot-shadow.png",
      width = 108,
      height = 66,
      x = 324,
      scale = 0.5
    }
  end

  data:extend({
    {
      type = "artillery-projectile",
      name = prefix.."-drone-projectile-"..suffix,
      flags = {"not-on-map"},
      reveal_map = true,
      map_color = {r=1, g=1, b=0},
      chart_picture = data.raw["artillery-projectile"]["artillery-projectile"].chart_picture,
      height_from_ground = 280 / 64,
      drone_picture,
      drone_shadow,

      action = {
        type = "direct",
        action_delivery = {
          type = "instant",
          target_effects = {
            data.raw.projectile["atomic-rocket"].action.action_delivery.target_effects[6],
            data.raw.projectile["atomic-rocket"].action.action_delivery.target_effects[9],
            {
              type = "nested-result",
              action = {
                type = "area",
                show_in_tooltip = false,
                target_entities = false,
                trigger_from_target = true,
                repeat_count = 1000,
                radius = 45,
                action_delivery = {
                  type = "projectile",
                  projectile = "atomic-bomb-wave-spawns-cluster-nuke-explosion",
                  starting_speed = 0.5,
                  starting_speed_deviation = 0.1
                }
              }
            },
            {
              type = "nested-result",
              action = {
                type = "area",
                show_in_tooltip = false,
                target_entities = false,
                trigger_from_target = true,
                repeat_count = 300,
                radius = 45,
                action_delivery = {
                  type = "projectile",
                  projectile = "atomic-bomb-wave-spawns-nuclear-smoke",
                  starting_speed = 0.9,
                  starting_speed_deviation = 0.1
                }
              }
            },
            data.raw.projectile["atomic-rocket"].action.action_delivery.target_effects[18],
            {
              type = "script",
              effect_id = prefix.."-drone-effect-"..suffix
            }
          }
        }
      }
    }
  })
end

local function create_terraform(base_name, suffix)
  local picture = {
    filename = BASEENTITY .. "destroyer-robot/hr-destroyer-robot.png",
    width = 88,
    height = 77,
    x = 264,
    scale = 0.5
  }
  local shadow = {
    filename = BASEENTITY .. "destroyer-robot/hr-destroyer-robot-shadow.png",
    width = 108,
    height = 66,
    x = 324,
    scale = 0.5
  }
  create_flare(base_name, suffix)
  create_projectile(base_name, suffix, picture, shadow)
end

local function create_guide(suffix)
  local picture = data.raw["artillery-projectile"]["nullius-scout-drone-projectile-1"].picture
  local shadow = data.raw["artillery-projectile"]["nullius-scout-drone-projectile-1"].shadow
  create_flare("guide", suffix)
  create_projectile("guide", suffix.."-1", picture, shadow)
  create_projectile("guide", suffix.."-2", picture, shadow)
end

local function create_farmer(base_name)
  create_flare(base_name)
  local prefix = "nullius-"..base_name
  data:extend({
    {
      type = "artillery-projectile",
      name = prefix.."-drone-projectile",
      flags = {"not-on-map"},
      reveal_map = true,
      map_color = {r=1, g=1, b=0},
      chart_picture = data.raw["artillery-projectile"]["artillery-projectile"].chart_picture,
      height_from_ground = 280 / 64,
      picture = {
        filename = BASEENTITY .. "defender-robot/hr-defender-robot.png",
        width = 56,
        height = 59,
        x = 392,
        scale = 0.6
      },
      shadow = {
        filename = BASEENTITY .. "defender-robot/hr-defender-robot-shadow.png",
        width = 88,
        height = 50,
        x = 616,
        scale = 0.6
      },
      action = {
        type = "direct",
        action_delivery = {
          type = "instant",
          target_effects = {
            {
              type = "script",
              effect_id = prefix.."-drone-effect"
            }
          }
        }
      }
    }
  })
end


create_flare("scout")
create_flare("demolition")
create_flare("excavation")
create_flare("shallow-excavation")

create_terraform("terraforming", "grey")
create_terraform("terraforming", "tan")
create_terraform("terraforming", "brown")
create_terraform("terraforming", "red")
create_terraform("terraforming", "beige")
create_terraform("paving", "grey")
create_terraform("paving", "white")
create_terraform("paving", "red")
create_terraform("paving", "blue")
create_terraform("paving", "yellow")
create_terraform("paving", "green")
create_terraform("paving", "purple")
create_terraform("paving", "brown")
create_terraform("paving", "black")
create_terraform("paving", "hazard")

create_guide("iron")
create_guide("bauxite")
create_guide("sandstone")
create_guide("limestone")
create_guide("copper")
create_guide("uranium")

create_farmer("algaculture")
create_farmer("horticulture")
create_farmer("entomology")
create_farmer("arboriculture")
create_farmer("aquaculture")
create_farmer("husbandry")
create_farmer("sequestration-coal")
create_farmer("sequestration-petroleum")
