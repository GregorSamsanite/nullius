local UPG_CRAFT = 1
local UPG_MINER = 2
local UPG_REACH = 3
local UPG_CARGO = 4
local UPG_CARGO_POD = 5
local UPG_CARGO_MULT = 6
local UPG_TRASH = 7
local UPG_ARMOR = 8
local UPG_SPEED = 9
local UPG_COST = 10
local UPG_CO_SPEED_1 = 11
local UPG_CO_SPEED_2 = 12
local UPG_CO_SPEED_3 = 13
local UPG_CO_EFFICIENCY_1 = 14
local UPG_CO_EFFICIENCY_2 = 15
local UPG_CO_EFFICIENCY_3 = 16
local UPG_CO_PRODUCTIVITY_1 = 17
local UPG_CO_PRODUCTIVITY_2 = 18
local UPG_CO_PRODUCTIVITY_3 = 19
local UPG_CO_QUANTUM = 20
local UPG_CO_TIER_1 = 21
local UPG_CO_TIER_2 = 22
local UPG_CO_TIER_3 = 23
local UPG_CRAFT_MULT = 24
local UPG_COST_MULT = 25
local UPG_CRAFT_PROD = 26


local upgrade_data = {
  ["fabrication-tool-1"] = {{UPG_CRAFT, 0.25}, {UPG_COST, 12}},
  ["fabrication-tool-2"] = {{UPG_CRAFT, 0.4}, {UPG_COST, 16}},
  ["fabrication-tool-3"] = {{UPG_CRAFT, 1.2}, {UPG_COST, 40}},
  ["mining-tool-1"] = {{UPG_MINER, 0.8}},
  ["mining-tool-2"] = {{UPG_MINER, 1.5}},
  ["multi-tool-1"] = {{UPG_CRAFT, 0.5}, {UPG_COST, 20}, {UPG_MINER, 0.6}},
  ["multi-tool-2"] = {{UPG_CRAFT, 0.7}, {UPG_COST, 25}, {UPG_MINER, 1}},
  ["multi-tool-3"] = {{UPG_CRAFT, 0.8}, {UPG_COST, 25},
      {UPG_MINER, 1.25}, {UPG_REACH, 1}},
  ["small-cargo-pod-1"] = {{UPG_CARGO_POD, 2}, {UPG_SPEED, -0.003}},
  ["small-cargo-pod-2"] = {{UPG_CARGO_POD, 3}, {UPG_SPEED, -0.004}},
  ["large-cargo-pod-1"] = {{UPG_CARGO_POD, 10}, {UPG_SPEED, -0.015}},
  ["large-cargo-pod-2"] = {{UPG_CARGO_POD, 12}, {UPG_SPEED, -0.016}},
  ["large-cargo-pod-3"] = {{UPG_CARGO_POD, 15}, {UPG_SPEED, -0.02}},
  ["trash-compactor"] = {{UPG_TRASH, 10}},
  ["trash-compactor-2"] = {{UPG_TRASH, 20}},
  ["armor-plate"] = {{UPG_ARMOR, 100}, {UPG_SPEED, -0.01}},
  ["telekinesis-field-1"] = {{UPG_REACH, 4}},
  ["telekinesis-field-2"] = {{UPG_REACH, 6},
      {UPG_CRAFT, 0.2}, {UPG_COST, 12}, {UPG_MINER, 0.5}},
  ["telekinesis-field-3"] = {{UPG_REACH, 8},
      {UPG_CRAFT, 0.4}, {UPG_COST, 20}, {UPG_MINER, 1}},
  ["jump-boots"] = {{UPG_CARGO, -2}},
  ["quadrupedal-adaptation-1"] = {{UPG_CARGO, 3},
      {UPG_CRAFT, -0.25}, {UPG_REACH, -1}},
  ["quadrupedal-adaptation-2"] = {{UPG_CARGO, 5},
      {UPG_CRAFT, -0.3}, {UPG_REACH, -1}},
  ["quadrupedal-adaptation-3"] = {{UPG_CARGO, 6},
      {UPG_CRAFT, -0.4}, {UPG_REACH, -1}},
  ["quadrupedal-adaptation-4"] = {{UPG_CARGO, 6},
      {UPG_CRAFT, -0.3}, {UPG_REACH, -1}},
  ["stabilizer-1"] = {{UPG_CARGO, 2}, {UPG_SPEED, 0.07}},
  ["stabilizer-2"] = {{UPG_CARGO, 3}, {UPG_SPEED, 0.1}},
  ["shackle"] = {{UPG_SPEED, -0.25}},
  ["coprocessor-quantum"] = {{UPG_CO_QUANTUM, 1}},
  ["coprocessor-speed-1"] = {{UPG_CO_TIER_1, 1}, {UPG_CO_SPEED_1, 1}, {UPG_SPEED, 0.08},
      {UPG_CRAFT_MULT, 0.2}, {UPG_COST_MULT, 0.1}, {UPG_COST, 5}},
  ["coprocessor-speed-2"] = {{UPG_CO_TIER_2, 1}, {UPG_CO_SPEED_2, 1}, {UPG_SPEED, 0.12},
      {UPG_CRAFT_MULT, 0.3}, {UPG_COST_MULT, 0.15}, {UPG_COST, 10}},
  ["coprocessor-speed-3"] = {{UPG_CO_TIER_3, 1}, {UPG_CO_SPEED_3, 1}, {UPG_SPEED, 0.2},
      {UPG_CRAFT_MULT, 0.5}, {UPG_COST_MULT, 0.25}, {UPG_COST, 20}},
  ["coprocessor-efficiency-1"] = {{UPG_CO_TIER_1, 1}, {UPG_CO_EFFICIENCY_1, 1}, {UPG_COST_MULT, -0.2}},
  ["coprocessor-efficiency-2"] = {{UPG_CO_TIER_2, 1}, {UPG_CO_EFFICIENCY_2, 1}, {UPG_COST_MULT, -0.3}},
  ["coprocessor-efficiency-3"] = {{UPG_CO_TIER_3, 1}, {UPG_CO_EFFICIENCY_3, 1}, {UPG_COST_MULT, -0.4}},
  ["coprocessor-productivity-1"] = {{UPG_CO_TIER_1, 1}, {UPG_CO_PRODUCTIVITY_1, 1}, {UPG_COST, 25},
      {UPG_CARGO_MULT, 0.2}, {UPG_CRAFT_PROD, 0.06}, {UPG_CRAFT_MULT, -0.1}},
  ["coprocessor-productivity-2"] = {{UPG_CO_TIER_2, 1}, {UPG_CO_PRODUCTIVITY_2, 1}, {UPG_COST, 30},
      {UPG_CARGO_MULT, 0.3}, {UPG_CRAFT_PROD, 0.08}, {UPG_CRAFT_MULT, -0.15}},
  ["coprocessor-productivity-3"] = {{UPG_CO_TIER_3, 1}, {UPG_CO_PRODUCTIVITY_3, 1}, {UPG_COST, 40},
      {UPG_CARGO_MULT, 0.5}, {UPG_CRAFT_PROD, 0.1}, {UPG_CRAFT_MULT, -0.15}}
}


