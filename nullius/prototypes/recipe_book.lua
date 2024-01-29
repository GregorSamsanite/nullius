if (mods["RecipeBook"] and (recipe_book ~= nil) and
    (recipe_book.set_hidden ~= nil) and (recipe_book.set_group_with ~= nil)) then
local function hide_proto(proto)
  if (proto ~= nil) then
    recipe_book.set_hidden(proto, true)
  end
end

local function group_with(proto1, proto2)
  if ((proto1 ~= nil) and (proto2 ~= nil)) then
    recipe_book.set_group_with(proto1, proto2)
  end
end


group_with(data.raw.character.character, data.raw.item["nullius-android-1"])
group_with(data.raw.resource.coal, data.raw.item["nullius-coal"])
group_with(data.raw.lamp["nullius-lamp-1"], data.raw.item["small-lamp"])
group_with(data.raw.item["small-lamp"], data.raw.recipe["nullius-lamp-1a"])
group_with(data.raw.fluid["nullius-air"], data.raw.recipe["nullius-air-filtration"])
group_with(data.raw.item["nullius-canister"], data.raw.recipe["nullius-empty-canister"])
group_with(data.raw.item["rocket-fuel"], data.raw.recipe["nullius-rocket-fuel"])
group_with(data.raw.item["stone-brick"], data.raw.recipe["nullius-stone-block"])
group_with(data.raw.item["refined-concrete"], data.raw.recipe["nullius-reinforced-concrete"])
group_with(data.raw.item["refined-hazard-concrete"], data.raw.recipe["nullius-hazard-concrete"])
group_with(data.raw.resource["crude-oil"], data.raw.fluid["nullius-petroleum"])
group_with(data.raw.item["gate"], data.raw.recipe["nullius-gate"])
group_with(data.raw.item["stone-wall"], data.raw.recipe["nullius-wall"])
group_with(data.raw.item["teleporter"], data.raw.recipe["nullius-teleporter"])
group_with(data.raw.item["rail-chain-signal"], data.raw.recipe["nullius-chain-signal"])
group_with(data.raw.item["rail-signal"], data.raw.recipe["nullius-rail-signal"])
group_with(data.raw.item["ltn-combinator"], data.raw.recipe["nullius-ltn-combinator"])
group_with(data.raw.item["logistic-train-stop"], data.raw.recipe["nullius-logistic-train-stop"])
group_with(data.raw.item["fuel-train-stop"], data.raw.recipe["nullius-fuel-train-stop"])
group_with(data.raw.item["train-stop"], data.raw.recipe["nullius-train-stop"])
group_with(data.raw["rail-planner"]["rail"], data.raw.recipe["nullius-rail"])
group_with(data.raw.item["aai-signal-receiver"], data.raw.recipe["nullius-aai-signal-receiver"])
group_with(data.raw.item["aai-signal-sender"], data.raw.recipe["nullius-aai-signal-sender"])
group_with(data.raw.item["programmable-speaker"], data.raw.recipe["nullius-antenna"])
group_with(data.raw.item["factory-circuit-connector"], data.raw.recipe["nullius-factory-circuit-connector"])
group_with(data.raw["item-with-tags"]["factory-1"], data.raw.recipe["nullius-factory-1"])
group_with(data.raw["item-with-tags"]["factory-2"], data.raw.recipe["nullius-factory-2"])
group_with(data.raw["item-with-tags"]["factory-3"], data.raw.recipe["nullius-factory-3"])
group_with(data.raw.item["item-sensor"], data.raw.recipe["nullius-item-sensor"])
group_with(data.raw.item["crafting_combinator:recipe-combinator"], data.raw.recipe["nullius-recipe-combinator"])
group_with(data.raw.item["crafting_combinator:crafting-combinator"], data.raw.recipe["nullius-crafting-combinator"])
group_with(data.raw.item["power-switch"], data.raw.recipe["nullius-power-switch"])
group_with(data.raw.item["constant-combinator"], data.raw.recipe["nullius-memory-circuit"])
group_with(data.raw.item["arithmetic-combinator"], data.raw.recipe["nullius-arithmetic-circuit"])
group_with(data.raw.item["decider-combinator"], data.raw.recipe["nullius-logic-circuit"])
group_with(data.raw.item["red-wire"], data.raw.recipe["nullius-red-wire"])
group_with(data.raw.item["green-wire"], data.raw.recipe["nullius-green-wire"])
group_with(data.raw.item["substation"], data.raw.recipe["nullius-substation-1"])
group_with(data.raw.item["big-electric-pole"], data.raw.recipe["nullius-pylon-1"])
group_with(data.raw.item["medium-electric-pole"], data.raw.recipe["nullius-power-pole-2"])
group_with(data.raw.item["small-electric-pole"], data.raw.recipe["nullius-power-pole-1"])
group_with(data.raw.item["splitter"], data.raw.recipe["nullius-splitter-1"])
group_with(data.raw.item["fast-splitter"], data.raw.recipe["nullius-splitter-2"])
group_with(data.raw.item["express-splitter"], data.raw.recipe["nullius-splitter-3"])
group_with(data.raw.item["ultimate-splitter"], data.raw.recipe["nullius-splitter-4"])
group_with(data.raw.item["underground-belt"], data.raw.recipe["nullius-underground-belt-1"])
group_with(data.raw.item["fast-underground-belt"], data.raw.recipe["nullius-underground-belt-2"])
group_with(data.raw.item["express-underground-belt"], data.raw.recipe["nullius-underground-belt-3"])
group_with(data.raw.item["ultimate-underground-belt"], data.raw.recipe["nullius-underground-belt-4"])
group_with(data.raw.item["transport-belt"], data.raw.recipe["nullius-conveyor-belt-1"])
group_with(data.raw.item["fast-transport-belt"], data.raw.recipe["nullius-conveyor-belt-2"])
group_with(data.raw.item["express-transport-belt"], data.raw.recipe["nullius-conveyor-belt-3"])
group_with(data.raw.item["ultimate-transport-belt"], data.raw.recipe["nullius-conveyor-belt-4"])
group_with(data.raw.item["railloader"], data.raw.recipe["nullius-rail-loader"])
group_with(data.raw.item["railunloader"], data.raw.recipe["nullius-rail-unloader"])
group_with(data.raw.item["aai-basic-loader"], data.raw.recipe["nullius-loader-1"])
group_with(data.raw.item["aai-loader"], data.raw.recipe["nullius-loader-2"])
group_with(data.raw.item["aai-fast-loader"], data.raw.recipe["nullius-loader-3"])
group_with(data.raw.item["aai-express-loader"], data.raw.recipe["nullius-loader-4"])
group_with(data.raw.item["aai-ultimate-loader"], data.raw.recipe["nullius-loader-5"])
group_with(data.raw.item["inserter"], data.raw.recipe["nullius-inserter-1"])
group_with(data.raw.item["turbo-inserter"], data.raw.recipe["nullius-inserter-2"])
group_with(data.raw.item["stack-inserter"], data.raw.recipe["nullius-inserter-3"])
group_with(data.raw.item["express-stack-inserter"], data.raw.recipe["nullius-inserter-4"])
group_with(data.raw.item["turbo-filter-inserter"], data.raw.recipe["nullius-filter-inserter-2"])
group_with(data.raw.item["stack-filter-inserter"], data.raw.recipe["nullius-filter-inserter-3"])
group_with(data.raw.item["express-stack-filter-inserter"], data.raw.recipe["nullius-filter-inserter-4"])
group_with(data.raw.item["storehouse-basic"], data.raw.recipe["nullius-storehouse"])
group_with(data.raw.item["warehouse-basic"], data.raw.recipe["nullius-warehouse"])
group_with(data.raw.item["storehouse-storage"], data.raw.recipe["nullius-storehouse-storage"])
group_with(data.raw.item["warehouse-storage"], data.raw.recipe["nullius-warehouse-storage"])
group_with(data.raw.item["storehouse-requester"], data.raw.recipe["nullius-storehouse-requester"])
group_with(data.raw.item["warehouse-requester"], data.raw.recipe["nullius-warehouse-requester"])
group_with(data.raw.item["storehouse-buffer"], data.raw.recipe["nullius-storehouse-buffer"])
group_with(data.raw.item["warehouse-buffer"], data.raw.recipe["nullius-warehouse-buffer"])
group_with(data.raw.item["storehouse-passive-provider"], data.raw.recipe["nullius-storehouse-passive-provider"])
group_with(data.raw.item["warehouse-passive-provider"], data.raw.recipe["nullius-warehouse-passive-provider"])
group_with(data.raw.item["storehouse-active-provider"], data.raw.recipe["nullius-storehouse-active-provider"])
group_with(data.raw.item["warehouse-active-provider"], data.raw.recipe["nullius-warehouse-active-provider"])
group_with(data.raw.item["logistic-chest-storage"], data.raw.recipe["nullius-small-storage-chest-2"])
group_with(data.raw.item["logistic-chest-passive-provider"], data.raw.recipe["nullius-small-supply-chest-2"])
group_with(data.raw.item["logistic-chest-requester"], data.raw.recipe["nullius-small-demand-chest-2"])
group_with(data.raw.item["logistic-chest-buffer"], data.raw.recipe["nullius-small-buffer-chest-2"])
group_with(data.raw.item["logistic-chest-active-provider"], data.raw.recipe["nullius-small-dispatch-chest-2"])
group_with(data.raw.item["wooden-chest"], data.raw.recipe["nullius-small-chest-1"])
group_with(data.raw.item["iron-chest"], data.raw.recipe["nullius-small-chest-2"])
group_with(data.raw.item["steel-chest"], data.raw.recipe["nullius-small-chest-3"])

