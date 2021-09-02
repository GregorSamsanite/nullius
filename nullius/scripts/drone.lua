function scout_effect(event, range)
  local s = game.surfaces[event.surface_index]
  local px = event.target_position.x
  local py = event.target_position.y
  local d = 16 + (range * 32)
  local bound = {{x = (px - d), y = (py - d)}, {x = (px + d), y = (py + d)}}
  event.source_entity.force.chart(s, bound)
end

function area_center(event)
  local px = event.target_position.x + 16
  local py = event.target_position.y + 16
  return {x = (px - (px % 32)), y = (py - (py % 32))}
end

function tile_center(event)
  local px = event.target_position.x
  local py = event.target_position.y
  return {x = ((px - (px % 1)) + 0.5), y = ((py - (py % 1)) + 0.5)}
end

function area_bound(center, size)
  return {{(center.x - size), (center.y - size)}, {(center.x + size), (center.y + size)}}
end

function rectangle_bound(center, sizex, sizey)
  return {{(center.x - sizex), (center.y - sizey)}, {(center.x + sizex), (center.y + sizey)}}
end

function corner_offset(center, distance, direction)
  local corner = {[1] = {-1, -1}, [2] = {1, -1}, [3] = {-1, 1}, [4] = {1, 1} }
  local c = corner[direction]
  return {x = (center.x + (c[1] * distance)), y = (center.y + (c[2] * distance))}
end


function demolition_effect(event)
  scout_effect(event, 2)
  local s = game.surfaces[event.surface_index]
  local a = area_bound(area_center(event), 64)
  local source = event.source_entity
  local force = source.force
  s.destroy_decoratives{area=a}
  local entities = s.find_entities(a)
  for _, e in pairs(entities) do
    if (e.valid and e.is_entity_with_health and e.destructible and (e ~= source)) then
      e.damage(30000, force, "explosion", source)
	end
  end
  entities = s.find_entities(a)
  for _, e in pairs(entities) do
    if (e.valid and not e.is_entity_with_health and
	    (e.type ~= "entity-ghost") and (e.type ~= "projectile") and (e.type ~= "explosion") and
		(e.type ~= "trivial-smoke") and (e.type ~= "particle-source") and (e.type ~= "resource")) then
      e.destroy({do_cliff_correction = true})
	end
  end
  s.destroy_decoratives{area=a}
end

function safe_demolition(event, size)
  local s = game.surfaces[event.surface_index]
  local a = area_bound(area_center(event), size)
  local source = event.source_entity
  local force = source.force
  s.destroy_decoratives{area=a}
  local entities = s.find_entities(a)
  for _, e in pairs(entities) do
    if (e.valid and e.is_entity_with_health and e.destructible and (e ~= source) and
	    (e.type == "simple-entity") and (string.find(e.name, "rock") ~= nil)) then	
      e.damage(30000, force, "explosion", source)
	end
  end
  entities = s.find_entities(a)
  for _, e in pairs(entities) do
    if (e.valid and ((e.type == "item-entity") or (e.type == "optimized-decorative") or
        	(e.type == "corpse") or (e.type == "cliff") or (e.type == "rail-remnants"))) then
      e.destroy({do_cliff_correction = true})
	end
  end
end


function terraform_score(name)
  if (string.sub(name, 1, 8) == "mineral-") then
    if (string.sub(name, 9, 18) == "aubergine-") then
      return 1
    elseif (string.sub(name, 9, 14) == "black-") then
      return 1
    elseif (string.sub(name, 9, 15) == "purple-") then
      return 2
    elseif (string.sub(name, 9, 15) == "violet-") then
      return 2
	end
  elseif (string.sub(name, 1, 9) == "volcanic-") then
    return 3
  end
  return 0
end

