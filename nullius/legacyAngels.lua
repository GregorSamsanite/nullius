angelsLegacy = {}
angelsLegacy.functions = {}
angelsLegacy.data = {}

--REMOVE RESOURCE
function angelsLegacy.functions.remove_resource(resource)
  if data.raw.resource[resource] then
    data.raw.resource[resource] = nil
    data.raw["autoplace-control"][resource] = nil
  end

  local infinite_resource = nil
  if data.raw.resource["infinite-" .. resource] then
    infinite_resource = "infinite-" .. resource
    data.raw.resource["infinite-" .. resource] = nil
    data.raw["autoplace-control"]["infinite-" .. resource] = nil
  end

  -- Remove from presets
  for _, preset in pairs(data.raw["map-gen-presets"]["default"]) do
    if
      preset
      and preset.basic_settings
      and preset.basic_settings.autoplace_controls
      and preset.basic_settings.autoplace_controls[resource]
    then
      preset.basic_settings.autoplace_controls[resource] = nil
    end
    if
      infinite_resource
      and preset
      and preset.basic_settings
      and preset.basic_settings.autoplace_controls
      and preset.basic_settings.autoplace_controls[infinite_resource]
    then
      preset.basic_settings.autoplace_controls[infinite_resource] = nil
    end
  end

  -- Remove from planets
  for _, planet in pairs(data.raw.planet) do
    if
      planet
      and planet.map_gen_settings
      and planet.map_gen_settings.autoplace_controls
      and planet.map_gen_settings.autoplace_controls[resource]
    then
      planet.map_gen_settings.autoplace_controls[resource] = nil
      planet.map_gen_settings.autoplace_settings.entity.settings[resource] = nil
    end
    if
      infinite_resource
      and planet
      and planet.map_gen_settings
      and planet.map_gen_settings.autoplace_controls
      and planet.map_gen_settings.autoplace_controls[infinite_resource]
    then
      planet.map_gen_settings.autoplace_controls[infinite_resource] = nil
      planet.map_gen_settings.autoplace_settings.entity.settings[infinite_resource] = nil
    end
  end
end

local function clean_table(t)
  -- removes nil values from a table so it becomes a table without holes
  if type(t) ~= "table" then
    return t
  end
  local clone = {}
  for k, v in pairs(t or {}) do
    t[k] = nil
    table.insert(clone, v)
  end
  for i, v in ipairs(clone) do
    t[i] = v
  end
  return t
end
angelsLegacy.functions.clean_ingredient_list = clean_table
angelsLegacy.functions.clean_localised_description = clean_table

-------------------------------------------------------------------------------
-- GET ICON/ICONS FROM FLUID/ITEM ---------------------------------------------
-------------------------------------------------------------------------------
local function get_icons(object_name)
  for _, prototype in pairs({ "item", "fluid", "ammo", "capsule" }) do
    local object = data.raw[prototype][object_name]
    if object then
      if object.icons then -- icons has precedence over icon
        return object.icons
      end
      if object.icon then
        return {
          {
            icon = object.icon,
            icon_size = object.icon_size or 64,
            scale = 32 / (object.icon_size or 64),
          },
        }
      end
    end
  end
  --something is wrong here but we need to return something
  return "__angelsrefininggraphics__/graphics/icons/void.png"
end
angelsLegacy.functions.get_object_icons = get_icons

local function unify_tint(tint)
  -- allows tints to be defined as {255, 255, 255, 255}
  -- meaning doesn't need keys rgba (but assumes that order)
  -- doesn't need to be in range 0..1, but up to 255 as well
  if tint then
    local unified_tint = {}

    unified_tint.r = tint.r or tint[1] or 0
    unified_tint.g = tint.g or tint[2] or 0
    unified_tint.b = tint.b or tint[3] or 0

    if unified_tint.r > 1 or unified_tint.g > 1 or unified_tint.b > 1 then
      unified_tint.r = (unified_tint.r <= 255 and unified_tint.r or 255) / 255
      unified_tint.g = (unified_tint.g <= 255 and unified_tint.g or 255) / 255
      unified_tint.b = (unified_tint.b <= 255 and unified_tint.b or 255) / 255
    end

    unified_tint.a = tint.a or tint[4] or 1
    unified_tint.a = unified_tint.a > 1 and unified_tint.a / 255 or unified_tint.a

    return unified_tint
  else
    return nil
  end
end

