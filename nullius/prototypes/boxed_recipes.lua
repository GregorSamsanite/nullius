-- Automatic creation of boxed recipes

---@class AutoBoxedRecipe
---When set, overrides the name of the boxed recipe. Defaults to replacing the prefix with `nullius-boxed-`
---@field name? string
---When set, overrides the localised name of the boxed recipe.
---When set to `false`, forces no localised name.
---Otherwise if the recipe has a localised name, prepends "Boxed" to it.
---@field localised_name? data.LocalisedString|false
---When set, overrides the category of the boxed recipe.
---Defaults to the same as the original recipe.
---@field category? string
---When set, overrides the subgroup of the boxed recipe.
---Errors when not set.
---@field subgroup? string
---When set, overrides the order of the boxed recipe. Set to `false` to remove the order.
---Defaults to the same as the original recipe.
---@field order? string|false
---Multiply all ingredients and results by this factor. Applied on top of the box ratio of the given item.
---Defaults to 5.
---@field multiplier? double
---Multiplies the energy required for the boxed recipe.
---Defaults to the multiplier.
---@field energy_required_multiplier? double
---When set, overrides the ingredients of the boxed recipe ignoring the multiplier.
---Default is the ingredients of the original recipe, converted to boxes and amounts adjusted.
---@field ingredients? (data.IngredientPrototype)[]
---When set, overrides the results of the boxed recipe ignoring the multiplier.
---Default is the results of the original recipe, converted to boxes and amounts adjusted.
---@field results? (data.ProductPrototype)[]
---When set, overrides the main product of the boxed recipe.
---Defaults to the main product of the original recipe, converted to boxed.
---@field main_product? string
---When set, overrides the icons of the boxed recipe.
---When set to `false`, forces no icons and uses the game's defaults.
---When not set, uses the recipe's icons scaled based on `existing_icons_scale`.
---@field icons? (data.IconData)[]|false
---By how much the existing icons's size and shift are scaled, when `icons` isn't set.
---Defaults to 0.9.
---@field existing_icons_scale? double
---The box icon to add to the recipe. Defaults to the default box icon.
---@field box_icon? data.IconData
---Array of tables to override arbitrary fields of the icon.
---Useful to adjust size and shift of automatically scaled icons.
---@field icon_override? (table<string, any>)[]
---Arbitrary fields to override in the boxed recipe itself.
---@field override? table<string, any>

---Recipes opt into automatic boxing by carrying this field
---@class data.RecipePrototype
---@field auto_boxed? AutoBoxedRecipe

---@param item_name string
---@return string
local function boxed_recipe_name_for(item_name)
  return "nullius-boxed-" .. item_name:sub(9, -1)
end

---Adjusts the item to the boxed variant, adjusting the amount as well.
---@param entry data.IngredientPrototype|data.ProductPrototype
---@param multiplier double
local function adjust_ingredient_or_product(entry, multiplier)
  if entry.type == "item" then
    local boxed_name = BOXED_ITEM_MAPPING[entry.name]
    if data.raw["item"][boxed_name] then
      if DOUBLE_RATIO_BOX[entry.name] then
        multiplier = multiplier / 10
      else
        multiplier = multiplier / 5
      end
      entry.name = boxed_name
    end
  end
  entry.amount = entry.amount * multiplier
  assert(entry.amount % 1 == 0, "Amount must be an integer after applying the multiplier, but got " .. entry.amount .. " for " .. entry.name)
end

local new_recipes = {}

