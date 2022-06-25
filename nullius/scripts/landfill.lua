local sametiles = {
  ["landfill"] = {
    ["mineral-grey-dirt-1"] = true,
	["mineral-grey-dirt-2"] = true,
	["mineral-grey-dirt-3"] = true,
	["mineral-grey-dirt-4"] = true,
	["mineral-grey-dirt-5"] = true,
	["mineral-grey-dirt-6"] = true,
    ["mineral-grey-sand-1"] = true,
	["mineral-grey-sand-2"] = true,
	["mineral-grey-sand-3"] = true
  },
  ["nullius-land-fill-sand"] = {
    ["mineral-cream-sand-1"] = true,
    ["mineral-cream-sand-2"] = true,
    ["mineral-cream-sand-3"] = true,
    ["mineral-cream-dirt-1"] = true,
    ["mineral-cream-dirt-2"] = true,
    ["mineral-tan-sand-1"] = true,
    ["mineral-tan-sand-2"] = true,
    ["mineral-tan-sand-3"] = true
  },
  ["nullius-land-fill-bauxite"] = {
    ["mineral-brown-dirt-1"] = true,
    ["mineral-brown-dirt-2"] = true,
    ["mineral-brown-dirt-3"] = true,
    ["mineral-brown-dirt-4"] = true,
    ["mineral-brown-dirt-5"] = true,
    ["mineral-brown-dirt-6"] = true,
    ["mineral-tan-dirt-2"] = true,
    ["mineral-tan-dirt-3"] = true,
    ["mineral-tan-dirt-4"] = true
  },
  ["nullius-land-fill-iron"] = {
    ["mineral-red-dirt-1"] = true,
    ["mineral-red-dirt-2"] = true,
    ["mineral-red-dirt-3"] = true,
    ["mineral-red-dirt-4"] = true,
    ["mineral-red-dirt-5"] = true,
	["mineral-red-dirt-6"] = true,
    ["mineral-red-sand-2"] = true
  },
  ["nullius-land-fill-limestone"] = {
    ["mineral-beige-dirt-1"] = true,
	["mineral-beige-dirt-2"] = true,
	["mineral-beige-dirt-3"] = true,
	["mineral-beige-dirt-4"] = true,
	["mineral-beige-dirt-5"] = true,
	["mineral-beige-dirt-6"] = true
  }
}

local coasts = {
  ["landfill"] = "landfill",
  ["nullius-land-fill-sand"] = "mineral-beige-sand-1",
  ["nullius-land-fill-bauxite"] = "mineral-tan-dirt-6",
  ["nullius-land-fill-iron"] = "mineral-brown-sand-2",
  ["nullius-land-fill-limestone"] = "mineral-white-sand-3"
}
local coast_to_fill = {
  ["landfill"] = "landfill",
  ["mineral-beige-sand-1"] = "nullius-land-fill-sand",
  ["mineral-tan-dirt-6"] = "nullius-land-fill-bauxite",
  ["mineral-brown-sand-2"] = "nullius-land-fill-iron",
  ["mineral-white-sand-3"] = "nullius-land-fill-limestone"
}


