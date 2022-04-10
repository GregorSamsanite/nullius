local ICONPATH = "__nullius__/graphics/icons/"
local ENTICONPATH = "__nullius__/graphics/icons/entity/"
local ENTITYPATH = "__nullius__/graphics/entity/"

for _, type in pairs({"unit-spawner", "unit", "turret"}) do
  for _, entity in pairs(data.raw[type]) do
    if ((entity.subgroup == "enemies") and entity.autoplace and (entity.autoplace.force == "enemy")) then
      entity.autoplace.richness_multiplier = null
      entity.autoplace.richness_expression = {expression_id="literal-number:1", literal_value=0, type = "literal-number"}
      entity.autoplace.probability_expression = {expression_id="literal-number:1", literal_value=0, type = "literal-number"}
    end
  end
end

data.raw.item["iron-ore"].icon = "__base__/graphics/icons/iron-ore.png"
data.raw.item["iron-ore"].icon_size = 64
data.raw.item["iron-ore"].icon_mipmaps = 4
data.raw.item["iron-ore"].subgroup = "iron-ingot"
data.raw.item["iron-ore"].order = "nullius-b"
data.raw.item["iron-ore"].stack_size = 50
data.raw.item["copper-ore"].icon = "__base__/graphics/icons/copper-ore.png"
data.raw.item["copper-ore"].icon_size = 64
data.raw.item["copper-ore"].icon_mipmaps = 4
data.raw.item["copper-ore"].subgroup = "copper"
data.raw.item["copper-ore"].order = "nullius-b"
data.raw.item["copper-ore"].stack_size = 50
data.raw.item["uranium-ore"].subgroup = "uranium"
data.raw.item["uranium-ore"].order = "nullius-b"
data.raw.item["uranium-ore"].stack_size = 50
data.raw.item["stone"].subgroup = "masonry-material"
data.raw.item["stone"].order = "nullius-k"
data.raw.item["stone"].stack_size = 50

data.raw.item["red-wire"].order = "nullius-c"
data.raw.item["green-wire"].order = "nullius-d"
data.raw.item["power-switch"].order = "nullius-h"

data.raw["constant-combinator"]["constant-combinator"].localised_name = {"entity-name.nullius-memory-circuit"}
data.raw.item["constant-combinator"].localised_name = {"entity-name.nullius-memory-circuit"}
data.raw.item["constant-combinator"].order = "nullius-g"
data.raw["arithmetic-combinator"]["arithmetic-combinator"].localised_name = {"entity-name.nullius-arithmetic-circuit"}
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
data.raw.item["decider-combinator"].localised_name = {"entity-name.nullius-logic-circuit"}
data.raw.item["decider-combinator"].order = "nullius-e"
data.raw["decider-combinator"]["decider-combinator"].energy_source =
    data.raw["arithmetic-combinator"]["arithmetic-combinator"].energy_source
data.raw["decider-combinator"]["decider-combinator"].active_energy_usage = "100W"
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

data.raw["lamp"]["small-lamp"].localised_name = {"entity-name.nullius-lamp-1"}
data.raw.item["small-lamp"].localised_name = {"entity-name.nullius-lamp-1"}
data.raw.item["small-lamp"].subgroup = "railway"
data.raw.item["small-lamp"].order = "nullius-bb"
data.raw.item["small-lamp"].place_result = "nullius-lamp-1"
data.raw["lamp"]["small-lamp"].placeable_by = {item = "small-lamp", count = 1}
data.raw.item["small-lamp"].icons =
  {{icon = ENTICONPATH .. "lamp1.png", icon_size = 64}}
label_icon("small-lamp", 1, "yellow")
data.raw["lamp"]["small-lamp"].icons = data.raw.item["small-lamp"].icons

