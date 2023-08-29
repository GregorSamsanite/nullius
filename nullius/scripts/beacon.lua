function update_small_beacon(entity)
  if (string.sub(entity.name, 9, 15) ~= "beacon-") then return end
  local tier = (string.byte(entity.name, 16) - 48)
  if ((tier < 1) or (tier > 3)) then return end

  local pos = entity.position
  local bound = {{(pos.x-1.4), (pos.y-1.4)}, {(pos.x+1.4), (pos.y+1.4)}}
  local fields = entity.surface.find_entities_filtered{area=bound,
      type = "simple-entity-with-force", name={
        "nullius-beacon-interference-horizontal",
	    "nullius-beacon-interference-vertical"}}

  local unique = { }
  local count = 0
  for _,field in pairs(fields) do
    if (field.valid) then
      local unit = global.nullius_interference_fields[field.unit_number]
	  if ((unit ~= nil) and (unique[unit] == nil)) then
	    unique[unit] = true
		count = count + 1
	  end
	end
  end

  local lvl = 0
  if (string.sub(entity.name, 17, 17) == "-") then
    lvl = (string.byte(entity.name, 18) - 48)
  end
  if (lvl == count) then return end

  local modrequest = nil
  local proxies = entity.surface.find_entities_filtered{area=bound,
      type = "item-request-proxy"}
  for _,proxy in pairs(proxies) do
	if (proxy.valid and (proxy.proxy_target == entity) and
	     (proxy.item_requests ~= nil)) then
	  local found = false
	  modrequest = { }
	  for modind, modval in pairs(proxy.item_requests) do
	    modrequest[modind] = modval
		found = true
	  end
	  if (not found) then
	    modrequest = nil
	  end
	  proxy.destroy()
	  break
	end
  end

  local newname = "nullius-beacon-"..tier
  if ((count >= 1) and (count <= 4)) then
    newname = newname.."-"..count
  end
  local was_deconstruct = entity.to_be_deconstructed()
  local oldforce = entity.force

  local was_upgrade = nil
  if (entity.to_be_upgraded() and (oldforce ~= nil)) then
    was_upgrade = entity.get_upgrade_target()
  end

  global.nullius_in_beacon_replace = true
  local newentity = entity.surface.create_entity{name = newname,
      force = oldforce, position = entity.position, spill = false,
	  fast_replace = true, create_build_effect_smoke = false}
  global.nullius_in_beacon_replace = nil

  if (newentity == nil) then return end
  if (was_deconstruct and (oldforce ~= nil)) then
    newentity.order_deconstruction(oldforce)
  end
  if (was_upgrade ~= nil) then
    newentity.order_upgrade{force=oldforce, target=was_upgrade}
  end

  if (modrequest ~= nil) then
    newentity.surface.create_entity{name = "item-request-proxy",
        force = newentity.force, position = newentity.position,
	    create_build_effect_smoke = false, target = newentity,
	    modules = modrequest}
  end
end

function update_small_beacons(pos, surface)
  local bound = {{(pos.x - 14), (pos.y - 14)}, {(pos.x + 14), (pos.y + 14)}}
  local beacons = surface.find_entities_filtered{area=bound, type="beacon"}
  for _,beacon in pairs(beacons) do
    if (beacon.valid) then update_small_beacon(beacon) end
  end
end


function create_collision_box(surface, pos, force, box_name, 
    xoffs, yoffs, xsz, ysz, layer)
  local pos = {x = (pos.x + xoffs), y = (pos.y + yoffs)}
  local collision = surface.create_entity{name = box_name, force = force,
      position = pos, create_build_effect_smoke = false}
  collision.destructible = false
  collision.minable = false
  return collision
end

function create_interference(entity, dir, xoffs, yoffs, xsz, ysz)
  local ret = create_collision_box(entity.surface, entity.position,
      entity.force, "nullius-beacon-interference-"..dir,
	  xoffs, yoffs, xsz, ysz, "layer-42")
  global.nullius_interference_fields[ret.unit_number] = entity.unit_number
  return ret
end


function build_large_beacon(entity)
  if (global.nullius_beacons == nil) then
    global.nullius_beacons = { }
	global.nullius_interference_fields = { }
  end

  local entry = {
    position = entity.position,
	surface = entity.surface,
	interference = { }
  }
  entry.interference[1] = create_interference(entity, "horizontal", 6, -8, 8, 6)
  entry.interference[2] = create_interference(entity, "horizontal", -6, 8, 8, 6)
  entry.interference[3] = create_interference(entity, "vertical", 8, 6, 6, 8)
  entry.interference[4] = create_interference(entity, "vertical", -8, -6, 6, 8)

  global.nullius_beacons[entity.unit_number] = entry
  script.register_on_entity_destroyed(entity)
  update_small_beacons(entity.position, entity.surface)
end

function build_beacon(entity)
  if (global.nullius_in_beacon_replace ~= nil) then return end
  if (string.sub(entity.name, 9, 21) == "large-beacon-") then
    build_large_beacon(entity)
  elseif (global.nullius_interference_fields ~= nil) then
    update_small_beacon(entity)
  end
end

function remove_beacon(unit)
  if (global.nullius_beacons == nil) then return false end
  local entry = global.nullius_beacons[unit]
  if (entry == nil) then return false end
  global.nullius_beacons[unit] = nil
  for _,field in pairs(entry.interference) do
    if (field.valid) then
	  global.nullius_interference_fields[field.unit_number] = nil
	  field.destroy()
	end
  end
  update_small_beacons(entry.position, entry.surface)
  return true
end
