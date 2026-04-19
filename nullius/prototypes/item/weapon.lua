local ICONPATH = "__nullius__/graphics/icons/"
local ENTITYPATH = "__nullius__/graphics/entity/"

data:extend({
  {
    type = "gun",
    name = "nullius-drone-cannon",
    icon = "__base__/graphics/icons/artillery-turret.png",
    icon_size = 64,
    
    hidden = true,
    subgroup = "vehicle-weapon",
    order = "nullius-xm",
    stack_size = 1,
    attack_parameters = {
      type = "projectile",
      ammo_categories = {
        "nullius-scout-drone",
        "nullius-demolition-drone",
        "nullius-excavation-drone",
		    "nullius-shallow-excavation-drone",
        "nullius-terraforming-drone-grey",
        "nullius-terraforming-drone-tan",
        "nullius-terraforming-drone-brown",
        "nullius-terraforming-drone-red",
        "nullius-terraforming-drone-beige",
        "nullius-paving-drone-grey",
        "nullius-paving-drone-red",
        "nullius-paving-drone-blue",
        "nullius-paving-drone-yellow",
        "nullius-paving-drone-green",
        "nullius-paving-drone-white",
        "nullius-paving-drone-purple",
        "nullius-paving-drone-brown",
        "nullius-paving-drone-black",
        "nullius-paving-drone-hazard",
        "nullius-guide-drone-iron",
        "nullius-guide-drone-bauxite",
        "nullius-guide-drone-sandstone",
        "nullius-guide-drone-limestone",
        "nullius-guide-drone-copper",
        "nullius-guide-drone-uranium",
        "nullius-algaculture-drone",
        "nullius-horticulture-drone",
        "nullius-entomology-drone",
        "nullius-arboriculture-drone",
        "nullius-aquaculture-drone",
        "nullius-husbandry-drone",
        "nullius-sequestration-coal-drone",
        "nullius-sequestration-petroleum-drone"
      },
      cooldown = 200,
      movement_slow_down_factor = 0,
      projectile_creation_distance = 1.6,
      projectile_center = {-0.15625, -0.07812},
      range = 8,
      min_range = 96,
      projectile_creation_parameters = data.raw.gun["artillery-wagon-cannon"].attack_parameters.projectile_creation_parameters,
      sound = data.raw.gun["artillery-wagon-cannon"].attack_parameters.sound
    }
  },

  {
    type = "gun",
    name = "nullius-car-gun",
    localised_name = {"item-name.nullius-gun"},
    localised_description = {"item-description.nullius-gun"},
    icon = "__base__/graphics/icons/submachine-gun.png",
    icon_size = 64,
    
    hidden = true,
    subgroup = "vehicle-weapon",
    order = "nullius-xb",
    stack_size = 1,
    attack_parameters = {
      type = "projectile",
      ammo_category = "bullet",
      cooldown = 15,
      movement_slow_down_factor = 0.5,
      shell_particle = {
        name = "shell-particle",
        direction_deviation = 0.1,
        speed = 0.1,
        speed_deviation = 0.03,
        center = {0, 0},
        creation_distance = -0.6875,
        starting_frame_speed = 0.4,
        starting_frame_speed_deviation = 0.1
      },
      projectile_creation_distance = 0.65,
      range = 56,
      sound = data.raw["gun"]["tank-machine-gun"].attack_parameters.sound
    }
  },
  {
    type = "gun",
    name = "nullius-car-gun-2",
    localised_name = {"item-name.nullius-gun"},
    localised_description = {"item-description.nullius-gun"},
    icon = "__base__/graphics/icons/submachine-gun.png",
    icon_size = 64,
    
    hidden = true,
    subgroup = "vehicle-weapon",
    order = "nullius-xb",
    stack_size = 1,
    attack_parameters = {
      type = "projectile",
      ammo_category = "bullet",
      cooldown = 10,
      movement_slow_down_factor = 0.5,
      shell_particle = {
        name = "shell-particle",
        direction_deviation = 0.1,
        speed = 0.1,
        speed_deviation = 0.03,
        center = {0, 0},
        creation_distance = -0.6875,
        starting_frame_speed = 0.4,
        starting_frame_speed_deviation = 0.1
      },
      projectile_creation_distance = 0.65,
      range = 72,
      sound = data.raw["gun"]["tank-machine-gun"].attack_parameters.sound
    }
  },

  {
    type = "gun",
    name = "nullius-truck-gun",
    localised_name = {"item-name.nullius-gun"},
    localised_description = {"item-description.nullius-gun"},
    icon = "__base__/graphics/icons/tank-cannon.png",
    icon_size = 64,
    
    hidden = true,
    subgroup = "vehicle-weapon",
    order = "nullius-xd",
    stack_size = 1,
    attack_parameters = {
      type = "projectile",
      ammo_category = "bullet",
      cooldown = 12,
      movement_slow_down_factor = 0.3,
      shell_particle = {
        name = "shell-particle",
        direction_deviation = 0.1,
        speed = 0.1,
        speed_deviation = 0.03,
        center = {0, 0},
        creation_distance = -0.6875,
        starting_frame_speed = 0.4,
        starting_frame_speed_deviation = 0.1
      },
      projectile_center = {-0.15625, -0.07812},
      projectile_creation_distance = 1,
      range = 64,
      sound = data.raw["gun"]["tank-machine-gun"].attack_parameters.sound
    }
  },
  {
    type = "gun",
    name = "nullius-truck-gun-2",
    localised_name = {"item-name.nullius-gun"},
    localised_description = {"item-description.nullius-gun"},
    icon = "__base__/graphics/icons/tank-cannon.png",
    icon_size = 64,
    
    hidden = true,
    subgroup = "vehicle-weapon",
    order = "nullius-xd",
    stack_size = 1,
    attack_parameters = {
      type = "projectile",
      ammo_category = "bullet",
      cooldown = 6,
      movement_slow_down_factor = 0.3,
      shell_particle = {
        name = "shell-particle",
        direction_deviation = 0.1,
        speed = 0.1,
        speed_deviation = 0.03,
        center = {0, 0},
        creation_distance = -0.6875,
        starting_frame_speed = 0.4,
        starting_frame_speed_deviation = 0.1
      },
      projectile_center = {-0.15625, -0.07812},
      projectile_creation_distance = 1,
      range = 80,
      sound = data.raw["gun"]["tank-machine-gun"].attack_parameters.sound
    }
  },

  {
    type = "gun",
    name = "nullius-mecha-gun",
    localised_name = {"item-name.nullius-gun"},
    localised_description = {"item-description.nullius-gun"},
    icon = "__base__/graphics/icons/tank-cannon.png",
    icon_size = 64,
    
    hidden = true,
    subgroup = "vehicle-weapon",
    order = "nullius-xf",
    stack_size = 1,
    attack_parameters = {
      type = "projectile",
      ammo_category = "bullet",
      cooldown = 10,
      movement_slow_down_factor = 0.4,
      shell_particle = {
        name = "shell-particle",
        direction_deviation = 0.1,
        speed = 0.1,
        speed_deviation = 0.03,
        center = {0, 0},
        creation_distance = -0.6875,
        starting_frame_speed = 0.4,
        starting_frame_speed_deviation = 0.1
      },
      projectile_creation_distance = -0.5,
      projectile_center = {0, 0.3},
      projectile_orientation_offset = 0.03125,
      range = 80,
      sound = data.raw["gun"]["tank-machine-gun"].attack_parameters.sound
    }
  },

  {
    type = "gun",
    name = "nullius-car-launcher",
    localised_name = {"item-name.nullius-missile-launcher"},
    localised_description = {"item-description.nullius-missile-launcher"},
    icon = "__base__/graphics/icons/rocket-launcher.png",
    icon_size = 64,
    
    hidden = true,
    subgroup = "vehicle-weapon",
    order = "nullius-xc",
    stack_size = 1,
    attack_parameters = {
      type = "projectile",
      ammo_category = "rocket",
      cooldown = 40,
      movement_slow_down_factor = 0.5,
      projectile_creation_distance = 1.6,
      projectile_center = {-0.15625, -0.07812},
      range = 72,
      sound = data.raw["gun"]["tank-cannon"].attack_parameters.sound
    }
  },

  {
    type = "gun",
    name = "nullius-truck-launcher",
    localised_name = {"item-name.nullius-missile-launcher"},
    localised_description = {"item-description.nullius-missile-launcher"},
    icon = "__base__/graphics/icons/rocket-launcher.png",
    icon_size = 64,
    
    hidden = true,
    subgroup = "vehicle-weapon",
    order = "nullius-xe",
    stack_size = 1,
    attack_parameters = {
      type = "projectile",
      ammo_category = "rocket",
      cooldown = 30,
      movement_slow_down_factor = 0.3,
      projectile_creation_distance = 1.6,
      projectile_center = {-0.15625, -0.07812},
      range = 80,
      sound = data.raw["gun"]["tank-cannon"].attack_parameters.sound
    }
  },

  {
    type = "gun",
    name = "nullius-mecha-launcher",
    localised_name = {"item-name.nullius-missile-launcher"},
    localised_description = {"item-description.nullius-missile-launcher"},
    icon = "__base__/graphics/icons/rocket-launcher.png",
    icon_size = 64,
    
    hidden = true,
    subgroup = "vehicle-weapon",
    order = "nullius-xg",
    stack_size = 1,
    attack_parameters = {
      type = "projectile",
      ammo_category = "rocket",
      cooldown = 30,
      movement_slow_down_factor = 0.4,
      projectile_creation_distance = -0.5,
      projectile_center = {0, 0.3},
      projectile_orientation_offset = 0.0625,
      range = 80,
      sound = data.raw["gun"]["tank-cannon"].attack_parameters.sound
    }
  }
})

