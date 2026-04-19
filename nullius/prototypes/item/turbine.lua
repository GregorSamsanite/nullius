local function create_turbine_recipe(fluidname, exhaust, energy, counto, countc, countr)
  local fullfluid = "nullius-" .. fluidname
  local fluid = data.raw.fluid[fullfluid]
  local energycounto = math.floor(((energy * counto) / 10) + 0.5)
  local energycountc = math.floor(((energy * countc) / 10) + 0.5)
  local localIcons = fluid.icons
  if fluid.icon then
    localIcons = {{icon = fluid.icon, icon_size = fluid.icon_size}}
  end
  local open = {
    type = "recipe",
	  name = "nullius-burn-open-" .. fluidname,
	  localised_name = {"recipe-name.nullius-turbine-burn-open", {"fluid-name."..fullfluid}},
	  icons = localIcons,
	  -- icon = fluid.icon,
    -- icon_size = fluid.icon_size,
	  crafting_machine_tint = { primary = fluid.flow_color },
    category = "turbine-open",
    subgroup = "turbine-open",
    hide_from_player_crafting = true,
	  hide_from_stats = true,
    energy_required = 1.8,
    ingredients = {{type="fluid", name=fullfluid, amount=counto}},
    results = {{type="fluid", name="nullius-energy", amount=energycounto}}
  }

  local closed = util.table.deepcopy(open)
  closed.name = "nullius-burn-closed-" .. fluidname
  closed.localised_name = {"recipe-name.nullius-turbine-burn-closed", {"fluid-name."..fullfluid}}
  closed.category = "turbine-closed"
  closed.subgroup = "turbine-closed"
  closed.ingredients[1].amount = countc
  closed.results[1].amount = energycountc
  closed.results[2] = {type="fluid", name="nullius-" .. exhaust, amount=countr}
  data:extend({ open, closed })
end


create_turbine_recipe("steam", "water", 6, 335, 360, 60) -- 1 water per 6
create_turbine_recipe("pressure-steam", "water", 20, 100, 106, 53) -- 1 water per 2
create_turbine_recipe("compressed-air", "air", 14, 145, 155, 527) -- 85%
create_turbine_recipe("compressed-residual-gas", "residual-gas", 15, 134, 150, 540) -- 90%
create_turbine_recipe("compressed-trace-gas", "trace-gas", 15, 134, 150, 540)  -- 90%
create_turbine_recipe("compressed-nitrogen", "nitrogen", 18, 115, 120, 432) -- 90%
create_turbine_recipe("compressed-argon", "argon", 24, 85, 100, 384) -- 96%
create_turbine_recipe("compressed-helium", "helium", 32, 65, 80, 198) -- 99%
create_turbine_recipe("compressed-hydrogen", "hydrogen", 4, 500, 530, 1802) -- 85%
create_turbine_recipe("compressed-oxygen", "oxygen", 4, 500, 530, 1802) -- 85%
create_turbine_recipe("compressed-carbon-dioxide", "carbon-dioxide", 12, 170, 180, 648) -- 90%
create_turbine_recipe("compressed-carbon-monoxide", "carbon-monoxide", 8, 250, 265, 954) -- 90%
create_turbine_recipe("compressed-methane", "methane", 6, 335, 360, 1224) -- 85%


data.raw.recipe["nullius-burn-open-steam"].hide_from_stats = false
data.raw.recipe["nullius-burn-closed-steam"].hide_from_stats = false
data.raw.recipe["nullius-burn-open-pressure-steam"].hide_from_stats = false
data.raw.recipe["nullius-burn-closed-pressure-steam"].hide_from_stats = false
data.raw.recipe["nullius-burn-closed-compressed-nitrogen"].hide_from_stats = false


