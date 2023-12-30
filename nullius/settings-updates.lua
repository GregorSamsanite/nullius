if data.raw['bool-setting']['bobmods-logistics-roboportrecipeupdate'] then
   data.raw['bool-setting']['bobmods-logistics-roboportrecipeupdate'].hidden = true
   data.raw['bool-setting']['bobmods-logistics-roboportrecipeupdate'].forced_value = true
end
if data.raw['bool-setting']['bobmods-logistics-flyingrobotframes'] then
   data.raw['bool-setting']['bobmods-logistics-flyingrobotframes'].hidden = true
   data.raw['bool-setting']['bobmods-logistics-flyingrobotframes'].forced_value = true
end
if data.raw['bool-setting']['bobmods-logistics-robotparts'] then
   data.raw['bool-setting']['bobmods-logistics-robotparts'].hidden = true
   data.raw['bool-setting']['bobmods-logistics-robotparts'].forced_value = true
end
if data.raw['bool-setting']['bobmods-logistics-robotrequireprevious'] then
   data.raw['bool-setting']['bobmods-logistics-robotrequireprevious'].hidden = true
   data.raw['bool-setting']['bobmods-logistics-robotrequireprevious'].forced_value = true
end
if data.raw['bool-setting']['bobmods-logistics-disableroboports'] then
   data.raw['bool-setting']['bobmods-logistics-disableroboports'].hidden = true
   data.raw['bool-setting']['bobmods-logistics-disableroboports'].forced_value = false
end
if data.raw['bool-setting']['bobmods-logistics-drainlessinserters'] then
   data.raw['bool-setting']['bobmods-logistics-drainlessinserters'].hidden = true
   data.raw['bool-setting']['bobmods-logistics-drainlessinserters'].forced_value = false
end
if data.raw['bool-setting']['bobmods-logistics-inserteroverhaul'] then
   data.raw['bool-setting']['bobmods-logistics-inserteroverhaul'].hidden = true
   data.raw['bool-setting']['bobmods-logistics-inserteroverhaul'].forced_value = true
end
if data.raw['bool-setting']['bobmods-logistics-inserterrequireprevious'] then
   data.raw['bool-setting']['bobmods-logistics-inserterrequireprevious'].hidden = true
   data.raw['bool-setting']['bobmods-logistics-inserterrequireprevious'].forced_value = true
end
if data.raw['bool-setting']['bobmods-logistics-beltoverhaul'] then
   data.raw['bool-setting']['bobmods-logistics-beltoverhaul'].hidden = true
   data.raw['bool-setting']['bobmods-logistics-beltoverhaul'].forced_value = true
end
if data.raw['bool-setting']['bobmods-logistics-beltoverhaulspeed'] then
   data.raw['bool-setting']['bobmods-logistics-beltoverhaulspeed'].hidden = true
   data.raw['bool-setting']['bobmods-logistics-beltoverhaulspeed'].forced_value = false
end
if data.raw['bool-setting']['bobmods-logistics-beltrequireprevious'] then
   data.raw['bool-setting']['bobmods-logistics-beltrequireprevious'].hidden = true
   data.raw['bool-setting']['bobmods-logistics-beltrequireprevious'].forced_value = true
end
if data.raw['bool-setting']['bobmods-logistics-ugdistanceoverhaul'] then
   data.raw['bool-setting']['bobmods-logistics-ugdistanceoverhaul'].hidden = true
   data.raw['bool-setting']['bobmods-logistics-ugdistanceoverhaul'].forced_value = true
end
if data.raw['bool-setting']['bobmods-logistics-trains'] then
   data.raw['bool-setting']['bobmods-logistics-trains'].hidden = true
   data.raw['bool-setting']['bobmods-logistics-trains'].forced_value = true
end