local function landfill_map(fillname, goalname)
  local goalprefix = string.sub(goalname, 1, 8)
  local variation = tonumber(string.sub(goalname, -1, -1))
  if (goalprefix == "mineral-") then
    if (string.sub(goalname, -6, -3) ~= "dirt") then
	  variation = variation + 6
	end
  elseif (goalprefix == "volcanic") then
    variation = variation + 5
  elseif (goalprefix ~= "frozen-s") then
    variation = nil
  end

  if ((variation == nil) or (variation < 1) or (variation > 9)) then
    local proto = game.tile_prototypes[goalname]
	if (proto ~= nil) then
	  variation = (proto.layer % 9) + 1
	else
	  variation = math.floor(math.random() % 9) + 1
	end
  end

  local newname = nil
  if (string.sub(fillname, 1, 18) ~= "nullius-land-fill-") then
    if (variation > 6) then
	  newname = "mineral-grey-sand-"..(variation - 6)
	else
	  newname = "mineral-grey-dirt-"..variation
	end
  else
    local fillsuffix = string.sub(fillname, 19, -1)
    if (fillsuffix == "sand") then
      if (variation > 6) then
	    newname = "mineral-tan-sand-"..(variation - 6)
	  elseif (variation < 4) then
	    newname = "mineral-cream-sand-"..variation
	  elseif (variation == 6) then
	    newname = "mineral-cream-sand-2"
	  else
	    newname = "mineral-cream-dirt-"..(variation - 3)
	  end
    elseif (fillsuffix == "bauxite") then
      if (variation > 6) then
	    newname = "mineral-tan-dirt-"..(variation - 5)
	  else
	    newname = "mineral-brown-dirt-"..variation
	  end
    elseif (fillsuffix == "iron") then
      if (variation < 7) then
	    newname = "mineral-red-dirt-"..variation
	  elseif (variation == 8) then
	    newname = "mineral-red-sand-2"
	  elseif (variation == 7) then
	    newname = "mineral-red-dirt-1"
	  else
	    newname = "mineral-red-dirt-6"	  
	  end
    else
      if (variation < 7) then
	    newname = "mineral-beige-dirt-"..variation
	  elseif (variation > 7) then
	    newname = "mineral-beige-dirt-"..(variation - 3)
	  else
	    newname = "mineral-beige-dirt-1"
	  end
    end
  end

  if ((newname == nil) or (game.tile_prototypes[newname] == nil)) then
    newname = fillname
  end
  return newname
end


function landfill_surface(surface)
  local basename = surface.name
  local landfillname = "nullius-landfill-" .. basename
  local ret = game.surfaces[landfillname]
  if (ret ~= nil) then return ret end

  local mapgen = util.table.deepcopy(surface.map_gen_settings)
  mapgen.water = 0
  mapgen.width = 0
  mapgen.height = 0
  mapgen.starting_area = 0
  mapgen.starting_points = {}
  mapgen.peaceful_mode = true

  local noplace = {
    treat_missing_as_default = false,
    settings = { frequency = 0, size = 0, richness = 0 }
  }
  mapgen.autoplace_settings = { entity = noplace, decorative = noplace }
  mapgen.cliff_settings = {
    name = "cliff",
    cliff_elevation_0 = 0,
    cliff_elevation_interval = 0,
    richness = 0
  }

  for tn, _ in pairs(game.tile_prototypes) do
    if tn:find("water") then
      mapgen.property_expression_names["tile:"..tn..":probability"] = -200
    end
  end

  game.create_surface(landfillname, mapgen)
  return game.surfaces[landfillname]
end


local function census_to_matrix(census)
  local matrix = { }
  for i=1,4 do
	matrix[i] = { [1]=0, [2]=0, [3]=0, [4]=0 }
  end
  if (census ~= nil) then
    matrix[1][1] = 4 * census[-1][-1]
	matrix[1][2] = 2 * (census[-1][-1] + census[-1][0])
	matrix[2][1] = 2 * (census[-1][-1] + census[0][-1])
	matrix[2][2] = (2 * census[-1][-1]) + census[0][-1] + census[-1][0]
	matrix[1][4] = 4 * census[-1][1]
	matrix[1][3] = 2 * (census[-1][1] + census[-1][0])
	matrix[2][4] = 2 * (census[-1][1] + census[0][1])
	matrix[2][3] = (2 * census[-1][1]) + census[0][1] + census[-1][0]
	matrix[4][1] = 4 * census[1][-1]
	matrix[4][2] = 2 * (census[1][-1] + census[1][0])
	matrix[3][1] = 2 * (census[1][-1] + census[0][-1])
	matrix[3][2] = (2 * census[1][-1]) + census[0][-1] + census[1][0]
	matrix[4][4] = 4 * census[1][1]
	matrix[4][3] = 2 * (census[1][1] + census[1][0])
	matrix[3][4] = 2 * (census[1][1] + census[0][1])
	matrix[3][3] = (2 * census[1][1]) + census[0][1] + census[1][0]  
  end
  return matrix
