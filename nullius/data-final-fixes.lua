require("prototypes.override_final")
require("prototypes.override_final_only")
require("prototypes.override_mod_final")
require("prototypes.item.module_limitation")
require("prototypes.item.box_icons")
require("legacyMirror")

if mods["Transport_Drones"] or mods["Transport_Drones_Meglinge_Fork"] then
    local collision_mask_util = require("collision-mask-util")

    -- Mirrored entities should keep the same collision mask as their base entity,
    -- especially after other mods modify collision layers before legacyMirror runs.
    for _, type_name in pairs({"assembling-machine", "furnace"}) do
        for _, prototype in pairs(data.raw[type_name] or {}) do
            local base_name = string.gsub(prototype.name, "^nullius%-mirror%-", "nullius-", 1)
            if base_name ~= prototype.name then
                local base = data.raw[type_name][base_name]
                if base then
                    prototype.collision_mask = util.table.deepcopy(collision_mask_util.get_mask(base))
                end
            end
        end
    end
end

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
