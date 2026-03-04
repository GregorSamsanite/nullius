if mods["nullius"] then
local subgroup = "railway"
if mods["LogisticTrainNetwork"] then
  subgroup = "storage"
end
local item_supplier = data.raw.item["tu-supplier"]
local item_receiver = data.raw.item["tu-receiver"]
item_supplier.subgroup = subgroup
item_receiver.subgroup = subgroup
item_supplier.order = "nullius-tb"
item_receiver.order = "nullius-tc"

local recipe_supplier = data.raw.recipe["tu-supplier"]
local recipe_receiver = data.raw.recipe["tu-receiver"]
recipe_supplier.category = "medium-crafting"
recipe_receiver.category = "medium-crafting"
recipe_supplier.order = item_supplier.order
recipe_receiver.order = item_receiver.order
recipe_supplier.always_show_made_in = true
recipe_receiver.always_show_made_in = true
recipe_supplier.ingredients = {
  {type = "item", name = "nullius-large-supply-chest-1", amount = 1},
  {type = "item", name = "nullius-relay-2", amount = 1},
  {type = "item", name = "nullius-construction-bot-2", amount = 1}
}
recipe_receiver.ingredients = {
  {type = "item", name = "nullius-large-demand-chest-1", amount = 1},
  {type = "item", name = "rail-chain-signal", amount = 1}
}

local tech = data.raw.technology["tu-rail-modernization"]
tech.order = "nullius-en"
tech.prerequisites = 
    { "nullius-personal-transportation-2", "nullius-broadcasting-2" }
tech.unit = {
  count = 800,
  ingredients = {
    {"nullius-mechanical-pack", 1}, {"nullius-electrical-pack", 1}
  },
  time = 35
}
end