end

function landfill_area(surface, center, tilename)
  local fillsurface = landfill_surface(surface)
  fillsurface.request_to_generate_chunks(center, 3)
  fillsurface.force_generate_chunk_requests()

  local a = area_bound(center, 96)
  local oldtiles = surface.find_tiles_filtered{area=a}
  local goaltiles = fillsurface.find_tiles_filtered{area=a}
  local cx = center.x - 0.5
  local cy = center.y - 0.5
  local newtiles = { }
  local newind = 0
  local bordertiles = { }
  local borderinfo = { }
  local borderind = 0
  local score = 0
  local sametile = sametiles[tilename]
  local census = nil

  if (sametile == nil) then
    sametile = { }
  else
    local x = center.x
    local y = center.y
    local tilelist = { }
    local listind = 0
    for tn,_ in pairs(sametile) do
	  listind = listind + 1
	  tilelist[listind] = tn
	end

    census = { [-1]={ }, [0]={ [0]=0 }, [1]={ } }
    census[-1][-1] = surface.count_tiles_filtered{
        area={{x-112,y-112},{x-32,y-32}}, limit=5000, name=tilelist}
    census[-1][1] = surface.count_tiles_filtered{
        area={{x-112,y+32},{x-32,y+112}}, limit=5000, name=tilelist}
    census[1][-1] = surface.count_tiles_filtered{
        area={{x+32,y-112},{x+112,y-32}}, limit=5000, name=tilelist}
    census[1][1] = surface.count_tiles_filtered{
        area={{x+32,y+32},{x+112,y+112}}, limit=5000, name=tilelist}
    census[-1][0] = surface.count_tiles_filtered{
        area={{x-128,y-32},{x-32,y+32}}, limit=5000, name=tilelist}
    census[1][0] = surface.count_tiles_filtered{
        area={{x+32,y-32},{x+128,y+32}}, limit=5000, name=tilelist}
    census[0][-1] = surface.count_tiles_filtered{
        area={{x-32,y-128},{x+32,y-32}}, limit=5000, name=tilelist}
    census[0][1] = surface.count_tiles_filtered{
        area={{x-32,y+32},{x+32,y+128}}, limit=5000, name=tilelist}
  end

  local max_matrix = 0
  matrix = census_to_matrix(census)
  for i=1,4 do
    for j=1,4 do
	  local mv = (matrix[i][j] + (math.random() * 3200)) * 1500
	  max_matrix = math.max(mv, max_matrix)
	  matrix[i][j] = mv
	end
  end
  local threshold = 45000000 + max_matrix

  for i, t in pairs(oldtiles) do
    if (not sametile[t.name]) then
      local dx = (t.position.x - cx)
      local dy = (t.position.y - cy)
	  dx = dx * dx
	  dy = dy * dy
      local dist = (dx * dx) + (dy * dy)
	  local target = goaltiles[i]
	  if (target == nil) then
	    target = t.name
	  else
	    target = target.name
	  end

      if (dist < 9000000) then
	    newind = newind + 1
	    newtiles[newind] = { goal = target, position = t.position }
	    score = score + terraform_score(t.name)
	  elseif (dist <= threshold) then
	    borderind = borderind + 1
	    bordertiles[borderind] = t.position
	    borderinfo[borderind] = { tile = t, distance = dist, goal = target }
	  end
	end
  end
  
  local propnames = { }
  propnames[1] = "elevation"
  propnames[2] = "aux"
  local properties = surface.calculate_tile_properties(
      propnames, bordertiles)
  local elevation = properties["elevation"]
  local aux = properties["aux"]
  local coastname = coasts[tilename]
  local tcount = 1.25

  local max_e = -128
  local min_e = 256
  for _, e in pairs(elevation) do
    max_e = math.max(max_e, e)
	min_e = math.min(min_e, e)
  end
  local efactor = max_e - min_e
  if (efactor > 0.01) then
    efactor = (96 / efactor)
	tcount = tcount + 1
  end

  local max_a = -128
  local min_a = 256
  for _, a in pairs(aux) do
    max_a = math.max(max_a, a)
	min_a = math.min(min_a, a)
  end
  local afactor = max_a - min_a
  if (afactor > 0.01) then
    afactor = (96 / afactor)
	tcount = tcount + 1
  end
  local tfactor = 312500 / tcount

  for i, b in pairs(borderinfo) do
    local bi = borderinfo[i]
	local e = elevation[i]
	local a = aux[i]
    local f = math.max(0, math.min(96, (e + 32)))
	local g = ((e - min_e) * efactor)
	local h = ((a - min_a) * afactor)
	local r = (math.random() * 24)
	local d = bi.distance - ((f + g + h + r) * tfactor)

    local bx = (bi.tile.position.x - cx + 160) / 64
	local by = (bi.tile.position.y - cy + 160) / 64
	local xv = 0
	local xi = 1
	local yv = 0
	local yi = 1
	if (bx > 1) then
	  if (bx >= 4) then
	    xi = 3
	    xv = 1
	  else
		xi = math.floor(bx)
		xv = bx - xi
	  end
	end
	if (by > 1) then
	  if (by >= 4) then
	    yi = 3
		yv = 1
	  else
		yi = math.floor(by)
		yv = by - yi
	  end
	end

	d = d - ((matrix[xi][yi] * (1 - xv) * (1 - yv)) +
	    (matrix[xi+1][yi] * xv * (1 - yv)) +
	    (matrix[xi][yi+1] * (1 - xv) * yv) +
		(matrix[xi+1][yi+1] * xv * yv))

	if (d < 11000000) then
	  newind = newind + 1
	  newtiles[newind] = { position = bi.tile.position }
	  local oldname = bi.tile.name
	  score = score + terraform_score(oldname)
	  if ((d >= 9000000) and (coastname ~= nil) and
	      oldname:find("water")) then
	    newtiles[newind].name = coastname
	  else
	    newtiles[newind].goal = bi.goal
	  end
	elseif (d < 20000000) then
	  local newname = nil
	  local oldname = bi.tile.name
	  if (d >= 15000000) then
	    if (oldname == "deepwater") then
		  newname = "water"
		elseif (oldname == "deepwater-green") then
		  newname = "water-green"
		end
	  elseif ((oldname == "water") or (oldname == "deepwater")) then
		newname = "water-shallow"
	  elseif ((oldname == "water-green") or
	      (oldname == "deepwater-green")) then
		newname = "water-mud"
	  end
	  if (newname ~= nil) then
	    newind = newind + 1
	    newtiles[newind] = { name = newname, position = bi.tile.position }	    
	  end
	end
  end

  local landfill_cache = { }
  for _, t in pairs(newtiles) do
    local goalname = t.goal
    if (goalname ~= nil) then
	  local newname = landfill_cache[goalname]
	  if (newname == nil) then
	    newname = landfill_map(tilename, goalname)
		landfill_cache[goalname] = newname
	  end
      t.name = newname
	  t.goal = nil
	end
  end

  surface.set_tiles(newtiles)
  return score  