local function check_coprocessor_tier(bonuses, armorinv, tier, limit)
  local ind1 = (UPG_CO_TIER_1 + (tier - 1))
  local total = bonuses[ind1]
  if (total < 2) then return false end
  local ind2 = UPG_CO_SPEED_1 + (tier - 1)
  if ((total <= limit) and (bonuses[ind2] < 2) and
      (bonuses[ind2 + 3] < 2) and (bonuses[ind2 + 6] < 2)) then
    return false
  end

  for i = 1, #armorinv do
	local armor = armorinv[i]
	if (armor.valid_for_read and (armor.grid ~= nil)) then
	  local grid = armor.grid
	  for _,equip in pairs(grid.equipment) do
	    local name = equip.name
	    if (string.sub(name, 1, 16) == "nullius-upgrade-") then
		  local suffix = string.sub(name, 17, -1)
		  local upgrade = upgrade_data[suffix]
		  if ((upgrade ~= nil) and (upgrade[1] ~= nil) and
		      (upgrade[1][1] == ind1)) then
		    global.nullius_in_update_equipment = true
			local pos = equip.position
			local newname = "nullius-deactivated-" .. suffix
			grid.take{equipment=equip, position=pos}
			grid.put{name=newname, position=pos}
			global.nullius_in_update_equipment = false
		  end
		end
	  end
	end
  end
