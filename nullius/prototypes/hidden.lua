local ICONPATH = "__nullius__/graphics/icons/"
local ENTITYPATH = "__nullius__/graphics/entity/"

local building_types_list = {
  "furnace",
  "transport-belt",
  "boiler",
  "container",
  "electric-pole",
  "generator",
  "offshore-pump",
  "inserter",
  "pipe",
  "radar",
  "lamp",
  "pipe-to-ground",
  "assembling-machine",
  "wall",
  "mining-drill",
  "turret",
  "ammo-turret",
  "underground-belt",
  "loader",
  "splitter",
  "car",
  "solar-panel",
  "locomotive",
  "cargo-wagon",
  "fluid-wagon",
  "artillery-wagon",
  "gate",
  "train-stop",
  "lab",
  "logistic-robot",
  "construction-robot",
  "logistic-container",
  "rocket-silo",
  "roboport",
  "storage-tank",
  "pump",
  "accumulator",
  "beacon",
  "combat-robot",
  "reactor",
  "heat-pipe",
  "artillery-turret",
  "electric-turret",
  "fluid-turret",
  "valve"
}

local hide_entity_list = {
  "inserter",
  "mining-drill",
  "locomotive",
  "cargo-wagon",
  "fluid-wagon",
  "artillery-wagon",
  "lab",
  "logistic-robot",
  "construction-robot",
  "artillery-turret",
  "electric-turret"
}

local item_types_list = {
  "item",
  "gun",
  "ammo",
  "capsule",
  "module",
  "rail-planner",
  "tool",
  "armor",
  "item-with-entity-data",
  "repair-tool",
  "item-with-inventory",
  "spidertron-remote"
}


local function table_contains(lst, target)
  if (lst == nil) then
    return false
  end
  for _,elem in pairs(lst) do
    if (elem == target) then
      return true
    end
  end
  return false
end

local function remove_table(lst, target)
  if (lst == nil) then
    return false
  end
  for ind,elem in pairs(lst) do
    if (elem == target) then
      lst[ind] = nil
      return true
    end
  end
  return false
end

--- Looks for the various item tables for the item with given name
--- @param name string
--- @return data.ItemPrototype|nil
local function get_item_with_name(name)
  for type in pairs(defines.prototypes.item) do
    local type_table = data.raw[type]
    local item = type_table and type_table[name]
    if item then
      return item --[[@as data.ItemPrototype]]
    end
  end
  return nil
end

--- Checks if the given prototype mines into a hidden item
---@param entity data.EntityPrototype
local function is_mineable_result_hidden(entity)
  if not entity.minable then
    return false
  end

  if entity.minable.results then
    for _, product in pairs(entity.minable.results) do
      if product.type ~= "fluid" then
        local item = get_item_with_name(product.name)
        if (item ~= nil) and item.hidden then
          return true
        end
      end
    end
    return false
  else
    local item = get_item_with_name(entity.minable.result)
    return item and item.hidden
  end
end

--- @param name string?
local function is_nullius_name(name)
  if name then
    return string.sub(name, 1, 8) == "nullius-"
  else
    return false
  end
end

-- For all non-nullius not-hidden items, mark them as "temphidden"
for _,type in pairs(item_types_list) do
  for _,item in pairs(data.raw[type] or {}) do
    if not is_nullius_name(item.name) and not is_nullius_name(item.order) then
      if item.hidden then
        item.subgroup = "hidden"
      else
        if (item.flags == nil) then
          item.flags = {}
        end
        table.insert(item.flags,"temphidden")
	    end
    end
  end
end



-- For all recipes
--  * non-nullius recipes are hidden and disabled
--  * recipes that produce non-nullius items have the "temphidden" flag removed
for _, recipe in pairs(data.raw.recipe) do
  if ((not is_nullius_name(recipe.name)) and
      ((recipe.order == nil) or (not is_nullius_name(recipe.order))) and
      (string.sub(recipe.name, 1, 13) ~= "fill-nullius-") and
      (string.sub(recipe.name, 1, 14) ~= "empty-nullius-") and
      (not table_contains(recipe.categories, "ee-testing-tool")) and
      (string.sub(recipe.name, 1, 5) ~= "bpsb-")) then
    recipe.hidden = true
    recipe.enabled = false
  else
    if (recipe.results) then
      for _, product in pairs(recipe.results) do
        if (product.name ~= nil) then
          if (product.type ~= "fluid") then
            local item = get_item_with_name(product.name)
            if (item ~= nil) then
              remove_table(item.flags, "temphidden")
            end
          end
        end
      end
    end
  end