data:extend({
  {
    type = "gun",
    name = "nullius-mecha-drone-launcher-1",
    localised_name = {"item-name.nullius-mecha-drone-launcher"},
    icon = "__base__/graphics/icons/artillery-turret.png",
    icon_size = 64,
    
    subgroup = "vehicle-weapon",
    hidden = true,
    order = "nullius-xmb",
    attack_parameters = {
      type = "projectile",
      ammo_categories = data.raw.gun["nullius-drone-cannon"].attack_parameters.ammo_categories,
      cooldown = 120,
      range = 256,
      movement_slow_down_factor = 0.5,
      projectile_creation_distance = -0.5,
      projectile_center = {0, 0.3},
      projectile_orientation_offset = -0.0625,
      projectile_creation_parameters = data.raw.gun["artillery-wagon-cannon"].attack_parameters.projectile_creation_parameters,
      sound = data.raw.gun["artillery-wagon-cannon"].attack_parameters.sound
    },
    stack_size = 1
  },
  {
    type = "gun",
    name = "nullius-mecha-drone-launcher-2",
    localised_name = {"item-name.nullius-mecha-drone-launcher"},
    icon = "__base__/graphics/icons/artillery-turret.png",
    icon_size = 64,
    
    subgroup = "vehicle-weapon",
    hidden = true,
    order = "nullius-xmc",
    attack_parameters = {
      type = "projectile",
      ammo_categories = data.raw.gun["nullius-drone-cannon"].attack_parameters.ammo_categories,
      cooldown = 120,
      range = 256,
      movement_slow_down_factor = 0.5,
      projectile_creation_distance = -0.5,
      projectile_orientation_offset = -0.03125,
      projectile_center = {0, 0.3},
      projectile_creation_parameters = data.raw.gun["artillery-wagon-cannon"].attack_parameters.projectile_creation_parameters,
      sound = data.raw.gun["artillery-wagon-cannon"].attack_parameters.sound
    },
    stack_size = 1
  },

  {
    type = "gun",
    name = "nullius-gun",
    icon = "__base__/graphics/icons/pistol.png",
    icon_size = 64,
    
    subgroup = "demolitions",
    order = "nullius-cb",
    stack_size = 10,
    attack_parameters = {
      type = "projectile",
      ammo_category = "bullet",
      cooldown = 20,
      movement_slow_down_factor = 0.2,
      shell_particle = {
        name = "shell-particle",
        direction_deviation = 0.1,
        speed = 0.1,
        speed_deviation = 0.03,
        center = {0, 0.1},
        creation_distance = -0.5,
        starting_frame_speed = 0.4,
        starting_frame_speed_deviation = 0.1
      },
      projectile_creation_distance = 1.125,
      range = 48,
      sound = data.raw["gun"]["pistol"].attack_parameters.sound
    }
  },
  {
    type = "recipe",
    name = "nullius-gun",
    enabled = false,
    category = "small-crafting",
    always_show_made_in = true,
    energy_required = 10,
    ingredients = {
      {type = "item", name = "nullius-steel-plate", amount = 6},
      {type = "item", name = "nullius-steel-wire", amount = 2},
      {type = "item", name = "nullius-steel-gear", amount = 1},
      {type = "item", name = "nullius-rubber", amount = 1}
    },
    results = {
				{type="item", name="nullius-gun", amount = 1}
			}
  },

  {
    type = "gun",
    name = "nullius-rifle",
    icon = "__base__/graphics/icons/submachine-gun.png",
    icon_size = 64,
    
    subgroup = "demolitions",
    order = "nullius-cc",
    stack_size = 5,
    attack_parameters = {
      type = "projectile",
      ammo_category = "bullet",
      cooldown = 6,
      movement_slow_down_factor = 0.4,
      shell_particle = {
        name = "shell-particle",
        direction_deviation = 0.15,
        speed = 0.15,
        speed_deviation = 0.05,
        center = {0, 0.1},
        creation_distance = -0.5,
        starting_frame_speed = 0.5,
        starting_frame_speed_deviation = 0.15
      },
      projectile_creation_distance = 1.125,
      range = 72,
      sound = data.raw["gun"]["submachine-gun"].attack_parameters.sound
    }
  },
  {
    type = "recipe",
    name = "nullius-rifle",
    enabled = false,
    always_show_made_in = true,
    category = "small-crafting",
    energy_required = 30,
    ingredients = {
      {type = "item", name = "nullius-gun", amount = 2},
      {type = "item", name = "nullius-titanium-plate", amount = 4},
      {type = "item", name = "nullius-motor-3", amount = 1},
      {type = "item", name = "nullius-sensor-2", amount = 1}
    },
   results = {
				{type="item", name="nullius-rifle", amount = 1}
			}
  },

  {
    type = "gun",
    name = "nullius-missile-launcher",
    icon = "__base__/graphics/icons/rocket-launcher.png",
    icon_size = 64,
    
    subgroup = "demolitions",
    order = "nullius-d",
    stack_size = 10,
    attack_parameters = {
      type = "projectile",
      ammo_category = "rocket",
      movement_slow_down_factor = 0.5,
      cooldown = 45,
      projectile_creation_distance = 0.6,
      range = 64,
      projectile_center = {-0.17, 0},
      sound = data.raw["gun"]["rocket-launcher"].attack_parameters.sound
    }
  },
  {
    type = "recipe",
    name = "nullius-missile-launcher",
    enabled = false,
    category = "small-crafting",
    always_show_made_in = true,
    energy_required = 5,
    ingredients = {
      {type = "item", name = "nullius-gun", amount = 1},
      {type = "item", name = "nullius-pipe-2", amount = 3},
      {type = "item", name = "nullius-sensor-1", amount = 1}
    },
    results = {
				{type="item", name="nullius-missile-launcher", amount = 1}
			}
  },

  {
    type = "ammo",
    name = "nullius-missile-1",
    icon = "__base__/graphics/icons/explosive-rocket.png",
    icon_size = 64,
    
    subgroup = "demolitions",
    order = "nullius-fb",
    stack_size = 100,
    ammo_category = "rocket",
    ammo_type = {
      target_type = "position",
      action = {
        type = "direct",
        action_delivery = {
          type = "projectile",
          projectile = "nullius-missile-1",
          starting_speed = 0.1,
          source_effects = {
            type = "create-entity",
            entity_name = "explosion-hit"
          }
        }
      }
    }
  },
  {
    type = "recipe",
    name = "nullius-missile-1",
    enabled = false,
    show_amount_in_title = false,
    always_show_products = true,
    category = "small-crafting",
    always_show_made_in = true,
    energy_required = 3,
    ingredients = {
      {type = "item", name = "cliff-explosives", amount = 5},
      {type = "item", name = "nullius-steel-sheet", amount = 3},
      {type = "item", name = "processed-fuel", amount = 1},
      {type = "item", name = "nullius-sensor-1", amount = 1},
      {type = "item", name = "nullius-battery-1", amount = 1},
      {type = "item", name = "nullius-motor-2", amount = 1}
    },
    results = {
				{type="item", name="nullius-missile-1", amount = 6}
			}
  },
  {
    type = "recipe",
    name = "nullius-boxed-missile-1",
    enabled = false,
    show_amount_in_title = false,
    always_show_products = true,
    category = "large-assembly",
    subgroup = "boxed-demolition",
    always_show_made_in = true,
    energy_required = 15,
    ingredients = {
      {type = "item", name = "nullius-box-explosive", amount = 5},
      {type = "item", name = "nullius-box-steel-sheet", amount = 3},
      {type = "item", name = "nullius-box-methanol-canister", amount = 1},
      {type = "item", name = "nullius-box-sensor-1", amount = 1},
      {type = "item", name = "nullius-box-battery-1", amount = 1},
      {type = "item", name = "nullius-box-motor-2", amount = 1}
    },
   results = {
			{type="item", name="nullius-box-missile-1", amount = 6}
		}
  },

  {
    type = "ammo",
    name = "nullius-missile-2",
    icon = "__base__/graphics/icons/atomic-bomb.png",
    icon_size = 64,
    
    subgroup = "demolitions",
    order = "nullius-fc",
    stack_size = 100,
    ammo_category = "rocket",
    ammo_type = {
      target_type = "position",
      action = {
        type = "direct",
        action_delivery = {
          type = "projectile",
          projectile = "nullius-missile-2",
          starting_speed = 0.1,
          source_effects = {
            type = "create-entity",
            entity_name = "explosion-hit"
          }
        }
      }
    }
  },
  {
    type = "recipe",
    name = "nullius-missile-2",
    enabled = false,
    show_amount_in_title = false,
    always_show_products = true,
    always_show_made_in = true,
    category = "small-crafting",
    energy_required = 10,
    ingredients = {
      {type = "item", name = "nullius-missile-1", amount = 3},
      {type = "item", name = "nullius-titanium-sheet", amount = 5},
      {type = "item", name = "nullius-fusion-cell", amount = 1},
      {type = "item", name = "nullius-sensor-2", amount = 1},
      {type = "item", name = "nullius-yield-module-2", amount = 1}
    },
    results = {
				{type="item", name="nullius-missile-2", amount = 1}
			}
  },
  {
    type = "recipe",
    name = "nullius-boxed-missile-2",
    enabled = false,
    show_amount_in_title = false,
    always_show_products = true,
    always_show_made_in = true,
    category = "medium-only-assembly",
    subgroup = "boxed-demolition",
    energy_required = 10,
    ingredients = {
      {type = "item", name = "nullius-box-missile-1", amount = 3},
      {type = "item", name = "nullius-box-titanium-sheet", amount = 5},
      {type = "item", name = "nullius-fusion-cell", amount = 5},
      {type = "item", name = "nullius-box-sensor-2", amount = 1},
      {type = "item", name = "nullius-box-yield-module-2", amount = 1}
    },
    results = {
				{type="item", name="nullius-box-missile-2", amount = 1}
			}
  },

  {
    type = "ammo",
    name = "nullius-magazine",
	  localised_name = {"", {"item-name.nullius-magazine"}, " ", tostring(1)},
    icon = "__base__/graphics/icons/piercing-rounds-magazine.png",
    icon_size = 64,
    
    subgroup = "demolitions",
    order = "nullius-eb",
    stack_size = 200,
    magazine_size = 10,
    ammo_category = "bullet",
    ammo_type = {
      target_type = "position",
      action = {
        {
          type = "direct",
          action_delivery = {
            type = "instant",
            source_effects = {
              type = "create-explosion",
              entity_name = "explosion-gunshot"
            },
            target_effects = {
              type = "create-entity",
              entity_name = "explosion-hit",
              offsets = {{0, 1}},
              offset_deviation = {{-0.5, -0.5}, {0.5, 0.5}}
            }
          }
        },
        {
          type = "area",
          radius = 0.5,
          action_delivery = {
            type = "instant",
            target_effects = {
              {
                type = "damage",
                repeat_count = 3,
                repeat_count_deviation = 4,
                damage = { amount = 200, type = "physical"}
              },
              {
                type = "damage",
                repeat_count = 6,
                repeat_count_deviation = 6,
                damage = { amount = 50, type = "physical"}
              }
            }
          }
        }
      }
    }
  },
  {
    type = "ammo",
    name = "nullius-magazine-2",
	localised_name = {"", {"item-name.nullius-magazine"}, " ", tostring(2)},
    icon = "__base__/graphics/icons/uranium-rounds-magazine.png",
    icon_size = 64,
    
    subgroup = "demolitions",
    order = "nullius-ec",
    stack_size = 200,
    magazine_size = 10,
    ammo_category = "bullet",
    ammo_type = {
      target_type = "position",
      action = {
        {
          type = "direct",
          action_delivery = {
            type = "instant",
            source_effects = {
              type = "create-explosion",
              entity_name = "explosion-gunshot"
            },
            target_effects = {
              type = "create-entity",
              entity_name = "explosion-hit",
              offsets = {{0, 1}},
              offset_deviation = {{-0.8, -0.8}, {0.8, 0.8}}
            }
          }
        },
        {
          type = "area",
          radius = 0.8,
          action_delivery = {
            type = "instant",
            target_effects = {
              {
                type = "damage",
                repeat_count = 5,
                repeat_count_deviation = 3,
                damage = { amount = 500, type = "physical"}
              },
              {
                type = "damage",
                repeat_count = 5,
                repeat_count_deviation = 3,
                damage = { amount = 200, type = "physical"}
              }
            }
          }
        }
      }
    }
  },
  {
    type = "recipe",
    name = "nullius-magazine",
    enabled = false,
    always_show_made_in = true,
    show_amount_in_title = false,
    always_show_products = true,
    category = "hand-casting",
    energy_required = 5,
    ingredients = {
      {type = "item", name = "cliff-explosives", amount = 1},
      {type = "item", name = "nullius-steel-rod", amount = 6}
    },
    results = {
			{type="item", name="nullius-magazine", amount = 20}
		}
  },
  {
    type = "recipe",
    name = "nullius-boxed-magazine",
    enabled = false,
    always_show_made_in = true,
    show_amount_in_title = false,
    always_show_products = true,
    category = "machine-casting",
    subgroup = "boxed-demolition",
    energy_required = 25,
    ingredients = {
      {type = "item", name = "nullius-box-explosive", amount = 1},
      {type = "item", name = "nullius-box-steel-rod", amount = 6}
    },
    results = {
			{type="item", name="nullius-box-magazine", amount = 20}
		}
  },
  {
    type = "recipe",
    name = "nullius-magazine-2",
    enabled = false,
    always_show_made_in = true,
    show_amount_in_title = false,
    always_show_products = true,
    category = "hand-casting",
    energy_required = 8,
    ingredients = {
      {type = "item", name = "nullius-box-magazine", amount = 2},
      {type = "item", name = "nullius-uranium", amount = 1},
	  {type = "item", name = "nullius-copper-sheet", amount = 1}
    },
    results = {
			{type="item", name="nullius-magazine-2", amount = 3}
		}
  },

  {
    type = "recipe",
    name = "nullius-improvised-explosive",
    localised_name = {"recipe-name.nullius-improvised-explosive"},
	icons = {
      {
        icon = "__base__/graphics/icons/explosives.png",
        icon_size = 64,
        
        scale = 0.5
      },
      {
        icon = "__core__/graphics/icons/mip/slot-item-in-hand.png",
        icon_size = 64,
		scale = 0.3,
        shift = {-7, -7}
      }
	},
    order = "nullius-xb",
    enabled = false,
    always_show_made_in = true,
    allow_decomposition = false,
    allow_as_intermediate = false,
    category = "hand-crafting",
    energy_required = 30,
    ingredients = {
      {type="item", name="nullius-chlorine-barrel", amount=1},
      {type="item", name="processed-fuel", amount=5},
      {type="item", name="nullius-red-wire", amount=1},
      {type="item", name="nullius-green-wire", amount=1},
      {type="item", name="nullius-small-miner-1", amount=1}
    },
    results = {
				{type="item", name="cliff-explosives", amount = 1}
			}
  },
  {
    type = "recipe",
    name = "nullius-explosive",
	  localised_name = {"", {"item-name.nullius-explosive"}, " ", tostring(1)},
    order = "nullius-xc",
    enabled = false,
    always_show_made_in = true,
    category = "basic-chemistry",
    crafting_machine_tint = {
      primary = data.raw.fluid["nullius-acid-nitric"].flow_color,
      secondary = data.raw.fluid["nullius-glycerol"].flow_color
    },
    energy_required = 4,
    ingredients = {
      {type="fluid", name="nullius-acid-nitric", amount=18},
      {type="fluid", name="nullius-acid-sulfuric", amount=18},
      {type="fluid", name="nullius-glycerol", amount=6},
      {type="item", name="nullius-sand", amount=2},
      {type="item", name="nullius-plastic", amount=1},
      {type="item", name="nullius-red-wire", amount=1}
    },
    results = {
      {type="item", name="cliff-explosives", amount=1},
      {type="fluid", name="nullius-wastewater", amount=16}
    },
    main_product = "cliff-explosives"
  },
  {
    type = "recipe",
    name = "nullius-boxed-explosive",
  	localised_name = {"recipe-name.nullius-boxed",
	    {"", {"item-name.nullius-explosive"}, " ", tostring(1)}},
    enabled = false,
    category = "basic-chemistry",
    subgroup = "boxed-demolition",
	  order = "nullius-cb",
    crafting_machine_tint = {
      primary = data.raw.fluid["nullius-acid-nitric"].flow_color,
      secondary = data.raw.fluid["nullius-glycerol"].flow_color
    },
    always_show_made_in = true,
    energy_required = 20,
    ingredients = {
      {type="fluid", name="nullius-acid-nitric", amount=90},
      {type="fluid", name="nullius-acid-sulfuric", amount=90},
      {type="fluid", name="nullius-glycerol", amount=30},
      {type="item", name="nullius-box-sand", amount=2},
      {type="item", name="nullius-box-plastic", amount=1},
      {type="item", name="nullius-box-red-wire", amount=1}
    },
    results = {
      {type="item", name="nullius-box-explosive", amount=1},
      {type="fluid", name="nullius-wastewater", amount=80}
    },
    main_product = "nullius-box-explosive"
  },
  {
    type = "recipe",
    name = "nullius-explosive-2",
	  localised_name = {"", {"item-name.nullius-explosive"}, " ", tostring(2)},
	  icons = {
      {
        icon = "__base__/graphics/icons/explosives.png",
        icon_size = 64,
        
        scale = 0.5
      },
      {
        icon = "__angelssmeltinggraphics__/graphics/icons/powder-aluminium.png",
        icon_size = 64,
		    scale = 0.3,
        shift = {-7, -7}
      }
	  },
    order = "nullius-xd",
    enabled = false,
    always_show_made_in = true,
    category = "basic-chemistry",
    crafting_machine_tint = {
      primary = data.raw.fluid["nullius-glycerol"].flow_color,
      secondary = data.raw.fluid["nullius-acid-nitric"].flow_color
    },
    energy_required = 10,
    ingredients = {
      {type="fluid", name="nullius-acid-nitric", amount=24},
      {type="fluid", name="nullius-acid-sulfuric", amount=20},
      {type="fluid", name="nullius-glycerol", amount=8},
      {type="item", name="nullius-cellulose", amount=5},
      {type="item", name="nullius-aluminum-powder", amount=4},
      {type="item", name="nullius-plastic", amount=2},
      {type="item", name="nullius-red-wire", amount=1},
      {type="item", name="nullius-green-wire", amount=1}
    },
    results = {
      {type="item", name="cliff-explosives", amount=4},
      {type="fluid", name="nullius-sludge", amount=10}
    },
    main_product = "cliff-explosives"
  },
  {
    type = "recipe",
    name = "nullius-boxed-explosive-2",
	  localised_name = {"recipe-name.nullius-boxed",
	    {"", {"item-name.nullius-explosive"}, " ", tostring(2)}},
	  icons = {
      {
        icon = ICONPATH .. "crate.png",
        icon_size = 64
      },
      {
        icon = "__base__/graphics/icons/explosives.png",
        icon_size = 64,
        
        scale = 0.45
      },
      {
        icon = "__angelssmeltinggraphics__/graphics/icons/powder-aluminium.png",
        icon_size = 64,
		    scale = 0.27,
        shift = {-6, -6}
      }
	  },
    enabled = false,
    always_show_made_in = true,
    category = "basic-chemistry",
	subgroup = "boxed-demolition",
	order = "nullius-cc",
    crafting_machine_tint = {
      primary = data.raw.fluid["nullius-glycerol"].flow_color,
      secondary = data.raw.fluid["nullius-acid-nitric"].flow_color
    },
    energy_required = 50,
    ingredients = {
      {type="fluid", name="nullius-acid-nitric", amount=120},
      {type="fluid", name="nullius-acid-sulfuric", amount=100},
      {type="fluid", name="nullius-glycerol", amount=40},
      {type="item", name="nullius-box-cellulose", amount=5},
      {type="item", name="nullius-box-aluminum-powder", amount=4},
      {type="item", name="nullius-box-plastic", amount=2},
      {type="item", name="nullius-box-red-wire", amount=1},
      {type="item", name="nullius-box-green-wire", amount=1}
    },
    results = {
      {type="item", name="nullius-box-explosive", amount=4},
      {type="fluid", name="nullius-sludge", amount=50}
    },
    main_product = "nullius-box-explosive"
  },

  {
    type = "item",
    name = "nullius-turret",
    icon = "__base__/graphics/icons/laser-turret.png",
    icon_size = 64,
    
    subgroup = "drone-launcher",
    order = "nullius-h",
    place_result = "nullius-turret",
    stack_size = 50
  },
  {
    type = "recipe",
    name = "nullius-turret",
    enabled = false,
    category = "nanotechnology",
    energy_required = 30,
    ingredients = {
      {type="item", name="nullius-box-lamp-2", amount=2},
      {type="item", name="nullius-box-monocrystalline-silicon", amount=2},
      {type="item", name="nullius-box-hard-glass", amount=1},
      {type="item", name="nullius-night-vision-3", amount=1},
      {type="item", name="nullius-motor-3", amount=2},
      {type="item", name="nullius-box-steel-plate", amount=2},
      {type="item", name="nullius-box-copper-sheet", amount=1},
      {type="item", name="nullius-transformer", amount=2},
      {type="fluid", name="nullius-compressed-helium", amount=20, fluidbox_index=1}
    },
    results = {
				{type="item", name="nullius-turret", amount = 1}
			}
  },

  {
	type = "selection-tool",
	name = "nullius-rock-picker",
	icons = {{
	  icon = ICONPATH.."rockpicker.png",
	  icon_size = 128
    }},
	flags = {"not-stackable"},
    subgroup = "demolitions",
    order = "nullius-r",
	stack_size = 1,
	
    select = {
      border_color = {r = 0.8, g = 0.4, b = 0.1, a = 0.8},
      cursor_box_type = "entity",
      mode = "any-entity",
      entity_type_filters = {"simple-entity",
	    "item-entity", "rail-remnants", "corpse"},
    },
    alt_select = {
      border_color = {r = 0.8, g = 0.4, b = 0.1, a = 0.8},
      cursor_box_type = "entity",
      mode = "any-entity",
      entity_type_filters = {"rail-remnants", "corpse"},
    }
  },
  {
    type = "recipe",
    name = "nullius-rock-picker",
    enabled = false,
    always_show_made_in = true,
    show_amount_in_title = false,
    always_show_products = true,
    category = "large-crafting",
    energy_required = 10,
    ingredients = {
      {type="item", name="nullius-car-1", amount=1},
      {type="item", name="nullius-sensor-1", amount=2},
      {type="item", name="nullius-small-miner-2", amount=1},
      {type="item", name="fast-splitter", amount=1},
	  {type="item", name="nullius-hydrogen-canister", amount=8}
    },
    results = {
				{type="item", name="nullius-rock-picker", amount = 1}
			}
  }
})
