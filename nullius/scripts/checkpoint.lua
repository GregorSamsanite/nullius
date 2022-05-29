local CHK_ITEM = 1
local CHK_FLUID = 2
local CHK_BUILD = 3

local STT_PRODUCE = 1
local STT_CONSUME = 2
local STT_NET = 3

local CAT_TECH = 1
local CAT_BROKEN = 2


local checkpoint_data = {
  ["iron-ingot"] = {{ CHK_ITEM, STT_PRODUCE, 16, {{"nullius-iron-ingot"}} }},
  ["stone-brick"] = {{ CHK_ITEM, STT_PRODUCE, 40, {{"stone-brick"}} }},
  ["plastic"] = {{ CHK_ITEM, STT_PRODUCE, 5, {{"nullius-plastic"}} }},
  ["iron-ore"] = {{ CHK_ITEM, STT_PRODUCE, 400, {{"iron-ore"}} }},
  ["hydrogen"] = {{ CHK_FLUID, STT_PRODUCE, 1000, {{"nullius-hydrogen"}} }},
  ["carbon-dioxide"] = {{ CHK_FLUID, STT_PRODUCE, 1000, {{"nullius-carbon-dioxide"}} }},
  ["furnace"] = {{ CHK_BUILD, STT_NET, 4, {{"nullius-small-furnace-1"}} }},

  ["sandstone"] = {{ CHK_ITEM, STT_PRODUCE, 1000, {{"nullius-sandstone"}} }},
  ["bauxite"] = {{ CHK_ITEM, STT_PRODUCE, 2000, {{"nullius-bauxite"}} }},
  ["water"] = {{ CHK_FLUID, STT_CONSUME, 5000, {{"nullius-water"}} }},
  ["caustic-solution"] = {{ CHK_FLUID, STT_CONSUME, 250, {{"nullius-caustic-solution"}} }},
  ["wind-power"] = {{ CHK_BUILD, STT_NET, 5, {{"nullius-wind-base-1"},{"nullius-wind-build-1"}} }},
  ["energy-storage"] = {{ CHK_BUILD, STT_NET, 1, {{"nullius-surge-electrolyzer-1"}} },
			{ CHK_BUILD, STT_NET, 1, {{"nullius-backup-turbine-1"}} },
			{ CHK_FLUID, STT_CONSUME, 1000, {{"nullius-steam"}} }},
  ["iron-ingot-2"] = {{ CHK_ITEM, STT_CONSUME, 1500, {{"nullius-iron-ingot"}} }},
  ["steel-ingot"] = {{ CHK_ITEM, STT_PRODUCE, 20, {{"nullius-steel-ingot"}} }},
  ["glass"] = {{ CHK_ITEM, STT_PRODUCE, 50, {{"nullius-glass"}} }},
  ["plastic-2"] = {{ CHK_ITEM, STT_CONSUME, 250, {{"nullius-plastic"}} }},
  ["rubber"] = {{ CHK_ITEM, STT_PRODUCE, 20, {{"nullius-rubber"}} }},
  ["aluminum-ingot"] = {{ CHK_ITEM, STT_PRODUCE, 50, {{"nullius-aluminum-ingot"}} }},
  ["polycrystalline-silicon"] = {{ CHK_ITEM, STT_PRODUCE, 20, {{"nullius-polycrystalline-silicon"}} }},
  ["mineral-dust"] = {{ CHK_ITEM, STT_CONSUME, 200, {{"nullius-mineral-dust"}} }},
  ["mass-production"] = {{ CHK_BUILD, STT_NET, 4, {{"nullius-medium-furnace-1"}} },
			{ CHK_BUILD, STT_NET, 6, {{"nullius-medium-assembler-1"}} }},
  ["freight-transportation"] = {{ CHK_ITEM, STT_CONSUME, 3, {{"nullius-hydrogen-canister"}} },
			{ CHK_ITEM, STT_CONSUME, 2, {{"nullius-water-canister"}} }},
  ["lubricant"] = {{ CHK_FLUID, STT_PRODUCE, 250, {{"nullius-lubricant"}} }},

  ["volcanic-gas"] = {{ CHK_FLUID, STT_PRODUCE, 5000, {{"nullius-volcanic-gas"}} }},
  ["lab"] = {{ CHK_BUILD, STT_NET, 3, {{"nullius-lab-1"}} }},
  ["sensor"] = {{ CHK_ITEM, STT_CONSUME, 100, {{"nullius-sensor-1"}} }},
  ["freight-logistics"] = {{ CHK_BUILD, STT_NET, 2, {{"train-stop"}} },
			{ CHK_BUILD, STT_NET, 150, {{"straight-rail"},{"curved-rail",4}} }},
  ["limestone"] = {{ CHK_ITEM, STT_PRODUCE, 500, {{"nullius-limestone"}} }},
  ["optimization"] = {{ CHK_ITEM, STT_PRODUCE, 5, {{"nullius-haste-module-1"}} },
			{ CHK_ITEM, STT_PRODUCE, 5, {{"nullius-efficiency-module-1"}} }},
  ["compressed-nitrogen"] = {{ CHK_FLUID, STT_CONSUME, 1000, {{"nullius-compressed-nitrogen"}} }},
  ["freshwater"] = {{ CHK_FLUID, STT_CONSUME, 2000, {{"nullius-freshwater"}} }},
  ["robotics"] = {{ CHK_ITEM, STT_PRODUCE, 1, {{"nullius-hangar-1"}} },
			{ CHK_ITEM, STT_PRODUCE, 6, {{"nullius-robot-frame-1"}} }},
  ["logistic-robot"] = {{ CHK_ITEM, STT_PRODUCE, 8, {{"nullius-logistic-bot-1"}} },
			{ CHK_BUILD, STT_NET, 2, {{"nullius-small-supply-chest-1"}} }},
  ["logistics"] = {{ CHK_BUILD, STT_NET, 10, {{"turbo-inserter"}} },
			{ CHK_BUILD, STT_NET, 10, {{"fast-underground-belt"}} }},
  ["concrete"] = {{ CHK_ITEM, STT_PRODUCE, 1000, {{"concrete"}} }},
  ["heat-pipe"] = {{ CHK_ITEM, STT_PRODUCE, 50, {{"nullius-heat-pipe-1"}} }},
  ["chemical-engineering"] = {{ CHK_BUILD, STT_NET, 10, {{"nullius-chemical-plant-2"}} }},

  ["argon"] = {{ CHK_FLUID, STT_PRODUCE, 1000, {{"nullius-argon"}} }},
  ["propene"] = {{ CHK_FLUID, STT_CONSUME, 20000, {{"nullius-propene"}} }},
  ["titanium-ingot"] = {{ CHK_ITEM, STT_PRODUCE, 100, {{"nullius-titanium-ingot"}} }},
  ["soda-ash"] = {{ CHK_ITEM, STT_PRODUCE, 1000, {{"nullius-soda-ash"}} }},
  ["monocrystalline-silicon"] = {{ CHK_ITEM, STT_PRODUCE, 20, {{"nullius-monocrystalline-silicon"}} }},
  ["crushed-iron-ore"] = {{ CHK_ITEM, STT_CONSUME, 5000, {{"nullius-crushed-iron-ore"}} }},
  ["aluminum-carbide"] = {{ CHK_ITEM, STT_CONSUME, 5000, {{"nullius-aluminum-carbide"}} }},
  ["exploration"] = {{ CHK_ITEM, STT_CONSUME, 8, {{"nullius-scout-drone-1"}} }},
  ["carbon-fiber"] = {{ CHK_ITEM, STT_PRODUCE, 50, {{"nullius-carbon-fiber"}} }},
  ["fiberglass"] = {{ CHK_ITEM, STT_PRODUCE, 100, {{"nullius-fiberglass"}} }},
  ["battery"] = {{ CHK_ITEM, STT_PRODUCE, 100, {{"nullius-battery-1"}} }},
  ["ceramic-powder"] = {{ CHK_ITEM, STT_CONSUME, 100, {{"nullius-ceramic-powder"}} }},
  ["explosive"] = {{ CHK_ITEM, STT_CONSUME, 25, {{"cliff-explosives"}} }},
  ["logistic-robot-2"] = {{ CHK_ITEM, STT_PRODUCE, 60, {{"nullius-logistic-bot-1"}} },
			{ CHK_BUILD, STT_NET, 6, {{"nullius-charger-2"}} },
			{ CHK_BUILD, STT_NET, 4, {{"nullius-small-demand-chest-1"}} }},
  ["construction-robot"] = {{ CHK_ITEM, STT_PRODUCE, 25, {{"nullius-construction-bot-1"}} },
			{ CHK_BUILD, STT_NET, 4, {{"nullius-relay-2"}} }},
  ["processor"] = {{ CHK_ITEM, STT_PRODUCE, 100, {{"nullius-processor-1"}} }},
  ["large-tank"] = {{ CHK_BUILD, STT_NET, 4, {{"nullius-large-tank-2"}} }},
  ["substation"] = {{ CHK_BUILD, STT_NET, 4, {{"nullius-substation-2"}} }},
  ["logistics-2"] = {{ CHK_BUILD, STT_NET, 40, {{"stack-inserter"}} },
			{ CHK_BUILD, STT_NET, 40, {{"express-underground-belt"}} }},
  ["lab-2"] = {{ CHK_BUILD, STT_NET, 10, {{"nullius-lab-2"}} }},
  ["productivity-module"] = {{ CHK_ITEM, STT_PRODUCE, 20, {{"nullius-productivity-module-1"}} }},
  ["truck"] = {{ CHK_BUILD, STT_NET, 1, {{"nullius-truck-1"}} }},
  ["stirling-engine"] = {{ CHK_BUILD, STT_NET, 20, {{"nullius-stirling-engine-2"}} }},
  ["large-beacon"] = {{ CHK_BUILD, STT_NET, 8, {{"nullius-large-beacon-1"}} }},
  ["large-furnace"] = {{ CHK_ITEM, STT_PRODUCE, 10, {{"nullius-box-iron-ingot"}} }},
  ["benzene"] = {{ CHK_FLUID, STT_CONSUME, 20000, {{"nullius-benzene"}} }},

  ["large-miner"] = {{ CHK_BUILD, STT_NET, 50, {{"nullius-large-miner-1"}} }},
  ["filter"] = {{ CHK_ITEM, STT_PRODUCE, 100,
			{{"nullius-filter-2"}, {"nullius-box-filter-2", 5}} }},
  ["pumping"] = {{ CHK_BUILD, STT_NET, 40, {{"nullius-pump-2"}} }},
  ["logistics-3"] = {{ CHK_BUILD, STT_NET, 10, {{"ultimate-splitter"}} }},
  ["automation"] = {{ CHK_BUILD, STT_NET, 20, {{"nullius-large-assembler-2"}} }},
  ["mining"] = {{ CHK_ITEM, STT_CONSUME, 250000, {{"iron-ore"},{"nullius-box-iron-ore",5}} },
			{ CHK_ITEM, STT_CONSUME, 200000, {{"nullius-sandstone"},{"nullius-box-sandstone",5}} },
			{ CHK_ITEM, STT_CONSUME, 150000, {{"nullius-bauxite"},{"nullius-box-bauxite",5}} },
			{ CHK_ITEM, STT_CONSUME, 100000, {{"nullius-limestone"},{"nullius-box-limestone",5}} }},
  ["android"] = {{ CHK_BUILD, STT_NET, 1, {{"character"}} }},
  ["battery-2"] = {{ CHK_ITEM, STT_PRODUCE, 200, {{"nullius-battery-2"},{"nullius-box-battery-2",5}} }},
  ["calcium"] = {{ CHK_ITEM, STT_PRODUCE, 250, {{"nullius-calcium"},{"nullius-box-calcium",5}} }},
  ["helium"] = {{ CHK_FLUID, STT_PRODUCE, 2500, {{"nullius-helium"},{"nullius-compressed-helium",2.5}} }},
  ["thermal-tank"] = {{ CHK_ITEM, STT_PRODUCE, 10, {{"nullius-thermal-tank-3"}} }},
  ["tritium"] = {{ CHK_FLUID, STT_PRODUCE, 40, {{"nullius-tritium"}} }},
  ["processor-2"] = {{ CHK_ITEM, STT_CONSUME, 1000, {{"nullius-processor-2"},{"nullius-box-processor-2",5}} }},
  ["demolitions"] = {{ CHK_ITEM, STT_CONSUME, 1, {{"nullius-missile-2"}} }},
  ["rocket-fuel"] = {{ CHK_ITEM, STT_CONSUME, 5, {{"rocket-fuel"}} }},
  ["mecha"] = {{ CHK_BUILD, STT_NET, 1, {{"nullius-mecha"}} }},
  ["excavation-drone"] = {{ CHK_ITEM, STT_CONSUME, 1, {{"nullius-excavation-drone"}} }},

  ["cybernetics"] = {{ CHK_ITEM, STT_PRODUCE, 1, {{"nullius-chassis-4"}} }},
  ["uranium-ore"] = {{ CHK_ITEM, STT_CONSUME, 1, {{"nullius-guide-drone-uranium-1"}} }},
  ["copper-ore"] = {{ CHK_ITEM, STT_CONSUME, 1, {{"nullius-guide-drone-copper-1"}} }},
  ["breeder-cell"] = {{ CHK_ITEM, STT_CONSUME, 25, {{"nullius-spent-breeder-cell"}} }},
  ["enriched-uranium"] = {{ CHK_ITEM, STT_PRODUCE, 250, {{"nullius-enriched-uranium"}} }},
  ["antimatter"] = {{ CHK_ITEM, STT_CONSUME, 1, {{"nullius-antimatter"}} }},
  ["copper-ingot"] = {{ CHK_ITEM, STT_PRODUCE, 1000,
			{{"nullius-copper-ingot"},{"nullius-box-copper-ingot",5}} }},
  ["processor-3"] = {{ CHK_ITEM, STT_CONSUME, 2000,
			{{"nullius-processor-3"},{"nullius-box-processor-3",5}} }},
  ["wood"] = {{ CHK_ITEM, STT_CONSUME, 200000, {{"nullius-wood"},{"nullius-box-wood",5}} }},
  ["logistic-robot-3"] = {{ CHK_ITEM, STT_PRODUCE, 1000,
			{{"nullius-logistic-bot-4"},{"nullius-box-logistic-bot-4",5}} }},
  ["android-2"] = {{ CHK_BUILD, STT_NET, 1, {{"nullius-android-2"}} }},
  ["asteroid-mining"] = {{ CHK_ITEM, STT_CONSUME, 20, {{"nullius-asteroid-miner-2"}} }},
  ["probe"] = {{ CHK_ITEM, STT_CONSUME, 1, {{"nullius-probe"}} }},
  ["solar-panel"] = {{ CHK_BUILD, STT_NET, 1000, {{"nullius-solar-panel-3"}} }},
  ["grid-battery"] = {{ CHK_BUILD, STT_NET, 500, {{"nullius-grid-battery-3"}} }},
  ["cybernetics-2"] = {{ CHK_ITEM, STT_PRODUCE, 1, {{"nullius-chassis-6"}} }}
}


