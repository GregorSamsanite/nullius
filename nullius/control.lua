require("scripts.mission")
require("scripts.drone")
require("scripts.wind")
require("scripts.geothermal")
require("scripts.build")
require("scripts.landing")
require("scripts.startup")
require("scripts.informatron")

remote.add_interface("nullius", {
  informatron_menu = function(data)
    return nullius_info_menu(data.player_index)
  end,
  informatron_page_content = function(data)
    return nullius_info_page_content(data.page_name, data.player_index, data.element)
  end
})
