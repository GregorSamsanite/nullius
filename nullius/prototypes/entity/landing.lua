local ICONPATH = "__nullius__/graphics/icons/"
local ENTICONPATH = "__nullius__/graphics/icons/entity/"
local ENTITYPATH = "__nullius__/graphics/entity/"
local BASEENTITY = "__base__/graphics/entity/"

local wreck_flags = {
  "placeable-player",
  "player-creation",
  "hidden",
  "not-rotatable",
  "placeable-off-grid",
  "not-blueprintable",
  "not-in-kill-statistics",
  "not-flammable"
}

data:extend({
  {
    type = "container",
    name = "nullius-landing-main",
    icon = "__base__/graphics/icons/crash-site-spaceship.png",
    icon_size = 64,
    icon_mipmaps = 4,
    flags = wreck_flags,
    map_color = {r = 0, g = 0.365, b = 0.58, a = 1},
    max_health = 600,
    alert_when_damaged = false,
    allow_copy_paste = false,
    inventory_size = 20,
    enable_inventory_bar = false,
	not_inventory_moveable = true,
    minable = {
      mining_time = 4,
      results = {
        {type="item", name="nullius-steel-ingot", amount=40},
        {type="item", name="copper-cable", amount=15},
        {type="item", name="nullius-large-chest-1", amount=2}
      }
    },
    collision_box = {{-8.7, -3.3}, {6.9, 4.5}},
    selection_box = {{-8.7, -3.3}, {6.9, 4.5}},
    dying_explosion = "nuke-explosion",
    integration_patch_render_layer = "decals",
    integration_patch = {
      filename = BASEENTITY .. "crash-site-spaceship/hr-spaceship-ground.png",
      priority = "very-low",
      width = 1330,
      height = 786,
      shift = util.by_pixel(-50, 61),
      dice_x = 4,
      dice_y = 3,
      frame_count = 1,
      line_length = 1,
      scale = 0.5,
    },
    picture = {
      layers = {
        {
          filename = BASEENTITY .. "crash-site-spaceship/hr-spaceship.png",
          priority = "very-low",
          width = 1228,
          height = 790,
          shift = util.by_pixel(-13, 34),
          dice_x = 4,
          dice_y = 3,
          scale = 0.5
        },
        {
          filename = BASEENTITY .. "crash-site-spaceship/hr-spaceship-shadow.png",
          priority = "very-low",
          width = 1340,
          height = 842,
          shift = util.by_pixel(-23, 50),
          scale = 0.5,
          dice_x = 5,
          dice_y = 4,
          draw_as_shadow = true
        }
      }
    }
  },

  {
    type = "simple-entity-with-owner",
    name = "nullius-landing-tail",
    icon = "__base__/graphics/icons/crash-site-spaceship-wreck-big-1.png",
    icon_size = 64,
    icon_mipmaps = 4,
    flags = wreck_flags,
    map_color = {r = 0, g = 0.365, b = 0.58, a = 1},
    max_health = 200,
    alert_when_damaged = false,
    allow_copy_paste = false,
	localised_description = {"entity-description.nullius-minable",
	  "20x[item=small-lamp] 8x[item=nullius-solar-panel-1]"},
    minable = {
      mining_time = 1,
      results = {
        {type="item", name="small-lamp", amount=20},
        {type="item", name="nullius-solar-panel-1", amount=8}
      }
    },
	placeable_by = {item = "nullius-probe", count = 1},
    collision_box = {{-0.9, -0.1}, {1.4, 1.2}},
    selection_box = {{-0.9, -0.1}, {1.4, 1.2}},
    dying_explosion = "big-explosion",
    integration_patch_render_layer = "decals",
    integration_patch = {
      filename = BASEENTITY .. "crash-site-spaceship/hr-spaceship-wreck-big-1-ground.png",
      priority="high",
      width = 348,
      height = 136,
      shift = util.by_pixel(-27, 31),
      frame_count = 1,
      line_length = 1,
      scale = 0.5,
    },
    picture = {
      layers = {
        {
          filename = BASEENTITY .. "crash-site-spaceship/hr-spaceship-wreck-big-1.png",
          width = 234,
          height = 280,
          shift = util.by_pixel(-7, -8),
          scale = 0.5
        },
        {
          filename = BASEENTITY .. "crash-site-spaceship/hr-spaceship-wreck-big-1-shadow.png",
          width = 256,
          height = 44,
          shift = util.by_pixel(37, 26),
          scale = 0.5,
          draw_as_shadow = true
        }
      }
    }
  },

  {
    type = "simple-entity-with-owner",
    name = "nullius-landing-propulsion",
    icon = "__base__/graphics/icons/crash-site-spaceship-wreck-big-2.png",
    icon_size = 64,
    icon_mipmaps = 4,
    flags = wreck_flags,
    map_color = {r = 0, g = 0.365, b = 0.58, a = 1},
    max_health = 200,
    alert_when_damaged = false,
    allow_copy_paste = false,
	localised_description = {"entity-description.nullius-minable",
	    "[item=nullius-small-furnace-2] 2x[item=nullius-chimney-1] "
	    .. "2x[item=nullius-outfall-1] 2x[item=storage-tank]"},
    minable = {
      mining_time = 1.5,
      results = {
        {type="item", name="nullius-small-furnace-2", amount=1},
        {type="item", name="nullius-chimney-1", amount=2},
        {type="item", name="nullius-outfall-1", amount=2},
        {type="item", name="storage-tank", amount=2}
      }
    },
	placeable_by = {item = "nullius-probe", count = 1},
    collision_box = {{-1.6, -1.6}, {1.3, 1.3}},
    selection_box = {{-1.6, -1.6}, {1.3, 1.3}},
    dying_explosion = "big-explosion",
    integration_patch_render_layer = "decals",
    integration_patch = {
      filename = BASEENTITY .. "crash-site-spaceship/hr-spaceship-wreck-big-2-ground.png",
      priority="high",
      width = 450,
      height = 296,
      shift = util.by_pixel(-52, 8),
      frame_count = 1,
      line_length = 1,
      scale = 0.5,
    },
    picture = {
      layers = {
        {
          filename = BASEENTITY .. "crash-site-spaceship/hr-spaceship-wreck-big-2.png",
          width = 242,
          height = 258,
          shift = util.by_pixel(-13, -7),
          scale = 0.5
        },
        {
          filename = BASEENTITY .. "crash-site-spaceship/hr-spaceship-wreck-big-2-shadow.png",
          width = 294,
          height = 228,
          shift = util.by_pixel(27, -12),
          scale = 0.5,
          draw_as_shadow = true
        }
      }
    }
  },

  {
    type = "simple-entity-with-owner",
    name = "nullius-landing-vent",
    icon = "__base__/graphics/icons/crash-site-spaceship-wreck-medium-1.png",
    icon_size = 64,
    icon_mipmaps = 4,
    flags = wreck_flags,
    map_color = {r = 0, g = 0.365, b = 0.58, a = 1},
    max_health = 100,
    alert_when_damaged = false,
    allow_copy_paste = false,
	localised_description = {"entity-description.nullius-minable",
	    "3x[item=nullius-air-filter-1] 3x[item=nullius-broken-air-filter]"},
    minable = {
      mining_time = 1,
      results = {
        {type="item", name="nullius-air-filter-1", amount=3},
        {type="item", name="nullius-broken-air-filter", amount=3}
      }
    },
	placeable_by = {item = "nullius-probe", count = 1},
    collision_box = {{-1.2, -1.0}, {1.2, 0.7}},
    selection_box = {{-1.2, -1.0}, {1.2, 0.7}},
    dying_explosion = "big-explosion",
    integration_patch_render_layer = "decals",
    integration_patch = {
      filename = BASEENTITY .. "crash-site-spaceship/hr-spaceship-wreck-medium-1-ground.png",
      priority="high",
      width = 352,
      height = 206,
      shift = util.by_pixel(-41, 13),
      frame_count = 1,
      line_length = 1,
      scale = 0.5,
    },
    picture = {
      layers = {
        {
          filename = BASEENTITY .. "crash-site-spaceship/hr-spaceship-wreck-medium-1.png",
          width = 228,
          height = 120,
          shift = util.by_pixel(-14, -4),
          scale = 0.5
        },
        {
          filename = BASEENTITY .. "crash-site-spaceship/hr-spaceship-wreck-medium-1-shadow.png",
          width = 206,
          height = 114,
          shift = util.by_pixel(16, -1),
          scale = 0.5,
          draw_as_shadow = true
        }
      }
    }
  },

  {
    type = "simple-entity-with-owner",
    name = "nullius-landing-intake",
    icon = "__base__/graphics/icons/crash-site-spaceship-wreck-medium-2.png",
    icon_size = 64,
    icon_mipmaps = 4,
    flags = wreck_flags,
    map_color = {r = 0, g = 0.365, b = 0.58, a = 1},
    max_health = 100,
    alert_when_damaged = false,
    allow_copy_paste = false,
	localised_description = {"entity-description.nullius-minable",
	    "2x[item=nullius-seawater-intake-1] 4x[item=storage-tank]"},
    minable = {
      mining_time = 1,
      results = {
        {type="item", name="nullius-seawater-intake-1", amount=2},
        {type="item", name="storage-tank", amount=4}
      }
    },
	placeable_by = {item = "nullius-probe", count = 1},
    collision_box = {{-1.1, -0.6}, {1.0, 1.0}},
    selection_box = {{-1.1, -0.6}, {1.0, 1.0}},
    dying_explosion = "big-explosion",
    integration_patch_render_layer = "decals",
    integration_patch = {
      filename = BASEENTITY .. "crash-site-spaceship/hr-spaceship-wreck-medium-2-ground.png",
      priority="high",
      width = 396,
      height = 214,
      shift = util.by_pixel(-56, -1),
      frame_count = 1,
      line_length = 1,
      scale = 0.5
    },

    picture = {
      layers = {
        {
          filename = BASEENTITY .. "crash-site-spaceship/hr-spaceship-wreck-medium-2.png",
          width = 194,
          height = 150,
          shift = util.by_pixel(-15, 8),
          scale = 0.5
        },
        {
          filename = BASEENTITY .. "crash-site-spaceship/hr-spaceship-wreck-medium-2-shadow.png",
          width = 196,
          height = 114,
          shift = util.by_pixel(22, 15),
          scale = 0.5,
          draw_as_shadow = true
        }
      }
    }
  },

  {
    type = "simple-entity-with-owner",
    name = "nullius-landing-wing",
    icon = "__base__/graphics/icons/crash-site-spaceship-wreck-medium-3.png",
    icon_size = 64,
    icon_mipmaps = 4,
    flags = wreck_flags,
    map_color = {r = 0, g = 0.365, b = 0.58, a = 1},
    max_health = 100,
    alert_when_damaged = false,
    allow_copy_paste = false,
	localised_description = {"entity-description.nullius-minable",
	    "18x[item=nullius-broken-solar-panel] 10x[item=nullius-aluminum-ingot]"},
    minable = {
      mining_time = 1,
      results = {
        {type="item", name="nullius-broken-solar-panel", amount=18},
        {type="item", name="nullius-aluminum-ingot", amount=10}
      }
    },
	placeable_by = {item = "nullius-probe", count = 1},
    collision_box = {{-0.8, -1.4}, {0.7, 1.4}},
    selection_box = {{-0.8, -1.4}, {0.7, 1.4}},
    dying_explosion = "big-explosion",
    integration_patch_render_layer = "decals",
    integration_patch = {
      filename = BASEENTITY .. "crash-site-spaceship/hr-spaceship-wreck-medium-3-ground.png",
      priority="high",
      width = 350,
      height = 284,
      shift = util.by_pixel(-44, 10),
      frame_count = 1,
      line_length = 1,
      scale = 0.5
    },

    picture = {
      layers = {
        {
          filename = BASEENTITY .. "crash-site-spaceship/hr-spaceship-wreck-medium-3.png",
          width = 224,
          height = 236,
          shift = util.by_pixel(-30, 4),
          scale = 0.5
        },
        {
          filename = BASEENTITY .. "crash-site-spaceship/hr-spaceship-wreck-medium-3-shadow.png",
          width = 104,
          height = 178,
          shift = util.by_pixel(6, 0),
          scale = 0.5,
          draw_as_shadow = true
        }
      }
    }
  },

  {
    type = "simple-entity-with-owner",
    name = "nullius-landing-duct",
    icon = "__base__/graphics/icons/crash-site-spaceship-wreck-small-3.png",
    icon_size = 64,
    icon_mipmaps = 4,
    flags = wreck_flags,
    map_color = {r = 0, g = 0.365, b = 0.58, a = 1},
    max_health = 50,
    alert_when_damaged = false,
    allow_copy_paste = false,
	localised_description = {"entity-description.nullius-minable",
	    "40x[item=nullius-pipe-2] 24x[item=nullius-underground-pipe-2]"
		.. "3x[item=nullius-priority-valve] 3x[item=nullius-pump-1]"},
    minable = {
      mining_time = 0.5,
      results = {
        {type="item", name="nullius-pipe-2", amount=40},
        {type="item", name="nullius-underground-pipe-2", amount=24},
        {type="item", name="nullius-priority-valve", amount=3},
        {type="item", name="nullius-pump-1", amount=3}
      }
    },
	placeable_by = {item = "nullius-probe", count = 1},
    collision_box = {{-0.7, -0.8}, {1.2, 0.6}},
    selection_box = {{-0.7, -0.8}, {1.2, 0.6}},
    dying_explosion = "medium-explosion",
    integration_patch_render_layer = "decals",
    integration_patch = {
      filename = BASEENTITY .. "crash-site-spaceship/hr-spaceship-wreck-small-3-ground.png",
      priority="high",
      width = 274,
      height = 172,
      shift = util.by_pixel(-8, 3),
      frame_count = 1,
      line_length = 1,
      scale = 0.5
    },

    picture = {
      layers = {
        {
          filename = BASEENTITY .. "crash-site-spaceship/hr-spaceship-wreck-small-3.png",
          width = 164,
          height = 148,
          shift = util.by_pixel(5, -1),
          scale = 0.5
        },
        {
          filename = BASEENTITY .. "crash-site-spaceship/hr-spaceship-wreck-small-3-shadow.png",
          width = 156,
          height = 114,
          shift = util.by_pixel(9, -1),
          scale = 0.5,
          draw_as_shadow = true
        }
      }
    }
  },

  {
    type = "simple-entity-with-owner",
    name = "nullius-landing-shielding",
    icon = "__base__/graphics/icons/crash-site-spaceship-wreck-small-4.png",
    icon_size = 64,
    icon_mipmaps = 4,
    flags = wreck_flags,
    map_color = {r = 0, g = 0.365, b = 0.58, a = 1},
    max_health = 50,
    alert_when_damaged = false,
    allow_copy_paste = false,
	localised_description = {"entity-description.nullius-minable",
	    "20x[item=nullius-aluminum-ingot]"},
    minable = {
      mining_time = 0.5,
      results = { {type="item", name="nullius-aluminum-ingot", amount=20} }
    },
	placeable_by = {item = "nullius-probe", count = 1},
    collision_box = {{-0.9, -0.8}, {1.1, 0.6}},
    selection_box = {{-0.9, -0.8}, {1.1, 0.6}},
    dying_explosion = "medium-explosion",
    integration_patch_render_layer = "decals",
    integration_patch = {
      filename = BASEENTITY .. "crash-site-spaceship/hr-spaceship-wreck-small-4-ground.png",
      priority="high",
      width = 256,
      height = 150,
      shift = util.by_pixel(-12, -2),
      frame_count = 1,
      line_length = 1,
      scale = 0.5
    },

    picture = {
      layers = {
        {
          filename = BASEENTITY .. "crash-site-spaceship/hr-spaceship-wreck-small-4.png",
          width = 168,
          height = 142,
          shift = util.by_pixel(1, -3),
          scale = 0.5
        },
        {
          filename = BASEENTITY .. "crash-site-spaceship/hr-spaceship-wreck-small-4-shadow.png",
          width = 164,
          height = 100,
          shift = util.by_pixel(19, -5),
          scale = 0.5,
          draw_as_shadow = true
        }
      }
    }
  },

  {
    type = "simple-entity-with-owner",
    name = "nullius-landing-lab",
    icon = ENTICONPATH .. "crash-site-lab-broken.png",
    icon_size = 64,
    flags = wreck_flags,
    map_color = {r = 0, g = 0.365, b = 0.58, a = 1},
    max_health = 100,
    alert_when_damaged = false,
    allow_copy_paste = false,
	localised_description = {"entity-description.nullius-minable",
	    "[item=nullius-lab-1] 20x[item=red-wire] 2x[item=nullius-broken-sensor-node]"},
    minable = {
      mining_time = 1,
      results = {
        {type="item", name="nullius-lab-1", amount=1},
        {type="item", name="red-wire", amount=20},
        {type="item", name="nullius-broken-sensor-node", amount=2}
      }
    },
	placeable_by = {item = "nullius-probe", count = 1},
    collision_box = {{-2.2, -1.2}, {2.2, 1.2}},
    selection_box = {{-2.5, -1.5}, {2.5, 1.5}},
    dying_explosion = "medium-explosion",
    integration_patch_render_layer = "decals",
    integration_patch = {
      filename = ENTITYPATH .. "crash/hr-crash-site-lab-ground.png",
      priority = crash_site_sprite_priority,
      width = 700,
      height = 344,
      shift = util.by_pixel(-49, 11),
      frame_count = 1,
      line_length = 1,
      scale = 0.5
    },

    picture = {
      layers = {
        {
          filename = ENTITYPATH .. "crash/hr-crash-site-lab-repaired.png",
          width = 488,
          height = 252,
          shift = util.by_pixel(-18, 14),
          scale = 0.5
        },
        {
          filename = ENTITYPATH .. "crash/hr-crash-site-lab-repaired-shadow.png",
          width = 696,
          height = 302,
          shift = util.by_pixel(-11, 12),
          scale = 0.5,
          draw_as_shadow = true
        }
      }
    }
  },

  {
    type = "simple-entity-with-owner",
    name = "nullius-landing-pylon",
    icon = ENTICONPATH .. "crash-site-generator.png",
    icon_size = 64,
    flags = wreck_flags,
    map_color = {r = 0, g = 0.365, b = 0.58, a = 1},
    max_health = 50,
    alert_when_damaged = false,
    allow_copy_paste = false,
	localised_description = {"entity-description.nullius-minable",
	    "30x[item=small-electric-pole] 10x[item=big-electric-pole]" ..
		"30x[item=nullius-broken-pylon] 5x[item=programmable-speaker]"},
    minable = {
      mining_time = 0.5,
      results = {
        {type="item", name="small-electric-pole", amount=30},
        {type="item", name="big-electric-pole", amount=10},
        {type="item", name="nullius-broken-pylon", amount=30},
		{type="item", name="programmable-speaker", amount=5}
      }
    },
	placeable_by = {item = "nullius-probe", count = 1},
    collision_box = {{-1.5, -0.9}, {0.9, 0.9}},
    selection_box = {{-1.5, -0.9}, {0.9, 0.9}},
    dying_explosion = "medium-explosion",
    integration_patch_render_layer = "decals",
    integration_patch = {
      filename = ENTITYPATH .. "crash/hr-crash-site-generator-ground.png",
      priority = crash_site_sprite_priority,
      width = 384,
      height = 360,
      shift = util.by_pixel(-28, -38),
      frame_count = 1,
      line_length = 1,
      scale = 0.5
    },

    picture = {
      layers = {
        {
          filename = ENTITYPATH .. "crash/hr-crash-site-generator.png",
          width = 286,
          height = 252,
          shift = util.by_pixel(-11, -23),
          scale = 0.5
        },
        {
          filename = ENTITYPATH .. "crash/hr-crash-site-generator-shadow.png",
          width = 474,
          height = 152,
          draw_as_shadow = true,
          shift = util.by_pixel(25, 5),
          scale = 0.5
        }
      }
    }
  },

  {
    type = "container",
    name = "nullius-landing-pod-1",
    icon = "__base__/graphics/icons/crash-site-chest.png",
    icon_size = 64,
    icon_mipmaps = 4,
    flags = wreck_flags,
    map_color = {r = 0, g = 0.365, b = 0.58, a = 1},
    max_health = 200,
    alert_when_damaged = false,
    allow_copy_paste = false,
    inventory_size = 10,
    enable_inventory_bar = false,
	not_inventory_moveable = true,
    minable = {
      mining_time = 0.5,
      results = { {type="item", name="nullius-large-chest-1", amount=1} }
    },
	placeable_by = {item = "nullius-probe", count = 1},
    collision_box = {{-0.35, -0.35}, {0.35, 0.35}},
    selection_box = {{-0.5, -0.5}, {0.5, 0.5}},
    dying_explosion = "medium-explosion",
    integration_patch_render_layer = "decals",
    integration_patch = {
      filename = BASEENTITY .. "crash-site-chests/hr-crash-site-chest-1-ground.png",
      priority = crash_site_sprite_priority,
      width = 220,
      height = 148,
      shift = util.by_pixel(-6, 12),
      frame_count = 1,
      line_length = 1,
      scale = 0.5
    },
    picture = {
      layers = {
        {
          filename = BASEENTITY .. "crash-site-chests/hr-crash-site-chest-1.png",
          priority = "extra-high",
          width = 120,
          height = 76,
          shift = util.by_pixel(2, 8),
          scale = 0.5
        },
        {
          filename = BASEENTITY .. "crash-site-chests/hr-crash-site-chest-1-shadow.png",
          priority = "extra-high",
          width = 210,
          height = 128,
          shift = util.by_pixel(-2, 3),
          draw_as_shadow = true,
          scale = 0.5
        }
      }
    }
  },

  {
    type = "container",
    name = "nullius-landing-pod-2",
    icon = "__base__/graphics/icons/crash-site-chest.png",
    icon_size = 64,
    icon_mipmaps = 4,
    flags = wreck_flags,
    map_color = {r = 0, g = 0.365, b = 0.58, a = 1},
    max_health = 200,
    alert_when_damaged = false,
    allow_copy_paste = false,
    inventory_size = 10,
    enable_inventory_bar = false,
	not_inventory_moveable = true,
    minable = {
      mining_time = 0.5,
      results = { {type="item", name="nullius-large-chest-1", amount=1} }
    },
	placeable_by = {item = "nullius-probe", count = 1},
    collision_box = {{-0.35, -0.35}, {0.35, 0.35}},
    selection_box = {{-0.5, -0.5}, {0.5, 0.5}},
    dying_explosion = "medium-explosion",
    integration_patch_render_layer = "decals",
    integration_patch = {
      filename = BASEENTITY .. "crash-site-chests/hr-crash-site-chest-2-ground.png",
      priority = crash_site_sprite_priority,
      width = 218,
      height = 186,
      shift = util.by_pixel(-10, 5),
      frame_count = 1,
      line_length = 1,
      scale = 0.5
    },
    picture = {
      layers = {
        {
          filename = BASEENTITY .. "crash-site-chests/hr-crash-site-chest-2.png",
          priority = "extra-high",
          width = 116,
          height = 88,
          shift = util.by_pixel(0, 8),
          scale = 0.5
        },
        {
          filename = BASEENTITY .. "crash-site-chests/hr-crash-site-chest-2-shadow.png",
          priority = "extra-high",
          width = 188,
          height = 126,
          shift = util.by_pixel(0, 5),
          draw_as_shadow = true,
          scale = 0.5
        }
      }
    }
  },

  {
    type = "simple-entity-with-owner",
    name = "nullius-landing-machine-1",
    icon = ENTICONPATH .. "crash-site-assembling-machine-1-repaired.png",
    icon_size = 64,
    flags = wreck_flags,
    map_color = {r = 0, g = 0.365, b = 0.58, a = 1},
    max_health = 100,
    alert_when_damaged = false,
    allow_copy_paste = false,
	localised_description = {"entity-description.nullius-minable",
	    "3x[item=nullius-small-miner-1] 12x[item=nullius-broken-grid-battery]"},
    minable = {
      mining_time = 0.5,
      results = {
	    {type="item", name="nullius-small-miner-1", amount=3},
		{type="item", name="nullius-broken-grid-battery", amount=12}
	  }
    },
	placeable_by = {item = "nullius-probe", count = 1},
    collision_box = {{-1.2, -0.7}, {1.2, 0.7}},
    selection_box = {{-1.5, -1}, {1.5, 1}},
    dying_explosion = "medium-explosion",
    integration_patch_render_layer = "decals",
    integration_patch = {
      filename = ENTITYPATH .. "crash/hr-crash-site-assembling-machine-1-ground.png",
      priority = crash_site_sprite_priority,
      width = 446,
      height = 234,
      shift = util.by_pixel(-31, 12),
      frame_count = 1,
      line_length = 1,
      scale = 0.5
    },

    picture = {
      layers = {
        {
          filename = ENTITYPATH .. "crash/hr-crash-site-assembling-machine-1-repaired.png",
          width = 282,
          height = 182,
          shift = util.by_pixel(-12, 3),
          scale = 0.5
        },
        {
          filename = ENTITYPATH .. "crash/hr-crash-site-assembling-machine-1-repaired-shadow.png",
          width = 278,
          height = 168,
          draw_as_shadow = true,
          shift = util.by_pixel(4, 6),
          scale = 0.5
        }
      }
    }
  },

  {
    type = "simple-entity-with-owner",
    name = "nullius-landing-machine-2",
    icon = ENTICONPATH .. "crash-site-assembling-machine-2-repaired.png",
    icon_size = 64,
    flags = wreck_flags,
    map_color = {r = 0, g = 0.365, b = 0.58, a = 1},
    max_health = 100,
    alert_when_damaged = false,
    allow_copy_paste = false,
	localised_description = {"entity-description.nullius-minable",
	    "[item=nullius-medium-assembler-1] 3x[item=nullius-broken-assembler] "
		.. "6x[item=nullius-grid-battery-1]"},
    minable = {
      mining_time = 0.5,
      results = {
        {type="item", name="nullius-medium-assembler-1", amount=1},
        {type="item", name="nullius-broken-assembler", amount=3},
        {type="item", name="nullius-grid-battery-1", amount=6}
      }
    },
	placeable_by = {item = "nullius-probe", count = 1},
    collision_box = {{-0.7, -1.2}, {0.7, 1.2}},
    selection_box = {{-1, -1.5}, {1, 1.5}},
    dying_explosion = "medium-explosion",
    integration_patch_render_layer = "decals",
    integration_patch ={
      filename = ENTITYPATH .. "crash/hr-crash-site-assembling-machine-2-ground.png",
      priority = crash_site_sprite_priority,
      width = 290,
      height = 238,
      shift = util.by_pixel(-8, -10),
      frame_count = 1,
      line_length = 1,
      scale = 0.5
    },

    picture = {
      layers = {
        {
          filename = ENTITYPATH .. "crash/hr-crash-site-assembling-machine-2-repaired.png",
          width = 198,
          height = 200,
          shift = util.by_pixel(-4, -11),
          scale = 0.5
        },
        {
          filename = ENTITYPATH .. "crash/hr-crash-site-assembling-machine-2-repaired-shadow.png",
          width = 208,
          height = 174,
          draw_as_shadow = true,
          shift = util.by_pixel(3, -9),
          scale = 0.5
        }
      }
    }
  }
})