if data.raw['double-setting']['bobmods-logistics-beltspeedperlevel'] then
   data.raw['double-setting']['bobmods-logistics-beltspeedperlevel'].hidden = true
   data.raw['double-setting']['bobmods-logistics-beltspeedperlevel'].allowed_values = {15}
end
if data.raw['int-setting']['bobmods-logistics-beltstarting'] then
   data.raw['int-setting']['bobmods-logistics-beltstarting'].hidden = true
   data.raw['int-setting']['bobmods-logistics-beltstarting'].allowed_values = {3}
end

if data.raw['int-setting']['bobmods-logistics-beltperlevel'] then
   data.raw['int-setting']['bobmods-logistics-beltperlevel'].hidden = true
   data.raw['int-setting']['bobmods-logistics-beltperlevel'].allowed_values = {4}
end
if data.raw['int-setting']['bobmods-logistics-pipestarting'] then
   data.raw['int-setting']['bobmods-logistics-pipestarting'].hidden = true
   data.raw['int-setting']['bobmods-logistics-pipestarting'].allowed_values = {11}
end
if data.raw['int-setting']['bobmods-logistics-pipeperlevel'] then
   data.raw['int-setting']['bobmods-logistics-pipeperlevel'].hidden = true
   data.raw['int-setting']['bobmods-logistics-pipeperlevel'].allowed_values = {4}
end
if data.raw['int-setting']['bobmods-logistics-fluidwagonbase'] then
   data.raw['int-setting']['bobmods-logistics-fluidwagonbase'].hidden = true
   data.raw['int-setting']['bobmods-logistics-fluidwagonbase'].allowed_values = {25}
end
if data.raw['int-setting']['bobmods-logistics-storagetankbase'] then
   data.raw['int-setting']['bobmods-logistics-storagetankbase'].hidden = true
   data.raw['int-setting']['bobmods-logistics-storagetankbase'].allowed_values = {25}
end


if data.raw['string-setting']['alien-biomes-disable-vegetation'] then
   data.raw['string-setting']['alien-biomes-disable-vegetation'].hidden = true
   data.raw['string-setting']['alien-biomes-disable-vegetation'].default_value = "Enabled"
   data.raw['string-setting']['alien-biomes-disable-vegetation'].allowed_values = {"Enabled"}
end
if data.raw['string-setting']['alien-biomes-remove-obsolete-tiles'] then
   data.raw['string-setting']['alien-biomes-remove-obsolete-tiles'].hidden = true
   data.raw['string-setting']['alien-biomes-remove-obsolete-tiles'].default_value = "Disabled"
   data.raw['string-setting']['alien-biomes-remove-obsolete-tiles'].allowed_values = {"Disabled"}
end
if data.raw['string-setting']['alien-biomes-include-coastal-shallows'] then
   data.raw['string-setting']['alien-biomes-include-coastal-shallows'].hidden = true
   data.raw['string-setting']['alien-biomes-include-coastal-shallows'].default_value = "Enabled"
   data.raw['string-setting']['alien-biomes-include-coastal-shallows'].allowed_values = {"Enabled"}
end

local biome_setting_enable = {
  "dirt-aubergine", "sand-aubergine",
  "dirt-beige", "sand-beige",
  "dirt-black", "sand-black",
  "dirt-brown", "sand-brown",
  "dirt-cream", "sand-cream",
  "dirt-grey", "sand-grey",
  "dirt-red", "sand-red",
  "dirt-tan", "sand-tan",
  "dirt-white", "sand-white",
  "volcanic-orange"
}
for _, setting in pairs(biome_setting_enable) do
  local settingname = "alien-biomes-include-"..setting
  if data.raw['string-setting'][settingname] then
     data.raw['string-setting'][settingname].hidden = true
     data.raw['string-setting'][settingname].default_value = "Enabled"
     data.raw['string-setting'][settingname].allowed_values = {"Enabled"}
  end
end

