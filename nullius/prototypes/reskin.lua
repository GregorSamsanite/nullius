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


function scale_image(img, scale)
  local ret = util.table.deepcopy(img)
  local lookup = {}
  local function scale_subtable(img, scale)
    if ((type(img) ~= "table") or (img.__self) or (lookup[img])) then
      return
    end
	lookup[img] = true
    for _, field in pairs(img) do
	  scale_subtable(field, scale)
    end
	if (img.filename ~= nil) then
	  if (img.shift ~= nil) then
	    img.shift[1] = img.shift[1] * scale
	    img.shift[2] = img.shift[2] * scale
	  end
	  if (img.scale ~= nil) then
	    img.scale = img.scale * scale
	  else
	    img.scale = scale
	  end
	end
  end
  scale_subtable(ret, scale)
  return ret
end
