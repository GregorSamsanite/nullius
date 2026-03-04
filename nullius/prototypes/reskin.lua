local ICONPATH = "__nullius__/graphics/icons/"
local ENTITYPATH = "__nullius__/graphics/entity/"

local tiercolors = {
  ["grey"] = "707070",
  ["yellow"] = "deb900",
  ["red"] = "c20600",
  ["blue"] = "0099ff",
  ["deepblue"] = "0040d0",
  ["green"] = "23de55",
  ["purple"] = "a600bf",
  ["orange"] = "ff7700",
  ["white"] = "e0e0e0"
}

function tiercolor(colorname)
  return util.color(tiercolors[colorname])
end

function label_icon(name, tier, color, etype)
  if (mods["reskins-library"] and
      (settings.startup["reskins-lib-icon-tier-labeling"].value == true)) then
    if (etype == nil) then
      etype = "item"
    end
    local icon_style = settings.startup["reskins-lib-icon-tier-labeling-style"].value
    local icon_name = "__reskins-library__/graphics/icons/tiers/"..icon_style.."/"..tier..".png"
    table.insert(data.raw[etype][name].icons, {
      icon = icon_name, icon_size = 64
    })
    local blend = tiercolor(color)
    blend.a = 0.75
    table.insert(data.raw[etype][name].icons, {
      icon = icon_name, icon_size = 64, tint = blend
    })
  end
end

function add_recipe_gear_icon(icons)
  if settings.startup["nullius-hide-recipe-signals"].value == true then
    return icons
  end
  icons = table.deepcopy(icons)
  table.insert(icons,{
      --icon = "__base__/graphics/icons/iron-gear-wheel.png",
      icon = "__nullius__/graphics/icons/factorio-logo-gear.png",
      icon_size = 64,
      scale = 0.25,
      shift = {-10, 10}
    })
  return icons
end

function combine_icons(icons1, icons2, scale1, scale2, shift1, shift2)
  -- if type(icons2) ~= "table" then
  --   icons2 = {{
  --     icon = icons2,
  --     icon_size = 64
  --   }}
  -- end
  local combined = table.deepcopy(icons1)
  for _, icon in pairs(combined) do
    if (scale1 ~= nil) then
      icon.scale = (icon.scale or 1) * scale1
    end
    if (shift1 ~= nil) then
      if (icon.shift ~= nil) then
        if (icon.shift.x ~= nil) then
          icon.shift.x = icon.shift.x + shift1[1]
          icon.shift.y = icon.shift.y + shift1[2]
        else
          icon.shift[1] = icon.shift[1] + shift1[1]
          icon.shift[2] = icon.shift[2] + shift1[2]
        end
      else
        icon.shift = shift1
      end
    end
  end
  for _, icon in pairs(icons2) do
    icon = table.deepcopy(icon)
    if scale2 ~= nil then
      icon.scale = (icon.scale or 1) * scale2
    end
    if shift2 ~= nil then
      if (icon.shift ~= nil) then
        if (icon.shift.x ~= nil) then
          icon.shift.x = icon.shift.x + shift2[1]
          icon.shift.y = icon.shift.y + shift2[2]
        else
          icon.shift[1] = icon.shift[1] + shift2[1]
          icon.shift[2] = icon.shift[2] + shift2[2]
        end
      else
        icon.shift = shift2
      end
    end
    table.insert(combined, icon)
  end
  return combined
end

function scale_shift(vec, scale)
  if (vec == nil) then return nil end
  vec[1] = vec[1] * scale
  vec[2] = vec[2] * scale
  return vec
end

function scale_image(img, scale, offs)
  local ret = util.table.deepcopy(img)
  local lookup = {}
  local function scale_subtable(img, scale, offs)
    if ((type(img) ~= "table") or (img.__self) or (lookup[img])) then
      return
    end
    lookup[img] = true
    for fieldName, field in pairs(img) do
      if fieldName ~= "stripes" then
        scale_subtable(field, scale, offs)
      end
    end
    if (img.filename ~= nil) then
	    img.shift = scale_shift(img.shift, scale)
      if (img.scale ~= nil) then
        img.scale = img.scale * scale
      else
        img.scale = scale
      end
	    if (offs ~= nil) then
	      if (img.shift ~= nil) then
		      if (img.shift.x ~= nil) then
		        img.shift.x = img.shift.x + offs.x
		        img.shift.y = img.shift.y + offs.y
		      else
		        img.shift[1] = img.shift[1] + offs.x
			      img.shift[2] = img.shift[2] + offs.y
		      end
		    else
		      img.shift = offs
		    end
	    end
    end
	  img.north_position = scale_shift(img.north_position, scale)
	  img.east_position = scale_shift(img.east_position, scale)
	  img.south_position = scale_shift(img.south_position, scale)
	  img.west_position = scale_shift(img.west_position, scale)
  end
  scale_subtable(ret, scale, offs)
  return ret
end

function animate_frame(frame, count, speed)
  local ret = util.table.deepcopy(frame)
  if (count == nil) then count = 32 end
  if (speed == nil) then speed = 0.25 end
  ret.priority = "high"
  ret.frame_count = 1
  ret.repeat_count = count
  ret.animation_speed = speed
  return ret
end
