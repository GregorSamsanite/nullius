local invisible = {
  filename = "__nullius__/graphics/icons/blank.png",
  width = 32,
  height = 32,
  frame_count = 1,
  line_length = 1
}

local turbine_graphics = {
  [false] = { layers = {
    {
      filename = "__base__/graphics/entity/steam-turbine/hr-steam-turbine-H.png",
      width = 320,
      height = 245,
      frame_count = 1,
      line_length = 1,
      shift = util.by_pixel(0, -2.75),
      scale = 0.5
    }, {
      width = 320,
      height = 245,
      frame_count = 1,
      line_length = 1,
      shift = util.by_pixel(0, -2.75),
      scale = 0.5
    }, {
      filename = "__base__/graphics/entity/steam-turbine/hr-steam-turbine-H-shadow.png",
      width = 435,
      height = 150,
      frame_count = 1,
      line_length = 1,
      draw_as_shadow = true,
      shift = util.by_pixel(28.5, 18),
      scale = 0.5
    }
  }},
  [true] = { layers = {
    {
      filename = "__base__/graphics/entity/steam-turbine/hr-steam-turbine-V.png",
      width = 217,
      height = 347,
      frame_count = 1,
      line_length = 1,
      shift = util.by_pixel(4.75, 6.75),
      scale = 0.5
    }, {
      width = 217,
      height = 347,
      frame_count = 1,
      line_length = 1,
      shift = util.by_pixel(4.75, 6.75),
      scale = 0.5
    }, {
      filename = "__base__/graphics/entity/steam-turbine/hr-steam-turbine-V-shadow.png",
      width = 302,
      height = 260,
      frame_count = 1,
      line_length = 1,
      draw_as_shadow = true,
      shift = util.by_pixel(39.5, 24.5),
      scale = 0.5
    }
  }}
}


local function turbine_frame(vertical, overlay, tint)
  local ret = util.table.deepcopy(turbine_graphics[vertical])
  ret.layers[2].filename = "__nullius__/graphics/entity/turbine/" ..
      overlay .. "-turbine-" .. ((vertical and "v") or "h") .. ".png"
  ret.layers[1].tint = tint
  ret.layers[2].tint = tint
  return ret
end

local function turbine_animation(vertical, overlay, tint)
  local ret = turbine_frame(vertical, overlay, tint)
  ret.layers[1].frame_count = 8
  ret.layers[1].line_length = 4
  ret.layers[2].repeat_count = 8
  ret.layers[3] = nil
  return ret
end

local function set_furnace_idle(proto, overlay, tint)
  local vertical = turbine_frame(true, overlay, tint)
  local horizontal = turbine_frame(false, overlay, tint)
  proto.idle_animation = {
	north = vertical,
    east = horizontal,
	south = vertical,
    west = horizontal
  }
end

local function set_generator_animation(proto, overlay, tint)
  proto.horizontal_animation = turbine_animation(false, overlay, tint)
  proto.vertical_animation = turbine_animation(true, overlay, tint)
end

local function finish_furnace(furnace, generator, overlay,
    suborder, openness, priority, tier, power, tint)
  local midfix = openness .. "-" .. priority
  local suffix = midfix .. "-" .. tier
  furnace.name = "nullius-turbine-" .. suffix
  furnace.localised_name = {"", {"entity-name.nullius-turbine-" .. midfix}, " ", tier}
  furnace.localised_description = {"entity-description.nullius-turbine-info",
	  power, (generator.effectivity * 100),
	  {"entity-description.nullius-turbine-entity",
	      {"entity-description.nullius-turbine-" .. openness},
	      {"entity-description.nullius-turbine-" .. priority}}}
  furnace.order = data.raw.item[furnace.minable.result].order .. suborder
  generator.name = "nullius-turbine-generator-" .. suffix
  generator.localised_name = furnace.localised_name
  generator.localised_description = furnace.localised_description

  tint[4] = 1
  furnace.icons = {{
    icon = "__nullius__/graphics/icons/entity/turbine-" .. overlay .. ".png",
    icon_size = 64, tint = tint
  }}
  generator.icons = furnace.icons
  set_furnace_idle(furnace, overlay, tint)
  set_generator_animation(generator, overlay, tint)
  data:extend({ furnace, generator })
end

local closed_smoke = util.table.deepcopy(data.raw.generator["steam-turbine"].smoke)
closed_smoke[1].name = "light-smoke"
closed_smoke[1].north_position = {0.12, -1.19}
closed_smoke[1].east_position = {0.57, -0.94}

