local ICONPATH = "__nullius__/graphics/icons/"
local ENTITYPATH = "__nullius__/graphics/entity/"

building_types_list = {
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

hide_entity_list = {
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

item_types_list = {
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

for _,type in pairs(item_types_list) do
  for _,item in pairs(data.raw[type] or {}) do
    if ((string.sub(item.name, 1, 8) ~= "nullius-") and
		((item.order == nil) or
		    (string.sub(item.order, 1, 8) ~= "nullius-"))) then
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

for _, recipe in pairs(data.raw.recipe) do
  if ((string.sub(recipe.name, 1, 8) ~= "nullius-") and
      ((recipe.order == nil) or (string.sub(recipe.order, 1, 8) ~= "nullius-")) and
      (string.sub(recipe.name, 1, 13) ~= "fill-nullius-") and
      (string.sub(recipe.name, 1, 14) ~= "empty-nullius-") and
	  (recipe.category ~= "ee-testing-tool") and
	  (string.sub(recipe.name, 1, 5) ~= "bpsb-")) then
    recipe.hidden = true
    recipe.enabled = false
  else
    if (recipe.results) then
      for _, product in pairs(recipe.results) do
        if (product.name ~= nil) then
          if (product.type ~= "fluid") then
            local item = data.raw[product.type][product.name]
            if (item ~= nil) then
              remove_table(item.flags, "temphidden")
            end
          end
        end
      end
    end
  end
end

for _,type in pairs(item_types_list) do
  for _,item in pairs(data.raw[type] or {}) do
    if remove_table(item.flags, "temphidden") then
      item.flags["temphidden"] = nil
      item.hidden = true
	    item.subgroup = "hidden"
    end
  end
end
for _,fluid in pairs(data.raw.fluid) do
  if ((string.sub(fluid.name, 1, 8) ~= "nullius-") and
      ((fluid.order == nil) or
	  (string.sub(fluid.order, 1, 8) ~= "nullius-"))) then
    fluid.subgroup = "unused-fluid"
    fluid.hidden = true
  end
end

for _,type in pairs(building_types_list) do
  for _,entity in pairs(data.raw[type]) do
    if entity.next_upgrade ~= nil then
      local next_entity = data.raw[type][entity.next_upgrade]
      if (next_entity ~= nil) and next_entity.minable ~= nil then
        local item = data.raw.item[next_entity.minable.result]
        if (item ~= nil) and item.hidden then
          entity.next_upgrade = nil
        end
      end
    end
    if entity.minable ~= nil then
      local item = data.raw.item[entity.minable.result]
      if (item ~= nil) and item.hidden then
        entity.next_upgrade = nil
        entity.hidden = true
      end
    end
  end
end

for _,type in pairs(hide_entity_list) do
  for _,entity in pairs(data.raw[type]) do
    if ((string.sub(entity.name, 1, 8) ~= "nullius-") and
        ((entity.order == nil) or
	        (string.sub(entity.order, 1, 8) ~= "nullius-"))) then
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
  if ((string.sub(tech.name, 1, 8) ~= "nullius-") and
      ((tech.order == nil) or
      (string.sub(tech.order, 1, 8) ~= "nullius-"))) then
    tech.enabled = false
    tech.hidden = true
  end
end

for _, recipe in pairs(data.raw.recipe) do
  if (string.sub(recipe.name, 1, 8) ~= "nullius-") then
    if ((string.sub(recipe.name, 1, 13) == "fill-nullius-") or 
        (string.sub(recipe.name, 1, 14) == "empty-nullius-")) then
	  recipe.GCKI_ignore = true
	elseif (((recipe.order == nil) or
	    (string.sub(recipe.order, 1, 8) ~= "nullius-")) and
        (recipe.category ~= "ee-testing-tool") and
	    (string.sub(recipe.name, 1, 5) ~= "bpsb-")) then
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