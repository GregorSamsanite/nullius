local ICONPATH = "__nullius__/graphics/icons/"
local ENTITYPATH = "__nullius__/graphics/entity/"

local item_sounds = require("__base__.prototypes.item_sounds")

local function create_drone(base_name, group, suborder, base_suffix, stack, tech, flare, drone_icons, remote_icons, number)
  local prefix = "nullius-"..base_name
  local suffix = ""
  if (base_suffix ~= nil) then
    suffix = "-"..base_suffix
  end
  local suffix1 = suffix
  if (number ~= nil) then
    suffix = suffix.."-"..number
  end
  local drone_name = prefix.."-drone"..suffix
  local drone_icon = {
    icon = ICONPATH .. base_name..suffix..".png",
    icon_size = 64
  }
  if (drone_icons == nil) then
    drone_icons = { drone_icon }
  end
  if (remote_icons == nil) then
    remote_icons = {
      {
        icon = ICONPATH .. "target.png",
        icon_size = 64
      },
      drone_icon
    }
  end

  if (flare == nil) then
    flare = drone_name
    data:extend({
      {
        type = "capsule",
        name = prefix.."-remote"..suffix,
        icons = remote_icons,
        flags = {"spawnable", "only-in-cursor", "not-stackable"},
        hidden_in_factoriopedia = true,
        capsule_action = {
          type = "artillery-remote",
          flare = prefix.."-flare"..suffix
        },
        subgroup = group.."-remote",
        order = "nullius-"..suborder,
        
        inventory_move_sound = item_sounds.artillery_remote_inventory_move,
        pick_sound = item_sounds.mechanical_inventory_pickup,
        drop_sound = item_sounds.artillery_remote_inventory_move,
        stack_size = 1
      },
    })
  end

  local lname = nil
  if (number ~= nil) then
    lname = {"", {"item-name."..prefix.."-drone"..suffix1}, " ", tostring(number)}
  end

  data:extend({
    {
      type = "ammo",
      name = drone_name,
      localised_name = lname,
      icons = drone_icons,
      subgroup = group,
      order = "nullius-"..suborder,
      stack_size = stack,
      ammo_category = flare,
      ammo_type = {
        target_type = "position",
        action = {
          type = "direct",
          action_delivery = {
            type = "artillery",
            projectile = prefix.."-drone-projectile"..suffix,
            starting_speed = 1,
            direction_deviation = 0,
            range_deviation = 0,
            source_effects = {
              type = "create-explosion",
              entity_name = "artillery-cannon-muzzle-flash"
            }
          }
        }
      }
    }
  })
end


local function create_terraform(suffix, tile, suborder, tech)
  create_drone("terraforming", "drone", "d"..suborder, suffix, 5, tech)
  data:extend({
    {
      type = "recipe",
      name = "nullius-terraforming-drone-"..suffix,
      enabled = false,
      always_show_made_in = true,
      category = "huge-crafting",
      energy_required = 60,
      ingredients = {
        {type = "item", name = "nullius-shallow-excavation-drone", amount = 1},
        {type = "item", name = "nullius-construction-bot-3", amount = 2},
        {type = "item", name = "rocket-fuel", amount = 2},
        {type = "item", name = "nullius-box-land-fill-"..tile, amount = 200}
      },
      results = {
			  {type="item", name="nullius-terraforming-drone-"..suffix, amount = 1}
      }
    }
  })
end

local function create_paving(suffix, landfill, suborder, tech, tile)
  if (tile == nil) then
    tile = suffix
  end
  create_drone("paving", "paving", "b"..suborder, suffix, 5, tech)
  data:extend({
    {
      type = "recipe",
      name = "nullius-paving-drone-"..suffix,
      enabled = false,
      always_show_made_in = true,
      category = "huge-crafting",
      energy_required = 25,
      ingredients = {
        {type = "item", name = "nullius-terraforming-drone-"..landfill, amount = 1},
        {type = "item", name = "nullius-logistic-bot-3", amount = 1},
        {type = "item", name = "rocket-fuel", amount = 1},
        {type = "item", name = "nullius-box-"..tile.."-concrete", amount = 300}
      },
      results = {
				{type="item", name="nullius-paving-drone-"..suffix, amount = 1}
			}
    }
  })
