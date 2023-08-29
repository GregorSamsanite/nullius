local ICONPATH = "__nullius__/graphics/icons/"
local ENTITYPATH = "__nullius__/graphics/entity/"

nullius_productivity_modules = {
  "nullius-yield-module-1",
  "nullius-yield-module-2",
  "nullius-yield-module-3",
  "nullius-yield-module-4",
  "nullius-productivity-module-1",
  "nullius-productivity-module-2",
  "nullius-productivity-module-3"
}

nullius_non_productivity_categories = {
  ["nullius-electrolysis"] = true,
  ["nullius-gas-void"] = true,
  ["nullius-liquid-void"] = true,
  ["nullius-power-sink"] = true,
  ["nullius-barrel"] = true,
  ["nullius-unbarrel"] = true,
  ["air-filtration"] = true,
  ["compression"] = true,
  ["decompression"] = true,
  ["water-pumping"] = true,
  ["seawater-pumping"] = true,
  ["combustion"] = true,
  ["boiling"] = true,
  ["pressure-boiling"] = true,
  ["turbine-open"] = true,
  ["turbine-closed"] = true
}


for _,recipe in pairs(data.raw.recipe) do
  if (((string.sub(recipe.name, 1, 8) == "nullius-") or ((recipe.order ~= nil) and
        (string.sub(recipe.order, 1, 8) == "nullius-"))) and
      (recipe.no_productivity ~= true) and
      (nullius_non_productivity_categories[recipe.category] ~= true)) then
    for _,modname in pairs(nullius_productivity_modules) do
      table.insert(data.raw.module[modname].limitation, recipe.name)
    end
  end
end
