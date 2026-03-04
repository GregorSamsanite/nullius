data:extend({
  {
    type = "item",
    name = "tu-supplier",
    icons = {{
      icon = "__train-upgrader__/graphics/icon/supplier.png",
      icon_size = 64
    }},
	  subgroup = "train-transport",
    order = "a[train-system]-tub[tu-supplier]",
    place_result = "tu-supplier",
    stack_size = 20
  },
  {
    type = "item",
    name = "tu-receiver",
    icons = {{
      icon = "__train-upgrader__/graphics/icon/receiver.png",
      icon_size = 64
    }},
	  subgroup = "train-transport",
    order = "a[train-system]-tuc[tu-receiver]",
    place_result = "tu-receiver",
    stack_size = 20
  }
})
