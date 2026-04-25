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
    },
    {
        type = "bool-setting",
        name = "nullius-hide-void-alt",
        setting_type = "startup",
        default_value = false
    },
    {
        type = "bool-setting",
        name = "nullius-hide-recipe-signals",
        setting_type = "startup",
        default_value = false
    },
    {
        type = "bool-setting",
        name = "nullius-match-wind-turbine-activity-sound",
        setting_type = "startup",
        default_value = true
    },
    {
        type = "double-setting",
        name = "nullius-wind-turbine-volume",
        setting_type = "startup",
        default_value = 1.0,
		minimum_value = 0.0,
		maximum_value = 1.0,
    },
    {
        type = "double-setting",
        name = "nullius-pump-energy-multiplier",
        setting_type = "startup",
        default_value = 10,
        minimum_value = 0.1,
        maximum_value = 1000
    }
})