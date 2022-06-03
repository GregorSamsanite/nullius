local mod_gui = require("mod-gui")

function update_mission_panel(player)
  if (player.gui.left.nullius_mission_panel) then
    player.gui.left.nullius_mission_panel.destroy()
  end

  if (global.nullius_mission_show[player.index]) then
    local gui = player.gui.left.add({type = "frame",
    name = "nullius_mission_panel", direction = "vertical"})
    gui.style.bottom_padding = 8
    gui.style.vertically_stretchable = false
    gui.style.horizontally_stretchable = false
  local objective = {"probe", "oxygen", "algae", "grass", "tree",
    "worm", "fish", "arthropod", "terraform", "copper", "uranium"}
  local group = {"item", "fluid", "item", "item", "item",
    "item", "item", "item", "technology", "ore", "ore"}
    gui.add({type = "table", name = "table", column_count = 1})

  for i = 1, 11 do
    if (global.nullius_mission_status[i] < 100) then
      local labname = nil
    if (group[i] == "ore") then
      labname = "item-name."..objective[i].."-ore"
    else
      labname = group[i].."-name.nullius-"..objective[i]
    end
        gui.table.add({type = "label", name = "mission_"..objective[i],
          caption = {"", {labname}, ": ",
      global.nullius_mission_status[i], "%"}})
    end
    end
  end
end

function update_mission_player(player)
  if (global.nullius_mission_status ~= nil) then
  for i = 9, 11 do
      if (global.nullius_mission_count[i] == nil) then
      global.nullius_mission_count[i] = 0
      global.nullius_mission_status[i] = 0
    end
  end
    if (global.nullius_mission_complete) then
      global.nullius_mission_show[player.index] = false
      if mod_gui.get_button_flow(player).nullius_mission_button then
      mod_gui.get_button_flow(player).nullius_mission_button.destroy()
      end
  elseif (global.nullius_mission_show[player.index] == nil) then
      global.nullius_mission_show[player.index] = true
    if mod_gui.get_button_flow(player).nullius_mission_button then
        mod_gui.get_button_flow(player).nullius_mission_button.destroy()
      end
      mod_gui.get_button_flow(player).add{type = "sprite-button",
        name = "nullius_mission_button", tooltip = {"gui.nullius-mission-open-panel"},
        sprite = "item/nullius-tree", style = "mod_gui_button"}
  end
  update_mission_panel(player)
  end
end

function update_mission_global()
  for _, player in pairs(game.players) do
    update_mission_player(player)
  end
end

function set_mission_goal(goal, amount, force)
  if (not global.nullius_mission_complete) then
    local mission_target = {10, 144, 1500, 4000000, 2000, 400, 250, 50, 2500000, 20, 12}
    local count = global.nullius_mission_count
    local status = global.nullius_mission_status
    count[goal] = math.min(math.max(amount, 0), (mission_target[goal] * 4))
    status[goal] = (math.floor(100 *
	    math.min(100, ((100 * count[goal]) / mission_target[goal]))) / 100)

    if ((goal >= 3) and (goal <= 5)) then
      local algae_oxygen = (50 * count[3]) / (count[3] + (mission_target[3] / 2))
      local grass_oxygen = (20 * count[4]) / (count[4] + (mission_target[4] / 2))
      local tree_oxygen = (30 * count[5]) / (count[5] + (mission_target[5] / 2))
      local total_oxygen = algae_oxygen + grass_oxygen + tree_oxygen
	  global.nullius_oxygen_bio_target = (107 * total_oxygen) / (150 - total_oxygen)
    end

    local any = false
    for i = 1, 11 do
    if (global.nullius_mission_status[i] < 100) then
        any = true
    end
  end
  if (not any) then
    global.nullius_mission_complete = true
  end
    update_mission_global()
  if (global.nullius_mission_complete) then
      game.set_game_state{game_finished=true, player_won=true, can_continue=true, victorious_force=force}
    end
  end
end

function bump_mission_goal(goal, amount, force)
  if (amount ~= 0) then
    create_mission()
    set_mission_goal(goal, (global.nullius_mission_count[goal] + amount), force)
  end
end


