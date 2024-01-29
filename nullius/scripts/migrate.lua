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

local function legacy_recipe_all(techname, recipename)
  for _, force in pairs(game.forces) do
    if (force.research_enabled) then
	  legacy_recipe(force, techname, recipename)
	end
  end
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


local function parse_version(version)
  if (version == nil) then return nil end
  local dot1 = string.find(version, "%.")
  if (dot1 == nil) then return nil end
  local dot2 = string.find(version, "%.", (dot1 + 1))
  if (dot2 == nil) then return nil end
  local sub1 = tonumber(string.sub(version, 1, (dot1 - 1)))
  local sub2 = tonumber(string.sub(version, (dot1 + 1), (dot2 - 1)))
  local sub3 = tonumber(string.sub(version, (dot2 + 1)))
  if ((sub1 == nil) or (sub2 == nil) or (sub3 == nil)) then return nil end
  return ((((sub1 * 100) + sub2) * 100) + sub3)
end


function update_railloader_bulk()
  local version = parse_version(script.active_mods["railloader"])
  if ((version == nil) or (version < 10106)) then return end
  if (remote.interfaces["railloader"] == nil) then return end
  remote.call("railloader", "add_bulk_item", "nullius-iron-oxide")
  remote.call("railloader", "add_bulk_item", "nullius-cellulose")
  remote.call("railloader", "add_bulk_item", "nullius-sand")
  remote.call("railloader", "add_bulk_item", "nullius-limestone")
  remote.call("railloader", "add_bulk_item", "nullius-lime")
  remote.call("railloader", "add_bulk_item", "nullius-gypsum")
  remote.call("railloader", "add_bulk_item", "nullius-silica")
  remote.call("railloader", "add_bulk_item", "nullius-gravel")
  remote.call("railloader", "add_bulk_item", "nullius-alumina")
  remote.call("railloader", "add_bulk_item", "nullius-sodium-hydroxide")
  remote.call("railloader", "add_bulk_item", "nullius-calcium-chloride")
  remote.call("railloader", "add_bulk_item", "nullius-sodium-sulfate")
  remote.call("railloader", "add_bulk_item", "nullius-lithium-chloride")
  remote.call("railloader", "add_bulk_item", "nullius-salt")
  remote.call("railloader", "add_bulk_item", "nullius-crushed-bauxite")
  remote.call("railloader", "add_bulk_item", "nullius-crushed-iron-ore")
  remote.call("railloader", "add_bulk_item", "nullius-crushed-limestone")
  remote.call("railloader", "add_bulk_item", "nullius-mineral-dust")
  remote.call("railloader", "add_bulk_item", "nullius-sandstone")
  remote.call("railloader", "add_bulk_item", "nullius-bauxite")
  remote.call("railloader", "add_bulk_item", "nullius-rutile")
  remote.call("railloader", "add_bulk_item", "nullius-aluminum-hydroxide")
  remote.call("railloader", "add_bulk_item", "nullius-aluminum-carbide")
  remote.call("railloader", "add_bulk_item", "nullius-graphite")
  remote.call("railloader", "add_bulk_item", "nullius-plastic")
  remote.call("railloader", "add_bulk_item", "nullius-rubber")
  remote.call("railloader", "add_bulk_item", "nullius-fertilizer")
  remote.call("railloader", "add_bulk_item", "nullius-land-fill-gravel")
  remote.call("railloader", "add_bulk_item", "nullius-land-fill-sand")
  remote.call("railloader", "add_bulk_item", "nullius-land-fill-bauxite")
  remote.call("railloader", "add_bulk_item", "nullius-land-fill-iron")
  remote.call("railloader", "add_bulk_item", "nullius-land-fill-limestone")
  remote.call("railloader", "add_bulk_item", "nullius-acid-boric")
  remote.call("railloader", "add_bulk_item", "nullius-box-iron-oxide")
  remote.call("railloader", "add_bulk_item", "nullius-box-cellulose")
  remote.call("railloader", "add_bulk_item", "nullius-box-sand")
  remote.call("railloader", "add_bulk_item", "nullius-box-limestone")
  remote.call("railloader", "add_bulk_item", "nullius-box-lime")
  remote.call("railloader", "add_bulk_item", "nullius-box-gypsum")
  remote.call("railloader", "add_bulk_item", "nullius-box-silica")
  remote.call("railloader", "add_bulk_item", "nullius-box-gravel")
  remote.call("railloader", "add_bulk_item", "nullius-box-alumina")
  remote.call("railloader", "add_bulk_item", "nullius-box-sodium-hydroxide")
  remote.call("railloader", "add_bulk_item", "nullius-box-calcium-chloride")
  remote.call("railloader", "add_bulk_item", "nullius-box-sodium-sulfate")
  remote.call("railloader", "add_bulk_item", "nullius-box-lithium-chloride")
  remote.call("railloader", "add_bulk_item", "nullius-box-salt")
  remote.call("railloader", "add_bulk_item", "nullius-box-crushed-bauxite")
  remote.call("railloader", "add_bulk_item", "nullius-box-crushed-iron-ore")
  remote.call("railloader", "add_bulk_item", "nullius-box-crushed-limestone")
  remote.call("railloader", "add_bulk_item", "nullius-box-mineral-dust")
  remote.call("railloader", "add_bulk_item", "nullius-box-sandstone")
  remote.call("railloader", "add_bulk_item", "nullius-box-bauxite")
  remote.call("railloader", "add_bulk_item", "nullius-box-rutile")
  remote.call("railloader", "add_bulk_item", "nullius-box-aluminum-hydroxide")
  remote.call("railloader", "add_bulk_item", "nullius-box-aluminum-carbide")
  remote.call("railloader", "add_bulk_item", "nullius-box-graphite")
  remote.call("railloader", "add_bulk_item", "nullius-box-plastic")
  remote.call("railloader", "add_bulk_item", "nullius-box-rubber")
  remote.call("railloader", "add_bulk_item", "nullius-box-fertilizer")
  remote.call("railloader", "add_bulk_item", "nullius-box-land-fill-gravel")
  remote.call("railloader", "add_bulk_item", "nullius-box-land-fill-sand")
  remote.call("railloader", "add_bulk_item", "nullius-box-land-fill-bauxite")
  remote.call("railloader", "add_bulk_item", "nullius-box-land-fill-iron")
  remote.call("railloader", "add_bulk_item", "nullius-box-land-fill-limestone")
  remote.call("railloader", "add_bulk_item", "nullius-box-acid-boric")  
  remote.call("railloader", "add_bulk_item", "nullius-box-iron-ore")
  remote.call("railloader", "add_bulk_item", "nullius-box-copper-ore")