data.raw.item["stone-wall"].stack_size = 200
data.raw.item["stone-wall"].subgroup = "masonry"
data.raw.item["stone-wall"].order = "nullius-e"
data.raw["wall"]["stone-wall"].localised_description = {"entity-description.nullius-wall"}
data.raw.item["gate"].stack_size = 100
data.raw.item["gate"].subgroup = "masonry"
data.raw.item["gate"].order = "nullius-f"
data.raw["gate"]["gate"].localised_description = {"entity-description.nullius-gate"}

data.raw.item["empty-barrel"].localised_description = {"item-description.nullius-barrel"}
data.raw.item["empty-barrel"].subgroup = "canisters"
data.raw.item["empty-barrel"].order = "nullius-b"
data.raw.item["empty-barrel"].stack_size = 20

data.raw["capsule"]["cliff-explosives"].localised_name = {"item-name.nullius-explosive"}
data.raw["capsule"]["cliff-explosives"].localised_description = {"item-description.nullius-explosive"}
data.raw["capsule"]["cliff-explosives"].icon = "__base__/graphics/icons/explosives.png"
data.raw["capsule"]["cliff-explosives"].subgroup = "demolitions"
data.raw["capsule"]["cliff-explosives"].order = "nullius-b"
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
data.raw.tile["clay-bricks"].minable.result = "nullius-refractory-brick"
data.raw.tile["clay-bricks"].walking_speed_modifier = 1.4
data.raw.tile["clay-bricks"].vehicle_friction_modifier = 0.7
data.raw.tile["clay-bricks"].localised_name = {"tile-name.nullius-refractory-brick"}
data.raw.tile["clay-bricks"].placeable_by = {item = "nullius-refractory-brick", count = 1}
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

data.raw.item["transport-belt"].subgroup = "belt"
data.raw.item["transport-belt"].order = "nullius-bb"
data.raw.item["transport-belt"].stack_size = 200
data.raw["transport-belt"]["transport-belt"].localised_name = {"entity-name.nullius-belt-1"}
data.raw.item["underground-belt"].subgroup = "belt"
data.raw.item["underground-belt"].order = "nullius-cb"
data.raw.item["underground-belt"].stack_size = 100
data.raw["underground-belt"]["underground-belt"].localised_name = {"entity-name.nullius-underground-belt-1"}
data.raw["underground-belt"]["underground-belt"].max_distance = 7
data.raw.item["splitter"].subgroup = "splitter"
data.raw.item["splitter"].order = "nullius-db"
data.raw["splitter"]["splitter"].localised_name = {"entity-name.nullius-splitter-1"}

data.raw.item["fast-transport-belt"].subgroup = "belt"
data.raw.item["fast-transport-belt"].order = "nullius-bc"
data.raw.item["fast-transport-belt"].stack_size = 200
data.raw["transport-belt"]["fast-transport-belt"].localised_name = {"entity-name.nullius-belt-2"}
data.raw.item["fast-underground-belt"].subgroup = "belt"
data.raw.item["fast-underground-belt"].order = "nullius-cc"
data.raw.item["fast-underground-belt"].stack_size = 100
data.raw["underground-belt"]["fast-underground-belt"].localised_name = {"entity-name.nullius-underground-belt-2"}
data.raw["underground-belt"]["fast-underground-belt"].max_distance = 11
data.raw.item["fast-splitter"].subgroup = "splitter"
data.raw.item["fast-splitter"].order = "nullius-dc"
data.raw["splitter"]["fast-splitter"].localised_name = {"entity-name.nullius-splitter-2"}

