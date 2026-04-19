data:extend({
  {
    type = "string-setting",
    name = "safefill-cost",
    setting_type = "startup",
    default_value = "normal",
    allowed_values = {"cheap", "normal", "expensive"},
    order = "b"
  },
  {
    type = "string-setting",
    name = "safefill-depth",
    setting_type = "startup",
    default_value = "all-depths",
    allowed_values = {"all-depths", "shallow-only", "no-shallow", "no-deep", "medium-only"},
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
  },
  {
    type = "bool-setting",
    name = "safefill-minable-water",
    setting_type = "startup",
    default_value = false,
	  order = "f"
  }
})
