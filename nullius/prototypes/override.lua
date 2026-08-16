local ICONPATH = "__nullius__/graphics/icons/"
local ENTICONPATH = "__nullius__/graphics/icons/entity/"
local ENTITYPATH = "__nullius__/graphics/entity/"

for _, type in pairs({"unit-spawner", "unit", "turret"}) do
  for _, entity in pairs(data.raw[type]) do
    if ((entity.subgroup == "enemies") and entity.autoplace and (entity.autoplace.force == "enemy")) then
      entity.autoplace.richness_expression = "0"
      entity.autoplace.probability_expression = "0"
    end
  end
end

data.raw.item["iron-ore"].icon = "__base__/graphics/icons/iron-ore.png"
data.raw.item["iron-ore"].icon_size = 64
data.raw.item["iron-ore"].subgroup = "iron-ingot"
data.raw.item["iron-ore"].order = "nullius-b"
data.raw.item["iron-ore"].stack_size = 50
data.raw.item["copper-ore"].icon = "__base__/graphics/icons/copper-ore.png"
data.raw.item["copper-ore"].icon_size = 64
data.raw.item["copper-ore"].subgroup = "copper"
data.raw.item["copper-ore"].order = "nullius-b"
data.raw.item["copper-ore"].stack_size = 50
data.raw.item["uranium-ore"].subgroup = "uranium"
data.raw.item["uranium-ore"].order = "nullius-b"
data.raw.item["uranium-ore"].stack_size = 50
data.raw.item["stone"].subgroup = "masonry-material"
data.raw.item["stone"].order = "nullius-k"
data.raw.item["stone"].stack_size = 50

data.raw.item["nullius-red-wire"].order = "nullius-ca"
data.raw.item["nullius-green-wire"].order = "nullius-ca"
data.raw.item["power-switch"].order = "nullius-h"
data.raw["power-switch"]["power-switch"].localised_description = {"",
    {"entity-description.power-switch"}, {"entity-description.nullius-power-switch",
	    {"item-name.nullius-insulated-wire"}, "copper-cable"}}
data.raw["power-switch"]["power-switch"].minable.mining_time = 0.6
data.raw.item["display-panel"].order = "nullius-ga"
data.raw["display-panel"]["display-panel"].minable.mining_time = 0.6

data.raw["constant-combinator"]["constant-combinator"].localised_name = {"entity-name.nullius-memory-circuit"}
data.raw["constant-combinator"]["constant-combinator"].minable.mining_time = 1
data.raw.item["constant-combinator"].localised_name = {"entity-name.nullius-memory-circuit"}
data.raw.item["constant-combinator"].order = "nullius-g"
data.raw["arithmetic-combinator"]["arithmetic-combinator"].localised_name = {"entity-name.nullius-arithmetic-circuit"}
data.raw["arithmetic-combinator"]["arithmetic-combinator"].minable.mining_time = 1
data.raw.item["arithmetic-combinator"].localised_name = {"entity-name.nullius-arithmetic-circuit"}
data.raw.item["arithmetic-combinator"].order = "nullius-f"
data.raw["arithmetic-combinator"]["arithmetic-combinator"].energy_source = {
  type = "electric",
  usage_priority = "primary-input",
  input_flow_limit = "2kW",
  buffer_capacity = "30kW"
}
data.raw["arithmetic-combinator"]["arithmetic-combinator"].active_energy_usage = "100W"
data.raw["decider-combinator"]["decider-combinator"].localised_name = {"entity-name.nullius-logic-circuit"}
data.raw["decider-combinator"]["decider-combinator"].minable.mining_time = 1
data.raw.item["decider-combinator"].localised_name = {"entity-name.nullius-logic-circuit"}
data.raw.item["decider-combinator"].order = "nullius-e"
data.raw["decider-combinator"]["decider-combinator"].energy_source =
    data.raw["arithmetic-combinator"]["arithmetic-combinator"].energy_source
data.raw["decider-combinator"]["decider-combinator"].active_energy_usage = "100W"

data.raw["selector-combinator"]["selector-combinator"].localised_name = {"entity-name.nullius-selector-circuit"}
data.raw["selector-combinator"]["selector-combinator"].minable.mining_time = 1
data.raw.item["selector-combinator"].localised_name = {"entity-name.nullius-selector-circuit"}
data.raw.item["selector-combinator"].order = "nullius-gb"
data.raw["selector-combinator"]["selector-combinator"].energy_source =
    data.raw["arithmetic-combinator"]["arithmetic-combinator"].energy_source
data.raw["selector-combinator"]["selector-combinator"].active_energy_usage = "100W"

data.raw["programmable-speaker"]["programmable-speaker"].localised_name = {"entity-name.nullius-antenna"}
data.raw["programmable-speaker"]["programmable-speaker"].localised_description = {"entity-description.nullius-antenna"}
data.raw.item["programmable-speaker"].localised_name = {"entity-name.nullius-antenna"}
data.raw.item["programmable-speaker"].order = "nullius-i"
data.raw["programmable-speaker"]["programmable-speaker"].energy_source = {
  type = "electric",
  usage_priority = "primary-input",
  input_flow_limit = "5kW",
  buffer_capacity = "100kW"
}
data.raw["programmable-speaker"]["programmable-speaker"].energy_usage_per_tick = "250W"
data.raw["programmable-speaker"]["programmable-speaker"].minable.mining_time = 1

data.raw.item["small-lamp"].localised_name = {"entity-name.nullius-lamp-1"}
data.raw.item["small-lamp"].subgroup = "railway"
data.raw.item["small-lamp"].order = "nullius-bb"
--data.raw.item["small-lamp"].place_result = "nullius-lamp-1"
data.raw.item["small-lamp"].icon = nil
data.raw.item["small-lamp"].icons =
  {{icon = ENTICONPATH .. "lamp1.png", icon_size = 64}}
label_icon("small-lamp", 1, "yellow")

-- data.raw["lamp"]["small-lamp"].localised_name = {"entity-name.nullius-lamp-1"}
-- data.raw["lamp"]["small-lamp"].placeable_by = {item = "small-lamp", count = 1}
-- data.raw["lamp"]["small-lamp"].minable.mining_time = 0.3
-- data.raw["lamp"]["small-lamp"].icon = nil
-- data.raw["lamp"]["small-lamp"].icons = data.raw.item["small-lamp"].icons

data.raw["lamp"]["small-lamp"] = data.raw["lamp"]["nullius-lamp-1"] -- rename nullius-lamp-1 to small-lamp (better to follow the same pattern as everything else (helps with factoriopedia clutter))
data.raw["lamp"]["nullius-lamp-1"] = nil
data.raw["lamp"]["small-lamp"].name = "small-lamp"

data.raw.item["stone-wall"].stack_size = 200
data.raw.item["stone-wall"].subgroup = "concrete"
data.raw.item["stone-wall"].order = "nullius-e"
data.raw["wall"]["stone-wall"].localised_description = {"entity-description.nullius-wall"}
data.raw["wall"]["stone-wall"].minable.mining_time = 0.6
data.raw.item["gate"].stack_size = 100
data.raw.item["gate"].subgroup = "concrete"
data.raw.item["gate"].order = "nullius-f"
data.raw["gate"]["gate"].localised_description = {"entity-description.nullius-gate"}
data.raw["gate"]["gate"].minable.mining_time = 0.8

data.raw.item["barrel"].localised_description = {"item-description.nullius-barrel"}
data.raw.item["barrel"].subgroup = "canisters"
data.raw.item["barrel"].order = "nullius-b"
data.raw.item["barrel"].stack_size = 20

data.raw["capsule"]["cliff-explosives"].localised_name = {"item-name.nullius-explosive"}
data.raw["capsule"]["cliff-explosives"].localised_description = {"item-description.nullius-explosive"}
data.raw["capsule"]["cliff-explosives"].icon = "__base__/graphics/icons/explosives.png"
data.raw["capsule"]["cliff-explosives"].subgroup = "concrete"
data.raw["capsule"]["cliff-explosives"].order = "nullius-x"
data.raw["capsule"]["cliff-explosives"].stack_size = 100
data.raw["projectile"]["cliff-explosives"].action[1].action_delivery.target_effects[2] = {
  type = "create-trivial-smoke",
  smoke_name = "smoke-fast",
  starting_frame_deviation = 5,
  probability = 0.5
}

