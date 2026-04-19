local ICONPATH = "__nullius__/graphics/icons/"
local ENTITYPATH = "__nullius__/graphics/entity/"

local BASEENTITY = "__base__/graphics/entity/"

--- @param i integer
local function make_visualization(i)
  return
  {
    filename = BASEENTITY.."pipe/visualization.png",
    priority = "extra-high",
    x = i * 64,
    size = 64,
    scale = 0.5,
    flags = {"icon"},
  }
end

--- @param i integer
local function make_disabled_visualization(i)
  return
  {
    filename = BASEENTITY.."pipe/disabled-visualization.png",
    priority = "extra-high",
    x = i * 64,
    size = 64,
    scale = 0.5,
    flags = {"icon"},
  }
end

function pipepics(dir)
  return
  {
    straight_vertical_single = {
        filename = dir.."pipe-straight-vertical-single.png",
        priority = "extra-high",
        width = 160,
        height = 160,
        scale = 0.5
    },
    straight_vertical = {
        filename = dir.."pipe-straight-vertical.png",
        priority = "extra-high",
        width = 128,
        height = 128,
        scale = 0.5
    },
    straight_vertical_window = {
        filename = dir.."pipe-straight-vertical-window.png",
        priority = "extra-high",
        width = 128,
        height = 128,
        scale = 0.5
    },
    straight_horizontal_window = {
        filename = dir.."pipe-straight-horizontal-window.png",
        priority = "extra-high",
        width = 128,
        height = 128,
        scale = 0.5
    },
    straight_horizontal = {
        filename = dir.."pipe-straight-horizontal.png",
        priority = "extra-high",
        width = 128,
        height = 128,
        scale = 0.5
    },
    corner_up_right = {
        filename = dir.."pipe-corner-up-right.png",
        priority = "extra-high",
        width = 128,
        height = 128,
        scale = 0.5
    },
    corner_up_left = {
        filename = dir.."pipe-corner-up-left.png",
        priority = "extra-high",
        width = 128,
        height = 128,
        scale = 0.5
    },
    corner_down_right = {
        filename = dir.."pipe-corner-down-right.png",
        priority = "extra-high",
        width = 128,
        height = 128,
        scale = 0.5
    },
    corner_down_left = {
        filename = dir.."pipe-corner-down-left.png",
        priority = "extra-high",
        width = 128,
        height = 128,
        scale = 0.5
    },
    t_up = {
        filename = dir.."pipe-t-up.png",
        priority = "extra-high",
        width = 128,
        height = 128,
        scale = 0.5
    },
    t_down = {
        filename = dir.."pipe-t-down.png",
        priority = "extra-high",
        width = 128,
        height = 128,
        scale = 0.5
    },
    t_right = {
        filename = dir.."pipe-t-right.png",
        priority = "extra-high",
        width = 128,
        height = 128,
        scale = 0.5
    },
    t_left = {
        filename = dir.."pipe-t-left.png",
        priority = "extra-high",
        width = 128,
        height = 128,
        scale = 0.5
    },
    cross = {
        filename = dir.."pipe-cross.png",
        priority = "extra-high",
        width = 128,
        height = 128,
        scale = 0.5
    },
    ending_up = {
        filename = dir.."pipe-ending-up.png",
        priority = "extra-high",
        width = 128,
        height = 128,
        scale = 0.5
    },
    ending_down = {
        filename = dir.."pipe-ending-down.png",
        priority = "extra-high",
        width = 128,
        height = 128,
        scale = 0.5
    },
    ending_right = {
        filename = dir.."pipe-ending-right.png",
        priority = "extra-high",
        width = 128,
        height = 128,
        scale = 0.5
    },
    ending_left = {
        filename = dir.."pipe-ending-left.png",
        priority = "extra-high",
        width = 128,
        height = 128,
        scale = 0.5
    },
    straight_vertical_single_visualization = make_visualization(0),
    straight_vertical_visualization = make_visualization(5),
    straight_vertical_window_visualization = make_visualization(5),
    straight_horizontal_window_visualization = make_visualization(10),
    straight_horizontal_visualization = make_visualization(10),
    corner_up_right_visualization = make_visualization(3),
    corner_up_left_visualization = make_visualization(9),
    corner_down_right_visualization = make_visualization(6),
    corner_down_left_visualization = make_visualization(12),
    t_up_visualization = make_visualization(11),
    t_down_visualization = make_visualization(14),
    t_right_visualization = make_visualization(7),
    t_left_visualization = make_visualization(13),
    cross_visualization = make_visualization(15),
    ending_up_visualization = make_visualization(1),
    ending_down_visualization = make_visualization(4),
    ending_right_visualization = make_visualization(2),
    ending_left_visualization = make_visualization(8),
    straight_vertical_single_disabled_visualization = make_disabled_visualization(0),
    straight_vertical_disabled_visualization = make_disabled_visualization(5),
    straight_vertical_window_disabled_visualization = make_disabled_visualization(5),
    straight_horizontal_window_disabled_visualization = make_disabled_visualization(10),
    straight_horizontal_disabled_visualization = make_disabled_visualization(10),
    corner_up_right_disabled_visualization = make_disabled_visualization(3),
    corner_up_left_disabled_visualization = make_disabled_visualization(9),
    corner_down_right_disabled_visualization = make_disabled_visualization(6),
    corner_down_left_disabled_visualization = make_disabled_visualization(12),
    t_up_disabled_visualization = make_disabled_visualization(11),
    t_down_disabled_visualization = make_disabled_visualization(14),
    t_right_disabled_visualization = make_disabled_visualization(7),
    t_left_disabled_visualization = make_disabled_visualization(13),
    cross_disabled_visualization = make_disabled_visualization(15),
    ending_up_disabled_visualization = make_disabled_visualization(1),
    ending_down_disabled_visualization = make_disabled_visualization(4),
    ending_right_disabled_visualization = make_disabled_visualization(2),
    ending_left_disabled_visualization = make_disabled_visualization(8),
    horizontal_window_background = {
        filename = dir.."pipe-horizontal-window-background.png",
        priority = "extra-high",
        width = 128,
        height = 128,
        scale = 0.5
    },
    vertical_window_background = {
        filename = dir.."pipe-vertical-window-background.png",
        priority = "extra-high",
        width = 128,
        height = 128,
        scale = 0.5
    },
    fluid_background = {
        filename = BASEENTITY .. "pipe/fluid-background.png",
        priority = "extra-high",
        width = 64,
        height = 40,
        scale = 0.5
    },
    low_temperature_flow = {
      filename = BASEENTITY .. "pipe/fluid-flow-low-temperature.png",
      priority = "extra-high",
      width = 160,
      height = 18
    },
    middle_temperature_flow = {
      filename = BASEENTITY .. "pipe/fluid-flow-medium-temperature.png",
      priority = "extra-high",
      width = 160,
      height = 18
    },
    high_temperature_flow = {
      filename = BASEENTITY .. "pipe/fluid-flow-high-temperature.png",
      priority = "extra-high",
      width = 160,
      height = 18
    },
    gas_flow = {
        filename = BASEENTITY .. "pipe/steam.png",
        priority = "extra-high",
        line_length = 10,
        width = 48,
        height = 30,
        frame_count = 60,
        --axially_symmetrical = false,
    }
  }