group_with(data.raw.item["nullius-gravel"], data.raw.recipe["nullius-crushed-stone"])
group_with(data.raw.item["nullius-sand"], data.raw.recipe["nullius-crushed-sandstone"])
group_with(data.raw.item["nullius-aluminum-wire"], data.raw.recipe["nullius-aluminum-wire-1"])
group_with(data.raw.item["nullius-aluminum-sheet"], data.raw.recipe["nullius-aluminum-sheet-1"])
group_with(data.raw.item["nullius-aluminum-plate"], data.raw.recipe["nullius-aluminum-plate-1"])
group_with(data.raw.item["nullius-aluminum-rod"], data.raw.recipe["nullius-aluminum-rod-1"])
group_with(data.raw.item["nullius-iron-wire"], data.raw.recipe["nullius-iron-wire-1"])
group_with(data.raw.item["nullius-iron-sheet"], data.raw.recipe["nullius-iron-sheet-1"])
group_with(data.raw.item["nullius-iron-plate"], data.raw.recipe["nullius-iron-plate-1"])
group_with(data.raw.item["nullius-iron-rod"], data.raw.recipe["nullius-iron-rod-1"])
group_with(data.raw.item["nullius-steel-sheet"], data.raw.recipe["nullius-steel-sheet-1"])
group_with(data.raw.item["nullius-steel-plate"], data.raw.recipe["nullius-steel-plate-1"])
group_with(data.raw.item["nullius-steel-rod"], data.raw.recipe["nullius-steel-rod-1"])
group_with(data.raw.item["shuttle-lite"], data.raw.recipe["nullius-shuttle-lite"])
group_with(data.raw.item["railway-motor-car-base"], data.raw.recipe["nullius-railway-motorcar-1"])
group_with(data.raw.item["railway-motor-car-nuclear"], data.raw.recipe["nullius-railway-motorcar-2"])
group_with(data.raw["repair-tool"]["repair-pack"], data.raw.recipe["nullius-repair-pack"])
group_with(data.raw.item["rocket-booster"], data.raw.recipe["nullius-companion-fuel"])
group_with(data.raw.item["logistic-chest-botUpgrader"], data.raw.recipe["nullius-bot-upgrade-chest"])
group_with(data.raw.item["blueprint-deployer"], data.raw.recipe["nullius-blueprint-deployer"])
group_with(data.raw.item["companion-shield-equipment"], data.raw.recipe["nullius-companion-shield-equipment"])
group_with(data.raw.item["companion-defense-equipment"], data.raw.recipe["nullius-companion-defense-equipment"])
group_with(data.raw.item["companion-roboport-equipment"], data.raw.recipe["nullius-companion-roboport-equipment"])
group_with(data.raw.item["companion-reactor-equipment"], data.raw.recipe["nullius-companion-reactor-equipment"])
group_with(data.raw.item["companion"], data.raw.recipe["nullius-companion"])
group_with(data.raw.item["80-overflow-valve"], data.raw.recipe["nullius-adjustable-relief-valve"])
group_with(data.raw.item["80-top-up-valve"], data.raw.recipe["nullius-adjustable-top-up-valve"])
group_with(data.raw.item["pump"], data.raw.recipe["nullius-pump-3"])
group_with(data.raw.item["underground-mini-pump"], data.raw.recipe["nullius-underground-pump"])
group_with(data.raw.item["pipe-to-ground"], data.raw.recipe["nullius-underground-pipe-1"])
group_with(data.raw.item["storage-tank"], data.raw.recipe["nullius-medium-tank-1"])
group_with(data.raw["electric-energy-interface"]["nullius-wind-build-1"],
    data.raw.item["nullius-wind-turbine-1"])