data.raw.item["rocket-fuel"].subgroup = "canisters"
data.raw.item["rocket-fuel"].order = "nullius-g"
data.raw.item["rocket-fuel"].fuel_category = "vehicle"
data.raw.item["rocket-fuel"].fuel_value = "60MJ"
data.raw.item["rocket-fuel"].fuel_acceleration_multiplier = 2
data.raw.item["rocket-fuel"].fuel_top_speed_multiplier = 1.5
data.raw.item["rocket-fuel"].burnt_result = "nullius-alumina"
data.raw.item["rocket-fuel"].stack_size = 20

data.raw.tile["landfill"].placeable_by = {item = "nullius-land-fill-gravel", count = 1}
data.raw.item["stone-brick"].stack_size = 500
data.raw.tile["stone-path"].walking_speed_modifier = 1.3
data.raw.tile["stone-path"].vehicle_friction_modifier = 0.8
data.raw.item["concrete"].stack_size = 500
data.raw.tile["concrete"].walking_speed_modifier = 1.5
data.raw.tile["concrete"].vehicle_friction_modifier = 0.6
data.raw.item["refined-concrete"].localised_name = {"item-name.nullius-reinforced-concrete"}
data.raw.item["refined-concrete"].stack_size = 500
data.raw.tile["refined-concrete"].walking_speed_modifier = 1.6
data.raw.tile["refined-concrete"].vehicle_friction_modifier = 0.5
data.raw.tile["refined-concrete"].localised_name = {"item-name.nullius-reinforced-concrete"}
data.raw.item["refined-hazard-concrete"].stack_size = 500
data.raw.item["refined-hazard-concrete"].localised_name = {"item-name.nullius-hazard-concrete"}
data.raw.tile["refined-hazard-concrete-left"].walking_speed_modifier = 1.6
data.raw.tile["refined-hazard-concrete-left"].vehicle_friction_modifier = 0.5
data.raw.tile["refined-hazard-concrete-right"].walking_speed_modifier = 1.6
data.raw.tile["refined-hazard-concrete-right"].vehicle_friction_modifier = 0.5

data.raw.tile["red-refined-concrete"].walking_speed_modifier = 1.6
data.raw.tile["red-refined-concrete"].vehicle_friction_modifier = 0.5
data.raw.tile["red-refined-concrete"].minable = {mining_time = 0.1, result = "nullius-red-concrete"}
data.raw.tile["red-refined-concrete"].localised_name = {"item-name.nullius-red-concrete"}
data.raw.tile["green-refined-concrete"].walking_speed_modifier = 1.6
data.raw.tile["green-refined-concrete"].vehicle_friction_modifier = 0.5
data.raw.tile["green-refined-concrete"].minable = {mining_time = 0.1, result = "nullius-green-concrete"}
data.raw.tile["green-refined-concrete"].localised_name = {"item-name.nullius-green-concrete"}
data.raw.tile["blue-refined-concrete"].walking_speed_modifier = 1.6
data.raw.tile["blue-refined-concrete"].vehicle_friction_modifier = 0.5
data.raw.tile["blue-refined-concrete"].minable = {mining_time = 0.1, result = "nullius-blue-concrete"}
data.raw.tile["blue-refined-concrete"].localised_name = {"item-name.nullius-blue-concrete"}
data.raw.tile["yellow-refined-concrete"].variants = data.raw.tile["nullius-white-concrete"].variants
data.raw.tile["yellow-refined-concrete"].tint = { r = 0.85, g = 0.75, b = 0.25 }
data.raw.tile["yellow-refined-concrete"].map_color = { r = 0.8, g = 0.7, b = 0.1 }
data.raw.tile["yellow-refined-concrete"].walking_speed_modifier = 1.6
data.raw.tile["yellow-refined-concrete"].vehicle_friction_modifier = 0.5
data.raw.tile["yellow-refined-concrete"].minable = {mining_time = 0.1, result = "nullius-yellow-concrete"}
data.raw.tile["yellow-refined-concrete"].localised_name = {"item-name.nullius-yellow-concrete"}
data.raw.tile["purple-refined-concrete"].walking_speed_modifier = 1.6
data.raw.tile["purple-refined-concrete"].vehicle_friction_modifier = 0.5
data.raw.tile["purple-refined-concrete"].minable = {mining_time = 0.1, result = "nullius-purple-concrete"}
data.raw.tile["purple-refined-concrete"].localised_name = {"item-name.nullius-purple-concrete"}
data.raw.tile["brown-refined-concrete"].walking_speed_modifier = 1.6
data.raw.tile["brown-refined-concrete"].vehicle_friction_modifier = 0.5
data.raw.tile["brown-refined-concrete"].minable = {mining_time = 0.1, result = "nullius-brown-concrete"}
data.raw.tile["brown-refined-concrete"].localised_name = {"item-name.nullius-brown-concrete"}
data.raw.tile["black-refined-concrete"].walking_speed_modifier = 1.6
data.raw.tile["black-refined-concrete"].vehicle_friction_modifier = 0.5
data.raw.tile["black-refined-concrete"].minable = {mining_time = 0.1, result = "nullius-black-concrete"}
data.raw.tile["black-refined-concrete"].localised_name = {"item-name.nullius-black-concrete"}

data.raw.tile["mineral-grey-dirt-1"].map_color = {r = 119, g = 120, b = 115}
data.raw.tile["mineral-grey-dirt-2"].map_color = {r = 91, g = 94, b = 90}
data.raw.tile["mineral-grey-dirt-3"].map_color = {r = 94, g = 98, b = 100}
data.raw.tile["mineral-grey-dirt-4"].map_color = {r = 94, g = 100, b = 97}
data.raw.tile["mineral-grey-dirt-5"].map_color = {r = 86, g = 90, b = 89}
data.raw.tile["mineral-grey-dirt-6"].map_color = {r = 84, g = 85, b = 86}
data.raw.tile["mineral-grey-sand-1"].map_color = {r = 116, g = 119, b = 116}
data.raw.tile["mineral-grey-sand-2"].map_color = {r = 111, g = 114, b = 113}
data.raw.tile["mineral-grey-sand-3"].map_color = {r = 108, g = 109, b = 112}

data.raw.tile["mineral-cream-sand-2"].map_color = {r = 186, g = 179, b = 125}
data.raw.tile["mineral-cream-dirt-2"].map_color = {r = 144, g = 136, b = 90}
data.raw.tile["mineral-tan-sand-1"].map_color = {r = 168, g = 132, b = 80}
data.raw.tile["mineral-tan-sand-2"].map_color = {r = 156, g = 128, b = 78}
data.raw.tile["mineral-tan-sand-3"].map_color = {r = 144, g = 111, b = 67}

data.raw.tile["mineral-beige-dirt-1"].map_color = {r = 115, g = 105, b = 88}
data.raw.tile["mineral-beige-dirt-2"].map_color = {r = 105, g = 96, b = 78}
data.raw.tile["mineral-beige-dirt-3"].map_color = {r = 99, g = 91, b = 75}
data.raw.tile["mineral-beige-dirt-4"].map_color = {r = 92, g = 83, b = 67}
data.raw.tile["mineral-beige-dirt-5"].map_color = {r = 120, g = 107, b = 83}
data.raw.tile["mineral-beige-dirt-6"].map_color = {r = 131, g = 118, b = 94}

data.raw.tile["mineral-brown-dirt-1"].map_color = {r = 90, g = 63, b = 46}
data.raw.tile["mineral-brown-dirt-2"].map_color = {r = 71, g = 52, b = 38}
data.raw.tile["mineral-brown-dirt-3"].map_color = {r = 67, g = 47, b = 35}
data.raw.tile["mineral-brown-dirt-4"].map_color = {r = 61, g = 43, b = 31}
data.raw.tile["mineral-brown-dirt-5"].map_color = {r = 76, g = 55, b = 43}
data.raw.tile["mineral-brown-dirt-6"].map_color = {r = 115, g = 81, b = 61}
data.raw.tile["mineral-tan-dirt-4"].map_color = {r = 82, g = 59, b = 36}

data.raw.tile["mineral-red-dirt-1"].map_color = {r = 100, g = 49, b = 38}
data.raw.tile["mineral-red-dirt-2"].map_color = {r = 75, g = 38, b = 30}
data.raw.tile["mineral-red-dirt-4"].map_color = {r = 69, g = 33, b = 25}
data.raw.tile["mineral-red-dirt-6"].map_color = {r = 124, g = 64, b = 51}

