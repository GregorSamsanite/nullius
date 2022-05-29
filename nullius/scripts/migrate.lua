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