function excavation_effect(event)
  demolition_effect(event)
  local s = game.surfaces[event.surface_index]
  local c = area_center(event)
  local a = area_bound(c, 64)
  local newtiles = { }
  local score = 0
  local tiles = s.find_tiles_filtered{area=a}

  for i, t in pairs(tiles) do
    local n = t.name
	score = score + terraform_score(n)
	local p = t.position
	if ((n == "deepwater") or ((p.x >= (c.x - 34)) and (p.x <= (c.x + 34)) and
	    (p.y >= (c.y - 34)) and (p.y < (c.y + 34)))) then
	  n = "deepwater"
	elseif ((n == "water") or ((p.x >= (c.x - 52)) and (p.x <= (c.x + 52)) and
	    (p.y >= (c.y - 52)) and (p.y < (c.y + 52)))) then
	  n = "water"
	elseif ((n == "water-shallow") or ((p.x >= (c.x - 60)) and (p.x <= (c.x + 60)) and
	    (p.y >= (c.y - 60)) and (p.y < (c.y + 60)))) then
	  n = "water-shallow"
	else
	  n = "nuclear-ground"
	end
    newtiles[i] = {name = n, position = p}
  end

  s.set_tiles(newtiles)
  if (event.source_entity ~= nil) then
    bump_mission_goal(9, score, event.source_entity.force)
  end
end

function terraforming_effect(event, tile, terraform_mult)
  scout_effect(event, 2)
  safe_demolition(event, 64)
  local s = game.surfaces[event.surface_index]
  local c = area_center(event)
  local a = area_bound(c, 64)
  local newtiles = { }
  local score = 0

  local tiles = s.find_tiles_filtered{area=a}
  for i, t in pairs(tiles) do
    newtiles[i] = {name = tile, position = t.position}
	score = score + terraform_score(t.name)
  end
  s.set_tiles(newtiles)

  if (event.source_entity ~= nil) then
    bump_mission_goal(9, (score * terraform_mult), event.source_entity.force)
  end
end


function miner_effect(event, ore, size, richness, goal_ind, goal_amount)
  scout_effect(event, 1)
  safe_demolition(event, (size+4))
  local s = game.surfaces[event.surface_index]
  local c = tile_center(event)
  local a = area_bound(c, (size+2))
  local newtiles = { }
  local tiles = s.find_tiles_filtered{area=a, position=c, radius=(size+1.5), collision_mask="water-tile"}
  local j = 0
  for i, t in pairs(tiles) do
    j = j + 1
    newtiles[j] = {name = "nuclear-ground", position = t.position}
  end
  s.set_tiles(newtiles)
  local threshold = size * size * 0.14063

  tiles = s.find_tiles_filtered{area=a, position=c, radius=(size+0.5), collision_mask="ground-tile"}
  for i, t in pairs(tiles) do
    local dx = (t.position.x - c.x)
	local dy = (t.position.y - c.y)
	local dist = (dx * dx) + (dy * dy)
	local value = (5000 + (math.random() * 2000)) * richness
	if (dist > threshold) then
	  value = (value * threshold) / dist
	end
	local rpos = {x=(t.position.x+0.5), y=(t.position.y+0.5)}
    local e = s.find_entity(ore, rpos)
	if (e ~= nil) then
	  e.amount = e.amount + value
	elseif (s.count_entities_filtered{area={{rpos.x-0.49, rpos.y-0.49},
	    {rpos.x+0.49, rpos.y+0.49}}, type="resource"}<1) then
	  s.create_entity({name=ore, amount=value, position=rpos})
	end
  end

  local entities = s.find_entities(a)
  for _, e in pairs(entities) do
    if (e.valid and (e.type == "mining-drill")) then
	  e.active = false
      e.active = true
	end
  end

  if ((goal_ind ~= nil) and (event.source_entity ~= nil)) then
    bump_mission_goal(goal_ind, goal_amount, event.source_entity.force)
  end
end


function count_list(lst)
  local count = 0
  for _ in pairs(lst) do
    count = count + 1
  end
  return count
end

function count_decoratives(s, a, l, n)
  local decor_list = s.find_decoratives_filtered{area=a, limit=l, name={n}}
  local count = count_list(decor_list)
  return count
end
  
