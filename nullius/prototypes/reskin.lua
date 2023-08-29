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
      icon = icon_name, icon_size = 64, icon_mipmaps = 4
    })
    local blend = tiercolor(color)
    blend.a = 0.75
    table.insert(data.raw[etype][name].icons, {
      icon = icon_name, icon_size = 64, icon_mipmaps = 4, tint = blend
    })
  end
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
    for _, field in pairs(img) do
      scale_subtable(field, scale, offs)
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
  if (ret.hr_version ~= nil) then
    ret.hr_version.priority = "high"
    ret.hr_version.frame_count = 1
    ret.hr_version.repeat_count = count
    ret.hr_version.animation_speed = speed
  end
  return ret
end
