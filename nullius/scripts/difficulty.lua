-- Code for reading settings that is shared by
-- prototype and runtime stages.

local function get_technology_price_multiplier()
  if game then
    -- Runtime stage
    return game.difficulty_settings.technology_price_multiplier
  elseif data then
    -- Prototype stage
    return data.raw['map-settings']['map-settings'].difficulty_settings.technology_price_multiplier
  else
    -- Map simulation
    return 1
  end
end

local function get_drone_difficulty_scale()
  -- Get the difficulty scaling factor for drone launches.
  -- User may change the settings during the game, so we don't precompute it.
  local s
  if settings.startup["nullius-mission-drone-multiplier-enable"].value then
    s = settings.startup["nullius-mission-drone-multiplier"].value
  else
    -- Compute it from the technology multiplier
    -- Scale as sqrt(0.5 * T), with a correction so the multiplier goes to 1 at T=1
    -- Some (T, scale) values: (0.5, 0.82)  (1, 1)  (8, 2+eps)  (100, 7+eps)
    local technology_multiplier = get_technology_price_multiplier()
    local multiplier = (technology_multiplier * 0.5)^0.5
    local adjustment_1 = 0.292893219 * math.exp(0.2 * (1 - technology_multiplier))
    s = multiplier + adjustment_1
  end
  -- Clamp to (0.5, 10).  This matches the range in settings.lua.
  return math.max(0.5, math.min(10, s))
end

local function get_nondrone_difficulty_scale()
  -- Get the difficulty scaling factor for non-drone objectives.
  -- User may change the settings during the game, so we don't precompute it.
  local technology_multiplier = get_technology_price_multiplier()
  -- Lower bound only
  technology_multiplier = math.max(0.5, technology_multiplier)
  return 0.25 + technology_multiplier * 0.75
end

local function get_production_difficulty_scale()
  -- Get the difficulty scaling factor for intensive-production checkpoint objectives.
  -- User may change the settings during the game, so we don't precompute it.
  local technology_multiplier = get_technology_price_multiplier()
  -- Lower bound only
  technology_multiplier = math.max(0.5, technology_multiplier)
  return 0.5 + technology_multiplier * 0.5
end

local function scale_checkpoint_target(factor, n)
  -- Scale the value n by the difficulty factor rounded to one decimal place.
  -- Used for target amounts in checkpoints.
  local scaled = math.floor(10 * factor) * (n / 10)
  return math.floor(0.5 + scaled)
end

return {
  get_drone_difficulty_scale = get_drone_difficulty_scale,
  get_nondrone_difficulty_scale = get_nondrone_difficulty_scale,
  get_production_difficulty_scale = get_production_difficulty_scale,
  scale_checkpoint_target = scale_checkpoint_target
}
