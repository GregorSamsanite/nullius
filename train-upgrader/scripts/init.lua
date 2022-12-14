function init_tu()
  if (remote.interfaces["PickerDollies"] and
      remote.interfaces["PickerDollies"]["add_blacklist_name"]) then
    remote.call("PickerDollies", "add_blacklist_name", "tu-supplier")
    remote.call("PickerDollies", "add_blacklist_name", "tu-receiver")
  end
end

script.on_init(
  function()
	init_tu()
  end
)

script.on_load(
  function()
	init_tu()
  end
)
