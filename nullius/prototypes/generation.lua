local ICONPATH = "__nullius__/graphics/icons/"
local ENTITYPATH = "__nullius__/graphics/entity/"

local BASEENTITY = "__base__/graphics/entity/"

for r, subdir in pairs(angelsmods.functions.store) do
  for r, input in pairs(subdir) do
    if not input.inactive then
      angelsmods.functions.remove_resource(input.name)
    end
  end
end

angelsmods.functions.remove_resource("trees")
angelsmods.functions.remove_resource("uranium-ore")


local function make_particle(inputname, inputtint)
  data:extend({
  {
  type = "optimized-particle",
  name = inputname.."-particle",
  flags = {"not-on-map"},
  life_time = 180,
  pictures = {
    {
      filename = "__angelsrefining__/graphics/entity/ores-particle/ore-particle-1.png",
      priority = "extra-high",
      tint = inputtint,
      width = 5,
      height = 5,
      frame_count = 1
    },
    {
      filename = "__angelsrefining__/graphics/entity/ores-particle/ore-particle-2.png",
      priority = "extra-high",
      tint = inputtint,
      width = 7,
      height = 5,
      frame_count = 1
    },
    {
      filename = "__angelsrefining__/graphics/entity/ores-particle/ore-particle-3.png",
      priority = "extra-high",
      tint = inputtint,
      width = 6,
      height = 7,
      frame_count = 1
    },
    {
      filename = "__angelsrefining__/graphics/entity/ores-particle/ore-particle-4.png",
      priority = "extra-high",
      tint = inputttint,
      width = 9,
      height = 8,
      frame_count = 1
    },
    {
      filename = "__angelsrefining__/graphics/entity/ores-particle/ore-particle-5.png",
      priority = "extra-high",
      tint = inputttint,
      width = 5,
      height = 5,
      frame_count = 1
    },
    {
      filename = "__angelsrefining__/graphics/entity/ores-particle/ore-particle-6.png",
      priority = "extra-high",
      tint = inputtint,
      width = 6,
      height = 4,
      frame_count = 1
    },
    {
      filename = "__angelsrefining__/graphics/entity/ores-particle/ore-particle-7.png",
      priority = "extra-high",
      tint = inputtint,
      width = 7,
      height = 8,
      frame_count = 1
    },
    {
      filename = "__angelsrefining__/graphics/entity/ores-particle/ore-particle-8.png",
      priority = "extra-high",
      tint = inputtint,
      width = 6,
      height = 5,
      frame_count = 1
    }
  },
  shadows = {
    {
      filename = "__angelsrefining__/graphics/entity/ores-particle/ore-particle-shadow-1.png",
      priority = "extra-high",
      width = 5,
      height = 5,
      frame_count = 1
    },
    {
      filename = "__angelsrefining__/graphics/entity/ores-particle/ore-particle-shadow-2.png",
      priority = "extra-high",
      width = 7,
      height = 5,
      frame_count = 1
    },
    {
      filename = "__angelsrefining__/graphics/entity/ores-particle/ore-particle-shadow-3.png",
      priority = "extra-high",
      width = 6,
      height = 7,
      frame_count = 1
    },
    {
      filename = "__angelsrefining__/graphics/entity/ores-particle/ore-particle-shadow-4.png",
      priority = "extra-high",
      width = 9,
      height = 8,
      frame_count = 1
    },
    {
      filename = "__angelsrefining__/graphics/entity/ores-particle/ore-particle-shadow-5.png",
      priority = "extra-high",
      width = 5,
      height = 5,
      frame_count = 1
    },
    {
      filename = "__angelsrefining__/graphics/entity/ores-particle/ore-particle-shadow-6.png",
      priority = "extra-high",
      width = 6,
      height = 4,
      frame_count = 1
    },
    {
      filename = "__angelsrefining__/graphics/entity/ores-particle/ore-particle-shadow-7.png",
      priority = "extra-high",
      width = 7,
      height = 8,
      frame_count = 1
    },
    {
      filename = "__angelsrefining__/graphics/entity/ores-particle/ore-particle-shadow-8.png",
      priority = "extra-high",
      width = 6,
      height = 5,
      frame_count = 1
    }
  }
  }
  })