end

local function scale_multiple(mult, powered)
  if (mult > 0) then
    mult = (mult * powered)
  elseif (mult < -0.6) then
    mult = (-1 - (0.24 / mult))
  end
  return mult
end

function update_player_upgrades(player)
  if (player.character == nil) then return end
  if (global.nullius_in_update_equipment) then return end

  local bonuses = { 0,0,0,0,0, 0,0,0,0,0, 0,0,0,0,0, 0,0,0,0,0, 0,0,0,0,0, 0 }
  local drain = 0
  local production = 0
  local costnum = 0
  local costlist = nil
  local generatornum = 0
  local generators = nil
  local refueler = false
  local armorinv = player.get_inventory(defines.inventory.character_armor)

  if (armorinv ~= nil) then
  	for i = 1, #armorinv do
	  local armor = armorinv[i]
	  if (armor.valid_for_read and (armor.grid ~= nil)) then
	    for _,equip in pairs(armor.grid.equipment) do
	      local name = equip.name
		  if (string.sub(name, 1, 8) == "nullius-") then
		    local midfix = string.sub(name, 9, 16)
            if (midfix == "upgrade-") then
		      local suffix = string.sub(name, 17, -1)
		      local upgrade = upgrade_data[suffix]
		      if (upgrade ~= nil) then
		        for _,bonus in pairs(upgrade) do
		          local ind = bonus[1]
			      bonuses[ind] = bonuses[ind] + bonus[2]
				  if (ind == UPG_COST) then
				    costnum = costnum + 1
				    if (costlist == nil) then costlist = { } end
				    costlist[costnum] = equip
				  end
				end
			  end
			elseif (midfix == "refueler") then
			  refueler = true
			end
		  end

		  drain = drain + equip.prototype.energy_source.drain
		  if (equip.prototype.energy_production > 0) then
		    production = production + equip.prototype.energy_production
			if (equip.burner ~= nil) then
			  local burninv = equip.burner.inventory
			  if ((burninv ~= nil) and burninv.valid) then
			    generatornum = generatornum + 1
				if (generators == nil) then generators = { } end
				generators[generatornum] = equip
			  end
			end
		  end
		end
	  end
	end

    local quantum = (((bonuses[UPG_CO_QUANTUM] > 0) and 2) or 1)
    if (check_coprocessor_tier(bonuses, armorinv, 1, 2) or
        check_coprocessor_tier(bonuses, armorinv, 2, quantum) or
	    check_coprocessor_tier(bonuses, armorinv, 3, quantum)) then
	  update_player_upgrades(player)
	  return
    end
  end

  local powered = 1
  production = math.max((production * 0.75), 0)
  if (drain > production) then
    powered = (production / drain)
  end

  local craftmod = (((1 + scale_multiple(bonuses[UPG_CRAFT], 1)) *
      (1 + scale_multiple(bonuses[UPG_CRAFT_MULT], 1))) - 1)
  player.character_crafting_speed_modifier = craftmod
  player.character_mining_speed_modifier =
      scale_multiple(bonuses[UPG_MINER], powered)
  player.character_trash_slot_count_bonus =
      math.floor((bonuses[UPG_TRASH] * powered) + 0.5)
  player.character_health_bonus = bonuses[UPG_ARMOR]
  player.character_running_speed_modifier =
      scale_multiple(bonuses[UPG_SPEED], powered)

  if (not (script.active_mods["InfiniteInventory"] or
      script.active_mods["infinity-invo"] or
	  script.active_mods["First_One_Is_Free"])) then
    player.character_inventory_slots_bonus =
        math.max(0, (10 + bonuses[UPG_CARGO] +
	        ((1 + scale_multiple(bonuses[UPG_CARGO_MULT], 1)) *
		        bonuses[UPG_CARGO_POD])))
  end

  if (not (script.active_mods["far-reach"] or
      script.active_mods["long-reach-clone"] or
	  script.active_mods["themightygugi_longreach"] or
	  script.active_mods["factorio-reach"])) then
    local reach = bonuses[UPG_REACH]
    if (reach > 0) then reach = (reach * powered) end
    reach = reach + 2

    local loot = (reach * 0.5)
    if (loot > 8) then loot = (24 * loot) / (loot + 16) end
    local reach2 = math.max(0, math.floor((2 * reach) + 0.5))
    reach = math.max(0, math.floor(reach + 0.5))

    player.character_reach_distance_bonus = reach2
    player.character_build_distance_bonus = reach2
    player.character_item_drop_distance_bonus = reach
    player.character_resource_reach_distance_bonus = reach  
    player.character_loot_pickup_distance_bonus =
        math.max(0, math.floor(loot + 0.5))
    player.character_item_pickup_distance_bonus =
        math.max(0, math.floor((loot * 0.25) + 0.5))
  end

  local unit = player.character.unit_number
  if (costlist ~= nil) then
    if (global.nullius_crafting_equipment == nil) then
	  global.nullius_crafting_equipment = { }
	end
	local curr = nil
	if (global.nullius_crafting_equipment[unit] ~= nil) then
	  curr = global.nullius_crafting_equipment[unit].current
	end
	local totalcost = (bonuses[UPG_COST] * 1000 *
	    (1 + scale_multiple(bonuses[UPG_COST_MULT], 1)))
	if (craftmod > 2) then
	  totalcost = (totalcost / math.sqrt(craftmod - 1))
	end
	local prodbonus = bonuses[UPG_CRAFT_PROD]
	if (prodbonus <= 0) then prodbonus = nil end
	global.nullius_crafting_equipment[unit] = {
	  cost = totalcost, lst = costlist, current = curr,
	  mod = craftmod, prod = prodbonus
	}
  elseif (global.nullius_crafting_equipment ~= nil) then
    global.nullius_crafting_equipment[unit] = nil
  end

  if (refueler and (generators ~= nil)) then
    if (global.nullius_generator_equipment == nil) then
	  global.nullius_generator_equipment = { }
	end
	global.nullius_generator_equipment[unit] = {
	  character = player.character, lst = generators
	}
  elseif (global.nullius_generator_equipment ~= nil) then
    global.nullius_generator_equipment[unit] = nil
  end
