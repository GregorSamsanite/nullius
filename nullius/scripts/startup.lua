
artillery_remote = require("scripts.artillery_remote")

function fuel_companion_drones(surface)
  local entities = surface.find_entities_filtered{
      name="companion", type="spider-vehicle"}
  for _,drone in pairs(entities) do
    local num = drone.remove_item({name="coal", count=500})
	if (num > 0) then
	  drone.insert({name="rocket-booster", count=num})
	end
  end
end


function broken_disabled(name)
  if (storage.nullius_broken_status == nil) then return true end
  local count = storage.nullius_broken_status[name]
  if ((count == nil) or (count < 1)) then return true end
  return false
end

function check_fixing_machines()
  if storage.fixing_machines == nil then return end
  for i,entry in pairs(storage.fixing_machines) do
    if entry.machine.valid then
      local machine_recipe = entry.machine.get_recipe()
      if machine_recipe and machine_recipe.name == entry.recipe then
        if entry.machine.products_finished > entry.finished then
          broken_finished(machine_recipe.name)
          table.remove(storage.fixing_machines,i)
        end
      else -- recipe changed before product finished
        table.remove(storage.fixing_machines,i)
      end
    else
      table.remove(storage.fixing_machines,i)
    end
  end
  if #storage.fixing_machines == 0 then
    storage.fixing_machines = nil
  end
end

function broken_finished_delayed(name)
  local machines = game.surfaces["nauvis"].find_entities_filtered{type = "assembling-machine"} -- check only appropriate machines ?
  for _,machine in pairs(machines) do
    local recipe = machine.get_recipe()
    if recipe ~= nil then
      if string.sub(recipe.name, 1, 15) == "nullius-broken-" then
        if storage.fixing_machines == nil then storage.fixing_machines = {} end
        for i,entry in pairs(storage.fixing_machines) do -- prevent duplicates
          if entry.machine == machine then 
            if entry.machine.get_recipe().name == entry.recipe then return 
            else 
              table.remove(storage.fixing_machines,i) 
            end
          end
        end
        table.insert(storage.fixing_machines, {machine = machine, recipe = table.deepcopy(recipe.name), finished = machine.products_finished})
        return
      end
    else
      for i,entry in pairs(storage.fixing_machines or {}) do
        if entry.machine == machine then
          table.remove(storage.fixing_machines,i)
          return
        end
      end
    end
  end
end

function broken_finished(name, notHandCrafted)
  -- if notHandCrafted then
    
  -- end
  storage.nullius_broken_status[name] = nil
  for _, force in pairs(game.forces) do
    force.recipes[name].enabled = false
  end

  if (script.active_mods["Companion_Drones"] and
      (storage.nullius_companion_fix == nil)) then
    fuel_companion_drones(game.surfaces[1])
	storage.nullius_companion_fix = true
  end
end

function broken_crafted(name)
  if (storage.nullius_broken_status == nil) then
    return
  end
  local count = storage.nullius_broken_status[name]
  if (count == nil) then
    return
  end
  if (count < 2) then
    broken_finished(name)
  else
    storage.nullius_broken_status[name] = (count - 1)
  end
end


local function init_tech(force)
  if (not force.research_enabled) then return end
  for _, tech in pairs(force.technologies) do
    if ((string.sub(tech.name, 1, 8) ~= "nullius-") and
      (string.sub(tech.order, 1, 8) ~= "nullius-")) then
      tech.enabled = false
    elseif not tech.enabled then
      log("Re enabling tech: " .. tech.name)
      tech.enabled = true
    end
  end

  if ((storage.nullius_alignment ~= true) and (force.name == "player") and
      force.technologies["nullius-experimental-chemistry"].researched) then
    storage.nullius_broken_status = nil
  end

  for _, recipe in pairs(force.recipes) do
    if (string.sub(recipe.name, 1, 8) == "nullius-") then
      if ((string.sub(recipe.name, 9, 15) == "broken-") and
          broken_disabled(recipe.name)) then
        recipe.enabled = false
      end
    elseif ((string.sub(recipe.order, 1, 8) ~= "nullius-") and
        (string.sub(recipe.name, 1, 13) ~= "fill-nullius-") and
        (string.sub(recipe.name, 1, 14) ~= "empty-nullius-") and
		(recipe.category ~= "ee-testing-tool") and
	    (string.sub(recipe.name, 1, 5) ~= "bpsb-")) then
      recipe.enabled = false
    end
  end

  init_alignment_force(force)
  init_force_checkpoints(force)
  init_legacy_recipes(force)
end

local function init_techs()
  for _, force in pairs(game.forces) do
    init_tech(force)
  end
end


script.on_event(defines.events.on_player_joined_game,
  function(event)
    local player = game.players[event.player_index]
    update_mission_player(player)
	rematerialize_body(event)
	align_player_join(player)
  end
)

script.on_event(defines.events.on_force_created,
  function(event)
    init_tech(event.force)
  end
)

