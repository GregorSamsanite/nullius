local simulations = require("./tips-and-tricks-simulations")

data.extend{
    {
        type = "tips-and-tricks-item",
        name = "nullius-geology-1",
        tag = "[technology=nullius-geology-1]",
        starting_status = "locked",
        order = "nullius-0",
        -- Trigger this if the player has not researched Geology 1 in three
        -- minutes. The technology takes only a handful of seconds to research.
        -- If they have not managed it in three minutes they probably don't
        -- realise that the research takes no science packs and only needs
        -- a powered lab.
        trigger = {
            type = "time-elapsed",
            ticks = 3 * minute
        },
        -- Skip this trick if they manage to research Geology 1 before the
        -- timer runs out.
        skip_trigger = {
            type = "research",
            technology = "nullius-geology-1",
        },
    },
    {
        type = "tips-and-tricks-item",
        name = "nullius-chlorine",
        tag = "[recipe=nullius-saline-electrolysis]",
        starting_status = "locked",
        order = "nullius-1",
        trigger = {
            type = "or",
            triggers = {
                {
                    type = "set-recipe",
                    recipe = "nullius-saline-electrolysis",
                },
                {
                    type = "set-recipe",
                    recipe = "nullius-brine-electrolysis",
                },
            },
        },
    },
}

-- Power
data.extend{
    {
        type = "tips-and-tricks-item-category",
        name = "nullius-power",
        order = "nullius-a",
    },
    {
        type = "tips-and-tricks-item",
        name = "nullius-power",
        order = "nullius-a",
        is_title = true,
        starting_status = "unlocked",
    },
    {
        type = "tips-and-tricks-item",
        name = "nullius-priority",
        category = "nullius-power",
        indent = 1,
        tag = "[item=nullius-electrolyzer-1]",
        starting_status = "locked",
        order = "nullius-a",
        trigger = {
            type = "or",
            triggers = {
                {type = "build-entity", match_type_only = true, entity = "nullius-priority-electrolyzer-1"},
                {type = "build-entity", match_type_only = true, entity = "nullius-turbine-open-standard-1"},
            },
        },
    },
    {
        type = "tips-and-tricks-item",
        name = "nullius-hydrogen-battery",
        category = "nullius-power",
        indent = 1,
        tag = "[item=nullius-combustion-chamber-1]",
        starting_status = "locked",
        order = "nullius-b",
        trigger = {
            type = "research",
            technology = "nullius-energy-storage-1",
        },
        simulation = simulations.hydrogen_battery,
    },
    {
        type = "tips-and-tricks-item",
        name = "nullius-compressed-nitrogen-battery",
        category = "nullius-power",
        indent = 1,
        tag = "[item=nullius-compressor-1]",
        starting_status = "locked",
        order = "nullius-c",
        trigger = {
            type = "research",
            technology = "nullius-energy-storage-2",
        },
        simulation = simulations.compressed_nitrogen_battery,
    },
    {
        type = "tips-and-tricks-item",
        name = "nullius-solar-thermal-power",
        category = "nullius-power",
        indent = 1,
        tag = "[item=nullius-solar-collector-1]",
        starting_status = "locked",
        order = "nullius-d",
        trigger = {
            type = "research",
            technology = "nullius-solar-thermal-power-1",
        },
        simulation = simulations.solar_thermal_power,
    },
    {
        type = "tips-and-tricks-item",
        name = "nullius-heat",
        category = "nullius-power",
        indent = 1,
        tag = "[item=nullius-heat-pipe-1]",
        starting_status = "locked",
        order = "nullius-e",
        trigger = {
            type = "research",
            technology = "nullius-thermal-storage-1",
        },
    },
}

-- Plumbing
data.extend{
    {
        type = "tips-and-tricks-item-category",
        name = "nullius-plumbing",
        order = "nullius-b",
    },
    {
        type = "tips-and-tricks-item",
        name = "nullius-plumbing",
        order = "nullius-a",
        is_title = true,
        starting_status = "unlocked",
    },
    {
        type = "tips-and-tricks-item",
        name = "nullius-pipe-extents",
        category = "nullius-plumbing",
        indent = 1,
        tag = "[item=pipe]",
        starting_status = "locked",
        order = "nullius-b",
        trigger = {
            type = "or",
            triggers = {
                -- The player starts with some pipe-2 and some storage tanks.
                -- Storage tanks will reduce the extent, so prompt on that.
                -- Plumbing 1 unlocks pipe-1, with a lower extent than pipe-2,
                -- so prompt on that too.
                {type = "build-entity", entity = "storage-tank", count = 1},
                {type = "build-entity", entity = "nullius-pipe-2", count = 145},
                {type = "build-entity", entity = "nullius-underground-pipe-2", count = 20},
                {type = "research", technology = "nullius-plumbing-1"},
            },
        },
    },
    {
        type = "tips-and-tricks-item",
        name = "nullius-pump-modes",
        category = "nullius-plumbing",
        indent = 1,
        tag = "[item=nullius-pump-1]",
        starting_status = "locked",
        order = "nullius-c",
        trigger = {
            type = "or",
            triggers = {
                {
                    type = "build-entity",
                    entity = "nullius-pump-1",
                },
                {
                    type = "build-entity",
                    entity = "nullius-small-pump-1",
                },
                {
                    type = "build-entity",
                    entity = "nullius-one-way-valve",
                },
            },
        },
    },
}

-- Terraforming
data.extend{
	{
		type = "tips-and-tricks-item-category",
		name = "nullius-terraforming",
		order = "nullius-c",
	},
	{
		type = "tips-and-tricks-item",
		name = "nullius-terraforming",
		category = "nullius-terraforming",
		is_title = true,
		order = "nullius-a",
		starting_status = "unlocked",
	},
	{
		type = "tips-and-tricks-item",
		name = "nullius-oxygen-venting",
		category = "nullius-terraforming",
		order = "nullius-b",
		indent = 1,
		tag = "[technology=nullius-checkpoint-oxygen-partial]",
		trigger = {
			type = "build-entity",
			entity = "nullius-chimney-1",
			match_type_only = true,
		},
	},
	{
		type = "tips-and-tricks-item",
		name = "nullius-land-fill-dumping",
		category = "nullius-terraforming",
		order = "nullius-c",
		indent = 1,
		tag = "[technology=nullius-land-fill-5]",
		trigger = {
			type = "research",
			technology = "nullius-land-fill-5",
		},
	},
}

-- Biology
data.extend{
	{
		type = "tips-and-tricks-item-category",
		name = "nullius-biology",
		order = "nullius-d",
	},
	{
		type = "tips-and-tricks-item",
		name = "nullius-biology",
		category = "nullius-biology",
		is_title = true,
		order = "nullius-a",
		trigger = {
			type = "research",
			technology = "nullius-biochemistry-1",
		},
	},
	{
		type = "tips-and-tricks-item",
		name = "nullius-bootstrapping-biology",
		category = "nullius-biology",
		order = "nullius-b",
		indent = 1,
		tag = "[technology=nullius-biology-1]",
		trigger = {
			type = "research",
			technology = "nullius-biochemistry-1",
		},
	},
	{
		type = "tips-and-tricks-item",
		name = "nullius-creating-life",
		category = "nullius-biology",
		order = "nullius-c",
		indent = 1,
		tag = "[fluid=nullius-bacteria]",
		trigger = {
			type = "research",
			technology = "nullius-biology-1",
		},
	},
}