end

function update_all_upgrades()
  for _,player in pairs(game.players) do
    update_player_upgrades(player)
  end
end

local function armor_changed(event)
  local player = game.players[event.player_index]
  if (player == nil) then return end
  update_player_upgrades(player)
end

local function equipment_placed(event)
  if ((event.equipment.name == "nullius-refueler") or
      (event.equipment.type == "generator-equipment")) then
    global.nullius_refueler_inserted_tick = event.tick
  end
  armor_changed(event)
end

local function equipment_removed(event)
  if ((event.equipment == "nullius-refueler") or
      (string.sub(event.equipment, 1, 17) == "nullius-portable-")) then
    global.nullius_refueler_inserted_tick = event.tick
  end
  armor_changed(event)
end

script.on_event(defines.events.on_player_placed_equipment, equipment_placed)
script.on_event(defines.events.on_player_removed_equipment, equipment_removed)
script.on_event(defines.events.on_player_armor_inventory_changed, armor_changed)


function equipment_installed(event)
  if (global.nullius_in_update_equipment) then return end
  local grid = event.grid
  local eq = event.equipment
  if ((eq == nil) or (grid == nil)) then return end
  if (string.sub(eq.name, 1, 8) ~= "nullius-") then return end

  if (string.sub(eq.name, 9, 24) == "charged-battery-") then
    global.nullius_in_update_equipment = true
    local pos = eq.position
	local newname = "nullius-battery-" .. string.sub(eq.name, 25, -1)
	grid.take{equipment=eq, position=pos}
	local eq2 = grid.put{name=newname, position=pos}
	eq2.energy = eq2.max_energy
	global.nullius_in_update_equipment = false
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
  elseif ((player.force ~= nil) and player.force.valid and
      player.force.research_enabled and
	  (player.force.technologies["nullius-explosives-2"] ~= nil) and
	  player.force.technologies["nullius-explosives-2"].researched) then
	filter = {"simple-entity", "item-entity", "rail-remnants", "corpse",
	    "cliff"}
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
	  elseif (e.type == "cliff") then
	    destroy = false
		if (e.destructible) then
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