data:extend({
  {
    type = "item",
    name = "nullius-turbine-open-1",
	  localised_name = {"", {"entity-name.nullius-turbine-open"}, " ", tostring(1)},
	  localised_description = {"entity-description.nullius-turbine-info",
	    tostring(1), tostring(90), {"entity-description.nullius-turbine-item",
		    {"entity-description.nullius-turbine-open"}}},
    icons = {
	    {
	      icon = "__base__/graphics/icons/steam-turbine.png",
        icon_size = 64,    
        tint = {0.7, 0.7, 0.6, 1}
      },
	    {
        icon = "__base__/graphics/icons/fluid/steam.png",
        icon_size = 64,
        scale = 0.32,
        shift = {1, -8},
        tint = {0.75, 0.75, 0.75, 0.8}
      }
	  },
    subgroup = "energy-backup",
    order = "nullius-fbb",
    place_result = "nullius-turbine-open-standard-1",
    stack_size = 50
  },
  {
    type = "item",
    name = "nullius-turbine-open-2",
	  localised_name = {"", {"entity-name.nullius-turbine-open"}, " ", tostring(2)},
	  localised_description = {"entity-description.nullius-turbine-info",
	    tostring(2.5), tostring(95), {"entity-description.nullius-turbine-item",
		    {"entity-description.nullius-turbine-open"}}},
    icons = {
	    {
	      icon = "__base__/graphics/icons/steam-turbine.png",
        icon_size = 64,
        tint = {0.85, 0.85, 0.75, 1}
      },
	    {
        icon = "__base__/graphics/icons/fluid/steam.png",
        icon_size = 64,
		    scale = 0.32,
        shift = {1, -8},
        tint = {0.8, 0.8, 0.8, 0.82}
      }
	  },
    subgroup = "energy-backup",
    order = "nullius-fbc",
    place_result = "nullius-turbine-open-standard-2",
    stack_size = 50
  },
  {
    type = "item",
    name = "nullius-turbine-open-3",
	  localised_name = {"", {"entity-name.nullius-turbine-open"}, " ", tostring(3)},
	  localised_description = {"entity-description.nullius-turbine-info",
	    tostring(6), tostring(100), {"entity-description.nullius-turbine-item",
		    {"entity-description.nullius-turbine-open"}}},
    icons = {
	    {
	      icon = "__base__/graphics/icons/steam-turbine.png",
        icon_size = 64,
        tint = {1, 1, 0.9, 1}
      },
	    {
        icon = "__base__/graphics/icons/fluid/steam.png",
        icon_size = 64,
		    scale = 0.32,
        shift = {1, -8},
        tint = {0.85, 0.85, 0.85, 0.85}
      }
	  },
    subgroup = "energy-backup",
    order = "nullius-fbd",
    place_result = "nullius-turbine-open-standard-3",
    stack_size = 50
  },
  {
    type = "item",
    name = "nullius-turbine-closed-1",
	  localised_name = {"", {"entity-name.nullius-turbine-closed"}, " ", tostring(1)},
	  localised_description = {"entity-description.nullius-turbine-info",
	    tostring(1), tostring(85), {"entity-description.nullius-turbine-item",
		    {"entity-description.nullius-turbine-closed"}}},
    icons = {{
	    icon = "__base__/graphics/icons/steam-turbine.png",
      icon_size = 64,
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
	  localised_name = {"", {"entity-name.nullius-turbine-closed"}, " ", tostring(2)},
	  localised_description = {"entity-description.nullius-turbine-info",
	    tostring(2.5), tostring(90), {"entity-description.nullius-turbine-item",
		    {"entity-description.nullius-turbine-closed"}}},
    icons = {{
	    icon = "__base__/graphics/icons/steam-turbine.png",
      icon_size = 64,
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
	  localised_name = {"", {"entity-name.nullius-turbine-closed"}, " ", tostring(3)},
	  localised_description = {"entity-description.nullius-turbine-info",
	    tostring(6), tostring(95), {"entity-description.nullius-turbine-item",
		    {"entity-description.nullius-turbine-closed"}}},
    icons = {{
	    icon = "__base__/graphics/icons/steam-turbine.png",
      icon_size = 64,
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
      {type = "item", name = "nullius-motor-1", amount = 1},
      {type = "item", name = "nullius-iron-sheet", amount = 2},
      {type = "item", name = "nullius-iron-gear", amount = 1},
      {type = "item", name = "pipe", amount = 2}
    },
    results = {
      {type = "item", name = "nullius-turbine-open-1", amount = 1}
    }
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
      {type = "item", name = "nullius-box-motor-1", amount = 1},
      {type = "item", name = "nullius-box-iron-sheet", amount = 2},
      {type = "item", name = "nullius-box-iron-gear", amount = 1},
      {type = "item", name = "nullius-box-pipe-1", amount = 2}
    },
    results = {
      {type = "item", name = "nullius-box-turbine-open-1", amount = 1}
    }
  },
  {
    type = "recipe",
    name = "nullius-turbine-closed-1",
    enabled = false,
    always_show_made_in = true,
    category = "large-crafting",
    energy_required = 4,
    ingredients = {
      {type = "item", name = "nullius-turbine-open-1", amount = 1},
      {type = "item", name = "nullius-small-tank-1", amount = 1},
	  {type = "item", name = "nullius-one-way-valve", amount = 1}
    },
    results = {
      {type = "item", name = "nullius-turbine-closed-1", amount = 1}
    }
  },
  {
    type = "recipe",
    name = "nullius-boxed-turbine-closed-1",
    enabled = false,
    always_show_made_in = true,
    category = "huge-assembly",
    subgroup = "boxed-fluid-energy",
    energy_required = 20,
    ingredients = {
      {type = "item", name = "nullius-box-turbine-open-1", amount = 1},
	  {type = "item", name = "nullius-box-small-tank-1", amount = 1},
	  {type = "item", name = "nullius-box-one-way-valve", amount = 1}
    },
    results = {
      {type = "item", name = "nullius-box-turbine-closed-1", amount = 1}
    }
  },
  {
    type = "recipe",
    name = "nullius-turbine-open-2",
    enabled = false,
    always_show_made_in = true,
    category = "large-crafting",
    energy_required = 16,
    ingredients = {
      {type = "item", name = "nullius-turbine-open-1", amount = 2},
      {type = "item", name = "nullius-pump-2", amount = 1},
      {type = "item", name = "nullius-aluminum-sheet", amount = 6},
      {type = "item", name = "nullius-steel-gear", amount = 3},
      {type = "item", name = "nullius-capacitor", amount = 1}
    },
    results = {
      {type = "item", name = "nullius-turbine-open-2", amount = 1}
    }
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
      {type = "item", name = "nullius-box-turbine-open-1", amount = 2},
      {type = "item", name = "nullius-box-pump-2", amount = 1},
      {type = "item", name = "nullius-box-aluminum-sheet", amount = 6},
      {type = "item", name = "nullius-box-steel-gear", amount = 3},
      {type = "item", name = "nullius-box-capacitor", amount = 1}
    },
    results = {
      {type = "item", name = "nullius-box-turbine-open-2", amount = 1}
    }
  },
  {
    type = "recipe",
    name = "nullius-turbine-closed-2",
    enabled = false,
    always_show_made_in = true,
    category = "large-crafting",
    energy_required = 10,
    ingredients = {
      {type = "item", name = "nullius-turbine-open-2", amount = 1},
      {type = "item", name = "nullius-turbine-closed-1", amount = 1},
      {type = "item", name = "nullius-small-pump-1", amount = 1}
    },
    results = {
      {type = "item", name = "nullius-turbine-closed-2", amount = 1}
    }
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
	  {type = "item", name = "nullius-box-turbine-open-2", amount = 1},
      {type = "item", name = "nullius-box-turbine-closed-1", amount = 1},
      {type = "item", name = "nullius-box-small-pump-1", amount = 1}
    },
    results = {
      {type = "item", name = "nullius-box-turbine-closed-2", amount = 1}
    }
  },
  {
    type = "recipe",
    name = "nullius-turbine-open-3",
    enabled = false,
    always_show_made_in = true,
    category = "large-crafting",
    energy_required = 40,
    ingredients = {
      {type = "item", name = "nullius-turbine-open-2", amount = 2},
      {type = "item", name = "pump", amount = 3},
      {type = "item", name = "nullius-titanium-sheet", amount = 12},
      {type = "item", name = "nullius-bearing", amount = 6},
      {type = "item", name = "nullius-transformer", amount = 1}
    },
    results = {
      {type = "item", name = "nullius-turbine-open-3", amount = 1}
    }
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
      {type = "item", name = "nullius-box-turbine-open-2", amount = 2},
      {type = "item", name = "nullius-box-pump-3", amount = 3},
      {type = "item", name = "nullius-box-titanium-sheet", amount = 12},
      {type = "item", name = "nullius-box-bearing", amount = 6},
      {type = "item", name = "nullius-box-transformer", amount = 1}
    },
    results = {
      {type = "item", name = "nullius-box-turbine-open-3", amount = 1}
    }
  },
  {
    type = "recipe",
    name = "nullius-turbine-closed-3",
    enabled = false,
    always_show_made_in = true,
    category = "large-crafting",
    energy_required = 20,
    ingredients = {
      {type = "item", name = "nullius-turbine-open-3", amount = 1},
      {type = "item", name = "nullius-turbine-closed-2", amount = 1},
      {type = "item", name = "nullius-small-tank-2", amount = 1},
      {type = "item", name = "nullius-small-pump-2", amount = 1}
    },
    results = {
      {type = "item", name = "nullius-turbine-closed-3", amount = 1}
    }
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
	  {type = "item", name = "nullius-box-turbine-open-3", amount = 1},
      {type = "item", name = "nullius-box-turbine-closed-2", amount = 1},
      {type = "item", name = "nullius-box-small-tank-2", amount = 1},
      {type = "item", name = "nullius-box-small-pump-2", amount = 1}
    },
    results = {
      {type = "item", name = "nullius-box-turbine-closed-3", amount = 1}
    }
  }
})