local function turbine_variants(tier, furnacecb, generatorob,
    power, loblue, lotint, hitint)
  local furnaceob = util.table.deepcopy(furnacecb)
  furnaceob.minable.result = "nullius-turbine-open-" .. tier
  furnaceob.placeable_by.item = "nullius-turbine-open-" .. tier
  furnaceob.crafting_categories = {"turbine-open"}
  furnaceob.fluid_boxes[3] = nil
  furnaceob.fluid_boxes[1].height = (furnacecb.fluid_boxes[1].height * 2)
  furnaceob.fluid_boxes[1].pipe_connections = {
    { type = "input-output", position = {0, 3} },
    { type = "input-output", position = {0, -3} }
  }

  local furnacecs = util.table.deepcopy(furnacecb)
  local furnacece = util.table.deepcopy(furnacecb)
  local furnaceos = util.table.deepcopy(furnaceob)
  local furnaceoe = util.table.deepcopy(furnaceob)
  local generatoros = util.table.deepcopy(generatorob)
  generatoros.energy_source.usage_priority = "secondary-output"
  local generatoroe = util.table.deepcopy(generatorob)
  generatoroe.energy_source.usage_priority = "primary-output"
  local generatorcb = util.table.deepcopy(generatorob)
  generatorcb.effectivity = generatorob.effectivity - 0.05
  generatorcb.smoke = closed_smoke
  local generatorcs = util.table.deepcopy(generatoros)
  generatorcs.effectivity = generatorcb.effectivity
  generatorcs.smoke = closed_smoke
  local generatorce = util.table.deepcopy(generatoroe)
  generatorce.effectivity = generatorcb.effectivity
  generatorce.smoke = closed_smoke

  if (tier < 3) then
    local t2 = "-" .. (tier + 1)
    furnaceob.next_upgrade = "nullius-turbine-open-backup" .. t2
	furnaceos.next_upgrade = "nullius-turbine-open-standard" .. t2
	furnaceoe.next_upgrade = "nullius-turbine-open-exhaust" .. t2
	furnacecb.next_upgrade = "nullius-turbine-closed-backup" .. t2
	furnacecs.next_upgrade = "nullius-turbine-closed-standard" .. t2
	furnacece.next_upgrade = "nullius-turbine-closed-exhaust" .. t2
  end

  finish_furnace(furnacecb, generatorcb, "green", "b",
      "closed", "backup", tier, power, {lotint, hitint, hitint})
  finish_furnace(furnacecs, generatorcs, "yellow", "c",
      "closed", "standard", tier, power, {hitint, hitint, hitint})
  finish_furnace(furnacece, generatorce, "red", "d",
      "closed", "exhaust", tier, power, {hitint, lotint, hitint})
  finish_furnace(furnaceob, generatorob, "green", "b",
      "open", "backup", tier, power, {lotint, hitint, loblue})
  finish_furnace(furnaceos, generatoros, "yellow", "c",
      "open", "standard", tier, power, {hitint, hitint, loblue})
  finish_furnace(furnaceoe, generatoroe, "red", "d",
      "open", "exhaust", tier, power, {hitint, lotint, loblue})
end