data.raw.tile["mineral-white-sand-3"].layer = 21
data.raw.tile["mineral-brown-sand-2"].layer = 17
data.raw.tile["mineral-beige-sand-1"].layer = 22
data.raw.tile["mineral-tan-dirt-6"].layer = 24

-- for _,variant in pairs(data.raw.tile["water-mud"].variants) do -- todo: this is useless ??
--   if (variant.picture ~= nil) then
--     variant.tint = {0.75, 1, 0.75, 1}
--   else
--     for _,subvariant in pairs(variant) do
--       subvariant.tint = {0.75, 1, 0.75, 1}
-- 	end
--   end
-- end

data.raw.tile["grass-1"].map_color={r=54, g=57, b=12}
data.raw.tile["grass-2"].map_color={r=68, g=65, b=14}
data.raw.tile["grass-3"].map_color={r=66, g=57, b=20}
data.raw.tile["grass-4"].map_color={r=62, g=52, b=18}

data.raw.fish.fish.flags = {"placeable-neutral"}
data.raw.fish.fish.map_color = {r=104, g=120, b=64}
data.raw.fish.fish.collision_box = {{-0.45, -0.45}, {0.45, 0.45}}
data.raw.fish.fish.selection_box = {{-0.3, -0.3}, {0.3, 0.3}}


data.raw.item["transport-belt"].subgroup = "belt"
data.raw.item["transport-belt"].order = "nullius-bb"
data.raw.item["transport-belt"].stack_size = 200
data.raw["transport-belt"]["transport-belt"].localised_name = {"entity-name.nullius-belt-1"}
data.raw["transport-belt"]["transport-belt"].minable.mining_time = 0.1
data.raw.item["underground-belt"].subgroup = "belt"
data.raw.item["underground-belt"].order = "nullius-cb"
data.raw.item["underground-belt"].stack_size = 100
data.raw["underground-belt"]["underground-belt"].localised_name = {"entity-name.nullius-underground-belt-1"}
data.raw["underground-belt"]["underground-belt"].max_distance = 7
data.raw["underground-belt"]["underground-belt"].minable.mining_time = 0.4
data.raw.item["splitter"].subgroup = "splitter"
data.raw.item["splitter"].order = "nullius-db"
data.raw["splitter"]["splitter"].localised_name = {"entity-name.nullius-splitter-1"}
data.raw["splitter"]["splitter"].minable.mining_time = 0.6

data.raw.item["fast-transport-belt"].subgroup = "belt"
data.raw.item["fast-transport-belt"].order = "nullius-bc"
data.raw.item["fast-transport-belt"].stack_size = 200
data.raw["transport-belt"]["fast-transport-belt"].localised_name = {"entity-name.nullius-belt-2"}
data.raw["transport-belt"]["fast-transport-belt"].minable.mining_time = 0.2
data.raw.item["fast-underground-belt"].subgroup = "belt"
data.raw.item["fast-underground-belt"].order = "nullius-cc"
data.raw.item["fast-underground-belt"].stack_size = 100
data.raw["underground-belt"]["fast-underground-belt"].localised_name = {"entity-name.nullius-underground-belt-2"}
data.raw["underground-belt"]["fast-underground-belt"].max_distance = 11
data.raw["underground-belt"]["fast-underground-belt"].minable.mining_time = 0.6
data.raw.item["fast-splitter"].subgroup = "splitter"
data.raw.item["fast-splitter"].order = "nullius-dc"
data.raw["splitter"]["fast-splitter"].localised_name = {"entity-name.nullius-splitter-2"}
data.raw["splitter"]["fast-splitter"].minable.mining_time = 0.9

data.raw.item["express-transport-belt"].subgroup = "belt"
data.raw.item["express-transport-belt"].order = "nullius-bd"
data.raw.item["express-transport-belt"].stack_size = 200
data.raw["transport-belt"]["express-transport-belt"].localised_name = {"entity-name.nullius-belt-3"}
data.raw["transport-belt"]["express-transport-belt"].next_upgrade = "bob-ultimate-transport-belt"
data.raw["transport-belt"]["express-transport-belt"].minable.mining_time = 0.3
data.raw.item["express-underground-belt"].subgroup = "belt"
data.raw.item["express-underground-belt"].order = "nullius-cd"
data.raw.item["express-underground-belt"].stack_size = 100
data.raw["underground-belt"]["express-underground-belt"].localised_name = {"entity-name.nullius-underground-belt-3"}
data.raw["underground-belt"]["express-underground-belt"].max_distance = 15
data.raw["underground-belt"]["express-underground-belt"].next_upgrade = "bob-ultimate-underground-belt"
data.raw["underground-belt"]["express-underground-belt"].minable.mining_time = 0.8
data.raw.item["express-splitter"].subgroup = "splitter"
data.raw.item["express-splitter"].order = "nullius-dd"
data.raw["splitter"]["express-splitter"].localised_name = {"entity-name.nullius-splitter-3"}
data.raw["splitter"]["express-splitter"].next_upgrade = "bob-ultimate-splitter"
data.raw["splitter"]["express-splitter"].minable.mining_time = 1.2

data.raw.item["bob-ultimate-transport-belt"].subgroup = "belt"
data.raw.item["bob-ultimate-transport-belt"].order = "nullius-be"
data.raw.item["bob-ultimate-transport-belt"].icon = ENTICONPATH .. "belt4.png"
data.raw.item["bob-ultimate-transport-belt"].icon_size = 64
data.raw.item["bob-ultimate-transport-belt"].stack_size = 200
data.raw["transport-belt"]["bob-ultimate-transport-belt"].localised_name = {"entity-name.nullius-belt-4"}
data.raw["transport-belt"]["bob-ultimate-transport-belt"].next_upgrade = nil
data.raw["transport-belt"]["bob-ultimate-transport-belt"].icon = ENTICONPATH .. "belt4.png"
data.raw["transport-belt"]["bob-ultimate-transport-belt"].icon_size = 64
data.raw["transport-belt"]["bob-ultimate-transport-belt"].minable.mining_time = 0.4
data.raw.item["bob-ultimate-underground-belt"].subgroup = "belt"
data.raw.item["bob-ultimate-underground-belt"].order = "nullius-ce"
data.raw.item["bob-ultimate-underground-belt"].icon = ENTICONPATH .. "underground-belt4.png"
data.raw.item["bob-ultimate-underground-belt"].icon_size = 64
data.raw.item["bob-ultimate-underground-belt"].stack_size = 100
data.raw["underground-belt"]["bob-ultimate-underground-belt"].localised_name = {"entity-name.nullius-underground-belt-4"}
data.raw["underground-belt"]["bob-ultimate-underground-belt"].max_distance = 19
data.raw["underground-belt"]["bob-ultimate-underground-belt"].next_upgrade = nil
data.raw["underground-belt"]["bob-ultimate-underground-belt"].icon = ENTICONPATH .. "underground-belt4.png"
data.raw["underground-belt"]["bob-ultimate-underground-belt"].icon_size = 64
data.raw["underground-belt"]["bob-ultimate-underground-belt"].minable.mining_time = 1
data.raw.item["bob-ultimate-splitter"].subgroup = "splitter"
data.raw.item["bob-ultimate-splitter"].order = "nullius-de"
data.raw.item["bob-ultimate-splitter"].icon = ENTICONPATH .. "splitter4.png"
data.raw.item["bob-ultimate-splitter"].icon_size = 64
data.raw["splitter"]["bob-ultimate-splitter"].localised_name = {"entity-name.nullius-splitter-4"}
data.raw["splitter"]["bob-ultimate-splitter"].next_upgrade = nil
data.raw["splitter"]["bob-ultimate-splitter"].icon = ENTICONPATH .. "splitter4.png"
data.raw["splitter"]["bob-ultimate-splitter"].icon_size = 64
data.raw["splitter"]["bob-ultimate-splitter"].minable.mining_time = 1.5

