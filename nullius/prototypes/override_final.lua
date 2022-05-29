local ICONPATH = "__nullius__/graphics/icons/"
local ENTICONPATH = "__nullius__/graphics/icons/entity/"
local ENTITYPATH = "__nullius__/graphics/entity/"
local BASEENTITY = "__base__/graphics/entity/"


data.raw.item["stone-brick"].subgroup = "masonry"
data.raw.item["stone-brick"].order = "nullius-b"
data.raw.item["concrete"].subgroup = "masonry"
data.raw.item["concrete"].order = "nullius-d"
data.raw.item["refined-concrete"].subgroup = "concrete"
data.raw.item["refined-concrete"].order = "nullius-c"
data.raw.item["refined-hazard-concrete"].subgroup = "concrete"
data.raw.item["refined-hazard-concrete"].order = "nullius-e"
data.raw.resource["uranium-ore"].minable.fluid_amount = nil
data.raw.resource["uranium-ore"].minable.required_fluid = nil
data.raw.item["rocket-fuel"].icon = "__base__/graphics/icons/rocket-fuel.png"
data.raw.item["rocket-fuel"].icon_size = 64
data.raw.item["copper-cable"].icon = "__angelssmelting__/graphics/icons/wire-coil-tin.png"
data.raw.item["copper-cable"].icon_size = 64
data.raw.item["copper-cable"].icons = {{
  icon = "__angelssmelting__/graphics/icons/wire-coil-tin.png",
  icon_size = 64
}}
data.raw.item["copper-cable"].subgroup = "electronic-intermediate"
data.raw.item["copper-cable"].order = "nullius-d"


data.raw.item["storage-tank"].stack_size = 50
data.raw.item["storage-tank"].icons = {{
  icon = "__base__/graphics/icons/storage-tank.png",
  icon_size = 64, icon_mipmaps = 4
}}
data.raw["storage-tank"]["storage-tank"].icons = data.raw.item["storage-tank"].icons
data.raw["storage-tank"]["storage-tank"].fluid_box.height = 1.7
data.raw["storage-tank"]["storage-tank"].fluid_box.base_area = 88.235295
if mods["reskins-library"] then
data.raw["storage-tank"]["storage-tank"].pictures =
    data.raw["storage-tank"]["nullius-medium-tank-original"].pictures
end

if mods["reskins-bobs"] then
data.raw.item["radar"].icons = {
  {
    icon = "__reskins-bobs__/graphics/icons/warfare/radar/radar-icon-base.png",
    icon_size = 64, icon_mipmaps = 4
  },
  {
    icon = "__reskins-bobs__/graphics/icons/warfare/radar/radar-icon-mask.png",
    icon_size = 64, icon_mipmaps = 4, tint = tiercolor("yellow")
  },
  {
    icon = "__reskins-bobs__/graphics/icons/warfare/radar/radar-icon-highlights.png",
    icon_size = 64, icon_mipmaps = 4, tint = {1, 1, 1, 0}
  }
}
label_icon("radar", 1, "yellow")
data.raw["radar"]["radar"].pictures =
    data.raw["radar"]["nullius-sensor-node-original"].pictures
else
data.raw.item["radar"].icons = {{
  icon =  "__base__/graphics/icons/radar.png",
  icon_size = 64, icon_mipmaps = 4,
  tint = {0.9, 0.9, 0.65}
}}
data.raw["radar"]["radar"].pictures.layers[1].tint = {0.9, 0.9, 0.65}
data.raw["radar"]["radar"].pictures.layers[1].hr_version.tint = {0.9, 0.9, 0.65}
end
data.raw.item["radar"].stack_size = 20
data.raw["radar"]["radar"].icons = data.raw.item["radar"].icons
data.raw["radar"]["radar"].fast_replaceable_group = "sensor-node"
data.raw["radar"]["radar"].next_upgrade = "nullius-sensor-node-2"
data.raw["radar"]["radar"].max_distance_of_sector_revealed = 5
data.raw["radar"]["radar"].max_distance_of_nearby_sector_revealed = 3
data.raw["radar"]["radar"].energy_per_sector = "12MJ"
data.raw["radar"]["radar"].energy_per_nearby_scan = "200kJ"
data.raw["radar"]["radar"].energy_usage = "100kW"
data.raw["radar"]["radar"].rotation_speed = 0.005


