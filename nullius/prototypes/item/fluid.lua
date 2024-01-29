local ICONPATH = "__nullius__/graphics/icons/"
local FLUIDPATH = ICONPATH .. "fluid/"
local ENTITYPATH = "__nullius__/graphics/entity/"

element_tint = {
  ["carbon"] = { 32, 32, 32 },
  ["hydrogen"] = { 240, 240, 240 },
  ["heavy"] = { 255, 240, 188 },
  ["oxygen"] = { 224, 16, 16 },
  ["nitrogen"] = { 40, 80, 192 },
  ["chlorine"] = { 32, 224, 32 },
  ["calcium"] = { 96, 128, 64 },
  ["sulfur"] = { 224, 208, 0 },
  ["sodium"] = { 150, 40, 180 },
  ["argon"] = { 164, 140, 204 },
  ["helium"] = { 224, 200, 255 },
  ["boron"] = { 240, 180, 172 },
  ["titanium"] = { 120, 60, 90 },
  ["copper"] = {0.803, 0.388, 0.215},
  ["water"] = { 18, 193, 200 },
  ["saline"] = { 34, 169, 187 },
  ["brine"] = { 36, 94, 142 },
  ["waste"] = {97, 127, 104},
  ["sludge"] = {115, 94, 57},
  ["air"] = { 32, 144, 255 },
  ["residual"] = { 122, 175, 232 },
  ["trace"] = { 152, 176, 204 },
  ["volcanic"] = { 224, 128, 0 },
  ["solvent"] = { 194, 193, 178 }
}

data:extend({
  {
    type = "fluid",
    name = "nullius-water",
    icon = FLUIDPATH .. "purewater.png",
    icon_size = 64,
    subgroup = "nullius-water-treatment",
    order = "nullius-b",
    base_color = {r=18, g=193, b=200},
    flow_color = {r=18, g=193, b=200},
    heat_capacity = "0.075KJ",
    default_temperature = 15,
    max_temperature = 100
  },
  {
    type = "fluid",
    name = "nullius-steam",
    fuel_value = "6KJ",
    icon = "__base__/graphics/icons/fluid/steam.png",
    icon_size = 64,
    icon_mipmaps = 4,
    subgroup = "nullius-water-treatment",
    order = "nullius-cb",
    base_color = {r=0.5, g=0.5, b=0.5},
    flow_color = {r=0.6, g=0.6, b=0.6},
    heat_capacity = "0.05KJ",
    default_temperature = 165,
    max_temperature = 200,
    gas_temperature = 100
  },
  {
    type = "fluid",
    name = "nullius-pressure-steam",
    fuel_value = "20KJ",
    icon = FLUIDPATH .. "steam2.png",
    icon_size = 64,
    subgroup = "nullius-water-treatment",
    order = "nullius-cc",
    base_color = {r=0.7, g=0.7, b=0.7},
    flow_color = {r=0.8, g=0.8, b=0.8},
    heat_capacity = "0.1KJ",
    default_temperature = 500,
    max_temperature = 600,
    gas_temperature = 100
  },
  {
    type = "fluid",
    name = "nullius-seawater",
    icon = FLUIDPATH .. "seawater.png",
    icon_size = 64,
    subgroup = "nullius-water-treatment",
    order = "nullius-d",
    base_color = {r=72, g=144, b=140},
    flow_color = {r=72, g=144, b=140},
    heat_capacity = "0.08KJ",
    default_temperature = 15,
    max_temperature = 100
  },
  {
    type = "fluid",
    name = "nullius-freshwater",
    icon = FLUIDPATH .. "freshwater.png",
    icon_size = 64,
    subgroup = "nullius-water-treatment",
    order = "nullius-e",
    base_color = {r=76, g=160, b=148},
    flow_color = {r=76, g=160, b=148},
    heat_capacity = "0.08KJ",
    default_temperature = 15,
    max_temperature = 100
  },
  {
    type = "fluid",
    name = "nullius-saline",
    icon = "__base__/graphics/icons/fluid/water.png",
    icon_size = 64,
    icon_mipmaps = 4,
    subgroup = "nullius-water-treatment",
    order = "nullius-f",
    base_color = {r=34, g=169, b=187},
    flow_color = {r=34, g=169, b=187},
    heat_capacity = "0.08KJ",
    default_temperature = 15,
    max_temperature = 100
  },
  {
    type = "fluid",
    name = "nullius-brine",
    icon = FLUIDPATH .. "brine.png",
    icon_size = 64,
    subgroup = "nullius-water-treatment",
    order = "nullius-g",
    base_color = {r=36, g=94, b=142},
    flow_color = {r=36, g=94, b=142},
    heat_capacity = "0.08KJ",
    default_temperature = 20,
    max_temperature = 100
  },
  {
    type = "fluid",
    name = "nullius-heavy-water",
    icons = angelsmods.functions.create_liquid_fluid_icon(
      {"__angelspetrochem__/graphics/icons/molecules/semiheavy-water.png", 72 },
      {element_tint["heavy"], element_tint["oxygen"], element_tint["hydrogen"]}
    ),
    subgroup = "nullius-water-treatment",
    order = "nullius-h",
    base_color = {r=18, g=180, b=180},
    flow_color = {r=18, g=180, b=180},
    heat_capacity = "0.08KJ",
    default_temperature = 20,
    max_temperature = 100
  },
  {
    type = "fluid",
    name = "nullius-wastewater",
    icon = FLUIDPATH .. "wastewater.png",
    icon_size = 64,
    subgroup = "nullius-water-treatment",
    order = "nullius-i",
    base_color = {r=97, g=127, b=104},
    flow_color = {r=97, g=127, b=104},
    heat_capacity = "0.08KJ",
    default_temperature = 20,
    max_temperature = 100
  },
  {
    type = "fluid",
    name = "nullius-sludge",
    icon = FLUIDPATH .. "sludge.png",
    icon_size = 64,
    subgroup = "nullius-water-treatment",
    order = "nullius-j",
    base_color = {r=115, g=94, b=57},
    flow_color = {r=115, g=94, b=57},
    heat_capacity = "0.08KJ",
    default_temperature = 25,
    max_temperature = 100
  },

  {
    type = "fluid",
    name = "nullius-air",
    icons = angelsmods.functions.create_gas_fluid_icon(nil,
      {element_tint["air"], element_tint["residual"], element_tint["air"]}
    ),
    subgroup = "air-filtration",
    order = "nullius-b",
    base_color = {r = 32, g = 144, b = 255},
    flow_color = {r = 32, g = 144, b = 255},
    heat_capacity = "0.04KJ",
    default_temperature = 25,
    max_temperature = 100,
    gas_temperature = 0
  },
  {
    type = "fluid",
    name = "nullius-residual-gas",
    icons = angelsmods.functions.create_gas_fluid_icon(nil,
      {element_tint["residual"], element_tint["trace"], element_tint["residual"]}
    ),
    subgroup = "air-filtration",
    order = "nullius-c",
    base_color = {r = 122, g = 175, b = 232},
    flow_color = {r = 122, g = 175, b = 232},
    heat_capacity = "0.04KJ",
    default_temperature = 25,
    max_temperature = 100,
    gas_temperature = 0
  },
  {
    type = "fluid",
    name = "nullius-trace-gas",
    icons = angelsmods.functions.create_gas_fluid_icon(nil,
      {element_tint["trace"], element_tint["volcanic"], element_tint["trace"]}
    ),
    subgroup = "air-filtration",
    order = "nullius-d",
    base_color = {r = 152, g = 176, b = 204},
    flow_color = {r = 152, g = 176, b = 204},
    heat_capacity = "0.04KJ",
    default_temperature = 25,
    max_temperature = 100,
    gas_temperature = 0
  },
  {
    type = "fluid",
    name = "nullius-volcanic-gas",
    icons = angelsmods.functions.create_gas_fluid_icon(nil,
      {element_tint["volcanic"], element_tint["air"], element_tint["volcanic"]}
    ),
	localised_description = {"fluid-description.nullius-oxygen-reduction", 20,
	    {"fluid-description.nullius-volcanic-gas"}},
    subgroup = "air-filtration",
    order = "nullius-e",
    base_color = {r = 224, g = 128, b = 0},
    flow_color = {r = 224, g = 128, b = 0},
    heat_capacity = "0.04KJ",
    default_temperature = 200,
    max_temperature = 500,
    gas_temperature = 0
  },
  {
    type = "fluid",
    name = "nullius-nitrogen",
    icons = angelsmods.functions.create_gas_fluid_icon(nil,
      {element_tint["nitrogen"], element_tint["nitrogen"], element_tint["nitrogen"]}
    ),
    subgroup = "air-filtration",
    order = "nullius-f",
    base_color = { r = 40, g = 80, b = 192 },
    flow_color = { r = 40, g = 80, b = 192 },
    heat_capacity = "0.04KJ",
    default_temperature = 25,
    max_temperature = 100,
    gas_temperature = 0
  },
  {
    type = "fluid",
    name = "nullius-argon",
    icons = angelsmods.functions.create_gas_fluid_icon(nil,
      {element_tint["argon"], element_tint["argon"], element_tint["argon"]}
    ),
    subgroup = "air-filtration",
    order = "nullius-g",
    base_color = { r = 164, g = 140, b = 204 },
    flow_color = { r = 164, g = 140, b = 204 },
    heat_capacity = "0.04KJ",
    default_temperature = 25,
    max_temperature = 100,
    gas_temperature = 0
  },
  {
    type = "fluid",
    name = "nullius-helium",
    icons = angelsmods.functions.create_gas_fluid_icon(nil,
      {element_tint["helium"], element_tint["helium"], element_tint["helium"]}
    ),
    subgroup = "air-filtration",
    order = "nullius-h",
    base_color = { r = 224, g = 200, b = 255 },
    flow_color = { r = 224, g = 200, b = 255 },
    heat_capacity = "0.04KJ",
    default_temperature = 25,
    max_temperature = 100,
    gas_temperature = 0
  },

  {
    type = "fluid",
    name = "nullius-carbon-dioxide",
    icons = angelsmods.functions.create_gas_fluid_icon(
      {"__angelspetrochem__/graphics/icons/molecules/carbon-dioxide.png", 72 },
      {element_tint["carbon"], element_tint["oxygen"], element_tint["oxygen"]}
    ),
    subgroup = "carbon",
    order = "nullius-b",
    base_color = {r = 1, g = 0.4, b = 0.4},
    flow_color = {r = 1, g = 0.4, b = 0.4},
    heat_capacity = "0.04KJ",
    default_temperature = 25,
    max_temperature = 100,
    gas_temperature = 0
  },
  {
    type = "fluid",
    name = "nullius-carbon-monoxide",
    icons = angelsmods.functions.create_gas_fluid_icon(
      {"__angelspetrochem__/graphics/icons/molecules/carbon-monoxide.png", 72 },
      {element_tint["carbon"], element_tint["carbon"], element_tint["oxygen"]}
    ),
	localised_description = {"fluid-description.nullius-oxygen-reduction", 50,
	    {"fluid-description.nullius-carbon-monoxide"}},
    subgroup = "carbon",
    order = "nullius-c",
    base_color = {r = 0.5, g = 0.2, b = 0.2},
    flow_color = {r = 0.5, g = 0.2, b = 0.2},
    heat_capacity = "0.04KJ",
    default_temperature = 25,
    max_temperature = 100,
    gas_temperature = 0
  },
  {
    type = "fluid",
    name = "nullius-methane",
    icons = angelsmods.functions.create_gas_fluid_icon(
      {"__angelspetrochem__/graphics/icons/molecules/methane.png", 72 },
      {element_tint["carbon"], element_tint["hydrogen"], element_tint["hydrogen"]}
    ),
	localised_description = {"fluid-description.nullius-oxygen-reduction", 200,
	    {"fluid-description.nullius-methane"}},
    subgroup = "carbon",
    order = "nullius-d",
    base_color = {r = 0.68, g = 0.68, b = 0.68},
    flow_color = {r = 0.68, g = 0.68, b = 0.68},
    heat_capacity = "0.04KJ",
    default_temperature = 25,
    max_temperature = 100,
    gas_temperature = 0
  },
  {
    type = "fluid",
    name = "nullius-ethylene",
    icons = angelsmods.functions.create_gas_fluid_icon(
      {"__angelspetrochem__/graphics/icons/molecules/ethylene.png", 72 },
      {element_tint["carbon"], element_tint["carbon"], element_tint["hydrogen"]}
    ),
    subgroup = "carbon",
    order = "nullius-f",
    base_color = {r = 0.45, g = 0.45, b = 0.45},
    flow_color = {r = 0.45, g = 0.45, b = 0.45},
    heat_capacity = "0.04KJ",
    default_temperature = 25,
    max_temperature = 100,
    gas_temperature = 0
  },
  {
    type = "fluid",
    name = "nullius-propene",
    icons = angelsmods.functions.create_gas_fluid_icon(
      {"__angelspetrochem__/graphics/icons/molecules/propene.png", 72 },
      {element_tint["carbon"], element_tint["hydrogen"], element_tint["carbon"]}
    ),
    subgroup = "carbon",
    order = "nullius-g",
    base_color = {r = 0.3, g = 0.3, b = 0.3},
    flow_color = {r = 0.3, g = 0.3, b = 0.3},
    heat_capacity = "0.04KJ",
    default_temperature = 25,
    max_temperature = 100,
    gas_temperature = 0
  },
  {
    type = "fluid",
    name = "nullius-benzene",
    icons = angelsmods.functions.create_liquid_fluid_icon(
      {"__angelspetrochem__/graphics/icons/molecules/benzene.png", 72 },
      {element_tint["carbon"], element_tint["hydrogen"], element_tint["hydrogen"]}
    ),
    subgroup = "carbon",
    order = "nullius-h",
    base_color = {r = 0.15, g = 0.15, b = 0.15},
    flow_color = {r = 0.15, g = 0.15, b = 0.15},
    heat_capacity = "0.08KJ",
    default_temperature = 25,
    max_temperature = 100
  },
  {
    type = "fluid",
    name = "nullius-petroleum",
	icon = "__base__/graphics/icons/fluid/crude-oil.png",
    icon_size = 64,
    icon_mipmaps = 4,
    subgroup = "carbon",
    order = "nullius-k",
    base_color = {r = 0, g = 0, b = 0},
    flow_color = {r = 0, g = 0, b = 0},
    heat_capacity = "0.08KJ",
    default_temperature = 25,
    max_temperature = 100
  },

  {
    type = "fluid",
    name = "nullius-methanol",
    icons = angelsmods.functions.create_liquid_fluid_icon(
      {"__angelspetrochem__/graphics/icons/molecules/methanol.png", 72 },
      {element_tint["carbon"], element_tint["oxygen"], element_tint["hydrogen"]}
    ),
    subgroup = "organic-chemistry",
    order = "nullius-b",
    base_color = {r = 0.7, g = 0.575, b = 0.575},
    flow_color = {r = 0.7, g = 0.575, b = 0.575},
    heat_capacity = "0.08KJ",
    default_temperature = 25,
    max_temperature = 100
  },
  {
    type = "fluid",
    name = "nullius-butadiene",
    icons = angelsmods.functions.create_gas_fluid_icon(
      {"__angelspetrochem__/graphics/icons/molecules/butadiene.png", 75 },
      {element_tint["hydrogen"], element_tint["carbon"], element_tint["carbon"]}
    ),
    subgroup = "organic-chemistry",
    order = "nullius-c",
    base_color = {r = 0.8, g = 0.8, b = 0.8},
    flow_color = {r = 0.8, g = 0.8, b = 0.8},
    heat_capacity = "0.04KJ",
    default_temperature = 25,
    max_temperature = 100,
    gas_temperature = 0
  },
  {
    type = "fluid",
    name = "nullius-styrene",
    icons = angelsmods.functions.create_liquid_fluid_icon(
      {"__angelspetrochem__/graphics/icons/molecules/styrene.png", 72 },
      {element_tint["carbon"], element_tint["hydrogen"], element_tint["carbon"]}
    ),
    subgroup = "organic-chemistry",
    order = "nullius-d",
    base_color = {r = 0, g = 0, b = 0},
    flow_color = {r = 0, g = 0, b = 0},
    heat_capacity = "0.08KJ",
    default_temperature = 25,
    max_temperature = 100
  },
  {
    type = "fluid",
    name = "nullius-acrylonitrile",
    icons = angelsmods.functions.create_liquid_fluid_icon(
      {"__angelspetrochem__/graphics/icons/molecules/methylamine.png", 72 },
      {element_tint["carbon"], element_tint["hydrogen"], element_tint["nitrogen"]}
    ),
    subgroup = "organic-chemistry",
    order = "nullius-e",
    base_color = {r = 0.2, g = 0.2, b = 0.4},
    flow_color = {r = 0.2, g = 0.2, b = 0.4},
    heat_capacity = "0.08KJ",
    default_temperature = 25,
    max_temperature = 100
  },
  {
    type = "fluid",
    name = "nullius-ech",
    icons = angelsmods.functions.create_liquid_fluid_icon(
      {"__angelspetrochem__/graphics/icons/molecules/epichlorohydrin.png", 72 },
      {element_tint["carbon"], element_tint["chlorine"], element_tint["oxygen"]}
    ),
    subgroup = "organic-chemistry",
    order = "nullius-f",
    base_color = {r = 224, g = 212, b = 168},
    flow_color = {r = 224, g = 212, b = 168},
    heat_capacity = "0.08KJ",
    default_temperature = 25,
    max_temperature = 100
  },
  {
    type = "fluid",
    name = "nullius-glycerol",
    icons = angelsmods.functions.create_liquid_fluid_icon(
      {"__angelspetrochem__/graphics/icons/molecules/glycerol.png", 72 },
      {element_tint["carbon"], element_tint["hydrogen"], element_tint["oxygen"]}
    ),
    subgroup = "organic-chemistry",
    order = "nullius-g",
    base_color = {r = 224, g = 192, b = 128},
    flow_color = {r = 224, g = 192, b = 128},
    heat_capacity = "0.08KJ",
    default_temperature = 25,
    max_temperature = 100
  },
  {
    type = "fluid",
    name = "nullius-lubricant",
    icon = "__base__/graphics/icons/fluid/lubricant.png",
    icon_size = 64,
    icon_mipmaps = 4,
    subgroup = "organic-chemistry",
    order = "nullius-h",
    base_color = {r = 0.43, g = 0.65, b = 0.31},
    flow_color = {r = 0.43, g = 0.65, b = 0.31},
    heat_capacity = "0.08KJ",
    default_temperature = 25,
    max_temperature = 100
  },
  {
    type = "fluid",
    name = "nullius-solvent",
    icon = FLUIDPATH .. "solvent.png",
    icon_size = 64,
    subgroup = "organic-chemistry",
    order = "nullius-i",
    base_color = {r = 232, g = 228, b = 200},
    flow_color = {r = 232, g = 228, b = 200},
    heat_capacity = "0.08KJ",
    default_temperature = 25,
    max_temperature = 100
  },
  {
    type = "fluid",
    name = "nullius-epoxy",
    icon = FLUIDPATH .. "epoxy.png",
    icon_size = 64,
    subgroup = "organic-chemistry",
    order = "nullius-j",
    base_color = {r = 192, g = 184, b = 136},
    flow_color = {r = 192, g = 184, b = 136},
    heat_capacity = "0.08KJ",
    default_temperature = 25,
    max_temperature = 100
  },

  {
    type = "fluid",
    name = "nullius-amino-acids",
    icons = angelsmods.functions.create_liquid_fluid_icon(nil,
      {element_tint["nitrogen"], element_tint["carbon"], element_tint["hydrogen"]}
    ),
    subgroup = "biochemistry",
    order = "nullius-c",
    base_color = {r = 0.5, g = 0.4, b = 0.2},
    flow_color = {r = 0.5, g = 0.4, b = 0.2},
    heat_capacity = "0.08KJ",
    default_temperature = 25,
    max_temperature = 100
  },
  {
    type = "fluid",
    name = "nullius-nucleotides",
    icons = angelsmods.functions.create_liquid_fluid_icon(nil,
      {element_tint["carbon"], element_tint["oxygen"], element_tint["nitrogen"]}
    ),
    subgroup = "biochemistry",
    order = "nullius-d",
    base_color = {r = 0.7, g = 0.9, b = 0.5},
    flow_color = {r = 0.7, g = 0.9, b = 0.5},
    heat_capacity = "0.08KJ",
    default_temperature = 25,
    max_temperature = 100
  },
  {
    type = "fluid",
    name = "nullius-fatty-acids",
    icons = angelsmods.functions.create_liquid_fluid_icon(nil,
      {element_tint["carbon"], element_tint["carbon"], element_tint["hydrogen"]}
    ),
    subgroup = "biochemistry",
    order = "nullius-e",
    base_color = {r = 0.8, g = 0.8, b = 0.4},
    flow_color = {r = 0.8, g = 0.8, b = 0.4},
    heat_capacity = "0.08KJ",
    default_temperature = 25,
    max_temperature = 100
  },
  {
    type = "fluid",
    name = "nullius-oil",
    icons = {{
      icon = "__base__/graphics/icons/fluid/light-oil.png",
      icon_size = 64,
      icon_mipmaps = 4
    }},
    subgroup = "biochemistry",
    order = "nullius-f",
    base_color = {r=0.57, g=0.33, b=0},
    flow_color = {r=1, g=0.73, b=0.07},
    heat_capacity = "0.08KJ",
    default_temperature = 25,
    max_temperature = 100
  },
  {
    type = "fluid",
    name = "nullius-biodiesel",
    icons = {{
      icon = "__base__/graphics/icons/fluid/heavy-oil.png",
      icon_size = 64,
      icon_mipmaps = 4
    }},
    subgroup = "biochemistry",
    order = "nullius-g",
    base_color = {r=0.5, g=0.04, b=0},
    flow_color = {r=0.85, g=0.6, b=0.3},
    heat_capacity = "0.08KJ",
    default_temperature = 25,
    max_temperature = 100
  },
  {
    type = "fluid",
    name = "nullius-protocell",
    icons = {{
      icon = ICONPATH .. "protocell.png",
      icon_size = 64
    }},
    subgroup = "biochemistry",
    order = "nullius-h",
    base_color = {r = 0.9, g = 0.7, b = 0.5},
    flow_color = {r = 0.9, g = 0.7, b = 0.5},
    heat_capacity = "0.08KJ",
    default_temperature = 25,
    max_temperature = 100
  },
  {
    type = "fluid",
    name = "nullius-bacteria",
    icons = {{
      icon = ICONPATH .. "bacteria.png",
      icon_size = 64
    }},
    subgroup = "biochemistry",
    order = "nullius-i",
    base_color = {r = 0.8, g = 0.5, b = 0.3},
    flow_color = {r = 0.8, g = 0.5, b = 0.3},
    heat_capacity = "0.08KJ",
    default_temperature = 25,
    max_temperature = 100
  },

  {
    type = "fluid",
    name = "nullius-hydrogen",
    icons = angelsmods.functions.create_gas_fluid_icon(nil,
      {element_tint["hydrogen"], element_tint["hydrogen"], element_tint["hydrogen"]}
    ),
	localised_description = {"fluid-description.nullius-oxygen-reduction", 50,
	    {"fluid-description.nullius-hydrogen"}},
    subgroup = "inorganic-chemistry",
    order = "nullius-bb",
    base_color = {r = 1, g = 1, b = 1},
    flow_color = {r = 1, g = 1, b = 1},
    heat_capacity = "0.04KJ",
    default_temperature = 25,
    max_temperature = 100,
    gas_temperature = 0
  },
  {
    type = "fluid",
    name = "nullius-deuterium",
    icons = angelsmods.functions.create_gas_fluid_icon(nil,
      {element_tint["hydrogen"], element_tint["heavy"], element_tint["heavy"]}
    ),
	localised_description = {"fluid-description.nullius-oxygen-reduction", 50,
	    {"fluid-description.nullius-deuterium"}},
    subgroup = "inorganic-chemistry",
    order = "nullius-bc",
    base_color = {r = 1, g = 0.95, b = 0.85},
    flow_color = {r = 1, g = 0.95, b = 0.85},
    heat_capacity = "0.04KJ",
    default_temperature = 25,
    max_temperature = 100,
    gas_temperature = 0
  },
  {
    type = "fluid",
    name = "nullius-tritium",
    icons = angelsmods.functions.create_gas_fluid_icon(nil,
      {element_tint["heavy"], element_tint["heavy"], element_tint["heavy"]}
    ),
    subgroup = "inorganic-chemistry",
    order = "nullius-bd",
    base_color = {r = 1, g = 0.9, b = 0.7},
    flow_color = {r = 1, g = 0.9, b = 0.7},
    heat_capacity = "0.04KJ",
    default_temperature = 25,
    max_temperature = 100,
    gas_temperature = 0
  },
  {
    type = "fluid",
    name = "nullius-oxygen",
    icons = angelsmods.functions.create_gas_fluid_icon(nil,
      {element_tint["oxygen"], element_tint["oxygen"], element_tint["oxygen"]}
    ),
	localised_description = {"fluid-description.nullius-oxygenation", 100,
	    {"fluid-description.nullius-oxygen"}},
    subgroup = "inorganic-chemistry",
    order = "nullius-c",
    base_color = {r = 1, g = 0, b = 0},
    flow_color = {r = 1, g = 0, b = 0},
    heat_capacity = "0.04KJ",
    default_temperature = 25,
    max_temperature = 100,
    gas_temperature = 0
  },
  {
    type = "fluid",
    name = "nullius-chlorine",
    icons = angelsmods.functions.create_gas_fluid_icon(nil,
      {element_tint["chlorine"], element_tint["chlorine"], element_tint["chlorine"]}
    ),
    subgroup = "inorganic-chemistry",
    order = "nullius-d",
    base_color = {r = 0, g = 1, b = 0},
    flow_color = {r = 0, g = 1, b = 0},
    heat_capacity = "0.04KJ",
    default_temperature = 25,
    max_temperature = 100,
    gas_temperature = 0
  },
  {
    type = "fluid",
    name = "nullius-caustic-solution",
    icons = angelsmods.functions.create_liquid_fluid_icon(
      {FLUIDPATH .. "sodium-hydroxide.png",
        64, nil, 0.18},
      {element_tint["sodium"], element_tint["oxygen"], element_tint["hydrogen"]}
    ),
    subgroup = "inorganic-chemistry",
    order = "nullius-g",
    base_color = { r = 150, g = 40, b = 180 },
    flow_color = { r = 150, g = 40, b = 180 },
    heat_capacity = "0.08KJ",
    default_temperature = 25,
    max_temperature = 100
  },
  {
    type = "fluid",
    name = "nullius-calcium-chloride-solution",
    icons = angelsmods.functions.create_liquid_fluid_icon(
      {FLUIDPATH .. "calcium-chloride.png",
        64, nil, 0.18 },
      {element_tint["calcium"], element_tint["chlorine"], element_tint["chlorine"]}
    ),
    subgroup = "inorganic-chemistry",
    order = "nullius-i",
    base_color = {r = 0.9, g = 1, b = 0.7},
    flow_color = {r = 0.9, g = 1, b = 0.7},
    heat_capacity = "0.04KJ",
    default_temperature = 25,
    max_temperature = 100
  },
  {
    type = "fluid",
    name = "nullius-titanium-tetrachloride",
    icons = angelsmods.functions.create_liquid_fluid_icon(nil,
      {element_tint["titanium"], element_tint["titanium"], element_tint["chlorine"]}
    ),
    subgroup = "inorganic-chemistry",
    order = "nullius-l",
    base_color = {r = 120, g = 60, b = 90},
    flow_color = {r = 120, g = 60, b = 90},
    heat_capacity = "0.08KJ",
    default_temperature = 25,
    max_temperature = 100
  },
  {
    type = "fluid",
    name = "nullius-copper-solution",
    icons = angelsmods.functions.create_liquid_fluid_icon(nil,
      {element_tint["copper"], element_tint["copper"], element_tint["copper"]}
    ),
    subgroup = "inorganic-chemistry",
    order = "nullius-m",
    base_color = {r=0.803, g=0.388, b=0.215},
    flow_color = {r=0.803, g=0.388, b=0.215},
    heat_capacity = "0.08KJ",
    default_temperature = 25,
    max_temperature = 100
  },

  {
    type = "fluid",
    name = "nullius-hydrogen-chloride",
    icons = angelsmods.functions.create_gas_fluid_icon(
      {"__angelspetrochem__/graphics/icons/molecules/hydrogen-chloride.png",
        72, nil, 0.15},
      {element_tint["chlorine"], element_tint["chlorine"], element_tint["hydrogen"]}
    ),
    subgroup = "acid-chemistry",
    order = "nullius-e",
    base_color = {r = 0.7, g = 1, b = 0.7},
    flow_color = {r = 0.7, g = 1, b = 0.7},
    heat_capacity = "0.04KJ",
    default_temperature = 25,
    max_temperature = 100,
    gas_temperature = 0
  },
  {
    type = "fluid",
    name = "nullius-acid-hydrochloric",
    icons = angelsmods.functions.create_liquid_fluid_icon(
      {"__angelspetrochem__/graphics/icons/molecules/hydrogen-chloride.png",
        72, nil, 0.15 },
      {element_tint["chlorine"], element_tint["chlorine"], element_tint["hydrogen"]}
    ),
    subgroup = "acid-chemistry",
    order = "nullius-f",
    base_color = {r = 0.4, g = 1, b = 0.4},
    flow_color = {r = 0.4, g = 1, b = 0.4},
    heat_capacity = "0.04KJ",
    default_temperature = 25,
    max_temperature = 100
  },
  {
    type = "fluid",
    name = "nullius-sulfur-dioxide",
    icons = angelsmods.functions.create_gas_fluid_icon(
      {"__angelspetrochem__/graphics/icons/molecules/sulfur-dioxide.png",
        72, nil, 0.17},
      {element_tint["sulfur"], element_tint["oxygen"], element_tint["oxygen"]}
    ),
    subgroup = "acid-chemistry",
    order = "nullius-h",
    base_color = {r = 0.9, g = 0.9, b = 0.2},
    flow_color = {r = 0.9, g = 0.9, b = 0.2},
    heat_capacity = "0.04KJ",
    default_temperature = 25,
    max_temperature = 100,
    gas_temperature = 0
  },
  {
    type = "fluid",
    name = "nullius-acid-sulfuric",
    icons = angelsmods.functions.create_liquid_fluid_icon(
      {"__angelspetrochem__/graphics/icons/molecules/sulfuric-acid.png",
        72, nil, 0.18},
      {element_tint["sulfur"], element_tint["oxygen"], element_tint["hydrogen"]}
    ),
    subgroup = "acid-chemistry",
    order = "nullius-i",
    base_color = {r = 0.75, g = 0.65, b = 0.1},
    flow_color = {r = 0.75, g = 0.65, b = 0.1},
    heat_capacity = "0.08KJ",
    default_temperature = 25,
    max_temperature = 100
  },
  {
    type = "fluid",
    name = "nullius-ammonia",
    icons = angelsmods.functions.create_gas_fluid_icon(
      {"__angelspetrochem__/graphics/icons/molecules/ammonia.png", 72 },
      {element_tint["nitrogen"], element_tint["hydrogen"], element_tint["hydrogen"]}
    ),
	localised_description = {"fluid-description.nullius-oxygen-reduction", 100,
	    {"fluid-description.nullius-ammonia"}},
    subgroup = "acid-chemistry",
    order = "nullius-j",
    base_color = {r = 0.4, g = 0.4, b = 0.7},
    flow_color = {r = 0.4, g = 0.4, b = 0.7},
    heat_capacity = "0.04KJ",
    default_temperature = 25,
    max_temperature = 100,
    gas_temperature = 0
  },
  {
    type = "fluid",
    name = "nullius-acid-nitric",
    icons = angelsmods.functions.create_liquid_fluid_icon(
      {"__angelspetrochem__/graphics/icons/molecules/nitric-acid.png",
        72, nil, 0.18},
      {element_tint["nitrogen"], element_tint["oxygen"], element_tint["hydrogen"]}
    ),
    subgroup = "acid-chemistry",
    order = "nullius-k",
    base_color = {r = 148, g = 112, b = 224},
    flow_color = {r = 148, g = 112, b = 224},
    heat_capacity = "0.08KJ",
    default_temperature = 25,
    max_temperature = 100
  },

  {
    type = "fluid",
    name = "nullius-compressed-air",
    icons = angelsmods.functions.create_liquid_fluid_icon(nil,
      {element_tint["air"], element_tint["residual"], element_tint["air"]}
    ),
	localised_description = {"fluid-description.nullius-recapture", 85,
	    {"fluid-description.nullius-compressed-air"}},
    subgroup = "compressed-air",
    order = "nullius-b",
    base_color = {r = 32, g = 144, b = 255},
    flow_color = {r = 32, g = 144, b = 255},
    heat_capacity = "0.08KJ",
    fuel_value = "14KJ",
    default_temperature = 50,
    max_temperature = 100
  },
  {
    type = "fluid",
    name = "nullius-compressed-residual-gas",
    icons = angelsmods.functions.create_liquid_fluid_icon(nil,
      {element_tint["residual"], element_tint["trace"], element_tint["residual"]}
    ),
	localised_description = {"fluid-description.nullius-recapture", 90,
	    {"fluid-description.nullius-compressed-residual-gas"}},
    subgroup = "compressed-air",
    order = "nullius-cc",
    base_color = {r = 122, g = 175, b = 232},
    flow_color = {r = 122, g = 175, b = 232},
    heat_capacity = "0.08KJ",
    fuel_value = "15KJ",
    default_temperature = 50,
    max_temperature = 100
  },
  {
    type = "fluid",
    name = "nullius-compressed-trace-gas",
    icons = angelsmods.functions.create_liquid_fluid_icon(nil,
      {element_tint["trace"], element_tint["volcanic"], element_tint["trace"]}
    ),
	localised_description = {"fluid-description.nullius-recapture", 90,
	    {"fluid-description.nullius-compressed-trace-gas"}},
    subgroup = "compressed-air",
    order = "nullius-dc",
    base_color = {r = 152, g = 176, b = 204},
    flow_color = {r = 152, g = 176, b = 204},
    heat_capacity = "0.08KJ",
    fuel_value = "15KJ",
    default_temperature = 50,
    max_temperature = 100
  },
  {
    type = "fluid",
    name = "nullius-compressed-nitrogen",
    icons = angelsmods.functions.create_liquid_fluid_icon(nil,
      {element_tint["nitrogen"], element_tint["nitrogen"], element_tint["nitrogen"]}
    ),
	localised_description = {"fluid-description.nullius-recapture", 90,
	    {"fluid-description.nullius-compressed-nitrogen"}},
    subgroup = "compressed-air",
    order = "nullius-e",
    base_color = { r = 40, g = 80, b = 192},
    flow_color = { r = 40, g = 80, b = 192},
    heat_capacity = "0.08KJ",
    fuel_value = "18KJ",
    default_temperature = 50,
    max_temperature = 100
  },
  {
    type = "fluid",
    name = "nullius-compressed-argon",
    icons = angelsmods.functions.create_liquid_fluid_icon(nil,
      {element_tint["argon"], element_tint["argon"], element_tint["argon"]}
    ),
	localised_description = {"fluid-description.nullius-recapture", 96,
	    {"fluid-description.nullius-compressed-argon"}},
    subgroup = "compressed-air",
    order = "nullius-f",
    base_color = { r = 164, g = 140, b = 204},
    flow_color = { r = 164, g = 140, b = 204},
    heat_capacity = "0.08KJ",
    fuel_value = "24KJ",
    default_temperature = 50,
    max_temperature = 100
  },
  {
    type = "fluid",
    name = "nullius-compressed-helium",
    icons = angelsmods.functions.create_liquid_fluid_icon(nil,
      {element_tint["helium"], element_tint["helium"], element_tint["helium"]}
    ),
	localised_description = {"fluid-description.nullius-recapture", 99,
	    {"fluid-description.nullius-compressed-helium"}},
    subgroup = "compressed-air",
    order = "nullius-g",
    base_color = { r = 224, g = 200, b = 255},
    flow_color = { r = 224, g = 200, b = 255},
    heat_capacity = "0.08KJ",
    fuel_value = "32KJ",
    default_temperature = 50,
    max_temperature = 100
  },
  {
    type = "fluid",
    name = "nullius-compressed-hydrogen",
    icons = angelsmods.functions.create_liquid_fluid_icon(nil,
      {element_tint["hydrogen"], element_tint["hydrogen"], element_tint["hydrogen"]}
    ),
	localised_description = {"fluid-description.nullius-oxygen-reduction", 200,
	    {"fluid-description.nullius-recapture", 85,
	        {"fluid-description.nullius-compressed-hydrogen"}}},
    subgroup = "compression",
    order = "nullius-h",
    base_color = {r = 1, g = 1, b = 1},
    flow_color = {r = 1, g = 1, b = 1},
    heat_capacity = "0.08KJ",
    fuel_value = "4KJ",
    default_temperature = 50,
    max_temperature = 100
  },
  {
    type = "fluid",
    name = "nullius-compressed-oxygen",
    icons = angelsmods.functions.create_liquid_fluid_icon(nil,
      {element_tint["oxygen"], element_tint["oxygen"], element_tint["oxygen"]}
    ),
	localised_description = {"fluid-description.nullius-oxygenation", 400,
	    {"fluid-description.nullius-recapture", 85,
	        {"fluid-description.nullius-compressed-oxygen"}}},
    subgroup = "compression",
    order = "nullius-i",
    base_color = {r = 1, g = 0, b = 0},
    flow_color = {r = 1, g = 0, b = 0},
    heat_capacity = "0.08KJ",
    fuel_value = "4KJ",
    default_temperature = 50,
    max_temperature = 100
  },
  {
    type = "fluid",
    name = "nullius-compressed-carbon-dioxide",
    icons = angelsmods.functions.create_liquid_fluid_icon(
      {"__angelspetrochem__/graphics/icons/molecules/carbon-dioxide.png", 72 },
      {element_tint["carbon"], element_tint["oxygen"], element_tint["oxygen"]}
    ),
	localised_description = {"fluid-description.nullius-recapture", 90,
	    {"fluid-description.nullius-compressed-carbon-dioxide"}},
    subgroup = "compression",
    order = "nullius-j",
    base_color = {r = 1, g = 0.4, b = 0.4},
    flow_color = {r = 1, g = 0.4, b = 0.4},
    heat_capacity = "0.08KJ",
    fuel_value = "12KJ",
    default_temperature = 50,
    max_temperature = 100
  },
  {
    type = "fluid",
    name = "nullius-compressed-carbon-monoxide",
    icons = angelsmods.functions.create_liquid_fluid_icon(
      {"__angelspetrochem__/graphics/icons/molecules/carbon-monoxide.png", 72 },
      {element_tint["carbon"], element_tint["carbon"], element_tint["oxygen"]}
    ),
	localised_description = {"fluid-description.nullius-oxygen-reduction", 200,
	    {"fluid-description.nullius-recapture", 90,
	        {"fluid-description.nullius-compressed-carbon-monoxide"}}},
    subgroup = "compression",
    order = "nullius-k",
    base_color = {r = 0.5, g = 0.2, b = 0.2},
    flow_color = {r = 0.5, g = 0.2, b = 0.2},
    heat_capacity = "0.08KJ",
    fuel_value = "8KJ",
    default_temperature = 50,
    max_temperature = 100
  },
  {
    type = "fluid",
    name = "nullius-compressed-methane",
    icons = angelsmods.functions.create_liquid_fluid_icon(
      {"__angelspetrochem__/graphics/icons/molecules/methane.png", 72 },
      {element_tint["carbon"], element_tint["hydrogen"], element_tint["hydrogen"]}
    ),
	localised_description = {"fluid-description.nullius-oxygen-reduction", 800,
        {"fluid-description.nullius-recapture", 85,
	        {"fluid-description.nullius-compressed-methane"}}},
    subgroup = "compression",
    order = "nullius-l",
    base_color = {r = 0.68, g = 0.68, b = 0.68},
    flow_color = {r = 0.68, g = 0.68, b = 0.68},
    heat_capacity = "0.08KJ",
    fuel_value = "6KJ",
    default_temperature = 50,
    max_temperature = 100
  },
  {
    type = "fluid",
    name = "nullius-energy",
	icons = {{
      icon = FLUIDPATH .. "energy.png",
      icon_size = 32
	}},
	hidden = true,
    subgroup = "compressed-air",
    order = "nullius-x",
    base_color = {r=1, g=1, b=0},
    flow_color = {r=1, g=1, b=0},
    heat_capacity = "0.1KJ",
	fuel_value = "10KJ",
    default_temperature = 100,
    max_temperature = 200,
    gas_temperature = 0
  }
})


