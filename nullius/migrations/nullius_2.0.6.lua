
-- Reposition wind turbine bounding boxes
for _, bucket in ipairs(storage.nullius_turbine_buckets) do
  for _, entry in pairs(bucket.turbines) do
    local surface = entry.base.surface
    local position = entry.base.position
    local force = entry.base.force
    destroy_turbine_collision_boxes(entry)
    build_turbine_collision_boxes(entry, surface, position, force)
  end
end
