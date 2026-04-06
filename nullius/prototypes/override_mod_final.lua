local ICONPATH = "__nullius__/graphics/icons/"
local ENTITYPATH = "__nullius__/graphics/entity/"

if mods["reskins-bobs"] then
if settings.startup["reskins-lib-icon-tier-labeling"].value == true then
  local icon_style = settings.startup["reskins-lib-icon-tier-labeling-style"].value
  if settings.startup["reskins-bobs-do-inserter-tier-labeling"].value == true then
  data.raw.item["bob-turbo-inserter"].icons[4].icon =
      "__reskins-library__/graphics/icons/tiers/"..icon_style.."/2.png"
  data.raw.item["bob-turbo-inserter"].icons[5].icon =
      "__reskins-library__/graphics/icons/tiers/"..icon_style.."/2.png"
  -- data.raw.item["turbo-filter-inserter"].icons[6].icon =
  --     "__reskins-library__/graphics/icons/tiers/"..icon_style.."/2.png"
  -- data.raw.item["turbo-filter-inserter"].icons[7].icon =
  --     "__reskins-library__/graphics/icons/tiers/"..icon_style.."/2.png"
  data.raw.item["bob-express-bulk-inserter"].icons[4].icon =
      "__reskins-library__/graphics/icons/tiers/"..icon_style.."/4.png"
  data.raw.item["bob-express-bulk-inserter"].icons[5].icon =
      "__reskins-library__/graphics/icons/tiers/"..icon_style.."/4.png"
  -- data.raw.item["express-stack-filter-inserter"].icons[6].icon =
  --     "__reskins-library__/graphics/icons/tiers/"..icon_style.."/4.png"
  -- data.raw.item["express-stack-filter-inserter"].icons[7].icon =
  --     "__reskins-library__/graphics/icons/tiers/"..icon_style.."/4.png"

  if (mods["RenaiTransportation"] and
      settings.startup["RTThrowersSetting"].value) then
  data.raw.item["RTThrower-bob-turbo-inserter-Item"].icons[4].icon =
      "__reskins-library__/graphics/icons/tiers/"..icon_style.."/2.png"
  data.raw.item["RTThrower-bob-turbo-inserter-Item"].icons[5].icon =
      "__reskins-library__/graphics/icons/tiers/"..icon_style.."/2.png"
  -- data.raw.item["RTThrower-turbo-filter-inserter-Item"].icons[6].icon =
  --     "__reskins-library__/graphics/icons/tiers/"..icon_style.."/2.png"
  -- data.raw.item["RTThrower-turbo-filter-inserter-Item"].icons[7].icon =
  --     "__reskins-library__/graphics/icons/tiers/"..icon_style.."/2.png"
  data.raw.item["RTThrower-bob-express-bulk-inserter-Item"].icons[4].icon =
      "__reskins-library__/graphics/icons/tiers/"..icon_style.."/4.png"
  data.raw.item["RTThrower-bob-express-bulk-inserter-Item"].icons[5].icon =
      "__reskins-library__/graphics/icons/tiers/"..icon_style.."/4.png"
  -- data.raw.item["RTThrower-express-stack-filter-inserter-Item"].icons[6].icon =
  --     "__reskins-library__/graphics/icons/tiers/"..icon_style.."/4.png"
  -- data.raw.item["RTThrower-express-stack-filter-inserter-Item"].icons[7].icon =
  --     "__reskins-library__/graphics/icons/tiers/"..icon_style.."/4.png"
  end
  end

  if settings.startup["reskins-bobs-do-belt-entity-tier-labeling"].value == true then
  data.raw.item["bob-ultimate-transport-belt"].icons[4].icon =
      "__reskins-library__/graphics/icons/tiers/"..icon_style.."/4.png"
  data.raw.item["bob-ultimate-transport-belt"].icons[5].icon =
      "__reskins-library__/graphics/icons/tiers/"..icon_style.."/4.png"
  data.raw.item["bob-ultimate-underground-belt"].icons[4].icon =
      "__reskins-library__/graphics/icons/tiers/"..icon_style.."/4.png"
  data.raw.item["bob-ultimate-underground-belt"].icons[5].icon =
      "__reskins-library__/graphics/icons/tiers/"..icon_style.."/4.png"
  data.raw.item["bob-ultimate-splitter"].icons[4].icon =
      "__reskins-library__/graphics/icons/tiers/"..icon_style.."/4.png"
  data.raw.item["bob-ultimate-splitter"].icons[5].icon =
      "__reskins-library__/graphics/icons/tiers/"..icon_style.."/4.png"
  end

  if (data.raw["repair-tool"]["repair-pack"].icons ~= nil) then
    data.raw["repair-tool"]["repair-pack"].icons[4] = nil
    data.raw["repair-tool"]["repair-pack"].icons[5] = nil
  end

