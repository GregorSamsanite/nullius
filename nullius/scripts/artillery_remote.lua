
local meld = require("meld")

-- RemoteGUIData = table{
--   payload :: str      Prototype name of the related item or fluid
--   remote :: str       Prototype name of remote
--   technology :: str   Prototype name of enabling technology
--   category :: str     Sort string for row
--   order :: str        Sort string for column
-- }
--
-- GUIButtonData = table{
--   sprite :: path          Sprite to show on GUI remote button
--   payload :: str          Prototype name of the related item or fluid
--   elem_tooltip :: ElemID  ID of the remote prototype
-- }

-- remotes :: list[RemoteGUIData]
-- Info about all known remotes for the remotes GUI.
-- Initialized at startup.
local remotes

-- payload_to_remote :: dictionary[str -> str]
-- Mapping from payload name to remote name.
-- Initialized at startup.
local payload_to_remote

-- storage.remote_gui_buttons :: dictionary[uint -> list[list[GUIButtonData]]]
-- Mapping from player ID to the player's 2D table layout of
-- buttons to show in the remote GUI.
-- If missing, it will be calculated when GUI is opened.


local function initialize_remotes()
  -- Initialize remotes and payload_to_remote.  Run once during initialization.
  remotes = {}
  for i, remote_gui_data in ipairs{
    {
      payload = "nullius-scout-drone-1",
      remote = "nullius-scout-remote",
      technology = "nullius-exploration-1",
    },
    {
      payload = "nullius-demolition-drone",
      remote = "nullius-demolition-remote",
      technology = "nullius-terraforming-1",
    },
    {
      payload = "nullius-shallow-excavation-drone",
      remote = "nullius-shallow-excavation-remote",
      technology = "nullius-terraforming-1",
    },
    {
      payload = "nullius-excavation-drone",
      remote = "nullius-excavation-remote",
      technology = "nullius-terraforming-1",
    }
  } do
    table.insert(
      remotes,
      meld.meld(remote_gui_data, {category="a", order=tostring(i)})
    )
  end

  for i, soil_color in ipairs{"grey", "tan", "brown", "red", "beige"} do
    table.insert(
      remotes,
      {
        payload = "nullius-terraforming-drone-" .. soil_color,
        remote = "nullius-terraforming-remote-" .. soil_color,
        technology = "nullius-terraforming-2",
        category = "b",
        order = tostring(i)
      }
    )
  end

  for i, tile_color in ipairs{"grey", "white", "red", "blue", "yellow"} do
    table.insert(
      remotes,
      {
        payload = "nullius-paving-drone-" .. tile_color,
        remote = "nullius-paving-remote-" .. tile_color,
        technology = "nullius-terraforming-3",
        category = "c-a",
        order = tostring(i)
      }
    )
  end

  for i, tile_color in ipairs{"green", "purple", "brown", "black", "hazard"} do
    table.insert(
      remotes,
      {
        payload = "nullius-paving-drone-" .. tile_color,
        remote = "nullius-paving-remote-" .. tile_color,
        technology = "nullius-terraforming-3",
        category = "c-b",
        order = tostring(i)
      }
    )
  end

  for i, tbl in ipairs{
    {"iron", "iron-ore"}, {"sandstone", "nullius-sandstone"},
    {"bauxite", "nullius-bauxite"}, {"limestone", "nullius-limestone"},
    {"copper", "copper-ore"}, {"uranium", "uranium-ore"}
  } do
    local mineral, item_name = table.unpack(tbl)
    table.insert(
      remotes,
      {
        payload = item_name,
        remote = "nullius-guide-remote-" .. mineral,
        technology = "nullius-asteroid-mining-1",
        category = "d",
        order = tostring(i)
      }
    )
  end

  if script.active_mods["tricky-old-nick"] then
    table.insert(
      remotes,
      {
        payload = "nullius-nickel-ore",
        remote = "nullius-guide-remote-nickel",
        technology = "nullius-asteroid-mining-1",
        category = "d",
        order = "1-b",
      }
    )
  end

  for i, remote_gui_data in ipairs{
    {
      payload = "nullius-algae",
      remote = "nullius-algaculture-remote",
      technology = "nullius-biology-2",
    },
    {
      payload = "nullius-grass",
      remote = "nullius-horticulture-remote",
      technology = "nullius-botany-1",
    },
    {
      payload = "nullius-tree",
      remote = "nullius-arboriculture-remote",
      technology = "nullius-botany-2",
    },
    {
      payload = "nullius-worm",
      remote = "nullius-entomology-remote",
      technology = "nullius-zoology-1",
    },
    {
      payload = "nullius-fish",
      remote = "nullius-aquaculture-remote",
      technology = "nullius-zoology-2",
    },
    {
      payload = "nullius-arthropod",
      remote = "nullius-husbandry-remote",
      technology = "nullius-zoology-3",
    },
    {
      payload = "nullius-coal",
      remote = "nullius-sequestration-coal-remote",
      technology = "nullius-carbon-sequestration-4",
    },
    {
      payload = "nullius-petroleum",
      remote = "nullius-sequestration-petroleum-remote",
      technology = "nullius-carbon-sequestration-4",
    }
  } do
    table.insert(
      remotes,
      meld.meld(remote_gui_data, {category="e", order=tostring(i)})
    )
  end

  payload_to_remote = {}
  for _, remote_gui_data in ipairs(remotes) do
    payload_to_remote[remote_gui_data.payload] = remote_gui_data.remote
  end