function algaculture_effect(event)
  scout_effect(event, 3)
  local s = game.surfaces[event.surface_index]
  local c = tile_center(event)
  local a = area_bound(c, 80)
  local land_count = s.count_tiles_filtered{area=a, position=c, radius=80, limit=12000, collision_mask="ground-tile"}
  local land_bonus = 1.0 + (math.min(land_count, 12000) / 6000)
  local nearby_count = count_decoratives(s, a, 150, "nullius-algae")
  local algae_count = math.floor((((820 * math.random()) + 400) * land_bonus) / (math.min(nearby_count, 150) + 50))

  local b = area_bound(c, 66)
  local water_tiles = s.find_tiles_filtered{area=b, position=c, radius=64, collision_mask="water-tile"}
  local water_count = count_list(water_tiles)
  algae_count = math.min(algae_count, math.floor(water_count / 3))
  local water_score = {
    ["water"] = 0.6,
    ["deepwater"] = 0.3,
    ["water-green"] = 0.7,
    ["deepwater-green"] = 0.4,
    ["water-shallow"] = 1,
    ["water-mud"] = 0.9
  }

  for _ = 1, algae_count do
    local t = water_tiles[math.floor(math.min(water_count, 1 + (math.random() * water_count)))]
	if (count_decoratives(s, rectangle_bound(t.position, 1, 0.5), 2, "nullius-algae") < 1) then
	  local p = t.position
	  local nearby1 = count_decoratives(s, rectangle_bound(p, 2, 1), 8, "nullius-algae")
	  local nearby2 = count_decoratives(s, rectangle_bound(p, 4, 2), 8, "nullius-algae")
	  local nearby3 = count_decoratives(s, rectangle_bound(p, 8, 4), 16, "nullius-algae")
	  local nearby4 = count_decoratives(s, rectangle_bound(p, 16, 8), 32, "nullius-algae")
	  local odds = (6.6 / (6 + (nearby1 * 8) + (nearby2 * 4) + (nearby3 * 2) + nearby4)) - 0.1
	  if (water_score[t.name] ~= nil) then
	    odds = odds * water_score[t.name]
	  else
	    odds = odds * 0.5
	  end
	  if (math.random() < odds) then
	    s.create_decoratives{check_collision=true, decoratives={{name="nullius-algae", position=p, amount=1}}}
	  end
	end
  end

  if (event.source_entity ~= nil) then
    local new_count = count_decoratives(s, nil, 6000, "nullius-algae")
    set_mission_goal(3, new_count, event.source_entity.force)
  end
end

function init_grass_matrix()
  global.grass_matrix = {}
  for mx = 1, 8 do
    global.grass_matrix[mx] = {}
    for my = 1, 8 do
	  global.grass_matrix[mx][my] = {}
	  local sum = 0
	  for gx = 1, 5 do
	    global.grass_matrix[mx][my][gx] = {}
		local dx = (gx * 8) - mx - 19.5
		for gy = 1, 5 do
		  local dy = (gy * 8) - my - 19.5
		  local value = math.max((1 / ((dx * dx) + (dy * dy))) - 0.0025, 0)
		  global.grass_matrix[mx][my][gx][gy] = value
		  sum = sum + value
		end
	  end
	  for gx = 1, 5 do
	    for gy = 1, 5 do
		  global.grass_matrix[mx][my][gx][gy] = global.grass_matrix[mx][my][gx][gy] / sum
		end
	  end
	end
  end
end

