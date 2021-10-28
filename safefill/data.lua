data:extend({
  {
    type = "item-subgroup",
    name = "safefill",
    group = "logistics",
    order = "m"
  }
})


local do_shallow = true
local do_medium = true
local do_deep = true
local expected = 3
if ((settings.startup["safefill-depth"].value == "No shallow") or
    (settings.startup["safefill-depth"].value == "Medium only")) then
  do_shallow = false
  expected = expected - 1
end
if (settings.startup["safefill-depth"].value == "Shallow only") then
  do_medium = false
  expected = expected - 1
end
if ((settings.startup["safefill-depth"].value == "No deep") or
    (settings.startup["safefill-depth"].value == "Medium only") or
	(settings.startup["safefill-depth"].value == "Shallow only")) then
  do_deep = false
  expected = expected - 1
end
if settings.startup["safefill-green-water"].value then
  expected = expected * 2
end


local recipe_count = 0
local recipes = { }

function create_waterfill(suffix, tilename, suborder, active, layer)
  local safename = "safefill-"..suffix
  local tile = data.raw.tile[tilename]
  if (tile == nil) then
    return
  end

  if (active) then
    recipe_count = recipe_count + 1
    recipes[recipe_count] = { type="unlock-recipe", recipe=safename }
  end
  local recipe = {
    type = "recipe",
    name = safename,
    order = "nullius-w"..suborder,
    enabled = false,
    show_amount_in_title = false,
	always_show_products = true,
	always_show_made_in = true,
    result = safename
  }

  if (settings.startup["safefill-cost"].value == "Expensive") then
    if mods["nullius"] then
      recipe.category = "large-crafting"
    else
      recipe.category = "crafting"
    end
  else
    if mods["nullius"] then
      recipe.category = "large-fluid-assembly"
    else
      recipe.category = "crafting-with-fluid"
    end
  end
  if ((expected < 3) and not mods["nullius"]) then
    recipe.subgroup = "terrain"
  end

  local localised = {"tile-name."..tilename}
  if (tile.localised_name ~= nil) then
    localised = tile.localised_name
  end

  local cond = "water-tile"
  if settings.startup["safefill-water-on-water"].value and (layer > 0) then
    local lnum = (layer + 43)
    cond = "layer-"..lnum
	table.insert(tile.collision_mask, cond)
  end

  data:extend({
    {
      type = "item",
      name = safename,
      icon = "__safefill__/icons/"..suffix..".png",
      icon_size = 128,
      subgroup = "safefill",
      order = "nullius-"..suborder,
      stack_size = 500,
      place_as_tile = {
        result = safename,
        condition_size = 1,
        condition = {cond}
      }
    },
    {
      type = "tile",
      name = safename,
	  localised_name = localised,
      order = "c[watersafefill]-"..tilename,
      collision_mask = {"ground-tile"},
      layer = data.raw.tile[tilename].layer,
      variants = {
        main = data.raw.tile[tilename].variants.main,
        empty_transitions = true
      },
      map_color = data.raw.tile[tilename].map_color,
	  pollution_absorption_per_second = data.raw.tile[tilename].pollution_absorption_per_second
    },
	recipe
  })

  tile.placeable_by = {item = safename, count = 1}
end


create_waterfill("shallow", "water-shallow", "cb", do_shallow, 0)
create_waterfill("medium", "water", "cc", do_medium, 1)
create_waterfill("deep", "deepwater", "cd", do_deep, 2)
if mods["nullius"] then
  data.raw.recipe["safefill-deep"].no_productivity = true
end