data.raw.item["express-transport-belt"].subgroup = "belt"
data.raw.item["express-transport-belt"].order = "nullius-bd"
data.raw.item["express-transport-belt"].stack_size = 200
data.raw["transport-belt"]["express-transport-belt"].localised_name = {"entity-name.nullius-belt-3"}
data.raw["transport-belt"]["express-transport-belt"].next_upgrade = "ultimate-transport-belt"
data.raw.item["express-underground-belt"].subgroup = "belt"
data.raw.item["express-underground-belt"].order = "nullius-cd"
data.raw.item["express-underground-belt"].stack_size = 100
data.raw["underground-belt"]["express-underground-belt"].localised_name = {"entity-name.nullius-underground-belt-3"}
data.raw["underground-belt"]["express-underground-belt"].max_distance = 15
data.raw["underground-belt"]["express-underground-belt"].next_upgrade = "ultimate-underground-belt"
data.raw.item["express-splitter"].subgroup = "splitter"
data.raw.item["express-splitter"].order = "nullius-dd"
data.raw["splitter"]["express-splitter"].localised_name = {"entity-name.nullius-splitter-3"}
data.raw["splitter"]["express-splitter"].next_upgrade = "ultimate-splitter"

data.raw.item["ultimate-transport-belt"].subgroup = "belt"
data.raw.item["ultimate-transport-belt"].order = "nullius-be"
data.raw.item["ultimate-transport-belt"].icon = ENTICONPATH .. "belt4.png"
data.raw.item["ultimate-transport-belt"].icon_size = 64
data.raw.item["ultimate-transport-belt"].icon_mipmaps = 4
data.raw.item["ultimate-transport-belt"].stack_size = 200
data.raw["transport-belt"]["ultimate-transport-belt"].localised_name = {"entity-name.nullius-belt-4"}
data.raw["transport-belt"]["ultimate-transport-belt"].next_upgrade = nil
data.raw["transport-belt"]["ultimate-transport-belt"].icon = ENTICONPATH .. "belt4.png"
data.raw["transport-belt"]["ultimate-transport-belt"].icon_size = 64
data.raw["transport-belt"]["ultimate-transport-belt"].icon_mipmaps = 4
data.raw.item["ultimate-underground-belt"].subgroup = "belt"
data.raw.item["ultimate-underground-belt"].order = "nullius-ce"
data.raw.item["ultimate-underground-belt"].icon = ENTICONPATH .. "underground-belt4.png"
data.raw.item["ultimate-underground-belt"].icon_size = 64
data.raw.item["ultimate-underground-belt"].icon_mipmaps = 4
data.raw.item["ultimate-underground-belt"].stack_size = 100
data.raw["underground-belt"]["ultimate-underground-belt"].localised_name = {"entity-name.nullius-underground-belt-4"}
data.raw["underground-belt"]["ultimate-underground-belt"].max_distance = 19
data.raw["underground-belt"]["ultimate-underground-belt"].next_upgrade = nil
data.raw["underground-belt"]["ultimate-underground-belt"].icon = ENTICONPATH .. "underground-belt4.png"
data.raw["underground-belt"]["ultimate-underground-belt"].icon_size = 64
data.raw["underground-belt"]["ultimate-underground-belt"].icon_mipmaps = 4
data.raw.item["ultimate-splitter"].subgroup = "splitter"
data.raw.item["ultimate-splitter"].order = "nullius-de"
data.raw.item["ultimate-splitter"].icon = ENTICONPATH .. "splitter4.png"
data.raw.item["ultimate-splitter"].icon_size = 64
data.raw.item["ultimate-splitter"].icon_mipmaps = 4
data.raw["splitter"]["ultimate-splitter"].localised_name = {"entity-name.nullius-splitter-4"}
data.raw["splitter"]["ultimate-splitter"].next_upgrade = nil
data.raw["splitter"]["ultimate-splitter"].icon = ENTICONPATH .. "splitter4.png"
data.raw["splitter"]["ultimate-splitter"].icon_size = 64
data.raw["splitter"]["ultimate-splitter"].icon_mipmaps = 4