group_with(data.raw["electric-energy-interface"]["nullius-wind-build-2"],
    data.raw.item["nullius-wind-turbine-2"])
group_with(data.raw["electric-energy-interface"]["nullius-wind-build-3"],
    data.raw.item["nullius-wind-turbine-3"])
group_with(data.raw.item["jetpack-1"], data.raw.recipe["nullius-jetpack-1"])
group_with(data.raw.item["jetpack-2"], data.raw.recipe["nullius-jetpack-2"])
group_with(data.raw.item["jetpack-3"], data.raw.recipe["nullius-jetpack-3"])
group_with(data.raw.item["jetpack-4"], data.raw.recipe["nullius-jetpack-4"])
group_with(data.raw.item["recursive-blueprints-scanner"], data.raw.recipe["nullius-recursive-blueprints-scanner"])
group_with(data.raw["storage-tank"]["nullius-thermal-tank-build-1"], data.raw.item["nullius-thermal-tank-1"])
group_with(data.raw["storage-tank"]["nullius-thermal-tank-build-2"], data.raw.item["nullius-thermal-tank-2"])
group_with(data.raw["storage-tank"]["nullius-thermal-tank-build-3"], data.raw.item["nullius-thermal-tank-3"])
group_with(data.raw["mining-drill"]["nullius-geothermal-build-1"], data.raw.item["nullius-geothermal-plant-1"])
group_with(data.raw["mining-drill"]["nullius-geothermal-build-2"], data.raw.item["nullius-geothermal-plant-2"])
group_with(data.raw["mining-drill"]["nullius-geothermal-build-3"], data.raw.item["nullius-geothermal-plant-3"])
group_with(data.raw.item["chcs-heliostat-mirror"], data.raw.recipe["nullius-heliostat-mirror"])
group_with(data.raw.item["chcs-solar-power-tower"], data.raw.recipe["nullius-solar-tower"])

