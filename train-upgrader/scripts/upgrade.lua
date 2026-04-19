carriage_inventories = {
  defines.inventory.fuel,
  defines.inventory.burnt_result,
  defines.inventory.cargo_wagon,
  defines.inventory.artillery_wagon_ammo
}


function normalize_distance(distance)
  return (math.ceil(2 * distance))
end

function different_corner(corner1, corner2)
  return ((normalize_distance(corner1.x) ~= normalize_distance(corner2.x)) or
      (normalize_distance(corner1.y) ~= normalize_distance(corner2.y)))
end

function different_box(box1, box2)
  return (different_corner(box1.left_top, box2.left_top) or
      different_corner(box1.right_bottom, box2.right_bottom))
end

function equal_mask(car1, car2)
  local mask1 = car1.collision_mask.layers
  local mask2 = car2.collision_mask.layers
  for layer, value in pairs(mask1) do
    if (mask2[layer] ~= value) then return false end
  end
  for layer, value in pairs(mask2) do
    if (mask1[layer] ~= value) then return false end
  end
  return true
end

function compatible_carriage(carriage, c2)
  local c1 = carriage.prototype
  if (c1.type ~= c2.type) then return false end
  if (c1.name == c2.name) then return true end
  if (different_box(c1.selection_box, c2.selection_box)) then return false end
  if (different_box(c1.collision_box, c2.collision_box)) then return false end
  if (not equal_mask(c1, c2)) then return false end

  for _, inv_type in pairs(carriage_inventories) do
    if ((inv_type ~= defines.inventory.fuel) and
        (inv_type ~= defines.inventory.burnt_result)) then
      local inv = carriage.get_inventory(inv_type)
	  if ((inv ~= nil) and (inv.valid) and (not inv.is_empty())) then
	    local sz = c2.get_inventory_size(inv_type)
	    if ((sz == nil) or (sz < 1)) then return false end
	  end
	end
  end

  if (((carriage.grid ~= nil) and (carriage.grid.count() > 0)) and
      ((c2.grid_prototype == nil) or
	    (c2.grid_prototype.width < carriage.grid.width) or
		(c2.grid_prototype.height < carriage.grid.height))) then
	return false
  end
  return true
end

function upgradeable_carriage(car)
  if (not car.can_be_destroyed()) then return false end
  local items = car.prototype.items_to_place_this
  if ((items == nil) or (items[1] == nil)) then return false end
  if ((car.type == "locomotive") or (car.type == "cargo-wagon") or
      (car.type == "fluid-wagon") or (car.type == "artillery-wagon")) then
	return true
  end
  return false
end


local function car_inv(car, typ)
  local inv = car.get_inventory(typ)
  if ((inv == nil) or (not inv.valid)) then return nil end
  return inv
end