data.raw.item["inserter"].subgroup = "inserter"
data.raw.item["inserter"].order = "nullius-b"
data.raw.item["inserter"].localised_name = {"entity-name.nullius-inserter-1"}
data.raw.item["inserter"].stack_size = 100
data.raw["inserter"]["inserter"].order = "nullius-b"
data.raw["inserter"]["inserter"].localised_name = {"entity-name.nullius-inserter-1"}
data.raw["inserter"]["inserter"].rotation_speed = 0.0166667
data.raw["inserter"]["inserter"].extension_speed = 0.04
data.raw["inserter"]["inserter"].energy_per_rotation = "12.5kJ"
data.raw["inserter"]["inserter"].energy_per_movement = "1.875kJ"
data.raw["inserter"]["inserter"].energy_source.drain = "1kW"
data.raw["inserter"]["inserter"].minable.mining_time = 0.4
data.raw["inserter"]["inserter"].next_upgrade = "bob-turbo-inserter"
data.raw["inserter"]["inserter"].resistances = {
  { type = "impact", decrease = 100, percent = 90 }
}
data.raw["inserter"]["inserter"].localised_description = {"entity-description.inserterToggleInfo"}
-- data.raw["inserter"]["inserter"].custom_tooltip_fields = { --Potential alternative
--   {
--     name = {"", "Toggle long inserter"},
--     value = {"", "Shift+L"}
--   }
-- }

data.raw.item["bob-turbo-inserter"].subgroup = "inserter"
data.raw.item["bob-turbo-inserter"].order = "nullius-c"
data.raw.item["bob-turbo-inserter"].localised_name = {"entity-name.nullius-inserter-2"}
data.raw.item["bob-turbo-inserter"].stack_size = 100
data.raw["inserter"]["bob-turbo-inserter"].order = "nullius-c"
data.raw["inserter"]["bob-turbo-inserter"].localised_name = {"entity-name.nullius-inserter-2"}
data.raw["inserter"]["bob-turbo-inserter"].rotation_speed = 0.0333333
data.raw["inserter"]["bob-turbo-inserter"].extension_speed = 0.08
data.raw["inserter"]["bob-turbo-inserter"].energy_per_rotation = "10.25kJ"
data.raw["inserter"]["bob-turbo-inserter"].energy_per_movement = "1.5625kJ"
data.raw["inserter"]["bob-turbo-inserter"].energy_source.drain = "2kW"
data.raw["inserter"]["bob-turbo-inserter"].minable.mining_time = 0.6
data.raw["inserter"]["bob-turbo-inserter"].next_upgrade = "bulk-inserter"
data.raw["inserter"]["bob-turbo-inserter"].resistances = {
  { type = "impact", decrease = 100, percent = 90 }
}
data.raw["inserter"]["bob-turbo-inserter"].localised_description = {"entity-description.inserterToggleInfo"}

-- data.raw.item["turbo-filter-inserter"].subgroup = "inserter"
-- data.raw.item["turbo-filter-inserter"].order = "nullius-d"
-- data.raw.item["turbo-filter-inserter"].localised_name = {"entity-name.nullius-filter-inserter-2"}
-- data.raw.item["turbo-filter-inserter"].stack_size = 100
-- data.raw["inserter"]["turbo-filter-inserter"].order = "nullius-d"
-- data.raw["inserter"]["turbo-filter-inserter"].localised_name = {"entity-name.nullius-filter-inserter-2"}
-- data.raw["inserter"]["turbo-filter-inserter"].rotation_speed = 0.0333333
-- data.raw["inserter"]["turbo-filter-inserter"].extension_speed = 0.08
-- data.raw["inserter"]["turbo-filter-inserter"].energy_per_rotation = "10.25kJ"
-- data.raw["inserter"]["turbo-filter-inserter"].energy_per_movement = "1.5625kJ"
-- data.raw["inserter"]["turbo-filter-inserter"].energy_source.drain = "2kW"
-- data.raw["inserter"]["turbo-filter-inserter"].minable.mining_time = 0.6
-- data.raw["inserter"]["turbo-filter-inserter"].next_upgrade = "bulk-filter-inserter"
-- data.raw["inserter"]["turbo-filter-inserter"].resistances = {
--   { type = "impact", decrease = 100, percent = 90 }
-- }

data.raw.item["bulk-inserter"].subgroup = "inserter"
data.raw.item["bulk-inserter"].order = "nullius-e"
data.raw.item["bulk-inserter"].localised_name = {"entity-name.nullius-inserter-3"}
data.raw.item["bulk-inserter"].stack_size = 100
data.raw["inserter"]["bulk-inserter"].order = "nullius-e"
data.raw["inserter"]["bulk-inserter"].localised_name = {"entity-name.nullius-inserter-3"}
data.raw["inserter"]["bulk-inserter"].rotation_speed = 0.0333333
data.raw["inserter"]["bulk-inserter"].extension_speed = 0.08
data.raw["inserter"]["bulk-inserter"].energy_per_rotation = "20.5kJ"
data.raw["inserter"]["bulk-inserter"].energy_per_movement = "3.125kJ"
data.raw["inserter"]["bulk-inserter"].energy_source.drain = "4kW"
data.raw["inserter"]["bulk-inserter"].minable.mining_time = 0.8
data.raw["inserter"]["bulk-inserter"].next_upgrade = "bob-express-bulk-inserter"
data.raw["inserter"]["bulk-inserter"].resistances = {
  { type = "impact", decrease = 100, percent = 90 }
}
data.raw["inserter"]["bulk-inserter"].localised_description = {"entity-description.inserterToggleInfo"}

data.raw.recipe["inserter"].order = "x"

-- data.raw.item["bulk-filter-inserter"].subgroup = "inserter"
-- data.raw.item["bulk-filter-inserter"].order = "nullius-f"
-- data.raw.item["bulk-filter-inserter"].localised_name = {"entity-name.nullius-filter-inserter-3"}
-- data.raw.item["bulk-filter-inserter"].stack_size = 100
-- data.raw["inserter"]["bulk-filter-inserter"].order = "nullius-f"
-- data.raw["inserter"]["bulk-filter-inserter"].localised_name = {"entity-name.nullius-filter-inserter-3"}
-- data.raw["inserter"]["bulk-filter-inserter"].rotation_speed = 0.0333333
-- data.raw["inserter"]["bulk-filter-inserter"].extension_speed = 0.08
-- data.raw["inserter"]["bulk-filter-inserter"].energy_per_rotation = "20.5kJ"
-- data.raw["inserter"]["bulk-filter-inserter"].energy_per_movement = "3.125kJ"
-- data.raw["inserter"]["bulk-filter-inserter"].energy_source.drain = "4kW"
-- data.raw["inserter"]["bulk-filter-inserter"].minable.mining_time = 0.8
-- data.raw["inserter"]["bulk-filter-inserter"].next_upgrade = "express-bulk-filter-inserter"
-- data.raw["inserter"]["bulk-filter-inserter"].resistances = {
--   { type = "impact", decrease = 100, percent = 90 }
-- }

data.raw.item["bob-express-bulk-inserter"].subgroup = "inserter"
data.raw.item["bob-express-bulk-inserter"].order = "nullius-g"
data.raw.item["bob-express-bulk-inserter"].localised_name = {"entity-name.nullius-inserter-4"}
data.raw.item["bob-express-bulk-inserter"].stack_size = 100
data.raw["inserter"]["bob-express-bulk-inserter"].order = "nullius-g"
data.raw["inserter"]["bob-express-bulk-inserter"].localised_name = {"entity-name.nullius-inserter-4"}
data.raw["inserter"]["bob-express-bulk-inserter"].rotation_speed = 0.0666666
data.raw["inserter"]["bob-express-bulk-inserter"].extension_speed = 0.16
data.raw["inserter"]["bob-express-bulk-inserter"].energy_per_rotation = "21kJ"
data.raw["inserter"]["bob-express-bulk-inserter"].energy_per_movement = "3.125kJ"
data.raw["inserter"]["bob-express-bulk-inserter"].energy_source.drain = "6kW"
data.raw["inserter"]["bob-express-bulk-inserter"].minable.mining_time = 1
data.raw["inserter"]["bob-express-bulk-inserter"].next_upgrade = nil
data.raw["inserter"]["bob-express-bulk-inserter"].resistances = {
  { type = "impact", decrease = 100, percent = 90 }
}
data.raw["inserter"]["bob-express-bulk-inserter"].localised_description = {"entity-description.inserterToggleInfo"}