end

function undergroundpipepics(dir)
  return
  {
    north = {
        filename = dir.."pipe-to-ground-up.png",
        priority = "extra-high",
        width = 128,
        height = 128,
        scale = 0.5
    },
    south = {
        filename = dir.."pipe-to-ground-down.png",
        priority = "extra-high",
        width = 128,
        height = 128,
        scale = 0.5
    },
    west = {
        filename = dir.."pipe-to-ground-left.png",
        priority = "extra-high",
        width = 128,
        height = 128,
        scale = 0.5
    },
    east = {
        filename = dir.."pipe-to-ground-right.png",
        priority = "extra-high",
        width = 128,
        height = 128,
        scale = 0.5
    }
  }
end

function pipecoverspics(dir)
  return
  {
    north = {
      layers = {
        {
            filename = dir.."pipe-cover-north.png",
            priority = "extra-high",
            width = 128,
            height = 128,
            scale = 0.5
        },
        {
            filename = BASEENTITY .. "pipe-covers/pipe-cover-north-shadow.png",
            priority = "extra-high",
            width = 128,
            height = 128,
            scale = 0.5,
            draw_as_shadow = true
        }
      }
    },
    east = {
      layers = {
        {
            filename = dir.."pipe-cover-east.png",
            priority = "extra-high",
            width = 128,
            height = 128,
            scale = 0.5
        },
        {
            filename = BASEENTITY .. "pipe-covers/pipe-cover-east-shadow.png",
            priority = "extra-high",
            width = 128,
            height = 128,
            scale = 0.5,
            draw_as_shadow = true
        }
      }
    },
    south = {
      layers = {
        {
            filename = dir.."pipe-cover-south.png",
            priority = "extra-high",
            width = 128,
            height = 128,
            scale = 0.5
        },
        {
            filename = BASEENTITY .. "pipe-covers/pipe-cover-south-shadow.png",
            priority = "extra-high",
            width = 128,
            height = 128,
            scale = 0.5,
            draw_as_shadow = true
        }
      }
    },
    west = {
      layers = {
        {
            filename = dir.."pipe-cover-west.png",
            priority = "extra-high",
            width = 128,
            height = 128,
            scale = 0.5
        },
        {
            filename = BASEENTITY .. "pipe-covers/pipe-cover-west-shadow.png",
            priority = "extra-high",
            width = 128,
            height = 128,
            scale = 0.5,
            draw_as_shadow = true
        }
      }
    }
  }
