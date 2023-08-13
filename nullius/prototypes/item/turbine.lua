local function create_turbine_recipe(fluidname, exhaust, energy, count1, count2)
  local fullfluid = "nullius-" .. fluidname
  local fluid = data.raw.fluid[fullfluid]
  local energycount = ((energy * count1) / 10)
  local open = {
    type = "recipe",
	name = "nullius-burn-open-" .. fluidname,
	icons = fluid.icons,
	icon = fluid.icon,
    icon_size = fluid.icon_size,
    icon_mipmaps = fluid.icon_mipmaps,
	crafting_machine_tint = { primary = fluid.flow_color },
    category = "turbine-open",
    subgroup = "turbine-open",
    hide_from_player_crafting = true,
	hide_from_stats = true,
    energy_required = 1,
    ingredients = {{type="fluid", name=fullfluid, amount=count1}},
    results = {{type="fluid", name="nullius-power", amount=energycount}}
  }

  local closed = util.table.deepcopy(open)
  closed.name = "nullius-burn-closed-" .. fluidname
  closed.category = "turbine-closed"
  closed.subgroup = "turbine-closed"
  closed.results[2] = {type="fluid", name="nullius-" .. exhaust, amount=count2}
  data:extend({ open, closed })
end


create_turbine_recipe("steam", "water", 6, 200, 20) -- 1 water per 10
create_turbine_recipe("pressure-steam", "water", 20, 60, 20) -- 1 water per 3
create_turbine_recipe("compressed-air", "air", 14, 100, 340) -- 85%
create_turbine_recipe("compressed-residual-gas", "residual-gas", 15, 80, 288) -- 90%
create_turbine_recipe("compressed-trace-gas", "trace-gas", 15, 80, 288)  -- 90%
create_turbine_recipe("compressed-nitrogen", "nitrogen", 18, 70, 252) -- 90%
create_turbine_recipe("compressed-argon", "argon", 24, 50, 192) -- 96%
create_turbine_recipe("compressed-helium", "helium", 32, 40, 99) -- 99%
create_turbine_recipe("compressed-hydrogen", "hydrogen", 4, 300, 1020) -- 85%
create_turbine_recipe("compressed-oxygen", "oxygen", 4, 300, 1020) -- 85%
create_turbine_recipe("compressed-carbon-dioxide", "carbon-dioxide", 12, 100, 360) -- 90%
create_turbine_recipe("compressed-carbon-monoxide", "carbon-monoxide", 8, 150, 540) -- 90%
create_turbine_recipe("compressed-methane", "methane", 6, 200, 720) -- 90%


data.raw.recipe["nullius-burn-open-steam"].hide_from_stats = false
data.raw.recipe["nullius-burn-closed-steam"].hide_from_stats = false
data.raw.recipe["nullius-burn-open-pressure-steam"].hide_from_stats = false
data.raw.recipe["nullius-burn-closed-pressure-steam"].hide_from_stats = false
data.raw.recipe["nullius-burn-closed-compressed-nitrogen"].hide_from_stats = false


