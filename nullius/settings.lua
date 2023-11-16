data:extend({
    {
        type = "bool-setting",
        name = "nullius-alignment",
        setting_type = "startup",
        default_value = true
    },
    {
        type = "double-setting",
        name = "nullius-wind-turbine-energy-multiplier",
        setting_type = "startup",
        default_value = 1.0,
		minimum_value = 0.01,
		maximum_value = 100.0,
        hidden = true
    }
})