end


function built_tiles(event, entity)
  local tilename = event.tile.name
  local coastname = coasts[tilename]
  if (coastname == nil) then return end

  local tile1 = event.tiles[1]
  if (tile1 == nil) then return end
  local surface = game.surfaces[event.surface_index]
  local fillsurface = landfill_surface(surface)

  local min_x = tile1.position.x
  local min_y = tile1.position.y
  local max_x = min_x
  local max_y = min_y
  for _,t in pairs(event.tiles) do
    min_x = math.min(min_x, t.position.x)
    max_x = math.max(max_x, t.position.x)
    min_y = math.min(min_y, t.position.y)
    max_y = math.max(max_y, t.position.y)
  end
  
  local center = {
      x=(min_x + math.floor((max_x - min_x) / 2)),
      y=(min_y + math.floor((max_y - min_y) / 2))
  }
  fillsurface.request_to_generate_chunks(center,
      ((math.max((max_x - min_x), (max_y - min_y)) + 113) / 64))
  fillsurface.force_generate_chunk_requests()

  local oldtiles = surface.find_tiles_filtered{
      area={{min_x-2,min_y-2},{max_x+2.5,max_y+2.5}}}
  local filltiles = fillsurface.find_tiles_filtered{
      area={{min_x-1,min_y-1},{max_x+1.5,max_y+1.5}}}

  local grid = { }
  for _,t in pairs(oldtiles) do
	if (grid[t.position.x] == nil) then
	  grid[t.position.x] = { }
	end
	grid[t.position.x][t.position.y] = {
	  oldname=t.name,
	  position=t.position,
	  coast=coast_to_fill[t.name]
	}
  end

  for _,t in pairs(event.tiles) do
    local row = grid[t.position.x]
	if (row ~= nil) then
	  local cell = row[t.position.y]
	  if (cell ~= nil) then
	    cell.change = true
		cell.oldname = t.old_tile.name
	  end
	end
  end

  local newtiles = { }
  local newind = 0
  for _,t in pairs(filltiles) do
    local tx = t.position.x
    local row = grid[tx]
	if (row ~= nil) then
	  local ty = t.position.y
	  local cell = row[ty]
	  if ((cell ~= nil) and (cell.change or (cell.coast ~= nil))) then
	    local water = false
		local adjacent = false
		for i=-1,1 do
		  if (not water) then
		    local r = grid[tx+i]
			if (r == nil) then
			  water = true
			else
		      for j=-1,1 do
			    local c = r[ty+j]
			    if (c == nil) then
				  water = true
				elseif (c.change) then
				  adjacent = true				
				elseif (c.oldname:find("water")) then
				  water = true
				end
		      end
			end
		  end
		end

        local newname = nil
        if (water) then
		  if (cell.change) then
		    newname = coastname
		  end
		elseif (cell.change or adjacent) then
		  if (cell.coast ~= nil) then
		    newname = landfill_map(cell.coast, t.name)
		  else
		    newname = landfill_map(tilename, t.name)
		  end
		end
		if (newname ~= nil) then
		  newind = newind + 1
	      newtiles[newind] = { name = newname, position = t.position }
		end
	  end
	end
  end

  for tx,row in pairs(grid) do
    for ty,cell in pairs(row) do
	  if (not cell.change) then
	    local oname = cell.oldname
	    local depth = 0
	    local green = false
	    if (oname == "water") then
	      depth = 2
	    elseif (oname == "deepwater") then
	      depth = 3
	    elseif (oname == "water-green") then
	      depth = 2
		  green = true
	    elseif (oname == "deepwater-green") then
	      depth = 3
		  green = true
	    end

        if (depth > 1) then
	      local proximity = 3
          if (depth > 2) then
		    for i=-2,2 do
		      local r = grid[tx+i]
			  if (r ~= nil) then
		        for j=-2,2 do
		          local c = r[ty+j]
				  if ((c ~= nil) and c.change) then
				    if ((i > -2) and (i < 2) and (j > -2) and (j < 2)) then
				      proximity = 1
				    elseif (proximity > 2) then
				      proximity = 2
				    end
				  end
			    end
		      end
		    end
		  else
		    for i=-1,1 do
		      local r = grid[tx+i]
			  if (r ~= nil) then
		        for j=-1,1 do
		          local c = r[ty+j]
				  if ((c ~= nil) and c.change) then
			        proximity = 1
				  end
			    end
		      end
		    end
		  end

		  if (proximity < 3) then
		    local newname = nil
		    if (proximity > 1) then
		      newname = ((green and "water-green") or "water")
		    else
		      newname = ((green and "water-mud") or "water-shallow")
		    end
		    newind = newind + 1
	        newtiles[newind] = { name = newname, position = cell.position }
		  end
		end
      end
    end
  end

  if (newind < 1) then return end
  surface.set_tiles(newtiles, true, "abort_on_collision")