data.raw.item["big-electric-pole"].localised_name = {"entity-name.nullius-pylon-1"}
data.raw.item["big-electric-pole"].subgroup = "electric-pole"
data.raw.item["big-electric-pole"].order = "nullius-cb"
data.raw.item["big-electric-pole"].stack_size = 50
data.raw.item["big-electric-pole"].icons = {{
  icon = ENTICONPATH .. "large-pole-1.png",
  icon_size = 64, icon_mipmaps = 4
}}
label_icon("big-electric-pole", 1, "yellow")
data.raw["electric-pole"]["big-electric-pole"].localised_name =
    data.raw.item["big-electric-pole"].localised_name
data.raw["electric-pole"]["big-electric-pole"].icons =
    data.raw.item["big-electric-pole"].icons
data.raw["electric-pole"]["big-electric-pole"].maximum_wire_distance = 32.5
data.raw["electric-pole"]["big-electric-pole"].fast_replaceable_group = "pylon"
data.raw["electric-pole"]["big-electric-pole"].next_upgrade = "nullius-pylon-2"

data.raw.item["small-electric-pole"].localised_name = {"entity-name.nullius-power-pole-1"}
data.raw.item["small-electric-pole"].subgroup = "electric-pole"
data.raw.item["small-electric-pole"].order = "nullius-bb"
data.raw.item["small-electric-pole"].stack_size = 100
data.raw.item["small-electric-pole"].icons = {{
  icon = ENTICONPATH .. "pole1.png",
  icon_size = 64, icon_mipmaps = 4
}}
label_icon("small-electric-pole", 1, "yellow")
data.raw["electric-pole"]["small-electric-pole"].localised_name =
    data.raw.item["small-electric-pole"].localised_name
data.raw["electric-pole"]["small-electric-pole"].icons =
    data.raw.item["small-electric-pole"].icons
data.raw["electric-pole"]["small-electric-pole"].maximum_wire_distance = 8.5
data.raw["electric-pole"]["small-electric-pole"].supply_area_distance = 3.5
data.raw["electric-pole"]["small-electric-pole"].fast_replaceable_group = "power-pole"
data.raw["electric-pole"]["small-electric-pole"].next_upgrade = "medium-electric-pole"

data.raw.item["medium-electric-pole"].localised_name = {"entity-name.nullius-power-pole-2"}
data.raw.item["medium-electric-pole"].subgroup = "electric-pole"
data.raw.item["medium-electric-pole"].order = "nullius-bc"
data.raw.item["medium-electric-pole"].stack_size = 100
data.raw.item["medium-electric-pole"].icons = {{
  icon = ENTICONPATH .. "pole2.png",
  icon_size = 64, icon_mipmaps = 4
}}
label_icon("medium-electric-pole", 2, "red")
data.raw["electric-pole"]["medium-electric-pole"].localised_name =
    data.raw.item["medium-electric-pole"].localised_name
data.raw["electric-pole"]["medium-electric-pole"].icons =
    data.raw.item["medium-electric-pole"].icons
data.raw["electric-pole"]["medium-electric-pole"].maximum_wire_distance = 11.5
data.raw["electric-pole"]["medium-electric-pole"].supply_area_distance = 4.5
data.raw["electric-pole"]["medium-electric-pole"].fast_replaceable_group = "power-pole"
data.raw["electric-pole"]["medium-electric-pole"].next_upgrade = "nullius-power-pole-3"

data.raw.item["substation"].localised_name = {"entity-name.nullius-substation-1"}
data.raw.item["substation"].subgroup = "electric-pole"
data.raw.item["substation"].order = "nullius-db"
data.raw.item["substation"].stack_size = 50
data.raw.item["substation"].icons = {{
  icon = ENTICONPATH .. "substation1.png",
  icon_size = 64, icon_mipmaps = 4
}}
label_icon("substation", 1, "yellow")
data.raw["electric-pole"]["substation"].localised_name =
    data.raw.item["substation"].localised_name
