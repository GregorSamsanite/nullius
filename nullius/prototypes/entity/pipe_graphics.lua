local ICONPATH = "__nullius__/graphics/icons/"
local ENTITYPATH = "__nullius__/graphics/entity/"

local BASEENTITY = "__base__/graphics/entity/"

function pipepics(dir)
  return
  {
    straight_vertical_single = {
      filename = dir.."pipe-straight-vertical-single.png",
      priority = "extra-high",
      width = 80,
      height = 80,
      hr_version = {
        filename = dir.."hr-pipe-straight-vertical-single.png",
        priority = "extra-high",
        width = 160,
        height = 160,
        scale = 0.5
      }
    },
    straight_vertical = {
      filename = dir.."pipe-straight-vertical.png",
      priority = "extra-high",
      width = 64,
      height = 64,
      hr_version = {
        filename = dir.."hr-pipe-straight-vertical.png",
        priority = "extra-high",
        width = 128,
        height = 128,
        scale = 0.5
      }
    },
    straight_vertical_window = {
      filename = dir.."pipe-straight-vertical-window.png",
      priority = "extra-high",
      width = 64,
      height = 64,
      hr_version = {
        filename = dir.."hr-pipe-straight-vertical-window.png",
        priority = "extra-high",
        width = 128,
        height = 128,
        scale = 0.5
      }
    },
    straight_horizontal_window = {
      filename = dir.."pipe-straight-horizontal-window.png",
      priority = "extra-high",
      width = 64,
      height = 64,
      hr_version = {
        filename = dir.."hr-pipe-straight-horizontal-window.png",
        priority = "extra-high",
        width = 128,
        height = 128,
        scale = 0.5
      }
    },
    straight_horizontal = {
      filename = dir.."pipe-straight-horizontal.png",
      priority = "extra-high",
      width = 64,
      height = 64,
      hr_version = {
        filename = dir.."hr-pipe-straight-horizontal.png",
        priority = "extra-high",
        width = 128,
        height = 128,
        scale = 0.5
      }
    },
    corner_up_right = {
      filename = dir.."pipe-corner-up-right.png",
      priority = "extra-high",
      width = 64,
      height = 64,
      hr_version = {
        filename = dir.."hr-pipe-corner-up-right.png",
        priority = "extra-high",
        width = 128,
        height = 128,
        scale = 0.5
      }
    },
    corner_up_left = {
      filename = dir.."pipe-corner-up-left.png",
      priority = "extra-high",
      width = 64,
      height = 64,
      hr_version = {
        filename = dir.."hr-pipe-corner-up-left.png",
        priority = "extra-high",
        width = 128,
        height = 128,
        scale = 0.5
      }
    },
    corner_down_right = {
      filename = dir.."pipe-corner-down-right.png",
      priority = "extra-high",
      width = 64,
      height = 64,
      hr_version = {
        filename = dir.."hr-pipe-corner-down-right.png",
        priority = "extra-high",
        width = 128,
        height = 128,
        scale = 0.5
      }
    },
    corner_down_left = {
      filename = dir.."pipe-corner-down-left.png",
      priority = "extra-high",
      width = 64,
      height = 64,
      hr_version = {
        filename = dir.."hr-pipe-corner-down-left.png",
        priority = "extra-high",
        width = 128,
        height = 128,
        scale = 0.5
      }
    },
    t_up = {
      filename = dir.."pipe-t-up.png",
      priority = "extra-high",
      width = 64,
      height = 64,
      hr_version = {
        filename = dir.."hr-pipe-t-up.png",
        priority = "extra-high",
        width = 128,
        height = 128,
        scale = 0.5
      }
    },
    t_down = {
      filename = dir.."pipe-t-down.png",
      priority = "extra-high",
      width = 64,
      height = 64,
      hr_version = {
        filename = dir.."hr-pipe-t-down.png",
        priority = "extra-high",
        width = 128,
        height = 128,
        scale = 0.5
      }
    },
    t_right = {
      filename = dir.."pipe-t-right.png",
      priority = "extra-high",
      width = 64,
      height = 64,
      hr_version = {
        filename = dir.."hr-pipe-t-right.png",
        priority = "extra-high",
        width = 128,
        height = 128,
        scale = 0.5
      }
    },
    t_left = {
      filename = dir.."pipe-t-left.png",
      priority = "extra-high",
      width = 64,
      height = 64,
      hr_version = {
        filename = dir.."hr-pipe-t-left.png",
        priority = "extra-high",
        width = 128,
        height = 128,
        scale = 0.5
      }
    },
    cross = {
      filename = dir.."pipe-cross.png",
      priority = "extra-high",
      width = 64,
      height = 64,
      hr_version = {
        filename = dir.."hr-pipe-cross.png",
        priority = "extra-high",
        width = 128,
        height = 128,
        scale = 0.5
      }
    },
    ending_up = {
      filename = dir.."pipe-ending-up.png",
      priority = "extra-high",
      width = 64,
      height = 64,
      hr_version = {
        filename = dir.."hr-pipe-ending-up.png",
        priority = "extra-high",
        width = 128,
        height = 128,
        scale = 0.5
      }
    },
    ending_down = {
      filename = dir.."pipe-ending-down.png",
      priority = "extra-high",
      width = 64,
      height = 64,
      hr_version = {
        filename = dir.."hr-pipe-ending-down.png",
        priority = "extra-high",
        width = 128,
        height = 128,
        scale = 0.5
      }
    },
    ending_right = {
      filename = dir.."pipe-ending-right.png",
      priority = "extra-high",
      width = 64,
      height = 64,
      hr_version = {
        filename = dir.."hr-pipe-ending-right.png",
        priority = "extra-high",
        width = 128,
        height = 128,
        scale = 0.5
      }
    },
    ending_left = {
      filename = dir.."pipe-ending-left.png",
      priority = "extra-high",
      width = 64,
      height = 64,
      hr_version = {
        filename = dir.."hr-pipe-ending-left.png",
        priority = "extra-high",
        width = 128,
        height = 128,
        scale = 0.5
      }
    },
    horizontal_window_background = {
      filename = dir.."pipe-horizontal-window-background.png",
      priority = "extra-high",
      width = 64,
      height = 64,
      hr_version = {
        filename = dir.."hr-pipe-horizontal-window-background.png",
        priority = "extra-high",
        width = 128,
        height = 128,
        scale = 0.5
      }
    },
    vertical_window_background = {
      filename = dir.."pipe-vertical-window-background.png",
      priority = "extra-high",
      width = 64,
      height = 64,
      hr_version = {
        filename = dir.."hr-pipe-vertical-window-background.png",
        priority = "extra-high",
        width = 128,
        height = 128,
        scale = 0.5
      }
    },
    fluid_background = {
      filename = BASEENTITY .. "pipe/fluid-background.png",
      priority = "extra-high",
      width = 32,
      height = 20,
      hr_version = {
        filename = BASEENTITY .. "pipe/hr-fluid-background.png",
        priority = "extra-high",
        width = 64,
        height = 40,
        scale = 0.5
      }
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
      width = 24,
      height = 15,
      frame_count = 60,
      axially_symmetrical = false,
      direction_count = 1,
      hr_version = {
        filename = BASEENTITY .. "pipe/hr-steam.png",
        priority = "extra-high",
        line_length = 10,
        width = 48,
        height = 30,
        frame_count = 60,
        axially_symmetrical = false,
        direction_count = 1
      }
    }
  }
