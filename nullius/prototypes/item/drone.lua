local ICONPATH = "__nullius__/graphics/icons/"
local ENTITYPATH = "__nullius__/graphics/entity/"

local function create_drone(base_name, group, suborder, base_suffix, stack, flare, drone_icons, remote_icons, number)
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
        capsule_action = {
          type = "artillery-remote",
          flare = prefix.."-flare"..suffix
        },
        subgroup = group.."-remote",
        order = "nullius-"..suborder,
        stack_size = 1
      }
    })
  end

  local lname = nil
  if (number ~= nil) then
    lname = {"", {"item-name."..prefix.."-drone"..suffix1}, " ", number}
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
      ammo_type = {
        category = flare,
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


local function create_terraform(suffix, tile, suborder)
  create_drone("terraforming", "drone", "d"..suborder, suffix, 5)
  data:extend({
    {
      type = "recipe",
      name = "nullius-terraforming-drone-"..suffix,
      enabled = false,
      always_show_made_in = true,
      category = "huge-crafting",
      energy_required = 60,
      ingredients = {
        {"nullius-shallow-excavation-drone", 1},
        {"nullius-construction-bot-3", 2},
        {"rocket-fuel", 2},
        {"nullius-box-land-fill-"..tile, 200}
      },
      result = "nullius-terraforming-drone-"..suffix
    },
    {
      type = "recipe",
      name = "nullius-terraforming-remote-"..suffix,
      enabled = false,
      always_show_made_in = true,
      no_productivity = true,
      category = "small-crafting",
      energy_required = 10,
      ingredients = {
        {"nullius-shallow-excavation-remote", 1},
        {"nullius-productivity-module-1", 1}
      },
      result = "nullius-terraforming-remote-"..suffix
    }
  })
end

local function create_paving(suffix, landfill, suborder, tile)
  if (tile == nil) then
    tile = suffix
  end
  create_drone("paving", "paving", "b"..suborder, suffix, 5)
  data:extend({
    {
      type = "recipe",
      name = "nullius-paving-drone-"..suffix,
      enabled = false,
      always_show_made_in = true,
      category = "huge-crafting",
      energy_required = 25,
      ingredients = {
        {"nullius-terraforming-drone-"..landfill, 1},
        {"nullius-logistic-bot-3", 1},
        {"rocket-fuel", 1},
        {"nullius-box-"..tile.."-concrete", 300}
      },
      result = "nullius-paving-drone-"..suffix
    },
    {
      type = "recipe",
      name = "nullius-paving-remote-"..suffix,
      enabled = false,
      always_show_made_in = true,
      no_productivity = true,
      category = "small-crafting",
      energy_required = 5,
      ingredients = {
        {"nullius-terraforming-remote-"..landfill, 1},
        {"nullius-productivity-module-2", 1}
      },
      result = "nullius-paving-remote-"..suffix
    }
  })
end

local function create_miner(mineral, suborder, group, landfill, iname, isize, itint)
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
  create_drone("guide", sg, suborder.."b", mineral, 10, "nullius-guide-drone-"..mineral, drone_icons1, remote_icons, 1)
  create_drone("guide", sg, suborder.."c", mineral, 5, "nullius-guide-drone-"..mineral, drone_icons2, remote_icons, 2)
  data:extend({
    {
      type = "capsule",
      name = "nullius-guide-remote-"..mineral,
      icons = remote_icons,
      capsule_action = {
        type = "artillery-remote",
        flare = "nullius-guide-flare-"..mineral
      },
      subgroup = sg,
      order = "nullius-"..suborder.."e",
      stack_size = 1
    },
    {
      type = "recipe",
      name = "nullius-guide-remote-"..mineral,
      enabled = false,
      always_show_made_in = true,
      no_productivity = true,
      category = "small-crafting",
      energy_required = 10,
      ingredients = {
        {"nullius-terraforming-remote-"..landfill, 1},
        {"nullius-yield-module-3", 1}
      },
      result = "nullius-guide-remote-"..mineral
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
        {"nullius-guide-drone-"..mineral.."-1", 2},
        {"nullius-box-astronomy-pack", 1}
      },
      result = "nullius-asteroid-miner-1"
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
        {"nullius-guide-drone-"..mineral.."-1", 40},
        {"nullius-relay-3", 1}
      },
      result = "nullius-guide-drone-"..mineral.."-2"
    }
  })