end

script.on_event(defines.events.on_player_built_tile, built_tiles)
script.on_event(defines.events.on_robot_built_tile, built_tiles)


local function count_water(surface, a)
  return surface.count_tiles_filtered{area=a, limit=5000,
      name={"deepwater", "water", "water-shallow",
	        "deepwater-green", "water-green", "water-mud"}}
end

function excavate_area(surface, center)
  local a = area_bound(center, 96)
  local oldtiles = surface.find_tiles_filtered{area=a}
  local x = center.x
  local y = center.y
  local cx = x - 0.5
  local cy = y - 0.5
  local newtiles = { }
  local newind = 0
  local bordertiles = { }
  local borderinfo = { }
  local borderind = 0
  local score = 0

  local census = { [-1]={ }, [0]={ [0]=0 }, [1]={ } }
  census[-1][-1] = count_water(surface, {{x-112,y-112},{x-32,y-32}})
  census[-1][1] = count_water(surface, {{x-112,y+32},{x-32,y+112}})
  census[1][-1] = count_water(surface, {{x+32,y-112},{x+112,y-32}})
  census[1][1] = count_water(surface, {{x+32,y+32},{x+112,y+112}})
  census[-1][0] = count_water(surface, {{x-128,y-32},{x-32,y+32}})
  census[1][0] = count_water(surface, {{x+32,y-32},{x+128,y+32}})
  census[0][-1] = count_water(surface, {{x-32,y-128},{x+32,y-32}})
  census[0][1] = count_water(surface, {{x-32,y+32},{x+32,y+128}})

  local max_matrix = 0
  matrix = census_to_matrix(census)
  for i=1,4 do
    for j=1,4 do
	  local mv = (matrix[i][j] + (math.random() * 3200)) * 1600
	  max_matrix = math.max(mv, max_matrix)
	  matrix[i][j] = mv
	end
  end
  local threshold = 60000000 + max_matrix
  local waterlevel = { }

  for i, t in pairs(oldtiles) do
    local oldname = t.name
    if (oldname ~= "deepwater") then
	  local tx = t.position.x
	  local ty = t.position.y
      local dx = (tx - cx)
      local dy = (ty - cy)
	  dx = dx * dx
	  dy = dy * dy
      local dist = (dx * dx) + (dy * dy)

	  local oldlevel = nil
	  if ((oldname == "water") or (oldname == "water-green")) then
	    oldlevel = 2
	  elseif ((oldname == "water-shallow") or (oldname == "water-mud")) then
	    oldlevel = 1
	  elseif (oldname == "deepwater-green") then
	    oldlevel = 3
	  end
	  if (oldlevel ~= nil) then
	    if (waterlevel[tx] == nil) then
		  waterlevel[tx] = { }
		end
		waterlevel[tx][ty] = oldlevel
	  end

      if (dist < 300000) then
	    newind = newind + 1
	    newtiles[newind] = { name = "deepwater", position = t.position }
	    score = score + terraform_score(t.name)
	  elseif (dist <= threshold) then
	    borderind = borderind + 1
	    bordertiles[borderind] = t.position
	    borderinfo[borderind] = { tile = t, distance = dist }
	  end
	end
  end

  local propnames = { }
  propnames[1] = "elevation"
  propnames[2] = "aux"
  local properties = surface.calculate_tile_properties(
      propnames, bordertiles)
  local elevation = properties["elevation"]
  local aux = properties["aux"]
  local tcount = 1.25

  local max_e = -128
  local min_e = 256
  for _, e in pairs(elevation) do
    max_e = math.max(max_e, e)
	min_e = math.min(min_e, e)
  end
  local efactor = max_e - min_e
  if (efactor > 0.01) then
    efactor = (96 / efactor)
	tcount = tcount + 1
  end

  local max_a = -128
  local min_a = 256
  for _, a in pairs(aux) do
    max_a = math.max(max_a, a)
	min_a = math.min(min_a, a)
  end
  local afactor = max_a - min_a
  if (afactor > 0.01) then
    afactor = (96 / afactor)
	tcount = tcount + 1
  end
  local tfactor = 150000 / tcount

  for i, b in pairs(borderinfo) do
    local bi = borderinfo[i]
	local e = elevation[i]
	local a = aux[i]
    local f = math.max(0, math.min(96, (64 - e)))
	local g = ((max_e - e) * efactor)
	local h = ((a - min_a) * afactor)
	local r = (math.random() * 24)
	local d = bi.distance - ((f + g + h + r) * tfactor)

    local tx = bi.tile.position.x
    local ty = bi.tile.position.y
    local bx = (tx - cx + 160) / 64
	local by = (ty - cy + 160) / 64
	local xv = 0
	local xi = 1
	local yv = 0
	local yi = 1
	if (bx > 1) then
	  if (bx >= 4) then
	    xi = 3
	    xv = 1
	  else
		xi = math.floor(bx)
		xv = bx - xi
	  end
	end
	if (by > 1) then
	  if (by >= 4) then
	    yi = 3
		yv = 1
	  else
		yi = math.floor(by)
		yv = by - yi
	  end
	end

	d = d - ((matrix[xi][yi] * (1 - xv) * (1 - yv)) +
	    (matrix[xi+1][yi] * xv * (1 - yv)) +
	    (matrix[xi][yi+1] * (1 - xv) * yv) +
		(matrix[xi+1][yi+1] * xv * yv))

	local oldname = bi.tile.name
	local oldlevel = 0
	if (waterlevel[tx] ~= nil) then
	  oldlevel = waterlevel[tx][ty]
	  if (oldlevel == nil) then oldlevel = 0 end
	end

	for j=-3,3 do
	  local row = waterlevel[tx+j]
	  if (row ~= nil) then
	    for k=-3,3 do
		  local cell = row[ty+k]
		  if (cell ~= nil) then
		    local dist = (j * j) + (k * k)
			if ((dist > 0) and (dist < 18)) then
			  d = d - (3000000 / (5 + dist))
			end
		  end
		end
      end
	end  
	d = d - (oldlevel * 10000000)

	local newname = nil
	if (d < 300000) then
	  newname = "deepwater"
	elseif (d < 10000000) then
	  if (oldlevel < 2) then
	    newname = "water"
	  end
	elseif (d < 20000000) then
	  if (oldlevel < 1) then
	    newname = "water-shallow"
	  end
	elseif ((d < 30000000) and (oldlevel < 1)) then
	  newname = "nuclear-ground"
	  if (string.sub(oldname, 1, 8) == "mineral-") then
	    if (string.sub(oldname, -6, -3) == "dirt") then
		  local variation = tonumber(string.sub(oldname, -1, -1))
		  local newvar = math.floor((variation + 1) / 2)
		  local sandname = (string.sub(oldname, 1, -7) .. "sand-" .. newvar)
		  if (game.tile_prototypes[sandname] ~= nil) then
		    newname = sandname
		  end
		else
		  newname = oldname
		end
	  end
	end

	if (newname ~= nil) then
	  if (d < 16000000) then
	    score = score + terraform_score(oldname)
	  end
	  newind = newind + 1
	  newtiles[newind] = { name = newname, position = bi.tile.position }
	end
  end

  surface.set_tiles(newtiles)
  return score  
end
