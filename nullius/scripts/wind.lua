-- Nullius wind turbine system is originally based on the windturbines mod by OwnlyMe
-- Unfortunately they withdrew support for it while Nullius was in development, and it's
-- no longer expected to be updated for 1.1+ compatibility, after Nullius was designed
-- to rely on it, so the graphics are replicated here.

local multiplier = (settings.startup["nullius-wind-turbine-energy-multiplier"].value / 60)
local base_wind_power = {1500000*multiplier, 4000000*multiplier, 12000000*multiplier}

function init_wind()
  global.nullius_wind_orientation = 4
  global.nullius_wind_factor = 0.7
  global.nullius_wind_speed = 0.4
  global.nullius_wind_momentum = 0

  global.nullius_base_power = { }
  global.nullius_current_power = { }
  global.nullius_animation_speed = { }
  for i=1,3 do
    global.nullius_current_power[i] = global.nullius_wind_speed * base_wind_power[i]
    global.nullius_animation_speed[i] = global.nullius_wind_speed * (0.6 + (i * 0.2))
  end

  global.nullius_turbine_buckets = {}
  for i=1,921 do
    global.nullius_turbine_buckets[i] = {
      turbines = { },
      orientation = global.nullius_wind_orientation,
      last_speed = global.nullius_animation_speed[((i - 1) % 3) + 1],
      last_offset = ((i - 1) * 24) / 921.0
    }
  end
end


function discretize(x)
  return (math.floor((x * 1048576.0) + 0.5) / 1048576.0)
end

function recalculate_wind()
  local surface = game.surfaces[1]
  if (surface == nil) then return end

  local wave1 = math.sin(discretize((surface.daytime + 0.04) * 6.2832))
  local wave2 = math.sin(discretize((game.tick % 75787) * 0.001160682))
  local wave3 = math.sin(discretize(((game.tick % 291113) * 0.0001295004) + 2.5))
  local wave4 = math.sin(discretize(((game.tick % 1023487) * 0.000055251) + 4.4))

  local wave = discretize((wave1 * 1.2) + wave2 + wave3 + (wave4 * 0.75))
  local noise = (math.random() * 3) + (math.random() * 5)
  local momentum = discretize((global.nullius_wind_momentum * 0.9985) +
      (math.random() * 0.16) - 0.08)
  local target = (wave + noise + momentum - 0.1) / 6
  local delta = discretize((math.random() * 0.25) + 0.05)
  local factor = discretize(global.nullius_wind_factor * (1 - delta) + (delta * target))
  global.nullius_wind_factor = factor
  global.nullius_wind_momentum = momentum

  if (factor <= 0) then
    global.nullius_wind_speed = 0
  elseif (factor >= 1.25) then
    global.nullius_wind_speed = 1
  elseif (factor >= 1) then
    global.nullius_wind_speed = discretize((factor * 0.4) + 0.5)
  else
    global.nullius_wind_speed = discretize(factor * factor * 0.9)
  end
  surface.wind_speed = (global.nullius_wind_speed / 20)

  for i=1,3 do
    global.nullius_current_power[i] = global.nullius_wind_speed * base_wind_power[i]
    global.nullius_animation_speed[i] = discretize(global.nullius_wind_speed * (0.6 + (i * 0.2)))
  end

  global.nullius_wind_orientation = math.floor((surface.wind_orientation * 8) % 8)
end

function destroy_turbine(entry)
  if ((entry.collision_box ~= nil) and (entry.collision_box.valid)) then
    entry.collision_box.destroy()
  end
  if ((entry.collision_box2 ~= nil) and (entry.collision_box2.valid)) then
    entry.collision_box2.destroy()
  end
  if ((entry.collision_box3 ~= nil) and (entry.collision_box3.valid)) then
    entry.collision_box3.destroy()
  end
  if ((entry.collision_box4 ~= nil) and (entry.collision_box4.valid)) then
    entry.collision_box4.destroy()
  end

  rendering.destroy(entry.blade)
  rendering.destroy(entry.shadow)
end