if (settings.startup["safefill-cost"].value == "Expensive") then
  data.raw.recipe["safefill-shallow"].energy_required = 10
  data.raw.recipe["safefill-medium"].energy_required = 5
  data.raw.recipe["safefill-deep"].energy_required = 4
  if mods["nullius"] then
    data.raw.recipe["safefill-shallow"].ingredients = {{"concrete",4},
      {"cliff-explosives",1}, {type="item", name="nullius-saline-barrel", amount=50}}
	if do_shallow then
	  data.raw.recipe["safefill-medium"].ingredients = {{"safefill-shallow",1},
	    {type="item", name="nullius-saline-barrel", amount=40}}
      data.raw.recipe["safefill-medium"].results = {
        {type="item", name="safefill-medium", amount=1},
        {type="item", name="empty-barrel", amount=39, catalyst_amount=39}
      }
	else
      data.raw.recipe["safefill-medium"].energy_required = 15
	  data.raw.recipe["safefill-medium"].ingredients = {{"concrete",4},
        {"cliff-explosives",1}, {type="item", name="nullius-saline-barrel", amount=80}}
      data.raw.recipe["safefill-medium"].results = {
        {type="item", name="safefill-medium", amount=1},
        {type="item", name="empty-barrel", amount=77, catalyst_amount=77}
      }	
	end
	data.raw.recipe["safefill-deep"].ingredients = {{"safefill-medium",1},
	  {type="item", name="nullius-saline-barrel", amount=40}}
    data.raw.recipe["safefill-medium"].main_product = "safefill-medium"
  else
    data.raw.recipe["safefill-shallow"].ingredients = {{"concrete",4},
	  {"cliff-explosives",1}, {type="item", name="water-barrel", amount=50}}
	if do_shallow then
      data.raw.recipe["safefill-medium"].ingredients = {{"safefill-shallow",2}}
	else
      data.raw.recipe["safefill-medium"].energy_required = 15
      data.raw.recipe["safefill-medium"].ingredients = {{"concrete",6},
	    {"cliff-explosives",2}, {type="item", name="water-barrel", amount=80}}
	  data.raw.recipe["safefill-medium"].results = {
		{type="item", name="safefill-medium", amount=1},
		{type="item", name="empty-barrel", amount=77, catalyst_amount=77}
	  }
      data.raw.recipe["safefill-medium"].main_product = "safefill-medium"
	end
	data.raw.recipe["safefill-deep"].ingredients = {{"safefill-medium",1},
	  {type="item", name="water-barrel", amount=40}}
  end
  data.raw.recipe["safefill-shallow"].results = {
    {type="item", name="safefill-shallow", amount=1},
    {type="item", name="empty-barrel", amount=48, catalyst_amount=48}
  }
  data.raw.recipe["safefill-deep"].results = {
    {type="item", name="safefill-deep", amount=1},
    {type="item", name="empty-barrel", amount=39, catalyst_amount=39}
  }
  data.raw.recipe["safefill-shallow"].main_product = "safefill-shallow"
  data.raw.recipe["safefill-deep"].main_product = "safefill-deep"
elseif (settings.startup["safefill-cost"].value == "Cheap") then
  data.raw.recipe["safefill-shallow"].energy_required = 3
  data.raw.recipe["safefill-medium"].energy_required = 2
  data.raw.recipe["safefill-deep"].energy_required = 1
  if mods["nullius"] then
    data.raw.recipe["safefill-shallow"].ingredients = {
	  {"stone-brick",1}, {type="fluid", name="nullius-saline", amount=500}}
	if do_shallow then
	  data.raw.recipe["safefill-medium"].ingredients = {{"safefill-shallow",1},
	    {type="fluid", name="nullius-saline", amount=500}}
	else
      data.raw.recipe["safefill-medium"].energy_required = 4
	  data.raw.recipe["safefill-medium"].ingredients = {{"stone-brick",1},
	    {type="fluid", name="nullius-saline", amount=1000}}
	end
	data.raw.recipe["safefill-deep"].ingredients = {{"safefill-medium",1},
	  {type="fluid", name="nullius-saline", amount=500}}
  else
    data.raw.recipe["safefill-shallow"].ingredients = {
	  {"stone-brick",1}, {type="fluid", name="water", amount=500}}
	if do_shallow then
	  data.raw.recipe["safefill-medium"].ingredients = {{"safefill-shallow",2}}
	else
      data.raw.recipe["safefill-medium"].energy_required = 4
      data.raw.recipe["safefill-medium"].ingredients = {
	    {"stone-brick",1}, {type="fluid", name="water", amount=1000}}	
	end
	data.raw.recipe["safefill-deep"].ingredients = {{"safefill-medium",1},
	  {type="fluid", name="water", amount=500}}
  end
