---@type data.SimulationDefinition
local nullius_solar_panels = {
  checkboard = false,
  save = "__nullius__/menu-simulations/solar-panels.zip",
  length = 20 * second,
  init = [[
    local logo = game.surfaces.nauvis.find_entities_filtered{name = "factorio-logo-11tiles", limit = 1}[1]
    logo.destructible = false
    game.simulation.camera_position = {logo.position.x, logo.position.y + 12}
    game.simulation.camera_zoom = 1
    game.tick_paused = false
  ]],
}

---@type data.SimulationDefinition
local nullius_labs = {
  checkboard = false,
  save = "__nullius__/menu-simulations/labs.zip",
  length = 15 * second,
  init = [[
    local logo = game.surfaces.nauvis.find_entities_filtered{name = "factorio-logo-16tiles", limit = 1}[1]
    logo.destructible = false
    game.simulation.camera_position = {logo.position.x, logo.position.y + 18}
    game.simulation.camera_zoom = 2/3
    game.tick_paused = false
  ]],
}

---@type data.SimulationDefinition
local nullius_fertilizer = {
  checkboard = false,
  save = "__nullius__/menu-simulations/fertilizer.zip",
  length = 20 * second,
  init = [[
    local logo = game.surfaces.nauvis.find_entities_filtered{name = "factorio-logo-11tiles", limit = 1}[1]
    logo.destructible = false
    game.simulation.camera_position = {logo.position.x, logo.position.y - 14}
    game.simulation.camera_zoom = 1
    game.tick_paused = false
  ]],
}

---@type data.SimulationDefinition
local nullius_rocket_fuel = {
  checkboard = false,
  save = "__nullius__/menu-simulations/rocket-fuel.zip",
  length = 20 * second,
  init = [[
    local logo = game.surfaces.nauvis.find_entities_filtered{name = "factorio-logo-22tiles", limit = 1}[1]
    logo.destructible = false
    game.simulation.camera_position = {logo.position.x, logo.position.y + 26}
    game.simulation.camera_zoom = 0.5
    game.tick_paused = false
  ]],
}

---@type data.SimulationDefinition
local nullius_algae = {
  checkboard = false,
  save = "__nullius__/menu-simulations/algae.zip",
  length = 20 * second,
  init = [[
    local logo = game.surfaces.nauvis.find_entities_filtered{name = "factorio-logo-22tiles", limit = 1}[1]
    logo.destructible = false
    game.simulation.camera_position = {logo.position.x, logo.position.y - 30}
    game.simulation.camera_zoom = 0.5
    game.tick_paused = false
  ]],
}

---@type data.SimulationDefinition
local nullius_blue_science = {
  checkboard = false,
  save = "__nullius__/menu-simulations/blue-science.zip",
  length = 20 * second,
  init = [[
    local logo = game.surfaces.nauvis.find_entities_filtered{name = "factorio-logo-22tiles", limit = 1}[1]
    logo.destructible = false
    game.simulation.camera_position = {logo.position.x, logo.position.y - 28}
    game.simulation.camera_zoom = 0.5
    game.tick_paused = false
  ]],
}

---@type data.SimulationDefinition
local nullius_epoxy = {
  checkboard = false,
  save = "__nullius__/menu-simulations/epoxy.zip",
  length = 20 * second,
  init = [[
    local logo = game.surfaces.nauvis.find_entities_filtered{name = "factorio-logo-16tiles", limit = 1}[1]
    logo.destructible = false
    game.simulation.camera_position = {logo.position.x, logo.position.y + 28}
    game.simulation.camera_zoom = 0.5
    game.tick_paused = false
  ]],
}

---@type data.SimulationDefinition
local nullius_mining_drone = {
  checkboard = false,
  save = "__nullius__/menu-simulations/mining-drone.zip",
  mods = { "nullius" },
  length = 25 * second,
  init = [[
    local logo = game.surfaces.nauvis.find_entities_filtered{name = "factorio-logo-11tiles", limit = 1}[1]
    logo.destructible = false
    game.simulation.camera_position = {logo.position.x, logo.position.y - 12}
    game.simulation.camera_zoom = 1
    game.tick_paused = false

    local start_tick = game.tick
    script.on_event(defines.events.on_tick, function()
      local tick_from_start = game.tick - start_tick
      if tick_from_start == 15 * second then
        game.surfaces["nauvis"].create_entity({
          name="nullius-guide-flare-limestone",
          position = {51, -145},
          force = "player",
          movement = {0, 0},
          height = 0,
          vertical_speed = 0,
          frame_speed = 0,
        })
      end
    end)
  ]],
}

local simulations = {
  nullius_solar_panels = nullius_solar_panels,
  nullius_labs = nullius_labs,
  nullius_fertilizer = nullius_fertilizer,
  nullius_rocket_fuel = nullius_rocket_fuel,
  nullius_algae = nullius_algae,
  nullius_blue_science = nullius_blue_science,
  nullius_expoxy = nullius_epoxy,
  nullius_mining_drone = nullius_mining_drone,
}

-- Uncomment to debug a single visualization
-- simulations = { nullius_mining_drone }

return simulations