data:extend({
  {
    type = "tool",
    name = "nullius-climatology-pack",
    order = "nullius-c",
    icons = {
      {
        icon = "__base__/graphics/icons/chemical-science-pack.png",
        icon_size = 64,
        icon_mipmaps = 4
      },
      {
        icon = "__base__/graphics/icons/fluid/steam.png",
        icon_size = 64,
        icon_mipmaps = 4,
        scale = 0.27,
        shift = {1, 7},
        tint = {r=1, g=1, b=1, a=0.75}
      }
    },
    subgroup = "research-pack",
    stack_size = 200,
    durability = 1,
    durability_description_key = "description.science-pack-remaining-amount-key",
    durability_description_value = "description.science-pack-remaining-amount-value"
  },
  {
    type = "recipe",
    name = "nullius-climatology-pack-1",
	localised_name = {"", {"item-name.nullius-climatology-pack"}, " ", 1},
    show_amount_in_title = false,
    always_show_products = true,
    enabled = false,
	allow_decomposition = false,
    category = "nullius-water-treatment",
    energy_required = 60,
    ingredients = {
      {type="fluid", name="nullius-air", amount=5000},
      {type="fluid", name="nullius-seawater", amount=4000}
    },
    result = "nullius-climatology-pack"
  },
  {
    type = "recipe",
    name = "nullius-climatology-pack-2",
	localised_name = {"", {"item-name.nullius-climatology-pack"}, " ", 2},
    icons = {
      {
        icon = "__base__/graphics/icons/chemical-science-pack.png",
        icon_size = 64,
        icon_mipmaps = 4
      },
      {
        icon = FLUIDPATH .. "wastewater.png",
        icon_size = 64,
        scale = 0.3,
        shift = {0, 6},
        tint = {r=1, g=1, b=0.8, a=1}
      }
    },
    show_amount_in_title = false,
    always_show_products = true,
    enabled = false,
	allow_decomposition = false,
    category = "basic-chemistry",
    subgroup = "research-pack-2",
    crafting_machine_tint = {
      primary = data.raw.fluid["nullius-wastewater"].flow_color,
      secondary = data.raw.fluid["nullius-nitrogen"].flow_color
    },
    energy_required = 10,
    ingredients = {
      {type="fluid", name="nullius-nitrogen", amount=200},
      {type="fluid", name="nullius-wastewater", amount=100},
      {type="fluid", name="nullius-volcanic-gas", amount=5}
    },
    result = "nullius-climatology-pack"
  },
  {
    type = "recipe",
    name = "nullius-boxed-climatology-pack",
    show_amount_in_title = false,
    always_show_products = true,
    enabled = false,
	allow_decomposition = false,
    category = "basic-chemistry",
    subgroup = "boxed-science",
    crafting_machine_tint = {
      primary = data.raw.fluid["nullius-wastewater"].flow_color,
      secondary = data.raw.fluid["nullius-nitrogen"].flow_color
    },
    energy_required = 50,
    ingredients = {
      {type="fluid", name="nullius-nitrogen", amount=1000},
      {type="fluid", name="nullius-wastewater", amount=500},
      {type="fluid", name="nullius-volcanic-gas", amount=25}
    },
    result = "nullius-box-climatology-pack"
  },

  {
    type = "tool",
    name = "nullius-chemical-pack",
    order = "nullius-f",
    icon = "__base__/graphics/icons/logistic-science-pack.png",
    icon_size = 64,
    icon_mipmaps = 4,
    subgroup = "research-pack",
    stack_size = 200,
    durability = 1,
    durability_description_key = "description.science-pack-remaining-amount-key",
    durability_description_value = "description.science-pack-remaining-amount-value"
  },
  {
    type = "recipe",
    name = "nullius-chemical-pack",
    localised_name = {"", {"item-name.nullius-chemical-pack"}, " ", 1},
    enabled = false,
    category = "basic-chemistry",
    show_amount_in_title = false,
    always_show_products = true,
    crafting_machine_tint = {
      primary = data.raw.fluid["nullius-ammonia"].flow_color,
      secondary = data.raw.fluid["nullius-acid-sulfuric"].flow_color
    },
    energy_required = 15,
    ingredients = {
      {type="item", name="nullius-glass", amount=3},
      {type="item", name="concrete", amount=5},
      {type="item", name="nullius-ammonia-barrel", amount=1},
      {type="item", name="nullius-sodium-hydroxide", amount=2},
      {type="fluid", name="nullius-acid-sulfuric", amount=20},
      {type="fluid", name="nullius-lubricant", amount=4}
    },
    result = "nullius-chemical-pack"
  },
  {
    type = "recipe",
    name = "nullius-boxed-chemical-pack",
    localised_name = {"", {"item-name.nullius-box", {"item-name.nullius-chemical-pack"}}, " ", 1},
    enabled = false,
    show_amount_in_title = false,
    always_show_products = true,
    category = "basic-chemistry",
    subgroup = "boxed-science",
    crafting_machine_tint = {
      primary = data.raw.fluid["nullius-ammonia"].flow_color,
      secondary = data.raw.fluid["nullius-acid-sulfuric"].flow_color
    },
    energy_required = 75,
    ingredients = {
      {type="item", name="nullius-box-glass", amount=3},
      {type="item", name="nullius-box-concrete", amount=5},
      {type="item", name="nullius-ammonia-barrel", amount=5},
      {type="item", name="nullius-box-sodium-hydroxide", amount=2},
      {type="fluid", name="nullius-acid-sulfuric", amount=100},
      {type="fluid", name="nullius-lubricant", amount=20}
    },
    result = "nullius-box-chemical-pack"
  },
  {
    type = "recipe",
    name = "nullius-chemical-pack-2",
    localised_name = {"", {"item-name.nullius-chemical-pack"}, " ", 2},
    icons = {
      {
        icon = ICONPATH .. "crate.png",
        icon_size = 64
      },
      {
        icon = "__base__/graphics/icons/logistic-science-pack.png",
        icon_size = 64,
        icon_mipmaps = 4,
        scale = 0.45
      },
	  {
        icon = "__base__/graphics/icons/fluid/barreling/empty-barrel.png",
        icon_size = 64,
        icon_mipmaps = 4,
        scale = 0.2,
        shift = {0, 5},
        tint = {r=0.9, g=0.8, b=0.9, a=0.9}
	  }
    },
    enabled = false,
    show_amount_in_title = false,
    always_show_products = true,
    category = "basic-chemistry",
    subgroup = "research-pack-2",
    order = "nullius-fd",
    crafting_machine_tint = {
      primary = data.raw.fluid["nullius-glycerol"].flow_color,
      secondary = data.raw.fluid["nullius-acid-sulfuric"].flow_color
    },
    energy_required = 200,
    ingredients = {
      {type="item", name="nullius-acid-sulfuric-barrel", amount=2},
      {type="item", name="nullius-styrene-barrel", amount=1},
      {type="item", name="nullius-solvent-barrel", amount=1},
      {type="item", name="nullius-glycerol-barrel", amount=1},
      {type="item", name="nullius-underground-pipe-3", amount=1},
      {type="item", name="nullius-filter-2", amount=1},
      {type="item", name="nullius-box-eutectic-salt", amount=2},
      {type="item", name="nullius-box-calcium-chloride", amount=3}
    },
    results = {
      {type="item", name="nullius-box-chemical-pack", amount=5},
      {type="item", name="nullius-sludge-barrel", amount=1},
      {type="item", name="nullius-wastewater-barrel", amount=1},
      {type="item", name="nullius-hydrogen-chloride-barrel", amount=1}
    },
    main_product = "nullius-box-chemical-pack"
  },

  {
    type = "recipe",
    name = "nullius-saline-caustic-solution",
    localised_name = {"", {"fluid-name.nullius-caustic-solution"}, " ", 1},
    icons = angelsmods.functions.create_liquid_recipe_icon(
	  {{FLUIDPATH .. "sodium-hydroxide.png", 64}},
      {element_tint["sodium"], element_tint["oxygen"], element_tint["hydrogen"]},
      {{FLUIDPATH .. "brine.png", 64 }}
    ),
    enabled = false,
    category = "nullius-water-treatment",
    subgroup = "inorganic-chemistry",
    order = "nullius-bb",
    show_amount_in_title = false,
    always_show_products = true,
    energy_required = 1,
    ingredients = {
      {type="fluid", name="nullius-saline", amount=60},
      {type="item", name="nullius-sodium-hydroxide", amount=2}
    },
    results = {
      {type="fluid", name="nullius-caustic-solution", amount=60}
    },
    main_product = "nullius-caustic-solution"
  },
  {
    type = "recipe",
    name = "nullius-caustic-solution",
    localised_name = {"", {"fluid-name.nullius-caustic-solution"}, " ", 2},
    icons = angelsmods.functions.create_liquid_recipe_icon(
	  {{FLUIDPATH .. "sodium-hydroxide.png", 64}},
      {element_tint["hydrogen"], element_tint["oxygen"], element_tint["sodium"]},
      {{FLUIDPATH .. "purewater.png", 64 }}
    ),
    enabled = false,
    category = "nullius-water-treatment",
    subgroup = "inorganic-chemistry",
    order = "nullius-bc",
    show_amount_in_title = false,
    always_show_products = true,
    energy_required = 1,
    ingredients = {
      {type="fluid", name="nullius-water", amount=80},
      {type="item", name="nullius-sodium-hydroxide", amount=3}
    },
    results = {
      {type="fluid", name="nullius-caustic-solution", amount=100}
    },
    main_product = "nullius-caustic-solution"
  },
  {
    type = "recipe",
    name = "nullius-boxed-caustic-solution",
    localised_name = {"recipe-name.nullius-boxed", {"fluid-name.nullius-caustic-solution"}},
    icons = {
      {
        icon = ICONPATH .. "crate.png",
        icon_size = 64
      },
      {
        icon = FLUIDPATH .. "sodium-hydroxide.png",
        icon_size = 64,
        scale = 0.4
      }
    },
    enabled = false,
    category = "nullius-water-treatment",
    subgroup = "boxed-fluid",
    order = "nullius-cb",
    show_amount_in_title = false,
    always_show_products = true,
    energy_required = 5,
    ingredients = {
      {type="fluid", name="nullius-water", amount=400},
      {type="item", name="nullius-box-sodium-hydroxide", amount=3}
    },
    results = {
      {type="fluid", name="nullius-caustic-solution", amount=500}
    }
  },

  {
    type = "recipe",
    name = "nullius-hydrogen-chloride",
    enabled = false,
    category = "basic-chemistry",
    subgroup = "chlorine-chemistry",
    order = "nullius-b",
    crafting_machine_tint = {
      primary = data.raw.fluid["nullius-hydrogen"].flow_color,
      secondary = data.raw.fluid["nullius-chlorine"].flow_color
    },
    show_amount_in_title = false,
    always_show_products = true,
    energy_required = 1,
    no_productivity = true,
    ingredients = {
      {type="fluid", name="nullius-hydrogen", amount=30},
      {type="fluid", name="nullius-chlorine", amount=30}
    },
    results = {
      {type="fluid", name="nullius-hydrogen-chloride", amount=60}
    },
    main_product = "nullius-hydrogen-chloride"
  },
  {
    type = "recipe",
    name = "nullius-hydrogen-chloride-electrolysis",
    icons = angelsmods.functions.create_gas_recipe_icon(
        {{"__angelspetrochem__/graphics/icons/molecules/hydrogen.png", 72},
        {"__angelspetrochem__/graphics/icons/molecules/chlorine.png", 72}},
      {element_tint["hydrogen"], element_tint["chlorine"], element_tint["chlorine"]},
      nil
    ),
    enabled = false,
    category = "nullius-electrolysis",
    subgroup = "chlorine-chemistry",
    order = "nullius-c",
    crafting_machine_tint = {
      primary = data.raw.fluid["nullius-hydrogen"].flow_color,
      secondary = data.raw.fluid["nullius-chlorine"].flow_color
    },
    energy_required = 1,
    no_productivity = true,
    ingredients = {
      {type="fluid", name="nullius-hydrogen-chloride", amount=240}
    },
    results = {
      {type="fluid", name="nullius-hydrogen", amount=120, fluidbox_index=1},
      {type="fluid", name="nullius-chlorine", amount=120, fluidbox_index=3}
    }
  },
  {
    type = "recipe",
    name = "nullius-acid-hydrochloric",
    enabled = false,
    category = "basic-chemistry",
    subgroup = "chlorine-chemistry",
    order = "nullius-d",
    crafting_machine_tint = {
      primary = data.raw.fluid["nullius-hydrogen-chloride"].flow_color,
      secondary = data.raw.fluid["nullius-acid-hydrochloric"].flow_color
    },
    show_amount_in_title = false,
    always_show_products = true,
    energy_required = 1,
    ingredients = {
      {type="fluid", name="nullius-hydrogen-chloride", amount=35},
      {type="fluid", name="nullius-water", amount=40}
    },
    results = {
      {type="fluid", name="nullius-acid-hydrochloric", amount=40}
    },
    main_product = "nullius-acid-hydrochloric"
  },
  {
    type = "recipe",
    name = "nullius-hydrogen-chloride-neutralization",
    localised_name = {"recipe-name.nullius-hydrogen-chloride-neutralization"},
    show_amount_in_title = false,
    always_show_products = true,
    icons = {
      {
	    icon = FLUIDPATH .. "brine.png",
        icon_size = 64
      },
      {
        icon = "__angelspetrochem__/graphics/icons/molecules/hydrogen-chloride.png",
        icon_size = 72,
        scale = 0.11,
        shift = {-13, -12}
      },
      {
        icon = FLUIDPATH .. "sodium-hydroxide.png",
        icon_size = 64,
        scale = 0.14,
        shift = {11, -11}
      }
    },
    enabled = false,
    category = "basic-chemistry",
    subgroup = "inorganic-chemistry",
    order = "nullius-cb",
    energy_required = 1,
    no_productivity = true,
    ingredients = {
      {type="fluid", name="nullius-hydrogen-chloride", amount=56},
      {type="fluid", name="nullius-caustic-solution", amount=64}
    },
    results = {
      {type="fluid", name="nullius-brine", amount=25}
    },
    main_product = "nullius-brine"
  },
  {
    type = "recipe",
    name = "nullius-hydrochloric-neutralization",
    localised_name = {"recipe-name.nullius-hydrochloric-neutralization"},
    show_amount_in_title = false,
    always_show_products = true,
    icons = {
      {
        icon = "__base__/graphics/icons/fluid/water.png",
        icon_size = 64,
        icon_mipmaps = 4
      },
      {
        icon = "__angelspetrochem__/graphics/icons/molecules/hydrogen-chloride.png",
        icon_size = 72,
        scale = 0.12,
        shift = {-13, -12}
      },
      {
        icon = FLUIDPATH .. "sodium-hydroxide.png",
        icon_size = 64,
        scale = 0.15,
        shift = {11, -11}
      }
    },
    enabled = false,
    category = "nullius-water-treatment",
    subgroup = "inorganic-chemistry",
    order = "nullius-cc",
    energy_required = 1,
    no_productivity = true,
    ingredients = {
      {type="fluid", name="nullius-acid-hydrochloric", amount=100},
      {type="fluid", name="nullius-caustic-solution", amount=100}
    },
    results = {
      {type="fluid", name="nullius-saline", amount=120}
    },
    main_product = "nullius-saline"
  },
  {
    type = "recipe",
    name = "nullius-acid-sulfuric",
    enabled = false,
    category = "basic-chemistry",
    subgroup = "inorganic-chemistry",
    order = "nullius-f",
    crafting_machine_tint = {
      primary = data.raw.fluid["nullius-sulfur-dioxide"].flow_color,
      secondary = data.raw.fluid["nullius-oxygen"].flow_color
    },
    show_amount_in_title = false,
    always_show_products = true,
    energy_required = 1,
    ingredients = {
      {type="fluid", name="nullius-sulfur-dioxide", amount=8},
      {type="fluid", name="nullius-water", amount=16},
      {type="fluid", name="nullius-oxygen", amount=4}
    },
    results = {
      {type="fluid", name="nullius-acid-sulfuric", amount=20}
    },
    main_product = "nullius-acid-sulfuric"
  },
  {
    type = "recipe",
    name = "nullius-ammonia",
    enabled = false,
    category = "basic-chemistry",
    subgroup = "inorganic-chemistry",
    order = "nullius-h",
    crafting_machine_tint = {
      primary = data.raw.fluid["nullius-compressed-hydrogen"].flow_color,
      secondary = data.raw.fluid["nullius-compressed-nitrogen"].flow_color
    },
    show_amount_in_title = false,
    always_show_products = true,
    energy_required = 1,
    ingredients = {
      {type="fluid", name="nullius-compressed-hydrogen", amount=8},
      {type="fluid", name="nullius-compressed-nitrogen", amount=3}
    },
    results = {
      {type="fluid", name="nullius-ammonia", amount=8}
    },
    main_product = "nullius-ammonia"
  },
  {
    type = "recipe",
    name = "nullius-acid-nitric",
    enabled = false,
    category = "basic-chemistry",
    subgroup = "inorganic-chemistry",
    order = "nullius-i",
    crafting_machine_tint = {
      primary = data.raw.fluid["nullius-ammonia"].flow_color,
      secondary = data.raw.fluid["nullius-oxygen"].flow_color
    },
    show_amount_in_title = false,
    always_show_products = true,
    energy_required = 1,
    ingredients = {
      {type="fluid", name="nullius-oxygen", amount=20},
      {type="fluid", name="nullius-ammonia", amount=10}
    },
    results = {
      {type="fluid", name="nullius-acid-nitric", amount=5}
    },
    main_product = "nullius-acid-nitric"
  },

  {
    type = "item",
    name = "nullius-soda-ash",
    icon = "__angelspetrochem__/graphics/icons/solid-sodium-carbonate.png",
    icon_size = 32,
    subgroup = "sodium-product",
    order = "nullius-f",
    stack_size = 100
  },
  {
    type = "item",
    name = "nullius-sodium-sulfate",
    icon = "__angelspetrochem__/graphics/icons/solid-sodium-sulfate.png",
    icon_size = 32,
    subgroup = "sodium-product",
    order = "nullius-e",
    stack_size = 100
  },
  {
    type = "recipe",
    name = "nullius-soda-ash-1",
    localised_name = {"recipe-name.nullius-soda-ash-1"},
    enabled = false,
    category = "basic-chemistry",
    order = "nullius-fb",
    crafting_machine_tint = {
      primary = data.raw.fluid["nullius-carbon-dioxide"].flow_color,
      secondary = data.raw.fluid["nullius-brine"].flow_color
    },
    energy_required = 15,
    ingredients = {
      {type="fluid", name="nullius-carbon-dioxide", amount=80},
      {type="fluid", name="nullius-brine", amount=30},
      {type="fluid", name="nullius-ammonia", amount=8}
    },
    results = {
      {type="item", name="nullius-soda-ash", amount=1},
      {type="fluid", name="nullius-hydrogen-chloride", amount=15}
    },
    main_product = "nullius-soda-ash"
  },
  {
    type = "recipe",
    name = "nullius-soda-ash-2",
    localised_name = {"recipe-name.nullius-soda-ash-2"},
    icons = {
      {
        icon = "__angelspetrochem__/graphics/icons/solid-sodium-carbonate.png",
        icon_size = 32
      },
      {
        icon = "__angelspetrochem__/graphics/icons/solid-sodium-sulfate.png",
        icon_size = 32,
        scale = 0.5,
        shift = {9, -9}
      }
    },
    enabled = false,
    category = "distillation",
    order = "nullius-fc",
    crafting_machine_tint = {
      primary = data.raw.fluid["nullius-sulfur-dioxide"].flow_color },
    energy_required = 5,
    ingredients = {
      {type="item", name="nullius-sodium-sulfate", amount=4},
      {type="item", name="nullius-graphite", amount=3},
      {type="item", name="nullius-crushed-limestone", amount=4},
      {type="fluid", name="nullius-acid-hydrochloric", amount=80},
      {type="fluid", name="nullius-oxygen", amount=50}
    },
    results = {
      {type="item", name="nullius-soda-ash", amount=7},
      {type="fluid", name="nullius-calcium-chloride-solution", amount=60},
      {type="fluid", name="nullius-carbon-dioxide", amount=80},
      {type="fluid", name="nullius-sulfur-dioxide", amount=10}
    },
    main_product = "nullius-soda-ash"
  },
  {
    type = "recipe",
    name = "nullius-boxed-soda-ash",
    enabled = false,
    category = "distillation",
    subgroup = "boxed-sodium",
    order = "nullius-f",
    crafting_machine_tint = {
      primary = data.raw.fluid["nullius-sulfur-dioxide"].flow_color },
    energy_required = 25,
    ingredients = {
      {type="item", name="nullius-box-sodium-sulfate", amount=4},
      {type="item", name="nullius-box-graphite", amount=3},
      {type="item", name="nullius-box-crushed-limestone", amount=4},
      {type="fluid", name="nullius-acid-hydrochloric", amount=400},
      {type="fluid", name="nullius-oxygen", amount=250}
    },
    results = {
      {type="item", name="nullius-box-soda-ash", amount=7},
      {type="fluid", name="nullius-calcium-chloride-solution", amount=300},
      {type="fluid", name="nullius-carbon-dioxide", amount=400},
      {type="fluid", name="nullius-sulfur-dioxide", amount=50}
    },
    main_product = "nullius-box-soda-ash"
  },

  {
    type = "recipe",
    name = "nullius-sodium-sulfate-1",
    localised_name = {"recipe-name.nullius-sodium-sulfate-1"},
    icons = {
      {
        icon = "__angelspetrochem__/graphics/icons/solid-sodium-sulfate.png",
        icon_size = 32
      },
      {
        icon = ICONPATH .. "salt.png",
        icon_size = 64,
        scale = 0.25,
        shift = {7, -10}
      }
    },
    enabled = false,
    category = "basic-chemistry",
    order = "nullius-eb",
    crafting_machine_tint = {
      primary = data.raw.fluid["nullius-acid-sulfuric"].flow_color,
      secondary = data.raw.fluid["nullius-hydrogen-chloride"].flow_color
    },
    energy_required = 2,
    ingredients = {
      {type="fluid", name="nullius-acid-sulfuric", amount=15, fluidbox_index=1},
      {type="item", name="nullius-salt", amount=2}
    },
    results = {
      {type="item", name="nullius-sodium-sulfate", amount=1},
      {type="fluid", name="nullius-acid-hydrochloric", amount=10}
    },
    main_product = "nullius-sodium-sulfate"
  },
  {
    type = "recipe",
    name = "nullius-boxed-sodium-sulfate-1",
    localised_name = {"", {"item-name.nullius-box", {"item-name.nullius-sodium-sulfate"}}, " ", 1},
    icons = {
      {
        icon = ICONPATH .. "crate.png",
        icon_size = 64
      },
      {
        icon = "__angelspetrochem__/graphics/icons/solid-sodium-sulfate.png",
        icon_size = 32,
        scale = 0.9
      },
      {
        icon = ICONPATH .. "salt.png",
        icon_size = 64,
        scale = 0.22,
        shift = {6, -9}
      }
    },
    enabled = false,
    category = "basic-chemistry",
    subgroup = "boxed-sodium",
    order = "nullius-eb",
    crafting_machine_tint = {
      primary = data.raw.fluid["nullius-acid-sulfuric"].flow_color,
      secondary = data.raw.fluid["nullius-hydrogen-chloride"].flow_color
    },
    energy_required = 10,
    ingredients = {
      {type="fluid", name="nullius-acid-sulfuric", amount=75, fluidbox_index=1},
      {type="item", name="nullius-box-salt", amount=2}
    },
    results = {
      {type="item", name="nullius-box-sodium-sulfate", amount=1},
      {type="fluid", name="nullius-acid-hydrochloric", amount=50}
    },
    main_product = "nullius-box-sodium-sulfate"
  },
  {
    type = "recipe",
    name = "nullius-sodium-sulfate-2",
    localised_name = {"recipe-name.nullius-sodium-sulfate-2"},
    icons = {
      {
        icon = "__angelspetrochem__/graphics/icons/solid-sodium-sulfate.png",
        icon_size = 32
      },
      {
        icon = ICONPATH .. "lye.png",
        icon_size = 64,
        scale = 0.25,
        shift = {9, -9}
      }
    },
    enabled = false,
    category = "basic-chemistry",
    order = "nullius-ec",
    crafting_machine_tint = {
      primary = data.raw.fluid["nullius-acid-sulfuric"].flow_color,
      secondary = data.raw.fluid["nullius-caustic-solution"].flow_color
    },
    energy_required = 2,
    ingredients = {
      {type="fluid", name="nullius-acid-sulfuric", amount=30, fluidbox_index=1},
      {type="item", name="nullius-sodium-hydroxide", amount=5}
    },
    results = {
      {type="item", name="nullius-sodium-sulfate", amount=2},
      {type="fluid", name="nullius-wastewater", amount=15}
    },
    main_product = "nullius-sodium-sulfate"
  },
  {
    type = "recipe",
    name = "nullius-boxed-sodium-sulfate-2",
    localised_name = {"", {"item-name.nullius-box", {"item-name.nullius-sodium-sulfate"}}, " ", 2},
    icons = {
      {
        icon = ICONPATH .. "crate.png",
        icon_size = 64
      },
      {
        icon = "__angelspetrochem__/graphics/icons/solid-sodium-sulfate.png",
        icon_size = 32,
        scale = 0.9
      },
      {
        icon = ICONPATH .. "lye.png",
        icon_size = 64,
        scale = 0.23,
        shift = {8, -8}
      }
    },
    enabled = false,
    category = "basic-chemistry",
    subgroup = "boxed-sodium",
    order = "nullius-ec",
    crafting_machine_tint = {
      primary = data.raw.fluid["nullius-acid-sulfuric"].flow_color,
      secondary = data.raw.fluid["nullius-caustic-solution"].flow_color
    },
    energy_required = 10,
    ingredients = {
      {type="fluid", name="nullius-acid-sulfuric", amount=150, fluidbox_index=1},
      {type="item", name="nullius-box-sodium-hydroxide", amount=5}
    },
    results = {
      {type="item", name="nullius-box-sodium-sulfate", amount=2},
      {type="fluid", name="nullius-wastewater", amount=75}
    },
    main_product = "nullius-box-sodium-sulfate"
  },

  {
    type = "recipe",
    name = "nullius-air-filtration",
    enabled = true,
    hide_from_player_crafting = true,
    category = "air-filtration",
    subgroup = "air-filtration",
    order = "nullius-bb",
    energy_required = 3,
    ingredients = {},
    results = {
      {type="fluid", name="nullius-air", amount=150},
    },
    main_product = "nullius-air"
  },
  {
    type = "recipe",
    name = "nullius-freshwater",
    enabled = true,
    hide_from_player_crafting = true,
    category = "water-pumping",
    subgroup = "nullius-water-treatment",
    energy_required = 2,
    ingredients = {},
    results = {
      {type="fluid", name="nullius-freshwater", amount=200},
    },
    main_product = "nullius-freshwater"
  },
  {
    type = "recipe",
    name = "nullius-seawater",
    enabled = true,
    hide_from_player_crafting = true,
	crafting_machine_tint = { primary =
	    data.raw.fluid["nullius-seawater"].flow_color },
    category = "seawater-pumping",
    subgroup = "nullius-water-treatment",
    energy_required = 2,
    ingredients = {},
    results = {
      {type="fluid", name="nullius-seawater", amount=250},
    },
    main_product = "nullius-seawater"
  },
  {
    type = "recipe",
    name = "nullius-seawater-filtration",
    localised_name = {"recipe-name.nullius-seawater-filtration"},
    order = "nullius-b",
    enabled = false,
    category = "nullius-water-treatment",
    subgroup = "nullius-water-treatment",
    energy_required = 1,
    ingredients = {
      {type="fluid", name="nullius-seawater", amount=100}
    },
    results = {
      {type="fluid", name="nullius-saline", amount=70},
      {type="fluid", name="nullius-wastewater", amount=20},
    },
    main_product = "nullius-saline"
  },
  {
    type = "recipe",
    name = "nullius-freshwater-filtration",
    localised_name = {"recipe-name.nullius-freshwater-filtration"},
    order = "nullius-c",
    enabled = false,
    category = "nullius-water-treatment",
    subgroup = "nullius-water-treatment",
    energy_required = 1,
    ingredients = {
      {type="fluid", name="nullius-freshwater", amount=200}
    },
    results = {
      {type="fluid", name="nullius-water", amount=170},
      {type="fluid", name="nullius-wastewater", amount=20},
    },
    main_product = "nullius-water"
  },
  {
    type = "recipe",
    name = "nullius-wastewater-filtration",
    localised_name = {"recipe-name.nullius-wastewater-filtration"},
    icons = angelsmods.functions.create_liquid_recipe_icon(
      {{FLUIDPATH .. "sludge.png", 64},
        {"__base__/graphics/icons/fluid/water.png", 64}},
      {element_tint["waste"], element_tint["sludge"], element_tint["saline"]},
      nil
    ),
    enabled = false,
	allow_decomposition = false,
    category = "nullius-water-treatment",
    subgroup = "waste-management",
    order = "nullius-eb",
    energy_required = 1,
    ingredients = {
      {type="fluid", name="nullius-wastewater", amount=200}
    },
    results = {
      {type="fluid", name="nullius-saline", amount=150},
      {type="fluid", name="nullius-sludge", amount=25}
    }
  },
  {
    type = "recipe",
    name = "nullius-heavy-water",
    enabled = false,
	allow_decomposition = false,
    category = "distillation",
    subgroup = "waste-management",
    order = "nullius-ecb",
    energy_required = 5,
    ingredients = {
      {type="fluid", name="nullius-wastewater", amount=750}
    },
    results = {
      {type="fluid", name="nullius-saline", amount=500},
      {type="fluid", name="nullius-heavy-water", amount=1},
      {type="fluid", name="nullius-sludge", amount=75}
    },
    main_product = "nullius-heavy-water"
  },
  {
    type = "recipe",
    name = "nullius-sludge-dehydration",
	localised_name = {"recipe-name.nullius-dehydration", {"fluid-name.nullius-sludge"}},
	icons = {
      {
	    icon = "__angelssmelting__/graphics/icons/powder-tungsten.png",
        icon_size = 64,
        icon_mipmaps = 4
      },
      {
        icon = FLUIDPATH .. "sludge.png",
        icon_size = 64,
        scale = 0.3,
        shift = {-8, -6}
      }
    },
    enabled = false,
	allow_decomposition = false,
    category = "pressure-boiling",
    subgroup = "waste-management",
    order = "nullius-ea",
    energy_required = 1,
    ingredients = {
      {type="fluid", name="nullius-sludge", amount=30}
    },
    results = {
      {type="item", name="nullius-mineral-dust", amount=2},
      {type="fluid", name="nullius-steam", amount=80},
	  {type="fluid", name="nullius-carbon-monoxide", amount=6}
    }
  },
  {
    type = "recipe",
    name = "nullius-desalination",
    localised_name = {"", {"recipe-name.nullius-desalination"}, " ", 1},
    icons = angelsmods.functions.create_liquid_recipe_icon(
      {{FLUIDPATH .. "brine.png", 64 },
        {FLUIDPATH .. "purewater.png", 64 }},
      {element_tint["saline"], element_tint["brine"], element_tint["water"]},
      nil
    ),
    enabled = false,
    category = "distillation",
    subgroup = "nullius-water-treatment",
    order = "nullius-ebb",
    crafting_machine_tint = { primary = data.raw.fluid["nullius-saline"].flow_color },
    energy_required = 1,
    ingredients = {
      {type="fluid", name="nullius-saline", amount=125}
    },
    results = {
      {type="fluid", name="nullius-water", amount=90},
      {type="fluid", name="nullius-brine", amount=30}
    }
  },
  {
    type = "recipe",
    name = "nullius-desalination-2",
    localised_name = {"", {"recipe-name.nullius-desalination"}, " ", 2},
    icons = angelsmods.functions.create_liquid_recipe_icon(
      {{FLUIDPATH .. "brine.png", 64 },
        {FLUIDPATH .. "purewater.png", 64 },
        {FLUIDPATH .. "wastewater.png", 64 }},
      {element_tint["brine"], element_tint["waste"], element_tint["water"]},
      {{"__base__/graphics/icons/fluid/steam.png", 64}}
    ),
    enabled = false,
    category = "distillation",
    subgroup = "nullius-water-treatment",
    order = "nullius-ebc",
    crafting_machine_tint = { primary = data.raw.fluid["nullius-seawater"].flow_color },
    energy_required = 1,
    ingredients = {
      {type="fluid", name="nullius-seawater", amount=220},
      {type="fluid", name="nullius-steam", amount=20}
    },
    results = {
      {type="fluid", name="nullius-water", amount=100},
      {type="fluid", name="nullius-wastewater", amount=60},
      {type="fluid", name="nullius-brine", amount=50}
    }
  },
  {
    type = "recipe",
    name = "nullius-desalination-3",
    localised_name = {"", {"recipe-name.nullius-desalination"}, " ", 3},
    icons = angelsmods.functions.create_liquid_recipe_icon(
      {{FLUIDPATH .. "purewater.png", 64 },
        {FLUIDPATH .. "brine.png", 64 },
        {FLUIDPATH .. "wastewater.png", 64 }},
      {element_tint["water"], element_tint["waste"], element_tint["brine"]},
      {{FLUIDPATH .. "steam2.png", 64}}
    ),
    enabled = false,
    category = "distillation",
    subgroup = "nullius-water-treatment",
    order = "nullius-ebd",
    crafting_machine_tint = { primary = data.raw.fluid["nullius-seawater"].flow_color },
    energy_required = 1,
    ingredients = {
      {type="fluid", name="nullius-seawater", amount=250},
      {type="fluid", name="nullius-pressure-steam", amount=7}
    },
    results = {
      {type="fluid", name="nullius-water", amount=120},
      {type="fluid", name="nullius-wastewater", amount=70},
      {type="fluid", name="nullius-brine", amount=60}
    }
  },

  {
    type = "recipe",
    name = "nullius-saline-electrolysis",
    icons = angelsmods.functions.create_liquid_recipe_icon(
        {{"__angelspetrochem__/graphics/icons/molecules/hydrogen.png", 72},
        {"__angelspetrochem__/graphics/icons/molecules/chlorine.png", 72},
        {"__angelspetrochem__/graphics/icons/molecules/oxygen.png", 72}},
      {element_tint["saline"], element_tint["hydrogen"], element_tint["chlorine"]},
      nil
    ),
    enabled = false,
    category = "nullius-electrolysis",
    subgroup = "nullius-electrolysis",
    order = "nullius-i",
    energy_required = 1,
    ingredients = {
      {type="fluid", name="nullius-saline", amount=52}
    },
    results = {
      {type="fluid", name="nullius-hydrogen", amount=110, fluidbox_index=1},
      {type="fluid", name="nullius-oxygen", amount=45, fluidbox_index=3},
      {type="fluid", name="nullius-chlorine", amount=14, fluidbox_index=2},
      {type="item", name="nullius-sodium-hydroxide", amount=1},
    }
  },
  {
    type = "recipe",
    name = "nullius-water-electrolysis",
    icons = angelsmods.functions.create_gas_recipe_icon(
        {{"__angelspetrochem__/graphics/icons/molecules/oxygen.png", 72},
        {"__angelspetrochem__/graphics/icons/molecules/hydrogen.png", 72}},
      {element_tint["water"], element_tint["oxygen"], element_tint["hydrogen"]},
      nil
    ),
    enabled = false,
    category = "nullius-electrolysis",
    subgroup = "nullius-electrolysis",
    order = "nullius-hb",
    energy_required = 1,
    ingredients = {
      {type="fluid", name="nullius-water", amount=60}
    },
    results = {
      {type="fluid", name="nullius-hydrogen", amount=140, fluidbox_index=1},
      {type="fluid", name="nullius-oxygen", amount=70, fluidbox_index=3}
    }
  },
  {
    type = "recipe",
    name = "nullius-pressure-water-electrolysis",
    icons = angelsmods.functions.create_liquid_recipe_icon(
        {{"__angelspetrochem__/graphics/icons/molecules/oxygen.png", 72},
        {"__angelspetrochem__/graphics/icons/molecules/hydrogen.png", 72}},
      {element_tint["oxygen"], element_tint["hydrogen"], element_tint["water"]},
      nil
    ),
    enabled = false,
    category = "nullius-electrolysis",
    subgroup = "nullius-electrolysis",
    order = "nullius-hd",
    energy_required = 1,
    ingredients = {
      {type="fluid", name="nullius-water", amount=55}
    },
    results = {
      {type="fluid", name="nullius-compressed-hydrogen", amount=32, fluidbox_index=1},
      {type="fluid", name="nullius-compressed-oxygen", amount=16, fluidbox_index=3}
    }
  },
  {
    type = "recipe",
    name = "nullius-steam-electrolysis",
	localised_name = {"recipe-name.nullius-electrolysis", {"fluid-name.nullius-steam"}},
    icons = angelsmods.functions.create_gas_recipe_icon(
        {{"__angelspetrochem__/graphics/icons/molecules/oxygen.png", 72},
        {"__angelspetrochem__/graphics/icons/molecules/hydrogen.png", 72}},
      {{ 56, 142, 147 }, element_tint["oxygen"], element_tint["hydrogen"]},
      {{"__base__/graphics/icons/fluid/steam.png", 64}}
    ),
    enabled = false,
    category = "nullius-electrolysis",
    subgroup = "nullius-electrolysis",
    order = "nullius-hc",
    energy_required = 1,
    ingredients = {
      {type="fluid", name="nullius-steam", amount=2000}
    },
    results = {
      {type="fluid", name="nullius-hydrogen", amount=800, fluidbox_index=1},
      {type="fluid", name="nullius-oxygen", amount=400, fluidbox_index=3}
    }
  },
  {
    type = "recipe",
    name = "nullius-pressure-steam-electrolysis",
	localised_name = {"recipe-name.nullius-pressure",
	    {"recipe-name.nullius-electrolysis", {"fluid-name.nullius-steam"}}},
    icons = angelsmods.functions.create_liquid_recipe_icon(
        {{"__angelspetrochem__/graphics/icons/molecules/oxygen.png", 72},
        {"__angelspetrochem__/graphics/icons/molecules/hydrogen.png", 72}},
      {element_tint["oxygen"], element_tint["hydrogen"], { 56, 142, 147 }},
      {{"__base__/graphics/icons/fluid/steam.png", 64}}
    ),
    enabled = false,
    category = "nullius-electrolysis",
    subgroup = "nullius-electrolysis",
    order = "nullius-he",
    energy_required = 1,
    ingredients = {
      {type="fluid", name="nullius-steam", amount=1600}
    },
    results = {
      {type="fluid", name="nullius-compressed-hydrogen", amount=160, fluidbox_index=1},
      {type="fluid", name="nullius-compressed-oxygen", amount=80, fluidbox_index=3}
    }
  },
  {
    type = "recipe",
    name = "nullius-high-pressure-steam-electrolysis",
	localised_name = {"recipe-name.nullius-electrolysis", {"fluid-name.nullius-pressure-steam"}},
    icons = angelsmods.functions.create_liquid_recipe_icon(
        {{"__angelspetrochem__/graphics/icons/molecules/oxygen.png", 72},
        {"__angelspetrochem__/graphics/icons/molecules/hydrogen.png", 72}},
      {element_tint["oxygen"], element_tint["hydrogen"], { 129, 202, 210 }},
      {{FLUIDPATH .. "steam2.png", 64}}
    ),
    enabled = false,
    category = "nullius-electrolysis",
    subgroup = "nullius-electrolysis",
    order = "nullius-hf",
    energy_required = 1,
    ingredients = {
      {type="fluid", name="nullius-pressure-steam", amount=800}
    },
    results = {
      {type="fluid", name="nullius-compressed-hydrogen", amount=250, fluidbox_index=1},
      {type="fluid", name="nullius-compressed-oxygen", amount=125, fluidbox_index=3}
    }
  },
  {
    type = "recipe",
    name = "nullius-brine-electrolysis",
    icons = angelsmods.functions.create_liquid_recipe_icon(
        {{"__angelspetrochem__/graphics/icons/molecules/hydrogen.png", 72},
        {"__angelspetrochem__/graphics/icons/molecules/chlorine.png", 72},
        {FLUIDPATH .. "sodium-hydroxide.png", 64, nil, 0.9}},
      {element_tint["brine"], element_tint["sodium"], element_tint["chlorine"]},
      nil
    ),
    enabled = false,
    category = "nullius-electrolysis",
    subgroup = "nullius-electrolysis",
    order = "nullius-j",
    energy_required = 1,
    ingredients = {
      {type="fluid", name="nullius-brine", amount=40}
    },
    results = {
      {type="fluid", name="nullius-hydrogen", amount=42, fluidbox_index=1},
      {type="fluid", name="nullius-chlorine", amount=42, fluidbox_index=3},
      {type="item", name="nullius-sodium-hydroxide", amount=3},
    }
  },
  {
    type = "recipe",
    name = "nullius-boxed-brine-electrolysis",
    localised_name = {"recipe-name.nullius-boxed", {"recipe-name.nullius-brine-electrolysis"}},
    enabled = false,
    category = "nullius-electrolysis",
    subgroup = "boxed-sodium",
    order = "nullius-cb",
    energy_required = 5,
    ingredients = {
      {type="fluid", name="nullius-brine", amount=200}
    },
    results = {
      {type="fluid", name="nullius-hydrogen", amount=210, fluidbox_index=1},
      {type="fluid", name="nullius-chlorine", amount=210, fluidbox_index=3},
      {type="item", name="nullius-box-sodium-hydroxide", amount=3},
    },
    main_product = "nullius-box-sodium-hydroxide"
  },
  {
    type = "recipe",
    name = "nullius-deuterium",
    enabled = false,
    category = "nullius-electrolysis",
	subgroup = "waste-management",
    order = "nullius-ecc",
    energy_required = 8,
    ingredients = {
      {type="fluid", name="nullius-heavy-water", amount=30}
    },
    results = {
      {type="fluid", name="nullius-deuterium", amount=60},
      {type="fluid", name="nullius-oxygen", amount=60},
      {type="fluid", name="nullius-tritium", amount=1}
    },
    main_product = "nullius-deuterium"
  },

  {
    type = "item",
    name = "nullius-salt",
    icon = ICONPATH .. "salt.png",
    icon_size = 64,
    subgroup = "sodium-product",
    order = "nullius-b",
    stack_size = 100
  },
  {
    type = "item",
    name = "nullius-sodium",
    icon = "__angelspetrochem__/graphics/icons/solid-sodium.png",
    icon_size = 32,
    subgroup = "sodium-product",
    order = "nullius-d",
    stack_size = 100
  },
  {
    type = "recipe",
    name = "nullius-salt",
    enabled = false,
    category = "distillation",
    crafting_machine_tint = { primary = data.raw.fluid["nullius-brine"].flow_color },
    energy_required = 2,
    ingredients = {
      {type="fluid", name="nullius-brine", amount=40}
    },
    results = {
      {type="item", name="nullius-salt", amount=3},
      {type="fluid", name="nullius-steam", amount=40},
      {type="fluid", name="nullius-saline", amount=15}
    },
    main_product = "nullius-salt"
  },
  {
    type = "recipe",
    name = "nullius-boxed-salt",
    enabled = false,
    category = "distillation",
    subgroup = "boxed-sodium",
    order = "nullius-bb",
    crafting_machine_tint = { primary = data.raw.fluid["nullius-brine"].flow_color },
    energy_required = 10,
    ingredients = {
      {type="fluid", name="nullius-brine", amount=200}
    },
    results = {
      {type="item", name="nullius-box-salt", amount=3},
      {type="fluid", name="nullius-steam", amount=200},
      {type="fluid", name="nullius-saline", amount=75}
    },
    main_product = "nullius-box-salt"
  },
  {
    type = "recipe",
    name = "nullius-salination",
    localised_name = {"recipe-name.nullius-salination"},
    icons = {
      {
        icon = "__base__/graphics/icons/fluid/water.png",
        icon_size = 64,
        icon_mipmaps = 4
      },
      {
        icon = ICONPATH .. "salt.png",
        icon_size = 64,
        scale = 0.21,
        shift = {-10, -11}
      }
    },
    enabled = false,
    no_productivity = true,
    show_amount_in_title = false,
    always_show_products = true,
    allow_as_intermediate = false,
    allow_decomposition = false,
    category = "nullius-water-treatment",
    order = "nullius-ec",
    energy_required = 1,
    ingredients = {
      {type="fluid", name="nullius-freshwater", amount=200},
      {type="item", name="nullius-salt", amount=5}
    },
    results = {
      {type="fluid", name="nullius-seawater", amount=200}
    }
  },
  {
    type = "recipe",
    name = "nullius-boxed-salination",
    localised_name = {"recipe-name.nullius-boxed", {"recipe-name.nullius-salination"}},
    icons = {
      {
        icon = ICONPATH .. "crate.png",
        icon_size = 64
      },
      {
        icon = "__base__/graphics/icons/fluid/water.png",
        icon_size = 64,
        scale = 0.45
      }
    },
    enabled = false,
    no_productivity = true,
    show_amount_in_title = false,
    always_show_products = true,
    allow_as_intermediate = false,
    allow_decomposition = false,
    category = "nullius-water-treatment",
    subgroup = "boxed-fluid",
    order = "nullius-d",
    energy_required = 1,
    ingredients = {
      {type="fluid", name="nullius-freshwater", amount=200},
      {type="item", name="nullius-box-salt", amount=1}
    },
    results = {
      {type="fluid", name="nullius-seawater", amount=200}
    }
  },

  {
    type = "recipe",
    name = "nullius-salt-electrolysis",
    localised_name = {"recipe-name.nullius-salt-electrolysis"},
    icons = {
      {
        icon = "__angelspetrochem__/graphics/icons/solid-sodium.png",
        icon_size = 32
      },
      {
        icon = ICONPATH .. "salt.png",
        icon_size = 64,
        scale = 0.25,
        shift = {7, -10}
      }
    },
    enabled = false,
    category = "nullius-electrolysis",
    order = "nullius-db",
    energy_required = 2,
    ingredients = {
      {type="item", name="nullius-salt", amount=3}
    },
    results = {
      {type="item", name="nullius-sodium", amount=2},
      {type="fluid", name="nullius-chlorine", amount=25, fluidbox_index=1}
    },
    main_product = "nullius-sodium"
  },
  {
    type = "recipe",
    name = "nullius-boxed-sodium-1",
    localised_name = {"", {"item-name.nullius-box", {"item-name.nullius-sodium"}}, " ", 1},
    icons = {
      {
        icon = ICONPATH .. "crate.png",
        icon_size = 64
      },
      {
        icon = "__angelspetrochem__/graphics/icons/solid-sodium.png",
        icon_size = 32,
        scale = 0.9
      },
      {
        icon = ICONPATH .. "salt.png",
        icon_size = 64,
        scale = 0.22,
        shift = {6, -9}
      }
    },
    enabled = false,
    category = "nullius-electrolysis",
    subgroup = "boxed-sodium",
    order = "nullius-db",
    energy_required = 10,
    ingredients = {
      {type="item", name="nullius-box-salt", amount=3}
    },
    results = {
      {type="item", name="nullius-box-sodium", amount=2},
      {type="fluid", name="nullius-chlorine", amount=125, fluidbox_index=1}
    },
    main_product = "nullius-box-sodium"
  },
  {
    type = "recipe",
    name = "nullius-sodium-hydroxide-electrolysis",
    localised_name = {"recipe-name.nullius-sodium-hydroxide-electrolysis"},
    icons = {
      {
        icon = "__angelspetrochem__/graphics/icons/solid-sodium.png",
        icon_size = 32
      },
      {
        icon = ICONPATH .. "lye.png",
        icon_size = 64,
        scale = 0.25,
        shift = {9, -9}
      }
    },
    enabled = false,
    category = "nullius-electrolysis",
    order = "nullius-dc",
    energy_required = 2,
    ingredients = {
      {type="item", name="nullius-sodium-hydroxide", amount=4}
    },
    results = {
      {type="item", name="nullius-sodium", amount=3},
      {type="fluid", name="nullius-oxygen", amount=30, fluidbox_index=3},
      {type="fluid", name="nullius-water", amount=15, fluidbox_index=1}
    },
    main_product = "nullius-sodium"
  },
  {
    type = "recipe",
    name = "nullius-boxed-sodium-2",
    localised_name = {"", {"item-name.nullius-box", {"item-name.nullius-sodium"}}, " ", 2},
    icons = {
      {
        icon = ICONPATH .. "crate.png",
        icon_size = 64
      },
      {
        icon = "__angelspetrochem__/graphics/icons/solid-sodium.png",
        icon_size = 32,
        scale = 0.9
      },
      {
        icon = ICONPATH .. "lye.png",
        icon_size = 64,
        scale = 0.23,
        shift = {8, -8}
      }
    },
    enabled = false,
    category = "nullius-electrolysis",
    subgroup = "boxed-sodium",
    order = "nullius-dc",
    energy_required = 10,
    ingredients = {
      {type="item", name="nullius-box-sodium-hydroxide", amount=4}
    },
    results = {
      {type="item", name="nullius-box-sodium", amount=3},
      {type="fluid", name="nullius-oxygen", amount=150, fluidbox_index=3},
      {type="fluid", name="nullius-water", amount=75, fluidbox_index=1}
    },
    main_product = "nullius-box-sodium"
  },

  {
    type = "item",
    name = "nullius-lithium-chloride",
    icons = {{
      icon = ICONPATH .. "sugar.png",
      icon_size = 64,
      tint = { 0.9, 0.75, 1 }
    }},
    subgroup = "sodium-product",
    order = "nullius-j",
    stack_size = 100
  },
  {
    type = "item",
    name = "nullius-lithium",
    icon = ICONPATH .. "lithium.png",
    icon_size = 64,
    subgroup = "sodium-product",
    order = "nullius-k",
    stack_size = 100
  },
  {
    type = "recipe",
    name = "nullius-lithium-chloride",
    enabled = false,
    category = "nullius-water-treatment",
    crafting_machine_tint = { primary = {0.9, 0.75, 1} },
    energy_required = 32,
    ingredients = {
      {type="fluid", name="nullius-brine", amount=320}
    },
    results = {
      {type="item", name="nullius-salt", amount=18},
      {type="item", name="nullius-lithium-chloride", amount=1},
	  {type="item", name="nullius-calcium-chloride", amount=1},
      {type="fluid", name="nullius-saline", amount=120},
      {type="fluid", name="nullius-steam", amount=200}
    },
    main_product = "nullius-lithium-chloride"
  },
  {
    type = "recipe",
    name = "nullius-boxed-lithium-chloride",
    enabled = false,
    category = "nullius-water-treatment",
    subgroup = "boxed-sodium",
    order = "nullius-bc",
    crafting_machine_tint = { primary = {0.95, 0.8, 1} },
    energy_required = 160,
    ingredients = {
      {type="fluid", name="nullius-brine", amount=1600}
    },
    results = {
      {type="item", name="nullius-box-salt", amount=18},
      {type="item", name="nullius-box-lithium-chloride", amount=1},
	  {type="item", name="nullius-box-calcium-chloride", amount=1},
      {type="fluid", name="nullius-saline", amount=600},
      {type="fluid", name="nullius-steam", amount=1000}
    },
    main_product = "nullius-box-lithium-chloride"
  },
  {
    type = "recipe",
    name = "nullius-legacy-lithium-chloride",
    enabled = false,
	hidden = true,
    allow_decomposition = false,
    allow_as_intermediate = false,
    category = "nullius-water-treatment",
    crafting_machine_tint = { primary = {0.9, 0.75, 1} },
    energy_required = 32,
    ingredients = {
      {type="fluid", name="nullius-brine", amount=320}
    },
    results = {
      {type="item", name="nullius-salt", amount=20},
      {type="item", name="nullius-lithium-chloride", amount=1},
      {type="fluid", name="nullius-saline", amount=120},
      {type="fluid", name="nullius-steam", amount=200}
    },
    main_product = "nullius-lithium-chloride"
  },
  {
    type = "recipe",
    name = "nullius-legacy-boxed-lithium-chloride",
    enabled = false,
	hidden = true,
    allow_decomposition = false,
    allow_as_intermediate = false,
    category = "nullius-water-treatment",
    subgroup = "boxed-sodium",
    order = "nullius-bc",
    crafting_machine_tint = { primary = {0.95, 0.8, 1} },
    energy_required = 160,
    ingredients = {
      {type="fluid", name="nullius-brine", amount=1600}
    },
    results = {
      {type="item", name="nullius-box-salt", amount=20},
      {type="item", name="nullius-box-lithium-chloride", amount=1},
      {type="fluid", name="nullius-saline", amount=600},
      {type="fluid", name="nullius-steam", amount=1000}
    },
    main_product = "nullius-box-lithium-chloride"
  },
  {
    type = "recipe",
    name = "nullius-lithium",
    enabled = false,
    category = "nullius-electrolysis",
    energy_required = 2,
    ingredients = {
      {type="item", name="nullius-lithium-chloride", amount=2}
    },
    results = {
      {type="item", name="nullius-lithium", amount=1},
      {type="fluid", name="nullius-chlorine", amount=20, fluidbox_index=1}
    },
    main_product = "nullius-lithium"
  },
  {
    type = "recipe",
    name = "nullius-boxed-lithium",
    enabled = false,
    category = "nullius-electrolysis",
    subgroup = "boxed-sodium",
    energy_required = 10,
    ingredients = {
      {type="item", name="nullius-box-lithium-chloride", amount=2}
    },
    results = {
      {type="item", name="nullius-box-lithium", amount=1},
      {type="fluid", name="nullius-chlorine", amount=100, fluidbox_index=1}
    },
    main_product = "nullius-box-lithium"
  },

  {
    type = "recipe",
    name = "nullius-air-separation-1",
    icons = angelsmods.functions.create_gas_recipe_icon(
        {{"__angelspetrochem__/graphics/icons/molecules/nitrogen.png", 64},
        {"__angelspetrochem__/graphics/icons/molecules/carbon-dioxide.png", 72}},
      {element_tint["air"], element_tint["nitrogen"], element_tint["carbon"]},
      nil
    ),
    enabled = false,
    allow_decomposition = false,
    category = "distillation",
    subgroup = "air-filtration",
    order = "nullius-cb",
    crafting_machine_tint = { primary = data.raw.fluid["nullius-air"].flow_color },
    energy_required = 1,
    ingredients = {
      {type="fluid", name="nullius-air", amount=150}
    },
    results = {
      {type="fluid", name="nullius-nitrogen", amount=90},
      {type="fluid", name="nullius-carbon-dioxide", amount=40}
    }
  },
  {
    type = "recipe",
    name = "nullius-air-separation-2",
    icons = angelsmods.functions.create_gas_recipe_icon(
        {{"__angelspetrochem__/graphics/icons/molecules/nitrogen.png", 64},
        {"__angelspetrochem__/graphics/icons/molecules/carbon-dioxide.png", 72}},
      {element_tint["air"], element_tint["carbon"], element_tint["residual"]},
      nil
    ),
    enabled = false,
    allow_decomposition = false,
    category = "distillation",
    subgroup = "air-filtration",
    order = "nullius-cc",
    crafting_machine_tint = { primary = {r = 62, g = 154, b = 247} },
    energy_required = 1,
    ingredients = {
      {type="fluid", name="nullius-air", amount=100}
    },
    results = {
      {type="fluid", name="nullius-nitrogen", amount=66},
      {type="fluid", name="nullius-residual-gas", amount=3},
      {type="fluid", name="nullius-carbon-dioxide", amount=30}
    }
  },
  {
    type = "recipe",
    name = "nullius-pressure-air-separation",
    icons = angelsmods.functions.create_liquid_recipe_icon(
        {{"__angelspetrochem__/graphics/icons/molecules/nitrogen.png", 64},
        {"__angelspetrochem__/graphics/icons/molecules/carbon-dioxide.png", 72}},
      {element_tint["air"], element_tint["carbon"], element_tint["residual"]},
      nil
    ),
    enabled = false,
    allow_decomposition = false,
    category = "distillation",
    subgroup = "air-filtration",
    order = "nullius-cd",
    crafting_machine_tint = { primary = {r = 62, g = 154, b = 247} },
    energy_required = 2,
    ingredients = {
      {type="fluid", name="nullius-compressed-air", amount=100}
    },
    results = {
      {type="fluid", name="nullius-compressed-nitrogen", amount=66},
      {type="fluid", name="nullius-compressed-residual-gas", amount=3},
      {type="fluid", name="nullius-compressed-carbon-dioxide", amount=30}
    }
  },
  {
    type = "recipe",
    name = "nullius-oxygen-separation",
    icons = angelsmods.functions.create_gas_recipe_icon(
        {{"__angelspetrochem__/graphics/icons/molecules/oxygen.png", 72},
        {"__angelspetrochem__/graphics/icons/molecules/carbon-dioxide.png", 72}},
      {element_tint["oxygen"], element_tint["carbon"], element_tint["residual"]},
      nil
    ),
    enabled = false,
    allow_decomposition = false,
    category = "distillation",
    subgroup = "air-filtration",
    order = "nullius-cob",
	crafting_machine_tint = { primary = data.raw.fluid["nullius-nitrogen"].flow_color },
    energy_required = 4,
    ingredients = {
      {type="fluid", name="nullius-air", amount=400}
    },
    results = {
      {type="fluid", name="nullius-oxygen", amount=100},
      {type="fluid", name="nullius-residual-gas", amount=12},
      {type="fluid", name="nullius-carbon-dioxide", amount=80}
    }
  },
  {
    type = "recipe",
    name = "nullius-pressure-oxygen-separation",
    icons = angelsmods.functions.create_liquid_recipe_icon(
        {{"__angelspetrochem__/graphics/icons/molecules/oxygen.png", 72},
        {"__angelspetrochem__/graphics/icons/molecules/carbon-dioxide.png", 72}},
      {element_tint["oxygen"], element_tint["carbon"], element_tint["residual"]},
      nil
    ),
    enabled = false,
    allow_decomposition = false,
    category = "distillation",
    subgroup = "air-filtration",
    order = "nullius-coc",
	crafting_machine_tint = { primary = data.raw.fluid["nullius-compressed-nitrogen"].flow_color },
    energy_required = 3,
    ingredients = {
      {type="fluid", name="nullius-compressed-air", amount=180}
    },
    results = {
      {type="fluid", name="nullius-compressed-oxygen", amount=50},
      {type="fluid", name="nullius-compressed-residual-gas", amount=6},
      {type="fluid", name="nullius-compressed-carbon-dioxide", amount=40}
    }
  },
  {
    type = "recipe",
    name = "nullius-residual-gas",
    localised_name = {"fluid-name.nullius-residual-gas"},
    icons = angelsmods.functions.create_liquid_recipe_icon(nil,
      {element_tint["residual"], element_tint["air"], element_tint["residual"]},
      nil
    ),
    enabled = false,
	allow_decomposition = false,
    allow_as_intermediate = false,
    category = "distillation",
    subgroup = "air-filtration",
    order = "nullius-cr",
    crafting_machine_tint = { primary = {r = 77, g = 160, b = 244} },
    energy_required = 1,
    ingredients = {
      {type="fluid", name="nullius-compressed-air", amount=60}
    },
    results = {
      {type="fluid", name="nullius-air", amount=120},
      {type="fluid", name="nullius-compressed-nitrogen", amount=20},
      {type="fluid", name="nullius-compressed-residual-gas", amount=4}
    },
    main_product = "nullius-compressed-residual-gas"
  },
  {
    type = "recipe",
    name = "nullius-residual-separation",
    icons = angelsmods.functions.create_gas_recipe_icon(
        {{FLUIDPATH .. "atom.png", 64, nil, nil, element_tint["argon"]},
        {FLUIDPATH .. "purewater.png", 64}},
      {element_tint["residual"], element_tint["argon"], element_tint["water"]},
      nil
    ),
    enabled = false,
    allow_as_intermediate = false,
    category = "distillation",
    subgroup = "air-filtration",
    order = "nullius-db",
    crafting_machine_tint = { primary = data.raw.fluid["nullius-residual-gas"].flow_color },
    energy_required = 5,
    ingredients = {
      {type="fluid", name="nullius-residual-gas", amount=50}
    },
    results = {
      {type="fluid", name="nullius-argon", amount=20},
      {type="fluid", name="nullius-trace-gas", amount=2},
      {type="fluid", name="nullius-water", amount=3}
    }
  },
  {
    type = "recipe",
    name = "nullius-pressure-residual-separation",
    icons = angelsmods.functions.create_liquid_recipe_icon(
        {{FLUIDPATH .. "atom.png", 64, nil, nil, element_tint["argon"]},
        {FLUIDPATH .. "purewater.png", 64}},
      {element_tint["residual"], element_tint["argon"], element_tint["water"]},
      nil
    ),
    enabled = false,
    allow_as_intermediate = false,
    category = "distillation",
    subgroup = "air-filtration",
    order = "nullius-dc",
    crafting_machine_tint = { primary = data.raw.fluid["nullius-residual-gas"].flow_color },
    energy_required = 10,
    ingredients = {
      {type="fluid", name="nullius-compressed-residual-gas", amount=50}
    },
    results = {
      {type="fluid", name="nullius-compressed-argon", amount=20},
      {type="fluid", name="nullius-compressed-trace-gas", amount=2},
      {type="fluid", name="nullius-steam", amount=28}
    }
  },
  {
    type = "recipe",
    name = "nullius-trace-separation",
    icons = angelsmods.functions.create_gas_recipe_icon(
        {{FLUIDPATH .. "atom.png", 64, nil, nil, element_tint["helium"]},
        {"__angelspetrochem__/graphics/icons/molecules/methane.png", 72}},
      {element_tint["trace"], element_tint["helium"], element_tint["methane"]},
      nil
    ),
    enabled = false,
    allow_as_intermediate = false,
    category = "distillation",
    subgroup = "air-filtration",
    order = "nullius-eb",
    crafting_machine_tint = { primary = data.raw.fluid["nullius-trace-gas"].flow_color },
    energy_required = 2,
    ingredients = {
      {type="fluid", name="nullius-trace-gas", amount=6}
    },
    results = {
      {type="fluid", name="nullius-helium", amount=3},
      {type="fluid", name="nullius-volcanic-gas", amount=1},
      {type="fluid", name="nullius-methane", amount=2}
    }
  },
  {
    type = "recipe",
    name = "nullius-pressure-trace-separation",
    icons = angelsmods.functions.create_liquid_recipe_icon(
        {{FLUIDPATH .. "atom.png", 64, nil, nil, element_tint["helium"]},
        {"__angelspetrochem__/graphics/icons/molecules/methane.png", 72}},
      {element_tint["trace"], element_tint["helium"], element_tint["methane"]},
      nil
    ),
    enabled = false,
    allow_as_intermediate = false,
    category = "distillation",
    subgroup = "air-filtration",
    order = "nullius-ec",
    crafting_machine_tint = { primary = data.raw.fluid["nullius-trace-gas"].flow_color },
    energy_required = 10,
    ingredients = {
      {type="fluid", name="nullius-compressed-trace-gas", amount=15}
    },
    results = {
      {type="fluid", name="nullius-compressed-helium", amount=12},
      {type="fluid", name="nullius-volcanic-gas", amount=10},
      {type="fluid", name="nullius-compressed-methane", amount=5}
    }
  },
  {
    type = "recipe",
    name = "nullius-volcanic-separation-1",
    localised_name = {"", {"recipe-name.nullius-volcanic-separation"}, " ", 1},
    icons = angelsmods.functions.create_gas_recipe_icon(
        {{"__angelspetrochem__/graphics/icons/molecules/sulfur-dioxide.png", 72},
        {"__angelspetrochem__/graphics/icons/molecules/carbon-monoxide.png", 72}},
      {element_tint["volcanic"], element_tint["sulfur"], element_tint["carbon"]},
      nil
    ),
    enabled = false,
	allow_decomposition = false,
    category = "distillation",
    subgroup = "inorganic-chemistry",
    order = "nullius-eb",
    crafting_machine_tint = { primary = data.raw.fluid["nullius-volcanic-gas"].flow_color },
    energy_required = 1,
    ingredients = {
      {type="fluid", name="nullius-volcanic-gas", amount=40}
    },
    results = {
      {type="fluid", name="nullius-sulfur-dioxide", amount=8},
      {type="fluid", name="nullius-air", amount=12},
      {type="fluid", name="nullius-carbon-monoxide", amount=16}
    }
  },
  {
    type = "recipe",
    name = "nullius-volcanic-separation-2",
    localised_name = {"", {"recipe-name.nullius-volcanic-separation"}, " ", 2},
    icons = angelsmods.functions.create_gas_recipe_icon(
        {{"__angelspetrochem__/graphics/icons/molecules/sulfur-dioxide.png", 72},
        {"__angelspetrochem__/graphics/icons/molecules/carbon-monoxide.png", 72}},
      {element_tint["sulfur"], element_tint["carbon"], element_tint["boron"]},
      nil
    ),
    enabled = false,
	allow_decomposition = false,
    category = "distillation",
    subgroup = "inorganic-chemistry",
    order = "nullius-ec",
    crafting_machine_tint = { primary = data.raw.fluid["nullius-volcanic-gas"].flow_color },
    energy_required = 3,
    ingredients = {
      {type="fluid", name="nullius-volcanic-gas", amount=80}
    },
    results = {
      {type="fluid", name="nullius-sulfur-dioxide", amount=16},
      {type="fluid", name="nullius-air", amount=24},
      {type="fluid", name="nullius-carbon-monoxide", amount=32},
      {type="item", name="nullius-acid-boric", amount=1}
    }
  },
  {
    type = "recipe",
    name = "nullius-boxed-volcanic",
	localised_name = {"", {"recipe-name.nullius-boxed",
	    {"recipe-name.nullius-volcanic-separation"}}, " ", 1},
    enabled = false,
	allow_decomposition = false,
    category = "distillation",
    subgroup = "boxed-fluid",
    order = "nullius-bb",
    crafting_machine_tint = { primary = data.raw.fluid["nullius-volcanic-gas"].flow_color },
    energy_required = 15,
    ingredients = {
      {type="fluid", name="nullius-volcanic-gas", amount=400}
    },
    results = {
      {type="fluid", name="nullius-sulfur-dioxide", amount=80},
      {type="fluid", name="nullius-air", amount=120},
      {type="fluid", name="nullius-carbon-monoxide", amount=160},
      {type="item", name="nullius-box-acid-boric", amount=1}
    },
    main_product = "nullius-box-acid-boric"
  },
  {
    type = "recipe",
    name = "nullius-volcanic-separation-3",
    localised_name = {"", {"recipe-name.nullius-volcanic-separation"}, " ", 3},
    icons = angelsmods.functions.create_gas_recipe_icon(
        {{"__angelspetrochem__/graphics/icons/molecules/sulfur-dioxide.png", 72},
		{FLUIDPATH .. "atom.png", 64, nil, nil, element_tint["helium"]}},
      {element_tint["sulfur"], element_tint["helium"], element_tint["boron"]},
      nil
    ),
    enabled = false,
	allow_decomposition = false,
    category = "distillation",
    subgroup = "inorganic-chemistry",
    order = "nullius-ed",
    crafting_machine_tint = { primary = data.raw.fluid["nullius-volcanic-gas"].flow_color },
    energy_required = 5,
    ingredients = {
      {type="fluid", name="nullius-volcanic-gas", amount=80}
    },
    results = {
      {type="fluid", name="nullius-sulfur-dioxide", amount=16},
      {type="fluid", name="nullius-trace-gas", amount=5},
      {type="fluid", name="nullius-carbon-monoxide", amount=32},
      {type="item", name="nullius-acid-boric", amount=1}
    }
  },
  {
    type = "recipe",
    name = "nullius-boxed-volcanic-2",
    localised_name = {"", {"recipe-name.nullius-boxed",
	    {"recipe-name.nullius-volcanic-separation"}}, " ", 2},
	icons = {
      {
        icon = ICONPATH .. "crate.png",
        icon_size = 64
      },
	  {
        icon = ICONPATH .. "lye.png",
        icon_size = 64,
        tint = { 240, 172, 172 },
		scale = 0.45
      },
	  {
	    icon = FLUIDPATH .. "atom.png",
		icon_size = 64,
		scale = 0.2,
		shift = {10, 10},
	    tint = {164, 140, 204}
      }
    },
    enabled = false,
	allow_decomposition = false,
    category = "distillation",
    subgroup = "boxed-fluid",
    order = "nullius-bc",
    crafting_machine_tint = { primary = data.raw.fluid["nullius-volcanic-gas"].flow_color },
    energy_required = 25,
    ingredients = {
      {type="fluid", name="nullius-volcanic-gas", amount=400}
    },
    results = {
      {type="fluid", name="nullius-sulfur-dioxide", amount=80},
      {type="fluid", name="nullius-trace-gas", amount=25},
      {type="fluid", name="nullius-carbon-monoxide", amount=160},
      {type="item", name="nullius-box-acid-boric", amount=1}
    },
    main_product = "nullius-box-acid-boric"
  },

  {
    type = "recipe",
    name = "nullius-carbon-dioxide-to-monoxide",
    localised_name = {"recipe-name.nullius-carbon-dioxide-to-monoxide"},
    icons = angelsmods.functions.create_gas_recipe_icon(
        {{"__angelspetrochem__/graphics/icons/molecules/carbon-monoxide.png", 72}},
      {element_tint["carbon"], element_tint["carbon"], element_tint["oxygen"]},
      {{"__angelspetrochem__/graphics/icons/molecules/carbon-dioxide.png", 72}}
    ),
    enabled = false,
    category = "basic-chemistry",
    subgroup = "carbon",
    order = "nullius-bb",
    crafting_machine_tint = {
      primary = data.raw.fluid["nullius-carbon-dioxide"].flow_color,
      secondary = data.raw.fluid["nullius-hydrogen"].flow_color
    },
    energy_required = 1,
    ingredients = {
      {type="fluid", name="nullius-carbon-dioxide", amount=40, fluidbox_index=1},
      {type="fluid", name="nullius-hydrogen", amount=40, fluidbox_index=2}
    },
    results = {
      {type="fluid", name="nullius-carbon-monoxide", amount=26},
      {type="fluid", name="nullius-water", amount=6}
    },
    main_product = "nullius-carbon-monoxide"
  },
  {
    type = "recipe",
    name = "nullius-pressure-carbon-monoxide",
    icons = angelsmods.functions.create_liquid_recipe_icon(
        {{"__angelspetrochem__/graphics/icons/molecules/carbon-monoxide.png", 72}},
      {element_tint["carbon"], element_tint["carbon"], element_tint["oxygen"]},
      {{"__angelspetrochem__/graphics/icons/molecules/carbon-dioxide.png", 72}}
    ),
    enabled = false,
    category = "basic-chemistry",
    subgroup = "carbon",
    order = "nullius-bc",
    crafting_machine_tint = {
      primary = data.raw.fluid["nullius-carbon-dioxide"].flow_color,
      secondary = data.raw.fluid["nullius-hydrogen"].flow_color
    },
    energy_required = 1,
    ingredients = {
      {type="fluid", name="nullius-compressed-carbon-dioxide", amount=20, fluidbox_index=1},
      {type="fluid", name="nullius-compressed-hydrogen", amount=20, fluidbox_index=2}
    },
    results = {
      {type="fluid", name="nullius-compressed-carbon-monoxide", amount=13},
      {type="fluid", name="nullius-water", amount=12}
    }
  },
  {
    type = "recipe",
    name = "nullius-carbon-monoxide-to-dioxide",
    localised_name = {"recipe-name.nullius-carbon-monoxide-to-dioxide"},
    icons = angelsmods.functions.create_gas_recipe_icon(
        {{"__angelspetrochem__/graphics/icons/molecules/carbon-dioxide.png", 72}},
      {element_tint["carbon"], element_tint["oxygen"], element_tint["oxygen"]},
      {{"__angelspetrochem__/graphics/icons/molecules/carbon-monoxide.png", 72}}
    ),
    enabled = false,
    allow_as_intermediate = false,
    category = "basic-chemistry",
    subgroup = "carbon",
    order = "nullius-db",
    crafting_machine_tint = {
      primary = data.raw.fluid["nullius-carbon-monoxide"].flow_color,
      secondary = data.raw.fluid["nullius-water"].flow_color
    },
    energy_required = 1,
    ingredients = {
      {type="fluid", name="nullius-carbon-monoxide", amount=40, fluidbox_index=1},
      {type="fluid", name="nullius-water", amount=12, fluidbox_index=2}
    },
    results = {
      {type="fluid", name="nullius-carbon-dioxide", amount=30},
      {type="fluid", name="nullius-hydrogen", amount=30}
    },
    main_product = "nullius-carbon-dioxide"
  },
  {
    type = "recipe",
    name = "nullius-pressure-carbon-dioxide",
    icons = angelsmods.functions.create_liquid_recipe_icon(
        {{"__angelspetrochem__/graphics/icons/molecules/carbon-dioxide.png", 72}},
      {element_tint["carbon"], element_tint["oxygen"], element_tint["oxygen"]},
      {{"__angelspetrochem__/graphics/icons/molecules/carbon-monoxide.png", 72}}
    ),
    enabled = false,
    allow_as_intermediate = false,
    category = "basic-chemistry",
    subgroup = "carbon",
    order = "nullius-dc",
    crafting_machine_tint = {
      primary = data.raw.fluid["nullius-carbon-monoxide"].flow_color,
      secondary = data.raw.fluid["nullius-water"].flow_color
    },
    energy_required = 1,
    ingredients = {
      {type="fluid", name="nullius-compressed-carbon-monoxide", amount=20, fluidbox_index=1},
      {type="fluid", name="nullius-water", amount=24, fluidbox_index=2}
    },
    results = {
      {type="fluid", name="nullius-compressed-carbon-dioxide", amount=15},
      {type="fluid", name="nullius-compressed-hydrogen", amount=10}
    }
  },
  {
    type = "recipe",
    name = "nullius-carbon-monoxide-to-graphite",
    icons = {
      {
        icon = "__base__/graphics/icons/coal-dark-background.png",
        icon_size = 64,
        icon_mipmaps = 4
      },
      {
        icon = "__angelspetrochem__/graphics/icons/molecules/carbon-monoxide.png",
        icon_size = 72,
        scale = 0.25,
        shift = {-9, -10}
      }
    },
    enabled = false,
    category = "basic-chemistry",
    subgroup = "organic-material-1",
    order = "nullius-bb",
    crafting_machine_tint = {
      primary = data.raw.fluid["nullius-carbon-monoxide"].flow_color,
      secondary = data.raw.fluid["nullius-hydrogen"].flow_color
    },
    energy_required = 2,
    ingredients = {
      {type="fluid", name="nullius-carbon-monoxide", amount=28},
      {type="fluid", name="nullius-hydrogen", amount=36}
    },
    results = {
      {type="item", name="nullius-graphite", amount=1},
      {type="fluid", name="nullius-water", amount=4}
    }
  },
  {
    type = "recipe",
    name = "nullius-pressure-monoxide-to-graphite",
    icons = {
      {
        icon = "__base__/graphics/icons/coal-dark-background.png",
        icon_size = 64,
        icon_mipmaps = 4
      },
      {
        icon = "__angelspetrochem__/graphics/icons/molecules/carbon-monoxide.png",
        icon_size = 72,
        scale = 0.16,
        shift = {-11, -11}
      }
    },
    enabled = false,
    category = "basic-chemistry",
    subgroup = "organic-material-1",
    order = "nullius-bc",
    crafting_machine_tint = {
      primary = data.raw.fluid["nullius-carbon-monoxide"].flow_color,
      secondary = data.raw.fluid["nullius-hydrogen"].flow_color
    },
    energy_required = 1,
    ingredients = {
      {type="fluid", name="nullius-compressed-carbon-monoxide", amount=7},
      {type="fluid", name="nullius-compressed-hydrogen", amount=9}
    },
    results = {
      {type="item", name="nullius-graphite", amount=1},
      {type="fluid", name="nullius-water", amount=4}
    }
  },
  {
    type = "recipe",
    name = "nullius-carbon-gasification-1",
	localised_name = {"", {"recipe-name.nullius-carbon-gasification"}, " ", 1},
    icons = angelsmods.functions.create_gas_recipe_icon(
        {{"__angelspetrochem__/graphics/icons/molecules/carbon-monoxide.png", 72}},
      {element_tint["carbon"], element_tint["carbon"], element_tint["oxygen"]},
      {{"__base__/graphics/icons/coal-dark-background.png", 64}}
    ),
    enabled = false,
    allow_as_intermediate = false,
    category = "distillation",
    subgroup = "carbon",
    order = "nullius-cb",
    crafting_machine_tint = {
      primary = data.raw.fluid["nullius-carbon-monoxide"].flow_color,
      secondary = data.raw.fluid["nullius-steam"].flow_color
    },
    energy_required = 1,
    ingredients = {
      {type="item", name="nullius-graphite", amount=2},
      {type="fluid", name="nullius-steam", amount=40, fluidbox_index=2}
    },
    results = {
      {type="fluid", name="nullius-carbon-monoxide", amount=30},
      {type="fluid", name="nullius-hydrogen", amount=30}
    }
  },
  {
    type = "recipe",
    name = "nullius-carbon-gasification-2",
	localised_name = {"", {"recipe-name.nullius-carbon-gasification"}, " ", 2},
    icons = angelsmods.functions.create_liquid_recipe_icon(
        {{"__angelspetrochem__/graphics/icons/molecules/carbon-monoxide.png", 72}},
      {element_tint["carbon"], element_tint["carbon"], element_tint["oxygen"]},
      {{"__base__/graphics/icons/coal-dark-background.png", 64}}
    ),
    enabled = false,
    allow_as_intermediate = false,
    category = "distillation",
    subgroup = "carbon",
    order = "nullius-cc",
    crafting_machine_tint = {
      primary = data.raw.fluid["nullius-carbon-monoxide"].flow_color,
      secondary = data.raw.fluid["nullius-pressure-steam"].flow_color
    },
    energy_required = 1,
    ingredients = {
      {type="item", name="nullius-graphite", amount=3},
      {type="fluid", name="nullius-pressure-steam", amount=20, fluidbox_index=2}
    },
    results = {
      {type="fluid", name="nullius-compressed-carbon-monoxide", amount=12},
      {type="fluid", name="nullius-compressed-hydrogen", amount=12}
    }
  }
})

