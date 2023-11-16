local ship_parts = {
  {
    name = "nullius-landing-tail",
    angle_deviation = 0.1,
    max_distance = 25,
    min_separation = 6
  },
  {
    name = "nullius-landing-propulsion",
    angle_deviation = 0.1,
    max_distance = 25,
    min_separation = 6
  },
  {
    name = "nullius-landing-lab",
    angle_deviation = 0.1,
    max_distance = 25,
    min_separation = 6
  },
  {
    name = "nullius-landing-machine-1",
    angle_deviation = 0.05,
    max_distance = 30,
    min_separation = 3
  },
  {
    name = "nullius-landing-intake",
    angle_deviation = 0.05,
    max_distance = 30,
    min_separation = 3
  },
  {
    name = "nullius-landing-wing",
    angle_deviation = 0.05,
    max_distance = 30,
    min_separation = 3
  },
  {
    name = "nullius-landing-vent",
    angle_deviation = 0.05,
    max_distance = 30,
    min_separation = 3
  },
  {
    name = "nullius-landing-machine-2",
    angle_deviation = 0.05,
    max_distance = 30,
    min_separation = 3
  },
  {
    name = "nullius-landing-pod-1",
    angle_deviation = 0.05,
    min_separation = 3,
  pod = 1
  },
  {
  name = "nullius-landing-pylon",
    angle_deviation = 0.05,
    min_separation = 3
  },
  {
  name = "nullius-landing-duct",
    angle_deviation = 0.05,
    min_separation = 3
  },
  {
    name = "nullius-landing-shielding",
    angle_deviation = 0.05,
    min_separation = 3
  },
  {
    name = "nullius-landing-pod-2",
    angle_deviation = 0.05,
    min_separation = 3,
  pod = 2
  }
}


local rotate = function(offset, angle)
  local x = offset[1]
  local y = offset[2]
  local rotated_x = x * math.cos(angle) - y * math.sin(angle)
  local rotated_y = x * math.sin(angle) + y * math.cos(angle)
  return {rotated_x, rotated_y}
end

local get_offset = function(part)
  local angle = 0.70 + ((math.random() - 0.5) * part.angle_deviation)
  angle = angle - 0.25
  angle = angle * math.pi * 2
  local distance = 8 + (math.random() * (part.max_distance or 40))
  local offset = rotate({distance, 0}, angle)
  return offset
end

function landing_site(surface, loc, frc)
  for _, entity in pairs (surface.find_entities_filtered{
      area = {{loc.x - 32, loc.y - 24}, {loc.x + 32, loc.y + 24}},
      force = "neutral", collision_mask = "player-layer"}) do
    if entity.valid then
      entity.destroy()
    end
  end

  local main_ship = surface.create_entity {
    name = "nullius-landing-main",
    position = loc,
    force = frc
  }
  main_ship.insert({name="nullius-foundry-1", count=1})
  main_ship.insert({name="nullius-broken-foundry", count=2})
  main_ship.insert({name="nullius-hydro-plant-1", count=1})
  main_ship.insert({name="nullius-broken-hydro-plant", count=3})
  main_ship.insert({name="nullius-distillery-1", count=2})
  main_ship.insert({name="nullius-broken-electrolyzer", count=1})
  main_ship.insert({name="nullius-chemical-plant-1", count=2})
  main_ship.insert({name="nullius-broken-chemical-plant", count=7})

  for _, part in pairs (ship_parts) do
    local part_position = nil
    local count = 0
    while true do
      local offset = get_offset(part)
      local x = (loc[1] or loc.x) + offset[1]
      local y = (loc[2] or loc.y) + offset[2]
      part_position = {x, y}
	  local can_place = surface.can_place_entity{
          name = part.name, position = part_position,
          force = frc, forced = true,
          build_check_type = defines.build_check_type.ghost_place }
      if (can_place and ((part.min_separation == nil) or
          (surface.count_entities_filtered{position = part_position,
            radius = part.min_separation, limit = 1,
            type = {"simple-entity", "container"}} < 1))) then
        break
      end
      count = count + 1
      if (count > 20) then
        part_position = surface.find_non_colliding_position(part.name,
        part_position, (((count - 20) * 5) + 25), 4)
        if (part_position ~= nil) then break end
      end
    end

    local part_entity = surface.create_entity {
      name = part.name,
      position = part_position,
      force = frc
    }
    if (part.pod ~= nil) then
      if (part.pod == 1) then
        part_entity.insert({name="wooden-chest", count=2})
        part_entity.insert({name="inserter", count=30})
	    part_entity.insert({name="cliff-explosives", count=30})
      else
        part_entity.insert({name="nullius-small-storage-chest-1", count=1})
        part_entity.insert({name="transport-belt", count=300})
        part_entity.insert({name="splitter", count=5})
      end
    end
  end
end