function record_inventory(car)
  local contents = nil
  for _, inv_type in pairs(carriage_inventories) do
    local inv = car_inv(car, inv_type)
	if (inv ~= nil) then
	  local entry = { slots = #inv }
	  if (inv.supports_bar()) then
	    entry.bar = inv.get_bar()
		if (entry.bar > entry.slots) then
		  entry.bar = nil
		else
		  entry.slots = entry.bar
		end
	  end
	  if (inv.is_filtered()) then
		entry.filters = { }
		for i = 1, entry.slots do
		  entry.filters[i] = inv.get_filter(i)
		end
	  end
	  if ((not inv.is_empty()) or (entry.bar ~= nil) or
	      (entry.filters ~= nil)) then
		if (contents == nil) then contents = { } end
		entry.contents = inv.get_contents()
	    contents[inv_type] = entry
	  end
	end
  end
  return contents
end

function restore_inventory(car, contents, station)
  if (contents == nil) then return end
  for inv_type, entry in pairs(contents) do
    local inv = car.get_inventory(inv_type)
	if ((inv ~= nil) and inv.valid) then
	  local slots = #inv
	  if (inv.supports_bar() and (entry.bar ~= nil) and
	      (entry.bar < slots)) then
	    inv.set_bar(entry.bar)
		slots = entry.bar
	  end

	  if (inv.supports_filters() and (entry.filters ~= nil)) then
	    if (slots == entry.slots) then
		  for i = 1, entry.slots do
		    inv.set_filter(i, entry.filters[i])
		  end
		else
		  local totals = { }
		  local different = 0
		  for i = 1, entry.slots do
		    local filter = entry.filters[i]
			if (filter == nil) then filter = " " end
			if (totals[filter] == nil) then
			  totals[filter] = 1
			  different = different + 1
			else
			  totals[filter] = totals[filter] + 1
			end
		  end
		  
		  local oldslots = entry.slots
		  local newslots = slots
		  local current = 1
		  for filter, count in pairs(totals) do
		    local num = 1
			if (oldslots > 0) then
		      local fraction = (newslots * count) / oldslots
			  num = math.max(1, math.floor(fraction + 0.5))
			end
			local last = current + num - 1
			if (last > slots) then
			  last = slots
			end
			if ((filter ~= " ") and (last >= current)) then
			  for i = current, last do
			    inv.set_filter(i, filter)
			  end
			end
			current = last + 1
			oldslots = oldslots - count
			newslots = newslots - num
		  end
		end
	  end

	  for key, inv_slot in pairs(entry.contents) do
	    itemname = inv_slot.name
	    amount = inv_slot.count
        quality = inv_slot.quality
	    local inserted = inv.insert({name=itemname, count=amount, quality = quality})
		local remaining = amount - inserted
		if (remaining < 1) then
            entry.contents[key] = nil
        else
	      entry.contents[key].count = remaining
        end
	  end
	end

	for _, inv_slot in pairs(entry.contents) do
		itemname = inv_slot.name
        amount = inv_slot.count
		quality = inv_slot.quality
	    for _,s in pairs(station.receivers) do
	        local receiver = s.get_inventory(defines.inventory.chest)
	        if ((receiver ~= nil) and receiver.can_insert({name=itemname, count=1, quality = quality})) then
		        amount = amount - receiver.insert({name=itemname, count=amount, quality = quality})
		        if (amount < 1) then break end
			end
	    end
	end
  end
end

function record_grid(grid)
  if ((grid == nil) or (not grid.valid)) then return nil end
  if (grid.count() < 1) then return nil end
  local contents = { }
  local num = 0
  for _, eq in pairs(grid.equipment) do
    if (eq.valid) then
      num = num + 1
	  local entry = { name = eq.name,
	      position = eq.position, proto = eq.prototype}
	  if ((eq.burner ~= nil) and eq.burner.valid) then
	    if ((eq.burner.inventory ~= nil) and eq.burner.inventory.valid) then
	      entry.fuel = eq.burner.inventory.get_contents()
		end
		if ((eq.burner.burnt_result_inventory ~= nil) and
		    eq.burner.burnt_result_inventory.valid) then
		  entry.burnt = eq.burner.burnt_result_inventory.get_contents()
		end
	  end
	  contents[num] = entry
	end
  end
  return contents
end

function restore_grid(grid, contents, station, doit)
  if (contents == nil) then return false end
  if ((grid == nil) or (not grid.valid)) then return false end
  local ret = false
  for _, eq in pairs(contents) do
    local neweq = nil
	if (doit) then
	  neweq = grid.put{ name = eq.name, position = eq.position }
	end
	if (neweq == nil) then
	  if (eq.proto.take_result ~= nil) then
	    local take_name = eq.proto.take_result.name
	    for _,s in pairs(station.receivers) do
	      local receiver = s.get_inventory(defines.inventory.chest)
	      if ((receiver ~= nil) and receiver.can_insert(take_name) and
		      (receiver.insert({name=take_name}) > 0)) then
			break
		  end
		end
	  end
	else
	  ret = true
	  if ((neweq.burner ~= nil) and neweq.burner.valid) then
	    local burn = neweq.burner
	    if ((eq.fuel ~= nil) and (burn.inventory ~= nil) and
	        burn.inventory.valid) then
	      for _, entry in pairs(eq.fuel) do
	        burn.inventory.insert({name=entry.name, count=entry.count,quality=entry.quality})
			end
	    end
	    if ((eq.burnt ~= nil) and (burn.burnt_result_inventory ~= nil) and
	        burn.burnt_result_inventory.valid) then
		  for _, entry in pairs(eq.burnt) do
	        burn.burnt_result_inventory.insert({name=entry.name, count=entry.count,quality=entry.quality})
		  end
	    end
	  end
	end
  end
  return ret
end


function do_upgrade_one_carriage(train, station, car, proto, item_grid)
  local front = car.get_connected_rolling_stock(defines.rail_direction.front)
  local back = car.get_connected_rolling_stock(defines.rail_direction.back)
  local pos = car.position
  local surface = car.surface
  local frc = car.force
  local orient = car.orientation
  local clr = car.color
  local sched = train.schedule
  local oldid = train.id
  local manual = train.manual_mode

  local burner_current = nil
  local burner_remaining = nil
  if ((car.burner ~= nil) and car.burner.valid) then
    burner_current = car.burner.currently_burning
    burner_remaining = car.burner.remaining_burning_fuel
  end

  local contents = record_inventory(car)
  local grid = record_grid(car.grid)
  local fluid_content = nil
  if (car.type == "fluid-wagon") then
    fluid_content = car.get_fluid_contents()
  end

  if (not car.destroy{raise_destroy=true}) then return end
  local newcar = surface.create_entity{name=proto.name, position=pos,
      force=frc, raise_built=true, orientation=orient, color=clr}

  if (front ~= nil) then
    newcar.connect_rolling_stock(defines.rail_direction.front)
  end
  if (back ~= nil) then
    newcar.connect_rolling_stock(defines.rail_direction.back)
  end

  if (fluid_content ~= nil) then
    for fluidname, fluidcount in pairs(fluid_content) do
	  newcar.insert_fluid({name=fluidname, amount=fluidcount})
	end
  end

  restore_inventory(newcar, contents, station)
  local transfer_grid = true
  if ((item_grid ~= nil) and
      restore_grid(newcar.grid, item_grid, station, true)) then
	transfer_grid = false
  end
  restore_grid(newcar.grid, grid, station, transfer_grid)

  if ((newcar.burner ~= nil) and newcar.burner.valid and
      (burner_current ~= nil) and (burner_current.fuel_category ~= nil) and
	  (newcar.burner.fuel_categories[burner_current.fuel_category] == true)) then
	newcar.burner.currently_burning = burner_current
	if (burner_remaining ~= nil) then
	  newcar.burner.remaining_burning_fuel = burner_remaining
	end
  end

  local pending = station.pending[oldid]
  if (pending ~= nil) then
	station.pending[oldid] = nil
  end
  
  local newtrain = newcar.train
  if (newtrain ~= nil) then
    newtrain.schedule = sched
	newtrain.manual_mode = manual
	if (pending ~= nil) then
	  pending.train = newtrain
      station.pending[newtrain.id] = pending
	end
  end
end


function replace_fuel(carriage, fuel_supply, station, doit)
  local skip = true
  for new_fuel, new_num in pairs(fuel_supply) do
    local threshold = math.max(1, math.min(20,
	    (prototypes.item[new_fuel].stack_size * 0.5)))
	if (new_num < threshold) then
	  fuel_supply[new_fuel] = nil
	else
	  skip = false
	end
  end
  if (skip) then return false end

  local burner = carriage.burner
  local burn_inv = burner.inventory
  local result_inv = burner.burnt_result_inventory
  if (burn_inv.is_empty() and result_inv.is_empty()) then
	local best_fuel = nil
	local best_value = 0
	local best_amount = 0
	for new_fuel, new_num in pairs(fuel_supply) do
	  local insertable = burn_inv.get_insertable_count(new_fuel)
	  local amount = math.min(insertable, new_num)
	  local new_proto = prototypes.item[new_fuel]
	  local value = (amount * new_proto.fuel_value *
		  new_proto.fuel_acceleration_multiplier *
		  new_proto.fuel_top_speed_multiplier)
	  if (value > best_value) then
		best_fuel = new_fuel
		best_value = value
		best_amount = amount
	  end
	end

	if (best_fuel == nil) then return false end
    if (doit) then
	  local fuel_stack = { name = best_fuel, count = best_amount }
	  fuel_stack.count = burn_inv.insert(fuel_stack)
	  for _,s in pairs(station.suppliers) do
		local sinv = s.get_inventory(defines.inventory.chest)
		if ((sinv ~= nil) and (fuel_stack.count >= 1)) then
		  local removed = sinv.remove(fuel_stack)
		  fuel_stack.count = fuel_stack.count - removed
		end
	  end
	end
	return true
  end

  local fuel_contents = burn_inv.get_contents()
  for old_fuel, old_num in pairs(fuel_contents) do
  	local old_proto = prototypes.item[old_fuel]
    if ((fuel_supply[old_fuel] == nil) and (old_proto ~= nil)) then
	  local stack = { name = old_fuel, count = old_num }
	  local burnt_stack = nil
	  local burnt_receiver = nil
	  if (old_proto.burnt_result ~= nil) then
	    local burnt_name = old_proto.burnt_result.name
	    local burnt_count = result_inv.get_item_count(burnt_name)
		if (burner.currently_burning == old_proto) then
		  burnt_count = burnt_count + 1
		end
		if (burnt_count >= 1) then
	      burnt_stack = { name = burnt_name, count = burnt_count }
		  for _, r in pairs(station.receivers) do
	        local rinv = r.get_inventory(defines.inventory.chest)
	        if ((rinv ~= nil) and rinv.can_insert(burnt_stack)) then
			  burnt_receiver = r
			end
		  end
		end
	  end

	  if ((burnt_stack == nil) or (burnt_receiver ~= nil)) then
        for _, r in pairs(station.receivers) do
	      local rinv = r.get_inventory(defines.inventory.chest)
	      if ((rinv ~= nil) and rinv.can_insert(stack)) then
		    if (doit) then
		      stack.count = burn_inv.remove(stack)
			  rinv.insert(stack)
			  if (burnt_stack ~= nil) then
			    burnt_stack.count = result_inv.remove(burnt_stack)
				burnt_receiver.insert(burnt_stack)
				if (burner.currently_burning == old_proto) then
				  burner.remaining_burning_fuel = 0
				  burner.currently_burning = nil
				end
			  end
		    end
		    return true
		  end
		end
	  end
	end
  end
  return false
end


function try_upgrade_one_carriage(carriage, train, station, doit)
  local upgradeable = upgradeable_carriage(carriage)
  local burner = carriage.burner
  if ((burner ~= nil) and (not burner.valid)) then burner = nil end
  if (not (upgradeable or (burner ~= nil))) then return false end

  local same = false
  local new_entity = nil
  local new_item = nil
  local new_inv = nil
  local fuel_supply = nil

  for _,s in pairs(station.suppliers) do
	local supply_inv = s.get_inventory(defines.inventory.chest)
	if (supply_inv ~= nil) then
	  local supply_contents = supply_inv.get_contents()
	  for _,inv_slot in pairs(supply_contents) do
	    supply_name = inv_slot.name
	    supply_count = inv_slot.count
	    -- TODO: manage quality too 
		local item_proto = prototypes.item[supply_name]
		if (item_proto ~= nil) then
		  if (upgradeable and (item_proto.place_result ~= nil) and
			  compatible_carriage(carriage, item_proto.place_result)) then
		    local matches = false
		    for _,item in pairs(carriage.prototype.items_to_place_this) do
			  if (item.name == supply_name) then
			    matches = true
			  end
		    end
		    if (matches) then
			  same = true
		    else
			  new_entity = item_proto.place_result
			  new_item = supply_name
			  new_inv = supply_inv
			end
	      end

		  if ((burner ~= nil) and (item_proto.fuel_category ~= nil) and
			  (item_proto.fuel_value > 0) and
			  (burner.fuel_categories[item_proto.fuel_category] == true)) then
			if (fuel_supply == nil) then fuel_supply = { } end
			local old_count = fuel_supply[supply_name]
			if (old_count ~= nil) then
			  supply_count = supply_count + old_count
			end
			fuel_supply[supply_name] = supply_count
		  end
		end
      end
	end
  end

  if ((new_entity ~= nil) and (not same)) then
    local item_grid = nil
	if (doit) then
	  local new_stack = new_inv.find_item_stack(new_item)
	  if ((new_stack ~= nil) and (new_stack.grid ~= nil)) then
	    item_grid = record_grid(new_stack.grid)
	  end
	end

    for _,s in pairs(station.receivers) do
	  local receive_inv = s.get_inventory(defines.inventory.chest)
	  if (receive_inv ~= nil) then
		for _,item in pairs(carriage.prototype.items_to_place_this) do
		  if (receive_inv.can_insert(item)) then
			if (doit and (new_inv.remove({name=new_item}) > 0)) then
			  receive_inv.insert(item)
			  do_upgrade_one_carriage(train, station,
				  carriage, new_entity, item_grid)
			end
			return true
		  end
		end
	  end
	end
  end

  if ((fuel_supply ~= nil) and
      replace_fuel(carriage, fuel_supply, station, doit)) then
    return true
  end
  return false
end

function upgrade_any_carriage(train, station, doit)
  for _, carriage in pairs(train.carriages) do
    if (try_upgrade_one_carriage(carriage, train, station, doit)) then
	  return true
	end
  end
  return false
end
