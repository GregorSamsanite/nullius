local ICONPATH = "__nullius__/graphics/icons/"
local ENTITYPATH = "__nullius__/graphics/entity/"
local CATEGORYPATH = "__nullius__/graphics/category/"

data:extend({
  {
    type = "resource-category",
    name = "unused-resource"
  },

  {
    type = "recipe-category",
    name = "hand-crafting",
  },
  {
    type = "recipe-category",
    name = "dry-smelting",
  },
  {
    type = "recipe-category",
    name = "vent-smelting",
  },
  {
    type = "recipe-category",
    name = "wet-smelting",
  },
  {
    type = "recipe-category",
    name = "bulk-smelting",
  },
  {
    type = "recipe-category",
    name = "ore-crushing",
  },
  {
    type = "recipe-category",
    name = "ore-flotation",
  },
  {
    type = "recipe-category",
    name = "hand-crushing",
  },
  {
    type = "recipe-category",
    name = "bio-harvesting",
  },
  {
    type = "recipe-category",
    name = "basic-chemistry",
  },
  {
    type = "recipe-category",
    name = "nanotechnology",
  },
  {
    type = "recipe-category",
    name = "nullius-electrolysis"
  },
  {
    type = "recipe-category",
    name = "nullius-water-treatment"
  },
  {
    type = "recipe-category",
    name = "nullius-gas-void"
  },
  {
    type = "recipe-category",
    name = "nullius-liquid-void"
  },
  {
    type = "recipe-category",
    name = "nullius-power-sink"
  },
  {
    type = "recipe-category",
    name = "nullius-barrel"
  },
  {
    type = "recipe-category",
    name = "nullius-unbarrel"
  },
  {
    type = "recipe-category",
    name = "air-filtration"
  },
  {
    type = "recipe-category",
    name = "compression"
  },
  {
    type = "recipe-category",
    name = "decompression"
  },
  {
    type = "recipe-category",
    name = "water-pumping"
  },
  {
    type = "recipe-category",
    name = "seawater-pumping"
  },
  {
    type = "recipe-category",
    name = "distillation",
  },
  {
    type = "recipe-category",
    name = "hand-casting",
  },
  {
    type = "recipe-category",
    name = "machine-casting",
  },
  {
    type = "recipe-category",
    name = "combustion"
  },
  {
    type = "recipe-category",
    name = "boiling"
  },
  {
    type = "recipe-category",
    name = "pressure-boiling"
  },
  {
    type = "recipe-category",
    name = "turbine-open"
  },
  {
    type = "recipe-category",
    name = "turbine-closed"
  },

  {
    type = "recipe-category",
    name = "tiny-assembly",
  },
  {
    type = "recipe-category",
    name = "small-assembly",
  },
  {
    type = "recipe-category",
    name = "medium-assembly",
  },
  {
    type = "recipe-category",
    name = "medium-only-assembly",
  },
  {
    type = "recipe-category",
    name = "large-assembly",
  },
  {
    type = "recipe-category",
    name = "huge-assembly",
  },
  {
    type = "recipe-category",
    name = "tiny-crafting",
  },
  {
    type = "recipe-category",
    name = "small-crafting",
  },
  {
    type = "recipe-category",
    name = "medium-crafting",
  },
  {
    type = "recipe-category",
    name = "large-crafting",
  },
  {
    type = "recipe-category",
    name = "huge-crafting",
  },
  {
    type = "recipe-category",
    name = "small-fluid-assembly",
  },
  {
    type = "recipe-category",
    name = "large-fluid-assembly",
  },
  {
    type = "recipe-category",
    name = "huge-fluid-assembly",
  },
  {
    type = "recipe-category",
    name = "packaging",
  },
  {
    type = "recipe-category",
    name = "rocketry",
  },

  {
    type = "item-subgroup",
    name = "heat-energy",
    group = "production",
    order = "cb"
  },
  {
    type = "item-subgroup",
    name = "heat-storage",
    group = "production",
    order = "cb"
  },
  {
    type = "item-subgroup",
    name = "heat-exchange",
    group = "production",
    order = "cc"
  },
  {
    type = "item-subgroup",
    name = "geothermal",
    group = "production",
    order = "cd"
  },
  {
    type = "item-subgroup",
    name = "nuclear",
    group = "production",
    order = "ce"
  },
  {
    type = "item-subgroup",
    name = "miner",
    group = "production",
    order = "d"
  },
  {
    type = "item-subgroup",
    name = "furnace",
    group = "production",
    order = "f"
  },
  {
    type = "item-subgroup",
    name = "ore-processing",
    group = "production",
    order = "f"
  },
  {
    type = "item-subgroup",
    name = "assembler",
    group = "production",
    order = "g"
  },
  {
    type = "item-subgroup",
    name = "laboratory",
    group = "production",
    order = "i"
  },
  {
    type = "item-subgroup",
    name = "beacon",
    group = "production",
    order = "j"
  },
  {
    type = "item-subgroup",
    name = "module-1",
    group = "production",
    order = "m"
  },
  {
    type = "item-subgroup",
    name = "module-2",
    group = "production",
    order = "n"
  },

  {
    type = "item-subgroup",
    name = "small-logistic-storage",
    group = "logistics",
    order = "ac"
  },
  {
    type = "item-subgroup",
    name = "large-logistic-storage",
    group = "logistics",
    order = "ad"
  },
  {
    type = "item-subgroup",
    name = "splitter",
    group = "logistics",
    order = "cc"
  },
  {
    type = "item-subgroup",
    name = "electric-pole",
    group = "logistics",
    order = "d"
  },
  {
    type = "item-subgroup",
    name = "railway",
    group = "logistics",
    order = "f"
  },
  {
    type = "item-subgroup",
    name = "train-wagon",
    group = "logistics",
    order = "gb"
  },

  {
    type = "item-group",
    name = "drones",
    order = "fb",
    icon_size = 256,
    icon = "__base__/graphics/technology/construction-robotics.png",
  },
  {
    type = "item-subgroup",
    name = "hangar-1",
    group = "drones",
    order = "bb"
  },
  {
    type = "item-subgroup",
    name = "hangar-2",
    group = "drones",
    order = "bc"
  },
  {
    type = "item-subgroup",
    name = "robot",
    group = "drones",
    order = "c"
  },
  {
    type = "item-subgroup",
    name = "space",
    group = "drones",
    order = "e"
  },
  {
    type = "item-subgroup",
    name = "drone-launcher",
    group = "drones",
    order = "f"
  },
  {
    type = "item-subgroup",
    name = "drone",
    group = "drones",
    order = "gb"
  },
  {
    type = "item-subgroup",
    name = "drone-remote",
    group = "drones",
    order = "gc"
  },
  {
    type = "item-subgroup",
    name = "paving",
    group = "drones",
    order = "hb"
  },
  {
    type = "item-subgroup",
    name = "paving-remote",
    group = "drones",
    order = "hc"
  },
  {
    type = "item-subgroup",
    name = "asteroid-1",
    group = "drones",
    order = "ib"
  },
  {
    type = "item-subgroup",
    name = "asteroid-2",
    group = "drones",
    order = "ic"
  },
  {
    type = "item-subgroup",
    name = "farming",
    group = "drones",
    order = "jb"
  },
  {
    type = "item-subgroup",
    name = "farming-remote",
    group = "drones",
    order = "jc"
  },

  {
    type = "item-group",
    name = "equipment",
    order = "fc",
    icon_size = 256,
    icon = "__base__/graphics/technology/armor-making.png",
  },
  {
    type = "item-subgroup",
    name = "solar",
    group = "equipment",
    order = "db"
  },
  {
    type = "item-subgroup",
    name = "battery",
    group = "equipment",
    order = "dc"
  },
  {
    type = "item-subgroup",
    name = "cargo-pod",
    group = "equipment",
    order = "eg"
  },
  {
    type = "item-subgroup",
    name = "leg-augmentation",
    group = "equipment",
    order = "eh"
  },  
  {
    type = "item-subgroup",
    name = "tool-upgrades",
    group = "equipment",
    order = "ei"
  },
  {
    type = "item-subgroup",
    name = "coprocessors",
    group = "equipment",
    order = "eo"
  },
  {
    type = "item-subgroup",
    name = "jetpack",
    group = "equipment",
    order = "et"
  },
  {
    type = "item-subgroup",
    name = "demolitions",
    group = "equipment",
    order = "fb"
  },
  {
    type = "item-subgroup",
    name = "vehicle",
    group = "equipment",
    order = "fc"
  },
  {
    type = "item-subgroup",
    name = "vehicle-weapon",
    group = "equipment",
    order = "fd"
  },
  {
    type = "item-subgroup",
    name = "alignment",
    group = "equipment",
    order = "n"
  },

  {
    type = "item-group",
    name = "metallurgy",
    order = "fm",
    icon_size = 256,
    icon = "__base__/graphics/technology/steel-processing.png",
  },
  {
    type = "item-subgroup",
    name = "raw-ore",
    group = "metallurgy",
    order = "bb"
  },
  {
    type = "item-subgroup",
    name = "crushed-ore",
    group = "metallurgy",
    order = "bc"
  },
  {
    type = "item-subgroup",
    name = "iron-ingot",
    group = "metallurgy",
    order = "cb"
  },
  {
    type = "item-subgroup",
    name = "iron-product",
    group = "metallurgy",
    order = "cc"
  },
  {
    type = "item-subgroup",
    name = "steel-product",
    group = "metallurgy",
    order = "db"
  },
  {
    type = "item-subgroup",
    name = "alumina",
    group = "metallurgy",
    order = "eb"
  },
  {
    type = "item-subgroup",
    name = "aluminum-ingot",
    group = "metallurgy",
    order = "ec"
  },
  {
    type = "item-subgroup",
    name = "aluminum-product",
    group = "metallurgy",
    order = "ed"
  },
  {
    type = "item-subgroup",
    name = "titanium-product",
    group = "metallurgy",
    order = "fb"
  },
  {
    type = "item-subgroup",
    name = "copper",
    group = "metallurgy",
    order = "fc"
  },
  {
    type = "item-subgroup",
    name = "silicon-product",
    group = "metallurgy",
    order = "gb"
  },
  {
    type = "item-subgroup",
    name = "glass-product",
    group = "metallurgy",
    order = "gc"
  },
  {
    type = "item-subgroup",
    name = "calcium-product",
    group = "metallurgy",
    order = "h"
  },
  {
    type = "item-subgroup",
    name = "masonry-material",
    group = "metallurgy",
    order = "i"
  },
  {
    type = "item-subgroup",
    name = "uranium",
    group = "metallurgy",
    order = "j"
  },
  {
    type = "item-subgroup",
    name = "ore-recovery",
    group = "metallurgy",
    order = "o"
  },

  {
    type = "item-subgroup",
    name = "organic-material-1",
    group = "intermediate-products",
    order = "cb"
  },
  {
    type = "item-subgroup",
    name = "organic-material-2",
    group = "intermediate-products",
    order = "cc"
  },
  {
    type = "item-subgroup",
    name = "sodium-product",
    group = "intermediate-products",
    order = "e"
  },
  {
    type = "item-subgroup",
    name = "chemical-intermediate",
    group = "intermediate-products",
    order = "f"
  },
  {
    type = "item-subgroup",
    order = "g",
    name = "canisters",
    group = "intermediate-products",
  },
  {
    type = "item-subgroup",
    order = "gc",
    name = "canister-emptying",
    group = "intermediate-products",
  },
  {
    type = "item-subgroup",
    name = "mechanical-intermediate",
    group = "intermediate-products",
    order = "h"
  },
  {
    type = "item-subgroup",
    name = "mechanical-intermediate",
    group = "intermediate-products",
    order = "i"
  },
  {
    type = "item-subgroup",
    name = "electronic-intermediate",
    group = "intermediate-products",
    order = "jb"
  },
  {
    type = "item-subgroup",
    name = "robotic-intermediate",
    group = "intermediate-products",
    order = "jc"
  },
  {
    type = "item-subgroup",
    name = "misc-intermediate",
    group = "intermediate-products",
    order = "k"
  },
  {
    type = "item-subgroup",
    name = "research-pack",
    group = "intermediate-products",
    order = "lb"
  },
  {
    type = "item-subgroup",
    name = "research-pack-2",
    group = "intermediate-products",
    order = "lc"
  },
  {
    type = "item-subgroup",
    name = "masonry",
    group = "intermediate-products",
    order = "nd"
  },
  {
    type = "item-subgroup",
    name = "concrete",
    group = "intermediate-products",
    order = "ne"
  },
  {
    type = "item-subgroup",
    name = "colored-concrete",
    group = "intermediate-products",
    order = "nf"
  },
  {
    type = "item-subgroup",
    name = "broken",
    group = "intermediate-products",
    order = "r"
  },

  {
    type = "item-group",
    name = "chemistry",
    order = "d",
    icon_size = 128,
    icon = CATEGORYPATH .. "chemical-plant.png",
  },
  {
    type = "item-subgroup",
    name = "pipes",
    order = "a",
    group = "chemistry",
  },
  {
    type = "item-subgroup",
    name = "pipes-to-ground",
    order = "bb",
    group = "chemistry",
  },
  {
    type = "item-subgroup",
    name = "nullius-surface-junction",
    order = "bc",
    group = "chemistry",
  },
  {
    type = "item-subgroup",
    name = "nullius-underground-junction",
    order = "bd",
    group = "chemistry",
  },
  {
    type = "item-subgroup",
    name = "tanks",
    order = "cb",
    group = "chemistry",
  },
  {
    type = "item-subgroup",
    name = "valves",
    order = "cc",
    group = "chemistry",
  },
  {
    type = "item-subgroup",
    name = "pumping",
    order = "d",
    group = "chemistry"
  },
  {
    type = "item-subgroup",
    name = "water-intake",
    order = "eb",
    group = "chemistry"
  },
  {
    type = "item-subgroup",
    name = "air-treatment",
    order = "ec",
    group = "chemistry"
  },
  {
    type = "item-subgroup",
    name = "water-treatment",
    order = "f",
    group = "chemistry"
  },
  {
    type = "item-subgroup",
    name = "chemical-plant",
    group = "chemistry",
    order = "gb"
  },
  {
    type = "item-subgroup",
    name = "electrolyzer",
    group = "chemistry",
    order = "gc"
  },
  {
    type = "item-subgroup",
    name = "compressor",
    group = "chemistry",
    order = "hc"
  },
  {
    type = "item-subgroup",
    name = "energy-storage",
    group = "chemistry",
    order = "hd"
  },
  {
    type = "item-subgroup",
    name = "energy-backup",
    group = "chemistry",
    order = "he"
  },
  {
    type = "item-subgroup",
    name = "unmirror-1",
    group = "chemistry",
    order = "md"
  },
  {
    type = "item-subgroup",
    name = "unmirror-2",
    group = "chemistry",
    order = "me"
  },
  {
    type = "item-subgroup",
    name = "prioritization",
    group = "chemistry",
    order = "mf"
  },

  {
    type = "item-group",
    name = "biology",
    order = "h",
    icon = CATEGORYPATH .. "group-biology.png",
    icon_size = 128
  },
  {
    type = "item-subgroup",
    order = "b",
    name = "biochemistry",
    group = "biology",
  },
  {
    type = "item-subgroup",
    name = "biology-oil",
    group = "biology",
    order = "cb"
  },
  {
    type = "item-subgroup",
    name = "biology-material",
    group = "biology",
    order = "cc"
  },
  {
    type = "item-subgroup",
    name = "biology-bacteria",
    group = "biology",
    order = "d"
  },
  {
    type = "item-subgroup",
    name = "biology-algae",
    group = "biology",
    order = "eb"
  },
  {
    type = "item-subgroup",
    name = "biology-grass",
    group = "biology",
    order = "ec"
  },
  {
    type = "item-subgroup",
    name = "biology-tree",
    group = "biology",
    order = "ed"
  },
  {
    type = "item-subgroup",
    name = "biology-worm",
    group = "biology",
    order = "fb"
  },
  {
    type = "item-subgroup",
    name = "biology-fish",
    group = "biology",
    order = "fc"
  },
  {
    type = "item-subgroup",
    name = "biology-arthropod",
    group = "biology",
    order = "fd"
  },
  {
    type = "item-subgroup",
    name = "woodworking",
    group = "biology",
    order = "m"
  },
  {
    type = "item-subgroup",
    name = "biology-burning",
    group = "biology",
    order = "nb"
  },
  {
    type = "item-subgroup",
    name = "biology-disposal",
    group = "biology",
    order = "nc"
  },
  {
    type = "item-subgroup",
    name = "biology-research",
    group = "biology",
    order = "r"
  },

  {
    type = "item-subgroup",
    order = "bb",
    name = "nullius-water-treatment",
    group = "fluids",
  },
  {
    type = "item-subgroup",
    order = "bc",
    name = "nullius-electrolysis",
    group = "fluids",
  },
  {
    type = "item-subgroup",
    order = "c",
    name = "air-filtration",
    group = "fluids",
  },
  {
    type = "item-subgroup",
    order = "db",
    name = "carbon",
    group = "fluids",
  },
  {
    type = "item-subgroup",
    order = "dc",
    name = "hydrocarbon",
    group = "fluids",
  },
  {
    type = "item-subgroup",
    order = "e",
    name = "reforming",
    group = "fluids",
  },
  {
    type = "item-subgroup",
    order = "fb",
    name = "organic-chemistry",
    group = "fluids",
  },
  {
    type = "item-subgroup",
    order = "g",
    name = "inorganic-chemistry",
    group = "fluids",
  },
  {
    type = "item-subgroup",
    order = "h",
    name = "acid-chemistry",
    group = "fluids",
  },
  {
    type = "item-subgroup",
    order = "hc",
    name = "chlorine-chemistry",
    group = "fluids",
  },
  {
    type = "item-subgroup",
    order = "k",
    name = "compressed-air",
    group = "fluids",
  },
  {
    type = "item-subgroup",
    order = "l",
    name = "compression",
    group = "fluids",
  },
  {
    type = "item-subgroup",
    order = "m",
    name = "decompression",
    group = "fluids",
  },
  {
    type = "item-subgroup",
    order = "o",
    name = "combustion",
    group = "fluids",
  },
  {
    type = "item-subgroup",
    order = "pb",
    name = "boiling",
    group = "fluids",
  },
  {
    type = "item-subgroup",
    order = "pc",
    name = "pressure-boiling",
    group = "fluids",
  },
  {
    type = "item-subgroup",
    order = "s",
    name = "waste-management",
    group = "fluids",
  },

  {
    type = "item-group",
    name = "void",
    order = "iv",
	icon = "__nullius__/graphics/icons/fluid/steam2.png",
    icon_size = 64
  },
  {
    type = "item-subgroup",
    order = "wb",
    name = "turbine-open",
    group = "void",
  },
  {
    type = "item-subgroup",
    order = "wc",
    name = "turbine-closed",
    group = "void",
  },

  {
    type = "item-subgroup",
    order = "xb",
    name = "nullius-liquid-void",
    group = "void",
  },
  {
    type = "item-subgroup",
    order = "xc",
    name = "nullius-gas-void",
    group = "void",
  },
  {
    type = "item-subgroup",
    order = "xd",
    name = "nullius-power-sink",
    group = "void",
  },

  {
    type = "item-group",
    name = "unused",
    order = "x",
    icon_size = 256,
    icon = "__base__/graphics/technology/flammables.png"
  },
  {
    type = "item-subgroup",
    order = "z",
    name = "unused-fluid",
    group = "unused",
  },

  {
    type = "item-group",
    name = "barreling",
    order = "lb",
    icon_size = 64,
    icon_mipmaps = 4,
    icon = "__base__/graphics/icons/fluid/barreling/empty-barrel.png"
  },
  {
    type = "item-group",
    name = "unbarreling",
    order = "lc",
    icon_size = 64,
    icon_mipmaps = 4,
    icon = "__base__/graphics/icons/fluid/barreling/barrel-empty.png"
  },
  {
    type = "item-subgroup",
    order = "c",
    name = "fill-nullius-water-treatment",
    group = "barreling",
  },
  {
    type = "item-subgroup",
    order = "d",
    name = "fill-air-filtration",
    group = "barreling",
  },
  {
    type = "item-subgroup",
    order = "e",
    name = "fill-carbon",
    group = "barreling",
  },
  {
    type = "item-subgroup",
    order = "fb",
    name = "fill-organic-chemistry",
    group = "barreling",
  },
  {
    type = "item-subgroup",
    order = "fc",
    name = "fill-biochemistry",
    group = "barreling",
  },
  {
    type = "item-subgroup",
    order = "g",
    name = "fill-inorganic-chemistry",
    group = "barreling",
  },
  {
    type = "item-subgroup",
    order = "h",
    name = "fill-acid-chemistry",
    group = "barreling",
  },
  {
    type = "item-subgroup",
    order = "i",
    name = "fill-compression",
    group = "barreling",
  },
  {
    type = "item-subgroup",
    order = "i",
    name = "fill-compressed-air",
    group = "barreling",
  },

  {
    type = "item-subgroup",
    order = "b",
    name = "empty-nullius-water-treatment",
    group = "unbarreling",
  },
  {
    type = "item-subgroup",
    order = "c",
    name = "empty-air-filtration",
    group = "unbarreling",
  },
  {
    type = "item-subgroup",
    order = "d",
    name = "empty-carbon",
    group = "unbarreling",
  },
  {
    type = "item-subgroup",
    order = "eb",
    name = "empty-organic-chemistry",
    group = "unbarreling",
  },
  {
    type = "item-subgroup",
    order = "ec",
    name = "empty-biochemistry",
    group = "unbarreling",
  },
  {
    type = "item-subgroup",
    order = "f",
    name = "empty-inorganic-chemistry",
    group = "unbarreling",
  },
  {
    type = "item-subgroup",
    order = "g",
    name = "empty-acid-chemistry",
    group = "unbarreling",
  },
  {
    type = "item-subgroup",
    order = "i",
    name = "empty-compression",
    group = "unbarreling",
  },
  {
    type = "item-subgroup",
    order = "i",
    name = "empty-compressed-air",
    group = "unbarreling",
  },

  {
    type = "item-group",
    name = "boxed",
    order = "kb",
    icon_size = 64,
    icon = ICONPATH .. "crate.png"
  },
  {
    type = "item-group",
    name = "boxing",
    order = "kc",
    icon_size = 64,
    icon = ICONPATH .. "boxing.png"
  },
  {
    type = "item-group",
    name = "unboxing",
    order = "kd",
    icon_size = 64,
    icon = ICONPATH .. "unboxing.png"
  },
  {
    type = "item-subgroup",
    order = "b",
    name = "boxing-iron",
    group = "boxing",
  },
  {
    type = "item-subgroup",
    order = "b",
    name = "unboxing-iron",
    group = "unboxing",
  },
  {
    type = "item-subgroup",
    order = "b",
    name = "boxed-iron",
    group = "boxed",
  },
  {
    type = "item-subgroup",
    order = "c",
    name = "boxing-steel",
    group = "boxing",
  },
  {
    type = "item-subgroup",
    order = "c",
    name = "unboxing-steel",
    group = "unboxing",
  },
  {
    type = "item-subgroup",
    order = "c",
    name = "boxed-steel",
    group = "boxed",
  },
  {
    type = "item-subgroup",
    order = "d",
    name = "boxing-aluminum-1",
    group = "boxing",
  },
  {
    type = "item-subgroup",
    order = "d",
    name = "unboxing-aluminum-1",
    group = "unboxing",
  },
  {
    type = "item-subgroup",
    order = "d",
    name = "boxed-aluminum-1",
    group = "boxed",
  },
  {
    type = "item-subgroup",
    order = "d",
    name = "boxing-aluminum-2",
    group = "boxing",
  },
  {
    type = "item-subgroup",
    order = "d",
    name = "unboxing-aluminum-2",
    group = "unboxing",
  },
  {
    type = "item-subgroup",
    order = "d",
    name = "boxed-aluminum-2",
    group = "boxed",
  },
  {
    type = "item-subgroup",
    order = "eb",
    name = "boxing-titanium",
    group = "boxing",
  },
  {
    type = "item-subgroup",
    order = "eb",
    name = "unboxing-titanium",
    group = "unboxing",
  },
  {
    type = "item-subgroup",
    order = "eb",
    name = "boxed-titanium",
    group = "boxed",
  },
  {
    type = "item-subgroup",
    order = "ec",
    name = "boxing-copper",
    group = "boxing",
  },
  {
    type = "item-subgroup",
    order = "ec",
    name = "unboxing-copper",
    group = "unboxing",
  },
  {
    type = "item-subgroup",
    order = "ec",
    name = "boxed-copper",
    group = "boxed",
  },
  {
    type = "item-subgroup",
    order = "f",
    name = "boxing-silicon",
    group = "boxing",
  },
  {
    type = "item-subgroup",
    order = "f",
    name = "unboxing-silicon",
    group = "unboxing",
  },
  {
    type = "item-subgroup",
    order = "f",
    name = "boxed-silicon",
    group = "boxed",
  },
  {
    type = "item-subgroup",
    order = "g",
    name = "boxing-glass",
    group = "boxing",
  },
  {
    type = "item-subgroup",
    order = "g",
    name = "unboxing-glass",
    group = "unboxing",
  },
  {
    type = "item-subgroup",
    order = "g",
    name = "boxed-glass",
    group = "boxed",
  },
  {
    type = "item-subgroup",
    order = "h",
    name = "boxing-calcium",
    group = "boxing",
  },
  {
    type = "item-subgroup",
    order = "h",
    name = "unboxing-calcium",
    group = "unboxing",
  },
  {
    type = "item-subgroup",
    order = "h",
    name = "boxed-calcium",
    group = "boxed",
  },
  {
    type = "item-subgroup",
    order = "i",
    name = "boxing-organic",
    group = "boxing",
  },
  {
    type = "item-subgroup",
    order = "i",
    name = "unboxing-organic",
    group = "unboxing",
  },
  {
    type = "item-subgroup",
    order = "ib",
    name = "boxed-organic-1",
    group = "boxed",
  },
  {
    type = "item-subgroup",
    order = "ic",
    name = "boxed-organic-2",
    group = "boxed",
  },
  {
    type = "item-subgroup",
    order = "if",
    name = "boxing-biology",
    group = "boxing",
  },
  {
    type = "item-subgroup",
    order = "if",
    name = "unboxing-biology",
    group = "unboxing",
  },
  {
    type = "item-subgroup",
    order = "if",
    name = "boxed-biology",
    group = "boxed",
  },
  {
    type = "item-subgroup",
    order = "ig",
    name = "boxed-wood",
    group = "boxed",
  },
  {
    type = "item-subgroup",
    order = "ih",
    name = "boxed-biology-burning",
    group = "boxed",
  },

  {
    type = "item-subgroup",
    order = "jb",
    name = "boxing-sodium",
    group = "boxing",
  },
  {
    type = "item-subgroup",
    order = "jb",
    name = "unboxing-sodium",
    group = "unboxing",
  },
  {
    type = "item-subgroup",
    order = "jb",
    name = "boxed-sodium",
    group = "boxed",
  },
  {
    type = "item-subgroup",
    order = "jc",
    name = "boxed-fluid",
    group = "boxed",
  },
  {
    type = "item-subgroup",
    order = "kb",
    name = "boxing-canister",
    group = "boxing",
  },
  {
    type = "item-subgroup",
    order = "kb",
    name = "unboxing-canister",
    group = "unboxing",
  },
  {
    type = "item-subgroup",
    order = "kb",
    name = "boxed-canister",
    group = "boxed",
  },
  {
    type = "item-subgroup",
    order = "l",
    name = "boxing-mechanical",
    group = "boxing",
  },
  {
    type = "item-subgroup",
    order = "l",
    name = "unboxing-mechanical",
    group = "unboxing",
  },
  {
    type = "item-subgroup",
    order = "l",
    name = "boxed-mechanical",
    group = "boxed",
  },
  {
    type = "item-subgroup",
    order = "m",
    name = "boxing-electrical",
    group = "boxing",
  },
  {
    type = "item-subgroup",
    order = "m",
    name = "unboxing-electrical",
    group = "unboxing",
  },
  {
    type = "item-subgroup",
    order = "m",
    name = "boxed-electrical",
    group = "boxed",
  },
  {
    type = "item-subgroup",
    order = "ml",
    name = "boxed-land-fill",
    group = "boxed",
  },
  {
    type = "item-subgroup",
    order = "mn",
    name = "boxed-dumping",
    group = "boxed",
  },
  {
    type = "item-subgroup",
    order = "n",
    name = "boxing-terrain",
    group = "boxing",
  },
  {
    type = "item-subgroup",
    order = "n",
    name = "unboxing-terrain",
    group = "unboxing",
  },
  {
    type = "item-subgroup",
    order = "n",
    name = "boxed-terrain",
    group = "boxed",
  },
  {
    type = "item-subgroup",
    order = "o",
    name = "boxing-concrete",
    group = "boxing",
  },
  {
    type = "item-subgroup",
    order = "o",
    name = "unboxing-concrete",
    group = "unboxing",
  },
  {
    type = "item-subgroup",
    order = "o",
    name = "boxed-concrete",
    group = "boxed",
  },
  {
    type = "item-subgroup",
    order = "pb",
    name = "boxing-pipe",
    group = "boxing",
  },
  {
    type = "item-subgroup",
    order = "pb",
    name = "unboxing-pipe",
    group = "unboxing",
  },
  {
    type = "item-subgroup",
    order = "pb",
    name = "boxed-pipe",
    group = "boxed",
  },
  {
    type = "item-subgroup",
    order = "pc",
    name = "boxing-plumbing",
    group = "boxing",
  },
  {
    type = "item-subgroup",
    order = "pc",
    name = "unboxing-plumbing",
    group = "unboxing",
  },
  {
    type = "item-subgroup",
    order = "pc",
    name = "boxed-plumbing",
    group = "boxed",
  },
  {
    type = "item-subgroup",
    order = "pd",
    name = "boxing-tank",
    group = "boxing",
  },
  {
    type = "item-subgroup",
    order = "pd",
    name = "unboxing-tank",
    group = "unboxing",
  },
  {
    type = "item-subgroup",
    order = "pd",
    name = "boxed-tank",
    group = "boxed",
  },
  {
    type = "item-subgroup",
    order = "qb",
    name = "boxing-circuit",
    group = "boxing",
  },
  {
    type = "item-subgroup",
    order = "qb",
    name = "unboxing-circuit",
    group = "unboxing",
  },
  {
    type = "item-subgroup",
    order = "qb",
    name = "boxed-circuit",
    group = "boxed",
  },
  {
    type = "item-subgroup",
    order = "qc",
    name = "boxing-power-pole",
    group = "boxing",
  },
  {
    type = "item-subgroup",
    order = "qc",
    name = "unboxing-power-pole",
    group = "unboxing",
  },
  {
    type = "item-subgroup",
    order = "qc",
    name = "boxed-power-pole",
    group = "boxed",
  },
  {
    type = "item-subgroup",
    order = "qd",
    name = "boxing-belt",
    group = "boxing",
  },
  {
    type = "item-subgroup",
    order = "qd",
    name = "unboxing-belt",
    group = "unboxing",
  },
  {
    type = "item-subgroup",
    order = "qd",
    name = "boxed-belt",
    group = "boxed",
  },
  {
    type = "item-subgroup",
    order = "qf",
    name = "boxing-inserter",
    group = "boxing",
  },
  {
    type = "item-subgroup",
    order = "qf",
    name = "unboxing-inserter",
    group = "unboxing",
  },
  {
    type = "item-subgroup",
    order = "qf",
    name = "boxed-inserter",
    group = "boxed",
  },
  {
    type = "item-subgroup",
    order = "rc",
    name = "boxing-rail",
    group = "boxing",
  },
  {
    type = "item-subgroup",
    order = "rc",
    name = "unboxing-rail",
    group = "unboxing",
  },
  {
    type = "item-subgroup",
    order = "rc",
    name = "boxed-rail",
    group = "boxed",
  },
  {
    type = "item-subgroup",
    order = "sb",
    name = "boxing-renewable",
    group = "boxing",
  },
  {
    type = "item-subgroup",
    order = "sb",
    name = "unboxing-renewable",
    group = "unboxing",
  },
  {
    type = "item-subgroup",
    order = "sb",
    name = "boxed-renewable",
    group = "boxed",
  },
  {
    type = "item-subgroup",
    order = "sc",
    name = "boxing-fluid-energy",
    group = "boxing",
  },
  {
    type = "item-subgroup",
    order = "sc",
    name = "unboxing-fluid-energy",
    group = "unboxing",
  },
  {
    type = "item-subgroup",
    order = "sc",
    name = "boxed-fluid-energy",
    group = "boxed",
  },
  {
    type = "item-subgroup",
    order = "sd",
    name = "boxing-heat-energy",
    group = "boxing",
  },
  {
    type = "item-subgroup",
    order = "sd",
    name = "unboxing-heat-energy",
    group = "unboxing",
  },
  {
    type = "item-subgroup",
    order = "sd",
    name = "boxed-heat-energy",
    group = "boxed",
  },
  {
    type = "item-subgroup",
    order = "wb",
    name = "boxing-module-1",
    group = "boxing",
  },
  {
    type = "item-subgroup",
    order = "wb",
    name = "unboxing-module-1",
    group = "unboxing",
  },
  {
    type = "item-subgroup",
    order = "wb",
    name = "boxed-module-1",
    group = "boxed",
  },
  {
    type = "item-subgroup",
    order = "wc",
    name = "boxing-module-2",
    group = "boxing",
  },
  {
    type = "item-subgroup",
    order = "wc",
    name = "unboxing-module-2",
    group = "unboxing",
  },
  {
    type = "item-subgroup",
    order = "wc",
    name = "boxed-module-2",
    group = "boxed",
  },
  {
    type = "item-subgroup",
    order = "xb",
    name = "boxing-beacon",
    group = "boxing",
  },
  {
    type = "item-subgroup",
    order = "xb",
    name = "unboxing-beacon",
    group = "unboxing",
  },
  {
    type = "item-subgroup",
    order = "xb",
    name = "boxed-beacon",
    group = "boxed",
  },
  {
    type = "item-subgroup",
    order = "xc",
    name = "boxing-hangar",
    group = "boxing",
  },
  {
    type = "item-subgroup",
    order = "xc",
    name = "unboxing-hangar",
    group = "unboxing",
  },
  {
    type = "item-subgroup",
    order = "xc",
    name = "boxed-hangar",
    group = "boxed",
  },
  {
    type = "item-subgroup",
    order = "xd",
    name = "boxing-robot",
    group = "boxing",
  },
  {
    type = "item-subgroup",
    order = "xd",
    name = "unboxing-robot",
    group = "unboxing",
  },
  {
    type = "item-subgroup",
    order = "xd",
    name = "boxed-robot",
    group = "boxed",
  },
  {
    type = "item-subgroup",
    order = "xf",
    name = "boxing-demolition",
    group = "boxing",
  },
  {
    type = "item-subgroup",
    order = "xf",
    name = "unboxing-demolition",
    group = "unboxing",
  },
  {
    type = "item-subgroup",
    order = "xf",
    name = "boxed-demolition",
    group = "boxed",
  },
  {
    type = "item-subgroup",
    order = "yb",
    name = "boxing-science",
    group = "boxing",
  },
  {
    type = "item-subgroup",
    order = "yb",
    name = "unboxing-science",
    group = "unboxing",
  },
  {
    type = "item-subgroup",
    order = "yb",
    name = "boxed-science",
    group = "boxed",
  },
  {
    type = "item-subgroup",
    order = "z",
    name = "boxing-misc",
    group = "boxing",
  },
  {
    type = "item-subgroup",
    order = "z",
    name = "unboxing-misc",
    group = "unboxing",
  },

  {
    type = "item-subgroup",
    order = "zx",
    name = "hidden",
    group = "other",
  },

  {
    type = "equipment-category",
    name = "cybernetic"
  },
  {
    type = "equipment-category",
    name = "android"
  },

  {
    type = "module-category",
    name = "haste"
  },
  {
    type = "module-category",
    name = "yield"
  },
  {
    type = "module-category",
    name = "efficiency"
  },

  {
    type = "ammo-category",
    name = "nullius-conscription"
  },
  {
    type = "ammo-category",
    name = "nullius-scout-drone"
  },
  {
    type = "ammo-category",
    name = "nullius-demolition-drone"
  },
  {
    type = "ammo-category",
    name = "nullius-excavation-drone"
  },
  {
    type = "ammo-category",
    name = "nullius-shallow-excavation-drone"
  },
  {
    type = "ammo-category",
    name = "nullius-terraforming-drone-grey"
  },
  {
    type = "ammo-category",
    name = "nullius-terraforming-drone-tan"
  },
  {
    type = "ammo-category",
    name = "nullius-terraforming-drone-brown"
  },
  {
    type = "ammo-category",
    name = "nullius-terraforming-drone-red"
  },
  {
    type = "ammo-category",
    name = "nullius-terraforming-drone-beige"
  },
  {
    type = "ammo-category",
    name = "nullius-paving-drone-grey"
  },
  {
    type = "ammo-category",
    name = "nullius-paving-drone-white"
  },
  {
    type = "ammo-category",
    name = "nullius-paving-drone-red"
  },
  {
    type = "ammo-category",
    name = "nullius-paving-drone-blue"
  },
  {
    type = "ammo-category",
    name = "nullius-paving-drone-yellow"
  },
  {
    type = "ammo-category",
    name = "nullius-paving-drone-green"
  },
  {
    type = "ammo-category",
    name = "nullius-paving-drone-purple"
  },
  {
    type = "ammo-category",
    name = "nullius-paving-drone-brown"
  },
  {
    type = "ammo-category",
    name = "nullius-paving-drone-black"
  },
  {
    type = "ammo-category",
    name = "nullius-paving-drone-hazard"
  },
  {
    type = "ammo-category",
    name = "nullius-guide-drone-iron"
  },
  {
    type = "ammo-category",
    name = "nullius-guide-drone-bauxite"
  },
  {
    type = "ammo-category",
    name = "nullius-guide-drone-sandstone"
  },
  {
    type = "ammo-category",
    name = "nullius-guide-drone-limestone"
  },
  {
    type = "ammo-category",
    name = "nullius-guide-drone-copper"
  },
  {
    type = "ammo-category",
    name = "nullius-guide-drone-uranium"
  },
  {
    type = "ammo-category",
    name = "nullius-algaculture-drone"
  },
  {
    type = "ammo-category",
    name = "nullius-horticulture-drone"
  },
  {
    type = "ammo-category",
    name = "nullius-entomology-drone"
  },
  {
    type = "ammo-category",
    name = "nullius-arboriculture-drone"
  },
  {
    type = "ammo-category",
    name = "nullius-aquaculture-drone"
  },
  {
    type = "ammo-category",
    name = "nullius-husbandry-drone"
  },
  {
    type = "ammo-category",
    name = "nullius-sequestration-coal-drone"
  },
  {
    type = "ammo-category",
    name = "nullius-sequestration-petroleum-drone"
  },

  {
    type = "fuel-category",
    name = "vehicle"
  },
  {
    type = "fuel-category",
    name = "nullius-nuclear"
  }
})
