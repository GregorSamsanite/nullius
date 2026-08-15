local has_transport_drones = mods["Transport_Drones_Continued_Fixed"]

local function has_flag(prototype, flag)
  for _, prototype_flag in pairs(prototype.flags or {}) do
    if (prototype_flag == flag) then
      return true
    end
  end
  return false
end

local function get_drone_fuel_ingredient_name(recipe)
  if (recipe.ingredients == nil) then return end
  for _,ingredient in pairs(recipe.ingredients) do
    if (ingredient.type == "fluid") then
      return ingredient.name
    end
  end
end

local function set_drone_fuel_ingredient(recipe, amount)
  local fuel = get_drone_fuel_ingredient_name(recipe)
  if (fuel == nil) then return end
  recipe.ingredients = {{type = "fluid", name = fuel, amount = amount}}
end

local function has_fluid_result(recipe, name)
  for _,result in pairs(recipe.results or {}) do
    if ((result.type == "fluid") and (result.name == name)) then
      return true
    end
  end
  return false
end

if has_transport_drones then
  for _,recipe in pairs(data.raw.recipe) do
    if (string.sub(recipe.name, 1, 8) == "request-") then
      local product = string.sub(recipe.name, 9, -1)
      local item = data.raw.item[product]
      local fluid = data.raw.fluid[product]
      if ((item ~= nil) and (not has_fluid_result(recipe, product))) then
        recipe.icons = item.icons
        recipe.icon = item.icon
        recipe.icon_size = item.icon_size
        recipe.subgroup = item.subgroup
        recipe.order = item.order
        recipe.always_show_products = true
        recipe.show_amount_in_title = false
        recipe.overload_multiplier = 40
        set_drone_fuel_ingredient(recipe, 15000)
        if (not mods["quality"]) then
          recipe.allow_quality = false
        end
        local amount = has_flag(item, "not-stackable") and 1 or 50000
        recipe.results = {
          {type = "item", name = item.name, amount = amount, show_details_in_recipe_tooltip = false},
          {type = "item", name = item.name, amount = amount, show_details_in_recipe_tooltip = false},
          {type = "item", name = item.name, amount = amount, show_details_in_recipe_tooltip = false}
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
        set_drone_fuel_ingredient(recipe, 15000)
        recipe.results = {
          {type = "fluid", name = fluid.name, amount = 500000, show_details_in_recipe_tooltip = false}
        }
        recipe.energy_required = 600
      end
    end
  end

  local fuel_depots = data.raw.recipe["fuel-depots"]
  if (fuel_depots ~= nil) then
    for _,ingredient in pairs(fuel_depots.ingredients or {}) do
      if ((ingredient.type == "item") and (ingredient.name == "transport-drone")) then
        ingredient.amount = 1
      end
    end
    data.raw.recipe["fuel-depots"].overload_multiplier = 40
    data.raw.recipe["fuel-depots"].energy_required = 60
    data.raw.recipe["fuel-depots"].show_amount_in_title = false
  end

end