local function begin_crafting(player, character, equipment, recipe)
  equipment.current = recipe.name
  local energy = 0
  for _,equip in pairs(equipment.lst) do
    if (not equip.valid) then
	  update_player_upgrades(player)
	  return
	end
	energy = energy + equip.energy
  end
  
  local cost = equipment.cost * recipe.energy
  local mod = equipment.mod
  local adjust = 0
  if (energy < cost) then
    if (mod > 0) then
      mod = (mod * energy / cost)
	end
    cost = energy
  else
    adjust = (1 - (cost / energy))
  end
  player.character_crafting_speed_modifier = mod

  for _,equip in pairs(equipment.lst) do
    equip.energy = equip.energy * adjust
  end
end

script.on_event(defines.events.on_pre_player_crafted_item,
  function(event)
	if (global.nullius_crafting_equipment == nil) then return end
    local player = game.players[event.player_index]
	if (player == nil) then return end
	local character = player.character
	if (character == nil) then return end
	local equipment = global.nullius_crafting_equipment[character.unit_number]
	if (equipment == nil) then return end
    local recipe = event.recipe

	if (player.crafting_queue_size == 1) then
      if (player.crafting_queue[1].count > event.queued_count) then return end	  
	elseif (equipment.current == nil) then
	  if (player.force ~= nil) then
	    recipe = player.force.recipes[player.crafting_queue[1].recipe]
		if (recipe == nil) then return end
	  end
	else
	  return
	end
    begin_crafting(player, character, equipment, recipe)
  end
)

script.on_event(defines.events.on_player_crafted_item,
  function(event)
    if ((global.nullius_broken_status ~= nil) and
        (string.sub(event.recipe.name, 1, 15) == "nullius-broken-")) then
      broken_crafted(event.recipe.name)
    end

	if (global.nullius_crafting_equipment == nil) then return end
    local recipe = event.recipe
	if (not event.item_stack.valid_for_read) then return end
    local player = game.players[event.player_index]
	if (player == nil) then return end
	local character = player.character
	if (character == nil) then return end
	local equipment = global.nullius_crafting_equipment[character.unit_number]
	if (equipment == nil) then return end
    if (recipe.products[1] == nil) then return end
    local itemname = event.item_stack.name

	if (equipment.prod ~= nil) then
      local product = nil
	  for _,p in pairs(recipe.products) do
	    if (p.name == itemname) then
		  product = p
		  break
		end
	  end
	  if (product ~= nil) then
	    local odds = 0
		if (product.amount ~= nil) then
		  odds = (equipment.prod * product.amount)
		elseif ((product.amount_min ~= nil) and (product.amount_max ~= nil)) then
		  odds = ((equipment.prod * (product.amount_min + product.amount_max)) / 2)
		end
		if (product.probability ~= nil) then odds = (odds * product.probability) end
	    local num = math.floor(odds)
	    if ((odds - num) > math.random()) then num = num + 1 end
	    if (num >= 1) then
		  local tab = global.nullius_productivity_recipes
		  if ((tab ~= nil) and (tab[recipe.name] == true)) then
	        player.insert({name=event.item_stack.name, count=num})
		  end
	    end
	  end
	end

    if (player.crafting_queue_size < 1) then return end
    if (itemname ~= recipe.products[1].name) then return end
	if (player.crafting_queue[1].count <= 1) then
      if (player.crafting_queue_size < 2) then
	    recipe = nil
	  elseif (player.force ~= nil) then
	    recipe = player.force.recipes[player.crafting_queue[2].recipe]
	  end
	end
	if (recipe ~= nil) then
	  begin_crafting(player, character, equipment, recipe)
	else
	  equipment.current = nil
	end
  end
)


