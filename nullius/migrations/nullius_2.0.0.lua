-- stolen from boblogistics
local replace_behaviour = {
   "priority-valve",
   "one-way-valve",
   "top-up-valve",
   "relief-valve"
}

for _, surface in pairs(game.surfaces) do
  for _, entity_name in pairs(replace_behaviour) do
    local originalName = "nullius-legacy-"..entity_name
    if prototypes.entity["nullius-"..entity_name] then
      for _, entity in pairs(surface.find_entities_filtered({ name = originalName })) do
        log("entity:"..entity.type)
        log(entity.position)
        log(entity.direction)
        local position = entity.position
        local direction = entity.direction
        local force = entity.force
        entity.destroy({ raise_destroy = true })

        local valve = surface.create_entity({
          name = "nullius-"..entity_name,
          position = position,
          force = force,
          direction = direction,
          raise_built = true,
        })
      end
    end
  end
end

local mirrorBuildings = {
  "chimney-1",
  "chimney-2",
  "chemical-plant-1",
  "chemical-plant-2",
  "chemical-plant-3",
  "distillery-1",
  "distillery-2",
  "distillery-3",
  "hydro-plant-1",
  "hydro-plant-2",
  "hydro-plant-3",
  "surge-electrolyzer-1",
  "surge-electrolyzer-2",
  "surge-electrolyzer-3",
  "priority-electrolyzer-1",
  "priority-electrolyzer-2",
  "priority-electrolyzer-3",
  "heat-exchanger-1",
  "heat-exchanger-2",
  "heat-exchanger-3",
  "boiler-1",
  "boiler-2",
  "combustion-chamber-1",
  "combustion-chamber-2",
  "combustion-chamber-3",
  
  "nanofabricator-1", --different pattern
  "nanofabricator-2",
  "flotation-cell-1",
  "flotation-cell-2",
  "flotation-cell-3"
}

for _, surface in pairs(game.surfaces) do
  for _, baseName in pairs(mirrorBuildings) do
    local mirrorName = "nullius-mirror-"..baseName
    if prototypes.entity[mirrorName] then
      for _, entity in pairs(surface.find_entities_filtered{name = mirrorName}) do
        local position = entity.position
        local direction = entity.direction
        local force = entity.force
        --entity.destroy({ raise_destroy = true })
        
        local new = surface.create_entity({
          name = "nullius-"..baseName,
          position = position,
          force = force,
          direction = direction,
          fast_replace = true,
          raise_built = true,
        })
        
        new.mirroring = true
        
        local name = string.sub(baseName,1,14)
        if name == "nanofabricator" or name == "flotation-cell" then
          new.rotate()
          if name == "nanofabricator" then
            new.rotate()
          end
        end
      end
    end
  end
end