end


function migrate_version(event)
  local version_info = event.mod_changes["nullius"]
  if (version_info == nil) then return end
  local version = parse_version(version_info.old_version)
  if (version == nil) then return end

  if (version >= 10901) then return end
  legacy_recipe_all("nullius-lithium-production", "lithium-chloride")
  legacy_recipe_all("nullius-lithium-production", "boxed-lithium-chloride")
  legacy_recipe_all("nullius-limestone-processing-3", "calcium-chloride-dehydration")
  legacy_recipe_all("nullius-mass-production-5", "boxed-calcium-chloride-dehydration")

  if (version >= 10900) then return end
  legacy_recipe_all("nullius-freight-transportation-3", "locomotive-3")
  legacy_recipe_all("nullius-zoology-1", "worm-2")
  legacy_recipe_all("nullius-evolution-4", "worm-3")

  if (version >= 10810) then return end
  added_techs({"nullius-venting-3"})
  legacy_recipe_all("nullius-barreling-1", "barrel-1")
  legacy_recipe_all("nullius-barreling-2", "barrel-2")
  legacy_recipe_all("nullius-mass-production-5", "boxed-barrel-1")
  legacy_recipe_all("nullius-mass-production-5", "boxed-barrel-2")
  legacy_recipe_all("nullius-waste-reclamation", "barrel-recycling")
  legacy_recipe_all("nullius-freight-transportation-1", "empty-canister")
  legacy_recipe_all("nullius-mass-production-4", "boxed-canister")

  if (version >= 10800) then return end
  added_techs({"nullius-ecology-1", "nullius-ecology-2", "nullius-ecology-3",
      "nullius-ecology-4", "nullius-ecology-5", "nullius-ecology-6",
	  "nullius-biochemistry-8", "nullius-biochemistry-9",
	  "nullius-genetic-archive-1", "nullius-genetic-archive-2" })

  if (version >= 10700) then return end
  global.nullius_alignment = false
  init_alignment()
  added_techs({"nullius-nuclear-power-2", "nullius-evolution-1",
      "nullius-evolution-2", "nullius-evolution-3", "nullius-evolution-4"})

  if (version >= 10600) then return end
  if ((global.nullius_mission_status ~= nil) and
      (global.nullius_mission_count[13] == nil)) then
    global.nullius_mission_count[12] = 0
    global.nullius_mission_status[12] = 0
  end
  legacy_recipe_all("nullius-organic-chemistry-6", "plastic-pex")
  legacy_recipe_all("nullius-organic-chemistry-6", "boxed-plastic-pex")
  legacy_recipe_all("nullius-rocket-science-1", "rocket-fuel")
  legacy_recipe_all("nullius-rocket-science-1", "boxed-rocket-fuel")
  legacy_recipe_all("nullius-biochemistry-4", "worm-egg-harvest")
  legacy_recipe_all("nullius-biochemistry-5", "fish-egg-harvest")
  legacy_recipe_all("nullius-biochemistry-6", "arthropod-egg-harvest")
  legacy_recipe_all("nullius-organic-chemistry-2", "graphite-to-carbon-monoxide")
  legacy_recipe_all("nullius-mass-production-4", "boxed-carbon-monoxide")
  added_techs({"nullius-aluminum-working-2", "nullius-fluid-recapture",
      "nullius-carbon-sequestration-4"})
  convert_all_turbines()

  if (version >= 10517) then return end
  find_all_mechas()

  if (version >= 10514) then return end
  legacy_recipe_all("nullius-artificial-intelligence-1", "android-1")
  legacy_recipe_all("nullius-artificial-intelligence-2", "android-2")
  legacy_recipe_all("nullius-traffic-control", "rail-signal")
  legacy_recipe_all("nullius-mass-production-6", "boxed-rail-signal")
  added_techs({"nullius-parallel-computing-1", "nullius-parallel-computing-2",
    "nullius-parallel-computing-3","nullius-parallel-computing-4"})

  if (version >= 10513) then return end
  legacy_recipe_all("nullius-freight-transportation-1", "cargo-wagon-1")
  added_techs({"nullius-mass-production-1", "nullius-ziplining-2",
    "nullius-ziplining-3","nullius-ziplining-4","nullius-ziplining-5"})

  if (version >= 10506) then return end
  added_techs({"nullius-personal-storage-3"})

  if (version >= 10502) then return end
  legacy_recipe_all("nullius-freight-transportation-1", "locomotive-1")
  legacy_recipe_all("nullius-barreling-4", "barrel-pump-2")
  legacy_recipe_all("nullius-cybernetics-4", "leg-augmentation-1")

  if (version >= 10501) then return end
  legacy_recipe_all("nullius-personal-transportation-1", "car-1")

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