else
  data.raw.recipe["safefill-shallow"].result_count = 4
  data.raw.recipe["safefill-shallow"].energy_required = 10
  data.raw.recipe["safefill-medium"].energy_required = 3
  data.raw.recipe["safefill-deep"].energy_required = 2
  if mods["nullius"] then
    data.raw.recipe["safefill-shallow"].ingredients = {{"concrete",4},
	  {"cliff-explosives",1}, {type="fluid", name="nullius-saline", amount=2500}}
	if do_shallow then
	  data.raw.recipe["safefill-medium"].ingredients = {{"safefill-shallow",1},
	    {type="fluid", name="nullius-saline", amount=1000}}
	else
      data.raw.recipe["safefill-medium"].result_count = 4
      data.raw.recipe["safefill-medium"].energy_required = 12
      data.raw.recipe["safefill-medium"].ingredients = {{"concrete",4},
	    {"cliff-explosives",1}, {type="fluid", name="nullius-saline", amount=5000}}	
	end
	data.raw.recipe["safefill-deep"].ingredients = {{"safefill-medium",1},
	  {type="fluid", name="nullius-saline", amount=1000}}
  else
    data.raw.recipe["safefill-shallow"].ingredients = {{"concrete",4},
	  {"cliff-explosives",1}, {type="fluid", name="water", amount=2500}}
	if do_shallow then
	  data.raw.recipe["safefill-medium"].ingredients = {{"safefill-shallow",2}}
	else
      data.raw.recipe["safefill-medium"].result_count = 2
      data.raw.recipe["safefill-medium"].energy_required = 12
      data.raw.recipe["safefill-medium"].ingredients = {{"concrete",4},
	    {"cliff-explosives",1}, {type="fluid", name="water", amount=2500}}	
	end
	data.raw.recipe["safefill-deep"].ingredients = {{"safefill-medium",1},
	  {type="fluid", name="water", amount=1000}}
  end
end