end

local function create_miner(mineral, suborder, group, tech, iname, isize, itint)
  local drone_icons1 = {
    {
      icon = ICONPATH .. "asteroid-miner-1.png",
      icon_size = 64
    },
    {
      icon = iname,
      icon_size = isize,
      tint = itint,
      scale = (0.5 * (32 / isize)),
      shift = {0, 7}
    }
  }
  local drone_icons2 = {
    {
      icon = ICONPATH .. "asteroid-miner-2.png",
      icon_size = 64
    },
    {
      icon = iname,
      icon_size = isize,
      tint = itint,
      scale = (0.6 * (32 / isize)),
      shift = {0, 8}
    }
  }
  local remote_icons = {
    {
      icon = ICONPATH .. "target.png",
      icon_size = 64
    },
    {
      icon = iname,
      icon_size = isize,
      tint = itint,
      scale = (0.75 * (32 / isize)),
      shift = {0, -2}
    }
  }
  local sg = "asteroid-"..group
  create_drone("guide", sg, suborder.."b", mineral, 10, tech, "nullius-guide-drone-"..mineral, drone_icons1, remote_icons, 1)
  create_drone("guide", sg, suborder.."c", mineral, 5, tech, "nullius-guide-drone-"..mineral, drone_icons2, remote_icons, 2)
  data:extend({
    {
      type = "capsule",
      name = "nullius-guide-remote-"..mineral,
      icons = remote_icons,
      flags = {"spawnable", "only-in-cursor","not-stackable"},
      hidden_in_factoriopedia = true,
      capsule_action = {
        type = "artillery-remote",
        flare = "nullius-guide-flare-"..mineral
      },
      subgroup = sg,
      order = "nullius-"..suborder.."e",
      inventory_move_sound = item_sounds.artillery_remote_inventory_move,
      pick_sound = item_sounds.mechanical_inventory_pickup,
      drop_sound = item_sounds.artillery_remote_inventory_move,
      stack_size = 1
    },
    {
      type = "recipe",
      name = "nullius-guide-drone-"..mineral.."-redeploy",
      localised_name = {"recipe-name.nullius-redeploy", {"item-name.nullius-guide-drone-"..mineral}},
      icons = {
        {
          icon = ICONPATH .. "asteroid-miner-1.png",
          icon_size = 64
        },
        {
          icon = iname,
          icon_size = isize,
          tint = itint,
          scale = (0.4 * (32 / isize)),
          shift = {10, 10}
        }
      },
      enabled = false,
      always_show_made_in = true,
      always_show_products = true,
      allow_as_intermediate = false,
      allow_decomposition = false,
      no_productivity = true,
      category = "huge-crafting",
      subgroup = sg,
      order = "nullius-"..suborder.."d",
      energy_required = 20,
      ingredients = {
        {type = "item", name = "nullius-guide-drone-"..mineral.."-1", amount = 2},
        {type = "item", name = "nullius-box-astronomy-pack", amount = 1}
      },
      results = {
				{type="item", name="nullius-asteroid-miner-1", amount = 1}
			}
    },
    {
      type = "recipe",
      name = "nullius-guide-drone-"..mineral.."-2",
      enabled = false,
      always_show_made_in = true,
      always_show_products = true,
      category = "huge-crafting",
      energy_required = 30,
      ingredients = {
        {type = "item", name = "nullius-guide-drone-"..mineral.."-1", amount = 40},
        {type = "item", name = "nullius-relay-3", amount = 1}
      },
      results = {
				{type="item", name="nullius-guide-drone-"..mineral.."-2", amount = 1}
			}
    }
  })
end


