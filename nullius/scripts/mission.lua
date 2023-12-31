local mod_gui = require("mod-gui")

local objective_name = {
    "probe", "oxygen", "algae", "grass", "tree",
	"worm", "fish", "arthropod", "terraform", "copper",
	"uranium", "coal", "petroleum", "overall"
}

local function objective_locale(goal)
  local group = {"item", "fluid", "item", "item", "item", "item", "item",
      "item", "technology", "ore", "ore", "item", "fluid", "objective"}
  local labname = nil
  if (group[goal] == "ore") then
    labname = "item-name."..objective_name[goal].."-ore"
  else
    labname = group[goal].."-name.nullius-"..objective_name[goal]
  end
  return { labname }
end

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

    gui.add({type = "table", name = "table", column_count = 1})
    gui.table.add({type = "label", name = "mission_overall",
        caption = {"", objective_locale(14), ": ",
            global.nullius_mission_status[14], "%"},
		tooltip = {"objective-description.nullius-overall"}})

    local oxygen = global.nullius_mission_status[2]
    for i = 1, 13 do
	  local str = nil
      if (global.nullius_mission_status[i] < 100) then
        str = {"", objective_locale(i), ": ",
            global.nullius_mission_status[i], "%"}
	  elseif ((i >= 3) and (i <= 5) and
	      (oxygen < 100) and (oxygen >= (i * 8))) then
		local s = math.floor(global.nullius_mission_status[i] + 0.5)
		local m = s - 100
		if (i == 3) then
		  m = (m / 100)
		elseif (i == 5) then
		  m = (m / 80)
		else
		  m = (m / 60)
		end
		
		m = math.min(1, (0.3 + (m * 0.7)))
		local a = math.max(0, ((m * (1 - m)) - 0.05))
		local r = 0.96 - (0.7 * m) + a
		local g = 0.96 - (0.7 * (1 - m)) + a
		str = {"", "[color="..r..","..g..",0.4]", objective_locale(i), ": ",
		    math.floor(global.nullius_mission_status[i] + 0.5), "%[/color]"}
      end

	  if (str ~= nil) then
	    gui.table.add({type = "label",
		    name = "mission_"..objective_name[i], caption = str,
			tooltip = {"objective-description.nullius-"..objective_name[i]}})
		if ((i == 2) and (oxygen >= 16) and
		    (global.nullius_vent_total ~= nil)) then
		  local total = math.floor(global.nullius_vent_total / 1000)
		  local m = total
		  local suffix = "kilo"
		  local scale = math.abs(total)
		  if (scale >= 25000000) then
		    suffix = "giga"
			total = math.floor(total / 1000000)
		  elseif (scale >= 25000) then
		    suffix = "mega"
			total = math.floor(total / 1000)
		  end

		  m = math.sqrt(math.max(0, (m - 400000)))
		  m = math.max(0, math.min(1, ((m - 775) / 2324)))
		  local a = math.max(0, ((m * (1 - m)) - 0.05))
		  local r = 1 - (0.7 * m) + a
		  local g = 1 - (0.7 * (1 - m)) + a

	      gui.table.add({type = "label",
		      name = "mission_vented", caption = {"",
				  "[color="..r..","..g..",0.4]",
			      {"objective-name.nullius-vented"}, ": ", total,
				  {"objective-description.nullius-suffix-"..suffix},
				  "[/color]"},
			  tooltip = {"objective-description.nullius-vented"}})
		end
	  end
    end
  end
end

function update_mission_player(player)
  if (global.nullius_mission_status ~= nil) then
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

local function update_mission_global()
  for _, player in pairs(game.players) do
    update_mission_player(player)
  end
end

function init_mission_global()
  if (global.nullius_mission_status == nil) then return end
  for i = 1, 14 do
    if (global.nullius_mission_count[i] == nil) then
      global.nullius_mission_count[i] = 0
      global.nullius_mission_status[i] = 0
    end
  end
  update_mission_global()
end

