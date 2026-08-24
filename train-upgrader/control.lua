require("scripts.init")
require("scripts.station")
require("scripts.build")
require("scripts.upgrade")
require("scripts.tick")

---@namespace train-upgrader

---@class pending
---@field train train_id
---@field tick MapTick
---@field current uint32
---@field group string

---@class entry
---@field stop LuaEntity
---@field units table<integer,LuaEntity>
---@field suppliers table
---@field receivers table
---@field train_count integer
---@field train_index integer
---@field last_refresh integer
---@field hold boolean
---@field pending table<integer,pending>
---@field next entry
---@field prev entry

---@class Storage
---@field unit_table table<uint64,any>
---@field station_head entry