data:extend({
  {
    type = "recipe",
    name = "nullius-boxed-carbon-gasification-1",
	localised_name = {"recipe-name.nullius-boxed",
	    {"", {"recipe-name.nullius-carbon-gasification"}, " ", 1}},
	icons = {
      {
        icon = ICONPATH .. "crate.png",
        icon_size = 64
      },
	  data.raw.recipe["nullius-carbon-gasification-1"].icons[1],
	  data.raw.recipe["nullius-carbon-gasification-1"].icons[2],
	  data.raw.recipe["nullius-carbon-gasification-1"].icons[3],
	  data.raw.recipe["nullius-carbon-gasification-1"].icons[4],
	  data.raw.recipe["nullius-carbon-gasification-1"].icons[5],
	  data.raw.recipe["nullius-carbon-gasification-1"].icons[6]
    },
    enabled = false,
    allow_as_intermediate = false,
    category = "distillation",
    subgroup = "boxed-organic-1",
    order = "nullius-db",
    crafting_machine_tint = {
      primary = data.raw.fluid["nullius-carbon-monoxide"].flow_color,
      secondary = data.raw.fluid["nullius-steam"].flow_color
    },
    energy_required = 5,
    ingredients = {
      {type="item", name="nullius-box-graphite", amount=2},
      {type="fluid", name="nullius-steam", amount=200, fluidbox_index=2}
    },
    results = {
      {type="fluid", name="nullius-carbon-monoxide", amount=150},
      {type="fluid", name="nullius-hydrogen", amount=150}
    }
  },
  {
    type = "recipe",
    name = "nullius-boxed-carbon-gasification-2",
	localised_name = {"recipe-name.nullius-boxed",
	    {"", {"recipe-name.nullius-carbon-gasification"}, " ", 2}},
    icons = {
      {
        icon = ICONPATH .. "crate.png",
        icon_size = 64
      },
	  data.raw.recipe["nullius-carbon-gasification-2"].icons[1],
	  data.raw.recipe["nullius-carbon-gasification-2"].icons[2],
	  data.raw.recipe["nullius-carbon-gasification-2"].icons[3],
	  data.raw.recipe["nullius-carbon-gasification-2"].icons[4],
	  data.raw.recipe["nullius-carbon-gasification-2"].icons[5],
	  data.raw.recipe["nullius-carbon-gasification-2"].icons[6]
    },
    enabled = false,
    allow_as_intermediate = false,
    category = "distillation",
    subgroup = "boxed-organic-1",
    order = "nullius-dc",
    crafting_machine_tint = {
      primary = data.raw.fluid["nullius-carbon-monoxide"].flow_color,
      secondary = data.raw.fluid["nullius-pressure-steam"].flow_color
    },
    energy_required = 5,
    ingredients = {
      {type="item", name="nullius-box-graphite", amount=3},
      {type="fluid", name="nullius-pressure-steam", amount=100, fluidbox_index=2}
    },
    results = {
      {type="fluid", name="nullius-compressed-carbon-monoxide", amount=60},
      {type="fluid", name="nullius-compressed-hydrogen", amount=60}
    }
  },
  {
    type = "recipe",
    name = "nullius-legacy-graphite-to-carbon-monoxide",
    icons = angelsmods.functions.create_gas_recipe_icon(
        {{"__angelspetrochem__/graphics/icons/molecules/carbon-monoxide.png", 72}},
      {element_tint["carbon"], element_tint["carbon"], element_tint["oxygen"]},
      {{"__base__/graphics/icons/coal-dark-background.png", 64}}
    ),
    enabled = false,
    hidden = true,
    allow_as_intermediate = false,
    allow_decomposition = false,
    category = "basic-chemistry",
    subgroup = "carbon",
    order = "nullius-d",
    crafting_machine_tint = {
      primary = data.raw.fluid["nullius-carbon-monoxide"].flow_color,
      secondary = data.raw.fluid["nullius-water"].flow_color
    },
    energy_required = 3,
    ingredients = {
      {type="item", name="nullius-graphite", amount=2},
      {type="fluid", name="nullius-water", amount=10, fluidbox_index=2}
    },
    results = {
      {type="fluid", name="nullius-carbon-monoxide", amount=25},
      {type="fluid", name="nullius-hydrogen", amount=25}
    }
  },
  {
    type = "recipe",
    name = "nullius-legacy-boxed-carbon-monoxide",
    localised_name = {"recipe-name.nullius-boxed", {"fluid-name.nullius-carbon-monoxide"}},
    icons = {
      {
        icon = ICONPATH .. "crate.png",
        icon_size = 64
      },
      {
        icon = "__angelspetrochem__/graphics/icons/molecules/carbon-monoxide.png",
        icon_size = 72,
        scale = 0.4
      }
    },
    enabled = false,
    hidden = true,
    allow_as_intermediate = false,
    allow_decomposition = false,
    category = "basic-chemistry",
    subgroup = "boxed-organic-1",
    order = "nullius-bm",
    crafting_machine_tint = {
      primary = data.raw.fluid["nullius-carbon-monoxide"].flow_color,
      secondary = data.raw.fluid["nullius-water"].flow_color
    },
    energy_required = 15,
    ingredients = {
      {type="item", name="nullius-box-graphite", amount=2},
      {type="fluid", name="nullius-water", amount=50, fluidbox_index=2}
    },
    results = {
      {type="fluid", name="nullius-carbon-monoxide", amount=125},
      {type="fluid", name="nullius-hydrogen", amount=125}
    }
  },
  {
    type = "recipe",
    name = "nullius-carbon-dioxide-electrolysis",
    localised_name = {"recipe-name.nullius-carbon-dioxide-electrolysis"},
    icons = angelsmods.functions.create_liquid_recipe_icon(
        {{"__angelspetrochem__/graphics/icons/molecules/oxygen.png", 72},
		    {"__angelspetrochem__/graphics/icons/molecules/carbon-monoxide.png", 72}},
      {element_tint["carbon"], element_tint["carbon"], element_tint["oxygen"]},
      {{"__angelspetrochem__/graphics/icons/molecules/carbon-dioxide.png", 72}}
    ),
    enabled = false,
    category = "nullius-electrolysis",
    subgroup = "carbon",
    order = "nullius-bd",
    energy_required = 1,
    ingredients = {
      {type="fluid", name="nullius-compressed-carbon-dioxide", amount=100}
    },
    results = {
      {type="fluid", name="nullius-compressed-carbon-monoxide", amount=80},
      {type="fluid", name="nullius-compressed-oxygen", amount=60}
    }
  },

  {
    type = "recipe",
    name = "nullius-carbon-monoxide-to-alkenes",
    localised_name = {"recipe-name.nullius-alkene-synthesis"},
    icons = angelsmods.functions.create_gas_recipe_icon(
        {{"__angelspetrochem__/graphics/icons/molecules/ethylene.png", 72},
        {"__angelspetrochem__/graphics/icons/molecules/benzene.png", 72},
        {"__angelspetrochem__/graphics/icons/molecules/propene.png", 72}},
      {element_tint["carbon"], element_tint["hydrogen"], element_tint["oxygen"]},
      nil
    ),
    enabled = false,
    category = "distillation",
    subgroup = "hydrocarbon",
    order = "nullius-i",
    crafting_machine_tint = { primary = data.raw.fluid["nullius-carbon-monoxide"].flow_color },
    energy_required = 2,
    ingredients = {
      {type="fluid", name="nullius-carbon-monoxide", amount=100},
      {type="fluid", name="nullius-hydrogen", amount=180}
    },
    results = {
      {type="fluid", name="nullius-ethylene", amount=16},
      {type="fluid", name="nullius-propene", amount=12},
      {type="fluid", name="nullius-benzene", amount=4}
    },
    main_product = "nullius-benzene"
  },
  {
    type = "recipe",
    name = "nullius-pressure-alkene-synthesis",
    icons = angelsmods.functions.create_liquid_recipe_icon(
        {{"__angelspetrochem__/graphics/icons/molecules/ethylene.png", 72},
        {"__angelspetrochem__/graphics/icons/molecules/benzene.png", 72},
        {"__angelspetrochem__/graphics/icons/molecules/propene.png", 72}},
      {element_tint["carbon"], element_tint["hydrogen"], element_tint["oxygen"]},
      nil
    ),
    enabled = false,
    category = "distillation",
    subgroup = "hydrocarbon",
    order = "nullius-fb",
    crafting_machine_tint = { primary = data.raw.fluid["nullius-carbon-monoxide"].flow_color },
    energy_required = 1,
    ingredients = {
      {type="fluid", name="nullius-compressed-carbon-monoxide", amount=25},
      {type="fluid", name="nullius-compressed-hydrogen", amount=45}
    },
    results = {
      {type="fluid", name="nullius-ethylene", amount=16},
      {type="fluid", name="nullius-propene", amount=12},
      {type="fluid", name="nullius-benzene", amount=4}
    }
  },
  {
    type = "recipe",
    name = "nullius-alkene-synthesis-light",
    localised_name = {"recipe-name.nullius-light", {"recipe-name.nullius-alkene-synthesis"}},
    icons = angelsmods.functions.create_liquid_recipe_icon(
        {{"__angelspetrochem__/graphics/icons/molecules/methane.png", 72},
        {"__angelspetrochem__/graphics/icons/molecules/propene.png", 72},
        {"__angelspetrochem__/graphics/icons/molecules/ethylene.png", 72}},
      {element_tint["oxygen"], element_tint["hydrogen"], element_tint["carbon"]},
      nil
    ),
    enabled = false,
    category = "distillation",
    subgroup = "hydrocarbon",
    order = "nullius-fc",
    crafting_machine_tint = { primary = {r = 0.75, g = 0.3, b = 0.3} },
    energy_required = 1,
    ingredients = {
      {type="fluid", name="nullius-compressed-carbon-monoxide", amount=30},
      {type="fluid", name="nullius-compressed-hydrogen", amount=65}
    },
    results = {
      {type="fluid", name="nullius-methane", amount=45},
      {type="fluid", name="nullius-ethylene", amount=30},
      {type="fluid", name="nullius-propene", amount=15}
    }
  },

  {
    type = "recipe",
    name = "nullius-carbon-dioxide-to-methane",
    icons = angelsmods.functions.create_gas_recipe_icon(
        {{"__angelspetrochem__/graphics/icons/molecules/methane.png", 72}},
      {element_tint["carbon"], element_tint["hydrogen"], element_tint["hydrogen"]},
      {{"__angelspetrochem__/graphics/icons/molecules/carbon-dioxide.png", 72}}
    ),
    enabled = false,
    category = "basic-chemistry",
    subgroup = "hydrocarbon",
    order = "nullius-f",
    crafting_machine_tint = {
      primary = data.raw.fluid["nullius-carbon-dioxide"].flow_color,
      secondary = data.raw.fluid["nullius-hydrogen"].flow_color
    },
    energy_required = 1,
    ingredients = {
      {type="fluid", name="nullius-carbon-dioxide", amount=32, fluidbox_index=1},
      {type="fluid", name="nullius-hydrogen", amount=110, fluidbox_index=2}
    },
    results = {
      {type="fluid", name="nullius-methane", amount=24},
      {type="fluid", name="nullius-water", amount=8}
    },
    main_product = "nullius-methane"
  },
  {
    type = "recipe",
    name = "nullius-pressure-methane",
    icons = angelsmods.functions.create_liquid_recipe_icon(
        {{"__angelspetrochem__/graphics/icons/molecules/methane.png", 72}},
      {element_tint["carbon"], element_tint["hydrogen"], element_tint["hydrogen"]},
      {{"__angelspetrochem__/graphics/icons/molecules/carbon-dioxide.png", 72}}
    ),
    enabled = false,
    category = "basic-chemistry",
    subgroup = "hydrocarbon",
    order = "nullius-d",
    crafting_machine_tint = {
      primary = data.raw.fluid["nullius-carbon-dioxide"].flow_color,
      secondary = data.raw.fluid["nullius-hydrogen"].flow_color
    },
    energy_required = 1,
    ingredients = {
      {type="fluid", name="nullius-compressed-carbon-dioxide", amount=16, fluidbox_index=1},
      {type="fluid", name="nullius-compressed-hydrogen", amount=55, fluidbox_index=2}
    },
    results = {
      {type="fluid", name="nullius-compressed-methane", amount=12},
      {type="fluid", name="nullius-water", amount=16}
    }
  },
  {
    type = "recipe",
    name = "nullius-methane-to-ethylene",
    icons = angelsmods.functions.create_gas_recipe_icon(
        {{"__angelspetrochem__/graphics/icons/molecules/ethylene.png", 72}},
      {element_tint["carbon"], element_tint["carbon"], element_tint["hydrogen"]},
      {{"__angelspetrochem__/graphics/icons/molecules/methane.png", 72}}
    ),
    enabled = false,
    category = "basic-chemistry",
    subgroup = "hydrocarbon",
    order = "nullius-h",
    crafting_machine_tint = {
      primary = data.raw.fluid["nullius-methane"].flow_color,
      secondary = data.raw.fluid["nullius-oxygen"].flow_color
    },
    energy_required = 1,
    ingredients = {
      {type="fluid", name="nullius-methane", amount=60, fluidbox_index=1},
      {type="fluid", name="nullius-oxygen", amount=40, fluidbox_index=2}
    },
    results = {
      {type="fluid", name="nullius-ethylene", amount=16},
      {type="fluid", name="nullius-water", amount=6}
    },
    main_product = "nullius-ethylene"
  },
  {
    type = "recipe",
    name = "nullius-pressure-ethylene",
    localised_name = {"recipe-name.nullius-pressure-ethylene"},
    icons = angelsmods.functions.create_liquid_recipe_icon(
        {{"__angelspetrochem__/graphics/icons/molecules/ethylene.png", 72}},
      {element_tint["carbon"], element_tint["carbon"], element_tint["hydrogen"]},
      {{"__angelspetrochem__/graphics/icons/molecules/methane.png", 72}}
    ),
    enabled = false,
    category = "basic-chemistry",
    subgroup = "hydrocarbon",
    order = "nullius-e",
    crafting_machine_tint = {
      primary = data.raw.fluid["nullius-methane"].flow_color,
      secondary = data.raw.fluid["nullius-oxygen"].flow_color
    },
    energy_required = 1,
    ingredients = {
      {type="fluid", name="nullius-compressed-methane", amount=30, fluidbox_index=1},
      {type="fluid", name="nullius-compressed-oxygen", amount=20, fluidbox_index=2}
    },
    results = {
      {type="fluid", name="nullius-ethylene", amount=32},
      {type="fluid", name="nullius-water", amount=12}
    },
    main_product = "nullius-ethylene"
  },
  {
    type = "recipe",
    name = "nullius-methanol",
    icons = angelsmods.functions.create_gas_recipe_icon(
        {{"__angelspetrochem__/graphics/icons/molecules/methanol.png", 72}},
      {element_tint["carbon"], element_tint["oxygen"], element_tint["hydrogen"]},
      {{"__angelspetrochem__/graphics/icons/molecules/methane.png", 72}}
    ),
    enabled = false,
    show_amount_in_title = false,
    always_show_products = true,
    category = "basic-chemistry",
	order = "nullius-bb",
    crafting_machine_tint = {
      primary = data.raw.fluid["nullius-oxygen"].flow_color,
      secondary = data.raw.fluid["nullius-methane"].flow_color
    },
    energy_required = 1,
    ingredients = {
      {type="fluid", name="nullius-methane", amount=16, fluidbox_index=1},
      {type="fluid", name="nullius-oxygen", amount=8, fluidbox_index=2}
    },
    results = {
      {type="fluid", name="nullius-methanol", amount=2}
    },
    main_product = "nullius-methanol"
  },
  {
    type = "recipe",
    name = "nullius-pressure-methanol",
    localised_name = {"recipe-name.nullius-pressure-methanol"},
    icons = angelsmods.functions.create_liquid_recipe_icon(
        {{"__angelspetrochem__/graphics/icons/molecules/methanol.png", 72}},
      {element_tint["carbon"], element_tint["oxygen"], element_tint["hydrogen"]},
      {{"__angelspetrochem__/graphics/icons/molecules/methane.png", 72}}
    ),
    enabled = false,
    show_amount_in_title = false,
    always_show_products = true,
    category = "basic-chemistry",
    subgroup = "organic-chemistry",
    order = "nullius-bc",
    crafting_machine_tint = {
      primary = data.raw.fluid["nullius-oxygen"].flow_color,
      secondary = data.raw.fluid["nullius-methane"].flow_color
    },
    energy_required = 1,
    ingredients = {
      {type="fluid", name="nullius-compressed-methane", amount=8, fluidbox_index=1},
      {type="fluid", name="nullius-compressed-oxygen", amount=4, fluidbox_index=2}
    },
    results = {
      {type="fluid", name="nullius-methanol", amount=4}
    },
    main_product = "nullius-methanol"
  },

  {
    type = "recipe",
    name = "nullius-butadiene",
    enabled = false,
    allow_as_intermediate = false,
    category = "distillation",
    crafting_machine_tint = { primary = data.raw.fluid["nullius-ethylene"].flow_color },
    energy_required = 1,
    ingredients = {
      {type="fluid", name="nullius-ethylene", amount=50},
      {type="fluid", name="nullius-steam", amount=150}
    },
    results = {
      {type="fluid", name="nullius-butadiene", amount=30},
      {type="fluid", name="nullius-hydrogen", amount=20}
    },
    main_product = "nullius-butadiene"
  },
  {
    type = "recipe",
    name = "nullius-pressure-butadiene",
	localised_name = {"recipe-name.nullius-pressure", {"fluid-name.nullius-butadiene"}},
	icons = angelsmods.functions.create_liquid_fluid_icon(
      {"__angelspetrochem__/graphics/icons/molecules/butadiene.png", 75 },
      {element_tint["hydrogen"], element_tint["carbon"], element_tint["carbon"]}
    ),
	enabled = false,
    allow_as_intermediate = false,
    category = "distillation",
	order = "nullius-cc",
    crafting_machine_tint = { primary = data.raw.fluid["nullius-ethylene"].flow_color },
    energy_required = 1,
    ingredients = {
      {type="fluid", name="nullius-ethylene", amount=80},
      {type="fluid", name="nullius-pressure-steam", amount=60}
    },
    results = {
      {type="fluid", name="nullius-butadiene", amount=50},
      {type="fluid", name="nullius-compressed-hydrogen", amount=8}
    },
    main_product = "nullius-butadiene"
  },
  {
    type = "recipe",
    name = "nullius-styrene",
    enabled = false,
    allow_as_intermediate = false,
    category = "basic-chemistry",
    crafting_machine_tint = {
      primary = data.raw.fluid["nullius-benzene"].flow_color,
      secondary = data.raw.fluid["nullius-ethylene"].flow_color
    },
    energy_required = 2,
    ingredients = {
      {type="fluid", name="nullius-ethylene", amount=20, fluidbox_index=1},
      {type="fluid", name="nullius-benzene", amount=10, fluidbox_index=2}
    },
    results = {
      {type="fluid", name="nullius-styrene", amount=9},
      {type="fluid", name="nullius-hydrogen", amount=15}
    },
    main_product = "nullius-styrene"
  },
  {
    type = "recipe",
    name = "nullius-acrylonitrile",
    enabled = false,
    category = "basic-chemistry",
    crafting_machine_tint = {
      primary = data.raw.fluid["nullius-propene"].flow_color,
      secondary = data.raw.fluid["nullius-ammonia"].flow_color
    },
    energy_required = 1,
    ingredients = {
      {type="fluid", name="nullius-propene", amount=20},
      {type="fluid", name="nullius-oxygen", amount=30},
      {type="fluid", name="nullius-ammonia", amount=20}
    },
    results = {
      {type="fluid", name="nullius-acrylonitrile", amount=10},
      {type="fluid", name="nullius-wastewater", amount=12}
    },
    main_product = "nullius-acrylonitrile"
  },

  {
    type = "item",
    name = "nullius-rubber",
    icon = ICONPATH .. "rubber.png",
    icon_size = 64,
    subgroup = "organic-material-2",
    order = "nullius-c",
    stack_size = 100
  },
  {
    type = "recipe",
    name = "nullius-rubber",
    localised_name = {"recipe-name.nullius-rubber-1"},
    enabled = false,
    show_amount_in_title = false,
    always_show_products = true,
    category = "ore-flotation",
    order = "nullius-cb",
    crafting_machine_tint = {
      primary = data.raw.fluid["nullius-butadiene"].flow_color,
      secondary = data.raw.fluid["nullius-styrene"].flow_color
    },
    energy_required = 3,
    ingredients = {
      {type="fluid", name="nullius-butadiene", amount=12},
      {type="fluid", name="nullius-styrene", amount=3}
    },
    results = {
      {type="item", name="nullius-rubber", amount=1}
    },
    main_product = "nullius-rubber"
  },
  {
    type = "recipe",
    name = "nullius-rubber-nbr",
    localised_name = {"recipe-name.nullius-rubber-2"},
    icons = {
      {
        icon = ICONPATH .. "rubber.png",
        icon_size = 64
      },
      {
        icon = "__angelspetrochem__/graphics/icons/molecules/methylamine.png",
        icon_size = 72,
        scale = 0.2,
        shift = {11, -10}
      }
    },
    enabled = false,
    show_amount_in_title = false,
    always_show_products = true,
    category = "basic-chemistry",
    order = "nullius-cc",
    crafting_machine_tint = {
      primary = data.raw.fluid["nullius-butadiene"].flow_color,
      secondary = data.raw.fluid["nullius-acrylonitrile"].flow_color
    },
    energy_required = 12,
    ingredients = {
      {type="fluid", name="nullius-butadiene", amount=60},
      {type="fluid", name="nullius-acrylonitrile", amount=8},
      {type="fluid", name="nullius-solvent", amount=1}
    },
    results = {
      {type="item", name="nullius-rubber", amount=8}
    },
    main_product = "nullius-rubber"
  },
  {
    type = "recipe",
    name = "nullius-boxed-rubber",
    enabled = false,
    show_amount_in_title = false,
    always_show_products = true,
    category = "basic-chemistry",
    subgroup = "boxed-organic-2",
    order = "nullius-c",
    crafting_machine_tint = {
      primary = data.raw.fluid["nullius-butadiene"].flow_color,
      secondary = data.raw.fluid["nullius-acrylonitrile"].flow_color
    },
    energy_required = 60,
    ingredients = {
      {type="fluid", name="nullius-butadiene", amount=300},
      {type="fluid", name="nullius-acrylonitrile", amount=40},
      {type="fluid", name="nullius-solvent", amount=5}
    },
    results = {
      {type="item", name="nullius-box-rubber", amount=8}
    },
    main_product = "nullius-box-rubber"
  },

  {
    type = "recipe",
    name = "nullius-boiling-water",
    localised_name = {"recipe-name.nullius-boiling", {"fluid-name.nullius-water"}},
    show_amount_in_title = false,
    always_show_products = true,
    icons = {
      {
        icon = FLUIDPATH .. "purewater.png",
        icon_size = 64
      },
      {
        icon = "__base__/graphics/icons/fluid/steam.png",
        icon_size = 64,
        icon_mipmaps = 4,
        scale = 0.45,
        tint = {0.8, 0.8, 0.8, 0.8},
        shift = {2, -2}
      }
    },
    enabled = false,
    category = "boiling",
    subgroup = "boiling",
    order = "nullius-b",
    energy_required = 1,
    no_productivity = true,
    ingredients = {
      {type="fluid", name="nullius-water", amount=55}
    },
    results = {
      {type="fluid", name="nullius-steam", amount=270, fluidbox_index=1}
    },
    main_product = "nullius-steam"
  },
  {
    type = "recipe",
    name = "nullius-pressure-boiling-water",
    localised_name = {"recipe-name.nullius-pressure-boiling", {"fluid-name.nullius-water"}},
    icons = {
      {
        icon = FLUIDPATH .. "steam2.png",
        icon_size = 64
      },
      {
        icon = FLUIDPATH .. "purewater.png",
        icon_size = 64,
		scale = 0.36
      }
    },
    enabled = false,
	show_amount_in_title = false,
    always_show_products = true,
	no_productivity = true,
    category = "pressure-boiling",
    subgroup = "pressure-boiling",
    order = "nullius-b",
    energy_required = 3,
    ingredients = {
      {type="fluid", name="nullius-water", amount=135}
    },
    results = {
      {type="fluid", name="nullius-pressure-steam", amount=245, fluidbox_index=1}
    },
    main_product = "nullius-pressure-steam"
  },
  {
    type = "recipe",
    name = "nullius-boiling-saline",
    localised_name = {"recipe-name.nullius-boiling", {"fluid-name.nullius-saline"}},
    show_amount_in_title = false,
    always_show_products = true,
    icons = {
      {
        icon = "__base__/graphics/icons/fluid/water.png",
        icon_size = 64,
        icon_mipmaps = 4
      },
      {
        icon = "__base__/graphics/icons/fluid/steam.png",
        icon_size = 64,
        icon_mipmaps = 4,
        scale = 0.45,
        tint = {0.8, 0.8, 0.8, 0.8},
        shift = {2, -2}
      }
    },
    enabled = false,
    category = "boiling",
    subgroup = "boiling",
    order = "nullius-cb",
    energy_required = 1,
    no_productivity = true,
    ingredients = {
      {type="fluid", name="nullius-saline", amount=60}
    },
    results = {
      {type="fluid", name="nullius-steam", amount=255},
      {type="fluid", name="nullius-brine", amount=15}
    },
    main_product = "nullius-steam"
  },
  {
    type = "recipe",
    name = "nullius-pressure-boiling-saline",
    localised_name = {"recipe-name.nullius-pressure-boiling", {"fluid-name.nullius-saline"}},
    icons = {
      {
        icon = FLUIDPATH .. "steam2.png",
        icon_size = 64
      },
      {
        icon = "__base__/graphics/icons/fluid/water.png",
        icon_size = 64,
        icon_mipmaps = 4,
		scale = 0.36
      }
    },
    enabled = false,
	show_amount_in_title = false,
    always_show_products = true,
	no_productivity = true,
    category = "pressure-boiling",
    subgroup = "pressure-boiling",
    order = "nullius-c",
    energy_required = 3,
    ingredients = {
      {type="fluid", name="nullius-saline", amount=150}
    },
    results = {
      {type="fluid", name="nullius-pressure-steam", amount=240},
      {type="fluid", name="nullius-brine", amount=30}
    },
    main_product = "nullius-pressure-steam"
  },
  {
    type = "recipe",
    name = "nullius-boiling-brine",
    localised_name = {"recipe-name.nullius-boiling", {"fluid-name.nullius-brine"}},
    show_amount_in_title = false,
    always_show_products = true,
    icons = {
      {
        icon = FLUIDPATH .. "brine.png",
        icon_size = 64
      },
      {
        icon = "__base__/graphics/icons/fluid/steam.png",
        icon_size = 64,
        icon_mipmaps = 4,
        scale = 0.45,
        tint = {0.8, 0.8, 0.8, 0.8},
        shift = {2, -2}
      }
    },
    enabled = false,
    category = "boiling",
    subgroup = "boiling",
    order = "nullius-cc",
    energy_required = 1,
    no_productivity = true,
    ingredients = {
      {type="fluid", name="nullius-brine", amount=65}
    },
    results = {
      {type="fluid", name="nullius-steam", amount=225, fluidbox_index=1},
      {type="item", name="nullius-salt", amount=6}
    },
    main_product = "nullius-steam"
  },
  {
    type = "recipe",
    name = "nullius-pressure-boiling-brine",
    localised_name = {"recipe-name.nullius-pressure-boiling", {"fluid-name.nullius-brine"}},
    icons = {
      {
        icon = FLUIDPATH .. "steam2.png",
        icon_size = 64
      },
      {
        icon = FLUIDPATH .. "brine.png",
        icon_size = 64,
		scale = 0.36
      }
    },
    enabled = false,
	show_amount_in_title = false,
    always_show_products = true,
	no_productivity = true,
    category = "pressure-boiling",
    subgroup = "pressure-boiling",
    order = "nullius-d",
    energy_required = 3,
    ingredients = {
      {type="fluid", name="nullius-brine", amount=170}
    },
    results = {
      {type="fluid", name="nullius-pressure-steam", amount=225, fluidbox_index=1},
      {type="item", name="nullius-salt", amount=12}
    },
    main_product = "nullius-pressure-steam"
  },
  {
    type = "recipe",
    name = "nullius-boiling-seawater",
    localised_name = {"recipe-name.nullius-boiling", {"fluid-name.nullius-seawater"}},
    show_amount_in_title = false,
    always_show_products = true,
    icons = {
      {
        icon = FLUIDPATH .. "seawater.png",
        icon_size = 64
      },
      {
        icon = "__base__/graphics/icons/fluid/steam.png",
        icon_size = 64,
        icon_mipmaps = 4,
        scale = 0.45,
        tint = {0.8, 0.8, 0.8, 0.8},
        shift = {2, -2}
      }
    },
    enabled = false,
    category = "boiling",
    subgroup = "boiling",
    order = "nullius-d",
    energy_required = 1,
    no_productivity = true,
    ingredients = {
      {type="fluid", name="nullius-seawater", amount=65}
    },
    results = {
      {type="fluid", name="nullius-steam", amount=235},
      {type="fluid", name="nullius-wastewater", amount=20}
    },
    main_product = "nullius-steam"
  },
  {
    type = "recipe",
    name = "nullius-pressure-boiling-seawater",
    localised_name = {"recipe-name.nullius-pressure-boiling", {"fluid-name.nullius-seawater"}},
    icons = {
      {
        icon = FLUIDPATH .. "steam2.png",
        icon_size = 64
      },
      {
        icon = FLUIDPATH .. "seawater.png",
        icon_size = 64,
		scale = 0.36
      }
    },
    enabled = false,
	show_amount_in_title = false,
    always_show_products = true,
	no_productivity = true,
    category = "pressure-boiling",
    subgroup = "pressure-boiling",
    order = "nullius-e",
    energy_required = 3,
    ingredients = {
      {type="fluid", name="nullius-seawater", amount=160}
    },
    results = {
      {type="fluid", name="nullius-pressure-steam", amount=230},
      {type="fluid", name="nullius-wastewater", amount=30}
    },
    main_product = "nullius-pressure-steam"
  },
  {
    type = "recipe",
    name = "nullius-boiling-freshwater",
    localised_name = {"recipe-name.nullius-boiling", {"fluid-name.nullius-freshwater"}},
    show_amount_in_title = false,
    always_show_products = true,
    icons = {
      {
        icon = FLUIDPATH .. "freshwater.png",
        icon_size = 64
      },
      {
        icon = "__base__/graphics/icons/fluid/steam.png",
        icon_size = 64,
        icon_mipmaps = 4,
        scale = 0.45,
        tint = {0.8, 0.8, 0.8, 0.8},
        shift = {2, -2}
      }
    },
    enabled = false,
    category = "boiling",
    subgroup = "boiling",
    order = "nullius-e",
    energy_required = 1,
    no_productivity = true,
    ingredients = {
      {type="fluid", name="nullius-freshwater", amount=60}
    },
    results = {
      {type="fluid", name="nullius-steam", amount=260},
      {type="fluid", name="nullius-wastewater", amount=8}
    },
    main_product = "nullius-steam"
  },
  {
    type = "recipe",
    name = "nullius-pressure-boiling-freshwater",
    localised_name = {"recipe-name.nullius-pressure-boiling", {"fluid-name.nullius-freshwater"}},
    icons = {
      {
        icon = FLUIDPATH .. "steam2.png",
        icon_size = 64
      },
      {
        icon = FLUIDPATH .. "freshwater.png",
        icon_size = 64,
		scale = 0.36
      }
    },
    enabled = false,
	show_amount_in_title = false,
    always_show_products = true,
	no_productivity = true,
    category = "pressure-boiling",
    subgroup = "pressure-boiling",
    order = "nullius-f",
    energy_required = 3,
    ingredients = {
      {type="fluid", name="nullius-freshwater", amount=140}
    },
    results = {
      {type="fluid", name="nullius-pressure-steam", amount=242},
      {type="fluid", name="nullius-wastewater", amount=10}
    },
    main_product = "nullius-pressure-steam"
  },
  {
    type = "recipe",
    name = "nullius-boiling-wastewater",
    localised_name = {"recipe-name.nullius-boiling", {"fluid-name.nullius-wastewater"}},
    show_amount_in_title = false,
    always_show_products = true,
    icons = {
      {
        icon = FLUIDPATH .. "wastewater.png",
        icon_size = 64
      },
      {
        icon = "__base__/graphics/icons/fluid/steam.png",
        icon_size = 64,
        icon_mipmaps = 4,
        scale = 0.45,
        tint = {0.8, 0.8, 0.8, 0.8},
        shift = {2, -2}
      }
    },
    enabled = false,
	allow_decomposition = false,
    category = "boiling",
    subgroup = "boiling",
    order = "nullius-f",
    energy_required = 1,
    no_productivity = true,
    ingredients = {
      {type="fluid", name="nullius-wastewater", amount=65}
    },
    results = {
      {type="fluid", name="nullius-steam", amount=225},
      {type="fluid", name="nullius-sludge", amount=12}
    },
    main_product = "nullius-steam"
  },
  {
    type = "recipe",
    name = "nullius-pressure-boiling-wastewater",
    localised_name = {"recipe-name.nullius-pressure-boiling", {"fluid-name.nullius-wastewater"}},
    icons = {
      {
        icon = FLUIDPATH .. "steam2.png",
        icon_size = 64
      },
      {
        icon = FLUIDPATH .. "wastewater.png",
        icon_size = 64,
		scale = 0.36
      }
    },
    enabled = false,
	show_amount_in_title = false,
    always_show_products = true,
	no_productivity = true,
    category = "pressure-boiling",
    subgroup = "pressure-boiling",
    order = "nullius-g",
    energy_required = 3,
    ingredients = {
      {type="fluid", name="nullius-wastewater", amount=150}
    },
    results = {
      {type="fluid", name="nullius-pressure-steam", amount=230},
      {type="fluid", name="nullius-sludge", amount=20}
    },
    main_product = "nullius-pressure-steam"
  },
  {
    type = "recipe",
    name = "nullius-condensation",
    localised_name = {"recipe-name.nullius-condensation"},
    show_amount_in_title = false,
    always_show_products = true,
    allow_as_intermediate = false,
    icon_size = 64,
    icons = {
      {
        icon = FLUIDPATH .. "purewater.png"
      },
      {
        icon = "__base__/graphics/icons/fluid/steam.png",
        icon_mipmaps = 4,
        scale = 0.25,
        shift = {-8, -8}
      }
    },
    enabled = false,
    category = "distillation",
    subgroup = "boiling",
    order = "nullius-m",
    energy_required = 0.5,
    no_productivity = true,
    ingredients = {
      {type="fluid", name="nullius-steam", amount=1500}
    },
    results = {
      {type="fluid", name="nullius-water", amount=300}
    },
    main_product = "nullius-water"
  },
  {
    type = "recipe",
    name = "nullius-decompress-steam",
    localised_name = {"recipe-name.nullius-decompress-steam"},
    icons = {
      {
        icon = FLUIDPATH .. "steam2.png",
        icon_size = 64
      },
      {
        icon = "__angelsrefining__/graphics/icons/barreling-pump.png",
        icon_size = 32,
		scale = 0.5,
		shift = {-8, -8}
      }
    },
    enabled = false,
    show_amount_in_title = false,
    always_show_products = true,
    allow_decomposition = false,
    allow_as_intermediate = false,
	hide_from_stats = true,
    category = "decompression",
    subgroup = "pressure-boiling",
    order = "nullius-i",
    energy_required = 0.5,
    ingredients = {
      {type="fluid", name="nullius-pressure-steam", amount=200}
    },
    results = {
      {type="fluid", name="nullius-steam", amount=625}
    },
    main_product = "nullius-steam"
  },
  {
    type = "recipe",
    name = "nullius-pressure-steam",
    enabled = false,
    show_amount_in_title = false,
    always_show_products = true,
	hide_from_stats = true,
    category = "compression",
    subgroup = "pressure-boiling",
    order = "nullius-h",
    energy_required = 1,
    ingredients = {
      {type="fluid", name="nullius-steam", amount=625}
    },
    results = {
      {type="fluid", name="nullius-pressure-steam", amount=200}
    },
    main_product = "nullius-pressure-steam"
  },

  {
    type = "recipe",
    name = "nullius-hydrogen-combustion-1",
    localised_name = {"recipe-name.nullius-hydrogen-combustion-1"},
    icon_size = 64,
    icons = {
      {
        icon = "__base__/graphics/icons/fluid/steam.png",
        icon_mipmaps = 4
      },
      {
        icon = FLUIDPATH .. "atom2.png",
        scale = 0.25,
        shift = {-10, -10}
      }
    },
    enabled = false,
    category = "combustion",
    subgroup = "combustion",
    order = "nullius-db",
    show_amount_in_title = false,
    always_show_products = true,
    allow_as_intermediate = false,
    energy_required = 1,
    ingredients = {
      {type="fluid", name="nullius-hydrogen", amount=200},
      {type="fluid", name="nullius-oxygen", amount=100}
    },
    results = {
      {type="fluid", name="nullius-steam", amount=440}
    }
  },
  {
    type = "recipe",
    name = "nullius-hydrogen-combustion-2",
    localised_name = {"recipe-name.nullius-hydrogen-combustion-2"},
    icon_size = 64,
    icons = {
      {
        icon = "__base__/graphics/icons/fluid/steam.png",
        icon_mipmaps = 4
      },
      {
        icon = FLUIDPATH .. "atom2.png",
        scale = 0.2,
        shift = {-11, -11}
      }
    },
    enabled = false,
    category = "combustion",
    subgroup = "combustion",
    order = "nullius-dc",
    show_amount_in_title = false,
    always_show_products = true,
    allow_as_intermediate = false,
    energy_required = 1,
    ingredients = {
      {type="fluid", name="nullius-compressed-hydrogen", amount=65},
      {type="fluid", name="nullius-oxygen", amount=130}
    },
    results = {
      {type="fluid", name="nullius-steam", amount=600}
    },
    main_product = "nullius-steam"
  },
  {
    type = "recipe",
    name = "nullius-hydrogen-combustion-3",
    localised_name = {"recipe-name.nullius-hydrogen-combustion-3"},
    icon_size = 64,
    icons = {
      {
        icon = "__base__/graphics/icons/fluid/steam.png",
        icon_mipmaps = 4
      },
      {
        icon = FLUIDPATH .. "atom2.png",
        scale = 0.15,
        shift = {-12, -12}
      }
    },
    enabled = false,
    category = "combustion",
    subgroup = "combustion",
    order = "nullius-dd",
    show_amount_in_title = false,
    always_show_products = true,
    allow_as_intermediate = false,
    energy_required = 1,
    ingredients = {
      {type="fluid", name="nullius-compressed-hydrogen", amount=90},
      {type="fluid", name="nullius-compressed-oxygen", amount=45}
    },
    results = {
      {type="fluid", name="nullius-steam", amount=850}
    },
    main_product = "nullius-steam"
  },

  {
    type = "recipe",
    name = "nullius-methane-combustion-1",
    localised_name = {"recipe-name.nullius-methane-combustion-1"},
    icons = {
      {
        icon = "__base__/graphics/icons/fluid/steam.png",
        icon_size = 64,
        icon_mipmaps = 4
      },
      {
        icon = "__angelspetrochem__/graphics/icons/molecules/methane.png",
        icon_size = 72,
        scale = 0.25,
        shift = {-8, -8}
      }
    },
    enabled = false,
    allow_as_intermediate = false,
    category = "combustion",
    subgroup = "combustion",
    order = "nullius-eb",
    energy_required = 1,
    ingredients = {
      {type="fluid", name="nullius-methane", amount=45},
      {type="fluid", name="nullius-oxygen", amount=90}
    },
    results = {
      {type="fluid", name="nullius-steam", amount=300},
      {type="fluid", name="nullius-carbon-dioxide", amount=35}
    },
    main_product = "nullius-steam"
  },
  {
    type = "recipe",
    name = "nullius-methane-combustion-2",
    localised_name = {"recipe-name.nullius-methane-combustion-2"},
    icons = {
      {
        icon = "__base__/graphics/icons/fluid/steam.png",
        icon_size = 64,
        icon_mipmaps = 4
      },
      {
        icon = "__angelspetrochem__/graphics/icons/molecules/methane.png",
        icon_size = 72,
        scale = 0.15,
        shift = {-11, -11}
      }
    },
    enabled = false,
    allow_as_intermediate = false,
    category = "combustion",
    subgroup = "combustion",
    order = "nullius-ec",
    energy_required = 1,
    ingredients = {
      {type="fluid", name="nullius-compressed-methane", amount=20},
      {type="fluid", name="nullius-compressed-oxygen", amount=40}
    },
    results = {
      {type="fluid", name="nullius-steam", amount=660},
      {type="fluid", name="nullius-compressed-carbon-dioxide", amount=16}
    },
    main_product = "nullius-steam"
  },

  {
    type = "recipe",
    name = "nullius-ethylene-combustion",
    localised_name = {"recipe-name.nullius-ethylene-combustion"},
    icon_size = 64,
    icons = {
      {
        icon = "__base__/graphics/icons/fluid/steam.png",
        icon_mipmaps = 4
      },
      {
        icon = "__angelspetrochem__/graphics/icons/molecules/ethylene.png",
        icon_size = 72,
        scale = 0.2,
        shift = {-8, -8}
      }
    },
    enabled = false,
    allow_as_intermediate = false,
    category = "combustion",
    subgroup = "combustion",
    order = "nullius-fb",
    energy_required = 1,
    ingredients = {
      {type="fluid", name="nullius-ethylene", amount=40},
      {type="fluid", name="nullius-oxygen", amount=120}
    },
    results = {
      {type="fluid", name="nullius-steam", amount=325},
      {type="fluid", name="nullius-carbon-dioxide", amount=65}
    },
    main_product = "nullius-steam"
  },
  {
    type = "recipe",
    name = "nullius-propene-combustion",
    localised_name = {"recipe-name.nullius-propene-combustion"},
    icons = {
      {
        icon = "__base__/graphics/icons/fluid/steam.png",
        icon_size = 64,
        icon_mipmaps = 4
      },
      {
        icon = "__angelspetrochem__/graphics/icons/molecules/propene.png",
        icon_size = 72,
        scale = 0.2,
        shift = {-8, -8}
      }
    },
    enabled = false,
    allow_as_intermediate = false,
    category = "combustion",
    subgroup = "combustion",
    order = "nullius-fc",
    energy_required = 1,
    ingredients = {
      {type="fluid", name="nullius-propene", amount=30},
      {type="fluid", name="nullius-oxygen", amount=130}
    },
    results = {
      {type="fluid", name="nullius-steam", amount=350},
      {type="fluid", name="nullius-carbon-dioxide", amount=75}
    },
    main_product = "nullius-steam"
  },
  {
    type = "recipe",
    name = "nullius-benzene-combustion",
    localised_name = {"recipe-name.nullius-benzene-combustion"},
    icons = {
      {
        icon = "__base__/graphics/icons/fluid/steam.png",
        icon_size = 64,
        icon_mipmaps = 4,
        scale = 0.5
      },
      {
        icon = "__angelspetrochem__/graphics/icons/molecules/benzene.png",
        icon_size = 72,
        scale = 0.2,
        shift = {-8, -8}
      }
    },
    enabled = false,
    allow_as_intermediate = false,
    category = "combustion",
    subgroup = "combustion",
    order = "nullius-fd",
    energy_required = 1,
    ingredients = {
      {type="fluid", name="nullius-benzene", amount=12},
      {type="fluid", name="nullius-oxygen", amount=150}
    },
    results = {
      {type="fluid", name="nullius-steam", amount=400},
      {type="fluid", name="nullius-carbon-dioxide", amount=80}
    },
    main_product = "nullius-steam"
  },
  {
    type = "recipe",
    name = "nullius-methanol-combustion",
    localised_name = {"recipe-name.nullius-combustion", {"fluid-name.nullius-methanol"}},
    icons = {
      {
        icon = "__base__/graphics/icons/fluid/steam.png",
        icon_size = 64,
        icon_mipmaps = 4,
        scale = 0.5
      },
      {
	    icon = "__angelspetrochem__/graphics/icons/molecules/methanol.png",
        icon_size = 72,
        scale = 0.2,
        shift = {-8, -8}
      }
    },
    enabled = false,
    allow_as_intermediate = false,
    category = "combustion",
    subgroup = "combustion",
    order = "nullius-fe",
    energy_required = 1,
    ingredients = {
      {type="fluid", name="nullius-methanol", amount=18},
      {type="fluid", name="nullius-oxygen", amount=110}
    },
    results = {
      {type="fluid", name="nullius-steam", amount=550},
      {type="fluid", name="nullius-carbon-dioxide", amount=50}
    },
    main_product = "nullius-steam"
  },
  {
    type = "recipe",
    name = "nullius-biodiesel-combustion",
    localised_name = {"recipe-name.nullius-biodiesel-combustion"},
    icon_size = 64,
    icons = {
      {
        icon = "__base__/graphics/icons/fluid/steam.png",
        icon_mipmaps = 4
      },
      {
        icon = "__base__/graphics/icons/fluid/heavy-oil.png",
        icon_size = 64,
        icon_mipmaps = 4,
        scale = 0.25,
        shift = {-8, -8}
      }
    },
    enabled = false,
    allow_as_intermediate = false,
    category = "combustion",
    subgroup = "combustion",
    order = "nullius-ff",
    energy_required = 1,
    ingredients = {
      {type="fluid", name="nullius-biodiesel", amount=8},
      {type="fluid", name="nullius-compressed-oxygen", amount=40}
    },
    results = {
      {type="fluid", name="nullius-steam", amount=1000},
      {type="fluid", name="nullius-compressed-carbon-dioxide", amount=15}
    },
    main_product = "nullius-steam"
  },
  {
    type = "recipe",
    name = "nullius-graphite-combustion",
    localised_name = {"recipe-name.nullius-combustion", {"item-name.nullius-graphite"}},
    icons = {
      {
        icon = "__base__/graphics/icons/fluid/steam.png",
        icon_size = 64,
        icon_mipmaps = 4,
        scale = 0.5
      },
      {
	    icon = "__base__/graphics/icons/coal-dark-background.png",
        icon_size = 64,
        scale = 0.3,
        shift = {-6, -6}
      }
    },
    enabled = false,
    allow_as_intermediate = false,
    category = "combustion",
	subgroup = "boiling",
    order = "nullius-g",
    energy_required = 1,
    ingredients = {
      {type="item", name="nullius-graphite", amount=2},
      {type="fluid", name="nullius-water", amount=60},
      {type="fluid", name="nullius-compressed-oxygen", amount=16}
    },
    results = {
      {type="fluid", name="nullius-steam", amount=300},
      {type="fluid", name="nullius-carbon-dioxide", amount=40}
    },
    main_product = "nullius-steam"
  },
  {
    type = "recipe",
    name = "nullius-boxed-graphite-combustion",
    localised_name = {"recipe-name.nullius-boxed",
	    {"recipe-name.nullius-combustion", {"item-name.nullius-graphite"}}},
    icons = {
      {
        icon = ICONPATH .. "crate.png",
        icon_size = 64
      },
      {
        icon = "__base__/graphics/icons/fluid/steam.png",
        icon_size = 64,
        icon_mipmaps = 4,
        scale = 0.45
      },
      {
	    icon = "__base__/graphics/icons/coal-dark-background.png",
        icon_size = 64,
        scale = 0.27,
        shift = {-5, -5}
      }
    },
    enabled = false,
    allow_as_intermediate = false,
    category = "combustion",
	subgroup = "boxed-organic-1",
    order = "nullius-dg",
    energy_required = 5,
    ingredients = {
      {type="item", name="nullius-box-graphite", amount=2},
      {type="fluid", name="nullius-water", amount=250},
      {type="fluid", name="nullius-compressed-oxygen", amount=80}
    },
    results = {
      {type="fluid", name="nullius-steam", amount=1500},
      {type="fluid", name="nullius-carbon-dioxide", amount=200}
    },
    main_product = "nullius-steam"
  },
  {
    type = "recipe",
    name = "nullius-aluminum-oxidation",
    localised_name = {"recipe-name.nullius-oxidation", {"item-name.nullius-aluminum"}},
    icons = {
      {
        icon = "__base__/graphics/icons/fluid/steam.png",
		icon_size = 64,
        icon_mipmaps = 4
      },
      {
	    icon = "__angelssmelting__/graphics/icons/ingot-aluminium.png",
        icon_size = 64,
        icon_mipmaps = 4,
		scale = 0.3,
        shift = {-7, -7}
      },
	  {
	    icon = "__angelssmelting__/graphics/icons/solid-aluminium-hydroxide.png",
        icon_size = 32,
		scale = 0.5,
		shift = {7, 7}
	  }
    },
    enabled = false,
    category = "combustion",
    subgroup = "alumina",
    order = "nullius-dd",
    show_amount_in_title = false,
    always_show_products = true,
    allow_as_intermediate = false,
    energy_required = 1,
    ingredients = {
      {type="item", name="nullius-aluminum-powder", amount=8},
      {type="fluid", name="nullius-water", amount=100}
    },
    results = {
	  {type="item", name="nullius-aluminum-hydroxide", amount=1},
      {type="fluid", name="nullius-steam", amount=180},
	  {type="fluid", name="nullius-hydrogen", amount=90}
    }
  },
  {
    type = "recipe",
    name = "nullius-boxed-aluminum-oxidation",
    localised_name = {"recipe-name.nullius-boxed",
	    {"recipe-name.nullius-oxidation", {"item-name.nullius-aluminum"}}},
    icons = {
      {
        icon = ICONPATH .. "crate.png",
        icon_size = 64
      },
      {
        icon = "__base__/graphics/icons/fluid/steam.png",
		icon_size = 64,
        icon_mipmaps = 4,
		scale = 0.45
      },
      {
	    icon = "__angelssmelting__/graphics/icons/ingot-aluminium.png",
        icon_size = 64,
        icon_mipmaps = 4,
		scale = 0.27,
        shift = {-6, -6}
      },
	  {
	    icon = "__angelssmelting__/graphics/icons/solid-aluminium-hydroxide.png",
        icon_size = 32,
		scale = 0.45,
		shift = {6, 6}
	  }
    },
    enabled = false,
    category = "combustion",
    subgroup = "boxed-aluminum-1",
    order = "nullius-kb",
    show_amount_in_title = false,
    always_show_products = true,
    allow_as_intermediate = false,
    energy_required = 5,
    ingredients = {
      {type="item", name="nullius-box-aluminum-powder", amount=8},
      {type="fluid", name="nullius-water", amount=500}
    },
    results = {
	  {type="item", name="nullius-box-aluminum-hydroxide", amount=1},
      {type="fluid", name="nullius-steam", amount=900},
	  {type="fluid", name="nullius-hydrogen", amount=450}
    }
  },

  {
    type = "recipe",
    name = "nullius-methane-to-graphite",
    icons = {
      {
        icon = "__base__/graphics/icons/coal-dark-background.png",
        icon_size = 64,
        icon_mipmaps = 4
      },
      {
        icon = "__angelspetrochem__/graphics/icons/molecules/methane.png",
        icon_size = 72,
        scale = 0.24,
        shift = {-8, -8}
      }
    },
    enabled = false,
    allow_as_intermediate = false,
    category = "wet-smelting",
    subgroup = "organic-material-1",
    order = "nullius-bd",
    energy_required = 1,
    ingredients = {
      {type="fluid", name="nullius-methane", amount=50}
    },
    results = {
      {type="item", name="nullius-graphite", amount=2},
      {type="fluid", name="nullius-hydrogen", amount=60}
    }
  },
  {
    type = "recipe",
    name = "nullius-pressure-methane-to-graphite",
    icons = {
      {
        icon = "__base__/graphics/icons/coal-dark-background.png",
        icon_size = 64,
        icon_mipmaps = 4
      },
      {
        icon = "__angelspetrochem__/graphics/icons/molecules/methane.png",
        icon_size = 72,
        scale = 0.16,
        shift = {-10, -10}
      }
    },
    enabled = false,
    allow_as_intermediate = false,
    category = "wet-smelting",
    subgroup = "organic-material-1",
    order = "nullius-be",
    energy_required = 1,
    ingredients = {
      {type="fluid", name="nullius-compressed-methane", amount=25}
    },
    results = {
      {type="item", name="nullius-graphite", amount=4},
      {type="fluid", name="nullius-compressed-hydrogen", amount=30}
    }
  },
  {
    type = "recipe",
    name = "nullius-boxed-graphite",
    icons = {
      {
        icon = ICONPATH .. "crate.png",
        icon_size = 64
      },
      {
        icon = "__base__/graphics/icons/coal-dark-background.png",
        icon_size = 64,
        icon_mipmaps = 4,
        scale = 0.45
      },
      {
        icon = "__angelspetrochem__/graphics/icons/molecules/methane.png",
        icon_size = 72,
        scale = 0.21,
        shift = {-6, -6}
      }
    },
    enabled = false,
    category = "bulk-smelting",
    subgroup = "boxed-organic-1",
    order = "nullius-bd",
    energy_required = 1,
    ingredients = {
      {type="fluid", name="nullius-methane", amount=250}
    },
    results = {
      {type="item", name="nullius-box-graphite", amount=2},
      {type="fluid", name="nullius-hydrogen", amount=300}
    },
    main_product = "nullius-box-graphite"
  },
  {
    type = "recipe",
    name = "nullius-boxed-pressure-graphite",
    localised_name = {"recipe-name.nullius-pressure", {"item-name.nullius-box", {"item-name.nullius-graphite"}}},
    icons = {
      {
        icon = ICONPATH .. "crate.png",
        icon_size = 64
      },
      {
        icon = "__base__/graphics/icons/coal-dark-background.png",
        icon_size = 64,
        icon_mipmaps = 4,
        scale = 0.45
      },
      {
        icon = "__angelspetrochem__/graphics/icons/molecules/methane.png",
        icon_size = 72,
        scale = 0.14,
        shift = {-8, -8}
      }
    },
    enabled = false,
    category = "bulk-smelting",
    subgroup = "boxed-organic-1",
    order = "nullius-be",
    energy_required = 1,
    ingredients = {
      {type="fluid", name="nullius-compressed-methane", amount=125}
    },
    results = {
      {type="item", name="nullius-box-graphite", amount=4},
      {type="fluid", name="nullius-compressed-hydrogen", amount=150}
    },
    main_product = "nullius-box-graphite"
  },
  {
    type = "recipe",
    name = "nullius-carbon-deposition",
    localised_name = {"recipe-name.nullius-carbon-deposition"},
    icons = {
      {
        icon = ICONPATH .. "crate.png",
        icon_size = 64
      },
      {
        icon = "__base__/graphics/icons/coal-dark-background.png",
        icon_size = 64,
        icon_mipmaps = 4,
        scale = 0.45
      },
      {
        icon = "__angelspetrochem__/graphics/icons/molecules/carbon-monoxide.png",
        icon_size = 72,
        scale = 0.18,
        shift = {-7, -7}
      }
    },
    enabled = false,
    category = "compression",
    subgroup = "boxed-organic-1",
    order = "nullius-bf",
    energy_required = 1,
    ingredients = {
      {type="fluid", name="nullius-compressed-carbon-monoxide", amount=40}
    },
    results = {
      {type="fluid", name="nullius-compressed-carbon-dioxide", amount=20},
      {type="item", name="nullius-box-graphite", amount=1}
    }
  },

  {
    type = "recipe",
    name = "nullius-ethylene-pyrolysis",
    localised_name = {"recipe-name.nullius-ethylene-pyrolysis"},
    icons = angelsmods.functions.create_gas_recipe_icon(
        {{"__angelspetrochem__/graphics/icons/molecules/methane.png", 72},
        {"__angelspetrochem__/graphics/icons/molecules/benzene.png", 72},
        {"__angelspetrochem__/graphics/icons/molecules/propene.png", 72}},
      {element_tint["carbon"], element_tint["carbon"], element_tint["hydrogen"]},
      {{"__angelspetrochem__/graphics/icons/molecules/ethylene.png", 72}}
    ),
    enabled = false,
    allow_as_intermediate = false,
    category = "distillation",
    subgroup = "reforming",
    order = "nullius-pb",
    energy_required = 4,
    ingredients = {
      {type="fluid", name="nullius-ethylene", amount=135}
    },
    results = {
      {type="fluid", name="nullius-methane", amount=50},
      {type="fluid", name="nullius-propene", amount=25},
      {type="fluid", name="nullius-benzene", amount=4}
    },
    main_product = "nullius-methane"
  },
  {
    type = "recipe",
    name = "nullius-propene-pyrolysis",
    localised_name = {"recipe-name.nullius-propene-pyrolysis"},
    icons = angelsmods.functions.create_gas_recipe_icon(
        {{"__angelspetrochem__/graphics/icons/molecules/methane.png", 72},
        {"__angelspetrochem__/graphics/icons/molecules/benzene.png", 72},
        {"__angelspetrochem__/graphics/icons/molecules/ethylene.png", 72}},
      {element_tint["carbon"], element_tint["hydrogen"], element_tint["carbon"]},
      {{"__angelspetrochem__/graphics/icons/molecules/propene.png", 72}}
    ),
    enabled = false,
    allow_as_intermediate = false,
    category = "distillation",
    subgroup = "reforming",
    order = "nullius-pc",
    energy_required = 4,
    ingredients = {
      {type="fluid", name="nullius-propene", amount=90}
    },
    results = {
      {type="fluid", name="nullius-methane", amount=30},
      {type="fluid", name="nullius-ethylene", amount=40},
      {type="fluid", name="nullius-benzene", amount=6}
    },
    main_product = "nullius-methane"
  },
  {
    type = "recipe",
    name = "nullius-methane-reforming",
    localised_name = {"recipe-name.nullius-reforming", {"fluid-name.nullius-methane"}},
    icons = angelsmods.functions.create_liquid_recipe_icon(
        {{"__angelspetrochem__/graphics/icons/molecules/hydrogen.png", 72},
       {"__angelspetrochem__/graphics/icons/molecules/carbon-monoxide.png", 72}},
      {element_tint["hydrogen"], element_tint["carbon"], element_tint["oxygen"]},
      {{"__angelspetrochem__/graphics/icons/molecules/methane.png", 72}}
    ),
    enabled = false,
    allow_as_intermediate = false,
    category = "distillation",
    subgroup = "reforming",
    order = "nullius-g",
    energy_required = 1,
    ingredients = {
      {type="fluid", name="nullius-compressed-methane", amount=18},
      {type="fluid", name="nullius-compressed-carbon-dioxide", amount=20}
    },
    results = {
      {type="fluid", name="nullius-compressed-hydrogen", amount=24},
      {type="fluid", name="nullius-compressed-carbon-monoxide", amount=20}
    },
    main_product = "nullius-compressed-carbon-monoxide"
  },
  {
    type = "recipe",
    name = "nullius-benzene-reforming",
    localised_name = {"recipe-name.nullius-reforming", {"fluid-name.nullius-benzene"}},
    icons = angelsmods.functions.create_gas_recipe_icon(
        {{"__angelspetrochem__/graphics/icons/molecules/hydrogen.png", 72},
       {"__angelspetrochem__/graphics/icons/molecules/carbon-dioxide.png", 72},
       {"__angelspetrochem__/graphics/icons/molecules/carbon-monoxide.png", 72}},
      {element_tint["hydrogen"], element_tint["carbon"], element_tint["oxygen"]},
      {{"__angelspetrochem__/graphics/icons/molecules/benzene.png", 72}}
    ),
    enabled = false,
    allow_as_intermediate = false,
    category = "distillation",
    subgroup = "reforming",
    order = "nullius-qb",
    energy_required = 1,
    ingredients = {
      {type="fluid", name="nullius-benzene", amount=10},
      {type="fluid", name="nullius-steam", amount=80}
    },
    results = {
      {type="fluid", name="nullius-hydrogen", amount=120},
      {type="fluid", name="nullius-carbon-monoxide", amount=60},
      {type="fluid", name="nullius-carbon-dioxide", amount=30}
    },
    main_product = "nullius-hydrogen"
  },
  {
    type = "recipe",
    name = "nullius-pressure-benzene-reforming",
    localised_name = {"recipe-name.nullius-pressure",
	    {"recipe-name.nullius-reforming", {"fluid-name.nullius-benzene"}}},
    icons = angelsmods.functions.create_liquid_recipe_icon(
        {{"__angelspetrochem__/graphics/icons/molecules/hydrogen.png", 72},
       {"__angelspetrochem__/graphics/icons/molecules/carbon-dioxide.png", 72},
       {"__angelspetrochem__/graphics/icons/molecules/carbon-monoxide.png", 72}},
      {element_tint["hydrogen"], element_tint["carbon"], element_tint["oxygen"]},
      {{"__angelspetrochem__/graphics/icons/molecules/benzene.png", 72}}
    ),
    enabled = false,
    allow_as_intermediate = false,
    category = "distillation",
    subgroup = "reforming",
    order = "nullius-qc",
    energy_required = 1,
    ingredients = {
      {type="fluid", name="nullius-benzene", amount=16},
      {type="fluid", name="nullius-pressure-steam", amount=36}
    },
    results = {
      {type="fluid", name="nullius-compressed-hydrogen", amount=50},
      {type="fluid", name="nullius-compressed-carbon-monoxide", amount=25},
      {type="fluid", name="nullius-compressed-carbon-dioxide", amount=12}
    },
    main_product = "nullius-compressed-hydrogen"
  }
})