end

local function reset_remote_gui()
  storage.remote_gui_buttons = {}
end

local function sprite_from_name(name)
  -- Given a prototype name, return a sprite path for the sprite-button.
  if prototypes.item[name] then
    return "item/" .. name
  elseif prototypes.fluid[name] then
    return "fluid/" .. name
  else
    return "item/stone"  -- Placeholder for not found
  end
end

local function calculate_gui_buttons(player)
  -- Calculate which buttons to display based on researched technology.
  -- Result is memoized in remote_gui_buttons.
  local tbl = storage.remote_gui_buttons[player.index]
  if tbl ~= nil then return tbl end
  
  -- Get the set of remotes that are enabled
  local technologies = player.force.technologies
  local enabled_remotes = {}
  for _, remote_gui_data in ipairs(remotes) do
    if technologies[remote_gui_data.technology].researched then
      table.insert(enabled_remotes, remote_gui_data)
    end
  end

  -- Organize as a 2D table
  local function ordering(x, y)
    if x.category < y.category then return true end
    if x.category > y.category then return false end
    if x.order < y.order then return true end
    return false
  end
  table.sort(enabled_remotes, ordering)

  local tbl = {}
  local current_category = nil
  local row
  for _, remote_gui_data in ipairs(enabled_remotes) do
    if remote_gui_data.category ~= current_category then
      current_category = remote_gui_data.category
      row = {}
      table.insert(tbl, row)
    end
    local payload = remote_gui_data.payload
    table.insert(
      row,
      {
        sprite = sprite_from_name(payload),
        payload = payload,
        elem_tooltip = {type="item", name=remote_gui_data.remote}
      }
    )
  end
  storage.remote_gui_buttons[player.index] = tbl
  return tbl
end

local function add_remote_buttons(player, gui_element)
  local remote_gui_buttons = calculate_gui_buttons(player)
  for _, row in ipairs(remote_gui_buttons) do
    local flow = gui_element.add{type="flow", direction="horizontal"}
    for _, button in ipairs(row) do
      flow.add{
        type = "sprite-button",
        sprite=button.sprite,
        name="nullius-make-remote-" .. button.payload,
        elem_tooltip=button.elem_tooltip
      }
    end
  end
end

local function handle_remote_gui_shortcut(event_data)
  -- Open dialog box for the remote gui
  local player = game.get_player(event_data.player_index)
  local gui = player.gui
  if gui.center["nullius-remote-gui-window"] then
    -- Already open
    return
  end
  local frame = gui.center.add{
    type="frame",
    name="nullius-remote-gui-window",
    caption={"gui.nullius-remote-gui-window"},
    direction="vertical"
  }
  add_remote_buttons(player, frame)
  frame.add{type="line", direction="horizontal"}
  frame.add{
    type="button",
    name="nullius-remote-gui-close",
    caption={"gui.close"}
  }
end

local function close_remote_gui(player)
  local gui = player.gui.center["nullius-remote-gui-window"]
  if gui.valid then
    gui.destroy()
  end
end

local function handle_remote_gui_close(player_index)
  local player = game.get_player(player_index)
  close_remote_gui(player)
end

local function handle_make_remote(player_index, item_name)
  -- A "nullius-make-remote-X" button was clicked with item_name=X
  local player = game.get_player(player_index)
  local cursor_stack = player.cursor_stack

  -- Error if cursor stack is not empty
  if cursor_stack == nil or cursor_stack.valid_for_read then
    player.create_local_flying_text{
      text = {"gui.nullius-cursor-occupied"},
      create_at_cursor = true
    }
    return
  end
  cursor_stack.set_stack(payload_to_remote[item_name])
  close_remote_gui(player)
end

script.on_event(
  defines.events.on_lua_shortcut,
  function(event_data)
    if event_data.prototype_name == "nullius-remote-gui" then
      handle_remote_gui_shortcut(event_data)
    end
  end
)

initialize_remotes()

return {
  reset_remote_gui = reset_remote_gui,
  handle_remote_gui_close = handle_remote_gui_close,
  handle_make_remote = handle_make_remote
}
