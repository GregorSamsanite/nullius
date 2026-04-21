remote.add_interface("nullius", {
  informatron_menu = function(data)
    return nullius_info_menu(data.player_index)
  end,
  informatron_page_content = function(data)
    return nullius_info_page_content(data.page_name, data.player_index, data.element)
  end,
  on_character_swapped = function(data)
    change_character_entity(data.old_unit_number, data.new_character)
  end,
  ["better-victory-screen-statistics"] = function(winning_force)
    local stats = { by_force = { }}
    local surface = game.surfaces["nauvis"]

    local arthropods = surface.count_entities_filtered{name = {
        "small-biter", "medium-biter", "big-biter", "behemoth-biter",
        "small-spitter", "medium-spitter", "big-spitter", "behemoth-spitter",
    }}
    local worms = surface.count_entities_filtered{name = {
      "small-worm-turret", "medium-worm-turret", "big-worm-turret", "behemoth-worm-turret",
    }}
    local fish = surface.count_entities_filtered{type = "fish"}
    local trees = surface.count_entities_filtered{type = "tree"}

    local grass = surface.count_tiles_filtered{name = {
      "grass-1", "grass-2", "grass-3", "grass-4"
    }} / (1000 * 1000) -- Convert tiles to km2

    local petroleum = surface.count_entities_filtered{name = "crude-oil"}

    for force_name, force in pairs(game.forces) do
      stats.by_force[force_name] = {["terraforming"] = { order = "a", stats = {
        arthropods    = { value = arthropods,                 order = "a"},
        worms         = { value = worms,                      order = "b"},
        fish          = { value = fish,                       order = "c"},
        trees         = { value = trees,                      order = "d"},
        grass         = { value = grass,  unit = "area",      order = "e"},
        petroleum     = { value = petroleum,                  order = "f"},
      }}}
    end
    return stats
  end,
  milestones_presets = function()
    return {
      ["Nullius"] = {
        required_mods = {"nullius"},
        milestones = {
          {type="group",      name="Science"},
          {type="item",       name="nullius-geology-pack",             quantity=1},
          {type="item",       name="nullius-climatology-pack",         quantity=1},
          {type="item",       name="nullius-mechanical-pack",          quantity=1},
          {type="item",       name="nullius-electrical-pack",          quantity=1},
          {type="item",       name="nullius-chemical-pack",            quantity=1},
          {type="item",       name="nullius-physics-pack",             quantity=1},
          {type="item",       name="nullius-astronomy-pack",           quantity=1},
          {type="item",       name="nullius-biochemistry-pack",        quantity=1},
          {type="item",       name="nullius-microbiology-pack",        quantity=1},
          {type="item",       name="nullius-botany-pack",              quantity=1},
          {type="item",       name="nullius-nematology-pack",          quantity=1},
          {type="item",       name="nullius-dendrology-pack",          quantity=1},
          {type="item",       name="nullius-ichthyology-pack",         quantity=1},
          {type="item",       name="nullius-zoology-pack",             quantity=1},
          {type="item",       name="nullius-geology-pack",             quantity=1000, next="x10"},
          {type="item",       name="nullius-climatology-pack",         quantity=1000, next="x10"},
          {type="item",       name="nullius-mechanical-pack",          quantity=1000, next="x10"},
          {type="item",       name="nullius-electrical-pack",          quantity=1000, next="x10"},
          {type="item",       name="nullius-chemical-pack",            quantity=1000, next="x10"},
          {type="item",       name="nullius-physics-pack",             quantity=1000, next="x10"},
          {type="item",       name="nullius-astronomy-pack",           quantity=1000, next="x10"},
          {type="item",       name="nullius-biochemistry-pack",        quantity=1000, next="x10"},
          {type="item",       name="nullius-microbiology-pack",        quantity=1000, next="x10"},
          {type="item",       name="nullius-botany-pack",              quantity=1000, next="x10"},
          {type="item",       name="nullius-nematology-pack",          quantity=1000, next="x10"},
          {type="item",       name="nullius-dendrology-pack",          quantity=1000, next="x10"},
          {type="item",       name="nullius-ichthyology-pack",         quantity=1000, next="x10"},
          {type="item",       name="nullius-zoology-pack",             quantity=1000, next="x10"},

            -- Science boxes, a box is 5 packs
          {type="alias",      name="nullius-box-geology-pack",     equals="nullius-geology-pack",     quantity=5},
          {type="alias",      name="nullius-box-climatology-pack", equals="nullius-climatology-pack", quantity=5},
          {type="alias",      name="nullius-box-mechanical-pack",  equals="nullius-mechanical-pack",  quantity=5},
          {type="alias",      name="nullius-box-electrical-pack",  equals="nullius-electrical-pack",  quantity=5},
          {type="alias",      name="nullius-box-chemical-pack",    equals="nullius-chemical-pack",    quantity=5},
          {type="alias",      name="nullius-box-physics-pack",     equals="nullius-physics-pack",     quantity=5},
          {type="alias",      name="nullius-box-astronomy-pack",   equals="nullius-astronomy-pack",   quantity=5},

          {type="group",      name="Resources"},
          {type="item",       name="nullius-iron-ingot",               quantity=1},
          {type="item",       name="nullius-plastic",                  quantity=1},
          {type="item",       name="nullius-glass",                    quantity=1},
          {type="item",       name="nullius-aluminum-ingot",           quantity=1},
          {type="item",       name="nullius-silicon-ingot",            quantity=1},
          {type="item",       name="nullius-steel-ingot",              quantity=1},
          {type="item",       name="nullius-fiberglass",               quantity=1},
          {type="item",       name="nullius-titanium-ingot",           quantity=1},
          {type="item",       name="nullius-copper-ingot",             quantity=1},
          {type="item",       name="nullius-processor-1",              quantity=1},
          {type="item",       name="nullius-processor-2",              quantity=1},
          {type="item",       name="nullius-processor-3",              quantity=1},

            -- Item boxes, a box is 5 items
          {type="alias",      name="nullius-box-iron-ingot",     equals="nullius-iron-ingot",     quantity=5},
          {type="alias",      name="nullius-box-plastic",        equals="nullius-plastic",        quantity=5},
          {type="alias",      name="nullius-box-glass",          equals="nullius-glass",          quantity=5},
          {type="alias",      name="nullius-box-aluminum-ingot", equals="nullius-aluminum-ingot", quantity=5},
          {type="alias",      name="nullius-box-silicon-ingot",  equals="nullius-silicon-ingot",  quantity=5},
          {type="alias",      name="nullius-box-steel-ingot",    equals="nullius-steel-ingot",    quantity=5},
          {type="alias",      name="nullius-box-fiberglass",     equals="nullius-fiberglass",     quantity=5},
          {type="alias",      name="nullius-box-titanium-ingot", equals="nullius-titanium-ingot", quantity=5},
          {type="alias",      name="nullius-box-copper-ingot",   equals="nullius-copper-ingot",   quantity=5},
          {type="alias",      name="nullius-box-processor-1",    equals="nullius-processor-1",    quantity=5},
          {type="alias",      name="nullius-box-processor-2",    equals="nullius-processor-2",    quantity=5},
          {type="alias",      name="nullius-box-processor-3",    equals="nullius-processor-3",    quantity=5},

          {type="group",      name="Terraforming"},
          {type="item",       name="nullius-terraforming-drone-brown", quantity=1},
          {type="item",       name="nullius-rocket",                   quantity=1},
          {type="item",       name="nullius-algaculture-drone",        quantity=1},
          {type="item",       name="nullius-horticulture-drone",       quantity=1},
          {type="item",       name="nullius-arboriculture-drone",      quantity=1},
          {type="item",       name="nullius-entomology-drone",         quantity=1},
          {type="item",       name="nullius-aquaculture-drone",        quantity=1},
          {type="item",       name="nullius-husbandry-drone",          quantity=1},
          {type="item",       name="nullius-guide-drone-copper-1",     quantity=1},
          {type="item",       name="nullius-guide-drone-uranium-1",    quantity=1},
          {type="item",       name="nullius-antimatter",               quantity=1},
          {type="item",       name="nullius-probe",                    quantity=1},
          {type="item",       name="nullius-probe",                    quantity=10},

          {type="group",      name="Progress"},
          {type="item",       name="nullius-locomotive-1",             quantity=1},
          {type="item",       name="nullius-logistic-bot-1",           quantity=1},
          {type="item",       name="cliff-explosives",                 quantity=1},
          {type="item",       name="character",                        quantity=1},
          {type="item",       name="nullius-android-2",                quantity=1},
          {type="item",       name="nullius-mecha",                    quantity=1},

          {type="group",      name="Power"},
          {type="item",       name="nullius-wind-turbine-1",           quantity=1},
          {type="item",       name="nullius-solar-collector-1",        quantity=1},
          {type="item",       name="nullius-solar-panel-1",            quantity=16},
          {type="item",       name="nullius-geothermal-plant-1",       quantity=1},
          {type="item",       name="nullius-grid-battery-1",           quantity=11},
          {type="item",       name="nullius-fusion-cell",              quantity=1},
          {type="item",       name="nullius-breeder-cell",             quantity=1},
          {type="item",       name="nullius-fission-cell",             quantity=1},
          {type="item",       name="nullius-antimatter",               quantity=1},

          {type="group",      name="Kills"},
          {type="kill",       name="character",                        quantity=1, hidden=true},
        },
      },
    }
  end,
})


