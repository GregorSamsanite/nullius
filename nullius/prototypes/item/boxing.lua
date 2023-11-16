local ICONPATH = "__nullius__/graphics/icons/"
local ENTITYPATH = "__nullius__/graphics/entity/"

local box_stack_size = {
  [10] = 5,
  [20] = 10,
  [50] = 20,
  [100] = 50,
  [200] = 100,
  [500] = 100
}


local function create_boxed_item(base_name, group, box_order,
        full_name, category, stack_size)
  if (full_name == nil) then
    full_name = "nullius-"..base_name
  end
  if (category == nil) then
    category = "item"
  end
  if (group == nil) then
    group = "misc"
  end
  local item = data.raw[category][full_name]
  if (stack_size == nil) then
    stack_size = item.stack_size
  end
  local ratio = 5
  if (stack_size > 300) then
    ratio = 10
  end
  local box_stack = box_stack_size[stack_size]
  if (box_stack == nil) then
    box_stack = math.max(1, math.floor((2 * stack_size / ratio)))
  elseif (item.subgroup == "research-pack") then
    box_stack = box_stack * 2
  end

  local localname = {"item-name."..full_name}
  if (item.localised_name ~= nil) then
    localname = item.localised_name
  elseif (item.place_result ~= nil) then
    localname = {"entity-name."..item.place_result}
  elseif (item.placed_as_equipment_result ~= nil) then
    localname = {"equipment-name."..item.placed_as_equipment_result}
  end

  data:extend({
    {
      type = "item",
      name = "nullius-box-"..base_name,
      localised_name = {"item-name.nullius-box", localname},
      subgroup = "boxing-"..group,
      order = "nullius-"..box_order,
      stack_size = box_stack
    },
    {
      type = "recipe",
      name = "nullius-box-"..base_name,
      localised_name = {"recipe-name.nullius-boxing", localname},
      category = "packaging",
      enabled = false,
      always_show_made_in = true,
      show_amount_in_title = false,
      always_show_products = true,
      allow_as_intermediate = false,
      no_productivity = true,
	  hide_from_stats = true,
	  requester_paste_multiplier = 5,
      energy_required = 1,
      ingredients = {
        {full_name, 4*ratio}
      },
      result = "nullius-box-"..base_name,
      result_count = 4
    },
    {
      type = "recipe",
      name = "nullius-unbox-"..base_name,
      localised_name = {"recipe-name.nullius-unbox", localname},
      category = "packaging",
      subgroup = "unboxing-"..group,
      order = "nullius-"..box_order,
      enabled = false,
      always_show_made_in = true,
      show_amount_in_title = false,
      always_show_products = true,
      allow_decomposition = false,
      allow_as_intermediate = false,
      no_productivity = true,
	  hide_from_stats = true,
	  requester_paste_multiplier = 4,
      energy_required = 0.2,
      ingredients = {
        {"nullius-box-"..base_name, 1}
      },
      result = full_name,
      result_count = ratio
    }
  })
end


data.raw["capsule"]["cliff-explosives"].localised_name = {"item-name.nullius-explosive"}
data.raw["capsule"]["cliff-explosives"].stack_size = 100
data.raw.item["rocket-fuel"].stack_size = 20

data.raw.item["refined-concrete"].localised_name = {"item-name.nullius-reinforced-concrete"}
data.raw.item["refined-hazard-concrete"].localised_name = {"item-name.nullius-hazard-concrete"}
data.raw.item["transport-belt"].localised_name = {"entity-name.nullius-belt-1"}
data.raw.item["underground-belt"].localised_name = {"entity-name.nullius-underground-belt-1"}
data.raw.item["fast-transport-belt"].localised_name = {"entity-name.nullius-belt-2"}
data.raw.item["fast-underground-belt"].localised_name = {"entity-name.nullius-underground-belt-2"}
data.raw.item["express-transport-belt"].localised_name = {"entity-name.nullius-belt-3"}
data.raw.item["express-underground-belt"].localised_name = {"entity-name.nullius-underground-belt-3"}
data.raw.item["ultimate-transport-belt"].localised_name = {"entity-name.nullius-belt-4"}
data.raw.item["ultimate-underground-belt"].localised_name = {"entity-name.nullius-underground-belt-4"}
data.raw.item["inserter"].localised_name = {"entity-name.nullius-inserter-1"}
data.raw.item["turbo-inserter"].localised_name = {"entity-name.nullius-inserter-2"}
data.raw.item["turbo-filter-inserter"].localised_name = {"entity-name.nullius-filter-inserter-2"}
data.raw.item["stack-inserter"].localised_name = {"entity-name.nullius-inserter-3"}
data.raw.item["stack-filter-inserter"].localised_name = {"entity-name.nullius-filter-inserter-3"}
data.raw.item["express-stack-inserter"].localised_name = {"entity-name.nullius-inserter-4"}
data.raw.item["express-stack-filter-inserter"].localised_name = {"entity-name.nullius-filter-inserter-4"}
data.raw.item["storage-tank"].localised_name = {"entity-name.nullius-medium-tank-1"}
data.raw.item["small-electric-pole"].localised_name = {"entity-name.nullius-power-pole-1"}
data.raw.item["medium-electric-pole"].localised_name = {"entity-name.nullius-power-pole-2"}

