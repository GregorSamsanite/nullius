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
    local mission_target = {10, 100, 1500, 4000000, 2000, 400, 250, 50, 2500000, 20, 12}
    local count = global.nullius_mission_count
    local status = global.nullius_mission_status
    count[goal] = math.min(math.max(amount, 0), (mission_target[goal] * 4))
    status[goal] = (math.floor(10 *
	    math.min(100, ((100 * count[goal]) / mission_target[goal]))) / 10)

    if ((goal >= 3) and (goal <= 5)) then
      local algae_oxygen = (50 * count[3]) / (count[3] + (mission_target[3] / 2))
      local grass_oxygen = (20 * count[4]) / (count[4] + (mission_target[4] / 2))
      local tree_oxygen = (30 * count[5]) / (count[5] + (mission_target[5] / 2))
      local total_oxygen = algae_oxygen + grass_oxygen + tree_oxygen
      count[2] = (107 * total_oxygen) / (150 - total_oxygen)
      status[2] = (math.floor(10 *
	      math.min(100, ((100 * count[2]) / mission_target[2]))) / 10)
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
  if (global.nullius_mission_status ~= nil) then
    set_mission_goal(goal, (global.nullius_mission_count[goal] + amount), force)
  end
end

function create_mission()
  if (global.nullius_mission_status == nil) then
    global.nullius_mission_status = {}
    global.nullius_mission_count = {}
  global.nullius_mission_show = {}
    global.nullius_mission_complete = false
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