function init_productivity_recipes()
  local newprod = { }
  local proto = game.item_prototypes["nullius-productivity-module-1"]
  if ((proto ~= nil) and (proto.limitations ~= nil)) then
    for _,name in pairs(proto.limitations) do
	  newprod[name] = true
	end
  end
  global.nullius_productivity_recipes = newprod
end


function update_generators()
  if (global.nullius_generator_equipment == nil) then return end
  for i,e in pairs(global.nullius_generator_equipment) do
    local c = e.character
	if ((c == nil) and (e.mech ~= nil)) then
	  c = e.mech.entity
	end

    if ((c ~= nil) and c.valid) then
	  local invalid = false
	  for _,g in pairs(e.lst) do
	    if (g.valid and (g.burner ~= nil)) then
	      local burninv = g.burner.inventory
		  if ((burninv ~= nil) and burninv.valid) then
		    local content = burninv.get_contents()
			local lastfuel = nil
			for fuelname,_ in pairs(content) do
			  lastfuel = fuelname
			  local fuelnum = burninv.get_insertable_count(fuelname)
			  if (fuelnum > 0) then
			    fuelnum = c.remove_item({name=fuelname, count=fuelnum})
				if (fuelnum > 0) then
				  local actual = burninv.insert({name=fuelname, count=fuelnum})
				  if (actual < fuelnum) then
					c.insert({name=fuelname, count=(fuelnum - actual)})
				  end
				end
			  end
			end

            if (string.sub(g.name, 1, 17) == "nullius-portable-") then
			  local midfix = string.sub(g.name, 18, 24)
			  local isreactor = (midfix == "reactor")
			  if (isreactor or (midfix == "generat")) then
			    if (lastfuel ~= nil) then  
				  if (isreactor) then
				    e.last_reactor_fuel = lastfuel
				  else
				    e.last_generator_fuel = lastfuel
				  end
				else
				  if (isreactor) then
				    lastfuel = e.last_reactor_fuel
				  else
				    lastfuel = e.last_generator_fuel
				  end
				  if (lastfuel ~= nil) then
					local fuelnum = burninv.get_insertable_count(lastfuel)
					if (fuelnum > 0) then
					  fuelnum = c.remove_item({name=lastfuel, count=fuelnum})
					  if (fuelnum > 0) then
					    local actual = burninv.insert({name=lastfuel, count=fuelnum})
						if (actual < fuelnum) then
						  c.insert({name=lastfuel, count=(fuelnum - actual)})
					    end
					  end
					end				    
				  end
				end
			  end
			end

			local spentinv = g.burner.burnt_result_inventory
			if ((spentinv ~= nil) and spentinv.valid and
			    (not spentinv.is_empty())) then
		      local spent = spentinv.get_contents()
			  for itemname,itemcount in pairs(spent) do
			    if (c.can_insert({name=itemname, count=itemcount})) then
			      local diff = c.insert({name=itemname, count=itemcount})
				  if (diff > 0) then
				    spentinv.remove({name=itemname, count=diff})
				  end
				end
			  end
			end
		  else
		    invalid = true
		  end
		else
		  invalid = true
		end
	  end

	  if (invalid) then
	    if ((e.character ~= nil) and (c.player ~= nil)) then
	      update_player_upgrades(c.player)
		elseif (e.mech ~= nil) then
		  e.mech.tick = -1
		end
	    return
	  end
	else
      global.nullius_generator_equipment[i] = nil
	end
  end