function horticulture_effect(event)
  scout_effect(event, 3)
  local s = game.surfaces[event.surface_index]
  local c = area_center(event)
  local water_count = {}
  for i = 1, 4 do
    local p = corner_offset(c, 64, i)
	local a = area_bound(p, 96)
    water_count[i] = s.count_tiles_filtered{area=a, position=p, radius=95, limit=8000, collision_mask="water-tile"}
  end

  local grid = {}
  for xi = 1, 20 do
    grid[xi] = {}
	local xfactor = 0
    if (xi > 18.5) then
	  xfactor = 1
    elseif (xi > 1.5) then
	  xfactor = (xi - 1.5) / 17
	end

	for yi = 1, 20 do
	  local yfactor = 0
      if (yi > 18.5) then
	    yfactor = 1
      elseif (yi > 2.5) then
	    yfactor = (yi - 2.5) / 16
	  end

	  local nw = (1 - xfactor) * (1 - yfactor) * water_count[1]
	  local ne = xfactor * (1 - yfactor) * water_count[2]
	  local sw = (1 - xfactor) * yfactor * water_count[3]
	  local se = xfactor * yfactor * water_count[4]
	  local water_score = math.max(0, math.min(40, (nw + ne + sw + se) / 150))
	  grid[xi][yi] = water_score
	end
  end

  local rocks = s.find_entities_filtered{area=area_bound(c, 72), type={"simple-entity", "resource", "cliff"}}
  for _, e in pairs(rocks) do
	if (e.valid and (e.position ~= nil) and (e.selection_box ~= nil)) then
	  local rx = e.position.x - c.x
	  local ry = e.position.y - c.y
	  local sx = e.selection_box.right_bottom.x - e.selection_box.left_top.x
	  local sy = e.selection_box.right_bottom.y - e.selection_box.left_top.y
	  local area = math.max(0, (sx * sy * 1.5))
	  local gx = math.floor(rx / 8) + 11
	  local gy = math.floor(ry / 8) + 11
	  local mx = rx % 8
	  local my = ry % 8

	  local xpos = 0
	  if (mx < 4) then
	    gx = gx - 1
		xpos = (4 + mx) / 8
	  else
		xpos = (mx - 4) / 8
	  end
	  local ypos = 0
	  if (my < 4) then
	    gy = gy - 1
		ypos = (4 + my) / 8
	  else
		ypos = (my - 4) / 8
	  end

	  grid[gx][gy] = math.max(-80, (grid[gx][gy] - (area * (1 - xpos) * (1 - ypos))))
	  grid[gx+1][gy] = math.max(-80, (grid[gx+1][gy] - (area * xpos * (1 - ypos))))
	  grid[gx][gy+1] = math.max(-80, (grid[gx][gy+1] - (area * (1 - xpos) * ypos)))
	  grid[gx+1][gy+1] = math.max(-80, (grid[gx+1][gy+1] - (area * xpos * ypos)))
	end
  end

  if (global.grass_matrix == nil) then
    init_grass_matrix()
  end

  local a = area_bound(c, 64)
  local land_tiles = s.find_tiles_filtered{area=a, position=c, collision_mask="ground-tile"}
  local newtiles = { }
  local newcount = 0
  local newscore = 0

  for _, t in pairs(land_tiles) do
    if ((t.name ~= "grass-1") and
	    ((t.prototype.walking_speed_modifier == nil) or (t.prototype.walking_speed_modifier < 1.2))) then
      local tx = t.position.x - c.x
	  local ty = t.position.y - c.y
      local mx = math.floor(tx % 8) + 1
	  local my = math.floor(ty % 8) + 1
	  local gx = math.floor(tx / 8) + 8
	  local gy = math.floor(ty / 8) + 8
	  local score = 0
	  for ix = 1, 5 do
	    for iy = 1, 5 do
	      score = score + (grid[gx + ix][gy + iy] * global.grass_matrix[mx][my][ix][iy])
	    end
	  end

	  if ((t.prototype.vehicle_friction_modifier ~= nil) and (t.prototype.vehicle_friction_modifier > 1.6)) then
	    score = score / (2 * (t.prototype.vehicle_friction_modifier - 1.1))
	  end

      local lvl = 0
	  if (score > 23) then
	    if (score >= 24) then 
	      lvl = 3
		elseif (math.random() < (score - 23)) then
		  lvl = 3
		else
		  lvl = 2
		end
	  elseif (score < 8) then
	    if (score <= 7) then 
	      lvl = 0
		elseif (math.random() < (score - 7)) then
		  lvl = 1
		else
		  lvl = 0
		end	    
	  elseif (score >= 16) then
	    lvl = 2
	  elseif (score <= 15) then
	    lvl = 1
	  elseif (math.random() < (score - 15)) then
		lvl = 2
	  else
		lvl = 1
	  end

	  local tname = nil
	  if (lvl == 3) then
	    tname = "grass-1"
	  elseif (lvl == 2) then
	    tname = "grass-2"
	  elseif (lvl == 1) then
	    tname = "grass-4"
	  end

      if (tname ~= nil) then
	    local oldlvl = 0
	    if (t.name == "grass-2") then
	      oldlvl = 2
	    elseif (t.name == "grass-4") then
	      oldlvl = 1
	    end

	    if (lvl > oldlvl) then
          newcount = newcount + 1
		  newscore = newscore + lvl - oldlvl
		  newtiles[newcount] = {name = tname, position = t.position}
		end
      end
    end
  end

  s.set_tiles(newtiles)
  local decor_count = math.floor(((newcount + 10) / 100) * (1 + math.random()))
  for _ = 1, decor_count do
    local t = land_tiles[math.floor(math.min(newcount, 1 + (math.random() * newcount)))]
	local dname = nil
	if (t.name == "grass-1") then
	  dname = "green-hairy-grass"
	elseif (t.name == "grass-2") then
	  local n = math.random()
	  if (n > 0.6) then
	    dname = "green-hairy-grass"
	  elseif (n > 0.2) then
	    dname = "brown-hairy-grass"
	  end
	elseif ((t.name == "grass-4") and (math.random() < 0.5)) then
	  dname = "brown-hairy-grass"
	end

	if ((dname ~= nil) and (count_decoratives(s, area_bound(t.position, 1.5), 2, nil) < 1)) then
      s.create_decoratives{check_collision=true, decoratives={{name=dname, position=t.position, amount=1}}}
	end
  end

  if (event.source_entity ~= nil) then
    bump_mission_goal(4, newscore, event.source_entity.force)
  end