-- data.raw.item["express-bulk-filter-inserter"].subgroup = "inserter"
-- data.raw.item["express-bulk-filter-inserter"].order = "nullius-h"
-- data.raw.item["express-bulk-filter-inserter"].localised_name = {"entity-name.nullius-filter-inserter-4"}
-- data.raw.item["express-bulk-filter-inserter"].stack_size = 100
-- data.raw["inserter"]["express-bulk-filter-inserter"].order = "nullius-h"
-- data.raw["inserter"]["express-bulk-filter-inserter"].localised_name = {"entity-name.nullius-filter-inserter-4"}
-- data.raw["inserter"]["express-bulk-filter-inserter"].rotation_speed = 0.0666666
-- data.raw["inserter"]["express-bulk-filter-inserter"].extension_speed = 0.16
-- data.raw["inserter"]["express-bulk-filter-inserter"].energy_per_rotation = "21kJ"
-- data.raw["inserter"]["express-bulk-filter-inserter"].energy_per_movement = "3.125kJ"
-- data.raw["inserter"]["express-bulk-filter-inserter"].energy_source.drain = "6kW"
-- data.raw["inserter"]["express-bulk-filter-inserter"].minable.mining_time = 1
-- data.raw["inserter"]["express-bulk-filter-inserter"].next_upgrade = nil
-- data.raw["inserter"]["express-bulk-filter-inserter"].resistances = {
--   { type = "impact", decrease = 100, percent = 90 }
-- }

data.raw["rail-planner"]["rail"].subgroup = "railway"
data.raw["rail-planner"]["rail"].order = "nullius-d"
data.raw["train-stop"]["train-stop"].subgroup = "railway"
data.raw["train-stop"]["train-stop"].order = "nullius-eb"
data.raw["train-stop"]["train-stop"].minable.mining_time = 1.2
data.raw.item["train-stop"].subgroup = "railway"
data.raw.item["train-stop"].order = "nullius-eb"
data.raw["rail-signal"]["rail-signal"].subgroup = "railway"
data.raw["rail-signal"]["rail-signal"].order = "nullius-f"
data.raw["rail-signal"]["rail-signal"].minable.mining_time = 0.8
data.raw.item["rail-signal"].subgroup = "railway"
data.raw.item["rail-signal"].order = "nullius-f"
data.raw["rail-chain-signal"]["rail-chain-signal"].subgroup = "railway"
data.raw["rail-chain-signal"]["rail-chain-signal"].order = "nullius-g"
data.raw["rail-chain-signal"]["rail-chain-signal"].minable.mining_time = 0.8
data.raw.item["rail-chain-signal"].subgroup = "railway"
data.raw.item["rail-chain-signal"].order = "nullius-g"
data.raw["straight-rail"]["straight-rail"].minable.mining_time = 0.5
data.raw["legacy-curved-rail"]["legacy-curved-rail"].minable.mining_time = 0.6
data.raw["curved-rail-a"]["curved-rail-a"].minable.mining_time = 0.6
data.raw["curved-rail-b"]["curved-rail-b"].minable.mining_time = 0.6

data.raw.item["storage-tank"].subgroup = "tanks"
data.raw.item["storage-tank"].order = "nullius-bcb"
data.raw["storage-tank"]["storage-tank"].localised_name = {"entity-name.nullius-medium-tank-1"}
data.raw["storage-tank"]["storage-tank"].localised_description = {"entity-description.nullius-medium-tank-1"}
data.raw["storage-tank"]["storage-tank"].max_health = 400
data.raw["storage-tank"]["storage-tank"].next_upgrade = "nullius-medium-tank-2"
data.raw["storage-tank"]["storage-tank"].fast_replaceable_group = "medium-tank"
data.raw["storage-tank"]["storage-tank"].minable.mining_time = 0.8
data.raw["storage-tank"]["storage-tank"].resistances = {
  { type = "impact", decrease = 100, percent = 90 },
  { type = "fire", percent = 75 }
}

data.raw.item["radar"].subgroup = "laboratory"
data.raw.item["radar"].order = "nullius-db"
data.raw["radar"]["radar"].localised_name = {"entity-name.nullius-sensor-node-1"}
data.raw["radar"]["radar"].localised_description = {"entity-description.nullius-sensor-node-1"}
data.raw["radar"]["radar"].max_health = 200
data.raw["radar"]["radar"].resistances = {{ type = "impact", decrease = 50, percent = 80 }}
data.raw["radar"]["radar"].minable.mining_time = 0.6


data.raw["repair-tool"]["repair-pack"].icon = "__base__/graphics/icons/repair-pack.png"
data.raw["repair-tool"]["repair-pack"].icon_size = 64
data.raw["repair-tool"]["repair-pack"].subgroup = "tool-upgrades"
data.raw["repair-tool"]["repair-pack"].order = "nullius-bb"
data.raw.recipe["repair-pack"].order = "x"

data.raw["character"]["character"].localised_name = {"", {"item-name.nullius-android"}, " ", tostring(1)}
data.raw["character"]["character"].animations[2].armors =
    {"nullius-chassis-2", "nullius-chassis-3"}
data.raw["character"]["character"].animations[3].armors =
    {"nullius-chassis-4", "nullius-chassis-5", "nullius-chassis-6"}
data.raw["character-corpse"]["character-corpse"].time_to_live = 8*60*60*60

data.raw["item-group"]["intermediate-products"].localised_name = {"item-group-name.nullius-intermediates"}
data.raw["item-group"]["intermediate-products"].order = "g"
data.raw["item-group"]["intermediate-products"].icon = "__base__/graphics/technology/plastics.png"
data.raw["item-group"]["intermediate-products"].icon_size = 256
data.raw["item-group"]["intermediate-products"].order = "g"
data.raw["item-group"]["signals"].order = "n"
data.raw["item-group"]["logistics"].order = "b"
data.raw["item-group"]["production"].order = "c"
data.raw["item-group"]["fluids"].order = "i"

data.raw["item-subgroup"]["tool"].group = "equipment"
data.raw["item-subgroup"]["tool"].order = "b"
data.raw["item-subgroup"]["armor"].group = "equipment"
data.raw["item-subgroup"]["armor"].order = "c"
data.raw["item-subgroup"]["equipment"].group = "equipment"
data.raw["item-subgroup"]["equipment"].order = "e"
data.raw["item-subgroup"]["belt"].order = "cb"
data.raw["item-subgroup"]["terrain"].group = "intermediate-products"
data.raw["item-subgroup"]["terrain"].order = "nc"
data.raw["item-subgroup"]["smelting-machine"].order = "f"
data.raw["item-subgroup"]["raw-material"].order = "b"
data.raw["item-subgroup"]["circuit-network"].group = "logistics"
data.raw["item-subgroup"]["circuit-network"].order = "e"
data.raw["item-subgroup"]["logistic-network"].order = "ae"

data.raw["spider-leg"]["spidertron-leg-1"].initial_movement_speed = 0.16
data.raw["spider-leg"]["spidertron-leg-1"].movement_acceleration = 0.08
data.raw["spider-leg"]["spidertron-leg-2"].initial_movement_speed = 0.16
data.raw["spider-leg"]["spidertron-leg-2"].movement_acceleration = 0.08
data.raw["spider-leg"]["spidertron-leg-3"].initial_movement_speed = 0.16
data.raw["spider-leg"]["spidertron-leg-3"].movement_acceleration = 0.08
data.raw["spider-leg"]["spidertron-leg-4"].initial_movement_speed = 0.16
data.raw["spider-leg"]["spidertron-leg-4"].movement_acceleration = 0.08
data.raw["spider-leg"]["spidertron-leg-5"].initial_movement_speed = 0.16
data.raw["spider-leg"]["spidertron-leg-5"].movement_acceleration = 0.08
data.raw["spider-leg"]["spidertron-leg-6"].initial_movement_speed = 0.16
data.raw["spider-leg"]["spidertron-leg-6"].movement_acceleration = 0.08
data.raw["spider-leg"]["spidertron-leg-7"].initial_movement_speed = 0.16
data.raw["spider-leg"]["spidertron-leg-7"].movement_acceleration = 0.08
data.raw["spider-leg"]["spidertron-leg-8"].initial_movement_speed = 0.16
data.raw["spider-leg"]["spidertron-leg-8"].movement_acceleration = 0.08

for i=1,9 do
  local treedata = data.raw.tree["tree-0"..i]
  treedata.minable = {
    mining_particle = "wooden-particle",
    mining_time = 1,
    result = "nullius-tree",
    count = 1,
    mining_trigger = treedata.minable.mining_trigger
  }