local biome_grass_color = {
"blue", "green",
"mauve", "olive",
"orange", "purple",
"red", "turquoise",
"violet", "yellow"
}
for _, setting in pairs(biome_grass_color) do
  local settingname = "alien-biomes-include-grass-"..setting
  if data.raw['string-setting'][settingname] then
     data.raw['string-setting'][settingname].hidden = true
     data.raw['string-setting'][settingname].default_value = "Disabled"
     data.raw['string-setting'][settingname].allowed_values = {"Disabled"}
  end
end


if data.raw['string-setting']['angels-enable-auto-barreling'] then
   data.raw['string-setting']['angels-enable-auto-barreling'].hidden = true
   data.raw['string-setting']['angels-enable-auto-barreling'].default_value = "Disabled"
   data.raw['string-setting']['angels-enable-auto-barreling'].allowed_values = {"Disabled"}
end

if data.raw['bool-setting']['angels-enable-converter'] then
   data.raw['bool-setting']['angels-enable-converter'].hidden = true
   data.raw['bool-setting']['angels-enable-converter'].forced_value = true
end
if data.raw['bool-setting']['angels-hide-converter'] then
   data.raw['bool-setting']['angels-hide-converter'].hidden = true
   data.raw['bool-setting']['angels-hide-converter'].forced_value = true
end
if data.raw['bool-setting']['angels-enable-acids'] then
   data.raw['bool-setting']['angels-enable-acids'].hidden = true
   data.raw['bool-setting']['angels-enable-acids'].forced_value = true
end

if data.raw['bool-setting']['angels-disable-bobs-electrolysers'] then
   data.raw['bool-setting']['angels-disable-bobs-electrolysers'].hidden = true
   data.raw['bool-setting']['angels-disable-bobs-electrolysers'].forced_value = true
end
if data.raw['bool-setting']['angels-disable-vanilla-chemical-plants'] then
   data.raw['bool-setting']['angels-disable-vanilla-chemical-plants'].hidden = true
   data.raw['bool-setting']['angels-disable-vanilla-chemical-plants'].forced_value = true
end
if data.raw['bool-setting']['angels-disable-bobs-chemical-plants'] then
   data.raw['bool-setting']['angels-disable-bobs-chemical-plants'].hidden = true
   data.raw['bool-setting']['angels-disable-bobs-chemical-plants'].forced_value = true
end
if data.raw['bool-setting']['angels-disable-bobs-distilleries'] then
   data.raw['bool-setting']['angels-disable-bobs-distilleries'].hidden = true
   data.raw['bool-setting']['angels-disable-bobs-distilleries'].forced_value = true
end
if data.raw['bool-setting']['angels-show-chemical-formula'] then
   data.raw['bool-setting']['angels-show-chemical-formula'].hidden = true
   data.raw['bool-setting']['angels-show-chemical-formula'].forced_value = true
end

if data.raw['bool-setting']['bobmods-plates-cheapersteel'] then
   data.raw['bool-setting']['bobmods-plates-cheapersteel'].hidden = true
   data.raw['bool-setting']['bobmods-plates-cheapersteel'].forced_value = true
end
if data.raw['bool-setting']['bobmods-plates-newsteel'] then
   data.raw['bool-setting']['bobmods-plates-newsteel'].hidden = true
   data.raw['bool-setting']['bobmods-plates-newsteel'].forced_value = true
end
if data.raw['bool-setting']['bobmods-plates-batteryupdate'] then
   data.raw['bool-setting']['bobmods-plates-batteryupdate'].hidden = true
   data.raw['bool-setting']['bobmods-plates-batteryupdate'].forced_value = true
end
if data.raw['bool-setting']['bobmods-plates-oreoverride'] then
   data.raw['bool-setting']['bobmods-plates-oreoverride'].hidden = true
   data.raw['bool-setting']['bobmods-plates-oreoverride'].forced_value = true