group_with(data.raw["battery-equipment"]["nullius-battery-1"], data.raw.item["nullius-uncharged-battery-1"])
group_with(data.raw["battery-equipment"]["nullius-battery-2"], data.raw.item["nullius-uncharged-battery-2"])
group_with(data.raw["battery-equipment"]["nullius-battery-3"], data.raw.item["nullius-uncharged-battery-3"])
group_with(data.raw["battery-equipment"]["nullius-charged-battery-1"], data.raw.item["nullius-battery-1"])
group_with(data.raw["battery-equipment"]["nullius-charged-battery-2"], data.raw.item["nullius-battery-2"])
group_with(data.raw["battery-equipment"]["nullius-charged-battery-3"], data.raw.item["nullius-battery-3"])
group_with(data.raw["movement-bonus-equipment"]["nullius-upgrade-jump-boots"], data.raw.item["nullius-jump-boots"])
group_with(data.raw["movement-bonus-equipment"]["nullius-upgrade-quadrupedal-adaptation-1"],
    data.raw.item["nullius-quadrupedal-adaptation-1"])
group_with(data.raw["movement-bonus-equipment"]["nullius-upgrade-quadrupedal-adaptation-2"],
    data.raw.item["nullius-quadrupedal-adaptation-2"])
group_with(data.raw["movement-bonus-equipment"]["nullius-upgrade-quadrupedal-adaptation-3"],
    data.raw.item["nullius-quadrupedal-adaptation-3"])
group_with(data.raw["movement-bonus-equipment"]["nullius-upgrade-quadrupedal-adaptation-4"],
    data.raw.item["nullius-quadrupedal-adaptation-4"])