data.raw.item["stone-brick"].stack_size = 500
data.raw.item["concrete"].stack_size = 500
data.raw.item["refined-concrete"].stack_size = 500
data.raw.item["refined-hazard-concrete"].stack_size = 500
data.raw.item["copper-cable"].localised_name = {"item-name.nullius-insulated-wire"}
data.raw.item["copper-cable"].stack_size = 200
data.raw.item["big-electric-pole"].stack_size = 50

data.raw.item["constant-combinator"].localised_name = {"entity-name.nullius-memory-circuit"}
data.raw.item["arithmetic-combinator"].localised_name = {"entity-name.nullius-arithmetic-circuit"}
data.raw.item["decider-combinator"].localised_name = {"entity-name.nullius-logic-circuit"}
data.raw.item["programmable-speaker"].localised_name = {"entity-name.nullius-antenna"}
data.raw.item["small-lamp"].localised_name = {"entity-name.nullius-lamp-1"}
data.raw.item["big-electric-pole"].localised_name = {"entity-name.nullius-pylon-1"}
data.raw.item["pipe"].localised_name = {"entity-name.nullius-pipe-1"}
data.raw.item["pipe-to-ground"].localised_name = {"entity-name.nullius-underground-pipe-1"}
data.raw.item["pump"].localised_name = {"entity-name.nullius-pump-3"}

data.raw.item["empty-barrel"].stack_size = 20
data.raw.item["iron-ore"].stack_size = 50
data.raw.item["copper-ore"].stack_size = 50
data.raw.item["uranium-ore"].stack_size = 50
data.raw.item["stone-wall"].stack_size = 200
data.raw.item["gate"].stack_size = 100
data.raw.item["pipe"].stack_size = 200
data.raw.item["pipe-to-ground"].stack_size = 100
data.raw.item["pump"].stack_size = 50

data.raw.item["transport-belt"].stack_size = 200
data.raw.item["underground-belt"].stack_size = 100
data.raw.item["fast-transport-belt"].stack_size = 200
data.raw.item["fast-underground-belt"].stack_size = 100
data.raw.item["express-transport-belt"].stack_size = 200
data.raw.item["express-underground-belt"].stack_size = 100
data.raw.item["ultimate-transport-belt"].stack_size = 200
data.raw.item["ultimate-underground-belt"].stack_size = 100

data.raw.item["inserter"].stack_size = 100
data.raw.item["turbo-inserter"].stack_size = 100
data.raw.item["turbo-filter-inserter"].stack_size = 100
data.raw.item["stack-inserter"].stack_size = 100
data.raw.item["stack-filter-inserter"].stack_size = 100
data.raw.item["express-stack-inserter"].stack_size = 100
data.raw.item["express-stack-filter-inserter"].stack_size = 100

