-- Nullius wind turbine system is originally based on the windturbines mod by OwnlyMe
-- Unfortunately they withdrew support for it while Nullius was in development, and it's
-- no longer expected to be updated for 1.1+ compatibility, after Nullius was designed
-- to rely on it, so the graphics are replicated here.


function init_wind()
  global.nullius_wind_orientation = 4
  global.nullius_wind_factor = 0.7
  global.nullius_wind_speed = 0.4
  global.nullius_wind_momentum = 0

  global.nullius_base_power = { }
  global.nullius_current_power = { }
  global.nullius_animation_speed = { }
  global.nullius_base_power[1] = 1000000/60
  global.nullius_base_power[2] = 3000000/60
  global.nullius_base_power[3] = 9000000/60
  for i=1,3 do
    global.nullius_current_power[i] = global.nullius_wind_speed * global.nullius_base_power[i]
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

  local wave1 = math.sin(discretize((surface.daytime + 0.3) * 6.2832))
  local wave2 = math.sin(discretize((game.tick % 75787) * 0.001160682))
  local wave3 = math.sin(discretize(((game.tick % 291113) * 0.000107917) + 2.5))
  local wave4 = math.sin(discretize(((game.tick % 1023487) * 0.000024556) + 4.4))

  local wave = discretize((wave1 * 1.5) + wave2 + wave3 + (wave4 * 0.5))
  local noise = (math.random() * 3) + (math.random() * 5)
  local momentum = discretize((global.nullius_wind_momentum * 0.999) +
      (math.random() * 0.1) - 0.05)
  local target = ((wave + noise + momentum) - 0.3) / 6
  local delta = discretize((math.random() * 0.3) + 0.05)
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

  for i=1,3 do
    global.nullius_current_power[i] = global.nullius_wind_speed * global.nullius_base_power[i]
    global.nullius_animation_speed[i] = discretize(global.nullius_wind_speed * (0.6 + (i * 0.2)))
  end

  global.nullius_wind_orientation = math.floor((surface.wind_orientation * 8) % 8)
end

function update_turbines(ind, level)
  local bucket = global.nullius_turbine_buckets[ind]
  local orientation = global.nullius_wind_orientation
  if (bucket.orientation ~= orientation) then
    bucket.orientation = orientation
    local blade_animation = "nullius-wind-blade-"..level.."-"..orientation
    local shadow_animation = "nullius-wind-shadow-"..level.."-"..orientation

    for _,t in pairs(bucket.turbines) do
      rendering.set_animation(t.blade, blade_animation)
      rendering.set_animation(t.shadow, shadow_animation)        
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

  for _,t in pairs(bucket.turbines) do
    t.base.power_production = power
    rendering.set_animation_speed(t.blade, aspeed)
    rendering.set_animation_speed(t.shadow, aspeed)
    rendering.set_animation_offset(t.blade, offs)
    rendering.set_animation_offset(t.shadow, offs)
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


function create_collision_box(surface, position, force, dir, xoffs, yoffs)
  local collision = surface.create_entity{name = "nullius-wind-collision-"..dir,
    position = {x=(position.x+xoffs), y=(position.y+yoffs)},
	force = force, create_build_effect_smoke = false}
  collision.destructible = false
  collision.minable = false
  return collision
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

  local collision1 = create_collision_box(surface, position, force, "horizontal", 14.5, 17)
  local collision2 = create_collision_box(surface, position, force, "vertical", 17, -14.5)
  local collision3 = create_collision_box(surface, position, force, "horizontal", -14.5, -17)
  local collision4 = create_collision_box(surface, position, force, "vertical", -17, 14.5)
  
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
  
function remove_wind_turbine(entity, died, level)
  if ((level < 1) or (level > 3)) then return end

  local unit = entity.unit_number
  local ind = level + ((unit % 307) * 3)
  local bucket = global.nullius_turbine_buckets[ind]
  if bucket.turbines[unit] == nil then return end

  local entry = bucket.turbines[unit]
  if entry.base ~= nil then
    if died then
      if entry.valid then
        script_kill = true
        entry.base.die(entry.base.force)
        script_kill = nil
      else
        entry.base.destroy()
      end
    end
  end

  if entry.collision_box ~= nil then
    entry.collision_box.destroy()
  end
  if entry.collision_box2 ~= nil then
    entry.collision_box2.destroy()
  end
  if entry.collision_box3 ~= nil then
    entry.collision_box3.destroy()
  end
  if entry.collision_box4 ~= nil then
    entry.collision_box4.destroy()
  end

  rendering.destroy(entry.blade)
  rendering.destroy(entry.shadow)
  bucket.turbines[unit] = nil
end