local function create_bio_drone(base, suborder, iname, tech)
  local drone_icons = {
    {
      icon = "__base__/graphics/icons/defender.png",
      icon_size = 64,
      
    },
    {
      icon = iname,
      icon_size = 64,
      scale = 0.38,
      shift = {5, 5}
    }
  }
  local remote_icons = {
    {
      icon = ICONPATH .. "target.png",
      icon_size = 64
    },
    {
      icon = iname,
      icon_size = 64,
      scale = 0.45,
      shift = {0, -1}
    }
  }
  create_drone(base, "farming", suborder, nil, 5, tech, nil, drone_icons, remote_icons)
end

local function create_farmer(base, suborder, species, spore, spore_count,
    tech, iname, drone_tier, bot_tier, cost1, cost2, cost3, cost4)
  create_bio_drone(base, "b"..suborder, iname, tech)
  data:extend({
    {
      type = "recipe",
      name = "nullius-"..base.."-drone",
      enabled = false,
      always_show_made_in = true,
      category = "huge-crafting",
      energy_required = 60,
      ingredients = {
        {type = "item", name = "nullius-scout-drone-" .. drone_tier, amount = 1},
        {type = "item", name = "nullius-construction-bot-" .. bot_tier, amount = 1},
        {type = "item", name = "nullius-"..species.."-progenitor", amount = 1},
        {type = "item", name = "nullius-"..spore, amount = spore_count},
        cost1, cost2, cost3, cost4
      },
      results = {
				{type="item", name="nullius-"..base.."-drone", amount = 1}
			}
    }
  })
end


create_drone("scout", "drone", "bb", "1", 10, "nullius-exploration-1", "nullius-scout-drone")
create_drone("scout", "drone", "bc", "2", 10, "nullius-exploration-1", "nullius-scout-drone")
create_drone("demolition", "drone", "cb", nil, 10, "nullius-terraforming-1")
create_drone("shallow-excavation", "drone", "cc", nil, 10, "nullius-terraforming-1")
create_drone("excavation", "drone", "cd", nil, 10, "nullius-terraforming-1")

create_terraform("grey", "gravel", "b", "nullius-terraforming-2")
create_terraform("tan", "sand", "c", "nullius-terraforming-2")
create_terraform("brown", "bauxite", "d", "nullius-terraforming-2")
create_terraform("red", "iron", "e", "nullius-terraforming-2")
create_terraform("beige", "limestone", "f", "nullius-terraforming-2")

create_paving("grey", "grey", "b", "nullius-terraforming-3", "reinforced")
create_paving("white", "beige", "c", "nullius-terraforming-3")
create_paving("red", "red", "d", "nullius-terraforming-3")
create_paving("blue", "beige", "e", "nullius-terraforming-3")
create_paving("yellow", "tan", "f", "nullius-terraforming-3")
create_paving("green", "beige", "g", "nullius-terraforming-3")
create_paving("purple", "red", "h", "nullius-terraforming-3")
create_paving("brown", "brown", "i", "nullius-terraforming-3")
create_paving("black", "grey", "j", "nullius-terraforming-3")
create_paving("hazard", "tan", "k", "nullius-terraforming-3")

create_miner("iron", "b", 1, "nullius-asteroid-mining-1", "__base__/graphics/icons/iron-ore.png", 64)
create_miner("sandstone", "c", 1, "nullius-asteroid-mining-1",
    "__angelsrefininggraphics__/graphics/icons/angels-ore6/angels-ore6-2.png", 64, {184, 125, 73})
create_miner("bauxite", "d", 1, "nullius-asteroid-mining-1", "__angelssmeltinggraphics__/graphics/icons/ore-bauxite.png", 32)
create_miner("limestone", "e", 2, "nullius-asteroid-mining-1",
    "__angelsrefininggraphics__/graphics/icons/angels-ore6/angels-ore6-3.png", 64, {0.898, 0.773, 0.688})
create_miner("copper", "f", 2, "nullius-asteroid-mining-1", "__base__/graphics/icons/copper-ore.png", 64)
create_miner("uranium", "g", 2, "nullius-asteroid-mining-1", "__base__/graphics/icons/uranium-ore.png", 64)