end

-- For all items, if they still have "temphidden" flag, then make it actually hidden
for _,type in pairs(item_types_list) do
  for _,item in pairs(data.raw[type] or {}) do
    if remove_table(item.flags, "temphidden") then
      item.flags["temphidden"] = nil
      item.hidden = true
	    item.subgroup = "hidden"
    end
  end
end

-- Hide all non-nullius fluids
for _,fluid in pairs(data.raw.fluid) do
  if not is_nullius_name(fluid.name) and not is_nullius_name(fluid.order) then
    fluid.subgroup = "unused-fluid"
    fluid.hidden = true
  end
end

-- For all entities, check if their mining results is hidden and if so, hide the entity
-- Also check the same logic for their `next_upgrade` and remove the upgrade in that case.
for _,type in pairs(building_types_list) do
  for _, entity in pairs(data.raw[type]) do
    entity = entity --[[@as data.EntityPrototype]]
    if entity.next_upgrade then
      local next_entity = data.raw[type][entity.next_upgrade]
      if next_entity and is_mineable_result_hidden(next_entity) then
        entity.next_upgrade = nil
      end
    end
    if is_mineable_result_hidden(entity) then
      entity.next_upgrade = nil
      entity.hidden = true
    end
  end
end

-- For some set of entity types, hide them if they're not nullius related.
for _,type in pairs(hide_entity_list) do
  for _,entity in pairs(data.raw[type]) do
    entity = entity --[[@as data.EntityPrototype]]
    if not is_nullius_name(entity.name) and not is_nullius_name(entity.order) then
      if (entity.flags == nil) then
        entity.flags = {}
      end
      entity.hidden = true
    end
  end
end

data.raw.item["iron-ore"].hidden = false
data.raw.item["copper-ore"].hidden = false
data.raw.item["uranium-ore"].hidden = false

if (mods["rec-blue-plus"] or mods["recursive-blueprints"]) then
  data.raw.item["construction-robot"].hidden = false
end

data.raw["active-defense-equipment"]["personal-laser-defense-equipment"].attack_parameters =
     data.raw["active-defense-equipment"]["discharge-defense-equipment"].attack_parameters


for _, tech in pairs(data.raw.technology) do
  if not is_nullius_name(tech.name) and not is_nullius_name(tech.order) then
    tech.enabled = false
    tech.hidden = true
  end
end

for _, recipe in pairs(data.raw.recipe) do
  if not is_nullius_name(recipe.name) then
    if ((string.sub(recipe.name, 1, 13) == "fill-nullius-") or
        (string.sub(recipe.name, 1, 14) == "empty-nullius-")) then
	  recipe.GCKI_ignore = true

	elseif (
    (
      not is_nullius_name(recipe.order)) and
      table_contains(recipe.categories, "ee-testing-tool") and
	    (string.sub(recipe.name, 1, 5) ~= "bpsb-")
    ) then
      recipe.enabled = false
	    recipe.allow_as_intermediate = false
	    recipe.allow_decomposition = false
	    if (recipe.order == nil) then recipe.order = "zzz-hidden" end
	  end
  end
end

data.raw.recipe["pipe"].results[1].name = "bob-stone-pipe"

data.raw.fish.fish.subgroup = "biology-fish"
data.raw.fish.fish.order = "z"
data.raw.item["rocket-part"].subgroup = "space"
data.raw.item["rocket-part"].order = "z"

data.raw.item["nullius-energy-barrel"] = nil
data.raw.recipe["nullius-energy-barrel"] = nil
data.raw.recipe["empty-nullius-energy-barrel"] = nil
data.raw.technology["fluid-handling"].effects = { }

data.raw["spider-vehicle"]["spidertron"].hidden_in_factoriopedia = true
data.raw["car"]["car"].hidden_in_factoriopedia = true
data.raw["car"]["tank"].hidden_in_factoriopedia = true