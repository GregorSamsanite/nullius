data:extend({
  {
    type = "recipe",
    name = "tu-supplier",
    enabled = false,
	energy_required = 5,
    ingredients = {
      {"logistic-chest-passive-provider", 1},
      {"rail-signal", 1},
      {"construction-robot", 1}
    },
    result = "tu-supplier"
  },
  {
    type = "recipe",
    name = "tu-receiver",
    enabled = false,
	energy_required = 4,
    ingredients = {
      {"logistic-chest-storage", 1},
      {"rail-chain-signal", 1}
    },
    result = "tu-receiver"
  }
})