function on_load_mod_interface()
  if (remote.interfaces["PickerDollies"]) then
    if (remote.interfaces["PickerDollies"]["dolly_moved_entity_id"]) then
      script.on_event(remote.call("PickerDollies", "dolly_moved_entity_id"), dolly_moved_entity)
    end

    if (remote.interfaces["PickerDollies"]["add_blacklist_name"]) then
      remote.call("PickerDollies", "add_blacklist_name", "nullius-wind-base-1")
      remote.call("PickerDollies", "add_blacklist_name", "nullius-wind-base-2")
      remote.call("PickerDollies", "add_blacklist_name", "nullius-wind-base-3")
      remote.call("PickerDollies", "add_blacklist_name", "nullius-geothermal-reactor-1")
      remote.call("PickerDollies", "add_blacklist_name", "nullius-geothermal-reactor-2")
      remote.call("PickerDollies", "add_blacklist_name", "nullius-geothermal-reactor-3")
      remote.call("PickerDollies", "add_blacklist_name", "nullius-stirling-engine-1")
      remote.call("PickerDollies", "add_blacklist_name", "nullius-stirling-engine-2")
      remote.call("PickerDollies", "add_blacklist_name", "nullius-stirling-engine-3")
      remote.call("PickerDollies", "add_blacklist_name", "nullius-large-beacon-1")
      remote.call("PickerDollies", "add_blacklist_name", "nullius-large-beacon-2")
      remote.call("PickerDollies", "add_blacklist_name", "nullius-beacon-1")
      remote.call("PickerDollies", "add_blacklist_name", "nullius-beacon-1-1")
      remote.call("PickerDollies", "add_blacklist_name", "nullius-beacon-1-2")
      remote.call("PickerDollies", "add_blacklist_name", "nullius-beacon-1-3")
      remote.call("PickerDollies", "add_blacklist_name", "nullius-beacon-1-4")
      remote.call("PickerDollies", "add_blacklist_name", "nullius-beacon-2")
      remote.call("PickerDollies", "add_blacklist_name", "nullius-beacon-2-1")
      remote.call("PickerDollies", "add_blacklist_name", "nullius-beacon-2-2")
      remote.call("PickerDollies", "add_blacklist_name", "nullius-beacon-2-3")
      remote.call("PickerDollies", "add_blacklist_name", "nullius-beacon-2-4")
      remote.call("PickerDollies", "add_blacklist_name", "nullius-beacon-3")
      remote.call("PickerDollies", "add_blacklist_name", "nullius-beacon-3-1")
      remote.call("PickerDollies", "add_blacklist_name", "nullius-beacon-3-2")
      remote.call("PickerDollies", "add_blacklist_name", "nullius-beacon-3-3")
      remote.call("PickerDollies", "add_blacklist_name", "nullius-beacon-3-4")
	end
  end
end