data.raw.item["inserter"].subgroup = "inserter"
data.raw.item["inserter"].order = "nullius-b"
data.raw.item["inserter"].localised_name = {"entity-name.nullius-inserter-1"}
data.raw.item["inserter"].stack_size = 100
data.raw["inserter"]["inserter"].localised_name = {"entity-name.nullius-inserter-1"}
data.raw["inserter"]["inserter"].rotation_speed = 0.0166667
data.raw["inserter"]["inserter"].extension_speed = 0.04
data.raw["inserter"]["inserter"].energy_per_rotation = "12.5KJ"
data.raw["inserter"]["inserter"].energy_per_movement = "1.875KJ"
data.raw["inserter"]["inserter"].energy_source.drain = "1kW"
data.raw["inserter"]["inserter"].next_upgrade = "turbo-inserter"
data.raw["inserter"]["inserter"].resistances = {
  { type = "impact", decrease = 100, percent = 90 }
}

data.raw.item["turbo-inserter"].subgroup = "inserter"
data.raw.item["turbo-inserter"].order = "nullius-c"
data.raw.item["turbo-inserter"].localised_name = {"entity-name.nullius-inserter-2"}
data.raw.item["turbo-inserter"].stack_size = 100
data.raw["inserter"]["turbo-inserter"].localised_name = {"entity-name.nullius-inserter-2"}
data.raw["inserter"]["turbo-inserter"].rotation_speed = 0.0333333
data.raw["inserter"]["turbo-inserter"].extension_speed = 0.08
data.raw["inserter"]["turbo-inserter"].energy_per_rotation = "10.25KJ"
data.raw["inserter"]["turbo-inserter"].energy_per_movement = "1.5625KJ"
data.raw["inserter"]["turbo-inserter"].energy_source.drain = "2kW"
data.raw["inserter"]["turbo-inserter"].next_upgrade = "stack-inserter"
data.raw["inserter"]["turbo-inserter"].resistances = {
  { type = "impact", decrease = 100, percent = 90 }
}

data.raw.item["turbo-filter-inserter"].subgroup = "inserter"
data.raw.item["turbo-filter-inserter"].order = "nullius-d"
data.raw.item["turbo-filter-inserter"].localised_name = {"entity-name.nullius-filter-inserter-2"}
data.raw.item["turbo-filter-inserter"].stack_size = 100
data.raw["inserter"]["turbo-filter-inserter"].localised_name = {"entity-name.nullius-filter-inserter-2"}
data.raw["inserter"]["turbo-filter-inserter"].rotation_speed = 0.0333333
data.raw["inserter"]["turbo-filter-inserter"].extension_speed = 0.08
data.raw["inserter"]["turbo-filter-inserter"].energy_per_rotation = "10.25KJ"
data.raw["inserter"]["turbo-filter-inserter"].energy_per_movement = "1.5625KJ"
data.raw["inserter"]["turbo-filter-inserter"].energy_source.drain = "2kW"
data.raw["inserter"]["turbo-filter-inserter"].next_upgrade = "stack-filter-inserter"
data.raw["inserter"]["turbo-filter-inserter"].resistances = {
  { type = "impact", decrease = 100, percent = 90 }
}

data.raw.item["stack-inserter"].subgroup = "inserter"
data.raw.item["stack-inserter"].order = "nullius-e"
data.raw.item["stack-inserter"].localised_name = {"entity-name.nullius-inserter-3"}
data.raw.item["stack-inserter"].stack_size = 100
data.raw["inserter"]["stack-inserter"].localised_name = {"entity-name.nullius-inserter-3"}
data.raw["inserter"]["stack-inserter"].rotation_speed = 0.0333333
data.raw["inserter"]["stack-inserter"].extension_speed = 0.08
data.raw["inserter"]["stack-inserter"].energy_per_rotation = "20.5KJ"
data.raw["inserter"]["stack-inserter"].energy_per_movement = "3.125KJ"
data.raw["inserter"]["stack-inserter"].energy_source.drain = "4kW"
data.raw["inserter"]["stack-inserter"].next_upgrade = "express-stack-inserter"
data.raw["inserter"]["stack-inserter"].resistances = {
  { type = "impact", decrease = 100, percent = 90 }
}
data.raw.recipe["inserter"].order = "x"

