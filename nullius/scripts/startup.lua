local function init_tech(force)
  for _, tech in pairs(force.technologies) do
    if ((string.sub(tech.name, 1, 8) ~= "nullius-") and
	    (string.sub(tech.order, 1, 8) ~= "nullius-")) then
      tech.enabled = false
	elseif (tech.prototype.max_level <= tech.prototype.level) then
	 -- tech.researched = true
    end
  end

  for _, recipe in pairs(force.recipes) do
    if (string.sub(recipe.name, 1, 8) ~= "nullius-") and
	    (string.sub(recipe.order, 1, 8) ~= "nullius-") and
	    (string.sub(recipe.name, 1, 13) ~= "fill-nullius-") and
	    (string.sub(recipe.name, 1, 14) ~= "empty-nullius-") then
      recipe.enabled = false
	end
  end
end

script.on_event(defines.events.on_player_joined_game,
  function(event)
	local player = game.players[event.player_index]
    init_tech(player.force)
	update_mission_player(player)
  end
)

script.on_event(defines.events.on_force_created,
  function(event)
    init_tech(event.force)
  end
)

script.on_init(
  function()
    init_wind()
	init_geothermal()

    if (remote.interfaces["freeplay"] ~= nil) then
      remote.call("freeplay", "set_created_items", {["nullius-chassis-1"] = 1})
      remote.call("freeplay", "set_respawn_items", {})
      remote.call("freeplay", "set_skip_intro", true)
	  remote.call("freeplay", "set_disable_crashsite", true)
      remote.call("freeplay", "set_chart_distance", 300)
	end
    if (remote.interfaces["silo_script"] ~= nil) then
	  remote.call("silo_script", "set_no_victory", true)
	end
	update_mission_global()
  end
)

script.on_configuration_changed(
  function(cfg)
    if (remote.interfaces["freeplay"] ~= nil) then
      remote.call("freeplay", "set_created_items", {["nullius-chassis-1"] = 1})
      remote.call("freeplay", "set_respawn_items", {})
	end
    if (remote.interfaces["silo_script"] ~= nil) then
	  remote.call("silo_script", "set_no_victory", true)
	end

    for _, force in pairs(game.forces) do
      init_tech(force)
    end
	update_mission_global()
  end
)

local chart_starting_area = function()
  local r = global.chart_distance or 300
  local force = game.forces.player
  local surface = game.surfaces[1]
  local origin = force.get_spawn_position(surface)
  force.chart(surface, {{origin.x - r, origin.y - r}, {origin.x + r, origin.y + r}})
end

script.on_event(defines.events.on_player_created,
  function(event)
    local player = game.players[event.player_index]
    player.remove_item{name = "burner-ore-crusher", count = 1}

    local inventory = player.get_inventory(defines.inventory.character_armor)
    if (inventory ~= nil) then
      local body = inventory.find_item_stack("nullius-chassis-1")
	  if (body == nil) then
	    player.insert({name="nullius-chassis-1", count=1})
		body = inventory.find_item_stack("nullius-chassis-1")
	  end

      if (body ~= nil) then
        body.grid.put({name="nullius-hangar-1"})
        body.grid.put({name="nullius-charger-1"})
        body.grid.put({name="nullius-solar-panel-1"})
        body.grid.put({name="nullius-battery-1"})
        body.grid.put({name="nullius-battery-1"})
        body.grid.put({name="nullius-battery-1"})
      end
    end

	player.insert({name="nullius-construction-bot-1", count=8})
	player.insert({name="nullius-solar-panel-1", count=10})
	player.insert({name="nullius-grid-battery-1", count=5})

    if not global.init_ran then
      global.init_ran = true
      chart_starting_area()
	end

	if not global.init_landing then
	  global.init_landing = true
      player.surface.daytime = 0.7
      landing_site(player.surface, {-5, -6})
	end

    if game.is_multiplayer() then
      player.print({"nullius-intro"})
    else
      game.show_message_dialog{text = {"nullius-intro"}}
    end
	update_mission_player(player)
  end
)
