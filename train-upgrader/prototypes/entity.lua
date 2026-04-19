local supplier = util.table.deepcopy(data.raw.container["steel-chest"])
supplier.name = "tu-supplier"
supplier.icons = data.raw.item["tu-supplier"].icons
supplier.flags = {"placeable-player", "player-creation"}
supplier.minable = { mining_time = 0.5, result = "tu-supplier" }
supplier.next_upgrade = nil
supplier.inventory_size = 20
supplier.inventory_type = "with_filters_and_bar"
supplier.picture = { layers = {
  {
    filename = "__train-upgrader__/graphics/entity/supplier.png",
    priority = "extra-high",
    width = 68,
    height = 84,
    shift = util.by_pixel(0, -1),
    scale = 0.5
  },
  {
    filename = "__base__/graphics/entity/infinity-chest/infinity-chest-shadow.png",
    priority = "extra-high",
    width = 116,
    height = 48,
    shift = util.by_pixel(12, 6),
    draw_as_shadow = true,
    scale = 0.5
  }
}}

local receiver = util.table.deepcopy(supplier)
receiver.name = "tu-receiver"
receiver.icons = data.raw.item["tu-receiver"].icons
receiver.minable.result = "tu-receiver"
receiver.inventory_size = 40
receiver.picture.layers[1].filename =
    "__train-upgrader__/graphics/entity/receiver.png"

data:extend({ supplier, receiver })
