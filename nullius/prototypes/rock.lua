local ICONPATH = "__nullius__/graphics/icons/"
local ENTITYPATH = "__nullius__/graphics/entity/"

-- stolen from https://stackoverflow.com/questions/1426954/split-string-in-lua
local function split(inputstr, sep)
  if sep == nil then
    sep = "%s"
  end
  local t = {}
  for str in string.gmatch(inputstr, "([^"..sep.."]+)") do
    table.insert(t, str)
  end
  return t
end

for _,rock in pairs(data.raw["simple-entity"]) do
  local primary = nil
  local secondary = "stone"
  local tertiary = "nullius-mineral-dust"
  local locale_name = nil
  
  local tmp = split(rock.name, "-")
  if #tmp == 3 then -- regular rock
    rockColor = tmp[3]
    if rockColor ~= "rock" then
    if (rockColor == "brown") or (rockColor == "red") or (rockColor == "dustyrose") then
      primary = "nullius-bauxite"
      tertiary = "nullius-sand"
	    locale_name = "bauxite"
    elseif (rockColor == "white") then
      primary = "nullius-limestone"
	    locale_name = "limestone"
    elseif (rockColor == "cream") or (rockColor == "beige") then
      primary = "nullius-limestone"
      secondary = "nullius-gypsum"
	    locale_name = "limestone"
    elseif (rockColor == "tan") then
      primary = "nullius-gypsum"
      secondary = "nullius-limestone"
    elseif (rockColor == "grey") then
      primary = "stone"
      secondary = "nullius-sandstone"
      tertiary = "nullius-gravel"
    else
      primary = "iron-ore"
      tertiary = "nullius-gravel"
	    locale_name = "ironstone"
    end
    end
  elseif #tmp == 4 then -- sand rock
    rockColor = tmp[4]
    primary = "nullius-sandstone"
    tertiary = "nullius-sand"
	  locale_name = "sandstone"
    if (rockColor == "tan") or (rockColor == "brown") or (rockColor == "dustyrose") or (rockColor == "red") then
      secondary = "nullius-bauxite"
    elseif (rockColor == "grey") or (rockColor == "white") or (rockColor == "beige") then
      secondary = "nullius-limestone"
    elseif (rockColor == "cream") then
      secondary = "nullius-bauxite"
    else
      secondary = "iron-ore"
    end
  end

  if (primary ~= nil) then
    if (locale_name ~= nil) then
      rock.localised_name = { "entity-name.nullius-rock-" .. locale_name }
	end
	if (rock.flags ~= nil) then
	  table.insert(rock.flags, "not-in-kill-statistics")
	  table.insert(rock.flags, "not-repairable")
	  table.insert(rock.flags, "not-flammable")
	end

    if (rock.minable ~= nil) then
      if (rock.minable.results ~= nil) then
        local foundcoal = false
        local amount = 0
        local total = 0
        for _,minres in pairs(rock.minable.results) do
          minres.amount_min = minres.amount_min * 0.25
          minres.amount_max = minres.amount_max * 0.25
          total = total + minres.amount_max + minres.amount_min
          if minres.name == "stone" then
            minres.name = primary
            amount = minres.amount_min
          elseif minres.name == "coal" then
            minres.name = secondary
            foundcoal = true
          end
        end
        if ((amount > 2) and not foundcoal) then
          table.insert(rock.minable.results, {type = "item", name=secondary, amount_min=1, amount_max=amount-1})
        end
        rock.loot = {}
        for _,minres in pairs(rock.minable.results) do
          table.insert(rock.loot, {item=minres.name, count_min=minres.amount_min*0.5,
          count_max=(minres.amount_max*0.8)+0.2})
        end
        if (total > 4) then
          table.insert(rock.loot, {item=tertiary, count_min=0, count_max=(total / 5)})
        end
      elseif (rock.minable.result ~= nil) then
        rock.minable.count = rock.minable.count * 0.25
        if rock.minable.result == "stone" then
          rock.minable.result = primary
        elseif rock.minable.result == "coal" then
          rock.minable.result = secondary
        end
        rock.loot = {{item=rock.minable.result, count_min=rock.minable.count*0.6,
          count_max=(rock.minable.count*0.8)+0.2}}
        if (rock.minable.count > 2) then
          table.insert(rock.loot, {item=tertiary, count_min=0, count_max=(rock.minable.count/2.5)})
        end
      else
        rock.loot = nil
      end
    else
      rock.loot = nil
    end
  end
end

-- From Alien Biomes
if (data.raw["simple-entity"]["sand-big-rock-white"] ~= nil) then
  table.insert(data.raw["simple-entity"]["sand-big-rock-white"].minable.results,
    {type="item", name="nullius-soda-ash", probability=0.1, amount_min=1, amount_max=2}
  )
end
