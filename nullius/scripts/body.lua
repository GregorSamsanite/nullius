function add_chart_tag(player, character)
  if ((player == nil) or (character == nil)) then
    return
  end
  local icon = "nullius-android-1"
  if (character.name == "nullius-android-2") then
    icon = "nullius-android-2"
  end

  local name = nil
  if (global.nullius_android_name ~= nil) then
    name = global.nullius_android_name[character.unit_number]
  end
  if (name == nil) then
    name = player.name
  end

  local ctag = player.force.add_chart_tag(character.surface,
      {position=character.position, icon={type="item", name=icon},
      text=name, last_user=player})
  if (ctag ~= nil) then
    if (global.nullius_tag_android == nil) then
      global.nullius_tag_android = {}
      global.nullius_android_tag = {}
    end
    global.nullius_tag_android[ctag.tag_number] = character
    global.nullius_android_tag[character.unit_number] = ctag
  end
end

local function is_rolling_stock(vehicle)
  if ((vehicle.type == "locomotive") or
      (vehicle.type == "cargo-wagon") or
	  (vehicle.type == "fluid-wagon") or
	  (vehicle.type == "artillery-wagon")) then
	return true
  end
  return false
end

function switch_body(player, target)
  local target_vehicle = nil
  if ((target.vehicle ~= nil) and ((target.vehicle.type == "car") or
      (target.vehicle.type == "spider-vehicle"))) then
    target_vehicle = target.vehicle
  end

  if (global.nullius_android_tag ~= nil) then
    local tag = global.nullius_android_tag[target.unit_number]
    if (tag ~= nil) then
      global.nullius_android_tag[target.unit_number] = nil
      if (tag.valid) then
        if (global.nullius_android_name == nil) then
          global.nullius_android_name = {}
        end
        global.nullius_android_name[target.unit_number] = tag.text
        global.nullius_tag_android[tag.tag_number] = nil
        tag.destroy()
      end
    end
  end

  local oldchar = player.character
  local vehicle = player.vehicle  
  if (target.surface ~= player.surface) then
    player.set_controller{type=defines.controllers.ghost}
    if (not player.teleport(target.position, target.surface)) then
	  player.set_controller{type=defines.controllers.character, character=oldchar}
	  return
	end
  end

  if ((player.force ~= nil) and player.force.valid) then
    if (global.nullius_switch_body_count == nil) then
	  global.nullius_switch_body_count = { }
	end
    local count = global.nullius_switch_body_count[player.force.name]
	if (count == nil) then count = 0 end
	count = count + 1
	global.nullius_switch_body_count[player.force.name] = count
  end

  player.set_controller{type=defines.controllers.character, character=target}
  update_player_upgrades(player)
  if ((oldchar ~= nil) and oldchar.valid and (oldchar.player == nil)) then
    player.associate_character(oldchar)
  end

  local do_set_tag = true
  local old_passenger = nil
  if ((vehicle ~= nil) and (oldchar ~= nil)) then
    if ((vehicle.type == "car") or (vehicle.type == "spider-vehicle")) then
	  old_passenger = vehicle.get_passenger()
	  if ((old_passenger == nil) or (old_passenger == target)) then
        vehicle.set_passenger(oldchar)
	    do_set_tag = false
	  end
    elseif (is_rolling_stock(vehicle)) then
	  if (vehicle.get_driver() == nil) then
        vehicle.set_driver(oldchar)
	    do_set_tag = false
	  end
    end
  end
  if (do_set_tag) then
    add_chart_tag(player, oldchar)
  end

  if (global.nullius_body_queue ~= nil) then
    local queue = global.nullius_body_queue[player.index]
    if (queue ~= nil) then
      queue.last_index = target.unit_number
    end
  end

  if ((target_vehicle ~= nil) and (target_vehicle.get_driver() == nil)) then
    if ((target_vehicle == vehicle) and (old_passenger == target) and
	    (oldchar == target_vehicle.get_passenger())) then
	  target_vehicle.set_driver(target)
    elseif (target == target_vehicle.get_passenger()) then
      target_vehicle.set_passenger(nil)
      target_vehicle.set_driver(target)
	end
  end