local oxygen_equivalent = {
  ["nullius-oxygen"] = 1,
  ["nullius-compressed-oxygen"] = 4,
  ["nullius-hydrogen"] = -0.5,
  ["nullius-compressed-hydrogen"] = -2,
  ["nullius-deuterium"] = -0.5,
  ["nullius-tritium"] = -0.5,
  ["nullius-methane"] = -1,
  ["nullius-compressed-methane"] = -4,
  ["nullius-ammonia"] = -0.8,
  ["nullius-volcanic-gas"] = -0.2,
  ["nullius-carbon-monoxide"] = -0.3,
  ["nullius-compressed-carbon-monoxide"] = -1.2
}

function update_oxygen()
  if (global.nullius_mission_status == nil) then return end
  if (global.nullius_mission_complete) then return end
  if ((game.tick % 193) ~= 71) then return end
  local prev_status = global.nullius_mission_status[2]
  if (prev_status >= 100) then return end

  local current = (((global.nullius_oxygen_bio_current * 8191) +
      global.nullius_oxygen_bio_target) / 8192)
  global.nullius_oxygen_bio_current = current

  local vent_best = 0
  local vent_force = nil
  local vent_total = global.nullius_oxygen_legacy
  for _, force in pairs(game.forces) do
	if (force.research_enabled) then
	  local stats = force.fluid_production_statistics
	  local vent_score = 0
	  for gasname,multiplier in pairs(oxygen_equivalent) do
	    vent_score = (vent_score + ((stats.get_input_count(gasname) -
	        stats.get_output_count(gasname)) * multiplier))
	  end
	  vent_total = vent_total + vent_score
	  if ((vent_force == nil) or (vent_score > vent_best)) then
	    vent_best = vent_score
		vent_force = force
	  end
    end
  end

  if (vent_force == nil) then return end
  if (vent_total > 0) then
    vent_total = math.sqrt(vent_total) / 1800
  else
    vent_total = 0
  end

  local score = (current + vent_total)
  if ((prev_status + 0.001) < (math.floor(100 *
      math.min(100, (score / 1.44))) / 100)) then
    set_mission_goal(2, score, vent_force)
  end
end

function migrate_oxygen()
  local produced = 0
  local consumed = 0
  for _, force in pairs(game.forces) do
	if (force.research_enabled) then
	  local stats = force.fluid_production_statistics
	  for gasname,multiplier in pairs(oxygen_equivalent) do
	    produced = produced + stats.get_input_count(gasname)
	    consumed = consumed + stats.get_output_count(gasname)
	  end
    end
  end

  global.nullius_oxygen_legacy = math.max(0, (((2 * consumed) - produced)/3))
  if (global.nullius_mission_status == nil) then return end
  global.nullius_oxygen_bio_target = global.nullius_mission_count[2]
  global.nullius_oxygen_bio_current = (global.nullius_oxygen_bio_target / 2)

  if (global.nullius_mission_complete) then return end
  if (global.nullius_mission_status[2] >= 100) then return end
  local score = (global.nullius_oxygen_bio_current +
      (math.sqrt(global.nullius_oxygen_legacy) / 1800))
  global.nullius_mission_count[2] = math.min(score, 150)
  global.nullius_mission_status[2] = (math.floor(100 *
      math.min(100, (score / 1.5))) / 100)
end


function create_mission()
  if (global.nullius_mission_status == nil) then
    global.nullius_mission_status = {}
    global.nullius_mission_count = {}
    global.nullius_mission_show = {}
    global.nullius_mission_complete = false
	global.nullius_oxygen_bio_current = 0
	global.nullius_oxygen_bio_target = 0
	if (global.nullius_oxygen_legacy == nil) then
	  global.nullius_oxygen_legacy = 0
	end

    for i = 1, 11 do
      global.nullius_mission_count[i] = 0
      global.nullius_mission_status[i] = 0
    end
    update_mission_global()
  end
end

function rocket_launched(event)
  local rocket = event.rocket
  if (rocket and rocket.valid) then
    create_mission()
    local payload = rocket.get_inventory(defines.inventory.rocket).get_contents()
    if (payload["nullius-probe"] ~= nil) then
      bump_mission_goal(1, 1, rocket.force)
    end
  end
end

function gui_clicked(event)
  if event.element.valid and event.element.name == "nullius_mission_button" then
    local player = game.players[event.player_index]
    if (global.nullius_mission_show[event.player_index]) then
      global.nullius_mission_show[event.player_index] = false
    else
      global.nullius_mission_show[event.player_index] = true
    end
    update_mission_player(player)
  end
end

script.on_event(defines.events.on_rocket_launched, rocket_launched)
script.on_event(defines.events.on_gui_click, gui_clicked)