create_boxed_item("graphite", "organic", "b")
create_boxed_item("iron-ore", "iron", "b", "iron-ore")
create_boxed_item("crushed-iron-ore", "iron", "c")
create_boxed_item("iron-oxide", "iron", "d")
create_boxed_item("iron-ingot", "iron", "e")
create_boxed_item("steel-ingot", "steel", "b")
create_boxed_item("bauxite", "aluminum-1", "b")
create_boxed_item("crushed-bauxite", "aluminum-1", "c")
create_boxed_item("aluminum-hydroxide", "aluminum-1", "d")
create_boxed_item("alumina", "aluminum-1", "e")
create_boxed_item("aluminum-carbide", "aluminum-1", "f")
create_boxed_item("aluminum-ingot", "aluminum-1", "g")
create_boxed_item("rutile", "titanium", "b")
create_boxed_item("titanium-ingot", "titanium", "c")
create_boxed_item("sandstone", "silicon", "b")
create_boxed_item("sand", "silicon", "c")
create_boxed_item("silica", "silicon", "d")
create_boxed_item("silicon-ingot", "silicon", "e")
create_boxed_item("limestone", "calcium", "b")
create_boxed_item("crushed-limestone", "calcium", "c")
create_boxed_item("gypsum", "calcium", "e")
create_boxed_item("lime", "calcium", "d")
create_boxed_item("stone", "silicon", "m", "stone")
create_boxed_item("gravel", "silicon", "n")
create_boxed_item("mineral-dust", "silicon", "o")
create_boxed_item("stone-brick", "terrain", "b", "stone-brick")
create_boxed_item("refractory-brick", "terrain", "c")
create_boxed_item("plastic", "organic", "d")
create_boxed_item("rubber", "organic", "e")
create_boxed_item("sodium-hydroxide", "sodium", "c")

create_boxed_item("concrete", "terrain", "db", "concrete")
create_boxed_item("land-fill-gravel", "terrain", "g")
create_boxed_item("land-fill-sand", "terrain", "h")
create_boxed_item("land-fill-bauxite", "terrain", "i")
create_boxed_item("land-fill-iron", "terrain", "j")
create_boxed_item("land-fill-limestone", "terrain", "k")
create_boxed_item("insulated-wire", "electrical", "d", "copper-cable")
create_boxed_item("iron-plate", "iron", "f")
create_boxed_item("iron-rod", "iron", "g")
create_boxed_item("iron-sheet", "iron", "h")
create_boxed_item("iron-wire", "iron", "i")
create_boxed_item("iron-gear", "iron", "j")
create_boxed_item("steel-plate", "steel", "c")
create_boxed_item("steel-rod", "steel", "d")
create_boxed_item("steel-sheet", "steel", "e")
create_boxed_item("steel-wire", "steel", "f")
create_boxed_item("steel-cable", "steel", "g")
create_boxed_item("steel-beam", "steel", "i")
create_boxed_item("steel-gear", "steel", "h")
create_boxed_item("aluminum-plate", "aluminum-2", "h")
create_boxed_item("aluminum-rod", "aluminum-2", "i")
create_boxed_item("aluminum-sheet", "aluminum-2", "j")
create_boxed_item("aluminum-wire", "aluminum-2", "k")
create_boxed_item("aluminum-powder", "aluminum-2", "l")
create_boxed_item("titanium-plate", "titanium", "f")
create_boxed_item("titanium-rod", "titanium", "g")
create_boxed_item("titanium-sheet", "titanium", "h")
create_boxed_item("glass", "glass", "b")
create_boxed_item("hard-glass", "glass", "c")
create_boxed_item("polycrystalline-silicon", "silicon", "f")
create_boxed_item("monocrystalline-silicon", "silicon", "g")
create_boxed_item("acid-boric", "glass", "i")
create_boxed_item("boron", "glass", "j")
create_boxed_item("pipe-1", "pipe", "b", "pipe")
create_boxed_item("pipe-2", "pipe", "d")
create_boxed_item("pipe-3", "pipe", "f")
create_boxed_item("cement", "glass", "l")
create_boxed_item("ceramic-powder", "glass", "k")