end

function arboriculture_effect(event)
  scout_effect(event, 3)
  local s = game.surfaces[event.surface_index]
  local c = tile_center(event)
  local a = area_bound(c, 96)
  local worm_count = count_decoratives(s, area_bound(c, 96), 5, "worms-decal")
  local fumarole_count = s.count_entities_filtered{area=area_bound(c, 256), position=c, radius=256, limit=10, name="nullius-fumarole"}
  local count = (math.random() * 2) + (worm_count * (2 + (3 * math.random()))) - (fumarole_count * 1.5)

  for _ = 1, count do
    local angle = 2 * math.pi * math.random()
	local distance = (math.random() * 96) + (math.random() * 48) - 72
    local p = {x = c.x + (math.cos(angle) * distance), y = c.y + (math.sin(angle) * distance)}
    local overlap_water = s.count_tiles_filtered{area=area_bound(p, 1), limit=2, collision_mask="water-tile"}
	local overlap_obstacle = s.count_entities_filtered{area=area_bound(p, 1.5), limit=2}
	if ((overlap_obstacle < 1) and (overlap_water < 1)) then
	  local ore_count = s.count_entities_filtered{area=area_bound(p, 32), position=p, radius=30, limit=200, type="resource"}
	  if (math.random() < ((200 - ore_count) / 200)) then
	    s.create_entity({name="tree-08", amount=1, position=p})
	  end
	end
  end

  if (event.source_entity ~= nil) then
    local new_count = s.count_entities_filtered{name="tree-08", limit=8000}
    set_mission_goal(5, new_count, event.source_entity.force)
  end
end

function entomology_effect(event)
  scout_effect(event, 3)
  local s = game.surfaces[event.surface_index]
  local c = tile_center(event)
  local attempt_count = 8 + (math.random() * 9)
  if (global.nullius_mission_status[2] < 35) then
    attempt_count = attempt_count - (34 - global.nullius_mission_status[2])
  end

  for _ = 1, attempt_count do
    local angle = 2 * math.pi * math.random()
	local distance = (math.random() * 96) + (math.random() * 48) - 72 
    local p = {x = c.x + (math.cos(angle) * distance), y = c.y + (math.sin(angle) * distance)}
	local o = area_bound(p, 5)
	local overlap_decorative = count_decoratives(s, o, 2, "worms-decal")
    local overlap_water = s.count_tiles_filtered{area=o, position=p, radius=4, limit=4, collision_mask="water-tile"}
	if ((overlap_decorative < 1) and (overlap_water < 3)) then
	  local a = area_bound(p, 25)
      local grass_count = s.count_tiles_filtered{area=a, position=p, radius=24, limit=1000,
	      collision_mask="ground-tile", name={"grass-1", "grass-2", "grass-4"}}
	  local tree_count = s.count_entities_filtered{area=a, position=p, radius=24, limit=12, type="tree"}
	  local worm_count = count_decoratives(s, a, 10, "worms-decal")
	  local odds = ((grass_count / 200) + (tree_count / 2) - worm_count) / 10
	  if (math.random() < odds) then
	    s.create_decoratives{check_collision=true, decoratives={{name="worms-decal", position=p, amount=1}}}		
	  end
	end
  end

  if (event.source_entity ~= nil) then
    local new_count = count_decoratives(s, nil, 800, "worms-decal")
    set_mission_goal(6, new_count, event.source_entity.force)
  end
end