-------------------------------------------------------------------------------
-- ICON GENERATION ------------------------------------------------------------
-------------------------------------------------------------------------------
local icon_tints_table = {
  --Sourced from:
  --https://sciencenotes.org/molecule-atom-colors-cpk-colors/
  -- Sorted by periodic atomic number
  H = { { 255, 255, 255 }, { 243, 243, 243 }, { 242, 242, 242 } }, --Hydrogen
  Hd = { { 255, 255, 192 }, { 206, 206, 173 }, { 196, 196, 156 } }, --Deuterium
  Li = { { 204, 128, 255 } }, --Lithium
  C = { { 044, 044, 044 }, { 064, 064, 064 }, { 090, 090, 090 } }, --Carbon -- but darkened
  N = { { 048, 080, 248 }, { 045, 076, 175 }, { 038, 063, 150 } }, --Nitrogen
  O = { { 255, 013, 013 }, { 214, 012, 012 }, { 198, 011, 011 } }, --Oxygen
  F = { { 144, 224, 080 }, { 181, 208, 000 }, { 181, 208, 000 } }, --Fluorine
  Na = { { 171, 092, 242 } }, --Sodium
  Mg = { { 138, 255, 000 } }, --Magnesium
  Al = { { 191, 166, 166 } }, --Aluminium
  Si = { { 240, 200, 160 } }, --Silicon
  P = { { 255, 128, 000 } }, --Phosphorus
  S = { { 255, 255, 048 }, { 216, 196, 017 }, { 210, 187, 030 } }, --Sulfur
  Cl = { { 031, 240, 031 }, { 057, 211, 040 }, { 075, 195, 045 } }, --Chlorine
  K = { { 143, 064, 212 } }, --Potassium
  Ca = { { 061, 255, 000 } }, --Calcium
  Ti = { { 191, 194, 199 } }, --Titanium
  Cr = { { 138, 153, 199 } }, --Chrome
  Mn = { { 156, 122, 199 } }, --Manganese
  Fe = { { 224, 102, 051 } }, --Iron
  Co = { { 240, 144, 160 } }, --Cobalt
  Ni = { { 080, 208, 080 } }, --Nickel
  Cu = { { 200, 128, 051 } }, --Copper
  Zn = { { 125, 128, 176 } }, --Zinc
  Ag = { { 192, 192, 192 } }, --Silver
  Sn = { { 102, 128, 128 } }, --Tin
  Cs = { { 087, 023, 143 } }, --Cesium
  W = { { 033, 148, 214 } }, --Tungsten (Wolfram)
  Os = { { 038, 102, 150 } }, --Osmium
  Pt = { { 208, 208, 224 } }, --Platium
  Au = { { 255, 209, 035 } }, --Gold
  Hg = { { 184, 184, 208 } }, --Mercury
  Pb = { { 087, 089, 097 } }, --Lead
  Po = { { 171, 092, 000 } }, --Polonium
  Th = { { 000, 186, 255 } }, --Thorium
  Pa = { { 000, 161, 255 } }, --Protactinium
  U = { { 000, 143, 255 } }, --Uranium
  Np = { { 000, 128, 255 } }, --Neptunium
  Pu = { { 000, 107, 255 } }, --Plutonium
  Am = { { 084, 092, 242 } }, --Americium
  Cm = { { 120, 092, 227 } }, --Curium
  --fake/compicated/custom tints
  Tw = { { 243, 135, 000 } }, --Thermal water
  Oi = { { 069, 069, 069 }, { 054, 054, 054 }, { 036, 036, 036 } }, --Coal/Oil
  Xx = { { 041, 041, 180 } }, --Complex (really strange materials)
  Ws = { { 094, 114, 174 }, { 088, 104, 163 }, { 088, 101, 155 } }, --Water/Steam
  Sg = { { 255, 105, 180 } }, --Syngas
  Ng = { { 105, 135, 090 }, { 096, 122, 082 }, { 088, 113, 075 } }, --Natural Gas
  Cb = { { 015, 015, 015 } }, --Other Carbon Solids
  Ax = { { 241, 050, 238 } }, --Alien Stuffs
  Aw = { { 194, 227, 091 }, { 184, 239, 000 }, { 156, 207, 000 } }, --Alien Feed (gas/water)
  Oc = { { 044, 044, 044 }, { 140, 000, 000 }, { 140, 000, 000 } }, -- Carbon (oxides) darker for less contrast
}