group_with(data.raw["battery-equipment"]["nullius-upgrade-small-cargo-pod-1"],
	data.raw.item["nullius-small-cargo-pod-1"])
group_with(data.raw["battery-equipment"]["nullius-upgrade-small-cargo-pod-2"],
	data.raw.item["nullius-small-cargo-pod-2"])
group_with(data.raw["battery-equipment"]["nullius-upgrade-large-cargo-pod-1"],
	data.raw.item["nullius-large-cargo-pod-1"])
group_with(data.raw["battery-equipment"]["nullius-upgrade-large-cargo-pod-2"],
	data.raw.item["nullius-large-cargo-pod-2"])
group_with(data.raw["battery-equipment"]["nullius-upgrade-large-cargo-pod-3"],
	data.raw.item["nullius-large-cargo-pod-3"])
group_with(data.raw["active-defense-equipment"]["nullius-upgrade-trash-compactor"],
	data.raw.item["nullius-trash-compactor"])
group_with(data.raw["active-defense-equipment"]["nullius-upgrade-trash-compactor-2"],
	data.raw.item["nullius-trash-compactor-2"])
group_with(data.raw["battery-equipment"]["nullius-upgrade-armor-plate"],
	data.raw.item["nullius-armor-plate"])
group_with(data.raw["active-defense-equipment"]["nullius-upgrade-fabrication-tool-1"],
	data.raw.item["nullius-fabrication-tool-1"])
group_with(data.raw["active-defense-equipment"]["nullius-upgrade-fabrication-tool-2"],
	data.raw.item["nullius-fabrication-tool-2"])
group_with(data.raw["active-defense-equipment"]["nullius-upgrade-fabrication-tool-3"],
	data.raw.item["nullius-fabrication-tool-3"])
group_with(data.raw["active-defense-equipment"]["nullius-upgrade-mining-tool-1"],
	data.raw.item["nullius-mining-tool-1"])
group_with(data.raw["active-defense-equipment"]["nullius-upgrade-mining-tool-2"],
	data.raw.item["nullius-mining-tool-2"])
group_with(data.raw["active-defense-equipment"]["nullius-upgrade-multi-tool-1"],
	data.raw.item["nullius-multi-tool-1"])
group_with(data.raw["active-defense-equipment"]["nullius-upgrade-multi-tool-2"],
	data.raw.item["nullius-multi-tool-2"])
group_with(data.raw["active-defense-equipment"]["nullius-upgrade-multi-tool-3"],
	data.raw.item["nullius-multi-tool-3"])
group_with(data.raw["battery-equipment"]["nullius-upgrade-shackle"],
	data.raw.item["nullius-shackle"])
group_with(data.raw["active-defense-equipment"]["nullius-upgrade-stabilizer-1"],
	data.raw.item["nullius-stabilizer-1"])
group_with(data.raw["active-defense-equipment"]["nullius-upgrade-stabilizer-2"],
	data.raw.item["nullius-stabilizer-2"])
group_with(data.raw["active-defense-equipment"]["nullius-upgrade-telekinesis-field-1"],
	data.raw.item["nullius-telekinesis-field-1"])
group_with(data.raw["active-defense-equipment"]["nullius-upgrade-telekinesis-field-2"],
	data.raw.item["nullius-telekinesis-field-2"])
group_with(data.raw["active-defense-equipment"]["nullius-upgrade-telekinesis-field-3"],
	data.raw.item["nullius-telekinesis-field-3"])
group_with(data.raw["active-defense-equipment"]["nullius-upgrade-coprocessor-speed-1"],
	data.raw.item["nullius-coprocessor-speed-1"])
group_with(data.raw["active-defense-equipment"]["nullius-upgrade-coprocessor-speed-2"],
	data.raw.item["nullius-coprocessor-speed-2"])
group_with(data.raw["active-defense-equipment"]["nullius-upgrade-coprocessor-speed-3"],
	data.raw.item["nullius-coprocessor-speed-3"])
group_with(data.raw["active-defense-equipment"]["nullius-upgrade-coprocessor-productivity-1"],
	data.raw.item["nullius-coprocessor-productivity-1"])
group_with(data.raw["active-defense-equipment"]["nullius-upgrade-coprocessor-productivity-2"],
	data.raw.item["nullius-coprocessor-productivity-2"])