end
if data.raw['bool-setting']['bobmods-plates-purewater'] then
   data.raw['bool-setting']['bobmods-plates-purewater'].hidden = true
   data.raw['bool-setting']['bobmods-plates-purewater'].forced_value = true
end
if data.raw['bool-setting']['bobmods-plates-groundwater'] then
   data.raw['bool-setting']['bobmods-plates-groundwater'].hidden = true
   data.raw['bool-setting']['bobmods-plates-groundwater'].forced_value = false
end
if data.raw['bool-setting']['bobmods-plates-vanillabarrelling'] then
   data.raw['bool-setting']['bobmods-plates-vanillabarrelling'].hidden = true
   data.raw['bool-setting']['bobmods-plates-vanillabarrelling'].forced_value = false
end
if data.raw['bool-setting']['bobmods-colorupdate'] then
   data.raw['bool-setting']['bobmods-colorupdate'].hidden = true
   data.raw['bool-setting']['bobmods-colorupdate'].forced_value = true
end
if data.raw['bool-setting']['bobmods-plates-bluedeuterium'] then
   data.raw['bool-setting']['bobmods-plates-bluedeuterium'].hidden = true
   data.raw['bool-setting']['bobmods-plates-bluedeuterium'].forced_value = false
end
if data.raw['bool-setting']['bobmods-plates-nuclearupdate'] then
   data.raw['bool-setting']['bobmods-plates-nuclearupdate'].hidden = true
   data.raw['bool-setting']['bobmods-plates-nuclearupdate'].forced_value = true
end
if data.raw['bool-setting']['bobmods-plates-convert-recipes'] then
   data.raw['bool-setting']['bobmods-plates-convert-recipes'].hidden = true
   data.raw['bool-setting']['bobmods-plates-convert-recipes'].forced_value = true
end
if data.raw['bool-setting']['bobmods-plates-expensive-electrolysis'] then
   data.raw['bool-setting']['bobmods-plates-expensive-electrolysis'].hidden = true
   data.raw['bool-setting']['bobmods-plates-expensive-electrolysis'].forced_value = false
end
if data.raw['int-setting']['bobmods-plates-inventorysize'] then
   data.raw['int-setting']['bobmods-plates-inventorysize'].hidden = true
   data.raw['int-setting']['bobmods-plates-inventorysize'].allowed_values = {80}
end

if data.raw['bool-setting']['angels-enable-hide-void'] then
   data.raw['bool-setting']['angels-enable-hide-void'].hidden = true
   data.raw['bool-setting']['angels-enable-hide-void'].forced_value = true
end
if data.raw['bool-setting']['angels-enable-auto-barreling'] then
   data.raw['bool-setting']['angels-enable-auto-barreling'].hidden = true
   data.raw['bool-setting']['angels-enable-auto-barreling'].forced_value = false
end
if data.raw['bool-setting']['angels-tryptophobia-friendly-stiratite'] then
   data.raw['bool-setting']['angels-tryptophobia-friendly-stiratite'].hidden = true
   data.raw['bool-setting']['angels-tryptophobia-friendly-stiratite'].forced_value = false
end
if data.raw['bool-setting']['angels-starting-resource-ore1'] then
   data.raw['bool-setting']['angels-starting-resource-ore1'].hidden = true
   data.raw['bool-setting']['angels-starting-resource-ore1'].forced_value = true
end
if data.raw['bool-setting']['angels-starting-resource-ore3'] then
   data.raw['bool-setting']['angels-starting-resource-ore3'].hidden = true
   data.raw['bool-setting']['angels-starting-resource-ore3'].forced_value = true
end
if data.raw['bool-setting']['angels-starting-resource-ore5'] then
   data.raw['bool-setting']['angels-starting-resource-ore5'].hidden = true
   data.raw['bool-setting']['angels-starting-resource-ore5'].forced_value = true
end
if data.raw['bool-setting']['angels-starting-resource-ore6'] then
   data.raw['bool-setting']['angels-starting-resource-ore6'].hidden = true
   data.raw['bool-setting']['angels-starting-resource-ore6'].forced_value = true