for name, recipe in pairs(data.raw.recipe) do
  local auto_boxed = recipe.auto_boxed
  if auto_boxed then
    recipe.auto_boxed = nil
    local boxed = table.deepcopy(recipe)

    local boxed_multiplier = auto_boxed.multiplier or 5
    local energy_required_multiplier = auto_boxed.energy_required_multiplier or boxed_multiplier

    if auto_boxed.name then
      boxed.name = auto_boxed.name
    else
      boxed.name = boxed_recipe_name_for(recipe.name)
    end

    if auto_boxed.localised_name then
      boxed.localised_name = auto_boxed.localised_name
    elseif auto_boxed.localised_name == false then
      boxed.localised_name = nil
    elseif recipe.localised_name then
      boxed.localised_name = {"recipe-name.nullius-boxed", recipe.localised_name}
    end

    if auto_boxed.icons then
      -- When provided icons, use these directly
      boxed.icons = auto_boxed.icons

      -- Remove any existing single icon 
      if boxed.icon then
        boxed.icon = nil
        boxed.icon_size = nil
      end

    elseif auto_boxed.icons == false then
      -- Remove all icons, to let the game fallback to the default icon for the recipe
      boxed.icon = nil
      boxed.icon_size = nil
      boxed.icons = nil

    elseif recipe.icons then
      -- No icons set, but the reference recipe has icons.
      -- So we copy and then scale to fit inside the box.

      local icon_scale = auto_boxed.existing_icons_scale or 0.9
      for _, icon in pairs(boxed.icons) do
        local icon_size = icon.icon_size or 64
        local default_scale = 32 / icon_size
        icon.scale = (icon.scale or default_scale) * icon_scale
        if icon.shift then
          icon.shift[1] = icon.shift[1] * icon_scale
          icon.shift[2] = icon.shift[2] * icon_scale
        end
      end
    end

    -- When the boxed recipe wants small details of certain icons changed.
    -- Usually scale or shift that weren't calculated properly via existing_icons_scale
    if auto_boxed.icon_override then
      for i, override in pairs(auto_boxed.icon_override) do
        for k, entry in pairs(override) do
          boxed.icons[i][k] = entry
        end
      end
    end

    -- Add the box icon, when the recipe isn't using the game's fallback icons
    if boxed.icons then
      table.insert(boxed.icons, 1, auto_boxed.box_icon or {
        icon = "__nullius__/graphics/icons/crate.png",
        icon_size = 64,
      })
    end

    if auto_boxed.category then
      -- TODO: maybe bool means automatic?
      boxed.category = auto_boxed.category
    end
    if auto_boxed.subgroup then
      boxed.subgroup = auto_boxed.subgroup
    else
      error("automatic subgroup selection not implemented")
    end

    if auto_boxed.order then
      boxed.order = auto_boxed.order
    elseif auto_boxed.order == false then
      boxed.order = nil
    end

    assert(recipe.energy_required, "recipe.energy_required is nil for " .. recipe.name)
    boxed.energy_required = recipe.energy_required * energy_required_multiplier

    -- Use provided boxed ingredients, or calculate automatically
    -- For solids, replace with box if possible otherwise increase the amount
    if auto_boxed.ingredients then
      boxed.ingredients = auto_boxed.ingredients
    else
      for _, ingredient in pairs(boxed.ingredients) do
        adjust_ingredient_or_product(ingredient, boxed_multiplier)
      end
    end

    if auto_boxed.results then
      boxed.results = auto_boxed.results
    else
      for _, result in pairs(boxed.results) do
        adjust_ingredient_or_product(result, boxed_multiplier)
      end
    end

    if auto_boxed.main_product then
      boxed.main_product = auto_boxed.main_product

    elseif recipe.main_product and BOXED_ITEM_MAPPING[recipe.main_product] then
      boxed.main_product = BOXED_ITEM_MAPPING[recipe.main_product]
    end

    -- If we need to change something arbitrary
    if auto_boxed.override then
      for k, v in pairs(auto_boxed.override) do
        boxed[k] = v
      end
    end

    table.insert(new_recipes, boxed)
  end
end

data:extend(new_recipes)

-- FIXME: random noise that makes full identical-to-before data not match
data.raw.recipe["nullius-boxed-gypsum-decomposition"].icon_size = nil
data.raw.recipe["nullius-boxed-aluminum-powder"].always_show_made_in = nil