--[[{ unused materials
  Ne = {{179, 227, 245}}, Ar = {{128, 209, 227}}, Sc = {{230, 230, 230}}, V  = {{166, 166, 171}}, Ga = {{194, 143, 143}}, Ge = {{102, 143, 143}}, As = {{189, 128, 227}}, Se = {{255, 161, 000}}, 
  Br = {{166, 041, 041}}, Kr = {{092, 184, 209}}, Rb = {{112, 046, 176}}, Sr = {{000, 255, 000}}, Y  = {{148, 255, 255}}, Zr = {{148, 224, 224}}, Nb = {{115, 194, 201}}, Mo = {{084, 181, 181}}, 
  Tc = {{059, 158, 158}}, Ru = {{036, 143, 143}}, Rh = {{010, 125, 140}}, Pd = {{000, 105, 133}}, Cd = {{255, 217, 143}}, In = {{166, 117, 115}}, Sb = {{158, 099, 181}}, Te = {{212, 122, 000}}, 
  I  = {{148, 000, 148}}, Xe = {{066, 158, 176}}, Ba = {{000, 201, 000}}, La = {{112, 212, 255}}, Ce = {{255, 255, 199}}, Pr = {{217, 255, 199}}, Nd = {{199, 255, 199}}, Pm = {{163, 255, 199}}, 
  Sm = {{143, 255, 199}}, Eu = {{097, 255, 199}}, Gd = {{069, 255, 199}}, Tb = {{048, 255, 199}}, Dy = {{031, 255, 199}}, Ho = {{000, 255, 156}}, Er = {{000, 230, 117}}, Tm = {{000, 212, 082}},  
  Yb = {{000, 191, 056}}, Lu = {{000, 171, 036}}, Hf = {{077, 194, 255}}, Ta = {{077, 166, 255}}, Re = {{038, 125, 171}}, Ir = {{023, 084, 135}}, Tl = {{166, 084, 077}}, Bi = {{158, 079, 181}}, 
  At = {{117, 079, 069}}, Rn = {{066, 130, 150}}, Fr = {{066, 000, 102}}, Ra = {{000, 125, 000}}, Ac = {{112, 171, 250}}, Bk = {{138, 079, 227}}, Cf = {{161, 054, 212}}, Es = {{179, 031, 212}}, 
  Fm = {{179, 031, 186}}, Md = {{179, 013, 166}}, No = {{189, 013, 135}}, Lr = {{199, 000, 102}}, Rf = {{204, 000, 089}}, Db = {{209, 000, 079}}, Sg = {{217, 000, 069}}, Bh = {{224, 000, 056}}, 
  Hs = {{230, 000, 046}}, Mt = {{235, 000, 038}}, }]]

