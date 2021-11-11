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