local broken_data = {
  ["air-filter"] = 3,
  ["hydro-plant"] = 3,
  ["electrolyzer"] = 1,
  ["chemical-plant"] = 7,
  ["foundry"] = 2,
  ["assembler"] = 3,
  ["pylon"] = 18,
  ["solar-panel"] = 15,
  ["grid-battery"] = 10,
  ["sensor-node"] = 2
}

function init_broken()
  global.nullius_broken_status = {}
  for suffix, count in pairs(broken_data) do
    global.nullius_broken_status["nullius-broken-" .. suffix] = count
  end
end

	
function reset_checkpoints(force)
  local checkset = { }
  local checknum = 0
  for suffix, check in pairs(checkpoint_data) do
    local techname = "nullius-checkpoint-" .. suffix
    local tech = force.technologies[techname]
    if (tech.enabled and (not tech.researched)) then
	  local ok = true
      for _, prereq in pairs(tech.prerequisites) do
	    if (not prereq.researched) then
		  ok = false
		end
	  end
	  if (ok) then
		checknum = checknum + 1
		checkset[checknum] = {name=techname, category=CAT_TECH, reqs=check}
	  end
	end
  end

  if (global.nullius_broken_status ~= nil) then
    for suffix, count in pairs(broken_data) do
      local broken_name = "nullius-broken-" .. suffix
	  if (not broken_disabled(broken_name)) then
	    checknum = checknum + 1
		checkset[checknum] = {name=broken_name, category=CAT_BROKEN,
		    reqs={{ CHK_ITEM, STT_CONSUME, count, {{ broken_name }} }}}
	  end
	end
  end

  global.checkpoint_list[force.index] = checkset
  global.checkpoint_number[force.index] = checknum