data.raw.item["stack-filter-inserter"].subgroup = "inserter"
data.raw.item["stack-filter-inserter"].order = "nullius-f"
data.raw.item["stack-filter-inserter"].localised_name = {"entity-name.nullius-filter-inserter-3"}
data.raw.item["stack-filter-inserter"].stack_size = 100
data.raw["inserter"]["stack-filter-inserter"].localised_name = {"entity-name.nullius-filter-inserter-3"}
data.raw["inserter"]["stack-filter-inserter"].rotation_speed = 0.0333333
data.raw["inserter"]["stack-filter-inserter"].extension_speed = 0.08
data.raw["inserter"]["stack-filter-inserter"].energy_per_rotation = "20.5KJ"
data.raw["inserter"]["stack-filter-inserter"].energy_per_movement = "3.125KJ"
data.raw["inserter"]["stack-filter-inserter"].energy_source.drain = "4kW"
data.raw["inserter"]["stack-filter-inserter"].next_upgrade = "express-stack-filter-inserter"
data.raw["inserter"]["stack-filter-inserter"].resistances = {
  { type = "impact", decrease = 100, percent = 90 }
}

data.raw.item["express-stack-inserter"].subgroup = "inserter"
data.raw.item["express-stack-inserter"].order = "nullius-g"
data.raw.item["express-stack-inserter"].localised_name = {"entity-name.nullius-inserter-4"}
data.raw.item["express-stack-inserter"].stack_size = 100
data.raw["inserter"]["express-stack-inserter"].localised_name = {"entity-name.nullius-inserter-4"}
data.raw["inserter"]["express-stack-inserter"].rotation_speed = 0.0666666
data.raw["inserter"]["express-stack-inserter"].extension_speed = 0.16
data.raw["inserter"]["express-stack-inserter"].energy_per_rotation = "21KJ"
data.raw["inserter"]["express-stack-inserter"].energy_per_movement = "3.125KJ"
data.raw["inserter"]["express-stack-inserter"].energy_source.drain = "6kW"
data.raw["inserter"]["express-stack-inserter"].next_upgrade = nil
data.raw["inserter"]["express-stack-inserter"].resistances = {
  { type = "impact", decrease = 100, percent = 90 }
}

data.raw.item["express-stack-filter-inserter"].subgroup = "inserter"
data.raw.item["express-stack-filter-inserter"].order = "nullius-h"
data.raw.item["express-stack-filter-inserter"].localised_name = {"entity-name.nullius-filter-inserter-4"}
data.raw.item["express-stack-filter-inserter"].stack_size = 100
data.raw["inserter"]["express-stack-filter-inserter"].localised_name = {"entity-name.nullius-filter-inserter-4"}
data.raw["inserter"]["express-stack-filter-inserter"].rotation_speed = 0.0666666
data.raw["inserter"]["express-stack-filter-inserter"].extension_speed = 0.16
data.raw["inserter"]["express-stack-filter-inserter"].energy_per_rotation = "21KJ"
data.raw["inserter"]["express-stack-filter-inserter"].energy_per_movement = "3.125KJ"
data.raw["inserter"]["express-stack-filter-inserter"].energy_source.drain = "6kW"
data.raw["inserter"]["express-stack-filter-inserter"].next_upgrade = nil
data.raw["inserter"]["express-stack-filter-inserter"].resistances = {
  { type = "impact", decrease = 100, percent = 90 }
}

