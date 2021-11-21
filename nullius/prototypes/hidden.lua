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
  "fluid-turret"
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
  "mining-tool",
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
  for _,item in pairs(data.raw[type]) do
    if (not table_contains(item.flags, "hidden") and (string.sub(item.name, 1, 8) ~= "nullius-")) then
      if (item.flags == nil) then
        item.flags = {}
      end
      table.insert(item.flags,"temphidden")
    end
  end
end

for _, recipe in pairs(data.raw.recipe) do
  if ((string.sub(recipe.name, 1, 8) ~= "nullius-") and
      ((recipe.order == nil) or (string.sub(recipe.order, 1, 8) ~= "nullius-")) and
      (string.sub(recipe.name, 1, 13) ~= "fill-nullius-") and
      (string.sub(recipe.name, 1, 14) ~= "empty-nullius-")) then
    recipe.hidden = true
    recipe.enabled = false
    if (recipe.normal ~= nil) then
      recipe.normal.enabled = true
      recipe.normal.hidden = true
    end
    if (recipe.expensive ~= nil) then
      recipe.expensive.enabled = true
      recipe.expensive.hidden = true
    end
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
    if (recipe.result ~= nil) then
      for _,type in pairs(item_types_list) do
        local item = data.raw[type][recipe.result]
        if (item ~= nil) then
          remove_table(item.flags, "temphidden")
        end
      end
    end
  end
end

for _,type in pairs(item_types_list) do
  for _,item in pairs(data.raw[type]) do
    if remove_table(item.flags, "temphidden") then
      item.flags["temphidden"] = nil
      table.insert(item.flags,"hidden")
    end
  end
end
for _,fluid in pairs(data.raw.fluid) do
  if (string.sub(fluid.name, 1, 8) ~= "nullius-") then
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
        if (item ~= nil) and table_contains(item.flags, "hidden") then
          entity.next_upgrade = nil
        end
      end
    end
    if entity.minable ~= nil then
      local item = data.raw.item[entity.minable.result]
      if (item ~= nil) and table_contains(item.flags, "hidden") then
        entity.next_upgrade = nil
        if (entity.flags == nil) then
          entity.flags = {"hidden"}
        elseif (not table_contains(entity.flags, "hidden")) then
          table.insert(entity.flags, "hidden")
        end
      end
    end
  end
end

for _,type in pairs(hide_entity_list) do
  for _,entity in pairs(data.raw[type]) do
    if (string.sub(entity.name, 1, 8) ~= "nullius-") then
      if (entity.flags == nil) then
        entity.flags = {}
      end
      table.insert(entity.flags,"hidden")
    end
  end
end

remove_table(data.raw.item["iron-ore"].flags, "hidden")
remove_table(data.raw.item["copper-ore"].flags, "hidden")
remove_table(data.raw.item["uranium-ore"].flags, "hidden")

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
  if ((string.sub(recipe.name, 1, 8) ~= "nullius-") and
      ((recipe.order == nil) or (string.sub(recipe.order, 1, 8) ~= "nullius-")) and
      (string.sub(recipe.name, 1, 13) ~= "fill-nullius-") and
      (string.sub(recipe.name, 1, 14) ~= "empty-nullius-")) then
    recipe.enabled = false
  end
end
