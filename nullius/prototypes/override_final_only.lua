local ENTITYPATH = "__nullius__/graphics/entity/"
local BASEENTITY = "__base__/graphics/entity/"


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


for _,character in pairs(data.raw["character"]) do
  if ((character.name ~= "character") and
      (character.name ~= "nullius-android-2")) then
    table.insert(character.flags,"hidden")
  end
end