if mods["aai-industry"] then
data.raw.item["processed-fuel"].localised_name = {"item-name.nullius-methanol-canister"}
data.raw.item["processed-fuel"].icon = ICONPATH .. "canister-methanol.png"
data.raw.item["processed-fuel"].icon_size = 64
data.raw.item["processed-fuel"].subgroup = "canisters"
data.raw.item["processed-fuel"].order = "nullius-e"
data.raw.item["processed-fuel"].fuel_category = "vehicle"
data.raw.item["processed-fuel"].fuel_value = "15MJ"
data.raw.item["processed-fuel"].fuel_acceleration_multiplier = 1.4
data.raw.item["processed-fuel"].fuel_top_speed_multiplier = 1.2
data.raw.item["processed-fuel"].burnt_result = "nullius-canister"
data.raw.item["processed-fuel"].stack_size = 50
else
data:extend({
  {
    type = "item",
    name = "processed-fuel",
    localised_name = {"item-name.nullius-methanol-canister"},
    icon = ICONPATH .. "canister-methanol.png",
    icon_size = 64,
    subgroup = "canisters",
    order = "nullius-e",
    fuel_category = "vehicle",
    fuel_value = "15MJ",
    fuel_acceleration_multiplier = 1.4,
    fuel_top_speed_multiplier = 1.2,
    burnt_result = "nullius-canister",
    stack_size = 50
  }
})
end