data.raw["rail-planner"]["rail"].subgroup = "railway"
data.raw["rail-planner"]["rail"].order = "nullius-d"
data.raw["train-stop"]["train-stop"].subgroup = "railway"
data.raw["train-stop"]["train-stop"].order = "nullius-eb"
data.raw.item["train-stop"].subgroup = "railway"
data.raw.item["train-stop"].order = "nullius-eb"
data.raw["rail-signal"]["rail-signal"].subgroup = "railway"
data.raw["rail-signal"]["rail-signal"].order = "nullius-f"
data.raw.item["rail-signal"].subgroup = "railway"
data.raw.item["rail-signal"].order = "nullius-f"
data.raw["rail-chain-signal"]["rail-chain-signal"].subgroup = "railway"
data.raw["rail-chain-signal"]["rail-chain-signal"].order = "nullius-g"
data.raw.item["rail-chain-signal"].subgroup = "railway"
data.raw.item["rail-chain-signal"].order = "nullius-g"


data.raw.item["storage-tank"].subgroup = "tanks"
data.raw.item["storage-tank"].order = "nullius-bcb"
data.raw["storage-tank"]["storage-tank"].localised_name = {"entity-name.nullius-medium-tank-1"}
data.raw["storage-tank"]["storage-tank"].localised_description = {"entity-description.nullius-medium-tank-1"}
data.raw["storage-tank"]["storage-tank"].max_health = 400
data.raw["storage-tank"]["storage-tank"].next_upgrade = "nullius-medium-tank-2"
data.raw["storage-tank"]["storage-tank"].fast_replaceable_group = "medium-tank"
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


data.raw["repair-tool"]["repair-pack"].icon = "__base__/graphics/icons/repair-pack.png"
data.raw["repair-tool"]["repair-pack"].icon_size = 64
data.raw["repair-tool"]["repair-pack"].icon_mipmaps = 4
data.raw["repair-tool"]["repair-pack"].subgroup = "armor"
data.raw["repair-tool"]["repair-pack"].order = "nullius-mb"
data.raw.recipe["repair-pack"].order = "x"

data.raw["character"]["character"].localised_name = {"", {"item-name.nullius-android"}, " ", 1}
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
data.raw["item-subgroup"]["terrain"].order = "l"
data.raw["item-subgroup"]["smelting-machine"].order = "f"
data.raw["item-subgroup"]["raw-material"].order = "b"
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

data.raw.tree["tree-08"].minable = {
  mining_particle = "wooden-particle",
  mining_time = 1,
  result = "nullius-tree",
  count = 1,
  mining_trigger = data.raw.tree["tree-08"].minable.mining_trigger
}
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
  data.raw["electric-pole"]["big-electric-pole"].pictures.layers[2].hr_version
}
data.raw["electric-pole"]["big-electric-pole"].resistances =
    {{ type = "impact", decrease = 100, percent = 90 }}

