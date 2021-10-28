function entity_built_tile(event, entity)
  if ((string.sub(event.tile.name, 1, 9) ~= "safefill-") or
      (string.sub(event.tile.order, 1, 17) ~= "c[watersafefill]-")) then
    return
  end
  local tilename = string.sub(event.tile.order, 18)
  local tile = game.tile_prototypes[tilename]
  if (tile == nil) then
    return
  end
  
  local newtiles1 = { }
  local j = 0
  for _,t in pairs(event.tiles) do
    j = j + 1
    newtiles1[j] = {name = tilename, position = t.position}
  end
  local s = game.surfaces[event.surface_index]
  s.set_tiles(newtiles1, true, "abort_on_collision")

  newtiles2 = { }
  local refund = 0
  for _,t in pairs(event.tiles) do
	local curt = s.get_tile(t.position)
	if (curt.name == event.tile.name) then
	  local newtilename = t.old_tile.name
	  if (t.old_tile.mineable_properties.minable) then
	    newtilename = "dirt-1"
		if (curt.hidden_tile ~= nil) then
		  local ht = game.tile_prototypes[curt.hidden_tile]
		  if ((ht ~= nil) and (not ht.collision_mask["water-tile"])) then
		    newtilename = ht.name
		  end
		end
	  end
	  refund = refund + 1
      newtiles2[refund] = {name = newtilename, position = t.position}
	end
  end
  if (refund < 1) then
    return
  end

  s.set_tiles(newtiles2, true, false)
  local item = game.item_prototypes[event.tile.name]
  if (item == nil) then
    return
  end

  if ((event.stack ~= nil) and (event.stack.valid_for_read)) then
    local remainder = item.stack_size - event.stack.count
	if (remainder > 0) then
	  if (remainder >= refund) then
	    event.stack.count = event.stack.count + refund
		return
	  end
	  event.stack.count = event.stack.count + remainder
	  refund = refund - remainder
	end
  end

  entity.insert({name=item.name, count=refund})
end

function player_built_tile(event)
  entity_built_tile(event, game.players[event.player_index])
end

function robot_built_tile(event)
  entity_built_tile(event, event.robot)
end


local fillname = {
  ["water-shallow"] = "safefill-shallow",
  ["water"] = "safefill-medium",
  ["deepwater"] = "safefill-deep",
  ["water-mud"] = "safefill-mud",
  ["water-green"] = "safefill-green",
  ["deepwater-green"] = "safefill-deepgreen"
}

function entity_built(event)
  local entity = event.created_entity
  if (entity.name == "tile-ghost") then
	local tilename = entity.ghost_name
	local safetile = fillname[tilename]
	if (safetile ~= nil) then
      local surface = entity.surface
      local position = entity.position
      local force = entity.force
      entity.destroy()
      surface.create_entity{name = "tile-ghost",
        position = position, force = force, inner_name = safetile}
	end
  end
end


script.on_event(defines.events.on_player_built_tile, player_built_tile)
script.on_event(defines.events.on_robot_built_tile, robot_built_tile)
script.on_event(defines.events.on_built_entity, entity_built)