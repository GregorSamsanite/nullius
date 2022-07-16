data.script_enabled = data.script_enabled or {}

local starting_items = {
  "nullius-solar-panel-1",
  "nullius-small-furnace-2",
  "nullius-air-filter-1",
  "nullius-broken-air-filter",
  "nullius-seawater-intake-1",
  "nullius-broken-solar-panel",
  "nullius-pipe-2",
  "nullius-lab-1",
  "nullius-broken-sensor-node",
  "small-electric-pole",
  "nullius-broken-pylon",
  "nullius-broken-grid-battery",
  "nullius-small-miner-1",
  "nullius-medium-assembler-1",
  "nullius-broken-assembler",
  "nullius-chassis-1",
  "nullius-foundry-1",
  "nullius-broken-foundry",
  "nullius-hydro-plant-1",
  "nullius-broken-hydro-plant",
  "nullius-distillery-1",
  "nullius-broken-electrolyzer",
  "nullius-chemical-plant-1",
  "nullius-broken-chemical-plant"
}


table.insert(data.script_enabled, {type = "entity", name = "uranium-ore"})
table.insert(data.script_enabled, {type = "entity", name = "copper-ore"})

for _, itemname in pairs(starting_items) do
  table.insert(data.script_enabled, {type = "item", name = itemname})
end

for _, tech in pairs(data.raw.technology) do
  if (string.sub(tech.name, 1, 19) == "nullius-checkpoint-") then
    table.insert(data.script_enabled, {type = "technology", name = tech.name})
  end
end