local function reset_config()
  if (remote.interfaces["freeplay"] ~= nil) then
    remote.call("freeplay", "set_created_items", {})	
    remote.call("freeplay", "set_respawn_items", {})
  end
  for interface, functions in pairs(remote.interfaces) do
    if (functions["set_no_victory"] ~= nil) then
      remote.call(interface, "set_no_victory", true)
    end
  end

  init_checkpoint_prereqs()
  update_railloader_bulk()
end

script.on_init(
  function()
    init_wind()
    init_geothermal()
	  reset_config()
    if (remote.interfaces["freeplay"] ~= nil) then
      remote.call("freeplay", "set_skip_intro", true)
      remote.call("freeplay", "set_disable_crashsite", true)
      remote.call("freeplay", "set_chart_distance", 250)
    end
    init_mission_global()
    artillery_remote.reset_remote_gui()
	  on_load_mod_interface()
  end
)

script.on_load(
  function()
	on_load_mod_interface()
  end
)

script.on_configuration_changed(
  function(event)
    migrate_version(event)
    reset_config()
	  init_alignment()
    init_techs()
    init_mission_global()
	  update_all_upgrades()
    artillery_remote.reset_remote_gui()
  end
)

local function chart_starting_area()
  local r = (storage.nullius_alignment or 250)
  local force = game.forces.player
  local surface = game.surfaces[1]
  local origin = force.get_spawn_position(surface)
  force.chart(surface, {{origin.x - r, origin.y - r}, {origin.x + r, origin.y + r}})
end

local function equip_armor(player)
  local inventory = player.get_inventory(defines.inventory.character_armor)
  if (inventory ~= nil) then
    local body = inventory.find_item_stack("nullius-chassis-1")
    if (body == nil) then
      player.insert({name="nullius-chassis-1", count=1})
      body = inventory.find_item_stack("nullius-chassis-1")
    end

    if ((body ~= nil) and (body.grid ~= nil)) then
	  if (script.active_mods["Companion_Drones"]) then
	    body.grid.put({name="nullius-solar-panel-1"})
	    body.grid.put({name="nullius-battery-1"})
	    body.grid.put({name="nullius-battery-1"})
		body.grid.put({name="nullius-battery-1"})
	  else
	    body.grid.put({name="nullius-charger-1"})
        body.grid.put({name="nullius-hangar-1"})
        body.grid.put({name="nullius-solar-panel-1"})
		body.grid.put({name="nullius-battery-1", position={2,4}})
	    body.grid.put({name="nullius-battery-1", position={3,4}})
		body.grid.put({name="nullius-solar-panel-1"})
		body.grid.put({name="nullius-battery-1"})
		body.grid.put({name="nullius-battery-1"})
	  end
      for _,eq in pairs(body.grid.equipment) do
		if (eq.max_energy > eq.energy) then
		  eq.energy = eq.max_energy
		end
      end
    end
  end
end

function equip_player(player)
  equip_armor(player)
  if (not script.active_mods["Companion_Drones"]) then
    player.insert({name="nullius-construction-bot-1", count=6})
  end
  player.insert({name="nullius-solar-panel-1", count=10})
  player.insert({name="nullius-grid-battery-1", count=6})
  player.insert({name="small-electric-pole", count=15})
  player.insert({name="nullius-small-miner-1", count=2})
  if (storage.nullius_alignment) then
    player.insert({name="nullius-broken-align-transponder", count=1})
  end
end

script.on_event(defines.events.on_player_created,
  function(event)
    local player = game.players[event.player_index]

    local intro = {"nullius-intro"}
    if (not storage.init_landing) then
	    init_alignment()
      storage.init_landing = true
	    local surface = player.surface
      surface.daytime = 0.7
	    if (storage.nullius_alignment) then
	      intro = align_first_player_created(player)
	    else
        init_broken()
	      reset_checkpoints(player.force)
	  	  chart_starting_area()
	      landing_site(surface, {x=-5, y=-6}, player.force)
	      equip_player(player)
	    end
	  elseif (storage.nullius_alignment) then
	    intro = align_player_created(player)
	  else
	    equip_player(player)
    end

    if game.is_multiplayer() then
      player.print(intro)
    else
      game.show_message_dialog{text = intro}
    end
	  init_tech(player.force)
    update_mission_player(player)
	  update_player_upgrades(player)
  end
)

script.on_event(defines.events.on_research_finished,
  function(event)
    local techname = event.research.name
    if ((storage.nullius_broken_status ~= nil) and
	    (not storage.nullius_alignment)) then
      if (techname == "nullius-experimental-chemistry") then
        init_techs()
      elseif (techname == "nullius-distillation-1") then
        broken_crafted("nullius-broken-electrolyzer")
      end
    end
    update_checkpoint_list(techname)
    artillery_remote.reset_remote_gui()
  end
)

commands.add_command("flip_valves", nil, function(command)
  for _, v in pairs(game.surfaces["nauvis"].find_entities_filtered{type = "valve"}) do
    v.rotate()
    v.rotate()
  end
end)