end
if data.raw['bool-setting']['angels-starting-resource-ore2'] then
   data.raw['bool-setting']['angels-starting-resource-ore2'].hidden = true
   data.raw['bool-setting']['angels-starting-resource-ore2'].forced_value = false
end
if data.raw['bool-setting']['angels-starting-resource-ore4'] then
   data.raw['bool-setting']['angels-starting-resource-ore4'].hidden = true
   data.raw['bool-setting']['angels-starting-resource-ore4'].forced_value = false
end

if data.raw['double-setting']['angels-marathon-buildingmulti'] then
   data.raw['double-setting']['angels-marathon-buildingmulti'].hidden = true
   data.raw['double-setting']['angels-marathon-buildingmulti'].allowed_values = {2}
end
if data.raw['double-setting']['angels-marathon-buildingtime'] then
   data.raw['double-setting']['angels-marathon-buildingtime'].hidden = true
   data.raw['double-setting']['angels-marathon-buildingtime'].allowed_values = {2}
end
if data.raw['double-setting']['angels-marathon-rawmulti'] then
   data.raw['double-setting']['angels-marathon-rawmulti'].hidden = true
   data.raw['double-setting']['angels-marathon-rawmulti'].allowed_values = {1}
end

if data.raw['double-setting']['angels-marathon-intermediatemulti'] then
   data.raw['double-setting']['angels-marathon-intermediatemulti'].hidden = true
   data.raw['double-setting']['angels-marathon-intermediatemulti'].allowed_values = {1}
end
if data.raw['double-setting']['angels-starting-resource-base'] then
   data.raw['double-setting']['angels-starting-resource-base'].hidden = true
   data.raw['double-setting']['angels-starting-resource-base'].allowed_values = {40000}
end
if data.raw['int-setting']['angels-pavement-stack-size'] then
   data.raw['int-setting']['angels-pavement-stack-size'].hidden = true
   data.raw['int-setting']['angels-pavement-stack-size'].allowed_values = {200}
end

if data.raw['string-setting']['fuel-fluid'] then
   data.raw['string-setting']['fuel-fluid'].hidden = true
   data.raw['string-setting']['fuel-fluid'].default_value = "nullius-steam"
   data.raw['string-setting']['fuel-fluid'].allowed_values = {"nullius-steam"}
end
if data.raw['double-setting']['fuel-amount-per-drone'] then
   data.raw['double-setting']['fuel-amount-per-drone'].hidden = true
   data.raw['double-setting']['fuel-amount-per-drone'].default_value = 150
   data.raw['double-setting']['fuel-amount-per-drone'].allowed_values = {150}
end
if data.raw['double-setting']['drone-fluid-capacity'] then
   data.raw['double-setting']['drone-fluid-capacity'].hidden = true
   data.raw['double-setting']['drone-fluid-capacity'].default_value = 1000
   data.raw['double-setting']['drone-fluid-capacity'].allowed_values = {1000}
end
if data.raw['double-setting']['fuel-consumption-per-meter'] then
   data.raw['double-setting']['fuel-consumption-per-meter'].hidden = true
   data.raw['double-setting']['fuel-consumption-per-meter'].default_value = 0.06
   data.raw['double-setting']['fuel-consumption-per-meter'].allowed_values = {0.06}
end

if data.raw['bool-setting']['miniloader-snapping'] then
   data.raw['bool-setting']['miniloader-snapping'].hidden = true
   data.raw['bool-setting']['miniloader-snapping'].forced_value = false
end

if data.raw['string-setting']['fc-chest-mode'] then
   data.raw['string-setting']['fc-chest-mode'].hidden = true
   data.raw['string-setting']['fc-chest-mode'].allowed_values = {"modify"}
end


