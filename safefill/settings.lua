data:extend({
  {
    type = "string-setting",
    name = "safefill-cost",
    setting_type = "startup",
    default_value = "Normal",
    allowed_values = {"Cheap", "Normal", "Expensive"},
    order = "b"
  },
  {
    type = "string-setting",
    name = "safefill-depth",
    setting_type = "startup",
    default_value = "All depths",
    allowed_values = {"All depths", "Shallow only", "No shallow", "No deep", "Medium only"},
    order = "c"
  },
  {
    type = "bool-setting",
    name = "safefill-green-water",
    setting_type = "startup",
    default_value = true,
	order = "d"
  },
  {
    type = "bool-setting",
    name = "safefill-water-on-water",
    setting_type = "startup",
    default_value = true,
	order = "e"
  }
})