end

function update_queue(player, oldchar)
  local newchar = player.character
  if ((newchar == oldchar) or (newchar == nil) or (oldchar == nil)) then
    return
  end

  if (global.nullius_body_queue == nil) then
    global.nullius_body_queue = {}
  end
  local queue = global.nullius_body_queue[player.index]
  if (queue == nil) then
    queue = {}
    queue.nodes = {}
    global.nullius_body_queue[player.index] = queue
  end
  local node1 = queue.nodes[oldchar.unit_number]
  if ((node1 == nil) or (node1.next == nil) or (node1.next.prev ~= node1)) then
    node1 = { body = oldchar, unit = oldchar.unit_number }
    node1.next = node1
    node1.prev = node1
    queue.nodes[oldchar.unit_number] = node1
  end

  local node2 = queue.nodes[newchar.unit_number]
  if (node2 == node1.next) then return end
  if ((node2 == nil) or (node2.body ~= newchar) or
      (node2.next == nil) or (node2.prev == nil) or
      (node2.next.prev ~= node2) or (node2.prev.next ~= node2)) then
    node2 = { body = newchar, unit = newchar.unit_number }
    queue.nodes[newchar.unit_number] = node2
  else
    local n2n = node2.next
    local n2p = node2.prev
    n2n.prev = n2p
    n2p.next = n2n
  end

  local nn = node1.next
  node2.next = nn
  node2.prev = node1
  nn.prev = node2
  node1.next = node2
end

function upload_mind(player, target)
  if ((target.type == "car") or (target.type == "spider-vehicle")) then
    target = target.get_passenger()
    if ((target == nil) or (not target.valid)) then return end
  elseif (is_rolling_stock(target)) then
    target = target.get_driver()
    if ((target == nil) or (not target.valid)) then return end
  end
  if ((target.type ~= "character") or (target.player ~= nil) or
      (target.force ~= player.force)) then
    return
  end
  local oldchar = player.character
  if ((target == oldchar) or (oldchar == nil)) then return end

  switch_body(player, target)
  update_queue(player, oldchar)
end

function cycle_body(player, rev)
  if (global.nullius_body_queue == nil) then return end
  local queue = global.nullius_body_queue[player.index]
  if (queue == nil) then return end

  if (player.character == nil) then return end
  local node = queue.nodes[player.character.unit_number]
  if ((node == nil) and (queue.last_index ~= nil)) then
    node = queue.nodes[queue.last_index]
  end
  if (node == nil) then return end
  local orgnode = node

  if (rev) then
    node = node.prev
  else
    node = node.next
  end
  if (node == nil) then
    global.nullius_body_queue[player.index] = nil
    return
  end

  local body = node.body
  while ((body == nil) or (not body.valid) or (body.type ~= "character") or
      (body.player ~= nil) or (body.force ~= player.force)) do
    local np = node.prev
    local nn = node.next
    if ((nn == nil) or (np == nil) or (nn.prev == nil) or
        (np.next == nil) or (nn == node) or (np == node)) then
      global.nullius_body_queue[player.index] = nil
      return
    end
    if ((body == nil) or (not body.valid) or (body.type ~= "character")) then
      np.next = nn
      nn.prev = np
      node.next = node
      node.prev = node
    end
    if (node == orgnode) then return end
    if (rev) then node = np else node = nn end
    body = node.body
  end

  switch_body(player, body)
end


script.on_event("nullius-upload-mind", function(event)
  local player = game.players[event.player_index]
  local target = player.selected
  if ((target ~= nil) and target.valid) then
    upload_mind(player, target)
  end
end)