end


local resource_autoplace = require("resource-autoplace")
resource_autoplace.initialize_patch_set("iron-ore", true)
resource_autoplace.initialize_patch_set("nullius-bauxite", true)
resource_autoplace.initialize_patch_set("nullius-sandstone", true)
resource_autoplace.initialize_patch_set("nullius-limestone", true)
resource_autoplace.initialize_patch_set("nullius-fumarole", true)

make_particle("nullius-bauxite", {0.781, 0.703, 0.344})
make_particle("nullius-sandstone", {0.690, 0.611, 0.427})
make_particle("nullius-limestone", {0.898, 0.773, 0.688})


data:extend({
  {
    type = "autoplace-control",
    name = "iron-ore",
    category = "resource",
    richness = true,
    order = "a-b-b",
  },
  {
    type = "autoplace-control",
    name = "nullius-bauxite",
    category = "resource",
    richness = true,
    order = "a-b-c",
  },
  {
    type = "autoplace-control",
    name = "nullius-sandstone",
    category = "resource",
    richness = true,
    order = "a-b-d",
  },
  {
    type = "autoplace-control",
    name = "nullius-limestone",
    category = "resource",
    richness = true,
    order = "a-b-e",
  },
  {
    type = "autoplace-control",
    name = "nullius-geothermal",
    category = "resource",
    richness = true,
    order = "a-c-b",
  },

  {
    type = "resource",
    name = "iron-ore",
    icon = "__base__/graphics/icons/iron-ore.png",
    icon_size = 64,
    icon_mipmaps = 4,
    order = "a-b-b",
    map_color = {0.415, 0.525, 0.580},
    tree_removal_probability = 0.6,
    tree_removal_max_distance = 32 * 32,
    minable = {
      mining_particle = "iron-ore-particle",
      mining_time = 1.2,
      result = "iron-ore"
    },
    collision_box = {{-0.1, -0.1}, {0.1, 0.1}},
    selection_box = {{-0.5, -0.5}, {0.5, 0.5}},
    autoplace = resource_autoplace.resource_autoplace_settings
    {
      name = "iron-ore",
      order = "a-b-b",
      base_density = 10,
      has_starting_area_placement = true,
      regular_rq_factor_multiplier = 1.10,
      starting_rq_factor_multiplier = 1.5,
      candidate_spot_count = 22,
    },
    stage_counts = {15000, 9500, 5500, 2900, 1300, 400, 150, 80},
    stages = {
      sheet = {
        filename = BASEENTITY .. "iron-ore/iron-ore.png",
        priority = "extra-high",
        size = 64,
        frame_count = 8,
        variation_count = 8,
        hr_version = {
          filename = BASEENTITY .. "iron-ore/hr-iron-ore.png",
          priority = "extra-high",
          size = 128,
          frame_count = 8,
          variation_count = 8,
          scale = 0.5
        }
      }
    }
  },
  {
    type = "resource",
    name = "nullius-bauxite",
    icons = data.raw.item["nullius-bauxite"].icons,
    order = "a-b-c",
    map_color = {204, 204, 57},
    tree_removal_probability = 0.6,
    tree_removal_max_distance = 32 * 32,
    minable = {
      mining_particle = "nullius-bauxite-particle",
      mining_time = 0.8,
      result = "nullius-bauxite"
    },
    collision_box = {{-0.1, -0.1}, {0.1, 0.1}},
    selection_box = {{-0.5, -0.5}, {0.5, 0.5}},
    autoplace = resource_autoplace.resource_autoplace_settings
    {
      name = "nullius-bauxite",
      order = "a-b-b",
      base_density = 10,
      has_starting_area_placement = true,
      regular_rq_factor_multiplier = 1.10,
      starting_rq_factor_multiplier = 1.2,
      candidate_spot_count = 22,
    },
    stage_counts = {15000, 9500, 5500, 2900, 1300, 400, 150, 80},
    stages = {
      sheet = {
        filename = "__angelsrefining__/graphics/entity/ores/ore-14-lr.png",
        priority = "extra-high",
        tint = {0.858, 0.809, 0.479},
        size = 64,
        frame_count = 8,
        variation_count = 8,
        hr_version =
        {
          filename = "__angelsrefining__/graphics/entity/ores/ore-14-hr.png",
          priority = "extra-high",
          tint = {0.858, 0.809, 0.479},
          size = 128,
          frame_count = 8,
          variation_count = 8,
          scale = 0.5
        }
      }
    }
  },
  {
    type = "resource",
    name = "nullius-sandstone",
    icons = data.raw.item["nullius-sandstone"].icons,
    map_color = {170, 121, 113},
    tree_removal_probability = 0.6,
    tree_removal_max_distance = 32 * 32,
    order = "a-b-d",
    minable = {
      mining_particle = "stone-particle",
      mining_time = 1,
      result = "nullius-sandstone"
    },
    collision_box = {{-0.1, -0.1}, {0.1, 0.1}},
    selection_box = {{-0.5, -0.5}, {0.5, 0.5}},
    autoplace = resource_autoplace.resource_autoplace_settings
    {
      name = "nullius-sandstone",
      order = "a-b-d",
      base_density = 10,
      has_starting_area_placement = true,
      regular_rq_factor_multiplier = 1,
      starting_rq_factor_multiplier = 1.1
    },
    stage_counts = {15000, 9500, 5500, 2900, 1300, 400, 150, 80},
    stages = {
      sheet = {
        filename = "__angelsrefining__/graphics/entity/ores/ore-12-lr.png",
        priority = "extra-high",
        tint = {184, 125, 73},
        size = 64,
        frame_count = 8,
        variation_count = 8,
        hr_version =
        {
          filename = "__angelsrefining__/graphics/entity/ores/ore-12-hr.png",
          priority = "extra-high",
          tint = {184, 125, 73},
          size = 128,
          frame_count = 8,
          variation_count = 8,
          scale = 0.5
        }
      }
    }
  },
  {
    type = "resource",
    name = "nullius-limestone",
    icons = data.raw.item["nullius-limestone"].icons,
    map_color = {1, 0.86, 0.777},
    tree_removal_probability = 0.6,
    tree_removal_max_distance = 32 * 32,
    order = "a-b-e",
    minable = {
      mining_particle = "nullius-limestone-particle",
      mining_time = 1,
      result = "nullius-limestone"
    },
    collision_box = {{-0.1, -0.1}, {0.1, 0.1}},
    selection_box = {{-0.5, -0.5}, {0.5, 0.5}},
    autoplace = resource_autoplace.resource_autoplace_settings
    {
      name = "nullius-limestone",
      order = "a-b-b",
      base_density = 10,
      has_starting_area_placement = false,
      regular_rq_factor_multiplier = 1.10,
      starting_rq_factor_multiplier = 0.5
    },
    stage_counts = {15000, 9500, 5500, 2900, 1300, 400, 150, 80},
    stages = {
      sheet = {
        filename = "__angelsrefining__/graphics/entity/ores/ore-21-lr.png",
        priority = "extra-high",
        tint = {0.898, 0.773, 0.688},
        size = 64,
        frame_count = 8,
        variation_count = 8,
        hr_version =
        {
          filename = "__angelsrefining__/graphics/entity/ores/ore-21-hr.png",
          priority = "extra-high",
          tint = {0.898, 0.773, 0.688},
          size = 128,
          frame_count = 8,
          variation_count = 8,
          scale = 0.5
        }
      }
    }
  },
  {
    type = "resource",
    name = "copper-ore",
    icon = "__base__/graphics/icons/copper-ore.png",
    icon_size = 64,
    icon_mipmaps = 4,
    order = "a-b-f",
    map_color = {0.803, 0.388, 0.215},
    tree_removal_probability = 0.6,
    tree_removal_max_distance = 32 * 32,
    minable = {
      mining_particle = "copper-ore-particle",
      mining_time = 1,
      result = "copper-ore"
    },
    collision_box = {{-0.1, -0.1}, {0.1, 0.1}},
    selection_box = {{-0.5, -0.5}, {0.5, 0.5}},
    stage_counts = {15000, 9500, 5500, 2900, 1300, 400, 150, 80},
    stages = {
      sheet = {
        filename = BASEENTITY .. "copper-ore/copper-ore.png",
        priority = "extra-high",
        size = 64,
        frame_count = 8,
        variation_count = 8,
        hr_version = {
          filename = BASEENTITY .. "copper-ore/hr-copper-ore.png",
          priority = "extra-high",
          size = 128,
          frame_count = 8,
          variation_count = 8,
          scale = 0.5
        }
      }
    }
  },
  {
    type = "resource",
    name = "uranium-ore",
    icon = "__base__/graphics/icons/uranium-ore.png",
    icon_size = 64,
    icon_mipmaps = 4,
    flags = {"placeable-neutral"},
    order = "a-b-g",
    tree_removal_probability = 0.7,
    tree_removal_max_distance = 32 * 32,
    minable = {
      mining_particle = "stone-particle",
      mining_time = 2,
      result = "uranium-ore",
      fluid_amount = nil,
      required_fluid = nil
    },
    collision_box = {{-0.1, -0.1}, {0.1, 0.1}},
    selection_box = {{-0.5, -0.5}, {0.5, 0.5}},
    stage_counts = {10000, 6330, 3670, 1930, 870, 270, 100, 50},
    stages = {
      sheet = {
        filename = BASEENTITY .. "uranium-ore/uranium-ore.png",
        priority = "extra-high",
        width = 64,
        height = 64,
        frame_count = 8,
        variation_count = 8,
        hr_version = {
          filename = BASEENTITY .. "uranium-ore/hr-uranium-ore.png",
          priority = "extra-high",
          width = 128,
          height = 128,
          frame_count = 8,
          variation_count = 8,
          scale = 0.5
        }
      }
    },
    stages_effect = {
      sheet = {
        filename = BASEENTITY .. "uranium-ore/uranium-ore-glow.png",
        priority = "extra-high",
        width = 64,
        height = 64,
        frame_count = 8,
        variation_count = 8,
        blend_mode = "additive",
        flags = {"light"},
        hr_version = {
          filename = BASEENTITY .. "uranium-ore/hr-uranium-ore-glow.png",
          priority = "extra-high",
          width = 128,
          height = 128,
          frame_count = 8,
          variation_count = 8,
          scale = 0.5,
          blend_mode = "additive",
          flags = {"light"}
        }
      }
    },
    effect_animation_period = 5,
    effect_animation_period_deviation = 1,
    effect_darkness_multiplier = 3.6,
    min_effect_alpha = 0.2,
    max_effect_alpha = 0.3,
    mining_visualisation_tint = {r = 0.814, g = 1.000, b = 0.499, a = 1.000},
    map_color = {0, 0.7, 0}
  },
  {
    type = "resource",
    name = "nullius-fumarole",
    icons = data.raw.fluid["nullius-volcanic-gas"].icons,
    map_color = {r=1, g=0.5, b=0},
    map_grid = false,

    flags = {"placeable-neutral"},
    category = "basic-fluid",
    infinite = true,
    highlight = true,
    minimum = 75000,
    normal = 300000,
    infinite_depletion_amount = 10,
    resource_patch_search_radius = 12,

    tree_removal_probability = 0.6,
    tree_removal_max_distance = 32 * 32,
    order = "a-c-b",
    minable = {
      mining_time = 1,
      results =
      {
        {
          type = "fluid",
          name = "nullius-volcanic-gas",
          amount_min = 10,
          amount_max = 10,
          probability = 1,
          temperature = 200
        }
      }
    },
    collision_box = {{ -2.9, -2.9}, {2.9, 2.9}},
    selection_box = {{ -2.5, -2.5}, {2.5, 2.5}},
    map_generator_bounding_box = {{ -3.4, -3.4}, {3.4, 3.4}},
    autoplace = resource_autoplace.resource_autoplace_settings
    {
      name = "nullius-geothermal",
      order = "a-c-b",
      base_density = 12,
      base_spots_per_km2 = 2,
      random_probability = 1/60,
      random_spot_size_minimum = 1,
      random_spot_size_maximum = 1,
      additional_richness = 200000,
      regular_rq_factor_multiplier = 1,
      starting_rq_factor_multiplier = 1,
      has_starting_area_placement = false
    },

    stage_counts = {0},
    stages = {
      sheet = {
    filename = "__angelsrefining__/graphics/entity/patches/fissure.png",
    tint = {r = 0.65, g = 0.4, b = 0.15},
    priority = "extra-high",
    width = 256,
    height = 256,
        scale = 0.75,
    frame_count = 4,
    variation_count = 1,
      }
    },
    stages_effect = {
      sheet = {
    filename = "__angelsrefining__/graphics/entity/patches/fissure-glow.png",
    tint = {r=1, g=0.3, b=0.1},
    priority = "extra-high",
    width = 256,
    height = 256,
        scale = 0.75,
    frame_count = 4,
    variation_count = 1,
    blend_mode = "additive-soft",
    flags = {"light"},
      }
    },
    effect_animation_period = 4,
    effect_animation_period_deviation = 0.8,
    effect_darkness_multiplier = 3,
    min_effect_alpha = 0.3,
    max_effect_alpha = 0.6
  }
})


