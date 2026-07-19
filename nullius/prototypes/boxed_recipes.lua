-- Automatic creation of boxed recipes

---@class AutoBoxedRecipe
---@field name? string
---@field localised_name? string
---@field scale_existing_icons? double
---@field add_box_icon? boolean
---@field icons? boolean
---@field icon_override? (table<string, any>)[]
---@field category? string
---@field subgroup? string
---Multiply all ingredients, results and energy_required by this factor. Applied on top of the box ratio.
---@field multiplier? double
---@field energy_required? double
---@field ingredients? (data.IngredientPrototype)[]
---@field results? (data.ProductPrototype)[]
---@field main_product? string

local box_ratio = 5

---@param item_name string
---@return string
local function boxed_recipe_name_for(item_name)
  return "nullius-boxed-" .. item_name:sub(9, -1)
end

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
  local auto_boxed = recipe.auto_boxed --[[@as AutoBoxedRecipe]]
  if auto_boxed then
    recipe.auto_boxed = nil
    local boxed = table.deepcopy(recipe)

    local boxed_multiplier = auto_boxed.multiplier or 5

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
      if boxed.icon then
        boxed.icon = nil
        boxed.icon_size = nil
      end
      boxed.icons = auto_boxed.icons

    elseif auto_boxed.icons == false then
      -- Remove all icons, to let the game fallback to the default icon for the recipe
      boxed.icon = nil
      boxed.icon_size = nil
      boxed.icons = nil

    elseif recipe.icons then
      -- Scale all existing icons by the provided factor
      -- The original icon inside the box is slightly smaller.

      local icon_scale = auto_boxed.scale_existing_icons or 0.9
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
    -- Usually scale or shift that weren't calculated properly via scale_existing_icons
    if auto_boxed.icon_override then
      for i, override in pairs(auto_boxed.icon_override) do
        if override then
          for k, entry in pairs(override) do
            boxed.icons[i][k] = entry
          end
        end
      end
    end

    if boxed.icons and auto_boxed.add_box_icon ~= false then
      table.insert(boxed.icons, 1, {
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

    if auto_boxed.energy_required then
      boxed.energy_required = auto_boxed.energy_required
    else
      assert(recipe.energy_required, "recipe.energy_required is nil for " .. recipe.name)
      boxed.energy_required = recipe.energy_required * boxed_multiplier
    end

    -- Use provided boxed ingredients, or calculate automatically
    -- For solids, replace with box if possible other increase the amount
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