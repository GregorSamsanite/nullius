local UPG_CRAFT = 1
local UPG_MINER = 2
local UPG_REACH = 3
local UPG_CARGO = 4
local UPG_TRASH = 5
local UPG_ARMOR = 6
local UPG_SPEED = 7
local UPG_COST = 8

local upgrade_data = {
  ["fabrication-tool-1"] = {{UPG_CRAFT, 0.25}, {UPG_COST, 15}},
  ["fabrication-tool-2"] = {{UPG_CRAFT, 0.4}, {UPG_COST, 20}},
  ["fabrication-tool-3"] = {{UPG_CRAFT, 1.2}, {UPG_COST, 50}},
  ["mining-tool-1"] = {{UPG_MINER, 0.6}},
  ["mining-tool-2"] = {{UPG_MINER, 1}},
  ["multi-tool-1"] = {{UPG_CRAFT, 0.5}, {UPG_COST, 30}, {UPG_MINER, 0.5}},
  ["multi-tool-2"] = {{UPG_CRAFT, 0.7}, {UPG_COST, 40}, {UPG_MINER, 1}},
  ["multi-tool-3"] = {{UPG_CRAFT, 0.8}, {UPG_COST, 40},
      {UPG_MINER, 1.25}, {UPG_REACH, 1}},
  ["small-cargo-pod-1"] = {{UPG_CARGO, 1}, {UPG_SPEED, -0.006}},
  ["small-cargo-pod-2"] = {{UPG_CARGO, 2}, {UPG_SPEED, -0.008}},
  ["large-cargo-pod-1"] = {{UPG_CARGO, 5}, {UPG_SPEED, -0.03}},
  ["large-cargo-pod-2"] = {{UPG_CARGO, 8}, {UPG_SPEED, -0.04}},
  ["large-cargo-pod-3"] = {{UPG_CARGO, 10}, {UPG_SPEED, -0.04}},
  ["trash-compactor"] = {{UPG_TRASH, 10}},
  ["armor-plate"] = {{UPG_ARMOR, 100}, {UPG_SPEED, -0.01}},
  ["telekinesis-field-1"] = {{UPG_REACH, 4}},
  ["telekinesis-field-2"] = {{UPG_REACH, 6},
      {UPG_CRAFT, 0.2}, {UPG_COST, 15}, {UPG_MINER, 0.5}},
  ["telekinesis-field-3"] = {{UPG_REACH, 8},
      {UPG_CRAFT, 0.4}, {UPG_COST, 25}, {UPG_MINER, 1}},
  ["quadrupedal-adaptation-1"] = {{UPG_CARGO, 3},
      {UPG_CRAFT, -0.25}, {UPG_REACH, -1}},
  ["quadrupedal-adaptation-2"] = {{UPG_CARGO, 5},
      {UPG_CRAFT, -0.3}, {UPG_REACH, -1}},
  ["quadrupedal-adaptation-3"] = {{UPG_CARGO, 6},
      {UPG_CRAFT, -0.4}, {UPG_REACH, -1}},
  ["quadrupedal-adaptation-4"] = {{UPG_CARGO, 6},
      {UPG_CRAFT, -0.3}, {UPG_REACH, -1}},
  ["stabilizer-1"] = {{UPG_CARGO, 1}, {UPG_SPEED, 0.07}},
  ["stabilizer-2"] = {{UPG_CARGO, 2}, {UPG_SPEED, 0.1}}
}


local function scale_multiple(mult, powered)
  if (mult > 0) then
    mult = (mult * powered)
  elseif (mult < -0.4) then
    mult = (-1 - (0.16 / mult))
  end
  return mult
end

function update_player_upgrades(player)
  if (player.character == nil) then return end
  local bonuses = { 0, 0, 0, 0, 0, 0, 0, 0 }
  local drain = 0
  local production = 0
  local costnum = 0
  local costlist = nil
  local armorinv = player.get_inventory(defines.inventory.character_armor)

  if (armorinv ~= nil) then
  	for i = 1, #armorinv do
	  local armor = armorinv[i]
	  if (armor.valid_for_read and (armor.grid ~= nil)) then
	    for _,equip in pairs(armor.grid.equipment) do
	      local name = equip.name
          if (string.sub(name, 1, 16) == "nullius-upgrade-") then
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
		  end
		  drain = drain + equip.prototype.energy_source.drain
		  production = production + equip.prototype.energy_production
		end
	  end
	end
  end

  local powered = 1
  production = math.max((production * 0.75), 0)
  if (drain > production) then
    powered = (production / drain)
  end

  player.character_crafting_speed_modifier =
      scale_multiple(bonuses[UPG_CRAFT], 1)
  player.character_mining_speed_modifier =
      scale_multiple(bonuses[UPG_MINER], powered)
  player.character_inventory_slots_bonus = bonuses[UPG_CARGO]
  player.character_trash_slot_count_bonus =
      math.floor((bonuses[UPG_TRASH] * powered) + 0.5)
  player.character_health_bonus = bonuses[UPG_ARMOR]
  player.character_running_speed_modifier =
      scale_multiple(bonuses[UPG_SPEED], powered)

  local reach = bonuses[UPG_REACH]
  if (reach > 0) then reach = (reach * powered) end
  if (script.active_mods["far-reach"]) then
    reach = (1.5 * reach) + 8
  else
    reach = reach + 2
  end
  reach = math.max(0, math.floor(reach + 0.5))

  player.character_reach_distance_bonus = (reach * 2)
  player.character_build_distance_bonus = (reach * 2)
  player.character_item_drop_distance_bonus = reach
  player.character_resource_reach_distance_bonus = reach
  player.character_loot_pickup_distance_bonus = math.floor((reach * 0.5) + 0.5)
  player.character_item_pickup_distance_bonus = math.floor((reach * 0.125) + 0.5)

  local unit = player.character.unit_number
  if (costlist ~= nil) then
    if (global.nullius_crafting_equipment == nil) then
	  global.nullius_crafting_equipment = { }
	end
	local curr = nil
	if (global.nullius_crafting_equipment[unit] ~= nil) then
	  curr = global.nullius_crafting_equipment[unit].current
	end
	global.nullius_crafting_equipment[unit] = {
	  cost = (bonuses[UPG_COST] * 1000), lst = costlist, current = curr,
	  mod = player.character_crafting_speed_modifier
	}
  elseif (global.nullius_crafting_equipment ~= nil) then
    global.nullius_crafting_equipment[unit] = nil
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

script.on_event(defines.events.on_player_placed_equipment, armor_changed)
script.on_event(defines.events.on_player_removed_equipment, armor_changed)
script.on_event(defines.events.on_player_armor_inventory_changed, armor_changed)


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
    if (event.item_stack.name ~= recipe.products[1].name) then return end
    local player = game.players[event.player_index]
	if (player == nil) then return end
	local character = player.character
	if (character == nil) then return end
	local equipment = global.nullius_crafting_equipment[character.unit_number]
	if (equipment == nil) then return end

	if (player.crafting_queue_size < 1) then return end
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