end

function undergroundpipepics(dir)
  return
  {
    up = {
      filename = dir.."pipe-to-ground-up.png",
      priority = "high",
      width = 64,
      height = 64,
      hr_version = {
        filename = dir.."hr-pipe-to-ground-up.png",
        priority = "extra-high",
        width = 128,
        height = 128,
        scale = 0.5
      }
    },
    down = {
      filename = dir.."pipe-to-ground-down.png",
      priority = "high",
      width = 64,
      height = 64,
      hr_version = {
        filename = dir.."hr-pipe-to-ground-down.png",
        priority = "extra-high",
        width = 128,
        height = 128,
        scale = 0.5
      }
    },
    left = {
      filename = dir.."pipe-to-ground-left.png",
      priority = "high",
      width = 64,
      height = 64,
      hr_version = {
        filename = dir.."hr-pipe-to-ground-left.png",
        priority = "extra-high",
        width = 128,
        height = 128,
        scale = 0.5
      }
    },
    right = {
      filename = dir.."pipe-to-ground-right.png",
      priority = "high",
      width = 64,
      height = 64,
      hr_version = {
        filename = dir.."hr-pipe-to-ground-right.png",
        priority = "extra-high",
        width = 128,
        height = 128,
        scale = 0.5
      }
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
          width = 64,
          height = 64,
          hr_version = {
            filename = dir.."hr-pipe-cover-north.png",
            priority = "extra-high",
            width = 128,
            height = 128,
            scale = 0.5
          }
        },
        {
          filename = BASEENTITY .. "pipe-covers/pipe-cover-north-shadow.png",
          priority = "extra-high",
          width = 64,
          height = 64,
          draw_as_shadow = true,
          hr_version = {
            filename = BASEENTITY .. "pipe-covers/hr-pipe-cover-north-shadow.png",
            priority = "extra-high",
            width = 128,
            height = 128,
            scale = 0.5,
            draw_as_shadow = true
          }
        }
      }
    },
    east = {
      layers = {
        {
          filename = dir.."pipe-cover-east.png",
          priority = "extra-high",
          width = 64,
          height = 64,
          hr_version = {
            filename = dir.."hr-pipe-cover-east.png",
            priority = "extra-high",
            width = 128,
            height = 128,
            scale = 0.5
          }
        },
        {
          filename = BASEENTITY .. "pipe-covers/pipe-cover-east-shadow.png",
          priority = "extra-high",
          width = 64,
          height = 64,
          draw_as_shadow = true,
          hr_version = {
            filename = BASEENTITY .. "pipe-covers/hr-pipe-cover-east-shadow.png",
            priority = "extra-high",
            width = 128,
            height = 128,
            scale = 0.5,
            draw_as_shadow = true
          }
        }
      }
    },
    south = {
      layers = {
        {
          filename = dir.."pipe-cover-south.png",
          priority = "extra-high",
          width = 64,
          height = 64,
          hr_version = {
            filename = dir.."hr-pipe-cover-south.png",
            priority = "extra-high",
            width = 128,
            height = 128,
            scale = 0.5
          }
        },
        {
          filename = BASEENTITY .. "pipe-covers/pipe-cover-south-shadow.png",
          priority = "extra-high",
          width = 64,
          height = 64,
          draw_as_shadow = true,
          hr_version = {
            filename = BASEENTITY .. "pipe-covers/hr-pipe-cover-south-shadow.png",
            priority = "extra-high",
            width = 128,
            height = 128,
            scale = 0.5,
            draw_as_shadow = true
          }
        }
      }
    },
    west = {
      layers = {
        {
          filename = dir.."pipe-cover-west.png",
          priority = "extra-high",
          width = 64,
          height = 64,
          hr_version = {
            filename = dir.."hr-pipe-cover-west.png",
            priority = "extra-high",
            width = 128,
            height = 128,
            scale = 0.5
          }
        },
        {
          filename = BASEENTITY .. "pipe-covers/pipe-cover-west-shadow.png",
          priority = "extra-high",
          width = 64,
          height = 64,
          draw_as_shadow = true,
          hr_version = {
            filename = BASEENTITY .. "pipe-covers/hr-pipe-cover-west-shadow.png",
            priority = "extra-high",
            width = 128,
            height = 128,
            scale = 0.5,
            draw_as_shadow = true
          }
        }
      }
    }
  }
end