function update_turbines(ind, level)
  local bucket = global.nullius_turbine_buckets[ind]
  local orientation = global.nullius_wind_orientation
  if (bucket.orientation ~= orientation) then
    bucket.orientation = orientation
    local blade_animation = "nullius-wind-blade-"..level.."-"..orientation
    local shadow_animation = "nullius-wind-shadow-"..level.."-"..orientation

    for _,t in pairs(bucket.turbines) do
    if (t.base.valid) then
        rendering.set_animation(t.blade, blade_animation)
        rendering.set_animation(t.shadow, shadow_animation)
    end
    end
  end

  local power = global.nullius_current_power[level]
  local aspeed = global.nullius_animation_speed[level]
  local tick = game.tick
  local frame = (tick * aspeed)
  local expected = ((tick * bucket.last_speed) + bucket.last_offset)
  local adjusted_offs = (expected - frame) % 24
  local equilibrium_offs = ((ind - 1) * 24) / 921.0
  local offs = discretize(((adjusted_offs * 127.0) + equilibrium_offs) / 128.0)
  bucket.last_offset = offs
  bucket.last_speed = aspeed

  for i,t in pairs(bucket.turbines) do
    if (t.base.valid) then
      t.base.power_production = power
      rendering.set_animation_speed(t.blade, aspeed)
      rendering.set_animation_speed(t.shadow, aspeed)
      rendering.set_animation_offset(t.blade, offs)
      rendering.set_animation_offset(t.shadow, offs)
  else
    destroy_turbine(t)
    bucket.turbines[i] = nil
  end
  end
end

function update_wind()
  if ((game.tick % 101) == 2) then
    recalculate_wind()
  end

  local ind = (game.tick % 307) * 3
  for i=1,3 do
    ind = ind + 1
    update_turbines(ind, i)
  end
end


function create_wind_collision(surface, pos, force, dir, xo, yo, xsz, ysz)
  return (create_collision_box(surface, pos, force,
	  "nullius-wind-collision-"..dir, xo, yo, xsz, ysz, "layer-43"))
end

function build_wind_turbine(entity, level)
  if ((level < 1) or (level > 3)) then return end

  local surface = entity.surface
  local position = entity.position
  local force = entity.force
  entity.destroy()

  local newentity = surface.create_entity{
    name = "nullius-wind-base-"..level,
    position = position, force = force}
  newentity.power_production = global.nullius_current_power[level]
  script.register_on_entity_destroyed(newentity)

  local collision1 = create_wind_collision(surface, position, force, "horizontal", 14.5, 17, 16, 13.5)
  local collision2 = create_wind_collision(surface, position, force, "vertical", 17, -14.5, 13.5, 16)
  local collision3 = create_wind_collision(surface, position, force, "horizontal", -14.5, -17, 16, 13.5)
  local collision4 = create_wind_collision(surface, position, force, "vertical", -17, 14.5, 13.5, 16)

  local ind = level + ((newentity.unit_number % 307) * 3)
  local bucket = global.nullius_turbine_buckets[ind]
  local scale = 0.4 + (level * 0.2)

  bucket.turbines[newentity.unit_number] = {
    base = newentity,
    collision_box = collision1,
    collision_box2 = collision2,
    collision_box3 = collision3,
    collision_box4 = collision4,
    surface = surface.name,
    blade = rendering.draw_animation{
      animation = "nullius-wind-blade-"..level.."-"..bucket.orientation,
      target = {position.x, (position.y - (10*scale))},
      surface = surface,
      animation_speed = bucket.last_speed,
      animation_offset = bucket.last_offset,
      render_layer = "wires-above"},
    shadow = rendering.draw_animation{
      animation = "nullius-wind-shadow-"..level.."-"..bucket.orientation,
      target = {(position.x + (6*scale)), (position.y - scale)},
      surface = surface,
      animation_speed = bucket.last_speed,
      animation_offset = bucket.last_offset}
  }
end

function remove_wind_unit(unit, died, level)
  local ind = level + ((unit % 307) * 3)
  local bucket = global.nullius_turbine_buckets[ind]
  local entry = bucket.turbines[unit]
  if entry == nil then return end

  --[[
  if entry.base ~= nil then
    if died then
      if entry.base.valid then
        script_kill = true
        entry.base.die(entry.base.force)
        script_kill = nil
      else
        entry.base.destroy()
      end
    end
  end
  --]]

  destroy_turbine(entry)
  bucket.turbines[unit] = nil
end

function remove_wind_turbine(entity, died, level)
  if ((level < 1) or (level > 3)) then return end
  remove_wind_unit(entity.unit_number, died, level)
end

function destroyed_wind_turbine(unit)
  local offset = ((unit % 307) * 3)
  for lvl=1,3 do
    local entry = global.nullius_turbine_buckets[lvl + offset].turbines[unit]
  if (entry ~= nil) then
    remove_wind_unit(unit, false, lvl)
    return true
  end
  end
  return false
end
