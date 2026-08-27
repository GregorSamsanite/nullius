-- The togglable pumps connect through hidden gauges using linked fluidbox
-- connections, so the engine draws no output arrow on them.  Draw our own.

local ONLY_IN_ALT_MODE = true
local ARROW_SPRITE = "utility/fluid_indication_arrow"
local ARROW_TINT = nil
local ARROW_SCALE = 1.0
local ARROW_NUDGE = 0.0

-- "distance" is the entity centre to the outer edge of the output tile, taken
-- from the plain pump prototypes.  Small pumps are left out; if they are added
-- back they output away from their own direction, so reversed = true.
local arrow_geometry = {
  ["nullius-togglable-pump-1"] = {distance = 1.0, reversed = false},
  ["nullius-togglable-pump-2"] = {distance = 1.0, reversed = false},
  ["nullius-togglable-pump-3"] = {distance = 1.0, reversed = false}
}

local arrow_names = { }
for name, _ in pairs(arrow_geometry) do
  arrow_names[#arrow_names+1] = name
end
table.sort(arrow_names)

local function arrow_table()
  if (storage.nullius_valve_arrows == nil) then
    storage.nullius_valve_arrows = { }
  end
  return storage.nullius_valve_arrows
end

function remove_valve_arrow(unit_number)
  if (unit_number == nil) then return false end
  local arrows = arrow_table()
  local id = arrows[unit_number]
  if (id == nil) then return false end
  arrows[unit_number] = nil
  local obj = rendering.get_object_by_id(id)
  if ((obj ~= nil) and obj.valid) then obj.destroy() end
  return true
end

-- The arrow takes its facing and offset from the pump, so it follows rotation on
-- its own, and dies with the pump.
function draw_valve_arrow(entity)
  if ((entity == nil) or (not entity.valid)) then return end
  local geometry = arrow_geometry[entity.name]
  if (geometry == nil) then return end

  local distance = (geometry.distance + ARROW_NUDGE)
  if (geometry.reversed) then distance = -distance end

  remove_valve_arrow(entity.unit_number)
  local obj = rendering.draw_sprite{
      sprite = ARROW_SPRITE,
      orientation = (geometry.reversed and 0.5 or 0),
      orientation_target = entity,
      use_target_orientation = true,
      oriented_offset = {0, -distance},
      tint = ARROW_TINT,
      x_scale = ARROW_SCALE,
      y_scale = ARROW_SCALE,
      render_layer = "arrow",
      surface = entity.surface,
      target = entity,
      only_in_alt_mode = ONLY_IN_ALT_MODE}
  arrow_table()[entity.unit_number] = obj.id
end

function init_valve_arrows()
  for unit_number, _ in pairs(arrow_table()) do
    remove_valve_arrow(unit_number)
  end
  for _, surface in pairs(game.surfaces) do
    for _, entity in pairs(surface.find_entities_filtered{name = arrow_names}) do
      draw_valve_arrow(entity)
    end
  end
end


local function entity_built(event)
  draw_valve_arrow(event.entity or event.destination)
end

local function entity_unbuilt(event)
  local entity = event.entity
  if ((entity ~= nil) and entity.valid) then
    remove_valve_arrow(entity.unit_number)
  end
end

script.on_event(defines.events.script_raised_built, entity_built)
script.on_event(defines.events.on_entity_cloned, entity_built)
script.on_event(defines.events.script_raised_destroy, entity_unbuilt)