create_boxed_item("filter-1", "mechanical", "bb")
create_boxed_item("logic-circuit", "circuit", "d", "decider-combinator")
create_boxed_item("memory-circuit", "circuit", "f", "constant-combinator")
create_boxed_item("arithmetic-circuit", "circuit", "e", "arithmetic-combinator")
create_boxed_item("red-wire", "circuit", "b", "red-wire")
create_boxed_item("green-wire", "circuit", "c", "green-wire")
create_boxed_item("bpa", "organic", "c")
create_boxed_item("acrylic-fiber", "organic", "f")
create_boxed_item("carbon-fiber", "organic", "g")
create_boxed_item("capacitor", "electrical", "b")
create_boxed_item("glass-fiber", "glass", "d")
create_boxed_item("optical-cable", "electrical", "e")
create_boxed_item("insulation", "glass", "f")
create_boxed_item("soda-ash", "sodium", "f")
create_boxed_item("calcium-chloride", "calcium", "f")
create_boxed_item("sodium-sulfate", "sodium", "e")
create_boxed_item("sodium", "sodium", "d")
create_boxed_item("salt", "sodium", "bb")
create_boxed_item("reinforced-concrete", "terrain", "dc", "refined-concrete")
create_boxed_item("textile", "organic", "h")
create_boxed_item("lamp-1", "rail", "cb", "small-lamp")
create_boxed_item("lamp-2", "rail", "cc")
create_boxed_item("sensor-1", "electrical", "g")
create_boxed_item("antenna", "circuit", "h", "programmable-speaker")
create_boxed_item("fiberglass", "glass", "e")
create_boxed_item("processor-1", "electrical", "fb")
create_boxed_item("sensor-2", "electrical", "h")
create_boxed_item("battery-1", "renewable", "eb")
create_boxed_item("underground-pipe-1", "pipe", "c", "pipe-to-ground")
create_boxed_item("underground-pipe-2", "pipe", "e")
create_boxed_item("underground-pipe-3", "pipe", "g")
create_boxed_item("eutectic-salt", "sodium", "g")
create_boxed_item("bearing", "mechanical", "e")
create_boxed_item("motor-1", "mechanical", "cb")
create_boxed_item("motor-2", "mechanical", "cc")
create_boxed_item("repair-pack", "demolition", "bbb", "repair-pack", "repair-tool")
create_boxed_item("fabrication-tool-1", "demolition", "bbc")
create_boxed_item("fabrication-tool-2", "demolition", "bbd")
create_boxed_item("night-vision-1", "demolition", "bc")
create_boxed_item("levitation-field-1", "demolition", "bd")
create_boxed_item("transformer", "electrical", "c")
create_boxed_item("power-switch", "circuit", "g", "power-switch")
create_boxed_item("one-way-valve", "plumbing", "b")

create_boxed_item("heat-pipe-1", "heat-energy", "db")
create_boxed_item("heat-pipe-2", "heat-energy", "dc")
create_boxed_item("white-concrete", "concrete", "b")
create_boxed_item("red-concrete", "concrete", "c")
create_boxed_item("blue-concrete", "concrete", "d")
create_boxed_item("yellow-concrete", "concrete", "e")
create_boxed_item("orange-concrete", "concrete", "f")
create_boxed_item("green-concrete", "concrete", "g")
create_boxed_item("purple-concrete", "concrete", "h")
create_boxed_item("brown-concrete", "concrete", "i")
create_boxed_item("black-concrete", "concrete", "j")
create_boxed_item("hazard-concrete", "concrete", "k", "refined-hazard-concrete")
create_boxed_item("priority-valve", "plumbing", "c")
create_boxed_item("top-up-valve", "plumbing", "d")
create_boxed_item("relief-valve", "plumbing", "e")
create_boxed_item("barrel", "canister", "b", "empty-barrel")
create_boxed_item("canister", "canister", "c")
create_boxed_item("hydrogen-canister", "canister", "d")
create_boxed_item("methanol-canister", "canister", "e", "processed-fuel")
create_boxed_item("biodiesel-canister", "canister", "f")
create_boxed_item("water-canister", "canister", "g")
create_boxed_item("chain-signal", "rail", "g", "rail-chain-signal")
create_boxed_item("rail-signal", "rail", "f", "rail-signal")
create_boxed_item("inserter-1", "inserter", "b", "inserter")
create_boxed_item("inserter-2", "inserter", "c", "turbo-inserter")
create_boxed_item("filter-inserter-2", "inserter", "d", "turbo-filter-inserter")
create_boxed_item("inserter-3", "inserter", "e", "stack-inserter")
create_boxed_item("filter-inserter-3", "inserter", "f", "stack-filter-inserter")
create_boxed_item("belt-1", "belt", "bb", "transport-belt")
create_boxed_item("belt-2", "belt", "bc", "fast-transport-belt")
create_boxed_item("belt-3", "belt", "bd", "express-transport-belt")
create_boxed_item("power-pole-1", "power-pole", "cb", "small-electric-pole")
create_boxed_item("power-pole-2", "power-pole", "cc", "medium-electric-pole")
create_boxed_item("power-pole-3", "power-pole", "cd")
create_boxed_item("pump-1", "plumbing", "fb")
create_boxed_item("pump-2", "plumbing", "fc")
create_boxed_item("small-pump-1", "plumbing", "hb")
create_boxed_item("turbine-open-1", "fluid-energy", "eb")
create_boxed_item("turbine-open-2", "fluid-energy", "ec")
create_boxed_item("turbine-closed-1", "fluid-energy", "fb")
create_boxed_item("turbine-closed-2", "fluid-energy", "fc")
create_boxed_item("wall", "terrain", "e", "stone-wall")
create_boxed_item("relay-1", "beacon", "cb")
create_boxed_item("relay-2", "beacon", "cc")