if (mods["miniloader"] and mods["reskins-compatibility"]) then
  data.raw.item["ultimate-miniloader"].icons[4].icon =
      "__reskins-library__/graphics/icons/tiers/"..icon_style.."/4.png"
  data.raw.item["ultimate-miniloader"].icons[5].icon =
      "__reskins-library__/graphics/icons/tiers/"..icon_style.."/4.png"
if settings.startup["miniloader-enable-filter"].value then
  data.raw.item["ultimate-filter-miniloader"].icons[4].icon =
      "__reskins-library__/graphics/icons/tiers/"..icon_style.."/4.png"
  data.raw.item["ultimate-filter-miniloader"].icons[5].icon =
      "__reskins-library__/graphics/icons/tiers/"..icon_style.."/4.png"
end
end
end
end


if mods["Transport_Drones"] then
  for _,recipe in pairs(data.raw.recipe) do
    if (string.sub(recipe.name, 1, 8) == "request-") then
      local product = string.sub(recipe.name, 9, -1)
      local item = data.raw.item[product]
      local fluid = data.raw.fluid[product]
      if ((item ~= nil) and ((fluid == nil) or (recipe.results == nil) or
	      (recipe.results[1].type ~= "fluid"))) then
        recipe.icons = item.icons
        recipe.icon = item.icon
        recipe.icon_size = item.icon_size
        recipe.subgroup = item.subgroup
        recipe.order = item.order
        recipe.always_show_products = true
        recipe.show_amount_in_title = false
        recipe.overload_multiplier = 40
        recipe.ingredients[2].amount = 15000
        recipe.results = {
          {type = "item", name = item.name, amount = 50000, show_details_in_recipe_tooltip = false},
          {type = "item", name = item.name, amount = 50000, show_details_in_recipe_tooltip = false},
          {type = "item", name = item.name, amount = 50000, show_details_in_recipe_tooltip = false}
        }
        recipe.energy_required = 600
      elseif (fluid ~= nil) then
        recipe.icons = fluid.icons
        recipe.icon = fluid.icon
        recipe.icon_size = fluid.icon_size
        recipe.subgroup = fluid.subgroup
        recipe.order = fluid.order
        recipe.always_show_products = true
        recipe.show_amount_in_title = false
        recipe.overload_multiplier = 40
        recipe.ingredients[2].amount = 15000
        recipe.results[1].amount = 500000
        recipe.energy_required = 600
      end
    end
  end

  if (data.raw.recipe["fuel-depots"] ~= nil) then
    data.raw.recipe["fuel-depots"].ingredients[1].amount = 1
    data.raw.recipe["fuel-depots"].overload_multiplier = 40
    data.raw.recipe["fuel-depots"].energy_required = 60
    data.raw.recipe["fuel-depots"].show_amount_in_title = false
  end
end