create_farmer("algaculture", "b", "algae", "algae-spore", 60, "nullius-ecology-1",
    ICONPATH .. "algae.png", 1, 1,
    {type = "item", name = "nullius-box-mineral-dust", amount = 10}, 
    {type = "item", name = "nullius-bacteria-barrel", amount = 1})
create_farmer("horticulture", "c", "grass", "box-grass-seed", 20, "nullius-ecology-2",
    ICONPATH .. "grass.png", 1, 1,
    {type = "item", name = "nullius-fertilizer", amount = 20}, 
    {type = "item", name = "nullius-water-barrel", amount = 10}, 
    {type = "item", name = "nullius-bacteria-barrel", amount = 1})
create_farmer("arboriculture", "d", "tree", "tree-seed", 40, "nullius-ecology-4",
    "__base__/graphics/icons/tree-08.png", 2, 1,
    {type = "item", name = "nullius-fertilizer", amount = 30}, 
    {type = "item", name = "nullius-water-barrel", amount = 15}, 
    {type = "item", name = "nullius-worm", amount = 10})
create_farmer("entomology", "e", "worm", "worm-egg", 40, "nullius-ecology-3",
    "__base__/graphics/icons/small-worm.png", 1, 2,
    {type = "item", name = "nullius-grass", amount = 30}, 
    {type = "item", name = "nullius-sludge-barrel", amount = 5}, 
    {type = "item", name = "nullius-bacteria-barrel", amount = 2})
create_farmer("aquaculture", "f", "fish", "fish-egg", 50, "nullius-ecology-5",
    "__base__/graphics/icons/fish.png", 2, 2,
    {type = "item", name = "nullius-algae", amount = 40}, 
    {type = "item", name = "nullius-worm", amount = 20})
create_farmer("husbandry", "g", "arthropod", "arthropod-egg", 30, "nullius-ecology-6",
    "__base__/graphics/icons/small-biter.png", 2, 3,
    {type = "item", name = "nullius-box-wood", amount = 15}, 
    {type = "item", name = "nullius-fish", amount = 40}, 
    {type = "item", name = "nullius-arthropod", amount = 5}, 
    {type = "item", name = "nullius-shackle", amount = 6})

create_bio_drone("sequestration-coal", "cb", "__base__/graphics/icons/coal-1.png", "nullius-carbon-sequestration-4")
create_bio_drone("sequestration-petroleum", "cc", "__base__/graphics/icons/fluid/crude-oil.png", "nullius-carbon-sequestration-4")


