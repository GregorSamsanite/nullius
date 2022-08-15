local ICONPATH = "__nullius__/graphics/icons/"
local ENTITYPATH = "__nullius__/graphics/entity/"

local boxed_item_type_list = {
  "ammo",
  "capsule",
  "module",
  "rail-planner",
  "tool",
  "repair-tool"
}

local function boxed_icons(itemname, suffix)
  local base_item = data.raw.item[itemname]
  if (base_item == nil) then
    for _,ityp in pairs(boxed_item_type_list) do
      if (base_item == nil) then
        base_item = data.raw[ityp][itemname]
      end
    end
  end
  if (base_item == nil) then return nil end

  local base_icon = base_item.icon
  local base_size = base_item.icon_size
  local base_tint = nil
  local icons = base_item.icons
  if ((icons ~= nil) and (icons[1] ~= nil)) then
    base_icon = icons[1].icon
    base_tint = icons[1].tint
    if (icons[1].icon_size ~= nil) then
      base_size = icons[1].icon_size
    end
  end
  if ((base_icon == nil) or (base_size == nil)) then return nil end

  local backdrop = "crate.png"
  local icon_scale = 0.9
  if (suffix ~= nil) then
    if (suffix == "acrylic-fiber") then
      icon_scale = 1
    elseif (suffix == "carbon-fiber") then
      icon_scale = 1
	  backdrop = "boxing.png"
    end
  end
  local base_scale = icon_scale * 32 / base_size

  local box_icon = {
    {
      icon = ICONPATH .. backdrop,
      icon_size = 64
    },
    {
      icon = base_icon,
      icon_size = base_size,
      tint = base_tint,
      scale = base_scale
    }
  }
  local unbox_icon = util.table.deepcopy(box_icon)
  unbox_icon[1].icon = ICONPATH .. "un" .. backdrop

  if (icons ~= nil) then
    for layer=2,9 do
      if (icons[layer] ~= nil) then
        local size2 = icons[layer].icon_size
        if (size2 == nil) then
          size2 = base_item.icon_size
        end
        local scale2 = icon_scale * 32 / size2
        if (icons[layer].scale ~= nil) then
          scale2 = icons[layer].scale * icon_scale
        end
        local shift2 = nil
        if (icons[layer].shift ~= nil) then
          shift2 = {icons[layer].shift[1] * icon_scale, icons[layer].shift[2] * icon_scale}
        end
        local frame2 = {
          icon = icons[layer].icon,
          icon_size = icons[layer].icon_size,
          tint = icons[layer].tint,
          scale = scale2,
          shift = shift2
        }
        table.insert(box_icon, frame2)
        table.insert(unbox_icon, frame2)
      end
    end
  end

  return {boxed = box_icon, unboxed = unbox_icon}
end


for _,recipe in pairs(data.raw.recipe) do
  if (string.sub(recipe.name, 1, 14) == "nullius-unbox-") then
    local suffix = string.sub(recipe.name, 15, -1)
    local icons = boxed_icons(recipe.result, suffix)
    if (icons ~= nil) then
      data.raw.item["nullius-box-"..suffix].icons = icons.boxed
      recipe.icons = icons.unboxed
	  if (data.raw["virtual-signal"][recipe.name] ~= nil) then
	    data.raw["virtual-signal"][recipe.name].icons = recipe.icons
	  end
    end
  elseif ((string.sub(recipe.name, 1, 14) == "nullius-boxed-") and
      (recipe.result ~= nil) and
      (string.sub(recipe.result, 1, 12) ~= "nullius-box-")) then
    local icons = boxed_icons(recipe.result)
    if (icons ~= nil) then
      recipe.icons = icons.boxed
	  if (data.raw["virtual-signal"][recipe.name] ~= nil) then
	    data.raw["virtual-signal"][recipe.name].icons = recipe.icons
	  end
    end
  end
end