local function get_molecule_codes(molec_formula)
  local orig = molec_formula
  local string_codes = {} --subtables of tint codes eg. {{form = Ws ,amount = 12},}
  while string.len(molec_formula) > 0 do
    --take first segment (or throw error) and trim each code off and repeat until empty or error
    local trim = 1 --always trim at least 1 per code
    if string.find(molec_formula, "^%u%l%d+") == 1 then --Two letter code with number
      table.insert(string_codes, {
        form = string.sub(molec_formula, 1, 2),
        amount = tonumber(string.sub(molec_formula, string.find(molec_formula, "%d+"))),
      })
      trim = string.len(tostring(string_codes[#string_codes].amount)) + 1
    elseif string.find(molec_formula, "^%u%l") == 1 then --Two letter code without number
      table.insert(string_codes, { form = string.sub(molec_formula, 1, 2), amount = 1 }) --no amount-default 1
    elseif string.find(molec_formula, "^%u%d+") == 1 then --One letter code with number
      table.insert(string_codes, {
        form = string.sub(molec_formula, 1, 1),
        amount = tonumber(string.sub(molec_formula, string.find(molec_formula, "%d+"))),
      })
      trim = string.len(tostring(string_codes[#string_codes].amount)) + 1
    elseif string.find(molec_formula, "^%u") == 1 then --One letter code without number
      table.insert(string_codes, { form = string.sub(molec_formula, 1, 1), amount = 1 }) --no amount-default 1
    else --none of the above segments
      error(
        "Cannot determine next string code in '"
          .. (molec_formula or "")
          .. " of original code "
          .. orig
          .. "'. Please report this to the Angel's dev team."
      )
    end
    --trim string correctly
    local symbol = string_codes[#string_codes].form
    trim = trim + string.len(symbol)
    molec_formula = string.sub(molec_formula, trim)
  end
  return string_codes
end

local function create_recipe_molecule_icons(molecules_icon, molecules_shift, molecules_scale)
  molecules_icon = clean_table(molecules_icon) or {}
  molecules_shift = molecules_shift or { { -11.5, 12 }, { 11.5, 12 }, { 0, 12 } }
  molecules_scale = molecules_scale or (10.24 / 32) -- assume base 64 size, scaled by 0.5

  for molecule_index, molecule_icon in pairs(molecules_icon) do
    if type(molecule_icon) ~= "table" and get_icons(molecule_icon) ~= "__angelsrefininggraphics__/graphics/icons/void.png" then
      molecules_icon[molecule_index] = util.table.deepcopy(get_icons(molecule_icon))
    end
  end

  for molecule_index, molecule_icon in pairs(molecules_icon) do
    if type(molecule_icon) ~= "table" then
      molecules_icon[molecule_index] = {
        {
          icon = molecule_icon,
          icon_size = 32,
        },
      }
    elseif type(molecule_icon[1]) ~= "table" then
      local mi = util.table.deepcopy(molecule_icon)
      molecules_icon[molecule_index] = {
        {
          icon = mi.icon or mi[1] or nil,
          shift = mi.shift or mi[3] or nil,
          scale = mi.scale or mi[4] or nil,
          tint = mi.tint or mi[5] or nil,
          floating = mi.floating or nil,
        },
      }
      if molecules_icon[molecule_index][1].icon then
        molecules_icon[molecule_index][1].icon_size = mi.icon_size or mi[2] or 64
        if molecules_icon[molecule_index][1].icon_size ~= 32 then
          molecules_icon[molecule_index][1].scale = (molecules_icon[molecule_index][1].scale or 1)
            * 32
            / molecules_icon[molecule_index][1].icon_size
        end
      else
        --something is wrong here but we need to return something
        molecules_icon[molecule_index] = {
          {
            icon = "__angelsrefininggraphics__/graphics/icons/void.png",
            icon_size = 32,
          },
        }
      end
    else
      for molecule_icon_layer_index, molecule_icon_layer in pairs(molecule_icon) do
        if not molecule_icon_layer.icon_size then
          molecules_icon[molecule_index][molecule_icon_layer_index].icon_size = 64
          molecules_icon[molecule_index][molecule_icon_layer_index].scale = 0.5
        end
      end
    end
    molecule_icon = molecules_icon[molecule_index]

    -- now shift this icon to its correct position
    local molecule_shift = molecules_shift[molecule_index] or { 0, 0 }
    local molecule_scale = molecules_scale
    for layer_index, layer in pairs(molecule_icon) do
      layer.scale = layer.scale or 1
      layer.shift = { (layer.shift or {})[1] or 0, (layer.shift or {})[2] or 0 }

      layer.shift = {
        layer.shift[1] * molecule_scale + molecule_shift[1],
        layer.shift[2] * molecule_scale + molecule_shift[2],
      }
      layer.scale = layer.scale * molecule_scale

      molecule_icon[layer_index].scale = layer.scale
      molecule_icon[layer_index].shift = layer.shift
    end
    molecules_icon[molecule_index] = clean_table(molecule_icon)
  end

  return clean_table(molecules_icon)
end

-- CREATE LIQUID RECIPE ICONS (NOT FOR FLUIDS)
function angelsLegacy.functions.create_liquid_recipe_icon(bot_molecules_icon, tints, top_molecules_icon)
  -- bot_molecules_icon and top_molecules_icon is a table of molecule_icon, which can be a string
  -- (assumes icon_size 64) or be a table with size defined
  bot_molecules_icon =
    create_recipe_molecule_icons(bot_molecules_icon, { { -11.5, 12 }, { 11.5, 12 }, { 0, 12 } } )
  top_molecules_icon =
    create_recipe_molecule_icons(top_molecules_icon, { { -11.5, -12 }, { 11.5, -12 }, { 0, -12 } } )

  -- tints is a table of 3 tints, for the top, mid and bot section,
  -- uses the get_molecule_codes for default tints
  if tints then
    if type(tints) ~= "table" then
      local reference = get_molecule_codes(tints)
      tints = {
        top = unify_tint(icon_tints_table[(reference[1] or { form = "unknown" }).form][1] or {}),
        mid = unify_tint(icon_tints_table[(reference[2] or { form = "unknown" }).form][2] or {}),
        bot = unify_tint(icon_tints_table[(reference[3] or { form = "unknown" }).form][3] or {}),
      }
    else
      tints.top = unify_tint(tints.top or tints[1] or nil)
      tints.mid = unify_tint(tints.mid or tints[2] or nil)
      tints.bot = unify_tint(tints.bot or tints[3] or nil)
    end
  else
    tints = {}
  end

  local recipe_icons = {
    {
      -- base layer required for background shadow
      icon = "__angelsrefininggraphics__/graphics/icons/angels-liquid/liquid-recipe-base.png",
      icon_size = 600,
      scale = 32 / 600,
      tint = { r = 0.25, g = 0.25, b = 0.25, a = 0.7 },
    },
    {
      icon = "__angelsrefininggraphics__/graphics/icons/angels-liquid/liquid-recipe-top.png",
      icon_size = 600,
      scale = 32 / 600,
      tint = tints.top,
    },
    {
      icon = "__angelsrefininggraphics__/graphics/icons/angels-liquid/liquid-recipe-mid.png",
      icon_size = 600,
      scale = 32 / 600,
      tint = tints.mid,
    },
    {
      icon = "__angelsrefininggraphics__/graphics/icons/angels-liquid/liquid-recipe-bot.png",
      icon_size = 600,
      scale = 32 / 600,
      tint = tints.bot,
    },
  }
  for _, bot_molecule_icon in pairs(bot_molecules_icon) do
    for _, bot_molecule_icon_layer in pairs(bot_molecule_icon) do
      table.insert(recipe_icons, bot_molecule_icon_layer)
    end
  end
  for _, top_molecule_icon in pairs(top_molecules_icon) do
    for _, top_molecule_icon_layer in pairs(top_molecule_icon) do
      table.insert(recipe_icons, top_molecule_icon_layer)
    end
  end
  return recipe_icons
end

-- CREATE LIQUID FLUID ICONS (NOT FOR RECIPES)
function angelsLegacy.functions.create_liquid_fluid_icon(molecule_icon, tints)
  -- molecule_icon can be a string (assumes icon_size 64)
  -- or be a table with size defined
  if molecule_icon then
    if type(molecule_icon) ~= "table" then
      molecule_icon = {
        icon = molecule_icon,
        icon_size = 64,
      }
    else
      molecule_icon.icon = molecule_icon.icon or molecule_icon[1] or nil
      if molecule_icon.icon then
        molecule_icon.icon_size = molecule_icon.icon_size or molecule_icon[2] or 64
      else
        --something is wrong here but we need to return something
        molecule_icon.icon = "__angelsrefininggraphics__/graphics/icons/void.png"
        molecule_icon.icon_size = 32
      end
    end

    molecule_icon.shift = molecule_icon.shift or molecule_icon[3] or { -10, -10 }
    molecule_icon.scale = molecule_icon.scale or molecule_icon[4] or 15 / molecule_icon.icon_size
    molecule_icon.tint = molecule_icon.tint or molecule_icon[5] or nil

    molecule_icon[1] = nil
    molecule_icon[2] = nil
    molecule_icon[3] = nil
    molecule_icon[4] = nil
    molecule_icon[5] = nil
  else
    molecule_icon = nil
  end

  -- tints is a table of 3 tints, for the top, mid and bot section,
  -- uses the get_molecule_codes for default tints
  if tints then
    if type(tints) ~= "table" then
      local reference = get_molecule_codes(tints)
      tints = {
        top = unify_tint(icon_tints_table[(reference[1] or { form = "unknown" }).form][1] or {}),
        mid = unify_tint(icon_tints_table[(reference[2] or { form = "unknown" }).form][2] or {}),
        bot = unify_tint(icon_tints_table[(reference[3] or { form = "unknown" }).form][3] or {}),
      }
    else
      tints.top = unify_tint(tints.top or tints[1] or nil)
      tints.mid = unify_tint(tints.mid or tints[2] or nil)
      tints.bot = unify_tint(tints.bot or tints[3] or nil)
    end
  else
    tints = {}
  end

  return {
    {
      -- base layer required for background shadow
      icon = "__angelsrefininggraphics__/graphics/icons/angels-liquid/liquid-item-base.png",
      icon_size = 330,
      scale = 32 / 330,
      tint = { r = 0.25, g = 0.25, b = 0.25, a = 0.7 },
      shift = molecule_icon and { 3.5, 0 } or nil,
    },
    {
      icon = "__angelsrefininggraphics__/graphics/icons/angels-liquid/liquid-item-top.png",
      icon_size = 330,
      scale = 32 / 330,
      tint = tints.top,
      shift = molecule_icon and { 3.5, 0 } or nil,
    },
    {
      icon = "__angelsrefininggraphics__/graphics/icons/angels-liquid/liquid-item-mid.png",
      icon_size = 330,
      scale = 32 / 330,
      tint = tints.mid,
      shift = molecule_icon and { 3.5, 0 } or nil,
    },
    {
      icon = "__angelsrefininggraphics__/graphics/icons/angels-liquid/liquid-item-bot.png",
      icon_size = 330,
      scale = 32 / 330,
      tint = tints.bot,
      shift = molecule_icon and { 3.5, 0 } or nil,
    },
    molecule_icon,
  }
end

-- CREATE GAS FLUID ICONS (NOT FOR RECIPES)
function angelsLegacy.functions.create_gas_fluid_icon(molecule_icon, tints)
  -- molecule_icon can be a string (assumes icon_size 32)
  -- or be a table with size defined
  if molecule_icon then
    if type(molecule_icon) ~= "table" then
      molecule_icon = {
        icon = molecule_icon,
        icon_size = 32,
      }
    else
      molecule_icon.icon = molecule_icon.icon or molecule_icon[1] or nil
      if molecule_icon.icon then
        molecule_icon.icon_size = molecule_icon.icon_size or molecule_icon[2] or 32
      else
        --something is wrong here but we need to return something
        molecule_icon.icon = "__angelsrefininggraphics__/graphics/icons/void.png"
        molecule_icon.icon_size = 32
      end
    end

    molecule_icon.shift = molecule_icon.shift or molecule_icon[3] or { -10, -10 }
    molecule_icon.scale = molecule_icon.scale or molecule_icon[4] or 15 / molecule_icon.icon_size

    molecule_icon[1] = nil
    molecule_icon[2] = nil
    molecule_icon[3] = nil
    molecule_icon[4] = nil
  else
    molecule_icon = nil
  end

  -- tints is a table of 3 tints, for the top, mid and bot section,
  -- allows a string of max 3 characters for default tints
  if tints then
    if type(tints) ~= "table" then
      local reference = get_molecule_codes(tints)
      tints = {
        top = unify_tint(icon_tints_table[(reference[1] or { form = "unknown" }).form][1] or {}),
        mid = unify_tint(icon_tints_table[(reference[2] or { form = "unknown" }).form][2] or {}),
        bot = unify_tint(icon_tints_table[(reference[3] or { form = "unknown" }).form][3] or {}),
      }
    else
      tints.top = unify_tint(tints.top or tints[1] or nil)
      tints.mid = unify_tint(tints.mid or tints[2] or nil)
      tints.bot = unify_tint(tints.bot or tints[3] or nil)
    end
  else
    tints = {}
  end

  return {
    {
      -- base layer required for background shadow
      icon = "__angelsrefininggraphics__/graphics/icons/angels-gas/gas-item-base.png",
      icon_size = 596,
      scale = 32 / 596,
      tint = { r = 0.25, g = 0.25, b = 0.25, a = 0.7 },
      shift = not molecule_icon and { -3.5, 0 } or nil,
    },
    {
      icon = "__angelsrefininggraphics__/graphics/icons/angels-gas/gas-item-top.png",
      icon_size = 596,
      scale = 32 / 596,
      tint = tints.top,
      shift = not molecule_icon and { -3.5, 0 } or nil,
    },
    {
      icon = "__angelsrefininggraphics__/graphics/icons/angels-gas/gas-item-mid.png",
      icon_size = 596,
      scale = 32 / 596,
      tint = tints.mid,
      shift = not molecule_icon and { -3.5, 0 } or nil,
    },
    {
      icon = "__angelsrefininggraphics__/graphics/icons/angels-gas/gas-item-bot.png",
      icon_size = 596,
      scale = 32 / 596,
      tint = tints.bot,
      shift = not molecule_icon and { -3.5, 0 } or nil,
    },
    molecule_icon,
  }
end

-- CREATE GAS RECIPE ICONS (NOT FOR FLUIDS)
function angelsLegacy.functions.create_gas_recipe_icon(bot_molecules_icon, tints, top_molecules_icon)
  -- bot_molecules_icon and top_molecules_icon is a table of molecule_icon, which can be a string
  -- (assumes icon_size 64) or be a table with size defined
  bot_molecules_icon =
    create_recipe_molecule_icons(bot_molecules_icon, { { -11.5, 12 }, { 11.5, 12 }, { 0, 12 } })
  top_molecules_icon =
    create_recipe_molecule_icons(top_molecules_icon, { { -11.5, -12 }, { 11.5, -12 }, { 0, -12 } })

  -- tints is a table of 3 tints, for the top, mid and bot section,
  -- uses the get_molecule_codes for default tints
  if tints then
    if type(tints) ~= "table" then
      local reference = get_molecule_codes(tints)
      tints = {
        top = unify_tint(icon_tints_table[(reference[1] or { form = "unknown" }).form][1] or {}),
        mid = unify_tint(icon_tints_table[(reference[2] or { form = "unknown" }).form][2] or {}),
        bot = unify_tint(icon_tints_table[(reference[3] or { form = "unknown" }).form][3] or {}),
      }
    else
      tints.top = unify_tint(tints.top or tints[1] or nil)
      tints.mid = unify_tint(tints.mid or tints[2] or nil)
      tints.bot = unify_tint(tints.bot or tints[3] or nil)
    end
  else
    tints = {}
  end

  local recipe_icons = {
    {
      -- base layer required for background shadow
      icon = "__angelsrefininggraphics__/graphics/icons/angels-gas/gas-recipe-base.png",
      icon_size = 750,
      scale = 32 / 750,
      tint = { r = 0.25, g = 0.25, b = 0.25, a = 0.7 },
    },
    {
      icon = "__angelsrefininggraphics__/graphics/icons/angels-gas/gas-recipe-top.png",
      icon_size = 750,
      scale = 32 / 750,
      tint = tints.top,
    },
    {
      icon = "__angelsrefininggraphics__/graphics/icons/angels-gas/gas-recipe-mid.png",
      icon_size = 750,
      scale = 32 / 750,
      tint = tints.mid,
    },
    {
      icon = "__angelsrefininggraphics__/graphics/icons/angels-gas/gas-recipe-bot.png",
      icon_size = 750,
      scale = 32 / 750,
      tint = tints.bot,
    },
  }
  for _, bot_molecule_icon in pairs(bot_molecules_icon) do
    for _, bot_molecule_icon_layer in pairs(bot_molecule_icon) do
      table.insert(recipe_icons, bot_molecule_icon_layer)
    end
  end
  for _, top_molecule_icon in pairs(top_molecules_icon) do
    for _, top_molecule_icon_layer in pairs(top_molecule_icon) do
      table.insert(recipe_icons, top_molecule_icon_layer)
    end
  end
  return recipe_icons
end

-------------------------------------------------------------------------------
-- FLUID FLOW AND RECIPE COLOUR FUNCTIONS -------------------------------------
-------------------------------------------------------------------------------
--the following functions were gratefully donated by @Maxreader on Discord
local function isColor(input)
  if type(input) ~= "table" then
    return nil
  end
  local length = table_size(input)
  if length ~= 3 and length ~= 4 then
    return nil
  end
  local is_small = true
  for _, v in pairs(input) do
    if v > 1 then
      is_small = false
      break
    end
  end
  if not is_small then
    for k, v in pairs(input) do
      input[k] = v / 255
    end
  end
  local color = {
    r = input.r or input[1],
    g = input.g or input[2],
    b = input.b or input[3],
    a = input.a or input[4] or 1,
  }
  return color
end

local function findRGB(inputString)
  if type(inputString) ~= "string" then
    return nil
  end
  if inputString:find("%a") then
    return nil
  end
  local rawColor = util.split(inputString:gsub("%D", " "), " ")
  if #rawColor < 3 then
    return nil
  end
  local color = {}
  for k, v in pairs(rawColor) do
    color[k] = v / 255
  end
  return {
    r = color[1],
    g = color[2],
    b = color[3],
    a = color[4] or 1,
  }
end

--modified version of util.color provided by API
local function findHex(hex)
  if type(hex) ~= "string" then
    return nil
  end
  if hex:find("%X") or #hex > 8 or #hex == 5 or #hex == 7 then
    return nil
  end

  local function h(i, j)
    return j and tonumber("0x" .. hex:sub(i, j)) / 255 or tonumber("0x" .. hex:sub(i, i)) / 15
  end

  hex = hex:gsub("#", "")
  return #hex == 6 and { r = h(1, 2), g = h(3, 4), b = h(5, 6) }
    or #hex == 3 and { r = h(1), g = h(2), b = h(3) }
    or #hex == 8 and { r = h(1, 2), g = h(3, 4), b = h(5, 6), a = h(7, 8) }
    or #hex == 4 and { r = h(1), g = h(2), b = h(3), a = h(4) }
    or #hex == 2 and { r = h(1, 2), g = h(1, 2), b = h(1, 2) }
    or #hex == 1 and { r = h(1), g = h(1), b = h(1) }
    or { r = 1, g = 1, b = 1 }
end

local function toColor(color)
  return isColor(color) or findHex(color) or findRGB(color) or { r = 0, g = 0, b = 0, a = 1 }
end
local function RGBtoHSV(color)
  color = toColor(color)
  local r, g, b = color.r, color.g, color.b
  local max = math.max(r, g, b)
  local min = math.min(r, g, b)
  local range = max - min
  local h
  if range == 0 then
    h = 0
  elseif max == r then
    h = (g - b) / range * 60
  elseif max == g then
    h = (2 + (b - r) / range) * 60
  elseif max == b then
    h = (4 + (r - g) / range) * 60
  end
  if h < 0 then
    h = h + 360
  end
  local v = max
  local s = range / max
  return {
    h = h,
    s = s,
    v = v,
    a = color.a or 1,
  }
end

local function HSVtoRGB(color)
  local h, s, v, a = color.h, color.s, color.v, color.a
  local function f(n)
    local k = (n + h / 60) % 6
    return v - v * s * math.max(math.min(k, 4 - k, 1), 0)
  end
  return {
    r = f(5),
    g = f(3),
    b = f(1),
    a = color.a or 1,
  }
end

local function rgb_fetch(chemical_formula)
  local rgb = {}
  local codes = get_molecule_codes(chemical_formula)
  for i = 1, #codes do
    local tint_table = icon_tints_table[codes[i].form]
    if tint_table then
      rgb[i] = #tint_table <= i and tint_table[i] or tint_table[1]
    else
      rgb[i] = { 0, 0, 0 }
    end
  end
  return rgb
end

local function total_shade(chemical_formula)
  local change = 0
  local array = get_molecule_codes(chemical_formula)
  for i = 1, #array do
    change = change + array[i].amount
  end
  return change
end

function angelsLegacy.functions.fluid_color(chemical_formula) --color blending based on a general chemical formula
  local color = {}
  local arrays = get_molecule_codes(chemical_formula)
  local lettering, multi, rgb = {}, {}, {}
  for i = 1, #arrays do
    table.insert(lettering, arrays[i].form)
    table.insert(multi, arrays[i].amount)
    --table.insert(rgb, arrays[i].rgb)
  end
  rgb = rgb_fetch(chemical_formula)
  --local rgb = formula_extraction_1a(chemical_formula)--formula_extraction_1(chemical_formula)
  --local multi = formula_extraction_2(chemical_formula)
  --should only consist of the first 3 items, with an optional 4th
  local red, green, blue, alpha, comb = 0, 0, 0, 0, 0
  local ave_denom = #rgb
  if
    ave_denom == 2
    and (
      (rgb[1] == icon_tints_table["C"][1] and rgb[2] == icon_tints_table["H"][1])
      or (rgb[1] == icon_tints_table["H"][1] and rgb[2] == icon_tints_table["C"][1])
    )
  then
    -- Hydrocarbon only
    local m_c = tonumber(multi[1]) / 8
    local m_h = tonumber(multi[2]) / 12
    local value = ((m_h / m_c / 4) ^ 2.2) / 0.41
    local function sigmoid(x, b, c) --more maxreader madness :D
      return 1 / (1 + 2 ^ (-b * (x + c)))
    end
    value = sigmoid(value, 20, -0.25)
    for i, j in pairs({ "r", "g", "b" }) do
      color[j] = value
    end
  else --everything else
    for i, colour in pairs(rgb) do
      alpha = colour[4] or 1
      red = red + ((colour[1] / 255) ^ 2 * tonumber(multi[i]) * alpha)
      green = green + ((colour[2] / 255) ^ 2 * tonumber(multi[i]) * alpha)
      blue = blue + ((colour[3] / 255) ^ 2 * tonumber(multi[i]) * alpha)
      comb = comb + tonumber(multi[i] * alpha)
    end
    color = { r = math.sqrt(red / comb), g = math.sqrt(green / comb), b = math.sqrt(blue / comb), a = 1 }
    --normalise
    local HSV = RGBtoHSV(color)
    HSV.v = 0.8 * HSV.v
    HSV.s = 1 - 0.60 * (1 - HSV.s)
    color = HSVtoRGB(HSV)
  end
  return color
end

function angelsLegacy.functions.flow_color(chemical_formula) --makes it lighter by some margin
  local change = total_shade(chemical_formula) * 6
  local chemical_formula = chemical_formula .. "H" .. change --table.insert(chemical_formula,"H"..change)
  local color = angelsLegacy.functions.fluid_color(chemical_formula)
  return color
end

-- CREATE GAS TECH ICONS
function angelsLegacy.functions.create_gas_tech_icon(tints)
  -- tints is a table of 3 tints, for the top, mid and bot section,
  -- uses the get_molecule_codes for default tints
  if tints then
    if type(tints) ~= "table" then
      local reference = get_molecule_codes(tints)
      tints = {
        top = unify_tint(icon_tints_table[(reference[1] or { form = "unknown" }).form][1] or {}),
        mid = unify_tint(icon_tints_table[(reference[2] or { form = "unknown" }).form][2] or {}),
        bot = unify_tint(icon_tints_table[(reference[3] or { form = "unknown" }).form][3] or {}),
      }
    else
      tints.top = unify_tint(tints.top or tints[1] or nil)
      tints.mid = unify_tint(tints.mid or tints[2] or nil)
      tints.bot = unify_tint(tints.bot or tints[3] or nil)
    end
  else
    tints = {}
  end

  return {
    {
      -- base layer required for background shadow
      icon = "__angelsrefininggraphics__/graphics/icons/angels-gas/gas-tech-base.png",
      icon_size = 604,
      scale = 32 / 604,
      tint = { r = 0.25, g = 0.25, b = 0.25, a = 0.7 },
    },
    {
      icon = "__angelsrefininggraphics__/graphics/icons/angels-gas/gas-tech-top.png",
      icon_size = 604,
      scale = 32 / 604,
      tint = tints.top,
    },
    {
      icon = "__angelsrefininggraphics__/graphics/icons/angels-gas/gas-tech-mid.png",
      icon_size = 604,
      scale = 32 / 604,
      tint = tints.mid,
    },
    {
      icon = "__angelsrefininggraphics__/graphics/icons/angels-gas/gas-tech-bot.png",
      icon_size = 604,
      scale = 32 / 604,
      tint = tints.bot,
    },
  }
end