data.raw["electric-pole"]["substation"].icons = data.raw.item["substation"].icons
data.raw["electric-pole"]["substation"].collision_box = {{-0.65, -0.65}, {0.65, 0.65}}
data.raw["electric-pole"]["substation"].maximum_wire_distance = 24.5
data.raw["electric-pole"]["substation"].supply_area_distance = 12
data.raw["electric-pole"]["substation"].fast_replaceable_group = "pylon"
data.raw["electric-pole"]["substation"].next_upgrade = "nullius-substation-2"


data.raw.item["wooden-chest"].icons =
    {{ icon = ENTICONPATH .. "chest1.png", icon_size = 64 }}
data.raw.item["wooden-chest"].subgroup = "storage"
data.raw.item["wooden-chest"].order = "nullius-bb"
data.raw.item["wooden-chest"].stack_size = 100

data.raw.item["iron-chest"].icons =
    {{ icon = ENTICONPATH .. "chest2.png", icon_size = 64 }}
data.raw.item["iron-chest"].subgroup = "storage"
data.raw.item["iron-chest"].order = "nullius-bc"
data.raw.item["iron-chest"].stack_size = 100

data.raw.item["steel-chest"].icons =
    {{ icon = ENTICONPATH .. "chest3s.png", icon_size = 64 }}
data.raw.item["steel-chest"].subgroup = "storage"
data.raw.item["steel-chest"].order = "nullius-bd"
data.raw.item["steel-chest"].stack_size = 100

data.raw["container"]["wooden-chest"].picture =
    util.table.deepcopy(data.raw.container["iron-chest"].picture)
data.raw["container"]["iron-chest"].picture =
    util.table.deepcopy(data.raw.container["steel-chest"].picture)
data.raw["container"]["steel-chest"].picture = { layers = {
  {
    filename = ENTITYPATH .. "chest/chest3e.png",
    priority = "extra-high",
    width = 68,
    height = 84,
    shift = util.by_pixel(0, -1),
    scale = 0.5
  },
  {
    filename = BASEENTITY .. "infinity-chest/hr-infinity-chest-shadow.png",
    priority = "extra-high",
    width = 116,
    height = 48,
    shift = util.by_pixel(12, 6),
    draw_as_shadow = true,
    scale = 0.5
  }
}}
	
data.raw["container"]["wooden-chest"].icons = data.raw.item["wooden-chest"].icons
data.raw["container"]["wooden-chest"].inventory_size = 10
data.raw["container"]["iron-chest"].icons = data.raw.item["iron-chest"].icons
data.raw["container"]["iron-chest"].inventory_size = 20
data.raw["container"]["steel-chest"].icons = data.raw.item["steel-chest"].icons
data.raw["container"]["steel-chest"].inventory_size = 30
data.raw["container"]["wooden-chest"].next_upgrade = "iron-chest"
data.raw["container"]["iron-chest"].next_upgrade = "steel-chest"
data.raw["container"]["steel-chest"].next_upgrade = nil


data.raw.item["logistic-chest-storage"].icons =
    {{ icon = ENTICONPATH .. "chest-storage1.png", icon_size = 64 }}
data.raw.item["logistic-chest-storage"].subgroup = "small-logistic-storage"
data.raw.item["logistic-chest-storage"].order = "nullius-bc"
data.raw.item["logistic-chest-storage"].stack_size = 100

data.raw.item["logistic-chest-passive-provider"].icons =
    {{ icon = ENTICONPATH .. "chest-supply1.png", icon_size = 64 }}
data.raw.item["logistic-chest-passive-provider"].subgroup = "small-logistic-storage"
data.raw.item["logistic-chest-passive-provider"].order = "nullius-cc"
data.raw.item["logistic-chest-passive-provider"].stack_size = 100

data.raw.item["logistic-chest-requester"].icons =
    {{ icon = ENTICONPATH .. "chest-demand1.png", icon_size = 64 }}
data.raw.item["logistic-chest-requester"].subgroup = "small-logistic-storage"
data.raw.item["logistic-chest-requester"].order = "nullius-dc"
data.raw.item["logistic-chest-requester"].stack_size = 100

data.raw.item["logistic-chest-buffer"].icons =
    {{ icon = ENTICONPATH .. "chest-buffer1.png", icon_size = 64 }}