function set_mission_goal(goal, amount, force)
  if (global.nullius_mission_complete) then return end

  local mission_target = {10, 125, 1800, 12000000,
      32000, 750, 320, 60, 2500000, 20, 12, 3000000, 12000000}
  local count = global.nullius_mission_count
  local status = global.nullius_mission_status
  local oldstatus = status[goal]
  count[goal] = math.min(math.max(amount, 0), (mission_target[goal] * 4))
  status[goal] = (math.floor(100 *
      ((100 * count[goal]) / mission_target[goal])) / 100)

  if ((goal >= 3) and (goal <= 5)) then
    local algae_oxygen = (40 * count[3]) / (count[3] + (mission_target[3] / 2))
    local grass_oxygen = (30 * count[4]) / (count[4] + (mission_target[4] / 2))
    local tree_oxygen = (30 * count[5]) / (count[5] + (mission_target[5] / 2))
    local total_oxygen = algae_oxygen + grass_oxygen + tree_oxygen
	global.nullius_oxygen_bio_target = (108 * total_oxygen) / (150 - total_oxygen)
  end

  local finished = false
  if ((status[goal] >= 100) and (oldstatus < 100)) then
    finished = true
    for i = 1, 13 do
      if (status[i] < 100) then
        finished = false
      end
    end
    force.print({"objective-description.nullius-complete-objective",
        objective_locale(goal)}, {1, 0.75, 0.4})
  end

  local overall = global.nullius_mission_status[2]
  for i = 1, 13 do
    overall = overall + math.min(100, global.nullius_mission_status[i])
  end
  global.nullius_mission_status[14] = (math.floor(100 * (overall / 14)) / 100)

  if (finished and (force ~= nil)) then
    global.nullius_mission_complete = true
  end
  update_mission_global()
  if (global.nullius_mission_complete) then

    if remote.interfaces["better-victory-screen"] and remote.interfaces["better-victory-screen"]["trigger_victory"] then
      remote.call("better-victory-screen", "trigger_victory", force)
    else
      game.set_game_state{game_finished=true, player_won=true,
	    can_continue=true, victorious_force=force}
    end

  end
end

function bump_mission_goal(goal, amount, force)
  if (amount ~= 0) then
    create_mission(force)
    set_mission_goal(goal, (global.nullius_mission_count[goal] + amount), force)
  end
end


local oxygen_equivalent = {
  ["nullius-oxygen"] = 1,
  ["nullius-compressed-oxygen"] = 4,
  ["nullius-hydrogen"] = -0.5,
  ["nullius-compressed-hydrogen"] = -2,
  ["nullius-deuterium"] = -0.5,
  ["nullius-methane"] = -2,
  ["nullius-compressed-methane"] = -8,
  ["nullius-ammonia"] = -1,
  ["nullius-volcanic-gas"] = -0.2,
  ["nullius-carbon-monoxide"] = -0.5,
  ["nullius-compressed-carbon-monoxide"] = -2
}

function update_oxygen()
  if (global.nullius_mission_status == nil) then return end
  if (global.nullius_mission_complete) then return end
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
  global.nullius_vent_total = vent_total
  if (vent_total > 0) then
    vent_total = math.sqrt(vent_total) / 1600
  else
    vent_total = 0
  end

  local score = (current + vent_total)
  if ((prev_status + 0.001) < (math.floor(100 *
      math.min(100, (score / 1.25))) / 100)) then
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
  global.nullius_oxygen_bio_target = (global.nullius_mission_count[2] / 1.5)
  global.nullius_oxygen_bio_current = (global.nullius_oxygen_bio_target / 2)

  if (global.nullius_mission_complete) then return end
  if (global.nullius_mission_status[2] >= 100) then return end
  local score = (global.nullius_oxygen_bio_current +
      (math.sqrt(global.nullius_oxygen_legacy) / 1800))
  global.nullius_mission_count[2] = math.min(score, 150)
  global.nullius_mission_status[2] = (math.floor(100 *
      math.min(99, (score / 1.8))) / 100)
end


function create_mission(force)
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

    for i = 1, 14 do
      global.nullius_mission_count[i] = 0
      global.nullius_mission_status[i] = 0
    end
    update_mission_global()

	if (not game.is_multiplayer()) then
      game.show_message_dialog{text = {"nullius-mission"}}
	elseif (force ~= nil) then
	  force.print({"nullius-mission"})
    end
  end
end

function rocket_launched(event)
  local rocket = event.rocket
  if (rocket and rocket.valid) then
    create_mission(force)
    local payload = rocket.get_inventory(defines.inventory.rocket).get_contents()
    if (payload["nullius-probe"] ~= nil) then
      bump_mission_goal(1, 1, rocket.force)
	elseif (payload["nullius-align-concordance-satellite"] ~= nil) then
	  align_satellite_launch(rocket)
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