data.raw["map-gen-presets"]["default"]["rich-resources"] =
{
    order = "b",
    basic_settings =
    {
        autoplace_controls =
        {
            ["iron-ore"] = { richness = "very-good"},
            ["nullius-bauxite"] = { richness = "very-good"},
            ["nullius-sandstone"] = { richness = "very-good"},
            ["nullius-limestone"] = { richness = "very-good"},
            ["nullius-geothermal"] = { richness = "very-good"}
        }
    }
}

data.raw["map-gen-presets"]["default"]["rail-world"].basic_settings =
{
    property_expression_names = {},
    autoplace_controls = {
        ["iron-ore"] = {
            frequency = 0.33333333333,
            size = 3
        },
        ["nullius-bauxite"] = {
            frequency = 0.33333333333,
            size = 3
        },
        ["nullius-sandstone"] = {
            frequency = 0.33333333333,
            size = 3
        },
        ["nullius-limestone"] = {
            frequency = 0.33333333333,
            size = 3
        },
        ["nullius-geothermal"] = {
            frequency = 0.33333333333,
            size = 3
        }
    },
    terrain_segmentation = "very-low",
    water = "high",
}

data.raw["map-gen-presets"]["default"]["ribbon-world"].basic_settings =
{
    autoplace_controls = {
      ["iron-ore"] = {
            frequency = 3,
            size = 0.5,
            richness = 2
      },
      ["nullius-bauxite"] = {
            frequency = 3,
            size = 0.5,
            richness = 2
      },
      ["nullius-sandstone"] = {
            frequency = 3,
            size = 0.5,
            richness = 2
      },
      ["nullius-limestone"] = {
            frequency = 3,
            size = 0.5,
            richness = 2
      },
      ["nullius-geothermal"] = {
            frequency = 3,
            size = 0.5,
            richness = 2
      }
    },
    terrain_segmentation = 4,
    water = 0.25,
    starting_area = 3,
    height = 128
}
