function equipment_installed(event)
  local grid = event.grid
  local eq = event.equipment
  if ((eq == nil) or (grid == nil)) then return end
  if (string.sub(eq.name, 1, 8) ~= "nullius-") then return end

  
  if (string.sub(eq.name, 9, 24) == "charged-battery-") then
    local pos = eq.position
	local newname = "nullius-battery-" .. string.sub(eq.name, 25, -1)
	grid.take{equipment=eq, position=pos}
	local eq2 = grid.put{name=newname, position=pos}
	eq2.energy = eq2.max_energy
  end
end

script.on_event(defines.events.on_equipment_inserted, equipment_installed)


local function select_area(event, alt)
  if (event.item ~= "nullius-rock-picker") then return end
  local player = game.players[event.player_index]
  event.surface.destroy_decoratives{area = event.area}
  local filter = nil
  if (alt) then
    filter = {"rail-remnants", "corpse"}
  else
    filter = {"simple-entity", "item-entity", "rail-remnants", "corpse"}
  end
  local entities = event.surface.find_entities_filtered{area = event.area,
	  type = filter, to_be_deconstructed = false}

  for _, e in pairs(entities) do
	if (e.valid) then
	  local destroy = true
	  if (e.type == "simple-entity") then
	    destroy = false
		if ((string.find(e.name, "rock") ~= nil) and
		    e.is_entity_with_health and e.destructible) then
		  e.order_deconstruction(player.force, player)
		end
	  elseif (e.type == "corpse") then
		if ((e.name == "transport-caution-corpse") or
		    (e.name == "invisible-transport-caution-corpse")) then
		  destroy = false
		end
	  end
	  if (destroy) then
	    e.destroy()
	  end
	end
  end
end

local function select_area_standard(event)
  select_area(event, false)
end
local function select_area_alt(event)
  select_area(event, true)
end

script.on_event(defines.events.on_player_selected_area, select_area_standard)
script.on_event(defines.events.on_player_alt_selected_area, select_area_alt)