group_with(data.raw["active-defense-equipment"]["nullius-upgrade-coprocessor-productivity-3"],
	data.raw.item["nullius-coprocessor-productivity-3"])
group_with(data.raw["generator-equipment"]["nullius-upgrade-coprocessor-efficiency-1"],
	data.raw.item["nullius-coprocessor-efficiency-1"])
group_with(data.raw["generator-equipment"]["nullius-upgrade-coprocessor-efficiency-2"],
	data.raw.item["nullius-coprocessor-efficiency-2"])
group_with(data.raw["generator-equipment"]["nullius-upgrade-coprocessor-efficiency-3"],
	data.raw.item["nullius-coprocessor-efficiency-3"])
group_with(data.raw["active-defense-equipment"]["nullius-upgrade-coprocessor-quantum"],
	data.raw.item["nullius-coprocessor-quantum"])

group_with(data.raw.furnace["nullius-turbine-open-standard-1"], data.raw.item["nullius-turbine-open-1"])
group_with(data.raw.furnace["nullius-turbine-open-standard-2"], data.raw.item["nullius-turbine-open-2"])
group_with(data.raw.furnace["nullius-turbine-open-standard-3"], data.raw.item["nullius-turbine-open-3"])
group_with(data.raw.furnace["nullius-turbine-closed-standard-1"], data.raw.item["nullius-turbine-closed-1"])
group_with(data.raw.furnace["nullius-turbine-closed-standard-2"], data.raw.item["nullius-turbine-closed-2"])
group_with(data.raw.furnace["nullius-turbine-closed-standard-3"], data.raw.item["nullius-turbine-closed-3"])
group_with(data.raw["assembling-machine"]["nullius-priority-compressor-1"], data.raw.item["nullius-compressor-1"])
group_with(data.raw["assembling-machine"]["nullius-priority-compressor-2"], data.raw.item["nullius-compressor-2"])
group_with(data.raw["assembling-machine"]["nullius-priority-compressor-3"], data.raw.item["nullius-compressor-3"])
group_with(data.raw["assembling-machine"]["nullius-priority-electrolyzer-1"], data.raw.item["nullius-electrolyzer-1"])
group_with(data.raw["assembling-machine"]["nullius-priority-electrolyzer-2"], data.raw.item["nullius-electrolyzer-2"])
group_with(data.raw["assembling-machine"]["nullius-priority-electrolyzer-3"], data.raw.item["nullius-electrolyzer-3"])

group_with(data.raw.item["one-to-one-forward-t2-pipe"], data.raw.recipe["nullius-surface-two-way-junction-1"])
group_with(data.raw.item["one-to-two-perpendicular-t2-pipe"], data.raw.recipe["nullius-surface-three-way-junction-1"])
group_with(data.raw.item["one-to-three-forward-t2-pipe"], data.raw.recipe["nullius-surface-four-way-junction-1"])
group_with(data.raw.item["underground-i-t2-pipe"], data.raw.recipe["nullius-underground-straight-junction-1"])
group_with(data.raw.item["underground-L-t2-pipe"], data.raw.recipe["nullius-underground-elbow-junction-1"])
group_with(data.raw.item["underground-t-t2-pipe"], data.raw.recipe["nullius-underground-three-way-junction-1"])
group_with(data.raw.item["one-to-one-forward-t3-pipe"], data.raw.recipe["nullius-surface-two-way-junction-2"])
group_with(data.raw.item["one-to-two-perpendicular-t3-pipe"], data.raw.recipe["nullius-surface-three-way-junction-2"])
group_with(data.raw.item["one-to-three-forward-t3-pipe"], data.raw.recipe["nullius-surface-four-way-junction-2"])
group_with(data.raw.item["underground-i-t3-pipe"], data.raw.recipe["nullius-underground-straight-junction-2"])
group_with(data.raw.item["underground-L-t3-pipe"], data.raw.recipe["nullius-underground-elbow-junction-2"])
group_with(data.raw.item["underground-t-t3-pipe"], data.raw.recipe["nullius-underground-three-way-junction-2"])
group_with(data.raw.item["one-to-one-forward-pipe"], data.raw.recipe["nullius-surface-two-way-junction-3"])
group_with(data.raw.item["one-to-two-perpendicular-pipe"], data.raw.recipe["nullius-surface-three-way-junction-3"])
group_with(data.raw.item["one-to-three-forward-pipe"], data.raw.recipe["nullius-surface-four-way-junction-3"])
group_with(data.raw.item["one-to-four-pipe"], data.raw.recipe["nullius-surface-five-way-junction-3"])
group_with(data.raw.item["underground-i-pipe"], data.raw.recipe["nullius-underground-straight-junction-3"])
group_with(data.raw.item["underground-L-pipe"], data.raw.recipe["nullius-underground-elbow-junction-3"])
group_with(data.raw.item["underground-t-pipe"], data.raw.recipe["nullius-underground-three-way-junction-3"])
group_with(data.raw.item["underground-cross-pipe"], data.raw.recipe["nullius-underground-four-way-junction-3"])

