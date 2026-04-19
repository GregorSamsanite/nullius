require("prototypes.override_final")
require("prototypes.override_final_only")
require("prototypes.override_mod_final")
require("prototypes.item.module_limitation")
require("prototypes.item.box_icons")
require("legacyMirror")

for _, recipe in pairs(data.raw.recipe) do
    if recipe.GCKI_ignore ~= nil then
        recipe.GCKI_ignore = nil
    end
end

require("clutterpedia")

if settings.startup["nullius-hide-recipe-signals"].value then
    for _,recipe in pairs(data.raw.recipe) do
        --recipe.hide_from_signal_gui = true
        if recipe.hide_from_signal_gui == false then
            recipe.hide_from_signal_gui = nil
        end
    end
else
    for _,recipe in pairs(data.raw.recipe) do
        if string.sub(recipe.name, 1, 14) == "nullius-boxed-" or string.sub(recipe.name, 1, 14) == "nullius-unbox-" then
            recipe.hide_from_signal_gui = false
        end
    end
end

data.raw["utility-constants"]["default"].main_menu_simulations = require("menu-simulations.menu-simulations")
