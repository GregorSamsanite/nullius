local ICONPATH = "__nullius__/graphics/icons/"
local ENTICONPATH = "__nullius__/graphics/icons/entity/"
local ENTITYPATH = "__nullius__/graphics/entity/"
local TURBINEP = ENTITYPATH .. "windturbine/"

-- Nullius wind turbine system is originally based on the windturbines mod by OwnlyMe
-- Unfortunately they withdrew support for it while Nullius was in development, and it's
-- no longer expected to be updated for 1.1+ compatibility, after Nullius was designed
-- to rely on it, so the graphics are replicated here.

for i=0,7 do
  for j=1,3 do
    local k = i + 1
    local scale = 0.4 + (j * 0.2)
    data:extend({
      {
        type = "animation",
        name = "nullius-wind-shadow-"..j.."-"..i,
        filename = TURBINEP .. "lds/angle"..k..".png",
        width = 400,
        height = 200,
        frame_count = 24,
        line_length = 5,
        shift = {3.5*scale, -2.6*scale},
        scale = 4*scale,
        draw_as_shadow = true,
        hr_version = {
          filename = TURBINEP .. "hds/angle"..k..".png",
          width = 800,
          height = 400,
          frame_count = 24,
          line_length = 5,
          shift = {3.5*scale,-2.6*scale},
          scale = 2*scale,
          draw_as_shadow = true,
        }
      },
      {
        type = "animation",
        name = "nullius-wind-blade-"..j.."-"..i,
        filename = TURBINEP .. "ld"..j.."/angle"..k..".png",
        width = 300,
        height = 400,
        frame_count = 24,
        line_length = 6,
        shift = {0.15*scale, -1*scale},
        scale = 2*scale,
        hr_version = {
          filename = TURBINEP .. "hd"..j.."/angle"..k..".png",
          width = 600,
          height = 800,
          frame_count = 24,
          line_length = 6,
          scale = scale,
          shift = {0.15*scale, -1*scale}
        }
      }
    })
  end
end

local multiplier = settings.startup["nullius-wind-turbine-energy-multiplier"].value
local power_value = {1500*multiplier, 4000*multiplier, 12000*multiplier}
for i=1,3 do
  local scale = 0.4 + (i * 0.2)
  local power = power_value[i]

  data:extend({
    {
      type = "electric-energy-interface",
      name = "nullius-wind-build-"..i,
      icons = data.raw.item["nullius-wind-turbine-"..i].icons,
      flags = {"placeable-neutral", "player-creation", "hidden", "not-upgradable", "not-deconstructable"},
      minable = {mining_time = (i + 1), result = "nullius-wind-turbine-"..i},
      max_health = 800*scale,
      corpse = "medium-remnants",
      resistances = {
        { type = "impact", decrease = 100, percent = 90 }
      },
      collision_box = {{-1.2, -1.2}, {1.2, 1.2}},
      selection_box = {{-1.4, -1.4}, {1.4, 1.4}},
      collision_mask = {"layer-43", "item-layer", "object-layer", "player-layer", "water-tile"},
      energy_source = {
        type = "electric",
        usage_priority = "primary-output",
        input_flow_limit = "0kW",
        output_flow_limit = power.."kW",
        buffer_capacity = power.."kJ",
        render_no_power_icon = false
      },
      energy_production = power.."kW",
      energy_usage = "0kW",
      fast_replaceable_group = "wind-turbine",
      animations = {
        layers = {
          {
            filename = TURBINEP .. "ld"..i.."/build.png",
            width = 300,
            height = 400,
            frame_count = 1,
            line_length = 1,
            shift = {0.15*scale, -11*scale},
            animation_speed = 0.2,
            scale = 2*scale,
            hr_version = {
              filename = TURBINEP .. "hd"..i.."/build.png",
              width = 600,
              height = 800,
              frame_count = 1,
              line_length = 1,
              scale = scale,
              shift = {0.15*scale, -11*scale},
              animation_speed = 0.2
            }
          },
          {
            filename = TURBINEP .. "lds/build.png",
            width = 400,
            height = 200,
            frame_count = 1,
            line_length = 1,
            shift = {9.5*scale,-3.6*scale},
            animation_speed = 0.2,
            draw_as_shadow = true,
            scale = 4*scale,
            hr_version = {
              filename = TURBINEP .. "hds/build.png",
              width = 800,
              height = 400,
              frame_count = 1,
              line_length = 1,
              scale = 2*scale,
              shift = {9.5*scale,-3.6*scale},
              animation_speed = 0.2,
              draw_as_shadow = true
            }
          }
        }
      },
      working_sound = {
        sound = {
          filename = "__base__/sound/train-wheels.ogg",
          volume = scale
        },
        match_speed_to_activity = true
      }
    },

    {
      type = "electric-energy-interface",
      name = "nullius-wind-base-"..i,
      icon = ENTICONPATH .. "windturbine"..i..".png",
      icon_size = 64,
      flags = {"placeable-neutral","player-creation"},
      minable = {mining_time = (i + 1), result = "nullius-wind-turbine-"..i},
      placeable_by = {item = "nullius-wind-turbine-"..i, count = 1},
      max_health = 800*scale,
      corpse = "big-remnants",
      resistances = {
        { type = "impact", decrease = 100, percent = 90 }
      },
      collision_box = {{-1.2, -1.2}, {1.2, 1.2}},
      selection_box = {{-1.4, -1.4}, {1.4, 1.4}},
      collision_mask = {"layer-43", "item-layer", "object-layer", "player-layer", "water-tile"},
      energy_source = {
        type = "electric",
        usage_priority = "primary-output",
        input_flow_limit = "0kW",
        output_flow_limit =  power.."kW",
        buffer_capacity = power.."kJ",
        render_no_power_icon = false
      },
      energy_production = power.."kW",
      energy_usage = "0kW",
      fast_replaceable_group = "wind-turbine",
      picture = {
        filename = TURBINEP .. "ld"..i.."/base.png",
        width = 300,
        height = 400,
        frame_count = 1,
        line_length = 1,
        shift = {0.15*scale, -11*scale},
        animation_speed = 0.2,
        scale = 2*scale,
        hr_version = {
          filename = TURBINEP .. "hd"..i.."/base.png",
          width = 600,
          height = 800,
          frame_count = 1,
          line_length = 1,
          shift = {0.15*scale, -11*scale},
          scale = scale,
          animation_speed = 0.2
        }
      },
      working_sound = {
        sound = {
          filename = "__base__/sound/train-wheels.ogg",
          volume = scale
        },
        match_speed_to_activity = true,
      }
    }
  })
