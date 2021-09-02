for _,rock in pairs(data.raw["simple-entity"]) do
  local primary = nil
  local secondary = "stone"
  local tertiary = "nullius-mineral-dust"
  if (string.sub(rock.name, 1, 5) == "rock-") then
    if (string.sub(rock.name, -6, -1) == "-brown") or (string.sub(rock.name, -4, -1) == "-red") or
        (string.sub(rock.name, -10, -1) == "-dustyrose") then
      primary = "nullius-bauxite"
	  tertiary = "nullius-sand"
    elseif (string.sub(rock.name, -6, -1) == "-white") then
      primary = "nullius-limestone"	
    elseif (string.sub(rock.name, -6, -1) == "-cream") or (string.sub(rock.name, -6, -1) == "-beige") then
      primary = "nullius-limestone"
      secondary = "nullius-gypsum"
    elseif (string.sub(rock.name, -4, -1) == "-tan") then
      primary = "nullius-gypsum"
      secondary = "nullius-limestone"
    elseif (string.sub(rock.name, -5, -1) == "-grey") then
      primary = "stone"
      secondary = "nullius-sandstone"
	  tertiary = "nullius-gravel"
    else
      primary = "iron-ore"
	  tertiary = "nullius-gravel"
    end
  elseif (string.sub(rock.name, 1, 10) == "sand-rock-") then
    primary = "nullius-sandstone"
	tertiary = "nullius-sand"
    if (string.sub(rock.name, -4, -1) == "-tan") or (string.sub(rock.name, -6, -1) == "-brown") or
        (string.sub(rock.name, -10, -1) == "-dustyrose") or (string.sub(rock.name, -4, -1) == "-red") then
      secondary = "nullius-bauxite"
    elseif (string.sub(rock.name, -5, -1) == "-grey") or (string.sub(rock.name, -6, -1) == "-white") or
        (string.sub(rock.name, -6, -1) == "-beige") then
      secondary = "nullius-limestone"
    elseif (string.sub(rock.name, -6, -1) == "-cream") then
      secondary = "nullius-bauxite"
    else
      secondary = "iron-ore"
    end
  end

  if (primary ~= nil) then
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
          table.insert(rock.minable.results, {name=secondary, amount_min=1, amount_max=amount-1})
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


data.raw["simple-entity"]["angels-crystal-rock"].minable = {
  mining_particle = "stone-particle",
  mining_time = 8,
  results = {
	{type="item", name="nullius-silica", amount=16},
    {type="item", name="nullius-alumina", amount=8}
  }
}
data.raw["simple-entity"]["angels-crystal-rock"].loot = {
  {item = "nullius-silica", probability = 1, count_min = 4, count_max = 12},
  {item = "nullius-alumina", probability = 1, count_min = 2, count_max = 6}
}
table.insert(data.raw["simple-entity"]["sand-rock-big-white"].minable.results,
  {type="item", name="nullius-soda-ash", probability=0.1, amount_min=1, amount_max=2}
)