script.on_event("nullius-previous-body", function(event)
  local player = game.players[event.player_index]
  cycle_body(player, true)
end)

script.on_event("nullius-next-body", function(event)
  local player = game.players[event.player_index]
  cycle_body(player, false)
end)

script.on_event(defines.events.on_chart_tag_removed, function(event)
  if ((global.nullius_tag_android ~= nil) and
      (event.tag ~= nil) and event.tag.valid) then
    local android = global.nullius_tag_android[event.tag.tag_number]
  if (android ~= nil) then
    global.nullius_tag_android[event.tag.tag_number] = nil
    if (android.valid) then
    global.nullius_android_tag[android.unit_number] = nil
    if (event.player_index ~= nil) then
      local player = game.players[event.player_index]
      if (player ~= nil) then
        upload_mind(player, android)
      end
    end
    end
  end
  end
end)

function change_character_entity(oldunit, newchar)
  local newunit = newchar.unit_number
  if ((oldunit == nil) or (newunit == oldunit)) then return end

  if ((global.nullius_android_tag ~= nil) and
      (global.nullius_tag_android ~= nil)) then
    local tag = global.nullius_android_tag[oldunit]
    if ((tag ~= nil) and tag.valid and (tag.tag_number ~= nil)) then
      global.nullius_android_tag[oldunit] = nil
      global.nullius_android_tag[newunit] = tag
      global.nullius_tag_android[tag.tag_number] = newchar
    end

    if (global.nullius_android_name ~= nil) then
	  local name = global.nullius_android_name[oldunit]
      if (name ~= nil) then
        global.nullius_android_name[oldunit] = nil
        global.nullius_android_name[newunit] = name
      end
	end
  end

  if (global.nullius_body_queue ~= nil) then
    for _,queue in pairs(global.nullius_body_queue) do
      local node = queue.nodes[oldunit]
      if (node ~= nil) then
        node.body = newchar
        node.unit = newunit
        queue.nodes[oldunit] = nil
        queue.nodes[newunit] = node
      end
      if (queue.last_index == oldunit) then
        queue.last_index = newunit
      end
    end
  end
end

script.on_event(defines.events.on_player_respawned, function(event)
  local player = game.players[event.player_index]
  update_player_upgrades(player)
  local newchar = player.character
  if ((newchar == nil) or (not newchar.valid)) then return end

  if (global.nullius_body_queue == nil) then return end
  local queue = global.nullius_body_queue[player.index]
  if (queue == nil) then return end
  if (queue.nodes[newchar.unit_number] ~= nil) then return end

  for _,node in pairs(queue.nodes) do
    if ((node.body == nil) or (not node.body.valid)) then
      change_character_entity(node.unit, newchar)
      return
    end
  end
end)

function rematerialize_body(event)
  local player = game.players[event.player_index]
  update_player_upgrades(player)
  if (global.nullius_body_queue == nil) then return end
  local queue = global.nullius_body_queue[player.index]
  if (queue == nil) then return end

  local newchar = player.character
  if ((newchar ~= nil) and newchar.valid) then
    local charnode = queue.nodes[newchar.unit_number]
    if (charnode ~= nil) then  
      charnode.body = newchar
	end
  end

  local bodies = player.surface.find_entities_filtered{
    type = "character", force = player.force }
  for _,body in pairs(bodies) do
    if ((body ~= nil) and body.valid) then
	  local node = queue.nodes[body.unit_number]
	  if ((node ~= nil) and (node.body ~= body)) then
	    node.body = body
	  end
	end
  end

  local associates = player.get_associated_characters()
  for _,associate in pairs(associates) do
    if ((associate ~= nil) and associate.valid) then
	  local node = queue.nodes[associate.unit_number]
	  if ((node ~= nil) and (node.body ~= associate)) then
	    node.body = associate
	  end
	end
  end
end

script.on_event(defines.events.on_player_toggled_map_editor,
    rematerialize_body)