function aquaculture_effect(event)
  scout_effect(event, 3)
  local s = game.surfaces[event.surface_index]
  local c = tile_center(event)
  local a = area_bound(c, 96)
  local algae_count = count_decoratives(s, a, 50, "nullius-algae")
  local fish_count = s.count_entities_filtered{area=a, limit=30, type="fish"}  
  local attempt_count = ((((math.random() * 31) + (5 * algae_count)) / (10 + fish_count)) - 3) / 2
  if (global.nullius_mission_status[2] < 68) then
    attempt_count = attempt_count - ((68 - global.nullius_mission_status[2]) / 2)
  end

  for _ = 1, attempt_count do
    local angle = 2 * math.pi * math.random()
	local distance = (math.random() * 96) + (math.random() * 48) - 72
    local p = {x = c.x + (math.cos(angle) * distance), y = c.y + (math.sin(angle) * distance)}
    local overlap_land = s.count_tiles_filtered{area=area_bound(p, 1), limit=2, collision_mask="ground-tile"}
	local overlap_obstacle = s.count_entities_filtered{area=area_bound(p, 1.5), limit=2}
	if ((overlap_obstacle < 1) and (overlap_land < 1)) then
	  s.create_entity({name="fish", amount=1, position=p})
	end
  end

  if (event.source_entity ~= nil) then
    local new_count = s.count_entities_filtered{name="fish", limit=500}
    set_mission_goal(7, new_count, event.source_entity.force)
  end
end

function husbandry_effect(event)
  scout_effect(event, 2)
  local s = game.surfaces[event.surface_index]
  local c = tile_center(event)
  local overlap_water = s.count_tiles_filtered{area=area_bound(c, 4), limit=2, collision_mask="water-tile"}
  local overlap_nest = s.count_entities_filtered{area=area_bound(c, 4), name="biter-spawner", limit=2}

  if ((overlap_nest < 1) and (overlap_water < 1)) then
    local a = area_bound(c, 128)
    local fish_count = s.count_entities_filtered{area=a, position=c, radius=128, limit=50, type="fish"}
    local tree_count = s.count_entities_filtered{area=a, position=c, radius=128, limit=200, type="tree"}
    local nest_count = s.count_entities_filtered{area=a, position=c, radius=128, limit=25, type="unit-spawner"}
    local fumarole_count = s.count_entities_filtered{area=a, position=c, radius=128, limit=10, name="nullius-fumarole"}
    local penalty = 5 * (5 + fumarole_count) * (2 + nest_count)
    local bonus = math.max(0, (math.sqrt(fish_count * tree_count) * (global.nullius_mission_status[2] - 50) / 40))
    local odds = math.sqrt(math.max(0, ((bonus / penalty) - 0.2)))
	
	if (math.random() < odds) then
	  if (global.nullius_mission_status[8] == 0) then
	    game.forces["enemy"].reset_evolution()
	  elseif (game.forces["enemy"].evolution_factor < 0.8) then
	    game.forces["enemy"].evolution_factor = game.forces["enemy"].evolution_factor + 0.01
	  end
	  s.create_entity({name="biter-spawner", amount=1, position=c})	  

      if (event.source_entity ~= nil) then
        local new_count = s.count_entities_filtered{name="biter-spawner", limit=500}
        set_mission_goal(8, new_count, event.source_entity.force)
      end
	end
  end
end


