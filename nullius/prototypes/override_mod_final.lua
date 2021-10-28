local ICONPATH = "__nullius__/graphics/icons/"
local ENTITYPATH = "__nullius__/graphics/entity/"

if mods["bobplates"] then
data.raw.fluid["liquid-fuel"].subgroup = "unused-fluid"
data.raw.item["liquid-fuel-barrel"].subgroup = "unused-fluid"
data.raw.recipe["fill-liquid-fuel-barrel"].subgroup = "unused-fluid"
data.raw.recipe["empty-liquid-fuel-barrel"].subgroup = "unused-fluid"
end


if mods["reskins-bobs"] then
if settings.startup["reskins-lib-icon-tier-labeling"].value == true then
  local icon_style = settings.startup["reskins-lib-icon-tier-labeling-style"].value
  data.raw.item["turbo-inserter"].icons[4].icon =
      "__reskins-library__/graphics/icons/tiers/"..icon_style.."/2.png"
  data.raw.item["turbo-inserter"].icons[5].icon =
      "__reskins-library__/graphics/icons/tiers/"..icon_style.."/2.png"
  data.raw.item["turbo-filter-inserter"].icons[6].icon =
      "__reskins-library__/graphics/icons/tiers/"..icon_style.."/2.png"
  data.raw.item["turbo-filter-inserter"].icons[7].icon =
      "__reskins-library__/graphics/icons/tiers/"..icon_style.."/2.png"
  data.raw.item["express-stack-inserter"].icons[4].icon =
      "__reskins-library__/graphics/icons/tiers/"..icon_style.."/4.png"
  data.raw.item["express-stack-inserter"].icons[5].icon =
      "__reskins-library__/graphics/icons/tiers/"..icon_style.."/4.png"
  data.raw.item["express-stack-filter-inserter"].icons[6].icon =
      "__reskins-library__/graphics/icons/tiers/"..icon_style.."/4.png"
  data.raw.item["express-stack-filter-inserter"].icons[7].icon =
      "__reskins-library__/graphics/icons/tiers/"..icon_style.."/4.png"
  data.raw.item["ultimate-transport-belt"].icons[3].icon =
      "__reskins-library__/graphics/icons/tiers/"..icon_style.."/4.png"
  data.raw.item["ultimate-transport-belt"].icons[4].icon =
      "__reskins-library__/graphics/icons/tiers/"..icon_style.."/4.png"
  data.raw.item["ultimate-underground-belt"].icons[3].icon =
      "__reskins-library__/graphics/icons/tiers/"..icon_style.."/4.png"
  data.raw.item["ultimate-underground-belt"].icons[4].icon =
      "__reskins-library__/graphics/icons/tiers/"..icon_style.."/4.png"
  data.raw.item["ultimate-splitter"].icons[3].icon =
      "__reskins-library__/graphics/icons/tiers/"..icon_style.."/4.png"
  data.raw.item["ultimate-splitter"].icons[4].icon =
      "__reskins-library__/graphics/icons/tiers/"..icon_style.."/4.png"
  data.raw["repair-tool"]["repair-pack"].icons[4] = nil
  data.raw["repair-tool"]["repair-pack"].icons[5] = nil
end
end


if mods["Transport_Drones"] then
  for _,recipe in pairs(data.raw.recipe) do
    if (string.sub(recipe.name, 1, 8) == "request-") then
      local product = string.sub(recipe.name, 9, -1)
      local item = data.raw.item[product]
      if (item ~= nil) then
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
      else
        local fluid = data.raw.fluid[product]
        if (fluid ~= nil) then
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
  end

  data.raw.recipe["fuel-depots"].ingredients[1].amount = 1
  data.raw.recipe["fuel-depots"].overload_multiplier = 40
  data.raw.recipe["fuel-depots"].energy_required = 60
  data.raw.recipe["fuel-depots"].show_amount_in_title = false
end