end

data:extend({
  {
    type = "simple-entity-with-force",
    name = "nullius-wind-collision",
    render_layer = "object",
    icon = "__base__/graphics/icons/fluid/steam.png",
    icon_size = 64,
    order = "bb",
    flags = {"placeable-neutral", "player-creation", "not-on-map"},
    collision_box = {{-30.5, -30.5}, {30.5, 30.5}},
    collision_mask = {"layer-43"},
    selection_box = {{-0.9, -0.9}, {0.9, 0.9}},
    selectable_in_game = false,
    render_layer = "wires-above",
    random_animation_offset = false,
    picture = {
      filename = ICONPATH .. "blank.png",
      width = 32,
      height = 32
    }
  },
  {
    type = "simple-entity-with-force",
    name = "nullius-wind-collision-horizontal",
    localised_name = {"entity-name.nullius-wind-collision"},
    render_layer = "object",
    icon = "__base__/graphics/icons/fluid/steam.png",
    icon_size = 64,
    order = "bc",
    flags = {"placeable-neutral", "player-creation", "not-on-map", "hidden"},
    collision_box = {{-16, -13.5}, {16, 13.5}},
    collision_mask = {"layer-43"},
    render_layer = "wires-above",
    selectable_in_game = false,
    random_animation_offset = false,
    picture = {
      filename = ICONPATH .. "blank.png",
      width = 32,
      height = 32
    }
  },
  {
    type = "simple-entity-with-force",
    name = "nullius-wind-collision-vertical",
    localised_name = {"entity-name.nullius-wind-collision"},
    render_layer = "object",
    icon = "__base__/graphics/icons/fluid/steam.png",
    icon_size = 64,
    order = "bd",
    flags = {"placeable-neutral", "player-creation", "not-on-map", "hidden"},
    collision_box = {{-13.5, -16}, {13.5, 16}},
    collision_mask = {"layer-43"},
    render_layer = "wires-above",
    selectable_in_game = false,
    random_animation_offset = false,
    picture = {
      filename = ICONPATH .. "blank.png",
      width = 32,
      height = 32
    }
  }
})

data.raw["electric-energy-interface"]["nullius-wind-base-1"].next_upgrade = "nullius-wind-build-2"
data.raw["electric-energy-interface"]["nullius-wind-base-2"].next_upgrade = "nullius-wind-build-3"
