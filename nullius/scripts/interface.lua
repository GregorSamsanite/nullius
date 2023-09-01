remote.add_interface("nullius", {
  informatron_menu = function(data)
    return nullius_info_menu(data.player_index)
  end,
  informatron_page_content = function(data)
    return nullius_info_page_content(data.page_name, data.player_index, data.element)
  end,
  on_character_swapped = function(data)
    change_character_entity(data.old_unit_number, data.new_character)
  end
})


function on_load_mod_interface()
  if (remote.interfaces["PickerDollies"]) then
    if (remote.interfaces["PickerDollies"]["dolly_moved_entity_id"]) then
      script.on_event(remote.call("PickerDollies", "dolly_moved_entity_id"), dolly_moved_entity)
    end

    if (remote.interfaces["PickerDollies"]["add_blacklist_name"]) then
      remote.call("PickerDollies", "add_blacklist_name", "nullius-wind-base-1")
      remote.call("PickerDollies", "add_blacklist_name", "nullius-wind-base-2")
      remote.call("PickerDollies", "add_blacklist_name", "nullius-wind-base-3")
      remote.call("PickerDollies", "add_blacklist_name", "nullius-geothermal-reactor-1")
      remote.call("PickerDollies", "add_blacklist_name", "nullius-geothermal-reactor-2")
      remote.call("PickerDollies", "add_blacklist_name", "nullius-geothermal-reactor-3")
      remote.call("PickerDollies", "add_blacklist_name", "nullius-stirling-engine-1")
      remote.call("PickerDollies", "add_blacklist_name", "nullius-stirling-engine-2")
      remote.call("PickerDollies", "add_blacklist_name", "nullius-stirling-engine-3")
      remote.call("PickerDollies", "add_blacklist_name", "nullius-large-beacon-1")
      remote.call("PickerDollies", "add_blacklist_name", "nullius-large-beacon-2")
      remote.call("PickerDollies", "add_blacklist_name", "nullius-beacon-1")
      remote.call("PickerDollies", "add_blacklist_name", "nullius-beacon-1-1")
      remote.call("PickerDollies", "add_blacklist_name", "nullius-beacon-1-2")
      remote.call("PickerDollies", "add_blacklist_name", "nullius-beacon-1-3")
      remote.call("PickerDollies", "add_blacklist_name", "nullius-beacon-1-4")
      remote.call("PickerDollies", "add_blacklist_name", "nullius-beacon-2")
      remote.call("PickerDollies", "add_blacklist_name", "nullius-beacon-2-1")
      remote.call("PickerDollies", "add_blacklist_name", "nullius-beacon-2-2")
      remote.call("PickerDollies", "add_blacklist_name", "nullius-beacon-2-3")
      remote.call("PickerDollies", "add_blacklist_name", "nullius-beacon-2-4")
      remote.call("PickerDollies", "add_blacklist_name", "nullius-beacon-3")
      remote.call("PickerDollies", "add_blacklist_name", "nullius-beacon-3-1")
      remote.call("PickerDollies", "add_blacklist_name", "nullius-beacon-3-2")
      remote.call("PickerDollies", "add_blacklist_name", "nullius-beacon-3-3")
      remote.call("PickerDollies", "add_blacklist_name", "nullius-beacon-3-4")
	end
  end
end