local furnace1cb = {
  type = "furnace",
  flags = { "placeable-neutral", "player-creation" },
  minable = {mining_time = 0.8, result = "nullius-turbine-closed-1"},
  placeable_by = {item = "nullius-turbine-closed-1", count = 1},
  max_health = 300,
  corpse = "steam-turbine-remnants",
  dying_explosion = "steam-turbine-explosion",
  resistances = {
    { type = "impact", decrease = 100, percent = 90 },
    { type = "fire", decrease = 40, percent = 60 }
  },
  fast_replaceable_group = "nullius-turbine",
  selection_box = {{-1.4, -2.4}, {1.4, 2.4}},
  collision_box = {{-1.25, -2.05}, {1.25, 2.05}},
  drawing_box = {{-1.5, -3}, {1.5, 4}},
  alert_icon_shift = util.by_pixel(0, -12),
  energy_source = { type = "void" },
  energy_usage = "1W",
  crafting_categories = {"turbine-closed"},
  crafting_speed = 1,
  source_inventory_size = 0,
  result_inventory_size = 0,
  damaged_trigger_effect = data.raw.generator["steam-turbine"].damaged_trigger_effect,
  open_sound = data.raw.generator["steam-turbine"].open_sound,
  close_sound = data.raw.generator["steam-turbine"].close_sound,
  vehicle_impact_sound = data.raw.generator["steam-turbine"].vehicle_impact_sound,
  water_reflection = data.raw.generator["steam-turbine"].water_reflection,
  bottleneck_ignore = true,
  show_recipe_icon = false,
  show_recipe_icon_on_map = false,
  always_draw_idle_animation = true,
  additional_pastable_entities = {
      "nullius-turbine-open-backup-1", "nullius-turbine-closed-backup-1",
	  "nullius-turbine-open-standard-1", "nullius-turbine-closed-standard-1",
      "nullius-turbine-open-exhaust-1", "nullius-turbine-closed-exhaust-1",
	  "nullius-turbine-open-backup-2", "nullius-turbine-closed-backup-2",
	  "nullius-turbine-open-standard-2", "nullius-turbine-closed-standard-2",
      "nullius-turbine-open-exhaust-2", "nullius-turbine-closed-exhaust-2",
	  "nullius-turbine-open-backup-3", "nullius-turbine-closed-backup-3",
	  "nullius-turbine-open-standard-3", "nullius-turbine-closed-standard-3",
      "nullius-turbine-open-exhaust-3", "nullius-turbine-closed-exhaust-3"
  },
  fluid_boxes = {
    {
      production_type = "input",
	  pipe_connections = {{ type = "input", position = {0, -3} }},
      pipe_covers = pipecoverspictures(),
      base_area = 5,
      base_level = -2,
	  height = 2,
      secondary_draw_orders = { north = -1 }
    },
    {
	  filter = "nullius-energy",
      production_type = "output",
	  pipe_connections = {{ type = "output", position = {1, -2.1} }},
      base_area = 2,
      base_level = 2,
	  height = 2,
	  hide_connection_info = true
    },
    {
      production_type = "output",
	  pipe_connections = {{ type = "output", position = {0, 3} }},
      pipe_covers = pipecoverspictures(),
      base_area = 6,
      base_level = 5,
	  height = 4,
      secondary_draw_orders = { north = -1 }
    }
  }
}

local furnace2cb = util.table.deepcopy(furnace1cb)
furnace2cb.minable = {mining_time = 1.2, result = "nullius-turbine-closed-2"}
furnace2cb.placeable_by = {item = "nullius-turbine-closed-2", count = 1}
furnace2cb.max_health = 400
furnace2cb.crafting_speed = 2.4
furnace2cb.fluid_boxes[1].base_area = 8
furnace2cb.fluid_boxes[1].base_level = -4
furnace2cb.fluid_boxes[1].height = 4
furnace2cb.fluid_boxes[2].base_area = 4
furnace2cb.fluid_boxes[2].base_level = 3
furnace2cb.fluid_boxes[2].height = 3
furnace2cb.fluid_boxes[3].base_area = 10
furnace2cb.fluid_boxes[3].base_level = 8
furnace2cb.fluid_boxes[3].height = 8

local furnace3cb = util.table.deepcopy(furnace1cb)
furnace3cb.minable = {mining_time = 1.6, result = "nullius-turbine-closed-3"}
furnace3cb.placeable_by = {item = "nullius-turbine-closed-3", count = 1}
furnace3cb.max_health = 500
furnace3cb.crafting_speed = 5.4
furnace3cb.fluid_boxes[1].base_area = 10
furnace3cb.fluid_boxes[1].base_level = -8
furnace3cb.fluid_boxes[1].height = 8
furnace3cb.fluid_boxes[2].base_area = 6
furnace3cb.fluid_boxes[2].base_level = 5
furnace3cb.fluid_boxes[2].height = 5
furnace3cb.fluid_boxes[3].base_area = 15
furnace3cb.fluid_boxes[3].base_level = 10
furnace3cb.fluid_boxes[3].height = 15


local generator1ob = {
  type = "generator",
  flags = { "placeable-neutral", "player-creation", "not-on-map",
      "not-blueprintable", "not-deconstructable",
	  "hidden", "hide-alt-info", "not-upgradable" },
  max_power_output = "1MW",
  effectivity = 0.9,
  fluid_usage_per_tick = 2,
  maximum_temperature = 1000,
  burns_fluid = true,
  scale_fluid_usage = true,
  destroy_non_fuel_fluid = false,
  selectable_in_game = false,
  allow_copy_paste = false,
  selection_box = {{-1.4, -2.4}, {1.4, 2.4}},
  collision_box = {{-1.25, -2.05}, {1.25, 2.05}},
  collision_mask = { "not-colliding-with-itself" },
  alert_icon_shift = util.by_pixel(0, -12),
  energy_source = { type = "electric", usage_priority = "tertiary" },
  smoke = data.raw.generator["steam-turbine"].smoke,
  working_sound = data.raw.generator["steam-turbine"].working_sound,
  min_perceived_performance = 0.25,
  performance_to_sound_speedup = 0.5,
  horizontal_animation = generator_horizontal,
  vertical_animation = generator_vertical,
  fluid_box = {
    filter = "nullius-energy",
    production_type = "input",
	pipe_connections = {
	  { type = "input-output", position = {-1, -2.1} },
	  { type = "input-output", position = {1, 2.1} }
	},
    base_area = 1,
    base_level = -2,
	height = 4,
	hide_connection_info = true
  }
}