end

function init_force_checkpoints(force)
  if (not force.research_enabled) then return end
  for _, tech in pairs(force.technologies) do
    if (tech.enabled and tech.researched) then
      for _, prereq in pairs(tech.prerequisites) do
	    if (prereq.enabled and (not prereq.researched) and
		    (string.sub(prereq.name, 1, 19) == "nullius-checkpoint-")) then
		  prereq.researched = true
		end
	  end
	end
  end
  reset_checkpoints(force)
end

function update_checkpoint_list(techname)
  if (global.checkpoint_prereqs == nil) then return end
  if (global.checkpoint_prereqs[techname] == true) then
    for _, force in pairs(game.forces) do
	  if (force.research_enabled) then
        reset_checkpoints(force)
	  end
    end	  
  end
end

function init_checkpoint_prereqs()
  local prereqs = { }
  for suffix, check in pairs(checkpoint_data) do
    local techname = "nullius-checkpoint-" .. suffix
    local tech = game.technology_prototypes[techname]
    for _, prereq in pairs(tech.prerequisites) do
      prereqs[prereq.name] = true
	end
  end

  global.checkpoint_prereqs = prereqs
  global.checkpoint_list = { }
  global.checkpoint_number = { }
end


local function test_checkpoint_req(force, req)
  local goal = req[3]
  if (goal < 1) then return 1 end

  local ctyp = req[1]
  local stats = nil
  if (ctyp == CHK_ITEM) then
    stats = force.item_production_statistics
  elseif (ctyp == CHK_FLUID) then
    stats = force.fluid_production_statistics
  elseif (ctyp == CHK_BUILD) then
    stats = force.entity_build_count_statistics 
  else
    return 0
  end

  local calc = req[2]
  local count = 0
  for _,item in pairs(req[4]) do
    local itemname = item[1]
	local value = 0
    if (calc == STT_PRODUCE) then
      value = stats.get_input_count(itemname)
    elseif (calc == STT_CONSUME) then
      value = stats.get_output_count(itemname)
    elseif (calc == STT_NET) then
      value = stats.get_input_count(itemname) - stats.get_output_count(itemname)
    end
	if (item[2] ~= nil) then value = (value * item[2]) end
	count = count + value
  end
  return math.min(math.max((count / goal), 0), 1)