end
data.raw.fish["fish"].minable = {
  mining_time = 0.4,
  result = "nullius-fish",
  count = 1
}

data.raw.corpse["small-biter-corpse"].selectable_in_game = true
data.raw.corpse["small-biter-corpse"].minable = {
  mining_time = 0.3,
  result = "nullius-arthropod",
  count = 1
}
data.raw.corpse["medium-biter-corpse"].selectable_in_game = true
data.raw.corpse["medium-biter-corpse"].minable = {
  mining_time = 0.3,
  result = "nullius-arthropod",
  count = 1
}
data.raw.corpse["big-biter-corpse"].selectable_in_game = true
data.raw.corpse["big-biter-corpse"].minable = {
  mining_time = 0.3,
  result = "nullius-arthropod",
  count = 2
}
data.raw.corpse["behemoth-biter-corpse"].selectable_in_game = true
data.raw.corpse["behemoth-biter-corpse"].minable = {
  mining_time = 0.3,
  result = "nullius-arthropod",
  count = 3
}

data.raw.corpse["small-spitter-corpse"].selectable_in_game = true
data.raw.corpse["small-spitter-corpse"].minable = {
  mining_time = 0.3,
  result = "nullius-arthropod",
  count = 1
}
data.raw.corpse["medium-spitter-corpse"].selectable_in_game = true
data.raw.corpse["medium-spitter-corpse"].minable = {
  mining_time = 0.3,
  result = "nullius-arthropod",
  count = 1
}
data.raw.corpse["big-spitter-corpse"].selectable_in_game = true
data.raw.corpse["big-spitter-corpse"].minable = {
  mining_time = 0.3,
  result = "nullius-arthropod",
  count = 2
}
data.raw.corpse["behemoth-spitter-corpse"].selectable_in_game = true
data.raw.corpse["behemoth-spitter-corpse"].minable = {
  mining_time = 0.3,
  result = "nullius-arthropod",
  count = 2
}

data.raw.corpse["small-worm-corpse"].selectable_in_game = true
data.raw.corpse["small-worm-corpse"].minable = {
  mining_time = 0.3,
  result = "nullius-worm",
  count = 1
}
data.raw.corpse["medium-worm-corpse"].selectable_in_game = true
data.raw.corpse["medium-worm-corpse"].minable = {
  mining_time = 0.3,
  result = "nullius-worm",
  count = 2
}
data.raw.corpse["big-worm-corpse"].selectable_in_game = true
data.raw.corpse["big-worm-corpse"].minable = {
  mining_time = 0.3,
  result = "nullius-worm",
  count = 3
}
data.raw.corpse["behemoth-worm-corpse"].selectable_in_game = true
data.raw.corpse["behemoth-worm-corpse"].minable = {
  mining_time = 0.3,
  result = "nullius-worm",
  count = 4
}


data.raw["electric-pole"]["big-electric-pole"].pictures.layers = {
  {
    filename = ENTITYPATH .. "poles/large-pole-1-entity.png",
    priority = "extra-high",
    width = 148,
    height = 312,
    direction_count = 4,
    shift = util.by_pixel(0, -51),
    scale = 0.5
  },
  data.raw["electric-pole"]["big-electric-pole"].pictures.layers[2]
}
data.raw["electric-pole"]["big-electric-pole"].resistances =
    {{ type = "impact", decrease = 100, percent = 90 }}
data.raw["electric-pole"]["big-electric-pole"].minable.mining_time = 1.2

data.raw["electric-pole"]["small-electric-pole"].pictures.layers = {
  {
    filename = ENTITYPATH .. "poles/pole1.png",
    priority = "extra-high",
    width = 72,
    height = 220,
    direction_count = 4,
    shift = util.by_pixel(1.5, -42.5),
    scale = 0.5
  },
  data.raw["electric-pole"]["small-electric-pole"].pictures.layers[2]
}
data.raw["electric-pole"]["small-electric-pole"].resistances =
    {{ type = "impact", decrease = 50, percent = 80 }}
data.raw["electric-pole"]["small-electric-pole"].minable.mining_time = 0.6
	
data.raw["electric-pole"]["medium-electric-pole"].pictures.layers = {
  {
    filename = ENTITYPATH .. "poles/pole2.png",
    priority = "extra-high",
    width = 72,
    height = 220,
    direction_count = 4,
    shift = util.by_pixel(1.5, -42.5),
    scale = 0.5
  },
  data.raw["electric-pole"]["small-electric-pole"].pictures.layers[2]
}
data.raw["electric-pole"]["medium-electric-pole"].resistances =
    {{ type = "impact", decrease = 50, percent = 90 }}
data.raw["electric-pole"]["medium-electric-pole"].minable.mining_time = 0.9
data.raw["electric-pole"]["medium-electric-pole"].corpse =
    data.raw["electric-pole"]["small-electric-pole"].corpse
data.raw["electric-pole"]["medium-electric-pole"].dying_explosion =
    data.raw["electric-pole"]["small-electric-pole"].dying_explosion
data.raw["electric-pole"]["medium-electric-pole"].selection_box =
    data.raw["electric-pole"]["small-electric-pole"].selection_box
data.raw["electric-pole"]["medium-electric-pole"].drawing_box =
    data.raw["electric-pole"]["small-electric-pole"].drawing_box
data.raw["electric-pole"]["medium-electric-pole"].connection_points =
    data.raw["electric-pole"]["small-electric-pole"].connection_points
data.raw["electric-pole"]["medium-electric-pole"].water_reflection =
    data.raw["electric-pole"]["small-electric-pole"].water_reflection
	
data.raw["electric-pole"]["substation"].pictures.layers = {
  {
    filename = ENTITYPATH .. "poles/substation-1-entity.png",
    priority = "high",
    width = 138,
    height = 270,
    direction_count = 4,
    shift = util.by_pixel(0, 1-32),
    scale = 0.5
  },
  data.raw["electric-pole"]["substation"].pictures.layers[2]
}
data.raw["electric-pole"]["substation"].resistances =
    {{ type = "impact", decrease = 100, percent = 90 }}
data.raw["electric-pole"]["substation"].minable.mining_time = 1.6


data.raw.item["wooden-chest"].localised_name =
    {"entity-name.nullius-small-chest-1"}
data.raw["container"]["wooden-chest"].localised_name =
    {"entity-name.nullius-small-chest-1"}
data.raw["container"]["wooden-chest"].max_health = 200
data.raw["container"]["wooden-chest"].resistances = {
    { type = "impact", decrease = 100, percent = 90 },
    { type = "fire", percent = 75 }
}
data.raw["container"]["wooden-chest"].minable.mining_time = 0.4

data.raw.item["iron-chest"].localised_name =
    {"entity-name.nullius-small-chest-2"}
data.raw["container"]["iron-chest"].localised_name =
    {"entity-name.nullius-small-chest-2"}
data.raw["container"]["iron-chest"].max_health = 350
data.raw["container"]["iron-chest"].resistances =
    data.raw["container"]["wooden-chest"].resistances
data.raw["container"]["iron-chest"].minable.mining_time = 0.6

data.raw.item["steel-chest"].localised_name =
    {"entity-name.nullius-small-chest-3"}
data.raw["container"]["steel-chest"].localised_name =
    {"entity-name.nullius-small-chest-3"}
data.raw["container"]["steel-chest"].max_health = 500
data.raw["container"]["steel-chest"].resistances =
    data.raw["container"]["iron-chest"].resistances
data.raw["container"]["steel-chest"].minable.mining_time = 0.8

data.raw.item["storage-chest"].localised_name =
    {"entity-name.nullius-small-storage-chest-2"}
data.raw.item["storage-chest"].localised_description =
    {"entity-description.nullius-storage-chest"}
data.raw["logistic-container"]["storage-chest"].localised_name =
    {"entity-name.nullius-small-storage-chest-2"}
data.raw["logistic-container"]["storage-chest"].localised_description =
    {"entity-description.nullius-storage-chest"}
data.raw["logistic-container"]["storage-chest"].max_health = 400
data.raw["logistic-container"]["storage-chest"].resistances =
    data.raw["container"]["wooden-chest"].resistances
data.raw["logistic-container"]["storage-chest"].minable.mining_time = 1