local generator2ob = util.table.deepcopy(generator1ob)
generator2ob.max_power_output = "2.5MW"
generator2ob.effectivity = 0.95
generator2ob.fluid_usage_per_tick = 5
generator2ob.maximum_temperature = 1800
generator2ob.fluid_box.base_area = 1.5
generator2ob.fluid_box.base_level = -5
generator2ob.fluid_box.height = 8

local generator3ob = util.table.deepcopy(generator1ob)
generator3ob.max_power_output = "6MW"
generator3ob.effectivity = 1
generator3ob.fluid_usage_per_tick = 11
generator3ob.maximum_temperature = 2000
generator3ob.fluid_box.base_area = 2
generator3ob.fluid_box.base_level = -11
generator3ob.fluid_box.height = 16


local connector = {
  type = "storage-tank",
  name = "nullius-turbine-connector",
  icons = {{
    icon = "__base__/graphics/icons/steam-turbine.png",
    icon_size = 64,
    icon_mipmaps = 4
  }},
  flags = { "placeable-neutral", "player-creation", "not-on-map",
      "not-blueprintable", "not-deconstructable", "hidden",
	  "hide-alt-info", "not-upgradable", "placeable-off-grid" },
  selectable_in_game = false,
  allow_copy_paste = false,
  selection_box = {{-1.4, -0.3}, {1.4, 0.3}},
  collision_box = {{-1.25, -0.05}, {1.25, 0.05}},
  collision_mask = {"not-colliding-with-itself"},
  window_bounding_box = {{0, 0}, {0, 0}},
  flow_length_in_ticks = 360,
  pictures = {
    picture = invisible,
    window_background = invisible,
    fluid_background = invisible,
    flow_sprite = invisible,
    gas_flow = invisible
  },
  fluid_box = {
    filter = "nullius-energy",
    base_area = 2,
    base_level = 0,
	height = 2,
	hide_connection_info = true,
    pipe_connections = {
      { position = {1, 0.7} },
      { position = {-1, 0.7} }
    }
  }
}

local vent1 = {
  type = "furnace",
  name = "nullius-turbine-vent-1",
  icons = connector.icons,
  flags = connector.flags,
  collision_box = connector.collision_box,
  selection_box = connector.selection_box,
  collision_mask = { "not-colliding-with-itself" },
  selectable_in_game = false,
  allow_copy_paste = false,
  bottleneck_ignore = true,
  show_recipe_icon = false,
  show_recipe_icon_on_map = false,
  crafting_categories = {"nullius-power-sink"},
  result_inventory_size = 1,
  crafting_speed = 1,
  source_inventory_size = 0,
  fluid_boxes = {{
	filter = "nullius-energy",
    production_type = "input",
    base_area = 3,
    base_level = 1,
	height = 1,
	hide_connection_info = true,
    pipe_connections = {{ type="input-output", position = {-1, 0.7} }}
  }},
  energy_source = {type = "void"},
  energy_usage = "1W"
}

local vent2 = util.table.deepcopy(vent1)
vent2.name = "nullius-turbine-vent-2"
vent2.crafting_speed = 2.5
vent2.fluid_boxes[1].base_area = 4
vent2.fluid_boxes[1].height = 2
local vent3 = util.table.deepcopy(vent1)
vent3.name = "nullius-turbine-vent-3"
vent3.crafting_speed = 6
vent3.fluid_boxes[1].base_area = 5
vent3.fluid_boxes[1].height = 4


turbine_variants(1, furnace1cb, generator1ob, 1, 0.25, 0.4, 0.6)
turbine_variants(2, furnace2cb, generator2ob, 2.5, 0.45, 0.6, 0.8)
turbine_variants(3, furnace3cb, generator3ob, 6, 0.6, 0.8, 1)

data:extend({ connector, vent1, vent2, vent3 })
