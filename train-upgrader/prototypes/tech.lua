data:extend({
  {
    type = "technology",
    name = "tu-rail-modernization",
    icon_size = 256,
    icon = "__train-upgrader__/graphics/tech.png",
    effects = {
      {
        type = "unlock-recipe",
        recipe = "tu-supplier"
      },
      {
        type = "unlock-recipe",
        recipe = "tu-receiver"
      }
    },
    prerequisites = {"automated-rail-transportation", "construction-robotics"},
    unit = {
      count = 100,
      ingredients = {
        {"automation-science-pack", 1},
        {"logistic-science-pack", 1},
		    {"chemical-science-pack", 1}
      },
      time = 30
    },
    order = "c-g-d"
  }
})