data:extend({
  {
    type = "item",
    name = "nullius-hydrogen-canister",
    icon = ICONPATH .. "canister-hydrogen.png",
    icon_size = 64,
    subgroup = "canisters",
    order = "nullius-d",
    fuel_category = "vehicle",
    fuel_value = "5MJ",
    fuel_acceleration_multiplier = 1,
    fuel_top_speed_multiplier = 1,
    burnt_result = "nullius-water-canister",
    stack_size = 50
  },
  {
    type = "item",
    name = "nullius-biodiesel-canister",
    icon = ICONPATH .. "canister-biodiesel.png",
    icon_size = 64,
    subgroup = "canisters",
    order = "nullius-f",
    fuel_category = "vehicle",
    fuel_value = "50MJ",
    fuel_acceleration_multiplier = 1.8,
    fuel_top_speed_multiplier = 1.4,
    burnt_result = "nullius-canister",
    stack_size = 50
  },
  {
    type = "item",
    name = "nullius-water-canister",
    icon = ICONPATH .. "canister-water.png",
    icon_size = 64,
    subgroup = "canisters",
    order = "nullius-g",
    stack_size = 50
  },
  {
    type = "recipe",
    name = "nullius-canister-emptying",
    icon = ICONPATH .. "canister-water.png",
    icon_size = 64,
	enabled = false,
	no_productivity = true,
	category = "nullius-unbarrel",
	subgroup = "canister-emptying",
    order = "nullius-e",
    energy_required = 0.2,
    ingredients = {
      {type="item", name="nullius-water-canister", amount=1}
    },
    results = {
      {type="item", name="nullius-canister", amount=1},
      {type="fluid", name="nullius-water", amount=100}
    }
  },
  {
    type = "recipe",
    name = "nullius-boxed-canister-emptying",
    localised_name = {"recipe-name.nullius-boxed", {"recipe-name.nullius-canister-emptying"}},
    icons = {
      {
        icon = ICONPATH .. "crate.png",
        icon_size = 64
      },
      {
        icon = ICONPATH .. "canister-water.png",
        icon_size = 64,
        scale = 0.45
      }
    },
    enabled = false,
	no_productivity = true,
    category = "nullius-unbarrel",
    subgroup = "boxed-canister",
    order = "nullius-h",
    energy_required = 1,
    ingredients = {
      {type="item", name="nullius-box-water-canister", amount=1}
    },
    results = {
      {type="item", name="nullius-box-canister", amount=1},
      {type="fluid", name="nullius-water", amount=500}
    }
  },

  {
    type = "recipe",
    name = "nullius-hydrogen-canister-1",
    icons = {
      {
        icon = ICONPATH .. "canister-hydrogen.png",
        icon_size = 64
      },
      {
        icon = "__angelspetrochem__/graphics/icons/molecules/hydrogen.png",
        icon_size = 72,
        scale = 0.21,
        shift = {10, -10}
      }
    },
    enabled = false,
    show_amount_in_title = false,
    always_show_products = true,
    category = "basic-chemistry",
    order = "nullius-db",
    crafting_machine_tint = {
      primary = data.raw.fluid["nullius-hydrogen"].flow_color,
      secondary = data.raw.fluid["nullius-oxygen"].flow_color
    },
    energy_required = 2,
    no_productivity = true,
    ingredients = {
      {type="item", name="nullius-canister", amount=1},
      {type="fluid", name="nullius-hydrogen", amount=300, fluidbox_index=1},
      {type="fluid", name="nullius-oxygen", amount=150, fluidbox_index=2}
    },
    result = "nullius-hydrogen-canister"
  },
  {
    type = "recipe",
    name = "nullius-boxed-hydrogen-canister-1",
    icons = {
      {
        icon = ICONPATH .. "crate.png",
        icon_size = 64
      },
      {
        icon = ICONPATH .. "canister-hydrogen.png",
        icon_size = 64,
        scale = 0.45
      },
      {
        icon = "__angelspetrochem__/graphics/icons/molecules/hydrogen.png",
        icon_size = 72,
        scale = 0.18,
        shift = {9, -9}
      }
    },
    enabled = false,
    show_amount_in_title = false,
    always_show_products = true,
    category = "basic-chemistry",
    subgroup = "boxed-canister",
    order = "nullius-db",
    crafting_machine_tint = {
      primary = data.raw.fluid["nullius-hydrogen"].flow_color,
      secondary = data.raw.fluid["nullius-oxygen"].flow_color
    },
    energy_required = 10,
    no_productivity = true,
    ingredients = {
      {type="item", name="nullius-box-canister", amount=1},
      {type="fluid", name="nullius-hydrogen", amount=1500, fluidbox_index=1},
      {type="fluid", name="nullius-oxygen", amount=750, fluidbox_index=2}
    },
    result = "nullius-box-hydrogen-canister"
  },
  {
    type = "recipe",
    name = "nullius-hydrogen-canister-2",
    localised_name = {"recipe-name.nullius-pressure", {"item-name.nullius-hydrogen-canister"}},
    icons = {
      {
        icon = ICONPATH .. "canister-hydrogen.png",
        icon_size = 64
      },
      {
        icon = "__angelspetrochem__/graphics/icons/molecules/hydrogen.png",
        icon_size = 72,
        scale = 0.15,
        shift = {11, -11}
      }
    },
    enabled = false,
    show_amount_in_title = false,
    always_show_products = true,
    category = "basic-chemistry",
    order = "nullius-dc",
    crafting_machine_tint = {
      primary = data.raw.fluid["nullius-hydrogen"].flow_color,
      secondary = data.raw.fluid["nullius-oxygen"].flow_color
    },
    energy_required = 0.5,
    no_productivity = true,
    ingredients = {
      {type="item", name="nullius-canister", amount=1},
      {type="fluid", name="nullius-compressed-hydrogen", amount=70, fluidbox_index=1},
      {type="fluid", name="nullius-compressed-oxygen", amount=35, fluidbox_index=2}
    },
    result = "nullius-hydrogen-canister"
  },
  {
    type = "recipe",
    name = "nullius-boxed-hydrogen-canister-2",
    localised_name = {"recipe-name.nullius-pressure",
        {"item-name.nullius-box", {"item-name.nullius-hydrogen-canister"}}},
    icons = {
      {
        icon = ICONPATH .. "crate.png",
        icon_size = 64
      },
      {
        icon = ICONPATH .. "canister-hydrogen.png",
        icon_size = 64,
        scale = 0.45
      },
      {
        icon = "__angelspetrochem__/graphics/icons/molecules/hydrogen.png",
        icon_size = 72,
        scale = 0.13,
        shift = {10, -10}
      }
    },
    enabled = false,
    show_amount_in_title = false,
    always_show_products = true,
    category = "basic-chemistry",
    subgroup = "boxed-canister",
    order = "nullius-dc",
    crafting_machine_tint = {
      primary = data.raw.fluid["nullius-hydrogen"].flow_color,
      secondary = data.raw.fluid["nullius-oxygen"].flow_color
    },
    energy_required = 2.5,
    no_productivity = true,
    ingredients = {
      {type="item", name="nullius-box-canister", amount=1},
      {type="fluid", name="nullius-compressed-hydrogen", amount=350, fluidbox_index=1},
      {type="fluid", name="nullius-compressed-oxygen", amount=175, fluidbox_index=2}
    },
    result = "nullius-box-hydrogen-canister"
  },

  {
    type = "recipe",
    name = "nullius-methanol-canister-1",
    icons = {
      {
        icon = ICONPATH .. "canister-methanol.png",
        icon_size = 64
      },
      {
        icon = "__angelspetrochem__/graphics/icons/molecules/methanol.png",
        icon_size = 72,
        scale = 0.21,
        shift = {10, -10}
      }
    },
    enabled = false,
    show_amount_in_title = false,
    always_show_products = true,
    category = "basic-chemistry",
    order = "nullius-eb",
    crafting_machine_tint = {
      primary = data.raw.fluid["nullius-methanol"].flow_color,
      secondary = data.raw.fluid["nullius-oxygen"].flow_color
    },
    energy_required = 3,
    no_productivity = true,
    ingredients = {
      {type="item", name="nullius-canister", amount=1},
      {type="fluid", name="nullius-methanol", amount=32},
      {type="fluid", name="nullius-oxygen", amount=420},
      {type="fluid", name="nullius-benzene", amount=3}
    },
    result = "processed-fuel"
  },
  {
    type = "recipe",
    name = "nullius-boxed-methanol-canister-1",
    icons = {
      {
        icon = ICONPATH .. "crate.png",
        icon_size = 64
      },
      {
        icon = ICONPATH .. "canister-methanol.png",
        icon_size = 64,
        scale = 0.45
      },
      {
        icon = "__angelspetrochem__/graphics/icons/molecules/methanol.png",
        icon_size = 72,
        scale = 0.18,
        shift = {9, -9}
      }
    },
    enabled = false,
    show_amount_in_title = false,
    always_show_products = true,
    category = "basic-chemistry",
    subgroup = "boxed-canister",
    order = "nullius-eb",
    crafting_machine_tint = {
      primary = data.raw.fluid["nullius-methanol"].flow_color,
      secondary = data.raw.fluid["nullius-oxygen"].flow_color
    },
    energy_required = 15,
    no_productivity = true,
    ingredients = {
      {type="item", name="nullius-box-canister", amount=1},
      {type="fluid", name="nullius-methanol", amount=160},
      {type="fluid", name="nullius-oxygen", amount=2100},
      {type="fluid", name="nullius-benzene", amount=15}
    },
    result = "nullius-box-methanol-canister"
  },
  {
    type = "recipe",
    name = "nullius-methanol-canister-2",
    localised_name = {"recipe-name.nullius-pressure", {"item-name.nullius-methanol-canister"}},
    icons = {
      {
        icon = ICONPATH .. "canister-methanol.png",
        icon_size = 64
      },
      {
        icon = "__angelspetrochem__/graphics/icons/molecules/methanol.png",
        icon_size = 72,
        scale = 0.15,
        shift = {11, -11}
      }
    },
    enabled = false,
    show_amount_in_title = false,
    always_show_products = true,
    category = "basic-chemistry",
    order = "nullius-ec",
    crafting_machine_tint = {
      primary = data.raw.fluid["nullius-methanol"].flow_color,
      secondary = data.raw.fluid["nullius-oxygen"].flow_color
    },
    energy_required = 1,
    no_productivity = true,
    ingredients = {
      {type="item", name="nullius-canister", amount=1},
      {type="fluid", name="nullius-methanol", amount=28},
      {type="fluid", name="nullius-compressed-oxygen", amount=95},
      {type="fluid", name="nullius-benzene", amount=2}
    },
    result = "processed-fuel"
  },
  {
    type = "recipe",
    name = "nullius-boxed-methanol-canister-2",
    localised_name = {"recipe-name.nullius-pressure", {"item-name.nullius-methanol-canister"}},
    icons = {
      {
        icon = ICONPATH .. "crate.png",
        icon_size = 64
      },
      {
        icon = ICONPATH .. "canister-methanol.png",
        icon_size = 64,
        scale = 0.45
      },
      {
        icon = "__angelspetrochem__/graphics/icons/molecules/methanol.png",
        icon_size = 72,
        scale = 0.13,
        shift = {10, -10}
      }
    },
    enabled = false,
    show_amount_in_title = false,
    always_show_products = true,
    category = "basic-chemistry",
    subgroup = "boxed-canister",
    order = "nullius-ec",
    crafting_machine_tint = {
      primary = data.raw.fluid["nullius-methanol"].flow_color,
      secondary = data.raw.fluid["nullius-oxygen"].flow_color
    },
    energy_required = 5,
    no_productivity = true,
    ingredients = {
      {type="item", name="nullius-box-canister", amount=1},
      {type="fluid", name="nullius-methanol", amount=140},
      {type="fluid", name="nullius-compressed-oxygen", amount=475},
      {type="fluid", name="nullius-benzene", amount=10}
    },
    result = "nullius-box-methanol-canister"
  },
  {
    type = "recipe",
    name = "nullius-biodiesel-canister",
    enabled = false,
    show_amount_in_title = false,
    always_show_products = true,
    no_productivity = true,
    category = "small-fluid-assembly",
    order = "nullius-fc",
    energy_required = 1,
    ingredients = {
      {type="item", name="nullius-canister", amount=1},
      {type="fluid", name="nullius-biodiesel", amount=25},
      {type="fluid", name="nullius-compressed-oxygen", amount=120}
    },
    result = "nullius-biodiesel-canister"
  },
  {
    type = "recipe",
    name = "nullius-boxed-biodiesel-canister",
    enabled = false,
    show_amount_in_title = false,
    always_show_products = true,
    no_productivity = true,
    category = "small-fluid-assembly",
    subgroup = "boxed-canister",
    order = "nullius-fc",
    energy_required = 5,
    ingredients = {
      {type="item", name="nullius-box-canister", amount=1},
      {type="fluid", name="nullius-biodiesel", amount=125},
      {type="fluid", name="nullius-compressed-oxygen", amount=600}
    },
    result = "nullius-box-biodiesel-canister"
  },

  {
    type = "recipe",
    name = "nullius-hydrogen-canister-flushing",
	localised_name = {"recipe-name.nullius-flushing",
	    {"item-name.nullius-hydrogen-canister"}},
	icons = {
      {
        icon = ICONPATH .. "canister-empty.png",
        icon_size = 64
      },
      {
        icon = "__angelspetrochem__/graphics/icons/molecules/hydrogen.png",
        icon_size = 72,
        scale = 0.25,
        shift = {-8, 8}
      }
    },
    enabled = false,
	no_productivity = true,
    category = "nullius-unbarrel",
    subgroup = "canister-emptying",
    order = "nullius-fb",
    energy_required = 1,
    ingredients = {
      {type="item", name="nullius-hydrogen-canister", amount=1}
    },
    results = {
      {type="item", name="nullius-canister", amount=1},
      {type="fluid", name="nullius-hydrogen", amount=280}
    }
  },
  {
    type = "recipe",
    name = "nullius-methanol-canister-flushing",
	localised_name = {"recipe-name.nullius-flushing",
	    {"item-name.nullius-methanol-canister"}},
	icons = {
      {
        icon = ICONPATH .. "canister-empty.png",
        icon_size = 64
      },
      {
        icon = "__angelspetrochem__/graphics/icons/molecules/methanol.png",
        icon_size = 72,
        scale = 0.25,
        shift = {-8, 8}
      }
    },
    enabled = false,
	no_productivity = true,
    category = "nullius-unbarrel",
    subgroup = "canister-emptying",
    order = "nullius-fc",
    energy_required = 1,
    ingredients = {
      {type="item", name="processed-fuel", amount=1}
    },
    results = {
      {type="item", name="nullius-canister", amount=1},
      {type="fluid", name="nullius-methanol", amount=28}
    }
  },
  {
    type = "recipe",
    name = "nullius-biodiesel-canister-flushing",
	localised_name = {"recipe-name.nullius-flushing",
	    {"item-name.nullius-biodiesel-canister"}},
	icons = {
      {
        icon = ICONPATH .. "canister-empty.png",
        icon_size = 64
      },
      {
	    icon = "__base__/graphics/icons/fluid/heavy-oil.png",
        icon_size = 64,
        icon_mipmaps = 4,
        scale = 0.26,
        shift = {-4, 6}
      }
    },
    enabled = false,
	no_productivity = true,
    category = "nullius-unbarrel",
    subgroup = "canister-emptying",
    order = "nullius-fd",
    energy_required = 1,
    ingredients = {
      {type="item", name="nullius-biodiesel-canister", amount=1}
    },
    results = {
      {type="item", name="nullius-canister", amount=1},
      {type="fluid", name="nullius-biodiesel", amount=32}
    }
  },

  {
    type = "recipe",
    name = "nullius-rocket-fuel",
    enabled = false,
    show_amount_in_title = false,
    always_show_products = true,
    category = "basic-chemistry",
    crafting_machine_tint = {
      primary = data.raw.fluid["nullius-ammonia"].flow_color,
      secondary = data.raw.fluid["nullius-acid-hydrochloric"].flow_color
    },
    energy_required = 40,
    ingredients = {
      {type="item", name="processed-fuel", amount=1},
      {type="fluid", name="nullius-ammonia", amount=400},
      {type="fluid", name="nullius-acid-hydrochloric", amount=200},
      {type="fluid", name="nullius-compressed-oxygen", amount=150},
      {type="item", name="nullius-salt", amount=5},
      {type="item", name="nullius-iron-oxide", amount=3},
      {type="item", name="nullius-aluminum-powder", amount=35},
      {type="item", name="nullius-rubber", amount=14},
      {type="item", name="cliff-explosives", amount=2}
    },
    results = {
      {type="item", name="rocket-fuel", amount=3},
      {type="fluid", name="nullius-wastewater", amount=200}
    },
    main_product = "rocket-fuel"
  },
  {
    type = "recipe",
    name = "nullius-boxed-rocket-fuel",
    enabled = false,
    show_amount_in_title = false,
    always_show_products = true,
    category = "basic-chemistry",
    subgroup = "boxed-canister",
    crafting_machine_tint = {
      primary = data.raw.fluid["nullius-ammonia"].flow_color,
      secondary = data.raw.fluid["nullius-acid-hydrochloric"].flow_color
    },
    energy_required = 200,
    ingredients = {
      {type="item", name="nullius-box-methanol-canister", amount=1},
      {type="fluid", name="nullius-ammonia", amount=2000},
      {type="fluid", name="nullius-acid-hydrochloric", amount=1000},
      {type="fluid", name="nullius-compressed-oxygen", amount=750},
      {type="item", name="nullius-box-salt", amount=5},
      {type="item", name="nullius-box-iron-oxide", amount=3},
      {type="item", name="nullius-box-aluminum-powder", amount=35},
      {type="item", name="nullius-box-rubber", amount=14},
      {type="item", name="nullius-box-explosive", amount=2}
    },
    results = {
      {type="item", name="nullius-box-rocket-fuel", amount=3},
      {type="fluid", name="nullius-wastewater", amount=1000}
    },
    main_product = "nullius-box-rocket-fuel"
  },
  {
    type = "recipe",
    name = "nullius-legacy-rocket-fuel",
    enabled = false,
    show_amount_in_title = false,
    always_show_products = true,
	hidden = true,
    allow_decomposition = false,
    allow_as_intermediate = false,
    category = "basic-chemistry",
    crafting_machine_tint = {
      primary = data.raw.fluid["nullius-ammonia"].flow_color,
      secondary = data.raw.fluid["nullius-acid-hydrochloric"].flow_color
    },
    energy_required = 40,
    ingredients = {
      {type="item", name="processed-fuel", amount=1},
      {type="fluid", name="nullius-ammonia", amount=240},
      {type="fluid", name="nullius-acid-hydrochloric", amount=300},
      {type="fluid", name="nullius-compressed-oxygen", amount=150},
      {type="item", name="nullius-salt", amount=5},
      {type="item", name="nullius-iron-oxide", amount=3},
      {type="item", name="nullius-aluminum-wire", amount=20},
      {type="item", name="nullius-rubber", amount=14},
      {type="item", name="cliff-explosives", amount=2}
    },
    results = {
      {type="item", name="rocket-fuel", amount=3},
      {type="fluid", name="nullius-wastewater", amount=200}
    },
    main_product = "rocket-fuel"
  },
  {
    type = "recipe",
    name = "nullius-legacy-boxed-rocket-fuel",
    enabled = false,
    show_amount_in_title = false,
    always_show_products = true,
	hidden = true,
    allow_decomposition = false,
    allow_as_intermediate = false,
    category = "basic-chemistry",
    subgroup = "boxed-canister",
    crafting_machine_tint = {
      primary = data.raw.fluid["nullius-ammonia"].flow_color,
      secondary = data.raw.fluid["nullius-acid-hydrochloric"].flow_color
    },
    energy_required = 200,
    ingredients = {
      {type="item", name="nullius-box-methanol-canister", amount=1},
      {type="fluid", name="nullius-ammonia", amount=1200},
      {type="fluid", name="nullius-acid-hydrochloric", amount=1500},
      {type="fluid", name="nullius-compressed-oxygen", amount=750},
      {type="item", name="nullius-box-salt", amount=5},
      {type="item", name="nullius-box-iron-oxide", amount=3},
      {type="item", name="nullius-box-aluminum-wire", amount=20},
      {type="item", name="nullius-box-rubber", amount=14},
      {type="item", name="nullius-box-explosive", amount=2}
    },
    results = {
      {type="item", name="nullius-box-rocket-fuel", amount=3},
      {type="fluid", name="nullius-wastewater", amount=1000}
    },
    main_product = "nullius-box-rocket-fuel"
  },

  {
    type = "recipe",
    name = "nullius-compressed-air",
    enabled = false,
    show_amount_in_title = false,
    always_show_products = true,
	hide_from_stats = true,
    category = "compression",
    energy_required = 1,
    ingredients = {
      {type="fluid", name="nullius-air", amount=260}
    },
    results = {
      {type="fluid", name="nullius-compressed-air", amount=65}
    },
    main_product = "nullius-compressed-air"
  },
  {
    type = "recipe",
    name = "nullius-compressed-residual-gas",
    enabled = false,
    show_amount_in_title = false,
    always_show_products = true,
	hide_from_stats = true,
    category = "compression",
    energy_required = 1,
    ingredients = {
      {type="fluid", name="nullius-residual-gas", amount=200}
    },
    results = {
      {type="fluid", name="nullius-compressed-residual-gas", amount=50}
    },
    main_product = "nullius-compressed-residual-gas"
  },
  {
    type = "recipe",
    name = "nullius-compressed-trace-gas",
    enabled = false,
    show_amount_in_title = false,
    always_show_products = true,
	hide_from_stats = true,
    category = "compression",
    energy_required = 1,
    ingredients = {
      {type="fluid", name="nullius-trace-gas", amount=120}
    },
    results = {
      {type="fluid", name="nullius-compressed-trace-gas", amount=30}
    },
    main_product = "nullius-compressed-trace-gas"
  },
  {
    type = "recipe",
    name = "nullius-compressed-nitrogen",
    enabled = false,
    show_amount_in_title = false,
    always_show_products = true,
	hide_from_stats = true,
    category = "compression",
    energy_required = 1,
    ingredients = {
      {type="fluid", name="nullius-nitrogen", amount=208}
    },
    results = {
      {type="fluid", name="nullius-compressed-nitrogen", amount=52}
    },
    main_product = "nullius-compressed-nitrogen"
  },
  {
    type = "recipe",
    name = "nullius-compressed-argon",
    enabled = false,
    show_amount_in_title = false,
    always_show_products = true,
	hide_from_stats = true,
    category = "compression",
    energy_required = 1,
    ingredients = {
      {type="fluid", name="nullius-argon", amount=160}
    },
    results = {
      {type="fluid", name="nullius-compressed-argon", amount=40}
    },
    main_product = "nullius-compressed-argon"
  },
  {
    type = "recipe",
    name = "nullius-compressed-helium",
    enabled = false,
    show_amount_in_title = false,
    always_show_products = true,
	hide_from_stats = true,
    category = "compression",
    energy_required = 1,
    ingredients = {
      {type="fluid", name="nullius-helium", amount=75}
    },
    results = {
      {type="fluid", name="nullius-compressed-helium", amount=30}
    },
    main_product = "nullius-compressed-helium"
  },
  {
    type = "recipe",
    name = "nullius-compressed-hydrogen",
    enabled = false,
    show_amount_in_title = false,
    always_show_products = true,
	hide_from_stats = true,
    category = "compression",
    energy_required = 1,
    ingredients = {
      {type="fluid", name="nullius-hydrogen", amount=960}
    },
    results = {
      {type="fluid", name="nullius-compressed-hydrogen", amount=240}
    },
    main_product = "nullius-compressed-hydrogen"
  },
  {
    type = "recipe",
    name = "nullius-compressed-oxygen",
    enabled = false,
    show_amount_in_title = false,
    always_show_products = true,
	hide_from_stats = true,
    category = "compression",
    energy_required = 1,
    ingredients = {
      {type="fluid", name="nullius-oxygen", amount=960}
    },
    results = {
      {type="fluid", name="nullius-compressed-oxygen", amount=240}
    },
    main_product = "nullius-compressed-oxygen"
  },
  {
    type = "recipe",
    name = "nullius-compressed-carbon-dioxide",
    enabled = false,
    show_amount_in_title = false,
    always_show_products = true,
	hide_from_stats = true,
    category = "compression",
    energy_required = 1,
    ingredients = {
      {type="fluid", name="nullius-carbon-dioxide", amount=320}
    },
    results = {
      {type="fluid", name="nullius-compressed-carbon-dioxide", amount=80}
    },
    main_product = "nullius-compressed-carbon-dioxide"
  },
  {
    type = "recipe",
    name = "nullius-compressed-carbon-monoxide",
    enabled = false,
    show_amount_in_title = false,
    always_show_products = true,
	hide_from_stats = true,
    category = "compression",
    energy_required = 1,
    ingredients = {
      {type="fluid", name="nullius-carbon-monoxide", amount=480}
    },
    results = {
      {type="fluid", name="nullius-compressed-carbon-monoxide", amount=120}
    },
    main_product = "nullius-compressed-carbon-monoxide"
  },
  {
    type = "recipe",
    name = "nullius-compressed-methane",
    enabled = false,
    show_amount_in_title = false,
    always_show_products = true,
	hide_from_stats = true,
    category = "compression",
    energy_required = 1,
    ingredients = {
      {type="fluid", name="nullius-methane", amount=640}
    },
    results = {
      {type="fluid", name="nullius-compressed-methane", amount=160}
    },
    main_product = "nullius-compressed-methane"
  },

  {
    type = "recipe",
    name = "nullius-decompress-air",
    localised_name = {"recipe-name.nullius-decompress-air"},
    icons = angelsmods.functions.create_gas_fluid_icon(
      {"__angelsrefining__/graphics/icons/barreling-pump.png", 32 },
      {element_tint["air"], element_tint["residual"], element_tint["air"]}
    ),
    enabled = false,
    show_amount_in_title = false,
    always_show_products = true,
    allow_decomposition = false,
    allow_as_intermediate = false,
	hide_from_stats = true,
    category = "decompression",
    subgroup = "decompression",
    order = "nullius-bb",
    energy_required = 1,
    ingredients = {
      {type="fluid", name="nullius-compressed-air", amount=125}
    },
    results = {
      {type="fluid", name="nullius-air", amount=500}
    },
    main_product = "nullius-air"
  },
  {
    type = "recipe",
    name = "nullius-decompress-nitrogen",
    localised_name = {"recipe-name.nullius-decompress-nitrogen"},
    icons = angelsmods.functions.create_gas_fluid_icon(
      {"__angelsrefining__/graphics/icons/barreling-pump.png", 32 },
      {element_tint["nitrogen"], element_tint["nitrogen"], element_tint["nitrogen"]}
    ),
    enabled = false,
    show_amount_in_title = false,
    always_show_products = true,
    allow_decomposition = false,
    allow_as_intermediate = false,
	hide_from_stats = true,
    category = "decompression",
    subgroup = "decompression",
    order = "nullius-c",
    energy_required = 1,
    ingredients = {
      {type="fluid", name="nullius-compressed-nitrogen", amount=150}
    },
    results = {
      {type="fluid", name="nullius-nitrogen", amount=600}
    },
    main_product = "nullius-nitrogen"
  },
  {
    type = "recipe",
    name = "nullius-decompress-argon",
    localised_name = {"recipe-name.nullius-decompress-argon"},
    icons = angelsmods.functions.create_gas_fluid_icon(
      {"__angelsrefining__/graphics/icons/barreling-pump.png", 32 },
      {element_tint["argon"], element_tint["argon"], element_tint["argon"]}
    ),
    enabled = false,
    show_amount_in_title = false,
    always_show_products = true,
    allow_decomposition = false,
    allow_as_intermediate = false,
	hide_from_stats = true,
    category = "decompression",
    subgroup = "decompression",
    order = "nullius-d",
    energy_required = 1,
    ingredients = {
      {type="fluid", name="nullius-compressed-argon", amount=125}
    },
    results = {
      {type="fluid", name="nullius-argon", amount=500}
    },
    main_product = "nullius-argon"
  },
  {
    type = "recipe",
    name = "nullius-decompress-helium",
    localised_name = {"recipe-name.nullius-decompress-helium"},
    icons = angelsmods.functions.create_gas_fluid_icon(
      {"__angelsrefining__/graphics/icons/barreling-pump.png", 32 },
      {element_tint["helium"], element_tint["helium"], element_tint["helium"]}
    ),
    enabled = false,
    show_amount_in_title = false,
    always_show_products = true,
    allow_decomposition = false,
    allow_as_intermediate = false,
	hide_from_stats = true,
    category = "decompression",
    subgroup = "decompression",
    order = "nullius-e",
    energy_required = 1,
    ingredients = {
      {type="fluid", name="nullius-compressed-helium", amount=128}
    },
    results = {
      {type="fluid", name="nullius-helium", amount=320}
    },
    main_product = "nullius-helium"
  },
  {
    type = "recipe",
    name = "nullius-decompress-hydrogen",
    localised_name = {"recipe-name.nullius-decompress-hydrogen"},
    icons = angelsmods.functions.create_gas_fluid_icon(
      {"__angelsrefining__/graphics/icons/barreling-pump.png", 32 },
      {element_tint["hydrogen"], element_tint["hydrogen"], element_tint["hydrogen"]}
    ),
    enabled = false,
    show_amount_in_title = false,
    always_show_products = true,
    allow_decomposition = false,
    allow_as_intermediate = false,
	hide_from_stats = true,
    category = "decompression",
    subgroup = "decompression",
    order = "nullius-f",
    energy_required = 1,
    ingredients = {
      {type="fluid", name="nullius-compressed-hydrogen", amount=125}
    },
    results = {
      {type="fluid", name="nullius-hydrogen", amount=500}
    },
    main_product = "nullius-hydrogen"
  },
  {
    type = "recipe",
    name = "nullius-decompress-oxygen",
    localised_name = {"recipe-name.nullius-decompress-oxygen"},
    icons = angelsmods.functions.create_gas_fluid_icon(
      {"__angelsrefining__/graphics/icons/barreling-pump.png", 32 },
      {element_tint["oxygen"], element_tint["oxygen"], element_tint["oxygen"]}
    ),
    enabled = false,
    show_amount_in_title = false,
    always_show_products = true,
    allow_decomposition = false,
    allow_as_intermediate = false,
	hide_from_stats = true,
    category = "decompression",
    subgroup = "decompression",
    order = "nullius-g",
    energy_required = 1,
    ingredients = {
      {type="fluid", name="nullius-compressed-oxygen", amount=125}
    },
    results = {
      {type="fluid", name="nullius-oxygen", amount=500}
    },
    main_product = "nullius-oxygen"
  },
  {
    type = "recipe",
    name = "nullius-decompress-carbon-dioxide",
    localised_name = {"recipe-name.nullius-decompress-carbon-dioxide"},
    icons = angelsmods.functions.create_gas_fluid_icon(
      {"__angelsrefining__/graphics/icons/barreling-pump.png", 32 },
      {element_tint["carbon"], element_tint["oxygen"], element_tint["oxygen"]}
    ),
    enabled = false,
    show_amount_in_title = false,
    always_show_products = true,
    allow_decomposition = false,
    allow_as_intermediate = false,
	hide_from_stats = true,
    category = "decompression",
	subgroup = "compression",
    order = "nullius-pb",
    energy_required = 1,
    ingredients = {
      {type="fluid", name="nullius-compressed-carbon-dioxide", amount=150}
    },
    results = {
      {type="fluid", name="nullius-carbon-dioxide", amount=600}
    },
    main_product = "nullius-carbon-dioxide"
  },
  {
    type = "recipe",
    name = "nullius-decompress-carbon-monoxide",
    localised_name = {"recipe-name.nullius-decompress-carbon-monoxide"},
    icons = angelsmods.functions.create_gas_fluid_icon(
      {"__angelsrefining__/graphics/icons/barreling-pump.png", 32 },
      {element_tint["carbon"], element_tint["carbon"], element_tint["oxygen"]}
    ),
    enabled = false,
    show_amount_in_title = false,
    always_show_products = true,
    allow_decomposition = false,
    allow_as_intermediate = false,
	hide_from_stats = true,
    category = "decompression",
    subgroup = "compression",
    order = "nullius-pc",
    energy_required = 1,
    ingredients = {
      {type="fluid", name="nullius-compressed-carbon-monoxide", amount=150}
    },
    results = {
      {type="fluid", name="nullius-carbon-monoxide", amount=600}
    },
    main_product = "nullius-carbon-monoxide"
  },
  {
    type = "recipe",
    name = "nullius-decompress-methane",
    localised_name = {"recipe-name.nullius-decompress-methane"},
    icons = angelsmods.functions.create_gas_fluid_icon(
      {"__angelsrefining__/graphics/icons/barreling-pump.png", 32 },
      {element_tint["carbon"], element_tint["hydrogen"], element_tint["hydrogen"]}
    ),
    enabled = false,
    show_amount_in_title = false,
    always_show_products = true,
    allow_decomposition = false,
    allow_as_intermediate = false,
	hide_from_stats = true,
    category = "decompression",
	subgroup = "compression",
    order = "nullius-pd",
    energy_required = 1,
    ingredients = {
      {type="fluid", name="nullius-compressed-methane", amount=150}
    },
    results = {
      {type="fluid", name="nullius-methane", amount=600}
    },
    main_product = "nullius-methane"
  },
  
  {
    type = "recipe",
    name = "nullius-decompress-residual-gas",
    localised_name = {"recipe-name.nullius-decompression", {"fluid-name.nullius-residual-gas"}},
    icons = angelsmods.functions.create_gas_fluid_icon(
      {"__angelsrefining__/graphics/icons/barreling-pump.png", 32 },
      {element_tint["residual"], element_tint["trace"], element_tint["residual"]}
    ),
    enabled = false,
    show_amount_in_title = false,
    always_show_products = true,
    allow_decomposition = false,
    allow_as_intermediate = false,
	hide_from_stats = true,
    category = "decompression",
    subgroup = "decompression",
    order = "nullius-bc",
    energy_required = 1,
    ingredients = {
      {type="fluid", name="nullius-compressed-residual-gas", amount=100}
    },
    results = {
      {type="fluid", name="nullius-residual-gas", amount=400}
    },
    main_product = "nullius-residual-gas"
  },
  {
    type = "recipe",
    name = "nullius-decompress-trace-gas",
    localised_name = {"recipe-name.nullius-decompression", {"fluid-name.nullius-trace-gas"}},
    icons = angelsmods.functions.create_gas_fluid_icon(
      {"__angelsrefining__/graphics/icons/barreling-pump.png", 32 },
      {element_tint["trace"], element_tint["volcanic"], element_tint["trace"]}
    ),
    enabled = false,
    show_amount_in_title = false,
    always_show_products = true,
    allow_decomposition = false,
    allow_as_intermediate = false,
	hide_from_stats = true,
    category = "decompression",
    subgroup = "decompression",
    order = "nullius-bd",
    energy_required = 1,
    ingredients = {
      {type="fluid", name="nullius-compressed-trace-gas", amount=50}
    },
    results = {
      {type="fluid", name="nullius-trace-gas", amount=200}
    },
    main_product = "nullius-trace-gas"
  },



  {
    type = "recipe",
    name = "nullius-sludge-disposal-1",
    localised_name = {"recipe-name.nullius-sludge-disposal-1"},
    icons = {
      {
        icon = FLUIDPATH .. "wastewater.png",
        icon_size = 64
      },
      {
        icon = FLUIDPATH .. "sludge.png",
        icon_size = 64,
        scale = 0.2,
        shift = {-12, -10}
      }
    },
    enabled = false,
    show_amount_in_title = false,
    always_show_products = true,
    category = "nullius-water-treatment",
    subgroup = "waste-management",
    order = "nullius-cb",
    energy_required = 1,
    no_productivity = true,
    ingredients = {
      {type="fluid", name="nullius-sludge", amount=40},
      {type="fluid", name="nullius-seawater", amount=200}
    },
    results = {
      {type="fluid", name="nullius-wastewater", amount=120}
    },
    main_product = "nullius-wastewater"
  },
  {
    type = "recipe",
    name = "nullius-sludge-disposal-2",
    localised_name = {"recipe-name.nullius-sludge-disposal-2"},
    icons = {
      {
        icon = FLUIDPATH .. "wastewater.png",
        icon_size = 64
      },
      {
        icon = FLUIDPATH .. "freshwater.png",
        icon_size = 64,
        scale = 0.2,
        shift = {-12, -10}
      }
    },
    enabled = false,
    show_amount_in_title = false,
    always_show_products = true,
    category = "nullius-water-treatment",
    subgroup = "waste-management",
    order = "nullius-cc",
    energy_required = 1,
    no_productivity = true,
    ingredients = {
      {type="fluid", name="nullius-sludge", amount=75},
      {type="fluid", name="nullius-freshwater", amount=150}
    },
    results = {
      {type="fluid", name="nullius-wastewater", amount=250}
    },
    main_product = "nullius-wastewater"
  },
  {
    type = "recipe",
    name = "nullius-sand-disposal",
    localised_name = {"recipe-name.nullius-sand-disposal"},
    icons = {
      {
        icon = FLUIDPATH .. "wastewater.png",
        icon_size = 64
      },
      {
        icon = ICONPATH .. "sand.png",
        icon_size = 64,
        scale = 0.18,
        shift = {-12, -11}
      }
    },
    enabled = false,
    show_amount_in_title = false,
    always_show_products = true,
    category = "nullius-water-treatment",
    subgroup = "waste-management",
    order = "nullius-d",
    energy_required = 1,
    no_productivity = true,
    ingredients = {
      {type="item", name="nullius-sand", amount=4},
      {type="fluid", name="nullius-seawater", amount=80}
    },
    results = {
      {type="fluid", name="nullius-wastewater", amount=100}
    },
    main_product = "nullius-wastewater"
  },
  {
    type = "recipe",
    name = "nullius-dust-disposal-1",
    localised_name = {"recipe-name.nullius-dust-disposal-1"},
    icons = {
      {
        icon = FLUIDPATH .. "sludge.png",
        icon_size = 64
      },
      {
        icon = "__angelspetrochem__/graphics/icons/molecules/hydrogen-chloride.png",
        icon_size = 72,
        scale = 0.14,
        shift = {-12, -10}
      }
    },
    enabled = false,
    category = "ore-flotation",
    subgroup = "waste-management",
    order = "nullius-bb",
    energy_required = 1,
    ingredients = {
      {type="item", name="nullius-mineral-dust", amount=1},
      {type="fluid", name="nullius-acid-hydrochloric", amount=6, fluidbox_index=1}
    },
    results = {
      {type="fluid", name="nullius-sludge", amount=6},
      {type="fluid", name="nullius-carbon-dioxide", amount=5}
    },
    main_product = "nullius-sludge"
  },
  {
    type = "recipe",
    name = "nullius-boxed-sludge-1",
    localised_name = {"recipe-name.nullius-boxed", {"", {"fluid-name.nullius-sludge"}, " ", 1}},
    icons = {
      {
        icon = ICONPATH .. "crate.png",
        icon_size = 64
      },
      {
        icon = FLUIDPATH .. "sludge.png",
        icon_size = 64,
        scale = 0.45
      },
      {
        icon = "__angelspetrochem__/graphics/icons/molecules/hydrogen-chloride.png",
        icon_size = 72,
        scale = 0.12,
        shift = {-11, -9}
      }
    },
    enabled = false,
    category = "ore-flotation",
    subgroup = "boxed-fluid",
    order = "nullius-sb",
    energy_required = 5,
    ingredients = {
      {type="item", name="nullius-box-mineral-dust", amount=1},
      {type="fluid", name="nullius-acid-hydrochloric", amount=30, fluidbox_index=1}
    },
    results = {
      {type="fluid", name="nullius-sludge", amount=30},
      {type="fluid", name="nullius-carbon-dioxide", amount=25}
    },
    main_product = "nullius-sludge"
  },
  {
    type = "recipe",
    name = "nullius-dust-disposal-2",
    localised_name = {"recipe-name.nullius-dust-disposal-2"},
    icons = {
      {
        icon = FLUIDPATH .. "sludge.png",
        icon_size = 64
      },
      {
        icon = "__angelspetrochem__/graphics/icons/molecules/sulfuric-acid.png",
        icon_size = 72,
        scale = 0.16,
        shift = {-12, -10}
      }
    },
    enabled = false,
    category = "ore-flotation",
    subgroup = "waste-management",
    order = "nullius-bc",
    energy_required = 1,
    ingredients = {
      {type="item", name="nullius-mineral-dust", amount=3},
      {type="fluid", name="nullius-acid-sulfuric", amount=8, fluidbox_index=1}
    },
    results = {
      {type="fluid", name="nullius-sludge", amount=20},
      {type="fluid", name="nullius-carbon-dioxide", amount=18}
    },
    main_product = "nullius-sludge"
  },
  {
    type = "recipe",
    name = "nullius-boxed-sludge-2",
    localised_name = {"recipe-name.nullius-boxed", {"", {"fluid-name.nullius-sludge"}, " ", 2}},
    icons = {
      {
        icon = ICONPATH .. "crate.png",
        icon_size = 64
      },
      {
        icon = FLUIDPATH .. "sludge.png",
        icon_size = 64,
        scale = 0.45
      },
      {
        icon = "__angelspetrochem__/graphics/icons/molecules/sulfuric-acid.png",
        icon_size = 72,
        scale = 0.14,
        shift = {-11, -9}
      }
    },
    enabled = false,
    category = "ore-flotation",
    subgroup = "boxed-fluid",
    order = "nullius-sc",
    energy_required = 5,
    ingredients = {
      {type="item", name="nullius-box-mineral-dust", amount=3},
      {type="fluid", name="nullius-acid-sulfuric", amount=40, fluidbox_index=1}
    },
    results = {
      {type="fluid", name="nullius-sludge", amount=100},
      {type="fluid", name="nullius-carbon-dioxide", amount=90}
    },
    main_product = "nullius-sludge"
  },

  {
    type = "item",
    name = "nullius-plastic",
    icon = "__base__/graphics/icons/plastic-bar.png",
    icon_size = 64,
    icon_mipmaps = 4,
    subgroup = "organic-material-2",
    order = "nullius-b",
    stack_size = 100
  },
  {
    type = "recipe",
    name = "nullius-plastic",
    localised_name = {"recipe-name.nullius-pvc"},
    icons = {
      {
        icon = "__base__/graphics/icons/plastic-bar.png",
        icon_size = 64,
        icon_mipmaps = 4
      },
      {
        icon = "__angelspetrochem__/graphics/icons/molecules/chlorine.png",
        icon_size = 72,
        scale = 0.2,
        shift = {9, -10}
      }
    },
    enabled = false,
    category = "basic-chemistry",
    order = "nullius-bb",
    crafting_machine_tint = {
      primary = data.raw.fluid["nullius-ethylene"].flow_color,
      secondary = data.raw.fluid["nullius-chlorine"].flow_color
    },
    energy_required = 3,
    ingredients = {
      {type="fluid", name="nullius-ethylene", amount=25},
      {type="fluid", name="nullius-chlorine", amount=25}
    },
    results = {
      {type="item", name="nullius-plastic", amount=1},
      {type="fluid", name="nullius-hydrogen-chloride", amount=15}
    },
    main_product = "nullius-plastic"
  },
  {
    type = "recipe",
    name = "nullius-polypropylene",
    localised_name = {"recipe-name.nullius-polypropylene"},
    icons = {
      {
        icon = "__base__/graphics/icons/plastic-bar.png",
        icon_size = 64,
        icon_mipmaps = 4
      },
      {
        icon = "__angelspetrochem__/graphics/icons/molecules/propene.png",
        icon_size = 72,
        scale = 0.2,
        shift = {9, -10}
      }
    },
    show_amount_in_title = false,
    always_show_products = true,
    enabled = false,
    category = "ore-flotation",
    order = "nullius-bc",
    crafting_machine_tint = {
      primary = data.raw.fluid["nullius-propene"].flow_color,
      secondary = data.raw.fluid["nullius-ethylene"].flow_color
    },
    energy_required = 8,
    ingredients = {
      {type="fluid", name="nullius-propene", amount=45},
      {type="fluid", name="nullius-ethylene", amount=5}
    },
    result = "nullius-plastic",
    result_count = 4
  },
  {
    type = "recipe",
    name = "nullius-plastic-pc-abs",
    localised_name = {"recipe-name.nullius-pc-abs"},
    icons = {
      {
        icon = "__base__/graphics/icons/plastic-bar.png",
        icon_size = 64,
        icon_mipmaps = 4
      },
      {
        icon = "__angelspetrochem__/graphics/icons/molecules/styrene.png",
        icon_size = 72,
        scale = 0.2,
        shift = {10, -9}
      }
    },
    show_amount_in_title = false,
    always_show_products = true,
    enabled = false,
    category = "basic-chemistry",
    order = "nullius-be",
    crafting_machine_tint = {
      primary = data.raw.fluid["nullius-acrylonitrile"].flow_color,
      secondary = data.raw.fluid["nullius-styrene"].flow_color
    },
    energy_required = 8,
    ingredients = {
      {type="item", name="nullius-bpa", amount=1},
      {type="fluid", name="nullius-butadiene", amount=5},
      {type="fluid", name="nullius-styrene", amount=4},
      {type="fluid", name="nullius-acrylonitrile", amount=3}
    },
    result = "nullius-plastic",
    result_count = 8
  },
  {
    type = "recipe",
    name = "nullius-boxed-plastic",
    localised_name = {"recipe-name.nullius-boxed", {"recipe-name.nullius-pc-abs"}},
    icons = {
      {
        icon = ICONPATH .. "crate.png",
        icon_size = 64
      },
      {
        icon = "__base__/graphics/icons/plastic-bar.png",
        icon_size = 64,
        icon_mipmaps = 4,
		scale = 0.45
      },
      {
        icon = "__angelspetrochem__/graphics/icons/molecules/styrene.png",
        icon_size = 72,
        scale = 0.18,
        shift = {9, -8}
      }
    },
    show_amount_in_title = false,
    always_show_products = true,
    enabled = false,
    category = "basic-chemistry",
    subgroup = "boxed-organic-2",
    order = "nullius-bb",
    crafting_machine_tint = {
      primary = data.raw.fluid["nullius-acrylonitrile"].flow_color,
      secondary = data.raw.fluid["nullius-styrene"].flow_color
    },
    energy_required = 40,
    ingredients = {
      {type="item", name="nullius-box-bpa", amount=1},
      {type="fluid", name="nullius-butadiene", amount=25},
      {type="fluid", name="nullius-styrene", amount=20},
      {type="fluid", name="nullius-acrylonitrile", amount=15}
    },
    result = "nullius-box-plastic",
    result_count = 8
  },
  {
    type = "recipe",
    name = "nullius-plastic-pex",
    localised_name = {"recipe-name.nullius-pex"},
    icons = {
      {
        icon = "__base__/graphics/icons/plastic-bar.png",
        icon_size = 64,
        icon_mipmaps = 4
      },
      {
        icon = "__angelspetrochem__/graphics/icons/molecules/ethylene.png",
        icon_size = 72,
        scale = 0.2,
        shift = {10, -9}
      }
    },
    show_amount_in_title = false,
    always_show_products = true,
    enabled = false,
    category = "basic-chemistry",
    order = "nullius-bd",
    crafting_machine_tint = {
      primary = data.raw.fluid["nullius-ethylene"].flow_color,
      secondary = data.raw.fluid["nullius-hydrogen-chloride"].flow_color
    },
    energy_required = 60,
    ingredients = {
      {type="fluid", name="nullius-ethylene", amount=325},
      {type="fluid", name="nullius-hydrogen-chloride", amount=50},
      {type="item", name="nullius-silicon-ingot", amount=1},
      {type="item", name="nullius-aluminum-powder", amount=2}
    },
    results = {
      {type="item", name="nullius-plastic", amount=45},
      {type="fluid", name="nullius-sludge", amount=40}
    },
    main_product = "nullius-plastic",
    result_count = 45
  },
  {
    type = "recipe",
    name = "nullius-boxed-plastic-pex",
    localised_name = {"recipe-name.nullius-boxed", {"recipe-name.nullius-pex"}},
    icons = {
      {
        icon = ICONPATH .. "crate.png",
        icon_size = 64
      },
      {
        icon = "__base__/graphics/icons/plastic-bar.png",
        icon_size = 64,
        icon_mipmaps = 4,
		scale = 0.45
      },
      {
        icon = "__angelspetrochem__/graphics/icons/molecules/ethylene.png",
        icon_size = 72,
        scale = 0.18,
        shift = {9, -8}
      }
    },
    show_amount_in_title = false,
    always_show_products = true,
    enabled = false,
    category = "basic-chemistry",
    subgroup = "boxed-organic-2",
    order = "nullius-bc",
    crafting_machine_tint = {
      primary = data.raw.fluid["nullius-ethylene"].flow_color,
      secondary = data.raw.fluid["nullius-hydrogen-chloride"].flow_color
    },
    energy_required = 60,
    ingredients = {
      {type="fluid", name="nullius-ethylene", amount=325},
      {type="fluid", name="nullius-hydrogen-chloride", amount=50},
      {type="item", name="nullius-silicon-ingot", amount=1},
      {type="item", name="nullius-aluminum-powder", amount=2}
    },
    results = {
      {type="item", name="nullius-box-plastic", amount=9},
      {type="fluid", name="nullius-sludge", amount=40}
    },
    main_product = "nullius-box-plastic",
    result_count = 9
  },
  {
    type = "recipe",
    name = "nullius-legacy-plastic-pex",
    localised_name = {"recipe-name.nullius-pex"},
    icons = {
      {
        icon = "__base__/graphics/icons/plastic-bar.png",
        icon_size = 64,
        icon_mipmaps = 4
      },
      {
        icon = "__angelspetrochem__/graphics/icons/molecules/ethylene.png",
        icon_size = 72,
        scale = 0.2,
        shift = {10, -9}
      }
    },
    show_amount_in_title = false,
    always_show_products = true,
    enabled = false,
	hidden = true,
    allow_decomposition = false,
    allow_as_intermediate = false,
    category = "basic-chemistry",
    order = "nullius-bd",
    crafting_machine_tint = {
      primary = data.raw.fluid["nullius-ethylene"].flow_color,
      secondary = data.raw.fluid["nullius-hydrogen-chloride"].flow_color
    },
    energy_required = 50,
    ingredients = {
      {type="fluid", name="nullius-ethylene", amount=270},
      {type="fluid", name="nullius-hydrogen-chloride", amount=40},
      {type="item", name="nullius-silicon-ingot", amount=1},
      {type="item", name="nullius-aluminum-wire", amount=1}
    },
    results = {
      {type="item", name="nullius-plastic", amount=40},
      {type="fluid", name="nullius-sludge", amount=40}
    },
    main_product = "nullius-plastic",
    result_count = 40
  },
  {
    type = "recipe",
    name = "nullius-legacy-boxed-plastic-pex",
    localised_name = {"recipe-name.nullius-boxed", {"recipe-name.nullius-pex"}},
    icons = {
      {
        icon = ICONPATH .. "crate.png",
        icon_size = 64
      },
      {
        icon = "__base__/graphics/icons/plastic-bar.png",
        icon_size = 64,
        icon_mipmaps = 4,
		scale = 0.45
      },
      {
        icon = "__angelspetrochem__/graphics/icons/molecules/ethylene.png",
        icon_size = 72,
        scale = 0.18,
        shift = {9, -8}
      }
    },
    show_amount_in_title = false,
    always_show_products = true,
    enabled = false,
	hidden = true,
    allow_decomposition = false,
    allow_as_intermediate = false,
    category = "basic-chemistry",
    subgroup = "boxed-organic-2",
    order = "nullius-bc",
    crafting_machine_tint = {
      primary = data.raw.fluid["nullius-ethylene"].flow_color,
      secondary = data.raw.fluid["nullius-hydrogen-chloride"].flow_color
    },
    energy_required = 50,
    ingredients = {
      {type="fluid", name="nullius-ethylene", amount=270},
      {type="fluid", name="nullius-hydrogen-chloride", amount=40},
      {type="item", name="nullius-silicon-ingot", amount=1},
      {type="item", name="nullius-aluminum-wire", amount=1}
    },
    results = {
      {type="item", name="nullius-box-plastic", amount=8},
      {type="fluid", name="nullius-sludge", amount=40}
    },
    main_product = "nullius-box-plastic",
    result_count = 8
  },

  {
    type = "recipe",
    name = "nullius-lubricant",
    enabled = false,
    category = "basic-chemistry",
    subgroup = "chlorine-chemistry",
    order = "nullius-g",
    crafting_machine_tint = {
      primary = data.raw.fluid["nullius-methane"].flow_color,
      secondary = data.raw.fluid["nullius-hydrogen-chloride"].flow_color
    },
    energy_required = 4,
    ingredients = {
      {type="item", name="nullius-silicon-ingot", amount=1},
      {type="fluid", name="nullius-methanol", amount=12, fluidbox_index=1},
      {type="fluid", name="nullius-hydrogen-chloride", amount=50, fluidbox_index=2}
    },
    results = {
      {type="fluid", name="nullius-lubricant", amount=10},
      {type="fluid", name="nullius-acid-hydrochloric", amount=12}
    },
    main_product = "nullius-lubricant"
  },
  {
    type = "recipe",
    name = "nullius-boxed-lubricant",
    localised_name = {"recipe-name.nullius-boxed", {"fluid-name.nullius-lubricant"}},
    icons = {
      {
        icon = ICONPATH .. "crate.png",
        icon_size = 64
      },
      {
        icon = "__base__/graphics/icons/fluid/lubricant.png",
        icon_size = 64,
        scale = 0.45
      }
    },
    enabled = false,
    category = "basic-chemistry",
    subgroup = "boxed-fluid",
    order = "nullius-e",
    crafting_machine_tint = {
      primary = data.raw.fluid["nullius-methane"].flow_color,
      secondary = data.raw.fluid["nullius-hydrogen-chloride"].flow_color
    },
    energy_required = 20,
    ingredients = {
      {type="item", name="nullius-box-silicon-ingot", amount=1},
      {type="fluid", name="nullius-methanol", amount=60, fluidbox_index=1},
      {type="fluid", name="nullius-hydrogen-chloride", amount=250, fluidbox_index=2}
    },
    results = {
      {type="fluid", name="nullius-lubricant", amount=50},
      {type="fluid", name="nullius-acid-hydrochloric", amount=60}
    },
    main_product = "nullius-lubricant"
  },

  {
    type = "recipe",
    name = "nullius-solvent",
    enabled = false,
    category = "basic-chemistry",
    crafting_machine_tint = {
      primary = data.raw.fluid["nullius-methane"].flow_color,
      secondary = data.raw.fluid["nullius-oxygen"].flow_color
    },
    energy_required = 3,
    ingredients = {
      {type="fluid", name="nullius-methanol", amount=20},
      {type="fluid", name="nullius-carbon-monoxide", amount=40},
      {type="fluid", name="nullius-oxygen", amount=20}
    },
    results = {
      {type="fluid", name="nullius-solvent", amount=10},
      {type="fluid", name="nullius-wastewater", amount=10}
    },
    main_product = "nullius-solvent"
  },
  {
    type = "recipe",
    name = "nullius-pressure-solvent",
    localised_name = {"recipe-name.nullius-pressure-solvent"},
    icons = angelsmods.functions.create_liquid_recipe_icon(nil,
      {element_tint["solvent"], element_tint["solvent"], element_tint["solvent"]},
      nil
    ),
    enabled = false,
    category = "basic-chemistry",
	subgroup = "organic-chemistry",
    order = "nullius-ic",
    crafting_machine_tint = {
      primary = data.raw.fluid["nullius-methane"].flow_color,
      secondary = data.raw.fluid["nullius-oxygen"].flow_color
    },
    energy_required = 3,
    ingredients = {
      {type="fluid", name="nullius-methanol", amount=40},
      {type="fluid", name="nullius-compressed-carbon-monoxide", amount=20},
      {type="fluid", name="nullius-compressed-oxygen", amount=10}
    },
    results = {
      {type="fluid", name="nullius-solvent", amount=20},
      {type="fluid", name="nullius-wastewater", amount=20}
    },
    main_product = "nullius-solvent"
  },

  {
    type = "item",
    name = "nullius-bpa",
    icons = {{
      icon = "__angelsrefining__/graphics/icons/solid-salt.png",
      icon_size = 32,
      tint = {1, 0.95, 0.9, 0.6}
    }},
    subgroup = "organic-material-1",
    order = "nullius-c",
    stack_size = 100
  },
  {
    type = "recipe",
    name = "nullius-bpa",
    enabled = false,
    allow_as_intermediate = false,
    category = "basic-chemistry",
    order = "nullius-cb",
    crafting_machine_tint = {
      primary = data.raw.fluid["nullius-benzene"].flow_color,
      secondary = data.raw.fluid["nullius-propene"].flow_color
    },
    energy_required = 8,
    ingredients = {
      {type="fluid", name="nullius-propene", amount=40},
      {type="fluid", name="nullius-oxygen", amount=80},
      {type="fluid", name="nullius-benzene", amount=10}
    },
    results = {
      {type="item", name="nullius-bpa", amount=6},
      {type="fluid", name="nullius-wastewater", amount=15},
      {type="fluid", name="nullius-carbon-dioxide", amount=40}
    },
    main_product = "nullius-bpa"
  },
  {
    type = "recipe",
    name = "nullius-pressure-bpa",
    icons = {
      {
        icon = "__angelsrefining__/graphics/icons/solid-salt.png",
        icon_size = 32,
        tint = {1, 0.95, 0.9, 0.6}
      },
      {
        icon = "__angelspetrochem__/graphics/icons/molecules/oxygen.png",
        icon_size = 72,
        scale = 0.22,
        shift = {9, -12}
      }
    },
    enabled = false,
    allow_as_intermediate = false,
    category = "basic-chemistry",
    subgroup = "organic-material-1",
    order = "nullius-cc",
    crafting_machine_tint = {
      primary = data.raw.fluid["nullius-benzene"].flow_color,
      secondary = data.raw.fluid["nullius-propene"].flow_color
    },
    energy_required = 2,
    ingredients = {
      {type="fluid", name="nullius-propene", amount=20},
      {type="fluid", name="nullius-compressed-oxygen", amount=15},
      {type="fluid", name="nullius-benzene", amount=5}
    },
    results = {
      {type="item", name="nullius-bpa", amount=3},
      {type="fluid", name="nullius-wastewater", amount=8},
      {type="fluid", name="nullius-compressed-carbon-dioxide", amount=6}
    }
  },
  {
    type = "recipe",
    name = "nullius-boxed-bpa",
    enabled = false,
    allow_as_intermediate = false,
    category = "basic-chemistry",
    subgroup = "boxed-organic-1",
    order = "nullius-cb",
    crafting_machine_tint = {
      primary = data.raw.fluid["nullius-benzene"].flow_color,
      secondary = data.raw.fluid["nullius-propene"].flow_color
    },
    energy_required = 30,
    ingredients = {
      {type="fluid", name="nullius-propene", amount=200},
      {type="fluid", name="nullius-oxygen", amount=400},
      {type="fluid", name="nullius-benzene", amount=50}
    },
    results = {
      {type="item", name="nullius-box-bpa", amount=6},
      {type="fluid", name="nullius-wastewater", amount=75},
      {type="fluid", name="nullius-carbon-dioxide", amount=200}
    },
    main_product = "nullius-box-bpa"
  },
  {
    type = "recipe",
    name = "nullius-boxed-pressure-bpa",
    localised_name = {"recipe-name.nullius-pressure", {"item-name.nullius-box", {"item-name.nullius-bpa"}}},
    icons = {
      {
        icon = ICONPATH .. "crate.png",
        icon_size = 64
      },
      {
        icon = "__angelsrefining__/graphics/icons/solid-salt.png",
        icon_size = 32,
        tint = {1, 0.95, 0.9, 0.6},
        scale = 0.9
      },
      {
        icon = "__angelspetrochem__/graphics/icons/molecules/oxygen.png",
        icon_size = 72,
        scale = 0.18,
        shift = {7, -10}
      }
    },
    enabled = false,
    allow_as_intermediate = false,
    category = "basic-chemistry",
    subgroup = "boxed-organic-1",
    order = "nullius-cc",
    crafting_machine_tint = {
      primary = data.raw.fluid["nullius-benzene"].flow_color,
      secondary = data.raw.fluid["nullius-propene"].flow_color
    },
    energy_required = 10,
    ingredients = {
      {type="fluid", name="nullius-propene", amount=100},
      {type="fluid", name="nullius-compressed-oxygen", amount=75},
      {type="fluid", name="nullius-benzene", amount=25}
    },
    results = {
      {type="item", name="nullius-box-bpa", amount=3},
      {type="fluid", name="nullius-wastewater", amount=40},
      {type="fluid", name="nullius-compressed-carbon-dioxide", amount=30}
    }
  },

  {
    type = "recipe",
    name = "nullius-ech",
    localised_name = {"", {"fluid-name.nullius-ech"}, " ", 1},
    enabled = false,
    category = "basic-chemistry",
	subgroup = "chlorine-chemistry",
    order = "nullius-hb",
    crafting_machine_tint = {
      primary = data.raw.fluid["nullius-propene"].flow_color,
      secondary = data.raw.fluid["nullius-caustic-solution"].flow_color
    },
    energy_required = 1,
    ingredients = {
      {type="fluid", name="nullius-propene", amount=16},
      {type="fluid", name="nullius-chlorine", amount=30},
      {type="fluid", name="nullius-caustic-solution", amount=18}
    },
    results = {
      {type="fluid", name="nullius-ech", amount=5},
      {type="fluid", name="nullius-brine", amount=12}
    },
    main_product = "nullius-ech"
  },
  {
    type = "recipe",
    name = "nullius-glycerol",
    enabled = false,
    category = "basic-chemistry",
	subgroup = "chlorine-chemistry",
    order = "nullius-i",
    crafting_machine_tint = {
      primary = data.raw.fluid["nullius-ech"].flow_color,
      secondary = data.raw.fluid["nullius-acid-hydrochloric"].flow_color
    },
    energy_required = 1,
    ingredients = {
      {type="fluid", name="nullius-ech", amount=12, fluidbox_index=1},
      {type="item", name="nullius-sodium-hydroxide", amount=4},
      {type="fluid", name="nullius-acid-hydrochloric", amount=60, fluidbox_index=2}
    },
    results = {
      {type="fluid", name="nullius-glycerol", amount=6},
      {type="fluid", name="nullius-wastewater", amount=60}
    },
    main_product = "nullius-glycerol"
  },
  {
    type = "recipe",
    name = "nullius-boxed-glycerol",
    localised_name = {"recipe-name.nullius-boxed", {"fluid-name.nullius-glycerol"}},
    icons = {
      {
        icon = ICONPATH .. "crate.png",
        icon_size = 64
      },
      {
        icon = "__angelspetrochem__/graphics/icons/molecules/glycerol.png",
        icon_size = 72,
        scale = 0.4
      }
    },
    enabled = false,
    category = "basic-chemistry",
    subgroup = "boxed-biology",
    order = "nullius-ff",
    crafting_machine_tint = {
      primary = data.raw.fluid["nullius-ech"].flow_color,
      secondary = data.raw.fluid["nullius-acid-hydrochloric"].flow_color
    },
    energy_required = 5,
    ingredients = {
      {type="fluid", name="nullius-ech", amount=60, fluidbox_index=1},
      {type="item", name="nullius-box-sodium-hydroxide", amount=4},
      {type="fluid", name="nullius-acid-hydrochloric", amount=300, fluidbox_index=2}
    },
    results = {
      {type="fluid", name="nullius-glycerol", amount=30},
      {type="fluid", name="nullius-wastewater", amount=300}
    },
    main_product = "nullius-glycerol"
  },
  {
    type = "recipe",
    name = "nullius-glycerol-to-ech",
    localised_name = {"", {"fluid-name.nullius-ech"}, " ", 2},
    icons = angelsmods.functions.create_liquid_recipe_icon(
        {{"__angelspetrochem__/graphics/icons/molecules/epichlorohydrin.png", 72}},
      {element_tint["carbon"], element_tint["chlorine"], element_tint["oxygen"]},
      {{"__angelspetrochem__/graphics/icons/molecules/glycerol.png", 72}}
    ),
    enabled = false,
    category = "basic-chemistry",
	subgroup = "chlorine-chemistry",
    order = "nullius-hc",
    crafting_machine_tint = {
      primary = data.raw.fluid["nullius-glycerol"].flow_color,
      secondary = data.raw.fluid["nullius-ech"].flow_color
    },
    energy_required = 1,
    ingredients = {
      {type="fluid", name="nullius-glycerol", amount=20},
      {type="fluid", name="nullius-caustic-solution", amount=50},
      {type="fluid", name="nullius-acid-hydrochloric", amount=60}
    },
    results = {
      {type="fluid", name="nullius-ech", amount=15},
      {type="fluid", name="nullius-wastewater", amount=90}
    },
    main_product = "nullius-ech"
  },

  {
    type = "recipe",
    name = "nullius-epoxy",
    enabled = false,
    category = "basic-chemistry",
    crafting_machine_tint = {
      primary = data.raw.fluid["nullius-ech"].flow_color,
      secondary = data.raw.fluid["nullius-solvent"].flow_color
    },
    energy_required = 1,
    ingredients = {
      {type="item", name="nullius-bpa", amount=3},
      {type="fluid", name="nullius-ech", amount=10, fluidbox_index=2},
      {type="fluid", name="nullius-solvent", amount=3, fluidbox_index=1}
    },
    results = {
      {type="fluid", name="nullius-epoxy", amount=8},
      {type="fluid", name="nullius-wastewater", amount=5}
    },
    main_product = "nullius-epoxy"
  },
  {
    type = "recipe",
    name = "nullius-boxed-epoxy",
    localised_name = {"recipe-name.nullius-boxed", {"fluid-name.nullius-epoxy"}},
    icons = {
      {
        icon = ICONPATH .. "crate.png",
        icon_size = 64
      },
      {
        icon = FLUIDPATH .. "epoxy.png",
        icon_size = 64,
        scale = 0.45
      }
    },
    enabled = false,
    category = "basic-chemistry",
    subgroup = "boxed-organic-1",
    order = "nullius-e",
    crafting_machine_tint = {
      primary = data.raw.fluid["nullius-ech"].flow_color,
      secondary = data.raw.fluid["nullius-solvent"].flow_color
    },
    energy_required = 5,
    ingredients = {
      {type="item", name="nullius-box-bpa", amount=3},
      {type="fluid", name="nullius-ech", amount=50, fluidbox_index=2},
      {type="fluid", name="nullius-solvent", amount=15, fluidbox_index=1}
    },
    results = {
      {type="fluid", name="nullius-epoxy", amount=40},
      {type="fluid", name="nullius-wastewater", amount=25}
    },
    main_product = "nullius-epoxy"
  },

  {
    type = "recipe",
    name = "nullius-limestone-recovery",
    localised_name = {"recipe-name.nullius-limestone-recovery"},
    icons = {
      {
        icon = "__angelsrefining__/graphics/icons/solid-limestone.png",
        icon_size = 32
      },
      {
        icon = FLUIDPATH .. "sludge.png",
        icon_size = 64,
        scale = 0.35,
        shift = {10, -7}
      }
    },
    enabled = false,
    allow_as_intermediate = false,
    allow_decomposition = false,
    category = "ore-flotation",
	subgroup = "ore-recovery",
    order = "nullius-oe",
    energy_required = 20,
    ingredients = {
      {type="fluid", name="nullius-sludge", amount=200},
      {type="item", name="nullius-soda-ash", amount=5},
      {type="fluid", name="nullius-freshwater", amount=250}
    },
    results = {
      {type="item", name="nullius-crushed-limestone", amount=8},
      {type="item", name="nullius-crushed-bauxite", amount=4},
      {type="fluid", name="nullius-wastewater", amount=200, fluidbox_index=1}
    },
    main_product = "nullius-crushed-limestone"
  },
  {
    type = "recipe",
    name = "nullius-iron-recovery",
    localised_name = {"recipe-name.nullius-iron-recovery"},
    icons = {
      {
        icon = "__angelsrefining__/graphics/icons/iron-pebbles.png",
        icon_size = 32
      },
      {
        icon = FLUIDPATH .. "sludge.png",
        icon_size = 64,
        scale = 0.35,
        shift = {10, -7}
      }
    },
    enabled = false,
    allow_as_intermediate = false,
    allow_decomposition = false,
    category = "ore-flotation",
    subgroup = "ore-recovery",
    order = "nullius-ob",
    energy_required = 20,
    ingredients = {
      {type="fluid", name="nullius-sludge", amount=200},
      {type="fluid", name="nullius-caustic-solution", amount=160}
    },
    results = {
      {type="item", name="nullius-crushed-iron-ore", amount=8},
      {type="item", name="nullius-crushed-limestone", amount=4},
      {type="fluid", name="nullius-wastewater", amount=150, fluidbox_index=1}
    },
    main_product = "nullius-crushed-iron-ore"
  },
  {
    type = "recipe",
    name = "nullius-bauxite-recovery",
    localised_name = {"recipe-name.nullius-bauxite-recovery"},
    icons = {
      {
        icon = "__angelsrefining__/graphics/icons/crushed/crushed-6.png",
        icon_size = 64,
        tint = {0.867, 0.820, 0.609}
      },
      {
        icon = FLUIDPATH .. "sludge.png",
        icon_size = 64,
        scale = 0.35,
        shift = {10, -7}
      }
    },
    enabled = false,
    allow_as_intermediate = false,
    allow_decomposition = false,
    category = "ore-flotation",
	subgroup = "ore-recovery",
    order = "nullius-oc",
    energy_required = 20,
    ingredients = {
      {type="fluid", name="nullius-sludge", amount=200},
      {type="fluid", name="nullius-acid-sulfuric", amount=180}
    },
    results = {
      {type="item", name="nullius-crushed-bauxite", amount=8},
      {type="item", name="nullius-sand", amount=4},
      {type="fluid", name="nullius-wastewater", amount=150},
      {type="fluid", name="nullius-sulfur-dioxide", amount=40}
    },
    main_product = "nullius-crushed-bauxite"
  },
  {
    type = "recipe",
    name = "nullius-sand-recovery",
    localised_name = {"recipe-name.nullius-sand-recovery"},
    icons = {
      {
        icon = ICONPATH .. "sand.png",
        icon_size = 64
      },
      {
        icon = FLUIDPATH .. "sludge.png",
        icon_size = 64,
        scale = 0.35,
        shift = {10, -7}
      }
    },
    enabled = false,
    allow_as_intermediate = false,
    allow_decomposition = false,
    category = "ore-flotation",
	subgroup = "ore-recovery",
    order = "nullius-od",
    energy_required = 20,
    ingredients = {
      {type="fluid", name="nullius-sludge", amount=200},
      {type="fluid", name="nullius-acid-hydrochloric", amount=180}
    },
    results = {
      {type="item", name="nullius-sand", amount=8},
      {type="item", name="nullius-crushed-iron-ore", amount=4},
      {type="fluid", name="nullius-wastewater", amount=150},
      {type="fluid", name="nullius-carbon-dioxide", amount=100}
    },
    main_product = "nullius-sand"
  },
  {
    type = "recipe",
    name = "nullius-stone-recovery",
    localised_name = {"recipe-name.nullius-stone-recovery"},
    icons = {
      {
        icon = "__base__/graphics/icons/stone.png",
        icon_size = 64,
        icon_mipmaps = 4
      },
      {
        icon = FLUIDPATH .. "sludge.png",
        icon_size = 64,
        scale = 0.35,
        shift = {10, -7}
      }
    },
    enabled = false,
    allow_as_intermediate = false,
    allow_decomposition = false,
    category = "ore-flotation",
	subgroup = "ore-recovery",
    order = "nullius-of",
    energy_required = 30,
    ingredients = {
      {type="fluid", name="nullius-sludge", amount=250},
      {type="item", name="nullius-cement", amount=4},
      {type="fluid", name="nullius-freshwater", amount=200}
    },
    results = {
      {type="item", name="stone", amount=15},
      {type="fluid", name="nullius-wastewater", amount=150, fluidbox_index=1}
    },
    main_product = "stone"
  },

  {
    type = "item",
    name = "nullius-eutectic-salt",
    icons = {{
      icon = ICONPATH .. "salt.png",
      icon_size = 64,
      tint = {0.4, 0.6, 0.8}
    }},
    subgroup = "sodium-product",
    order = "nullius-g",
    stack_size = 100
  },
  {
    type = "recipe",
    name = "nullius-eutectic-salt",
    enabled = false,
    category = "basic-chemistry",
    crafting_machine_tint = {
      primary = data.raw.fluid["nullius-acid-nitric"].flow_color,
      secondary = data.raw.fluid["nullius-carbon-dioxide"].flow_color
    },
    energy_required = 8,
    ingredients = {
      {type="item", name="nullius-crushed-limestone", amount=2},
      {type="item", name="nullius-soda-ash", amount=3},
      {type="fluid", name="nullius-acid-nitric", amount=80, fluidbox_index=2}
    },
    results = {
      {type="item", name="nullius-eutectic-salt", amount=5},
      {type="fluid", name="nullius-carbon-dioxide", amount=100},
      {type="fluid", name="nullius-wastewater", amount=50}
    },
    main_product = "nullius-eutectic-salt"
  },
  {
    type = "recipe",
    name = "nullius-boxed-eutectic-salt",
    enabled = false,
    category = "basic-chemistry",
    subgroup = "boxed-sodium",
    order = "nullius-g",
    crafting_machine_tint = {
      primary = data.raw.fluid["nullius-acid-nitric"].flow_color,
      secondary = data.raw.fluid["nullius-carbon-dioxide"].flow_color
    },
    energy_required = 40,
    ingredients = {
      {type="item", name="nullius-box-crushed-limestone", amount=2},
      {type="item", name="nullius-box-soda-ash", amount=3},
      {type="fluid", name="nullius-acid-nitric", amount=400, fluidbox_index=2}
    },
    results = {
      {type="item", name="nullius-box-eutectic-salt", amount=5},
      {type="fluid", name="nullius-carbon-dioxide", amount=500},
      {type="fluid", name="nullius-wastewater", amount=250}
    },
    main_product = "nullius-box-eutectic-salt"
  },

  {
    type = "item",
    name = "nullius-aneutronic-cell",
    icon = ICONPATH .. "aneutronic-cell.png",
    icon_size = 64,
    fuel_category = "nullius-nuclear",
    burnt_result = "nullius-spent-fusion-cell",
    fuel_value = "1GJ",
    fuel_acceleration_multiplier = 1.6,
    fuel_top_speed_multiplier = 1.3,
	fuel_glow_color = {r=0.8, g=0.7, b=0, a=1},
    subgroup = "nuclear",
    order = "nullius-can",
    stack_size = 20
  },
  {
    type = "item",
    name = "nullius-fusion-cell",
    icon = ICONPATH .. "fusion-cell.png",
    icon_size = 64,
    fuel_category = "nullius-nuclear",
    burnt_result = "nullius-spent-fusion-cell",
    fuel_value = "3GJ",
    fuel_acceleration_multiplier = 2,
    fuel_top_speed_multiplier = 1.5,
	fuel_glow_color = {r=0.9, g=0, b=0.8, a=1},
    subgroup = "nuclear",
    order = "nullius-cb",
    stack_size = 20
  },
  {
    type = "item",
    name = "nullius-spent-fusion-cell",
    icon = ICONPATH .. "fusion-spent.png",
    icon_size = 64,
    subgroup = "nuclear",
    order = "nullius-cc",
    stack_size = 20
  },
  {
    type = "item",
    name = "nullius-breeder-cell",
    icon = ICONPATH .. "breeder-cell.png",
    icon_size = 64,
    fuel_category = "nullius-nuclear",
    burnt_result = "nullius-spent-breeder-cell",
    fuel_value = "500MJ",
    fuel_acceleration_multiplier = 1.4,
    fuel_top_speed_multiplier = 1.2,
	fuel_glow_color = {r=0, g=0.6, b=0.9, a=1},
    subgroup = "nuclear",
    order = "nullius-db",
    stack_size = 20
  },
  {
    type = "item",
    name = "nullius-spent-breeder-cell",
    icon = ICONPATH .. "breeder-spent.png",
    icon_size = 64,
    subgroup = "nuclear",
    order = "nullius-dc",
    stack_size = 20
  },
  {
    type = "recipe",
    name = "nullius-aneutronic-cell",
    enabled = false,
    show_amount_in_title = false,
    always_show_products = true,
    category = "nullius-barrel",
    energy_required = 15,
    ingredients = {
      {type="item", name="nullius-canister", amount=1},
      {type="fluid", name="nullius-compressed-hydrogen", amount=50},
      {type="item", name="nullius-boron", amount=5}
    },
    result = "nullius-aneutronic-cell"
  },
  {
    type = "recipe",
    name = "nullius-fusion-cell",
    enabled = false,
    show_amount_in_title = false,
    always_show_products = true,
    category = "basic-chemistry",
    crafting_machine_tint = {
      primary = data.raw.fluid["nullius-deuterium"].flow_color,
      secondary = data.raw.fluid["nullius-tritium"].flow_color
    },
    energy_required = 10,
    ingredients = {
      {type="item", name="nullius-canister", amount=1},
      {type="fluid", name="nullius-deuterium", amount=7},
      {type="fluid", name="nullius-tritium", amount=4}
    },
    result = "nullius-fusion-cell"
  },
  {
    type = "recipe",
    name = "nullius-fusion-recycling",
    icon = ICONPATH .. "fusion-spent.png",
    icon_size = 64,
    enabled = false,
    show_amount_in_title = false,
    always_show_products = true,
    category = "basic-chemistry",
    subgroup = "nuclear",
    order = "nullius-cc",
    crafting_machine_tint = {
      primary = data.raw.fluid["nullius-helium"].flow_color,
      secondary = data.raw.fluid["nullius-helium"].flow_color
    },
    energy_required = 15,
    ingredients = {
      {type="item", name="nullius-spent-fusion-cell", amount=4},
      {type="fluid", name="nullius-water", amount=100, fluidbox_index=1}
    },
    results = {
      {type="item", name="nullius-canister", amount=2},
      {type="fluid", name="nullius-helium", amount=20},
      {type="fluid", name="nullius-wastewater", amount=80}
    }
  },
  {
    type = "recipe",
    name = "nullius-breeder-cell",
    enabled = false,
    show_amount_in_title = false,
    always_show_products = true,
    category = "nanotechnology",
    energy_required = 10,
    ingredients = {
      {type="item", name="nullius-fusion-cell", amount=1},
      {type="item", name="nullius-lithium", amount=3},
      {type="item", name="nullius-boron", amount=2},
      {type="item", name="nullius-ceramic-powder", amount=3},
      {type="fluid", name="nullius-deuterium", amount=12},
      {type="fluid", name="nullius-compressed-helium", amount=10}
    },
    result = "nullius-breeder-cell"
  },
  {
    type = "recipe",
    name = "nullius-breeder-recycling",
    icon = ICONPATH .. "breeder-spent.png",
    icon_size = 64,
    enabled = false,
    show_amount_in_title = false,
    always_show_products = true,
    category = "distillation",
    subgroup = "nuclear",
    order = "nullius-dc",
    crafting_machine_tint = { primary = data.raw.fluid["nullius-tritium"].flow_color },
    energy_required = 20,
    ingredients = {
      {type="item", name="nullius-spent-breeder-cell", amount=3},
      {type="fluid", name="nullius-water", amount=120, fluidbox_index=1}
    },
    results = {
      {type="item", name="nullius-canister", amount=1},
      {type="item", name="nullius-lithium", amount=2},
      {type="fluid", name="nullius-tritium", amount=16},
      {type="fluid", name="nullius-helium", amount=60},
      {type="fluid", name="nullius-wastewater", amount=100}
    }
  },

})