if (mods["RenaiTransportation"] and
    settings.startup["RTThrowersSetting"].value) then
  data.raw.recipe["nullius-thrower-2"].ingredients = {
    {type = "item", name = "RTThrower-inserter-Item", amount = 1},
    {type = "item", name = "bob-turbo-inserter", amount = 1},
	  {type = "item", name = "nullius-motor-2", amount = 1}
  }
  data.raw.recipe["nullius-thrower-3"].ingredients = {
    {type = "item", name = "RTThrower-bob-turbo-inserter-Item", amount = 1},
    {type = "item", name = "bulk-inserter", amount = 2}
  }
  data.raw.recipe["nullius-thrower-4"].ingredients = {
    {type = "item", name = "RTThrower-bulk-inserter-Item", amount = 1},
    {type = "item", name = "bob-express-bulk-inserter", amount = 2}
  }
  data.raw.recipe["nullius-ejector-hatch"].ingredients = {
    {type = "item", name = "HatchRT", amount = 1},
	  {type = "item", name = "RTThrower-bob-turbo-inserter-Item", amount = 1},
    {type = "item", name = "fast-underground-belt", amount = 1}
  }
  data.raw.recipe["nullius-player-thrower"].ingredients = {
    {type = "item", name = "RTThrower-inserter-Item", amount = 1},
    {type = "item", name = "nullius-steel-plate", amount = 2}
  }
  
  data.raw.recipe["RTThrower-burner-inserter-Recipe"].enabled = false
  data.raw.recipe["RTThrower-inserter-Recipe"].enabled = false
  data.raw.item["RTThrower-inserter-Item"].localised_name = {"entity-name.nullius-thrower", tostring(1)}
  data.raw.inserter["RTThrower-inserter"].localised_name = {"entity-name.nullius-thrower", tostring(1)}
  data.raw.item["RTThrower-inserter-Item"].subgroup = "nullius-renai-thrower"
  data.raw.item["RTThrower-inserter-Item"].order = "nullius-tbb"
  data.raw.inserter["RTThrower-inserter"].order = "nullius-tbb"
  data.raw.inserter["RTThrower-inserter"].rotation_speed = 0.0083333333
  data.raw.inserter["RTThrower-inserter"].energy_per_rotation = "56kJ"
  data.raw.inserter["RTThrower-inserter"].energy_per_movement = "1W"
  data.raw.inserter["RTThrower-inserter"].energy_source.drain = "2kW"
  data.raw.inserter["RTThrower-inserter"].minable.mining_time = 0.6
  data.raw.item["RTThrower-bob-turbo-inserter-Item"].localised_name = {"entity-name.nullius-thrower", tostring(2)}
  data.raw.inserter["RTThrower-bob-turbo-inserter"].localised_name = {"entity-name.nullius-thrower", tostring(2)}
  data.raw.item["RTThrower-bob-turbo-inserter-Item"].subgroup = "nullius-renai-thrower"
  data.raw.item["RTThrower-bob-turbo-inserter-Item"].order = "nullius-tcb"
  data.raw.inserter["RTThrower-bob-turbo-inserter"].order = "nullius-tcb"
  data.raw.inserter["RTThrower-bob-turbo-inserter"].rotation_speed = 0.016666667
  data.raw.inserter["RTThrower-bob-turbo-inserter"].energy_per_rotation = "56kJ"
  data.raw.inserter["RTThrower-bob-turbo-inserter"].energy_per_movement = "1W"
  data.raw.inserter["RTThrower-bob-turbo-inserter"].energy_source.drain = "4kW"
  data.raw.inserter["RTThrower-bob-turbo-inserter"].minable.mining_time = 0.8
  data.raw.item["RTThrower-bulk-inserter-Item"].localised_name = {"entity-name.nullius-thrower", tostring(3)}
  data.raw.inserter["RTThrower-bulk-inserter"].localised_name = {"entity-name.nullius-thrower", tostring(3)}
  data.raw.item["RTThrower-bulk-inserter-Item"].subgroup = "nullius-renai-thrower"
  data.raw.item["RTThrower-bulk-inserter-Item"].order = "nullius-tdb"
  data.raw.inserter["RTThrower-bulk-inserter"].order = "nullius-tdb"
  data.raw.inserter["RTThrower-bulk-inserter"].rotation_speed = 0.016666667
  data.raw.inserter["RTThrower-bulk-inserter"].energy_per_rotation = "114kJ"
  data.raw.inserter["RTThrower-bulk-inserter"].energy_per_movement = "1W"
  data.raw.inserter["RTThrower-bulk-inserter"].energy_source.drain = "6kW"
  data.raw.inserter["RTThrower-bulk-inserter"].minable.mining_time = 1
  data.raw.item["RTThrower-bob-express-bulk-inserter-Item"].localised_name = {"entity-name.nullius-thrower", tostring(4)}
  data.raw.inserter["RTThrower-bob-express-bulk-inserter"].localised_name = {"entity-name.nullius-thrower", tostring(4)}
  data.raw.item["RTThrower-bob-express-bulk-inserter-Item"].subgroup = "nullius-renai-thrower"
  data.raw.item["RTThrower-bob-express-bulk-inserter-Item"].order = "nullius-teb"
  data.raw.inserter["RTThrower-bob-express-bulk-inserter"].order = "nullius-teb"
  data.raw.inserter["RTThrower-bob-express-bulk-inserter"].rotation_speed = 0.033333333
  data.raw.inserter["RTThrower-bob-express-bulk-inserter"].energy_per_rotation = "115kJ"
  data.raw.inserter["RTThrower-bob-express-bulk-inserter"].energy_per_movement = "1W"
  data.raw.inserter["RTThrower-bob-express-bulk-inserter"].energy_source.drain = "10kW"
  data.raw.inserter["RTThrower-bob-express-bulk-inserter"].minable.mining_time = 1.2
  data.raw.inserter["PlayerLauncher"].rotation_speed = 0.033333333
  data.raw.inserter["RTThrower-EjectorHatchRT"].rotation_speed = 0.016666667
  data.raw.inserter["RTThrower-EjectorHatchRT"].extension_speed = 0.04
  data.raw.inserter["RTThrower-EjectorHatchRT"].energy_per_rotation = "56kJ"
  data.raw.inserter["RTThrower-EjectorHatchRT"].energy_per_movement = "1W"
  data.raw.inserter["RTThrower-EjectorHatchRT"].energy_source.drain = "4kW"
  data.raw.inserter["RTThrower-EjectorHatchRT"].minable.mining_time = 0.75

  data.raw["simple-entity-with-owner"]["HatchRT"].minable.mining_time = 0.5
  data.raw.inserter["PlayerLauncher"].minable.mining_time = 0.6
  data.raw["container"]["OpenContainer"].minable.mining_time = 0.5
  data.raw["constant-combinator"]["RTBouncePlate"].minable.mining_time = 1
  data.raw["constant-combinator"]["DirectedBouncePlate"].minable.mining_time = 1.2
  -- data.raw["constant-combinator"]["SignalBouncePlate"].minable.mining_time = 1.5 --removed
  data.raw["constant-combinator"]["DirectorBouncePlate"].minable.mining_time = 2

  data.raw.recipe["nullius-thrower-1"].results = {
			{type = "item", name = "RTThrower-inserter-Item", amount = 1}
		}
  data.raw.recipe["nullius-thrower-2"].results = {
			{type = "item", name = "RTThrower-bob-turbo-inserter-Item", amount = 1}
		}
  
  data.raw.recipe["nullius-thrower-3"].results = {
			{type = "item", name = "RTThrower-bulk-inserter-Item", amount = 1}
		}
  
  data.raw.recipe["nullius-thrower-4"].results = {
			{type = "item", name = "RTThrower-bob-express-bulk-inserter-Item", amount = 1}
		}
	
	local hiddenInserterRecipes = {
	  "RTThrower-burner-inserter-Recipe",
    "RTThrower-inserter-Recipe",
    "RTThrower-bob-turbo-inserter-Recipe",
    "RTThrower-bulk-inserter-Recipe",
    "RTThrower-bob-express-bulk-inserter-Recipe",
    "RTThrower-bob-steam-inserter-Recipe",
    "RTThrower-bob-red-inserter-Recipe",
    "RTThrower-long-handed-inserter-Recipe",
    "RTThrower-bob-red-bulk-inserter-Recipe",
    "RTThrower-fast-inserter-Recipe",
    "RTThrower-bob-turbo-bulk-inserter-Recipe",
    "RTThrower-bob-express-inserter-Recipe"
  }
  
  for _, inserter in pairs(hiddenInserterRecipes) do
    data.raw.recipe[inserter].hidden_in_factoriopedia = true
  end
end


if (mods["cargo-ships"] and settings.startup["offshore_oil_enabled"].value) then
  data.raw.technology["deep_sea_oil_extraction"].unit = {
    count = 200, time = 30,
    ingredients = {
      {"nullius-geology-pack", 1}, {"nullius-climatology-pack", 2},
      {"nullius-mechanical-pack", 1}, {"nullius-electrical-pack", 1}
    }
  }
end


if mods["stack-combinator"] then
  data.raw.item["stack-combinator"].subgroup = "circuit-network"
end