end


function insert_mecha_list(e)
  if (global.nullius_mecha_list == nil) then
    global.nullius_mecha_list = { }
  elseif (global.nullius_mecha_list[e.unit_number] ~= nil) then
    return
  end
  local newlst = {
    entity = e, tick = -1, unit = e.unit_number
  }
  if (global.nullius_mecha_head ~= nil) then
    newlst.prev = global.nullius_mecha_head
	newlst.next = newlst.prev.next
	newlst.next.prev = newlst
	newlst.prev.next = newlst
  else
    newlst.next = newlst
	newlst.prev = newlst
	global.nullius_mecha_head = newlst
  end
  global.nullius_mecha_list[newlst.unit] = newlst
end

function mecha_added(entity)
  if ((entity.name == "nullius-mecha") or
      (entity.name == "nullius-mecha-2")) then
    entity.vehicle_automatic_targeting_parameters = {
      auto_target_without_gunner = false, auto_target_with_gunner = false
    }
  end
  insert_mecha_list(entity)
end

function find_all_mechas()
  global.nullius_refueler_inserted_tick = 1
  for _,surface in pairs(game.surfaces) do
    local mechs = surface.find_entities_filtered{type="spider-vehicle"}
	for _,mecha in pairs(mechs) do
	  insert_mecha_list(mecha)
	end
  end
end

function check_mecha_equipment(node)
  local generatornum = 0
  local generators = nil
  local refueler = false
  local g = node.entity.grid
  if ((g ~= nil) and g.valid) then
    for _,equip in pairs(g.equipment) do
	  if (equip.prototype.energy_production > 0) then
		if (equip.burner ~= nil) then
		  local burninv = equip.burner.inventory
		  if ((burninv ~= nil) and burninv.valid) then
		    generatornum = generatornum + 1
			if (generators == nil) then generators = { } end
			generators[generatornum] = equip
		  end
		end
	  elseif (equip.name == "nullius-refueler") then
		refueler = true
	  end
	end
  end

  if (refueler and (generators ~= nil)) then
	local new_entry = { mech = node, lst = generators }
    if (global.nullius_generator_equipment == nil) then
	  global.nullius_generator_equipment = { }
	else
	  local old_entry = global.nullius_generator_equipment[node.unit]
	  if (old_entry ~= nil) then
	    new_entry.last_reactor_fuel = old_entry.last_reactor_fuel
		new_entry.last_generator_fuel = old_entry.last_generator_fuel
	  end
	end
	global.nullius_generator_equipment[node.unit] = new_entry
  elseif (global.nullius_generator_equipment ~= nil) then
    global.nullius_generator_equipment[node.unit] = nil
  end
end

function update_mechas()
  if (global.nullius_mecha_head == nil) then return end
  if (global.nullius_refueler_inserted_tick == nil) then return end
  local node = global.nullius_mecha_head.next
  if (not node.entity.valid) then
    global.nullius_mecha_list[node.unit] = nil
    if (node == global.nullius_mecha_head) then
	  global.nullius_mecha_list = nil
	  global.nullius_mecha_head = nil
	else
	  node.next.prev = node.prev
	  node.prev.next = node.next
	end
    return
  end

  global.nullius_mecha_head = node
  if (node.tick <= global.nullius_refueler_inserted_tick) then
    node.tick = game.tick
	check_mecha_equipment(node)
  end
end
