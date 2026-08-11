local simulations = {}

simulations.hydrogen_battery = {
    save = "__nullius__/simulations/hydrogen-battery.zip",
    init = [[
        game.simulation.camera_zoom = 1
        game.simulation.camera_position = {20, -1}
        game.simulation.camera_alt_info = true
        game.get_player(1).gui.top.visible = false
    ]]
}

simulations.compressed_nitrogen_battery = {
    save = "__nullius__/simulations/compressed-nitrogen-battery.zip",
    init = [[
        game.simulation.camera_zoom = 0.8
        game.simulation.camera_position = {9, 22}
        game.simulation.camera_alt_info = true
        game.get_player(1).gui.top.visible = false
    ]]
}

simulations.solar_thermal_power = {
    save = "__nullius__/simulations/solar-thermal-power.zip",
    init = [[
        game.simulation.camera_zoom = 1
        game.simulation.camera_position = {1, -14}
        game.simulation.camera_alt_info = true
        game.get_player(1).gui.top.visible = false
    ]]
}

return simulations