end

function hydropipepictures()
  return {
    north = {
      filename = "__angelsrefininggraphics__/graphics/entity/hydro-plant/pipe-north1.png",
      priority = "extra-high",
      width = 48,
      height = 48,
      shift = { -0.08, 0.45 },
    },
    east = {
      filename = "__angelsrefininggraphics__/graphics/entity/hydro-plant/blank.png",
      priority = "extra-high",
      width = 1,
      height = 1,
      shift = { 0, 0 },
    },
    south = {
      filename = "__angelsrefininggraphics__/graphics/entity/hydro-plant/pipe-south1.png",
      priority = "extra-high",
      width = 48,
      height = 48,
      shift = { 0.06, -0.6 },
    },
    west = {
      filename = "__angelsrefininggraphics__/graphics/entity/hydro-plant/pipe-west1.png",
      priority = "extra-high",
      width = 48,
      height = 48,
      shift = { 0.62, 0.05 },
    },
  }
end

function hydropipepictures2()
  return {
    north = {
      filename = "__angelsrefininggraphics__/graphics/entity/hydro-plant/pipe-north2.png",
      priority = "extra-high",
      width = 48,
      height = 48,
      shift = { -0.08, 0.45 },
    },
    east = {
      filename = "__angelsrefininggraphics__/graphics/entity/hydro-plant/blank.png",
      priority = "extra-high",
      width = 1,
      height = 1,
      shift = { 0, 0 },
    },
    south = {
      filename = "__angelsrefininggraphics__/graphics/entity/hydro-plant/pipe-south1.png",
      priority = "extra-high",
      width = 48,
      height = 48,
      shift = { 0.06, -0.6 },
    },
    west = {
      filename = "__angelsrefininggraphics__/graphics/entity/hydro-plant/pipe-west2.png",
      priority = "extra-high",
      width = 48,
      height = 48,
      shift = { 0.62, 0.05 },
    },
  }
end