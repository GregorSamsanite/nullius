local resource_autoplace = require("resource-autoplace")

for r, subdir in pairs(angelsmods.functions.store) do
  for r, input in pairs(subdir) do
    if (not input.inactive) then
	  if ((input.name == "coal") or (input.name == "crude-oil")) then
	    input.inactive = true
	  else
        angelsmods.functions.remove_resource(input.name)
	  end
    end
  end
end


function remove_autoplace(resource)
  if data.raw.resource[resource] then
    data.raw["autoplace-control"][resource] = nil
	data.raw.resource[resource].autoplace = nil
  end
  for _, preset in pairs(data.raw["map-gen-presets"]["default"]) do
    if ((preset.basic_settings ~= nil) and
        (preset.basic_settings.autoplace_controls ~= nil)) then
      preset.basic_settings.autoplace_controls[resource] = nil
    end
  end
end

remove_autoplace("copper-ore")
remove_autoplace("uranium-ore")
remove_autoplace("coal")
remove_autoplace("crude-oil")

angelsmods.functions.remove_resource("stone")
angelsmods.functions.remove_resource("trees")


data.raw["autoplace-control"]["iron-ore"].localised_name = nil
data.raw["autoplace-control"]["iron-ore"].order = "a-b-b"

data.raw.resource["iron-ore"].order = "a-b-b"
data.raw.resource["iron-ore"].minable.mining_time = 1.2
data.raw.resource["copper-ore"].order = "a-b-f"
data.raw.resource["uranium-ore"].order = "a-b-g"
data.raw.resource["uranium-ore"].minable.fluid_amount = nil
data.raw.resource["uranium-ore"].minable.required_fluid = nil

data.raw.resource["coal"].order = "a-b-h"
data.raw.resource["coal"].minable.result = "nullius-coal"
data.raw.resource["crude-oil"].order = "a-b-i"
data.raw.resource["crude-oil"].minable.results[1].name = "nullius-petroleum"
data.raw.resource["crude-oil"].infinite = false
data.raw.resource["crude-oil"].infinite_depletion_amount = nil
data.raw.resource["crude-oil"].localised_name =
    {"fluid-name.nullius-petroleum"}

data.raw.resource["iron-ore"].autoplace =
    resource_autoplace.resource_autoplace_settings {
      name = "iron-ore",
      order = "a-b-b",
      base_density = 10,
      has_starting_area_placement = true,
      regular_rq_factor_multiplier = 1.10,
      starting_rq_factor_multiplier = 1.5,
      candidate_spot_count = 22,
    }


data.raw["map-gen-presets"]["default"]["rich-resources"] = {
    order = "b",
    basic_settings = {
        autoplace_controls = {
            ["iron-ore"] = { richness = "very-good"},
            ["nullius-bauxite"] = { richness = "very-good"},
            ["nullius-sandstone"] = { richness = "very-good"},
            ["nullius-limestone"] = { richness = "very-good"},
            ["nullius-geothermal"] = { richness = "very-good"}
        }
    }
}

data.raw["map-gen-presets"]["default"]["rail-world"].basic_settings = {
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

data.raw["map-gen-presets"]["default"]["ribbon-world"].basic_settings = {
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


if (mods["cargo-ships"] and settings.startup["deep_oil"].value) then
resource_autoplace.initialize_patch_set("deep_oil", false)

data.raw.resource["deep_oil"].autoplace =
    resource_autoplace.resource_autoplace_settings {
      name = "deep_oil",
      order = "a-c-c",
      base_density = 8.2,
      base_spots_per_km2 = 1.8,
      random_probability = 1/48,
      random_spot_size_minimum = 1,
      random_spot_size_maximum = 1,
      additional_richness = 200000,
      regular_rq_factor_multiplier = 1,
      has_starting_area_placement = false
    }

data.raw.resource["deep_oil"].minable = {
  mining_time = 1,
  results = {{
    type = "fluid",
    name = "nullius-volcanic-gas",
    amount_min = 10,
    amount_max = 10,
    probability = 1,
    temperature = 200
  }}
}

data.raw.resource["deep_oil"].map_color = {r=0.7, g=0.5, b=0.3}
data.raw.resource["deep_oil"].mining_visualisation_tint = {r = 1.0, g = 0.7, b = 0.4, a = 1.0}
data.raw.resource["deep_oil"].localised_name = {"entity-name.nullius-hydrothermal-vent"}
data.raw.resource["deep_oil"].localised_description = {"entity-description.nullius-hydrothermal-vent"}

table.insert(data.raw.resource["deep_oil"].collision_mask, 'ground-tile')

data.raw.resource["deep_oil"].stages = { sheet = {
  filename = "__angelsrefining__/graphics/entity/patches/gas.png",
  tint = {0.4, 0.2, 0, 0.4},
  priority = "extra-high",
  width = 64,
  height = 64,
  frame_count = 4,
  variation_count = 1
}}

data.raw["map-gen-presets"]["default"]["rich-resources"].basic_settings.
    autoplace_controls["deep_oil"] = { richness = "very-good"}
data.raw["map-gen-presets"]["default"]["rail-world"].basic_settings.
    autoplace_controls["deep_oil"] = { frequency = 0.33333333333, size = 3 }
data.raw["map-gen-presets"]["default"]["ribbon-world"].basic_settings.
    autoplace_controls["deep_oil"] = { frequency = 3, size = 0.5, richness = 2 }

if (not settings.startup["no_oil_for_oil_rig"].value) then
  data.raw.resource["nullius-fumarole"].infinite = false
  data.raw.resource["nullius-fumarole"].infinite_depletion_amount = nil
  data.raw.resource["nullius-fumarole"].localised_description =
    {"entity-description.nullius-fumarole-finite"}
end
end