end

local function update_checkpoint_force(force, tick)
  local num = global.checkpoint_number[force.index]
  if ((num == nil) or (num < 1)) then return end

  local ind = (tick % num) + 1
  local lst = global.checkpoint_list[force.index]
  local check = lst[ind]
  local tech = nil
  if (check.category == CAT_BROKEN) then
    if (broken_disabled(check.name)) then
      reset_checkpoints(force)
	  return	
	end
  else
    tech = force.technologies[check.name]
    if (tech == nil) then return end
    if ((not tech.enabled) or tech.researched) then
      reset_checkpoints(force)
	  return
    end
  end

  local progress = 0
  local count = 0
  for _, req in pairs(check.reqs) do
    progress = progress + test_checkpoint_req(force, req)
	count = count + 1
  end
  
  if ((progress >= count) or (count < 1)) then
    if (tech ~= nil) then
	  if ((force.current_research == nil) or
          (force.current_research.name ~= tech.name)) then
	    force.print({"technology-description.nullius-complete-checkpoint",
		    "[technology="..tech.name.."]"}, {1, 0.75, 0.4})
	  end
	  if (force.research_queue_enabled and (force.current_research ~= nil) and
          (force.current_research.name ~= tech.name)) then
		-- When checkpoint is in research queue, researching item
		-- clears anything else in queue that has it as a dependency.
		-- Try to restore the original queue afterwards.
		local saved_queue = { }
		local saved_count = 1
		local found = nil
	    for ind,q in pairs(force.research_queue) do
		  if (ind > 1) then
		    if (q.name == tech.name) then
			  found = saved_count
			else
			  saved_count = saved_count + 1
			  saved_queue[saved_count] = q
			end
		  else
		    saved_queue[1] = q
		  end
		end
		tech.researched = true
		if ((found ~= nil) and (found < saved_count)) then
		  force.research_queue = saved_queue
		end
	  else
        tech.researched = true
	  end
	else
	  broken_finished(check.name)
	end
  elseif (tech ~= nil) then
    progress = (progress / count)
    if ((force.current_research ~= nil) and
        (force.current_research.name == tech.name)) then
	  force.research_progress = progress
    else
      force.set_saved_technology_progress(tech, progress)
    end
  end
end

function update_checkpoints()
  if ((game.tick % 13) == 5) then
    local tick = math.floor(game.tick / 13)
    for _, force in pairs(game.forces) do
	  if (force.research_enabled) then
	    update_checkpoint_force(force, tick)
	  end
	end
  end
end