function trigger_effect(event)
  if (string.find(event.effect_id, "nullius%-") == 1) then
    if (event.effect_id == "nullius-scout-drone-effect-1") then
      scout_effect(event, 3)
    elseif (event.effect_id == "nullius-scout-drone-effect-2") then
      scout_effect(event, 6)
    elseif (event.effect_id == "nullius-demolition-drone-effect") then
      demolition_effect(event)
    elseif (event.effect_id == "nullius-excavation-drone-effect") then
      excavation_effect(event)
	elseif (string.find(event.effect_id, "terraforming%-drone%-effect%-", 9) == 9) then
	  if (event.effect_id == "nullius-terraforming-drone-effect-grey") then
        terraforming_effect(event, "landfill", 1)
	  elseif (event.effect_id == "nullius-terraforming-drone-effect-tan") then
        terraforming_effect(event, "nullius-land-fill-sand", 2)
	  elseif (event.effect_id == "nullius-terraforming-drone-effect-brown") then
        terraforming_effect(event, "nullius-land-fill-bauxite", 2)
	  elseif (event.effect_id == "nullius-terraforming-drone-effect-red") then
        terraforming_effect(event, "nullius-land-fill-iron", 1.5)
	  elseif (event.effect_id == "nullius-terraforming-drone-effect-beige") then
        terraforming_effect(event, "nullius-land-fill-limestone", 1)
      end
	elseif (string.find(event.effect_id, "paving%-drone%-effect%-", 9) == 9) then
	  if (event.effect_id == "nullius-paving-drone-effect-grey") then
        terraforming_effect(event, "refined-concrete", 0)
	  elseif (event.effect_id == "nullius-paving-drone-effect-hazard") then
        terraforming_effect(event, "refined-hazard-concrete-left", 0)
	  elseif (event.effect_id == "nullius-paving-drone-effect-red") then
        terraforming_effect(event, "red-refined-concrete", 0)
	  elseif (event.effect_id == "nullius-paving-drone-effect-blue") then
        terraforming_effect(event, "blue-refined-concrete", 0)
	  elseif (event.effect_id == "nullius-paving-drone-effect-yellow") then
        terraforming_effect(event, "yellow-refined-concrete", 0)
	  elseif (event.effect_id == "nullius-paving-drone-effect-green") then
        terraforming_effect(event, "green-refined-concrete", 0)
	  elseif (event.effect_id == "nullius-paving-drone-effect-purple") then
        terraforming_effect(event, "purple-refined-concrete", 0)
	  elseif (event.effect_id == "nullius-paving-drone-effect-brown") then
        terraforming_effect(event, "brown-refined-concrete", 0)
	  elseif (event.effect_id == "nullius-paving-drone-effect-black") then
        terraforming_effect(event, "black-refined-concrete", 0)
	  end
	elseif (string.find(event.effect_id, "guide%-drone%-effect%-", 9) == 9) then
	  if (event.effect_id == "nullius-guide-drone-effect-iron-1") then
        miner_effect(event, "iron-ore", 16, 1.493)
	  elseif (event.effect_id == "nullius-guide-drone-effect-iron-2") then
        miner_effect(event, "iron-ore", 32, 14.93)
	  elseif (event.effect_id == "nullius-guide-drone-effect-sandstone-1") then
        miner_effect(event, "nullius-sandstone", 16, 1.243)
	  elseif (event.effect_id == "nullius-guide-drone-effect-sandstone-2") then
        miner_effect(event, "nullius-sandstone", 32, 12.43)
	  elseif (event.effect_id == "nullius-guide-drone-effect-bauxite-1") then
        miner_effect(event, "nullius-bauxite", 15, 1.132)
	  elseif (event.effect_id == "nullius-guide-drone-effect-bauxite-2") then
        miner_effect(event, "nullius-bauxite", 30, 11.32)
	  elseif (event.effect_id == "nullius-guide-drone-effect-limestone-1") then
        miner_effect(event, "nullius-limestone", 14, 1.05)
	  elseif (event.effect_id == "nullius-guide-drone-effect-limestone-2") then
        miner_effect(event, "nullius-limestone", 28, 10.5)
	  elseif (event.effect_id == "nullius-guide-drone-effect-copper-1") then
        miner_effect(event, "copper-ore", 13, 0.941, 10, 1)
	  elseif (event.effect_id == "nullius-guide-drone-effect-copper-2") then
        miner_effect(event, "copper-ore", 26, 9.41, 10, 40)
	  elseif (event.effect_id == "nullius-guide-drone-effect-uranium-1") then
        miner_effect(event, "uranium-ore", 10, 0.781, 11, 1)
	  elseif (event.effect_id == "nullius-guide-drone-effect-uranium-2") then
        miner_effect(event, "uranium-ore", 20, 7.91, 11, 40)
	  end
	elseif (event.effect_id == "nullius-algaculture-drone-effect") then
	  algaculture_effect(event)
	elseif (event.effect_id == "nullius-horticulture-drone-effect") then
	  horticulture_effect(event)
	elseif (event.effect_id == "nullius-arboriculture-drone-effect") then
	  arboriculture_effect(event)
	elseif (event.effect_id == "nullius-entomology-drone-effect") then
	  entomology_effect(event)
	elseif (event.effect_id == "nullius-aquaculture-drone-effect") then
	  aquaculture_effect(event)
	elseif (event.effect_id == "nullius-husbandry-drone-effect") then
	  husbandry_effect(event)
	end
  end
end

script.on_event(defines.events.on_script_trigger_effect, trigger_effect)