if data.raw['bool-setting']['RTModdedThrowers'] then
   data.raw['bool-setting']['RTModdedThrowers'].hidden = true
   data.raw['bool-setting']['RTModdedThrowers'].forced_value = true
end

if data.raw['bool-setting']['RTBounceSetting'] then
   data.raw['bool-setting']['RTBounceSetting'].hidden = true
   data.raw['bool-setting']['RTBounceSetting'].forced_value = true
end

if data.raw['bool-setting']['RTTrainBounceSetting'] then
   data.raw['bool-setting']['RTTrainBounceSetting'].hidden = true
   data.raw['bool-setting']['RTTrainBounceSetting'].forced_value = true
end

if data.raw['bool-setting']['RTImpactSetting'] then
   data.raw['bool-setting']['RTImpactSetting'].hidden = true
   data.raw['bool-setting']['RTImpactSetting'].forced_value = true
end


if data.raw['int-setting']['ch-solar-max-production-mw'] then
   data.raw['int-setting']['ch-solar-max-production-mw'].hidden = true
   data.raw['int-setting']['ch-solar-max-production-mw'].default_value = 100
   data.raw['int-setting']['ch-solar-max-production-mw'].allowed_values = {100}
end

if data.raw['double-setting']['ch-k2-production-mult'] then
   data.raw['double-setting']['ch-k2-production-mult'].hidden = true
end


if data.raw['bool-setting']['deep_oil'] then
   data.raw['bool-setting']['deep_oil'].localised_name =
       {"mod-setting-name.nullius-hydrothermal"}
end

if data.raw['bool-setting']['no_oil_for_oil_rig'] then
   data.raw['bool-setting']['no_oil_for_oil_rig'].localised_name =
       {"mod-setting-name.nullius-infinite-fumaroles"}
   data.raw['bool-setting']['no_oil_for_oil_rig'].localised_description =
       {"mod-setting-description.nullius-infinite-fumaroles"}
end

if data.raw['string-setting']['oil_richness'] then
   data.raw['string-setting']['oil_richness'].hidden = true
   data.raw['string-setting']['oil_richness'].allowed_values = {"regular"}
end

if data.raw['int-setting']['oil_rig_capacity'] then
   data.raw['int-setting']['oil_rig_capacity'].hidden = true
   data.raw['int-setting']['oil_rig_capacity'].allowed_values = {100}
end

if data.raw['bool-setting']['no_oil_on_land'] then
   data.raw['bool-setting']['no_oil_on_land'].hidden = true
   data.raw['bool-setting']['no_oil_on_land'].forced_value = false
end

if data.raw['double-setting']['fuel_modifier'] then
   data.raw['double-setting']['fuel_modifier'].hidden = true
   data.raw['double-setting']['fuel_modifier'].allowed_values = {2}
end

if data.raw['int-setting']['tanker_capacity'] then
   data.raw['int-setting']['tanker_capacity'].hidden = true
   data.raw['int-setting']['tanker_capacity'].allowed_values = {250}
end


if data.raw['string-setting']['aai-loaders-mode'] then
   data.raw['string-setting']['aai-loaders-mode'].hidden = true
   data.raw['string-setting']['aai-loaders-mode'].default_value = "expensive"
   data.raw['string-setting']['aai-loaders-mode'].allowed_values = {"expensive"}
end

if data.raw['string-setting']['aai-loaders-lubricant-recipe'] then
   data.raw['string-setting']['aai-loaders-lubricant-recipe'].hidden = true
   data.raw['string-setting']['aai-loaders-lubricant-recipe'].default_value = "disabled"
   data.raw['string-setting']['aai-loaders-lubricant-recipe'].allowed_values = {"disabled"}
end

if data.raw['bool-setting']['aai-loaders-fit-assemblers'] then
   data.raw['bool-setting']['aai-loaders-fit-assemblers'].hidden = true
   data.raw['bool-setting']['aai-loaders-fit-assemblers'].forced_value = false
end
