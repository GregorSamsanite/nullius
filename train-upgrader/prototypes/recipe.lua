data:extend({
	{
		type = "recipe",
		name = "tu-supplier",
		enabled = false,
		energy_required = 5,
		ingredients = {
			{ type = "item", name = "passive-provider-chest", amount = 1 },
			{ type = "item", name = "rail-signal", amount = 1 },
			{ type = "item", name = "construction-robot", amount = 1 },
		},
		results = {
			{ type = "item", name = "tu-supplier", amount = 1 },
		},
	},
	{
		type = "recipe",
		name = "tu-receiver",
		enabled = false,
		energy_required = 4,
		ingredients = {
			{ type = "item", name = "storage-chest", amount = 1 },
			{ type = "item", name = "rail-chain-signal", amount = 1 },
		},
		results = {
			{ type = "item", name = "tu-receiver", amount = 1 },
		},
	},
})