data.raw["electric-pole"]["small-electric-pole"].pictures.layers = {
  {
    filename = ENTITYPATH .. "poles/hr-pole1.png",
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
	
data.raw["electric-pole"]["medium-electric-pole"].pictures.layers = {
  {
    filename = ENTITYPATH .. "poles/hr-pole2.png",
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


data.raw.item["wooden-chest"].localised_name =
    {"entity-name.nullius-small-chest-1"}
data.raw["container"]["wooden-chest"].localised_name =
    {"entity-name.nullius-small-chest-1"}
data.raw["container"]["wooden-chest"].max_health = 200
data.raw["container"]["wooden-chest"].resistances = {
    { type = "impact", decrease = 100, percent = 90 },
    { type = "fire", percent = 75 }
}

data.raw.item["iron-chest"].localised_name =
    {"entity-name.nullius-small-chest-2"}
data.raw["container"]["iron-chest"].localised_name =
    {"entity-name.nullius-small-chest-2"}
data.raw["container"]["iron-chest"].max_health = 350
data.raw["container"]["iron-chest"].resistances =
    data.raw["container"]["wooden-chest"].resistances

data.raw.item["steel-chest"].localised_name =
    {"entity-name.nullius-small-chest-3"}
data.raw["container"]["steel-chest"].localised_name =
    {"entity-name.nullius-small-chest-3"}
data.raw["container"]["steel-chest"].max_health = 500
data.raw["container"]["steel-chest"].resistances =
    data.raw["container"]["iron-chest"].resistances

data.raw.item["logistic-chest-storage"].localised_name =
    {"entity-name.nullius-small-storage-chest-2"}
data.raw.item["logistic-chest-storage"].localised_description =
    {"entity-description.nullius-storage-chest"}
data.raw["logistic-container"]["logistic-chest-storage"].localised_name =
    {"entity-name.nullius-small-storage-chest-2"}
data.raw["logistic-container"]["logistic-chest-storage"].localised_description =
    {"entity-description.nullius-storage-chest"}
data.raw["logistic-container"]["logistic-chest-storage"].max_health = 400
data.raw["logistic-container"]["logistic-chest-storage"].resistances =
    data.raw["container"]["wooden-chest"].resistances

data.raw.item["logistic-chest-passive-provider"].localised_name =
    {"entity-name.nullius-small-supply-chest-2"}
data.raw.item["logistic-chest-passive-provider"].localised_description =
    {"entity-description.nullius-supply-chest"}
data.raw["logistic-container"]["logistic-chest-passive-provider"].localised_name =
    {"entity-name.nullius-small-supply-chest-2"}
data.raw["logistic-container"]["logistic-chest-passive-provider"].localised_description =
    {"entity-description.nullius-supply-chest"}
data.raw["logistic-container"]["logistic-chest-passive-provider"].max_health = 400
data.raw["logistic-container"]["logistic-chest-passive-provider"].resistances =
    data.raw["container"]["wooden-chest"].resistances

data.raw.item["logistic-chest-requester"].localised_name =
    {"entity-name.nullius-small-demand-chest-2"}
data.raw.item["logistic-chest-requester"].localised_description =
    {"entity-description.nullius-demand-chest"}
data.raw["logistic-container"]["logistic-chest-requester"].localised_name =
    {"entity-name.nullius-small-demand-chest-2"}
data.raw["logistic-container"]["logistic-chest-requester"].localised_description =
    {"entity-description.nullius-demand-chest"}
data.raw["logistic-container"]["logistic-chest-requester"].max_health = 400
data.raw["logistic-container"]["logistic-chest-requester"].resistances =
    data.raw["container"]["wooden-chest"].resistances

data.raw.item["logistic-chest-buffer"].localised_name =
    {"entity-name.nullius-small-buffer-chest-2"}
data.raw.item["logistic-chest-buffer"].localised_description =
    {"entity-description.nullius-buffer-chest"}
data.raw["logistic-container"]["logistic-chest-buffer"].localised_name =
    {"entity-name.nullius-small-buffer-chest-2"}
data.raw["logistic-container"]["logistic-chest-buffer"].localised_description =
    {"entity-description.nullius-buffer-chest"}
data.raw["logistic-container"]["logistic-chest-buffer"].max_health = 400
data.raw["logistic-container"]["logistic-chest-buffer"].resistances =
    data.raw["container"]["wooden-chest"].resistances

data.raw.item["logistic-chest-active-provider"].localised_name =
    {"entity-name.nullius-small-dispatch-chest-2"}
data.raw.item["logistic-chest-active-provider"].localised_description =
    {"entity-description.nullius-dispatch-chest"}
data.raw["logistic-container"]["logistic-chest-active-provider"].localised_name =
    {"entity-name.nullius-small-dispatch-chest-2"}
data.raw["logistic-container"]["logistic-chest-active-provider"].localised_description =
    {"entity-description.nullius-dispatch-chest"}
data.raw["logistic-container"]["logistic-chest-active-provider"].max_health = 400
data.raw["logistic-container"]["logistic-chest-active-provider"].resistances =
    data.raw["container"]["wooden-chest"].resistances
	

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