data.raw.item["passive-provider-chest"].localised_name =
    {"entity-name.nullius-small-supply-chest-2"}
data.raw.item["passive-provider-chest"].localised_description =
    {"entity-description.nullius-supply-chest"}
data.raw["logistic-container"]["passive-provider-chest"].localised_name =
    {"entity-name.nullius-small-supply-chest-2"}
data.raw["logistic-container"]["passive-provider-chest"].localised_description =
    {"entity-description.nullius-supply-chest"}
data.raw["logistic-container"]["passive-provider-chest"].max_health = 400
data.raw["logistic-container"]["passive-provider-chest"].resistances =
    data.raw["container"]["wooden-chest"].resistances
data.raw["logistic-container"]["passive-provider-chest"].minable.mining_time = 1

data.raw.item["requester-chest"].localised_name =
    {"entity-name.nullius-small-demand-chest-2"}
data.raw.item["requester-chest"].localised_description =
    {"entity-description.nullius-request-slots",
	    {"entity-description.nullius-demand-chest"}, tostring(10)}
data.raw["logistic-container"]["requester-chest"].localised_name =
    {"entity-name.nullius-small-demand-chest-2"}
data.raw["logistic-container"]["requester-chest"].localised_description =
    data.raw.item["requester-chest"].localised_description
data.raw["logistic-container"]["requester-chest"].max_health = 400
data.raw["logistic-container"]["requester-chest"].resistances =
    data.raw["container"]["wooden-chest"].resistances
data.raw["logistic-container"]["requester-chest"].minable.mining_time = 1

data.raw.item["buffer-chest"].localised_name =
    {"entity-name.nullius-small-buffer-chest-2"}
data.raw.item["buffer-chest"].localised_description =
    {"entity-description.nullius-request-slots",
	    {"entity-description.nullius-buffer-chest"}, tostring(6)}
data.raw["logistic-container"]["buffer-chest"].localised_name =
    {"entity-name.nullius-small-buffer-chest-2"}
data.raw["logistic-container"]["buffer-chest"].localised_description =
    data.raw.item["buffer-chest"].localised_description
data.raw["logistic-container"]["buffer-chest"].max_health = 400
data.raw["logistic-container"]["buffer-chest"].resistances =
    data.raw["container"]["wooden-chest"].resistances
data.raw["logistic-container"]["buffer-chest"].minable.mining_time = 1

data.raw.item["active-provider-chest"].localised_name =
    {"entity-name.nullius-small-dispatch-chest-2"}
data.raw.item["active-provider-chest"].localised_description =
    {"entity-description.nullius-dispatch-chest"}
data.raw["logistic-container"]["active-provider-chest"].localised_name =
    {"entity-name.nullius-small-dispatch-chest-2"}
data.raw["logistic-container"]["active-provider-chest"].localised_description =
    {"entity-description.nullius-dispatch-chest"}
data.raw["logistic-container"]["active-provider-chest"].max_health = 400
data.raw["logistic-container"]["active-provider-chest"].resistances =
    data.raw["container"]["wooden-chest"].resistances
data.raw["logistic-container"]["active-provider-chest"].minable.mining_time = 1


data.raw.item["pipe"].localised_name = {"entity-name.nullius-pipe-1"}
data.raw.item["pipe"].localised_description =
    {"entity-description.nullius-pipe"}
data.raw["pipe"]["pipe"].localised_name = {"entity-name.nullius-pipe-1"}
data.raw["pipe"]["pipe"].localised_description =
    data.raw.item["pipe"].localised_description
data.raw["pipe"]["pipe"].minable.mining_time = 0.2
data.raw.item["pipe-to-ground"].localised_name =
    {"entity-name.nullius-underground-pipe-1"}
data.raw.item["pipe-to-ground"].localised_description =
    {"entity-description.nullius-underground-pipe"}
data.raw["pipe-to-ground"]["pipe-to-ground"].localised_name =
    {"entity-name.nullius-underground-pipe-1"}
data.raw["pipe-to-ground"]["pipe-to-ground"].localised_description =
    data.raw.item["pipe-to-ground"].localised_description

data.raw["pipe"]["pipe"].resistances = {
  { type = "impact", decrease = 100, percent = 90 },
  { type = "fire", decrease = 20, percent = 50 }
}
data.raw["pipe"]["pipe"].pictures = pipepics("__boblogistics__/graphics/entity/pipe/iron/")


data.raw["pipe-to-ground"]["pipe-to-ground"].resistances =
    data.raw["pipe"]["pipe"].resistances
data.raw["pipe-to-ground"]["pipe-to-ground"].collision_box =
    data.raw["pipe-to-ground"]["nullius-underground-pipe-2"].collision_box
data.raw["pipe-to-ground"]["pipe-to-ground"].minable.mining_time = 0.4
data.raw.item["pipe"].subgroup = "pipes"
data.raw.item["pipe"].order = "nullius-b"
data.raw.item["pipe-to-ground"].subgroup = "pipes"
data.raw.item["pipe-to-ground"].order = "nullius-c"
if (data.raw.item["pipe"].icons ~= nil) then
label_icon("pipe", 1, "grey")
label_icon("pipe-to-ground", 1, "grey")
end

data.raw["pump"]["pump"].localised_name = {"entity-name.nullius-pump-3"}
data.raw["pump"]["pump"].localised_description = {"",
          {"entity-description.nullius-pump-3"},
          {"entity-description.nullius-configurable-pump"},
          " ",
          {"configurable-valves.more-in-factoriopedia"},"\n",
          {"entity-description.nullius-togglable-pump"}
        }
data.raw["pump"]["pump"].factoriopedia_description = {"",
          {"entity-description.nullius-pump-3"},
          {"entity-description.nullius-configurable-pump"},
          {"configurable-valves.valve-examples"},
          {"configurable-valves.valve-shortcuts"},
        }
data.raw.item["pump"].subgroup = "pumping"
data.raw.item["pump"].order = "nullius-bd"
data.raw["pump"]["pump"].energy_source.drain = nil
data.raw["pump"]["pump"].energy_source.usage_priority = "primary-input"
data.raw["pump"]["pump"].energy_usage = "30kW"
data.raw["pump"]["pump"].max_health = 250
data.raw["pump"]["pump"].minable.mining_time = 1
data.raw["pump"]["pump"].resistances = {
  { type = "impact", decrease = 100, percent = 90 },
  { type = "fire", decrease = 20, percent = 50 }
}
--data.raw["pump"]["pump"].flow_scaling = false

data.raw["mining-drill"]["burner-mining-drill"].resource_categories = {"unused-resource"}
data.raw["mining-drill"]["electric-mining-drill"].resource_categories = {"unused-resource"}
data.raw["mining-drill"]["pumpjack"].resource_categories = {"unused-resource"}


for _,shortcut in pairs(data.raw.shortcut) do
  if ((shortcut.technology_to_unlock == "construction-robotics") or
      (shortcut.technology_to_unlock == "personal-roboport-equipment")) then
    shortcut.technology_to_unlock = nil
  elseif (shortcut.technology_to_unlock == "exoskeleton-equipment") then
    shortcut.technology_to_unlock = "nullius-cybernetics-4"
  end
end


