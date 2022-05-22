require("scripts.mission")
require("scripts.checkpoint")
require("scripts.drone")
require("scripts.wind")
require("scripts.geothermal")
require("scripts.solar")
require("scripts.beacon")
require("scripts.vent")
require("scripts.build")
require("scripts.equipment")
require("scripts.landing")
require("scripts.migrate")
require("scripts.startup")
require("scripts.body")
require("scripts.informatron")

remote.add_interface("nullius", {
  informatron_menu = function(data)
    return nullius_info_menu(data.player_index)
  end,
  informatron_page_content = function(data)
    return nullius_info_page_content(data.page_name, data.player_index, data.element)
  end,
  on_character_swapped = function(data)
    change_character_entity(data.old_unit_number, data.new_character)
  end
})