data:extend({
  {
    type = "recipe",
    name = "nullius-scout-drone-1",
    enabled = false,
    always_show_made_in = true,
    category = "small-crafting",
    energy_required = 4,
    ingredients = {
      {type = "item", name = "nullius-robot-frame-1", amount = 1},
      {type = "item", name = "nullius-haste-module-1", amount = 1},
      {type = "item", name = "nullius-sensor-2", amount = 1},
      {type = "item", name = "nullius-missile-1", amount = 1}
    },
    results = {
				{type="item", name="nullius-scout-drone-1", amount = 1}
			}
  },
  {
    type = "recipe",
    name = "nullius-scout-drone-2",
    enabled = false,
    always_show_made_in = true,
    category = "small-crafting",
    energy_required = 5,
    ingredients = {
      {type = "item", name = "nullius-scout-drone-1", amount = 2},
      {type = "item", name = "nullius-robot-frame-2", amount = 1},
      {type = "item", name = "nullius-processor-2", amount = 2}
    },
    results = {
				{type="item", name="nullius-scout-drone-2", amount = 1}
			}
  },

  {
    type = "capsule",
    name = "nullius-scout-remote",
    icon = ICONPATH .. "scout-remote.png",
    icon_size = 64,
    flags = {"spawnable", "only-in-cursor", "not-stackable"},
    hidden_in_factoriopedia = true,
    capsule_action = {
      type = "artillery-remote",
      flare = "nullius-scout-flare"
    },
    subgroup = "drone-remote",
    order = "nullius-b",
    inventory_move_sound = item_sounds.artillery_remote_inventory_move,
    pick_sound = item_sounds.mechanical_inventory_pickup,
    drop_sound = item_sounds.artillery_remote_inventory_move,
    stack_size = 1
  },

  {
    type = "recipe",
    name = "nullius-demolition-drone",
    enabled = false,
    always_show_made_in = true,
    category = "small-crafting",
    energy_required = 10,
    ingredients = {
      {type = "item", name = "nullius-scout-drone-2", amount = 1},
      {type = "item", name = "nullius-missile-launcher", amount = 1},
      {type = "item", name = "nullius-box-missile-1", amount = 2},
      {type = "item", name = "nullius-rock-picker", amount = 1}
    },
    results = {
				{type="item", name="nullius-demolition-drone", amount = 1}
			}
  },
  {
    type = "recipe",
    name = "nullius-legacy-demolition-drone",
    enabled = false,
    always_show_made_in = true,
	  hidden = true,
    allow_decomposition = false,
    allow_as_intermediate = false,
    category = "small-crafting",
    energy_required = 10,
    ingredients = {
      {type = "item", name = "nullius-scout-drone-2", amount = 1},
      {type = "item", name = "nullius-missile-launcher", amount = 1},
      {type = "item", name = "nullius-box-missile-1", amount = 2}
    },
    results = {
				{type="item", name="nullius-demolition-drone", amount = 1}
			}
  },

  {
    type = "recipe",
    name = "nullius-shallow-excavation-drone",
    enabled = false,
    always_show_made_in = true,
    category = "small-crafting",
    energy_required = 10,
    ingredients = {
      {type = "item", name = "nullius-demolition-drone", amount = 1},
      {type = "item", name = "nullius-missile-2", amount = 3},
      {type = "item", name = "nullius-trash-compactor", amount = 1},
      {type = "item", name = "nullius-large-cargo-pod-2", amount = 2}
    },
    results = {
				{type="item", name="nullius-shallow-excavation-drone", amount = 1}
			}
  },
  {
    type = "recipe",
    name = "nullius-excavation-drone",
    enabled = false,
    always_show_made_in = true,
	  no_productivity = true,
    category = "small-crafting",
    energy_required = 4,
    ingredients = {
      {type = "item", name = "nullius-shallow-excavation-drone", amount = 1},
      {type = "item", name = "nullius-missile-2", amount = 2}
    },
    results = {
				{type="item", name="nullius-excavation-drone", amount = 1}
			}
  },
  {
    type = "recipe",
    name = "nullius-legacy-excavation-drone",
    enabled = false,
    always_show_made_in = true,
	  hidden = true,
    allow_decomposition = false,
    allow_as_intermediate = false,
    category = "small-crafting",
    energy_required = 10,
    ingredients = {
      {type = "item", name = "nullius-demolition-drone", amount = 1},
      {type = "item", name = "nullius-box-missile-2", amount = 1}
    },
    results = {
				{type="item", name="nullius-excavation-drone", amount = 1}
			}
  },

  {
    type = "item",
    name = "nullius-drone-launcher-1",
    icons = {{
      icon = "__base__/graphics/icons/artillery-turret.png",
      icon_size = 64,
      tint = {0.7, 0.7, 0.9}
    }},
    subgroup = "drone-launcher",
    order = "nullius-eb",
    place_result = "nullius-drone-launcher-1",
    stack_size = 10
  },
  {
    type = "recipe",
    name = "nullius-drone-launcher-1",
    enabled = false,
    category = "huge-crafting",
    always_show_made_in = true,
    energy_required = 20,
    ingredients = {
      {type = "item", name = "radar", amount = 1},
      {type = "item", name = "nullius-beacon-1", amount = 1},
      {type = "item", name = "nullius-hangar-1", amount = 1},
      {type = "item", name = "nullius-missile-launcher", amount = 4},
      {type = "item", name = "nullius-motor-2", amount = 2},
      {type = "item", name = "nullius-bearing", amount = 3}
    },
    results = {
				{type="item", name="nullius-drone-launcher-1", amount = 1}
			}
  },

  {
    type = "item",
    name = "nullius-drone-launcher-2",
    icons = {{
      icon = "__base__/graphics/icons/artillery-turret.png",
      icon_size = 64,
      
    }},
    subgroup = "drone-launcher",
    order = "nullius-ec",
    place_result = "nullius-drone-launcher-2",
    stack_size = 10
  },
  {
    type = "recipe",
    name = "nullius-drone-launcher-2",
    enabled = false,
    always_show_made_in = true,
    category = "huge-crafting",
    energy_required = 30,
    ingredients = {
      {type = "item", name = "nullius-drone-launcher-1", amount = 2},
      {type = "item", name = "nullius-sensor-node-3", amount = 1},
      {type = "item", name = "nullius-hangar-2", amount = 1},
      {type = "item", name = "nullius-productivity-module-1", amount = 1}
    },
    results = {
				{type="item", name="nullius-drone-launcher-2", amount = 1}
			}
  },

  {
    type = "item-with-entity-data",
    name = "nullius-drone-carrier-1",
    icons = {{
      icon = "__base__/graphics/icons/artillery-wagon.png",
      icon_size = 64,
      tint = {0.7, 0.7, 0.9}
    }},
    subgroup = "drone-launcher",
    order = "nullius-fb",
    place_result = "nullius-drone-carrier-1",
    stack_size = 5
  },
  {
    type = "recipe",
    name = "nullius-drone-carrier-1",
    enabled = false,
    category = "huge-crafting",
    always_show_made_in = true,
    energy_required = 12,
    ingredients = {
      {type = "item", name = "nullius-cargo-wagon-2", amount = 1},
      {type = "item", name = "nullius-drone-launcher-1", amount = 1}
    },
    results = {
				{type="item", name="nullius-drone-carrier-1", amount = 1}
			}
  },

  {
    type = "item-with-entity-data",
    name = "nullius-drone-carrier-2",
    icons = {{
      icon = "__base__/graphics/icons/artillery-wagon.png",
      icon_size = 64,
      
    }},
    subgroup = "drone-launcher",
    order = "nullius-fc",
    place_result = "nullius-drone-carrier-2",
    stack_size = 5
  },
  {
    type = "recipe",
    name = "nullius-drone-carrier-2",
    enabled = false,
    always_show_made_in = true,
    category = "huge-crafting",
    energy_required = 20,
    ingredients = {
      {type = "item", name = "nullius-drone-carrier-1", amount = 1},
      {type = "item", name = "nullius-cargo-wagon-3", amount = 1},
      {type = "item", name = "nullius-drone-launcher-2", amount = 1}
    },
    results = {
				{type="item", name="nullius-drone-carrier-2", amount = 1}
			}
  },

  {
    type = "item",
    name = "nullius-asteroid-miner-1",
    icons = {{
      icon = ICONPATH .. "asteroid-miner-1.png",
      icon_size = 64
    }},
    subgroup = "space",
    order = "nullius-eb",
    stack_size = 1,
    weight = 1000000,
    send_to_orbit_mode = "automated",
    rocket_launch_products = {
      {type = "item", name="nullius-guide-drone-iron-1", amount=1, probability=0.3},
      {type = "item", name="nullius-guide-drone-sandstone-1", amount=1, probability=0.2},
      {type = "item", name="nullius-guide-drone-bauxite-1", amount=1, probability=0.2},
      {type = "item", name="nullius-guide-drone-limestone-1", amount=1, probability=0.1},
      {type = "item", name="nullius-guide-drone-copper-1", amount=1, probability=0.1},
      {type = "item", name="nullius-guide-drone-uranium-1", amount=1, probability=0.1}
    }
  },
  {
    type = "recipe",
    name = "nullius-asteroid-miner-1",
    enabled = false,
    always_show_made_in = true,
    category = "huge-crafting",
    energy_required = 120,
    ingredients = {
      {type = "item", name = "nullius-satellite", amount = 1},
      {type = "item", name = "nullius-box-rocket-fuel", amount = 25},
      {type = "item", name = "nullius-excavation-drone", amount = 3},
      {type = "item", name = "nullius-medium-miner-3", amount = 5},
      {type = "item", name = "nullius-drone-launcher-2", amount = 1},
      {type = "item", name = "nullius-construction-bot-3", amount = 3},
      {type = "item", name = "nullius-box-astronomy-pack", amount = 6},
      {type = "item", name = "nullius-large-buffer-chest-2", amount = 4}
    },
    results = {
				{type="item", name="nullius-asteroid-miner-1", amount = 1}
			}
  },

  {
    type = "item",
    name = "nullius-asteroid-miner-2",
    icons = {{
      icon = ICONPATH .. "asteroid-miner-2.png",
      icon_size = 64
    }},
    subgroup = "space",
    order = "nullius-ec",
    stack_size = 1,
    weight = 1000000,
    send_to_orbit_mode = "automated",
    rocket_launch_products = {
      {type = "item", name="nullius-guide-drone-iron-1", amount=1, probability=0.9},
      {type = "item", name="nullius-guide-drone-sandstone-1", amount=1, probability=0.8},
      {type = "item", name="nullius-guide-drone-bauxite-1", amount=1, probability=0.7},
      {type = "item", name="nullius-guide-drone-limestone-1", amount=1, probability=0.5},
      {type = "item", name="nullius-guide-drone-copper-1", amount=1, probability=0.4},
      {type = "item", name="nullius-guide-drone-uranium-1", amount=1, probability=0.3}
    }
  },
  {
    type = "recipe",
    name = "nullius-asteroid-miner-2",
    enabled = false,
    always_show_made_in = true,
    category = "huge-crafting",
    energy_required = 240,
    ingredients = {
      {type = "item", name = "nullius-asteroid-miner-1", amount = 2},
      {type = "item", name = "nullius-antimatter", amount = 8},
      {type = "item", name = "nullius-turret", amount = 4},
      {type = "item", name = "nullius-hangar-3", amount = 1},
      {type = "item", name = "nullius-sensor-node-3", amount = 1},
      {type = "item", name = "nullius-construction-bot-4", amount = 3},
	  {type = "item", name = "nullius-trash-compactor-2", amount = 2}
    },
    results = {
				{type="item", name="nullius-asteroid-miner-2", amount = 1}
			}
  },
  {
    type = "item",
    --name = "nullius-android-1",
    name = "character",
    localised_name = {"", {"item-name.nullius-android"}, " ", tostring(1)},
    localised_description = {"item-description.nullius-android"},
    icons = {{
      icon = ICONPATH .. "android1.png",
      icon_size = 64
    }},
    subgroup = "armor",
    order = "nullius-ab",
    stack_size = 1,
    place_result = "character"
  },
  {
    type = "item",
    name = "nullius-android-2",
    localised_name = {"", {"item-name.nullius-android"}, " ", tostring(2)},
    localised_description = {"item-description.nullius-android"},
    icons = {{
      icon = ICONPATH .. "android2.png",
      icon_size = 64
    }},
    subgroup = "armor",
    order = "nullius-ac",
    stack_size = 1,
    place_result = "nullius-android-2"
  },
  {
    type = "recipe",
    name = "nullius-android-1",
    enabled = false,
    always_show_made_in = true,
    category = "nanotechnology",
    energy_required = 250,
    ingredients = {
      {type = "item", name = "nullius-chassis-3", amount = 1},
      {type = "item", name = "nullius-construction-bot-2", amount = 3},
      {type = "item", name = "nullius-leg-augmentation-1", amount = 2},
      {type = "item", name = "nullius-coprocessor-productivity-2", amount = 1},
      {type = "item", name = "nullius-battery-1", amount = 4},
      {type = "item", name = "nullius-solar-panel-2", amount = 3},
      {type = "item", name = "nullius-night-vision-2", amount = 2},
      {type = "item", name = "nullius-large-cargo-pod-2", amount = 2}
    },
    results = {
				--{type="item", name="nullius-android-1", amount = 1}
				{type="item", name="character", amount = 1}
			}
  },
  {
    type = "recipe",
    name = "nullius-legacy-android-1",
    enabled = false,
	  hidden = true,
    allow_decomposition = false,
    allow_as_intermediate = false,
    always_show_made_in = true,
    category = "nanotechnology",
    energy_required = 250,
    ingredients = {
      {type = "item", name = "nullius-chassis-3", amount = 1},
      {type = "item", name = "nullius-construction-bot-2", amount = 3},
      {type = "item", name = "nullius-leg-augmentation-1", amount = 2},
      {type = "item", name = "nullius-productivity-module-1", amount = 4},
      {type = "item", name = "nullius-battery-1", amount = 4},
      {type = "item", name = "nullius-solar-panel-2", amount = 3},
      {type = "item", name = "nullius-night-vision-2", amount = 2},
      {type = "item", name = "nullius-hangar-2", amount = 1},
      {type = "item", name = "bob-express-bulk-inserter", amount = 4}
    },
    results = {
				--{type="item", name="nullius-android-1", amount = 1}
				{type="item", name="character", amount = 1}
			}
  },
  {
    type = "recipe",
    name = "nullius-android-2",
    enabled = false,
    always_show_made_in = true,
    category = "nanotechnology",
    energy_required = 400,
    ingredients = {
      --{type = "item", name = "nullius-android-1", amount = 1},
      {type = "item", name = "character", amount = 1},
      {type = "item", name = "nullius-chassis-5", amount = 1},
      {type = "item", name = "nullius-construction-bot-4", amount = 2},
      {type = "item", name = "nullius-leg-augmentation-3", amount = 1},
      {type = "item", name = "nullius-coprocessor-quantum", amount = 1},
      {type = "item", name = "nullius-battery-2", amount = 4},
      {type = "item", name = "nullius-solar-panel-3", amount = 3}
    },
    results = {
				{type="item", name="nullius-android-2", amount = 1}
			}
  },
  {
    type = "recipe",
    name = "nullius-legacy-android-2",
    enabled = false,
	  hidden = true,
    allow_decomposition = false,
    allow_as_intermediate = false,
    always_show_made_in = true,
    category = "nanotechnology",
    energy_required = 400,
    ingredients = {
      --{type = "item", name = "nullius-android-1", amount = 1},
      {type = "item", name = "character", amount = 1},
      {type = "item", name = "nullius-chassis-5", amount = 1},
      {type = "item", name = "nullius-construction-bot-4", amount = 2},
      {type = "item", name = "nullius-leg-augmentation-3", amount = 1},
      {type = "item", name = "nullius-box-processor-3", amount = 1},
      {type = "item", name = "nullius-efficiency-module-3", amount = 2},
      {type = "item", name = "nullius-battery-2", amount = 4},
      {type = "item", name = "nullius-solar-panel-3", amount = 3},
      {type = "item", name = "nullius-heat-pipe-3", amount = 2},
      {type = "item", name = "nullius-hangar-3", amount = 1}
    },
    results = {
				{type="item", name="nullius-android-2", amount = 1}
			}
  }
})


label_icon("nullius-asteroid-miner-1", 1, "purple")
label_icon("nullius-asteroid-miner-2", 2, "blue")
label_icon("nullius-guide-drone-iron-1", 1, "purple", "ammo")
label_icon("nullius-guide-drone-iron-2", 2, "blue", "ammo")
label_icon("nullius-guide-drone-sandstone-1", 1, "purple", "ammo")
label_icon("nullius-guide-drone-sandstone-2", 2, "blue", "ammo")
label_icon("nullius-guide-drone-bauxite-1", 1, "purple", "ammo")
label_icon("nullius-guide-drone-bauxite-2", 2, "blue", "ammo")
label_icon("nullius-guide-drone-limestone-1", 1, "purple", "ammo")
label_icon("nullius-guide-drone-limestone-2", 2, "blue", "ammo")
label_icon("nullius-guide-drone-copper-1", 1, "purple", "ammo")
label_icon("nullius-guide-drone-copper-2", 2, "blue", "ammo")
label_icon("nullius-guide-drone-uranium-1", 1, "purple", "ammo")
label_icon("nullius-guide-drone-uranium-2", 2, "blue", "ammo")