create_boxed_item("charger-1", "hangar", "cb")
create_boxed_item("charger-2", "hangar", "cc")
create_boxed_item("explosive", "demolition", "c", "cliff-explosives", "capsule")
create_boxed_item("magazine", "demolition", "d", nil, "ammo")
create_boxed_item("missile-1", "demolition", "eb", nil, "ammo")
create_boxed_item("robot-frame-1", "hangar", "gb")
create_boxed_item("robot-frame-2", "hangar", "gc")
create_boxed_item("logistic-bot-1", "robot", "db")
create_boxed_item("logistic-bot-2", "robot", "dc")
create_boxed_item("construction-bot-1", "robot", "cb")
create_boxed_item("construction-bot-2", "robot", "cc")
create_boxed_item("rail", "rail", "d", "rail", "rail-planner")
create_boxed_item("train-stop", "rail", "e", "train-stop")
create_boxed_item("underground-belt-1", "belt", "cb", "underground-belt")
create_boxed_item("underground-belt-2", "belt", "cc", "fast-underground-belt")
create_boxed_item("underground-belt-3", "belt", "cd", "express-underground-belt")
create_boxed_item("haste-module-1", "module-1", "cb", nil, "module")
create_boxed_item("efficiency-module-1", "module-2", "bb", nil, "module")
create_boxed_item("speed-module-1", "module-1", "db", nil, "module")
create_boxed_item("yield-module-1", "module-2", "cb", nil, "module")
create_boxed_item("haste-module-2", "module-1", "cc", nil, "module")
create_boxed_item("efficiency-module-2", "module-2", "bc", nil, "module")
create_boxed_item("speed-module-2", "module-1", "dc", nil, "module")
create_boxed_item("yield-module-2", "module-2", "cc", nil, "module")
create_boxed_item("productivity-module-1", "module-2", "db", nil, "module")
create_boxed_item("solar-panel-1", "renewable", "cb")
create_boxed_item("solar-panel-2", "renewable", "cc")
create_boxed_item("grid-battery-1", "renewable", "db")
create_boxed_item("pylon-1", "power-pole", "db", "big-electric-pole")
create_boxed_item("pylon-2", "power-pole", "dc")
create_boxed_item("wind-turbine-1", "fluid-energy", "bb")
create_boxed_item("wind-turbine-2", "fluid-energy", "bc")
create_boxed_item("small-tank-1", "tank", "bb")
create_boxed_item("small-tank-2", "tank", "bc")
create_boxed_item("medium-tank-1", "tank", "cb", "storage-tank")
create_boxed_item("medium-tank-2", "tank", "cc")
create_boxed_item("medium-tank-3", "tank", "cd")
create_boxed_item("gate", "electrical", "i", "gate")
create_boxed_item("geology-pack", "science", "b", nil, "tool")
create_boxed_item("climatology-pack", "science", "c", nil, "tool")
create_boxed_item("mechanical-pack", "science", "d", nil, "tool")
create_boxed_item("electrical-pack", "science", "e", nil, "tool")
create_boxed_item("chemical-pack", "science", "f", nil, "tool")