local landfill_tiles = {
  ["mineral-grey-dirt-1"] = "nullius-land-fill-gravel",
  ["mineral-grey-dirt-2"] = "nullius-land-fill-gravel",
  ["mineral-grey-dirt-3"] = "nullius-land-fill-gravel",
  ["mineral-grey-dirt-4"] = "nullius-land-fill-gravel",
  ["mineral-grey-dirt-5"] = "nullius-land-fill-gravel",
  ["mineral-grey-dirt-6"] = "nullius-land-fill-gravel",
  ["mineral-grey-sand-1"] = "nullius-land-fill-gravel",
  ["mineral-grey-sand-2"] = "nullius-land-fill-gravel",
  ["mineral-grey-sand-3"] = "nullius-land-fill-gravel",

  ["mineral-cream-sand-1"] = "nullius-land-fill-sand",
  ["mineral-cream-sand-2"] = "nullius-land-fill-sand",
  ["mineral-cream-sand-3"] = "nullius-land-fill-sand",
  ["mineral-cream-dirt-1"] = "nullius-land-fill-sand",
  ["mineral-cream-dirt-2"] = "nullius-land-fill-sand",
  ["mineral-tan-sand-1"] = "nullius-land-fill-sand",
  ["mineral-tan-sand-2"] = "nullius-land-fill-sand",
  ["mineral-tan-sand-3"] = "nullius-land-fill-sand",
  ["mineral-beige-sand-1"] = "nullius-land-fill-sand",

  ["mineral-brown-dirt-1"] = "nullius-land-fill-bauxite",
  ["mineral-brown-dirt-2"] = "nullius-land-fill-bauxite",
  ["mineral-brown-dirt-3"] = "nullius-land-fill-bauxite",
  ["mineral-brown-dirt-4"] = "nullius-land-fill-bauxite",
  ["mineral-brown-dirt-5"] = "nullius-land-fill-bauxite",
  ["mineral-brown-dirt-6"] = "nullius-land-fill-bauxite",
  ["mineral-tan-dirt-2"] = "nullius-land-fill-bauxite",
  ["mineral-tan-dirt-3"] = "nullius-land-fill-bauxite",
  ["mineral-tan-dirt-4"] = "nullius-land-fill-bauxite",
  ["mineral-tan-dirt-6"] = "nullius-land-fill-bauxite",

  ["mineral-red-dirt-1"] = "nullius-land-fill-iron",
  ["mineral-red-dirt-2"] = "nullius-land-fill-iron",
  ["mineral-red-dirt-3"] = "nullius-land-fill-iron",
  ["mineral-red-dirt-4"] = "nullius-land-fill-iron",
  ["mineral-red-dirt-5"] = "nullius-land-fill-iron",
  ["mineral-red-dirt-6"] = "nullius-land-fill-iron",
  ["mineral-red-sand-2"] = "nullius-land-fill-iron",
  ["mineral-brown-sand-2"] = "nullius-land-fill-iron",

  ["mineral-beige-dirt-1"] = "nullius-land-fill-limestone",
  ["mineral-beige-dirt-2"] = "nullius-land-fill-limestone",
  ["mineral-beige-dirt-3"] = "nullius-land-fill-limestone",
  ["mineral-beige-dirt-4"] = "nullius-land-fill-limestone",
  ["mineral-beige-dirt-5"] = "nullius-land-fill-limestone",
  ["mineral-beige-dirt-6"] = "nullius-land-fill-limestone",
  ["mineral-white-sand-3"] = "nullius-land-fill-limestone"
}

for tilename,landfill in pairs(landfill_tiles) do
  local tile = data.raw.tile[tilename]
  if ((tile ~= nil) and (tile.placeable_by == nil)) then
    tile.placeable_by = {item=landfill, count=1}
	  tile.can_be_part_of_blueprint = true
	  tile.minable = {
	    mining_time = 1,
	    result = landfill
	  }
	  tile.is_foundation = true
  end
end
data.raw.tile["landfill"].minable = {
  mining_time = 1,
  result = "nullius-land-fill-gravel"
}
data.raw.tile["landfill"].is_foundation = true

if settings.startup["nullius-hide-void-alt"].value then
  local void_buildings = {"nullius-chimney-1","nullius-chimney-2","nullius-chimney-3","nullius-outfall-1","nullius-outfall-2","nullius-outfall-3"}
  for _, building in pairs(void_buildings) do
    table.insert(data.raw.furnace[building].flags, "hide-alt-info")
  end
end

data.raw["utility-constants"]["default"].max_fluid_flow = 500

data.raw["artillery-flare"]["artillery-flare"].shot_category = "artillery-shell" --regular remote will only fire artillery shells
data.raw["custom-input"]["give-artillery-targeting-remote"].enabled = false
data.raw["custom-input"]["give-discharge-defense-remote"].enabled = false
data.raw["shortcut"]["give-artillery-targeting-remote"] = nil --.hidden = true
data.raw["shortcut"]["give-discharge-defense-remote"] = nil --.hidden = true

local scTechs = {
  ["construction-robotics"] = "nil", --"nullius-construction-robot-1" -- we have bots at the start
  ["personal-roboport-equipment"] = "nil",
  ["electronics"] = "nil",
  ["circuit-network"] = "nil",
  ["exoskeleton-equipment"] = "nullius-cybernetics-4",
  ["spidertron"] = "nullius-personal-transportation-4"
}
for _, sc in pairs(data.raw.shortcut) do
  if sc.technology_to_unlock ~= nil and scTechs[sc.technology_to_unlock] ~= nil then
    if scTechs[sc.technology_to_unlock] == "nil" then
      sc.technology_to_unlock = nil
    else
      sc.technology_to_unlock = scTechs[sc.technology_to_unlock]
    end
  end
end

data.raw["cargo-landing-pad"]["cargo-landing-pad"].localised_name = {"item-name.nullius-landing-pad"}
--data.raw["cargo-landing-pad"]["cargo-landing-pad"].hidden_in_factoriopedia = true
data.raw.item["cargo-landing-pad"].subgroup = "space"
data.raw.item["cargo-landing-pad"].order = "nullius-c"

data.raw["inserter"]["inserter"].filter_count = 0

data.raw["offshore-pump"]["offshore-pump"] = nil
data.raw["item"]["offshore-pump"].place_result = nil

-- Parameter recipes and items:
for n = 0, 9 do
  local pr = data.raw.recipe["parameter-" .. n]
  pr.order = "nullius-" .. pr.order
  local pi = data.raw.item["parameter-" .. n]
  pi.order = "nullius-" .. pi.order
end

data.raw["pipe"]["pipe"].fluid_box.max_pipeline_extent = pipe_extents[1]
data.raw["pipe-to-ground"]["pipe-to-ground"].fluid_box.max_pipeline_extent = pipe_extents[1]

data.raw["pipe"]["nullius-pipe-2"].fluid_box.max_pipeline_extent = pipe_extents[2]
data.raw["pipe-to-ground"]["nullius-underground-pipe-2"].fluid_box.max_pipeline_extent = pipe_extents[2]

data.raw["pipe"]["nullius-pipe-3"].fluid_box.max_pipeline_extent = pipe_extents[3]
data.raw["pipe-to-ground"]["nullius-underground-pipe-3"].fluid_box.max_pipeline_extent = pipe_extents[3]

data.raw["pipe"]["nullius-pipe-4"].fluid_box.max_pipeline_extent = pipe_extents[4]
data.raw["pipe-to-ground"]["nullius-underground-pipe-4"].fluid_box.max_pipeline_extent = pipe_extents[4]

data.raw["utility-constants"]["default"].default_pipeline_extent = pipe_extents[4]

data.raw["storage-tank"]["storage-tank"].fluid_box.max_pipeline_extent = pipe_extents[1] / 2


local pump_energy_multiplier = settings.startup["nullius-pump-energy-multiplier"].value
local pump_energy_usage = {7.5*pump_energy_multiplier, 20*pump_energy_multiplier, 30*pump_energy_multiplier}

data.raw["pump"]["nullius-pump-1"].energy_usage = tostring(pump_energy_usage[1]) .. "kW"
data.raw["pump"]["nullius-pump-2"].energy_usage = tostring(pump_energy_usage[2]) .. "kW"
data.raw["pump"]["pump"].energy_usage = tostring(pump_energy_usage[3]) .. "kW"
data.raw["pump"]["nullius-togglable-pump-1"].energy_usage = tostring(pump_energy_usage[1]) .. "kW"
data.raw["pump"]["nullius-togglable-pump-2"].energy_usage = tostring(pump_energy_usage[2]) .. "kW"
data.raw["pump"]["nullius-togglable-pump-3"].energy_usage = tostring(pump_energy_usage[3]) .. "kW"

local small_pump_energy_usage = {10*pump_energy_multiplier, 15*pump_energy_multiplier}
data.raw["pump"]["nullius-small-pump-1"].energy_usage = tostring(small_pump_energy_usage[1]) .. "kW"
data.raw["pump"]["nullius-small-pump-2"].energy_usage = tostring(small_pump_energy_usage[2]) .. "kW"
data.raw["pump"]["nullius-togglable-small-pump-1"].energy_usage = tostring(small_pump_energy_usage[1]) .. "kW"
data.raw["pump"]["nullius-togglable-small-pump-2"].energy_usage = tostring(small_pump_energy_usage[2]) .. "kW"

data.raw.technology["construction-robotics"].unit.ingredients = {} -- temporary (?) fix to prevent crash in loading screen For factorissimo (todo: check that it still works correctly)