group_with(data.raw.item["duct-small"], data.raw.recipe["nullius-duct-small"])
group_with(data.raw.item["duct-curve"], data.raw.recipe["nullius-duct-curve"])
group_with(data.raw.item["duct-t-junction"], data.raw.recipe["nullius-duct-t-junction"])
group_with(data.raw.item["duct-cross"], data.raw.recipe["nullius-duct-cross"])
group_with(data.raw.item["duct-end-point-outtake"], data.raw.recipe["nullius-duct-end-point-outtake"])
group_with(data.raw.item["duct-end-point-intake"], data.raw.recipe["nullius-duct-end-point-intake"])
group_with(data.raw.item["duct"], data.raw.recipe["nullius-duct"])
group_with(data.raw.item["duct-long"], data.raw.recipe["nullius-duct-long"])
group_with(data.raw.item["duct-underground"], data.raw.recipe["nullius-duct-underground"])
group_with(data.raw.item["non-return-duct"], data.raw.recipe["nullius-non-return-duct"])

group_with(data.raw.item["iron-display-small"], data.raw.recipe["nullius-display-plate-small-steel"])
group_with(data.raw.item["iron-display-medium"], data.raw.recipe["nullius-display-plate-medium-steel"])
group_with(data.raw.item["iron-display"], data.raw.recipe["nullius-display-plate-large-steel"])
group_with(data.raw.item["steel-display-small"], data.raw.recipe["nullius-display-plate-small-aluminum"])
group_with(data.raw.item["steel-display-medium"], data.raw.recipe["nullius-display-plate-medium-aluminum"])
group_with(data.raw.item["steel-display"], data.raw.recipe["nullius-display-plate-large-aluminum"])
group_with(data.raw.item["copper-display-small"], data.raw.recipe["nullius-display-plate-small-plastic"])
group_with(data.raw.item["copper-display-medium"], data.raw.recipe["nullius-display-plate-medium-plastic"])
group_with(data.raw.item["copper-display"], data.raw.recipe["nullius-display-plate-large-plastic"])
group_with(data.raw.item["SNTD-nixie-tube"], data.raw.recipe["nullius-SNTD-nixie-tube"])
group_with(data.raw.item["SNTD-nixie-tube-small"], data.raw.recipe["nullius-SNTD-nixie-tube-small"])
group_with(data.raw.item["SNTD-old-nixie-tube"], data.raw.recipe["nullius-SNTD-old-nixie-tube"])
group_with(data.raw.item["hs_holo_sign"], data.raw.recipe["nullius-holographic-sign"])


hide_proto(data.raw.inserter["red-inserter"])
hide_proto(data.raw["offshore-pump"]["sea-pump-placeable"])
hide_proto(data.raw.resource["sea-pump-resource"])
hide_proto(data.raw.resource["sea-pump-resource"])
hide_proto(data.raw["construction-robot"]["construction-robot"])
hide_proto(data.raw.item["construction-robot"])
hide_proto(data.raw.pump["railloader-placement-proxy"])
hide_proto(data.raw.pump["railunloader-placement-proxy"])

for name, tree in pairs(data.raw.tree) do
  hide_proto(tree)
end
for _,rock in pairs(data.raw["simple-entity"]) do
  local prefix = string.sub(rock.name, 1, 5)
  if ((prefix == "rock-") or (prefix == "sand-")) then
    hide_proto(rock)
  end
end
hide_proto(data.raw["simple-entity"]["angels-crystal-rock"])

end