data:extend({
  {
    type = "item",
    name = "nullius-turbine-open-1",
	localised_name = {"", {"entity-name.nullius-turbine-open"}, " ", 1},
    icons = {{
	  icon = "__base__/graphics/icons/steam-turbine.png",
      icon_size = 64,
      icon_mipmaps = 4,
      tint = {0.7, 0.7, 0.6, 1}
    }},
    subgroup = "energy-backup",
    order = "nullius-fbb",
    place_result = "nullius-turbine-open-standard-1",
    stack_size = 50
  },
  {
    type = "item",
    name = "nullius-turbine-open-2",
	localised_name = {"", {"entity-name.nullius-turbine-open"}, " ", 2},
    icons = {{
	  icon = "__base__/graphics/icons/steam-turbine.png",
      icon_size = 64,
      icon_mipmaps = 4,
      tint = {0.85, 0.85, 0.75, 1}
    }},
    subgroup = "energy-backup",
    order = "nullius-fbc",
    place_result = "nullius-turbine-open-standard-2",
    stack_size = 50
  },
  {
    type = "item",
    name = "nullius-turbine-open-3",
	localised_name = {"", {"entity-name.nullius-turbine-open"}, " ", 3},
    icons = {{
	  icon = "__base__/graphics/icons/steam-turbine.png",
      icon_size = 64,
      icon_mipmaps = 4,
      tint = {1, 1, 0.9, 1}
    }},
    subgroup = "energy-backup",
    order = "nullius-fbd",
    place_result = "nullius-turbine-open-standard-3",
    stack_size = 50
  },
  {
    type = "item",
    name = "nullius-turbine-closed-1",
	localised_name = {"", {"entity-name.nullius-turbine-closed"}, " ", 1},
    icons = {{
	  icon = "__base__/graphics/icons/steam-turbine.png",
      icon_size = 64,
      icon_mipmaps = 4,
      tint = {0.6, 0.6, 0.7, 1}
    }},
    subgroup = "energy-backup",
    order = "nullius-fcb",
    place_result = "nullius-turbine-closed-standard-1",
    stack_size = 50
  },
  {
    type = "item",
    name = "nullius-turbine-closed-2",
	localised_name = {"", {"entity-name.nullius-turbine-closed"}, " ", 2},
    icons = {{
	  icon = "__base__/graphics/icons/steam-turbine.png",
      icon_size = 64,
      icon_mipmaps = 4,
      tint = {0.75, 0.75, 0.85, 1}
    }},
    subgroup = "energy-backup",
    order = "nullius-fcc",
    place_result = "nullius-turbine-closed-standard-2",
    stack_size = 50
  },
  {
    type = "item",
    name = "nullius-turbine-closed-3",
	localised_name = {"", {"entity-name.nullius-turbine-closed"}, " ", 3},
    icons = {{
	  icon = "__base__/graphics/icons/steam-turbine.png",
      icon_size = 64,
      icon_mipmaps = 4,
      tint = {0.9, 0.9, 1, 1}
    }},
    subgroup = "energy-backup",
    order = "nullius-fcd",
    place_result = "nullius-turbine-closed-standard-3",
    stack_size = 50
  },

  {
    type = "recipe",
    name = "nullius-turbine-open-1",
    enabled = false,
    category = "large-crafting",
    always_show_made_in = true,
    energy_required = 8,
    ingredients = {
      {"nullius-motor-1", 1},
      {"nullius-iron-sheet", 2},
      {"nullius-iron-gear", 1},
      {"pipe", 2}
    },
    result = "nullius-turbine-open-1"
  },
  {
    type = "recipe",
    name = "nullius-boxed-turbine-open-1",
    enabled = false,
    category = "huge-assembly",
    subgroup = "boxed-fluid-energy",
    always_show_made_in = true,
    energy_required = 40,
    ingredients = {
      {"nullius-box-motor-1", 1},
      {"nullius-box-iron-sheet", 2},
      {"nullius-box-iron-gear", 1},
      {"nullius-box-pipe-1", 2}
    },
    result = "nullius-box-turbine-open-1"
  },
  {
    type = "recipe",
    name = "nullius-turbine-closed-1",
    enabled = false,
    always_show_made_in = true,
    category = "large-crafting",
    energy_required = 5,
    ingredients = {
      {"nullius-turbine-open-1", 1},
      {"nullius-small-tank-1", 1},
	  {"nullius-pump-1", 1},
	  {"nullius-top-up-valve", 2}
    },
    result = "nullius-turbine-closed-1"
  },
  {
    type = "recipe",
    name = "nullius-boxed-turbine-closed-1",
    enabled = false,
    always_show_made_in = true,
    category = "huge-assembly",
    subgroup = "boxed-fluid-energy",
    energy_required = 25,
    ingredients = {
      {"nullius-box-turbine-open-1", 1},
	  {"nullius-box-small-tank-1", 1},
	  {"nullius-box-pump-1", 1},
	  {"nullius-box-top-up-valve", 2}
    },
    result = "nullius-box-turbine-closed-1"
  },
  {
    type = "recipe",
    name = "nullius-turbine-open-2",
    enabled = false,
    always_show_made_in = true,
    category = "large-crafting",
    energy_required = 16,
    ingredients = {
      {"nullius-turbine-open-1", 2},
      {"nullius-motor-2", 2},
      {"nullius-aluminum-sheet", 8},
      {"nullius-steel-gear", 4},
      {"nullius-pipe-2", 5},
      {"nullius-capacitor", 2}
    },
    result = "nullius-turbine-open-2"
  },
  {
    type = "recipe",
    name = "nullius-boxed-turbine-open-2",
    enabled = false,
    always_show_made_in = true,
    category = "huge-assembly",
    subgroup = "boxed-fluid-energy",
    energy_required = 80,
    ingredients = {
      {"nullius-box-turbine-open-1", 2},
      {"nullius-box-motor-2", 2},
      {"nullius-box-aluminum-sheet", 8},
      {"nullius-box-steel-gear", 4},
      {"nullius-box-pipe-2", 5},
      {"nullius-box-capacitor", 2}
    },
    result = "nullius-box-turbine-open-2"
  },
  {
    type = "recipe",
    name = "nullius-turbine-closed-2",
    enabled = false,
    always_show_made_in = true,
    category = "large-crafting",
    energy_required = 10,
    ingredients = {
      {"nullius-turbine-open-2", 1},
      {"nullius-turbine-closed-1", 1},
      {"nullius-small-pump-1", 1}
    },
    result = "nullius-turbine-closed-2"
  },
  {
    type = "recipe",
    name = "nullius-boxed-turbine-closed-2",
    enabled = false,
    always_show_made_in = true,
    category = "huge-assembly",
    subgroup = "boxed-fluid-energy",
    energy_required = 50,
    ingredients = {
	  {"nullius-box-turbine-open-2", 1},
      {"nullius-box-turbine-closed-1", 1},
      {"nullius-box-small-pump-1", 1}
    },
    result = "nullius-box-turbine-closed-2"
  },
  {
    type = "recipe",
    name = "nullius-turbine-open-3",
    enabled = false,
    always_show_made_in = true,
    category = "large-crafting",
    energy_required = 40,
    ingredients = {
      {"nullius-turbine-open-2", 2},
      {"nullius-motor-3", 4},
      {"nullius-titanium-sheet", 12},
      {"nullius-bearing", 6},
      {"nullius-pipe-4", 8},
      {"nullius-transformer", 1},
      {"nullius-small-pump-2", 1}
    },
    result = "nullius-turbine-open-3"
  },
  {
    type = "recipe",
    name = "nullius-boxed-turbine-open-3",
    enabled = false,
    always_show_made_in = true,
    category = "huge-assembly",
    subgroup = "boxed-fluid-energy",
    energy_required = 200,
    ingredients = {
      {"nullius-box-turbine-open-2", 2},
      {"nullius-box-motor-3", 4},
      {"nullius-box-titanium-sheet", 12},
      {"nullius-box-bearing", 6},
      {"nullius-box-pipe-4", 8},
      {"nullius-box-transformer", 1},
      {"nullius-box-small-pump-2", 1}
    },
    result = "nullius-box-turbine-open-3"
  },
  {
    type = "recipe",
    name = "nullius-turbine-closed-3",
    enabled = false,
    always_show_made_in = true,
    category = "large-crafting",
    energy_required = 20,
    ingredients = {
      {"nullius-turbine-open-3", 1},
      {"nullius-turbine-closed-2", 1},
      {"nullius-small-tank-2", 1}
    },
    result = "nullius-turbine-closed-3"
  },
  {
    type = "recipe",
    name = "nullius-boxed-turbine-closed-3",
    enabled = false,
    always_show_made_in = true,
    category = "huge-assembly",
    subgroup = "boxed-fluid-energy",
    energy_required = 100,
    ingredients = {
	  {"nullius-box-turbine-open-3", 1},
      {"nullius-box-turbine-closed-2", 1},
      {"nullius-box-small-tank-2", 1}
    },
    result = "nullius-box-turbine-closed-3"
  }
})