if settings.startup["safefill-green-water"].value then
  data.raw.tile["water-mud"].localised_name = {"tile-name.shallow-muddy-water"}
  create_waterfill("mud", "water-mud", "db", do_shallow, 0)
  create_waterfill("green", "water-green", "dc", do_medium, 3)
  create_waterfill("deepgreen", "deepwater-green", "dd", do_deep, 4)
  if mods["nullius"] then
    data.raw.recipe["safefill-deepgreen"].no_productivity = true
  end

  if (settings.startup["safefill-cost"].value == "Expensive") then
    data.raw.recipe["safefill-mud"].energy_required = 8
    data.raw.recipe["safefill-green"].energy_required = 5
    data.raw.recipe["safefill-deepgreen"].energy_required = 4
    if mods["nullius"] then
      data.raw.recipe["safefill-mud"].ingredients = {
	    {"nullius-land-fill-gravel",1}, {"cliff-explosives",1},
        {type="item", name="nullius-sludge-barrel", amount=5},
	    {type="item", name="nullius-seawater-barrel", amount=45}}
	  if do_shallow then
        data.raw.recipe["safefill-green"].ingredients = {{"safefill-mud",1},
	      {type="item", name="nullius-wastewater-barrel", amount=40}}
        data.raw.recipe["safefill-green"].results = {
          {type="item", name="safefill-green", amount=1},
          {type="item", name="empty-barrel", amount=39, catalyst_amount=39}
        }
	  else
        data.raw.recipe["safefill-green"].energy_required = 12
        data.raw.recipe["safefill-green"].ingredients = {
	      {"nullius-land-fill-gravel",1}, {"cliff-explosives",1},
          {type="item", name="nullius-sludge-barrel", amount=5},
	      {type="item", name="nullius-wastewater-barrel", amount=75}}
        data.raw.recipe["safefill-green"].results = {
          {type="item", name="safefill-green", amount=1},
          {type="item", name="empty-barrel", amount=77, catalyst_amount=77}
        }	  
	  end
      data.raw.recipe["safefill-deepgreen"].ingredients = {{"safefill-green",1},
	    {type="item", name="nullius-wastewater-barrel", amount=40}}
      data.raw.recipe["safefill-green"].main_product = "safefill-green"
	else
      data.raw.recipe["safefill-mud"].ingredients = {{"landfill",1},
	    {"cliff-explosives",1}, {type="item", name="water-barrel", amount=50}}
	  if do_shallow then
        data.raw.recipe["safefill-green"].ingredients = {{"safefill-mud",2}}
	  else
        data.raw.recipe["safefill-green"].energy_required = 12
        data.raw.recipe["safefill-green"].ingredients = {{"landfill",2},
	      {"cliff-explosives",2}, {type="item", name="water-barrel", amount=80}}
	    data.raw.recipe["safefill-green"].results = {
		  {type="item", name="safefill-green", amount=1},
		  {type="item", name="empty-barrel", amount=77, catalyst_amount=77}
	    }
        data.raw.recipe["safefill-green"].main_product = "safefill-green"
	  end
      data.raw.recipe["safefill-deepgreen"].ingredients = {{"safefill-green",1},
	    {type="item", name="water-barrel", amount=40}}
	end
    data.raw.recipe["safefill-mud"].results = {
      {type="item", name="safefill-mud", amount=1},
      {type="item", name="empty-barrel", amount=48, catalyst_amount=48}
    }
    data.raw.recipe["safefill-deepgreen"].results = {
      {type="item", name="safefill-deepgreen", amount=1},
      {type="item", name="empty-barrel", amount=39, catalyst_amount=39}
    }
    data.raw.recipe["safefill-mud"].main_product = "safefill-mud"
    data.raw.recipe["safefill-deepgreen"].main_product = "safefill-deepgreen"
  elseif (settings.startup["safefill-cost"].value == "Cheap") then
    data.raw.recipe["safefill-mud"].energy_required = 2
    data.raw.recipe["safefill-green"].energy_required = 2
    data.raw.recipe["safefill-deepgreen"].energy_required = 1
    if mods["nullius"] then
      data.raw.recipe["safefill-mud"].ingredients = {{"nullius-gravel",1},
        {type="fluid", name="nullius-sludge", amount=50},
	    {type="fluid", name="nullius-seawater", amount=400}}
	  if do_shallow then
        data.raw.recipe["safefill-green"].ingredients = {{"safefill-mud",1},
	      {type="fluid", name="nullius-wastewater", amount=500}}
	  else
        data.raw.recipe["safefill-green"].energy_required = 3
        data.raw.recipe["safefill-green"].ingredients = {{"nullius-gravel",1},
          {type="fluid", name="nullius-sludge", amount=50},
	      {type="fluid", name="nullius-wastewater", amount=800}}	    
	  end
      data.raw.recipe["safefill-deepgreen"].ingredients = {{"safefill-green",1},
	    {type="fluid", name="nullius-wastewater", amount=500}}
	else
      data.raw.recipe["safefill-mud"].ingredients = {
	    {"stone",2}, {type="fluid", name="water", amount=500}}
	  if do_shallow then
        data.raw.recipe["safefill-green"].ingredients = {{"safefill-mud",2}}
	  else
        data.raw.recipe["safefill-green"].energy_required = 3
        data.raw.recipe["safefill-green"].ingredients = {
	      {"stone",3}, {type="fluid", name="water", amount=1000}}	    
	  end
      data.raw.recipe["safefill-deepgreen"].ingredients = {{"safefill-green",1},
	    {type="fluid", name="water", amount=500}}  
	end
  else
    data.raw.recipe["safefill-mud"].result_count = 4
    data.raw.recipe["safefill-mud"].energy_required = 8
    data.raw.recipe["safefill-green"].energy_required = 3
    data.raw.recipe["safefill-deepgreen"].energy_required = 2
    if mods["nullius"] then
      data.raw.recipe["safefill-mud"].ingredients = {
	    {"nullius-land-fill-gravel",1}, {"cliff-explosives",1},
        {type="fluid", name="nullius-sludge", amount=200},
	    {type="fluid", name="nullius-seawater", amount=2000}}
	  if do_shallow then
        data.raw.recipe["safefill-green"].ingredients = {{"safefill-mud",1},
	      {type="fluid", name="nullius-wastewater", amount=1000}}
	  else
        data.raw.recipe["safefill-green"].energy_required = 10
        data.raw.recipe["safefill-green"].result_count = 4
        data.raw.recipe["safefill-green"].ingredients = {
	      {"nullius-land-fill-gravel",1}, {"cliff-explosives",1},
          {type="fluid", name="nullius-sludge", amount=200},
	      {type="fluid", name="nullius-wastewater", amount=4500}}	    
	  end
      data.raw.recipe["safefill-deepgreen"].ingredients = {{"safefill-green",1},
	    {type="fluid", name="nullius-wastewater", amount=1000}}
	else
      data.raw.recipe["safefill-mud"].ingredients = {{"landfill",1},
	    {"cliff-explosives",1}, {type="fluid", name="water", amount=2500}}
	  if do_shallow then
        data.raw.recipe["safefill-green"].ingredients = {{"safefill-mud",2}}
	  else
        data.raw.recipe["safefill-green"].energy_required = 10
        data.raw.recipe["safefill-green"].result_count = 2
        data.raw.recipe["safefill-green"].ingredients = {{"landfill",1},
	      {"cliff-explosives",1}, {type="fluid", name="water", amount=2500}}	    
	  end
      data.raw.recipe["safefill-deepgreen"].ingredients = {{"safefill-green",1},
	    {type="fluid", name="water", amount=1000}}  
	end
  end