create_boxed_item("physics-pack", "science", "g", nil, "tool")
create_boxed_item("carbon-composite", "organic", "i")
create_boxed_item("motor-3", "mechanical", "cd")
create_boxed_item("graphene", "organic", "j")
create_boxed_item("filter-2", "mechanical", "bc")
create_boxed_item("pipe-4", "pipe", "h")
create_boxed_item("underground-pipe-4", "pipe", "i")
create_boxed_item("inserter-4", "inserter", "g", "express-stack-inserter")
create_boxed_item("filter-inserter-4", "inserter", "h", "express-stack-filter-inserter")
create_boxed_item("belt-4", "belt", "be", "ultimate-transport-belt")
create_boxed_item("underground-belt-4", "belt", "ce", "ultimate-underground-belt")
create_boxed_item("pump-3", "plumbing", "fd", "pump")
create_boxed_item("small-pump-2", "plumbing", "hc")
create_boxed_item("turbine-open-3", "fluid-energy", "ed")
create_boxed_item("turbine-closed-3", "fluid-energy", "fd")
create_boxed_item("wind-turbine-3", "fluid-energy", "bd")
create_boxed_item("lithium-chloride", "sodium", "bc")
create_boxed_item("lithium", "sodium", "j")
create_boxed_item("solar-panel-3", "renewable", "cd")
create_boxed_item("calcium", "calcium", "g")
create_boxed_item("power-pole-4", "power-pole", "ce")
create_boxed_item("pylon-3", "power-pole", "dd")
create_boxed_item("battery-2", "renewable", "ec")
create_boxed_item("grid-battery-2", "renewable", "dc")
create_boxed_item("heat-pipe-3", "heat-energy", "dd")
create_boxed_item("processor-2", "electrical", "fc")
create_boxed_item("processor-3", "electrical", "fd")
create_boxed_item("haste-module-3", "module-1", "cd", nil, "module")
create_boxed_item("haste-module-4", "module-1", "ce", nil, "module")
create_boxed_item("efficiency-module-3", "module-2", "bd", nil, "module")
create_boxed_item("speed-module-3", "module-1", "dd", nil, "module")
create_boxed_item("speed-module-4", "module-1", "de", nil, "module")
create_boxed_item("yield-module-3", "module-2", "cd", nil, "module")
create_boxed_item("yield-module-4", "module-2", "ce", nil, "module")
create_boxed_item("productivity-module-2", "module-2", "dc", nil, "module")
create_boxed_item("productivity-module-3", "module-2", "dd", nil, "module")
create_boxed_item("robot-frame-3", "hangar", "gd")
create_boxed_item("robot-frame-4", "hangar", "ge")
create_boxed_item("logistic-bot-3", "robot", "dd")
create_boxed_item("logistic-bot-4", "robot", "de")
create_boxed_item("construction-bot-3", "robot", "cd")
create_boxed_item("construction-bot-4", "robot", "ce")
create_boxed_item("relay-3", "beacon", "cd")
create_boxed_item("charger-3", "hangar", "cd")
create_boxed_item("charger-4", "hangar", "ce")
create_boxed_item("missile-2", "demolition", "ec", nil, "ammo")
create_boxed_item("rocket-fuel", "canister", "g", "rocket-fuel")
create_boxed_item("astronomy-pack", "science", "h", nil, "tool")
create_boxed_item("copper-ore", "titanium", "pb", "copper-ore")
create_boxed_item("crushed-copper-ore", "titanium", "pc")
create_boxed_item("copper-ingot", "titanium", "pe")
create_boxed_item("copper-sheet", "titanium", "pf")
create_boxed_item("copper-wire", "titanium", "pg")
create_boxed_item("sugar", "biology", "b")
create_boxed_item("cellulose", "biology", "c")
create_boxed_item("wood", "biology", "d")
create_boxed_item("wood-chip", "biology", "e")
create_boxed_item("coal", "biology", "f")
create_boxed_item("fertilizer", "biology", "g")
create_boxed_item("grass-seed", "biology", "h")
create_boxed_item("solar-collector-1", "heat-energy", "bb")
create_boxed_item("solar-collector-2", "heat-energy", "bc")
create_boxed_item("solar-collector-3", "heat-energy", "bd")

if mods["ch-concentrated-solar"] then
create_boxed_item("heliostat-mirror", "heat-energy", "cb", "chcs-heliostat-mirror")
end

data.raw.item["nullius-box-barrel"].stack_size = 20
