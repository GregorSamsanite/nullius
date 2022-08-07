function init_legacy_recipes(force)
  if (global.nullius_legacy == nil) then return end
  local legacy = global.nullius_legacy[force.index]
  if (legacy == nil) then return end
  for recipename, techname in pairs(legacy) do
    if (force.technologies[techname].researched and
	    (force.recipes[recipename] ~= nil)) then
	  force.recipes[recipename].enabled = true
	end
  end
end
  
local function legacy_recipe(force, techname, recipename)
  if (not force.technologies[techname].researched) then return end
  if (global.nullius_legacy == nil) then
    global.nullius_legacy = { }
  end
  if (global.nullius_legacy[force.index] == nil) then
    global.nullius_legacy[force.index] = { }
  end
  global.nullius_legacy[force.index]["nullius-legacy-"..recipename] = techname
end


local function added_techs(techlist)
  for _, force in pairs(game.forces) do
    if (force.research_enabled) then
      for _, tech in pairs(force.technologies) do
        if (tech.enabled and tech.researched) then
          for _, prereq in pairs(tech.prerequisites) do
	        if (prereq.enabled and (not prereq.researched)) then
			  for _, newtech in pairs(techlist) do
			    if (newtech == prereq.name) then
				  prereq.researched = true
				end
		      end
			end
		  end
		end
	  end
	end
  end
end


function migrate_version(event)
  local version_info = event.mod_changes["nullius"]
  if (version_info == nil) then return end
  local previous = version_info.old_version
  if (previous == nil) then return end

  local dot1 = string.find(previous, "%.")
  if (dot1 == nil) then return end
  local dot2 = string.find(previous, "%.", (dot1 + 1))
  if (dot2 == nil) then return end
  local sub1 = tonumber(string.sub(previous, 1, (dot1 - 1)))
  local sub2 = tonumber(string.sub(previous, (dot1 + 1), (dot2 - 1)))
  local sub3 = tonumber(string.sub(previous, (dot2 + 1)))
  if ((sub1 == nil) or (sub2 == nil) or (sub3 == nil)) then return end
  local version = (((sub1 * 100) + sub2) * 100) + sub3

  if (version >= 10500) then return end
  for _, force in pairs(game.forces) do
    if (force.research_enabled) then
	  legacy_recipe(force, "nullius-automation", "small-assembler-1")
	  legacy_recipe(force, "nullius-automation-2", "small-assembler-2")
	  legacy_recipe(force, "nullius-mining-1", "small-miner-1")
	  legacy_recipe(force, "nullius-mineral-processing-3", "crusher-3")
	  legacy_recipe(force, "nullius-broadcasting-4", "large-beacon-2")
	  legacy_recipe(force, "nullius-terraforming-1", "demolition-drone")
	  legacy_recipe(force, "nullius-terraforming-1", "excavation-drone")
	  legacy_recipe(force, "nullius-cybernetics-6", "chassis-5")
	  legacy_recipe(force, "nullius-maintenance", "repair-pack")
	  legacy_recipe(force, "nullius-mass-production-4", "boxed-repair-pack")
	  legacy_recipe(force, "nullius-robotics-4", "levitation-field-2")
	  legacy_recipe(force, "nullius-freight-transportation-2", "locomotive-2")
	  legacy_recipe(force, "nullius-nanotechnology-1", "nanofabricator-1")
	  legacy_recipe(force, "nullius-nanotechnology-2", "nanofabricator-2")
	  legacy_recipe(force, "nullius-construction-robot-1", "construction-bot-1")
	  legacy_recipe(force, "nullius-mass-production-6", "boxed-construction-bot-1")
	  legacy_recipe(force, "nullius-construction-robot-2", "construction-bot-2")
	  legacy_recipe(force, "nullius-mass-production-6", "boxed-construction-bot-2")
	  legacy_recipe(force, "nullius-construction-robot-3", "construction-bot-3")
	  legacy_recipe(force, "nullius-construction-robot-3", "boxed-construction-bot-3")
	  legacy_recipe(force, "nullius-construction-robot-4", "construction-bot-4")
	  legacy_recipe(force, "nullius-construction-robot-4", "boxed-construction-bot-4")
	  legacy_recipe(force, "nullius-logistic-robot-1", "logistic-bot-1")
	  legacy_recipe(force, "nullius-mass-production-6", "boxed-logistic-bot-1")
	  legacy_recipe(force, "nullius-logistic-robot-2", "logistic-bot-2")
	  legacy_recipe(force, "nullius-mass-production-6", "boxed-logistic-bot-2")
	  legacy_recipe(force, "nullius-logistic-robot-3", "logistic-bot-3")
	  legacy_recipe(force, "nullius-logistic-robot-3", "boxed-logistic-bot-3")
	  legacy_recipe(force, "nullius-logistic-robot-4", "logistic-bot-4")
	  legacy_recipe(force, "nullius-logistic-robot-4", "boxed-logistic-bot-4")
	end
  end
  
  if (version >= 10419) then return end
  for _, force in pairs(game.forces) do
    if (force.research_enabled) then
      if (force.technologies["nullius-ceramics"].researched) then
		force.technologies["nullius-ceramics-2"].researched = true
      end
      if (force.technologies["factory-connection-type-heat"] ~= nil) then
		force.technologies["factory-connection-type-heat"].enabled = true
      end
	end
  end

  if (version >= 10407) then return end
  migrate_oxygen()
  for _,player in pairs(game.players) do
    player.clear_recipe_notifications()
  end

  if (version >= 10406) then return end
  added_techs({"nullius-toolmaking-1", "nullius-toolmaking-3",
      "nullius-toolmaking-4", "nullius-toolmaking-6", "nullius-toolmaking-8",
      "nullius-toolmaking-9", "nullius-insulation-1", "nullius-insulation-2"})

  if (version >= 10403) then return end
  for _, force in pairs(game.forces) do
    if (force.research_enabled) then
	  legacy_recipe(force, "nullius-robotics-1", "robot-frame-1")
	  legacy_recipe(force, "nullius-robotics-2", "robot-frame-2")
	  legacy_recipe(force, "nullius-mass-production-6", "boxed-robot-frame-1")
	  legacy_recipe(force, "nullius-mass-production-6", "boxed-robot-frame-2")
      if (force.technologies["nullius-sensors-2"].researched) then
		force.technologies["nullius-sensors-1"].researched = true
      end
      if (force.technologies["nullius-inorganic-chemistry-2"].researched) then
        force.technologies["nullius-inorganic-chemistry-1"].researched = true
      end
	end
  end
end
