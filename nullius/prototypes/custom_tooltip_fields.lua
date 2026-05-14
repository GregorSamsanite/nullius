
---Gets the first item result of the given mineable object, if it exists.
---@param mineable data.MinableProperties
---@return data.ItemPrototype
local function get_item_from_mineable(mineable)
    local result = mineable.result
    if result then
        return data.raw.item[result]
    end
    for _, r in pairs(mineable.results or {}) do
        if r.type == "item" then
            return data.raw.item[r.name]
        end
    end
end

---@param prototype data.Prototype
---@param description data.CustomTooltipField
local function add_description(prototype, description)
    if not prototype.custom_tooltip_fields then
        prototype.custom_tooltip_fields = {}
    end
    table.insert(prototype.custom_tooltip_fields, description)
end

---Add the pipeline extent of the given fluid box, to the item adquired by the given minerable object.
---@param mineable? data.MinableProperties
---@param fluid_box data.FluidBox
local function add_pipeline_extent(mineable, fluid_box)
    local extent = fluid_box.max_pipeline_extent
    if extent and mineable then
        -- Use the item instead of the entity itself, as the entity has the extent of it's connected pipeline.
        local item = get_item_from_mineable(mineable)
        if not item then return end

        local description = {
            -- Use base game translation key for "Pipeline extent" to get all localizations for free
            name = { "description.pipeline-extent" },
            value = tostring(extent),
        }
        add_description(item, description)
    end
end

-- Iterate over all pipes and tanks, to handle any added by mods
for _, pipe in pairs(data.raw["pipe"]) do
    add_pipeline_extent(pipe.minable, pipe.fluid_box)
end
for _, pipe in pairs(data.raw["pipe-to-ground"]) do
    add_pipeline_extent(pipe.minable, pipe.fluid_box)
end
for _, tank in pairs(data.raw["storage-tank"]) do
    add_pipeline_extent(tank.minable, tank.fluid_box)
end