end


local function create_bio_drone(base, suborder, iname)
  local drone_icons = {
    {
      icon = "__base__/graphics/icons/defender.png",
      icon_size = 64,
      icon_mipmaps = 4
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
  create_drone(base, "farming", suborder, nil, 5, nil, drone_icons, remote_icons)
end

local function create_farmer(base, suborder, species, spore, spore_count,
    remote, modtype, iname, drone_tier, bot_tier, cost1, cost2, cost3, cost4)
  create_bio_drone(base, "b"..suborder, iname)
  data:extend({
    {
      type = "recipe",
      name = "nullius-"..base.."-drone",
      enabled = false,
      always_show_made_in = true,
      category = "huge-crafting",
      energy_required = 60,
      ingredients = {
        {"nullius-scout-drone-" .. drone_tier, 1},
        {"nullius-construction-bot-" .. bot_tier, 1},
        {"nullius-"..species.."-progenitor", 1},
        {"nullius-"..spore, spore_count},
        cost1, cost2, cost3, cost4
      },
      result = "nullius-"..base.."-drone"
    },
    {
      type = "recipe",
      name = "nullius-"..base.."-remote",
      enabled = false,
      always_show_made_in = true,
      no_productivity = true,
      category = "small-crafting",
      energy_required = 10,
      ingredients = {
        {"nullius-"..remote, 1},
        {"nullius-"..modtype, 1}
      },
      result = "nullius-"..base.."-remote"
    }
  })
end


create_drone("scout", "drone", "bb", "1", 10, "nullius-scout-drone")
create_drone("scout", "drone", "bc", "2", 10, "nullius-scout-drone")
create_drone("demolition", "drone", "cb", nil, 10)
create_drone("shallow-excavation", "drone", "cc", nil, 10)
create_drone("excavation", "drone", "cd", nil, 10)

create_terraform("grey", "gravel", "b")
create_terraform("tan", "sand", "c")
create_terraform("brown", "bauxite", "d")
create_terraform("red", "iron", "e")
create_terraform("beige", "limestone", "f")

create_paving("grey", "grey", "b", "reinforced")
create_paving("white", "beige", "c")
create_paving("red", "red", "d")
create_paving("blue", "beige", "e")
create_paving("yellow", "tan", "f")
create_paving("green", "beige", "g")
create_paving("purple", "red", "h")
create_paving("brown", "brown", "i")
create_paving("black", "grey", "j")
create_paving("hazard", "tan", "k")

create_miner("iron", "b", 1, "red", "__base__/graphics/icons/iron-ore.png", 64)
create_miner("sandstone", "c", 1, "tan",
    "__angelsrefining__/graphics/icons/angels-ore6/angels-ore6-2.png", 64, {184, 125, 73})
create_miner("bauxite", "d", 1, "brown", "__angelssmelting__/graphics/icons/ore-bauxite.png", 32)
create_miner("limestone", "e", 2, "beige",
    "__angelsrefining__/graphics/icons/angels-ore6/angels-ore6-3.png", 64, {0.898, 0.773, 0.688})
create_miner("copper", "f", 2, "grey", "__base__/graphics/icons/copper-ore.png", 64)
create_miner("uranium", "g", 2, "grey", "__base__/graphics/icons/uranium-ore.png", 64)

create_farmer("algaculture", "b", "algae", "algae-spore", 60, "scout-remote",
    "productivity-module-1", ICONPATH .. "algae.png", 1, 1,
    {"nullius-box-mineral-dust", 10}, {"nullius-bacteria-barrel", 1})
create_farmer("horticulture", "c", "grass", "box-grass-seed", 20, "algaculture-remote",
    "productivity-module-1", ICONPATH .. "grass.png", 1, 1,
    {"nullius-fertilizer", 20}, {"nullius-water-barrel", 10}, {"nullius-bacteria-barrel", 1})
create_farmer("arboriculture", "d", "tree", "tree-seed", 40, "horticulture-remote",
    "productivity-module-2", "__base__/graphics/icons/tree-08.png", 2, 1,
    {"nullius-fertilizer", 30}, {"nullius-water-barrel", 15}, {"nullius-worm", 10})
create_farmer("entomology", "e", "worm", "worm-egg", 40, "algaculture-remote",
    "productivity-module-2", "__base__/graphics/icons/small-worm.png", 1, 2,
    {"nullius-grass", 30}, {"nullius-sludge-barrel", 5}, {"nullius-bacteria-barrel", 2})
create_farmer("aquaculture", "f", "fish", "fish-egg", 50, "entomology-remote",
    "productivity-module-2", "__base__/graphics/icons/fish.png", 2, 2,
    {"nullius-algae", 40}, {"nullius-worm", 20})
create_farmer("husbandry", "g", "arthropod", "arthropod-egg", 30, "aquaculture-remote",
    "productivity-module-3", "__base__/graphics/icons/small-biter.png", 2, 3,
    {"nullius-box-wood", 15}, {"nullius-fish", 40}, {"nullius-arthropod", 5}, {"nullius-shackle", 6})

create_bio_drone("sequestration-coal", "cb", "__base__/graphics/icons/coal-1.png")
create_bio_drone("sequestration-petroleum", "cc", "__base__/graphics/icons/fluid/crude-oil.png")


data:extend({
  {
    type = "recipe",
    name = "nullius-scout-drone-1",
    enabled = false,
    always_show_made_in = true,
    category = "small-crafting",
    energy_required = 4,
    ingredients = {
      {"nullius-robot-frame-1", 1},
      {"nullius-haste-module-1", 1},
      {"nullius-sensor-2", 1},
      {"nullius-missile-1", 1}
    },
    result = "nullius-scout-drone-1"
  },
  {
    type = "recipe",
    name = "nullius-scout-drone-2",
    enabled = false,
    always_show_made_in = true,
    category = "small-crafting",
    energy_required = 5,
    ingredients = {
      {"nullius-scout-drone-1", 2},
      {"nullius-robot-frame-2", 1},
      {"nullius-processor-2", 2}
    },
    result = "nullius-scout-drone-2"
  },

  {
    type = "capsule",
    name = "nullius-scout-remote",
    icon = ICONPATH .. "scout-remote.png",
    icon_size = 64,
    capsule_action = {
      type = "artillery-remote",
      flare = "nullius-scout-flare"
    },
    subgroup = "drone-remote",
    order = "nullius-b",
    stack_size = 1
  },
  {
    type = "recipe",
    name = "nullius-scout-remote",
    enabled = false,
    category = "small-crafting",
    always_show_made_in = true,
    energy_required = 10,
    ingredients = {
      {"nullius-sensor-2", 1},
      {"programmable-speaker", 1}
    },
    result = "nullius-scout-remote"
  },

  {
    type = "recipe",
    name = "nullius-demolition-drone",
    enabled = false,
    always_show_made_in = true,
    category = "small-crafting",
    energy_required = 10,
    ingredients = {
      {"nullius-scout-drone-2", 1},
      {"nullius-missile-launcher", 1},
      {"nullius-box-missile-1", 2},
      {"nullius-rock-picker", 1}
    },
    result = "nullius-demolition-drone"
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
      {"nullius-scout-drone-2", 1},
      {"nullius-missile-launcher", 1},
      {"nullius-box-missile-1", 2}
    },
    result = "nullius-demolition-drone"
  },
  {
    type = "recipe",
    name = "nullius-demolition-remote",
    enabled = false,
    always_show_made_in = true,
    no_productivity = true,
    category = "small-crafting",
    energy_required = 10,
    ingredients = {
      {"nullius-scout-remote", 1},
      {"nullius-processor-1", 1}
    },
    result = "nullius-demolition-remote"
  },

  {
    type = "recipe",
    name = "nullius-shallow-excavation-drone",
    enabled = false,
    always_show_made_in = true,
    category = "small-crafting",
    energy_required = 10,
    ingredients = {
      {"nullius-demolition-drone", 1},
      {"nullius-missile-2", 3},
      {"nullius-trash-compactor", 1},
      {"nullius-large-cargo-pod-2", 2}
    },
    result = "nullius-shallow-excavation-drone"
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
      {"nullius-shallow-excavation-drone", 1},
      {"nullius-missile-2", 2}
    },
    result = "nullius-excavation-drone"
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
      {"nullius-demolition-drone", 1},
      {"nullius-box-missile-2", 1}
    },
    result = "nullius-excavation-drone"
  },
  {
    type = "recipe",
    name = "nullius-shallow-excavation-remote",
    enabled = false,
    always_show_made_in = true,
    no_productivity = true,
    category = "small-crafting",
    energy_required = 5,
    ingredients = {
      {"nullius-demolition-remote", 1},
      {"nullius-processor-2", 1}
    },
    result = "nullius-shallow-excavation-remote"
  },
  {
    type = "recipe",
    name = "nullius-excavation-remote",
    enabled = false,
    always_show_made_in = true,
    no_productivity = true,
    category = "small-crafting",
    energy_required = 3,
    ingredients = {
      {"nullius-shallow-excavation-remote", 1},
      {"red-wire", 1}
    },
    result = "nullius-excavation-remote"
  },

  {
    type = "item",
    name = "nullius-drone-launcher-1",
    icons = {{
      icon = "__base__/graphics/icons/artillery-turret.png",
      icon_size = 64,
      icon_mipmaps = 4,
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
      {"radar", 1},
      {"nullius-beacon-1", 1},
      {"nullius-hangar-1", 1},
      {"nullius-missile-launcher", 4},
      {"nullius-motor-2", 2},
      {"nullius-bearing", 3}
    },
    result = "nullius-drone-launcher-1"
  },

  {
    type = "item",
    name = "nullius-drone-launcher-2",
    icons = {{
      icon = "__base__/graphics/icons/artillery-turret.png",
      icon_size = 64,
      icon_mipmaps = 4
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
      {"nullius-drone-launcher-1", 2},
      {"nullius-sensor-node-3", 1},
      {"nullius-hangar-2", 1},
      {"nullius-productivity-module-1", 1}
    },
    result = "nullius-drone-launcher-2"
  },

  {
    type = "item-with-entity-data",
    name = "nullius-drone-carrier-1",
    icons = {{
      icon = "__base__/graphics/icons/artillery-wagon.png",
      icon_size = 64,
      icon_mipmaps = 4,
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
      {"nullius-cargo-wagon-2", 1},
      {"nullius-drone-launcher-1", 1}
    },
    result = "nullius-drone-carrier-1"
  },

  {
    type = "item-with-entity-data",
    name = "nullius-drone-carrier-2",
    icons = {{
      icon = "__base__/graphics/icons/artillery-wagon.png",
      icon_size = 64,
      icon_mipmaps = 4
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
      {"nullius-drone-carrier-1", 1},
      {"nullius-cargo-wagon-3", 1},
      {"nullius-drone-launcher-2", 1}
    },
    result = "nullius-drone-carrier-2"
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
    rocket_launch_products = {
      {name="nullius-guide-drone-iron-1", amount=1, probability=0.3},
      {name="nullius-guide-drone-sandstone-1", amount=1, probability=0.2},
      {name="nullius-guide-drone-bauxite-1", amount=1, probability=0.2},
      {name="nullius-guide-drone-limestone-1", amount=1, probability=0.1},
      {name="nullius-guide-drone-copper-1", amount=1, probability=0.1},
      {name="nullius-guide-drone-uranium-1", amount=1, probability=0.1}
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
      {"nullius-satellite", 1},
      {"nullius-box-rocket-fuel", 25},
      {"nullius-excavation-drone", 3},
      {"nullius-medium-miner-3", 5},
      {"nullius-drone-launcher-2", 1},
      {"nullius-construction-bot-3", 3},
      {"nullius-box-astronomy-pack", 6},
      {"nullius-large-buffer-chest-2", 4}
    },
    result = "nullius-asteroid-miner-1"
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
    rocket_launch_products = {
      {name="nullius-guide-drone-iron-1", amount=1, probability=0.9},
      {name="nullius-guide-drone-sandstone-1", amount=1, probability=0.8},
      {name="nullius-guide-drone-bauxite-1", amount=1, probability=0.7},
      {name="nullius-guide-drone-limestone-1", amount=1, probability=0.5},
      {name="nullius-guide-drone-copper-1", amount=1, probability=0.4},
      {name="nullius-guide-drone-uranium-1", amount=1, probability=0.3}
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
      {"nullius-asteroid-miner-1", 2},
      {"nullius-antimatter", 8},
      {"nullius-turret", 4},
      {"nullius-hangar-3", 1},
      {"nullius-sensor-node-3", 1},
      {"nullius-construction-bot-4", 3},
	  {"nullius-trash-compactor-2", 2}
    },
    result = "nullius-asteroid-miner-2"
  },
  {
    type = "item",
    name = "nullius-android-1",
    localised_name = {"", {"item-name.nullius-android"}, " ", 1},
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
    localised_name = {"", {"item-name.nullius-android"}, " ", 2},
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
      {"nullius-chassis-3", 1},
      {"nullius-construction-bot-2", 3},
      {"nullius-leg-augmentation-1", 2},
      {"nullius-coprocessor-productivity-2", 1},
      {"nullius-battery-1", 4},
      {"nullius-solar-panel-2", 3},
      {"nullius-night-vision-2", 2},
      {"nullius-large-cargo-pod-2", 2}
    },
    result = "nullius-android-1"
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
      {"nullius-chassis-3", 1},
      {"nullius-construction-bot-2", 3},
      {"nullius-leg-augmentation-1", 2},
      {"nullius-productivity-module-1", 4},
      {"nullius-battery-1", 4},
      {"nullius-solar-panel-2", 3},
      {"nullius-night-vision-2", 2},
      {"nullius-hangar-2", 1},
      {"express-stack-filter-inserter", 4}
    },
    result = "nullius-android-1"
  },
  {
    type = "recipe",
    name = "nullius-android-2",
    enabled = false,
    always_show_made_in = true,
    category = "nanotechnology",
    energy_required = 400,
    ingredients = {
      {"nullius-android-1", 1},
      {"nullius-chassis-5", 1},
      {"nullius-construction-bot-4", 2},
      {"nullius-leg-augmentation-3", 1},
      {"nullius-coprocessor-quantum", 1},
      {"nullius-battery-2", 4},
      {"nullius-solar-panel-3", 3}
    },
    result = "nullius-android-2"
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
      {"nullius-android-1", 1},
      {"nullius-chassis-5", 1},
      {"nullius-construction-bot-4", 2},
      {"nullius-leg-augmentation-3", 1},
      {"nullius-box-processor-3", 1},
      {"nullius-efficiency-module-3", 2},
      {"nullius-battery-2", 4},
      {"nullius-solar-panel-3", 3},
      {"nullius-heat-pipe-3", 2},
      {"nullius-hangar-3", 1}
    },
    result = "nullius-android-2"
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