data.raw.item["logistic-chest-buffer"].subgroup = "small-logistic-storage"
data.raw.item["logistic-chest-buffer"].order = "nullius-ec"
data.raw.item["logistic-chest-buffer"].stack_size = 100

data.raw.item["logistic-chest-active-provider"].icons =
    {{ icon = ENTICONPATH .. "chest-dispatch1.png", icon_size = 64 }}
data.raw.item["logistic-chest-active-provider"].subgroup = "small-logistic-storage"
data.raw.item["logistic-chest-active-provider"].order = "nullius-fc"
data.raw.item["logistic-chest-active-provider"].stack_size = 100

data.raw["logistic-container"]["logistic-chest-storage"].icons =
    data.raw.item["logistic-chest-storage"].icons
data.raw["logistic-container"]["logistic-chest-storage"].inventory_size = 30
data.raw["logistic-container"]["logistic-chest-passive-provider"].icons =
    data.raw.item["logistic-chest-passive-provider"].icons
data.raw["logistic-container"]["logistic-chest-passive-provider"].inventory_size = 30
data.raw["logistic-container"]["logistic-chest-requester"].icons =
    data.raw.item["logistic-chest-requester"].icons
data.raw["logistic-container"]["logistic-chest-requester"].inventory_size = 30
data.raw["logistic-container"]["logistic-chest-requester"].max_logistic_slots = 8
data.raw["logistic-container"]["logistic-chest-buffer"].icons =
    data.raw.item["logistic-chest-buffer"].icons
data.raw["logistic-container"]["logistic-chest-buffer"].inventory_size = 30
data.raw["logistic-container"]["logistic-chest-buffer"].max_logistic_slots = 6
data.raw["logistic-container"]["logistic-chest-active-provider"].icons =
    data.raw.item["logistic-chest-active-provider"].icons
data.raw["logistic-container"]["logistic-chest-active-provider"].inventory_size = 30
data.raw["logistic-container"]["logistic-chest-storage"].next_upgrade = nil
data.raw["logistic-container"]["logistic-chest-passive-provider"].next_upgrade = nil
data.raw["logistic-container"]["logistic-chest-requester"].next_upgrade = nil
data.raw["logistic-container"]["logistic-chest-buffer"].next_upgrade = nil
data.raw["logistic-container"]["logistic-chest-active-provider"].next_upgrade = nil


data.raw["pipe"]["pipe"].next_upgrade = "nullius-pipe-2"
data.raw["pipe-to-ground"]["pipe-to-ground"].next_upgrade = "nullius-underground-pipe-2"
data.raw["pipe"]["pipe"].fluid_box.height = 0.8
data.raw["pipe"]["pipe"].fluid_box.base_area = 1.5
data.raw["pipe-to-ground"]["pipe-to-ground"].fluid_box.height = 0.8
data.raw["pipe-to-ground"]["pipe-to-ground"].fluid_box.base_area = 1.875
data.raw["pipe-to-ground"]["pipe-to-ground"].fluid_box.max_underground_distance = 11
data.raw.item["pipe"].stack_size = 200
data.raw.item["pipe-to-ground"].stack_size = 100


data.raw.item["pump"].stack_size = 50
data.raw["pump"]["pump"].fast_replaceable_group = "pump"
data.raw["pump"]["pump"].next_upgrade = nil
data.raw["pump"]["pump"].fluid_box.height = 10
data.raw["pump"]["pump"].pumping_speed = 160
if mods["reskins-library"] then
  data.raw["pump"]["pump"].animations = data.raw["pump"]["nullius-pump-original"].animations
  data.raw.item["pump"].icons = {{
    icon = "__base__/graphics/icons/pump.png",
    icon_size = 64, icon_mipmaps = 4
  }}
end


-- Workaround issues with Squeak_Through
data.raw["mining-drill"]["nullius-geothermal-build-1"].collision_box =
    data.raw["reactor"]["nullius-geothermal-reactor-1"].collision_box
data.raw["mining-drill"]["nullius-geothermal-build-2"].collision_box =
    data.raw["reactor"]["nullius-geothermal-reactor-2"].collision_box
data.raw["mining-drill"]["nullius-geothermal-build-3"].collision_box =
    data.raw["reactor"]["nullius-geothermal-reactor-3"].collision_box

