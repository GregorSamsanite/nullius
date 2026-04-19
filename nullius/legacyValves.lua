
------- About Valve's migrations :
-- In 1.1 Valves where implemented as storage tanks, in 2.0 a Valve prototype exists in the game engine
-- Simply replacing the old storage tank prototype with the valve prototype (keeping the same name) doesn't work:
-- The old storage tank's orientation is not kept when transforming the entities to valves : the south converts to north and the west converts to east (and just those two) (it feels like a bug from the game engine in my opinion)
-- Since I want to keep the nullius valves names for the actual valves, I decided to create those dummy storage tanks with name "legacy", and I added the json migrations to turn 1.1 valve storage tanks into 2.0 storage tanks (that way they keep the orientation)
-- Then we have a migration script (migrations/nullius_2.0.0.lua) that finds all "legacy" storage tanks, saves their orientation, destroy them and spawn actual valves in their place, with the correct orientation
-- This is the way to keep valves correctly oriented when migrating
-- Except that there is another way which is probably also a bug (an incomprehensible one) :
-- We can just not do any of that: no migration json, no migration script, no dummy storage tanks
-- Instead, if we declare one dummy storage tank (all optional fields empty) and with any dummy name (not even "valve" in it)
-- And one "item-with-tags" that has a place_result set to that dummy tank, and its group set to logistics (any other group will not work ???)
-- Then the valves orientation will be kept by the game engine when turning storage tanks into valves
-- Example:
-- data:extend{{
--         type = "storage-tank",
--         name = "anythingReally",
--         icon = "__base__/graphics/icons/car.png",
--         window_bounding_box = {{0, 0}, {0, 0}},
--         fluid_box = {
--             volume = 1,
--             pipe_covers = pipecoverspictures(),
--             pipe_connections = {},
--         },
--         flow_length_in_ticks = 1,
--         hidden_in_factoriopedia = true
--     },
--     {
--         type = "item-with-tags",
--         name = "testThing",
--         icon = "__base__/graphics/icons/car.png",
--         subgroup = "splitter", -- splitter is into the logistics group, it would not work if we tried an other group
--         place_result = "anythingReally",
--         stack_size = 1,
--         hidden_in_factoriopedia = true,
--     }}

local legacyValves = {
   "nullius-legacy-priority-valve",
   "nullius-legacy-one-way-valve",
   "nullius-legacy-top-up-valve",
   "nullius-legacy-relief-valve"
}
for _, name in pairs(legacyValves) do
    data:extend{{
        type = "storage-tank", -- dummy entity
        name = name,
        icon = "__base__/graphics/icons/car.png",
        window_bounding_box = {{0, 0}, {0, 0}},
        fluid_box = {
            volume = 1,
            pipe_covers = pipecoverspictures(),
            pipe_connections = {},
        },
        flow_length_in_ticks = 1,
        hidden_in_factoriopedia = true
    },
    }
end