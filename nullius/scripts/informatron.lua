function nullius_info_menu(player_index)
  return {
    mods = 1,
    fluids = 1,
    energy = 1,
    research = {
      early = 1,
      mid = 1,
      late = 1
    }
  }
end

function nullius_info_page_content(page_name, player_index, element)
  if page_name == "nullius" then
    element.add{type="label", name="text_1", caption={"nullius.page_nullius_text_1"}}
    element.add{type="label", name="text_2", caption={"nullius.page_nullius_text_2"}}
    element.add{type="label", name="text_3", caption={"nullius.page_nullius_text_3"}}
  end
  if page_name == "mods" then
    element.add{type="label", name="text_1", caption={"nullius.page_mods_text_1"}}
    element.add{type="label", name="text_2", caption={"nullius.page_mods_text_2"}}
  end
  if page_name == "research" then
    element.add{type="label", name="text_1", caption={"nullius.page_research_text_1"}}
    element.add{type="label", name="text_2", caption={"nullius.page_research_text_2"}}
    element.add{type="label", name="text_3", caption={"nullius.page_research_text_3"}}
  end
  if page_name == "early" then
    element.add{type="label", name="header_1",
    caption={"nullius.page_early_header_1"}, style="heading_1_label"}
    element.add{type="label", name="text_1", caption={"nullius.page_early_text_1"}}
    element.add{type="label", name="text_2", caption={"nullius.page_early_text_2"}}
    element.add{type="label", name="header_2",
    caption={"nullius.page_early_header_2"}, style="heading_1_label"}
    element.add{type="label", name="text_3", caption={"nullius.page_early_text_3"}}
    element.add{type="label", name="text_4", caption={"nullius.page_early_text_4"}}
  end
  if page_name == "mid" then
    element.add{type="label", name="header_1",
    caption={"nullius.page_mid_header_1"}, style="heading_1_label"}
    element.add{type="label", name="text_1", caption={"nullius.page_mid_text_1"}}
    element.add{type="label", name="header_2",
    caption={"nullius.page_mid_header_2"}, style="heading_1_label"}
    element.add{type="label", name="text_2", caption={"nullius.page_mid_text_2"}}
  end
  if page_name == "late" then
    element.add{type="label", name="header_1",
    caption={"nullius.page_late_header_1"}, style="heading_1_label"}
    element.add{type="label", name="text_1", caption={"nullius.page_late_text_1"}}
    element.add{type="label", name="header_2",
    caption={"nullius.page_late_header_2"}, style="heading_1_label"}
    element.add{type="label", name="text_2", caption={"nullius.page_late_text_2"}}
  end
  if page_name == "fluids" then
    element.add{type="label", name="text_1", caption={"nullius.page_fluids_text_1"}}
    element.add{type="label", name="header_1",
    caption={"nullius.page_fluids_header_1"}, style="heading_1_label"}
    element.add{type="label", name="text_2", caption={"nullius.page_fluids_text_2"}}
    element.add{type="label", name="text_3", caption={"nullius.page_fluids_text_3"}}
    element.add{type="label", name="text_4", caption={"nullius.page_fluids_text_4"}}
    element.add{type="label", name="header_2",
    caption={"nullius.page_fluids_header_2"}, style="heading_1_label"}
    element.add{type="label", name="text_5", caption={"nullius.page_fluids_text_5"}}
    element.add{type="label", name="text_6", caption={"nullius.page_fluids_text_6"}}
    element.add{type="label", name="text_7", caption={"nullius.page_fluids_text_7"}}
    element.add{type="label", name="text_8", caption={"nullius.page_fluids_text_8"}}
  end
  if page_name == "energy" then
    element.add{type="label", name="text_1", caption={"nullius.page_energy_text_1"}}
    element.add{type="label", name="text_2", caption={"nullius.page_energy_text_2"}}
    element.add{type="label", name="text_3", caption={"nullius.page_energy_text_3"}}
    element.add{type="label", name="header_1",
    caption={"nullius.page_energy_header_1"}, style="heading_1_label"}
    element.add{type="label", name="text_4", caption={"nullius.page_energy_text_4"}}
  element.add{type="label", name="text_5", caption={"nullius.page_energy_text_5"}}
  element.add{type="label", name="text_6", caption={"nullius.page_energy_text_6"}}
  end
end