end


if mods["nullius"] then
data:extend({
  {
    type = "technology",
    name = "nullius-irrigation",
	order = "nullius-ei",
    icon = "__safefill__/icons/deep.png",
    icon_size = 128,
    effects = recipes,
    unit = {
      count = 500,
      ingredients = {
        {"nullius-geology-pack", 2}, {"nullius-climatology-pack", 3},
        {"nullius-mechanical-pack", 1}, {"nullius-chemical-pack", 1}
      },
      time = 30
    },
    prerequisites = {"nullius-explosives-2"}
  }
})
else
data:extend({
  {
    type = "technology",
    name = "nullius-irrigation",
	order = "z-c-d",
    icon = "__safefill__/icons/deep.png",
    icon_size = 128,
    effects = recipes,
    unit = {
      count = 250,
      ingredients = {
	    {"automation-science-pack", 1}, {"logistic-science-pack", 1}
      },
      time = 30
    },
    prerequisites = {"cliff-explosives", "concrete", "landfill"}
  }
})
end

if (settings.startup["safefill-cost"].value == "Expensive") then
  if mods["nullius"] then
    data.raw.technology["nullius-irrigation"].unit.count = 1200
    data.raw.technology["nullius-irrigation"].prerequisites = {"nullius-land-fill-4"}
  else
    data.raw.technology["nullius-irrigation"].unit = {
      count = 1000,
      ingredients = {
	    {"automation-science-pack", 1}, {"logistic-science-pack", 1},
		{"chemical-science-pack", 1}
      },
      time = 30
    }
	data.raw.technology["nullius-irrigation"].prerequisites =
	  {"cliff-explosives", "chemical-science-pack", "concrete", "landfill"}
  end
elseif (settings.startup["safefill-cost"].value == "Cheap") then
  if mods["nullius"] then
    data.raw.technology["nullius-irrigation"].prerequisites = {"nullius-land-fill-2"}
    data.raw.technology["nullius-irrigation"].unit = {
      count = 20,
      ingredients = {{"nullius-geology-pack", 2}, {"nullius-climatology-pack", 3},
	    {"nullius-mechanical-pack", 1}},
      time = 8
    }
  else
    data.raw.technology["nullius-irrigation"].prerequisites = {"landfill"}
    data.raw.technology["nullius-irrigation"].unit = {
      count = 100,
      ingredients = {{"automation-science-pack", 1}, {"logistic-science-pack", 1}},
      time = 30
    }   
  end
end