for _,fluid in pairs(data.raw.fluid) do
  if (string.sub(fluid.name, 1, 8) == "nullius-") and
      data.raw.recipe["fill-" .. fluid.name .. "-barrel"] then
    local barrel_name = fluid.name .. "-barrel"
    local fill_name = "fill-" .. barrel_name
    local empty_name = "empty-" .. barrel_name
    data.raw.item[barrel_name].subgroup = "fill-" .. fluid.subgroup
    data.raw.item[barrel_name].order = fluid.order
    data.raw.item[barrel_name].stack_size = 20
    data.raw.recipe[fill_name].subgroup = "fill-" .. fluid.subgroup
    data.raw.recipe[fill_name].order = fluid.order
    data.raw.recipe[fill_name].hide_from_player_crafting = true
    data.raw.recipe[fill_name].hide_from_stats = true
    data.raw.recipe[fill_name].enabled = true
    data.raw.recipe[fill_name].category = "nullius-barrel"
    data.raw.recipe[fill_name].energy_required = 0.25
    data.raw.recipe[empty_name].subgroup = "empty-" .. fluid.subgroup
    data.raw.recipe[empty_name].order = fluid.order
    data.raw.recipe[empty_name].hide_from_player_crafting = true
    data.raw.recipe[empty_name].hide_from_stats = true
    data.raw.recipe[empty_name].enabled = true
    data.raw.recipe[empty_name].category = "nullius-unbarrel"
    data.raw.recipe[empty_name].energy_required = 0.25

    if (fluid.fuel_value ~= nil) then
      data.raw.recipe[fill_name].enabled = false
      data.raw.recipe[empty_name].enabled = false
      if (fluid.name ~= "nullius-steam") then
        data.raw.recipe[fill_name].ingredients[1].amount = 25
        data.raw.recipe[empty_name].results[1].amount = 25
        data.raw.recipe[fill_name].energy_required = 0.5
        data.raw.recipe[empty_name].energy_required = 0.5
      end
    elseif ((fluid.gas_temperature ~= nil) and (fluid.gas_temperature < 25)) then
      data.raw.recipe[fill_name].enabled = false
      data.raw.recipe[empty_name].enabled = false
    end
  end
end


-- Mods might overwrite character crafting categories, making everything un-hand-craftable in
-- Nullius.  At this stage, set them again, but this time, insert missing categories rather than -- overwriting the list, to give other mods opportunity to insert their own categories.
local hand_crafting = { "hand-crafting", "tiny-crafting", "small-crafting", "medium-crafting",
  "large-crafting", "huge-crafting", "packaging", "hand-casting", "hand-crushing"
}
for _,character in pairs(data.raw["character"]) do
  if (character.crafting_categories ~= nil) then
    for _,newcat in pairs(hand_crafting) do
      local found = false
      for _,oldcat in pairs(character.crafting_categories) do
        if (oldcat == newcat) then
          found = true
        end
      end
      if (not found) then
        table.insert(character.crafting_categories, newcat)
      end
    end
  end

  character.heartbeat = {
    { filename = "__base__/sound/robot-repair-1.ogg", volume = 0.5 },
    { filename = "__base__/sound/robot-repair-2.ogg", volume = 0.5 },
    { filename = "__base__/sound/robot-repair-3.ogg", volume = 0.5 },
    { filename = "__base__/sound/robot-repair-4.ogg", volume = 0.5 },
    { filename = "__base__/sound/robot-repair-5.ogg", volume = 0.5 },
    { filename = "__base__/sound/robot-repair-6.ogg", volume = 0.5 }
  }
  character.healing_per_tick = 0
  character.respawn_time = 4
  character.flags = {"placeable-off-grid", "not-on-map", "not-flammable"}
  character.localised_description = {"entity-description.nullius-android"}

  if ((character.name ~= "character") and
      (character.name ~= "nullius-android-2")) then
    table.insert(character.flags,"hidden")
  end
end

for _,tip in pairs(data.raw["tips-and-tricks-item"]) do
  if (string.sub(tip.name, 1, 7) == "angels-") then
    data.raw["tips-and-tricks-item"][tip.name] = nil
  end
end
