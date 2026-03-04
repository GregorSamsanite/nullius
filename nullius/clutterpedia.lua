local clutterpedia = {}
clutterpedia["nullius-small-chest-1"] =         {name = "wooden-chest",                     tech = "nullius-storage-1"}
clutterpedia["nullius-small-chest-2"] =         {name = "iron-chest",                       tech = "nullius-storage-2"}
clutterpedia["nullius-small-chest-3"] =         {name = "steel-chest",                      tech = "nullius-storage-3"}
clutterpedia["nullius-small-storage-chest-2"] = {name = "storage-chest",                    tech = "nullius-distribution-4"}
clutterpedia["nullius-small-supply-chest-2"] =  {name = "passive-provider-chest",           tech = "nullius-distribution-4"}
clutterpedia["nullius-small-demand-chest-2"] =  {name = "requester-chest",                  tech = "nullius-distribution-4"}
clutterpedia["nullius-small-buffer-chest-2"] =  {name = "buffer-chest",                     tech = "nullius-distribution-4"}
clutterpedia["nullius-small-dispatch-chest-2"] ={name = "active-provider-chest",            tech = "nullius-distribution-4"}
clutterpedia["nullius-inserter-1"] =            {name = "inserter",                         tech = "nullius-actuation-1"}
clutterpedia["nullius-inserter-2"] =            {name = "bob-turbo-inserter",               tech = "nullius-actuation-2"}
clutterpedia["nullius-inserter-3"] =            {name = "bulk-inserter",                    tech = "nullius-actuation-3"}
clutterpedia["nullius-inserter-4"] =            {name = "bob-express-bulk-inserter",        tech = "nullius-actuation-4"}
clutterpedia["nullius-conveyor-belt-1"] =       {name = "transport-belt",                   tech = "nullius-logistics-1"}
clutterpedia["nullius-conveyor-belt-2"] =       {name = "fast-transport-belt",              tech = "nullius-logistics-2"}
clutterpedia["nullius-conveyor-belt-3"] =       {name = "express-transport-belt",           tech = "nullius-logistics-3"}
clutterpedia["nullius-conveyor-belt-4"] =       {name = "bob-ultimate-transport-belt",      tech = "nullius-logistics-4"}
clutterpedia["nullius-underground-belt-1"] =    {name = "underground-belt",                 tech = "nullius-logistics-1"}
clutterpedia["nullius-underground-belt-2"] =    {name = "fast-underground-belt",            tech = "nullius-logistics-2"}
clutterpedia["nullius-underground-belt-3"] =    {name = "express-underground-belt",         tech = "nullius-logistics-3"}
clutterpedia["nullius-underground-belt-4"] =    {name = "bob-ultimate-underground-belt",    tech = "nullius-logistics-4"}
clutterpedia["nullius-splitter-1"] =            {name = "splitter",                         tech = "nullius-mechanical-separation"}
clutterpedia["nullius-splitter-2"] =            {name = "fast-splitter",                    tech = "nullius-logistics-2"}
clutterpedia["nullius-splitter-3"] =            {name = "express-splitter",                 tech = "nullius-logistics-3"}
clutterpedia["nullius-splitter-4"] =            {name = "bob-ultimate-splitter",            tech = "nullius-logistics-4"}
clutterpedia["nullius-power-pole-1"] =          {name = "small-electric-pole",              tech = "nullius-energy-distribution-1"}
clutterpedia["nullius-power-pole-2"] =          {name = "medium-electric-pole",             tech = "nullius-energy-distribution-2"}
clutterpedia["nullius-pylon-1"] =               {name = "big-electric-pole",                tech = "nullius-energy-distribution-2"}
clutterpedia["nullius-substation-1"] =          {name = "substation",                       tech = "nullius-energy-distribution-3"}
clutterpedia["nullius-logic-circuit"] =         {name = "decider-combinator",               tech = "nullius-electronics-1"}
clutterpedia["nullius-arithmetic-circuit"] =    {name = "arithmetic-combinator",            tech = "nullius-computation"}
clutterpedia["nullius-memory-circuit"] =        {name = "constant-combinator",              tech = "nullius-computation"}
clutterpedia["nullius-display-panel"] =         {name = "display-panel",                    tech = "nullius-computation"}
clutterpedia["nullius-selector-circuit"] =      {name = "selector-combinator",              tech = "nullius-electronics-2"}
clutterpedia["nullius-power-switch"] =          {name = "power-switch",                     tech = "nullius-energy-distribution-2"}
clutterpedia["nullius-antenna"] =               {name = "programmable-speaker",             tech = "nullius-signal-processing"}
clutterpedia["nullius-rail"] =                  {name = "rail",                             tech = "nullius-freight-transportation-1"}
clutterpedia["nullius-train-stop"] =            {name = "train-stop",                       tech = "nullius-freight-logistics"}
clutterpedia["nullius-rail-signal"] =           {name = "rail-signal",                      tech = "nullius-traffic-control"}
clutterpedia["nullius-chain-signal"] =          {name = "rail-chain-signal",                tech = "nullius-traffic-control"}
clutterpedia["nullius-iron-pipe"] =             {name = "pipe",                             tech = "nullius-plumbing-1"}
clutterpedia["nullius-underground-pipe-1"] =    {name = "pipe-to-ground",                   tech = "nullius-plumbing-2"}
clutterpedia["nullius-steel-pipe"] =            {name = "nullius-pipe-2",                   tech = "nullius-plumbing-3"} --- not vanilla !!
clutterpedia["nullius-medium-tank-1"] =         {name = "storage-tank",                     tech = "nullius-plumbing-1"}
clutterpedia["nullius-pump-3"] =                {name = "pump",                             tech = "nullius-pumping-3"}
clutterpedia["nullius-sensor-node-1"] =         {name = "radar",                            tech = "nullius-sensors-2"}
clutterpedia["nullius-repair-pack"] =           {name = "repair-pack",                      tech = "nullius-maintenance"}
clutterpedia["nullius-barrel-1"] =              {name = "barrel",                           tech = "nullius-barreling-1"}
clutterpedia["nullius-rocket-fuel"] =           {name = "rocket-fuel",                      tech = "nullius-rocket-science-1"}
clutterpedia["nullius-insulated-wire-1"] =      {name = "copper-cable",                     tech = "nullius-insulation-1"}
clutterpedia["nullius-stone-block"] =           {name = "stone-brick",                      tech = "nullius-masonry-2"}
clutterpedia["nullius-concrete-1"] =            {name = "concrete",                         tech = "nullius-concrete-1"}
clutterpedia["nullius-reinforced-concrete"] =   {name = "refined-concrete",                 tech = "nullius-concrete-2"}
clutterpedia["nullius-wall"] =                  {name = "stone-wall",                       tech = "nullius-architecture-1"}
clutterpedia["nullius-gate"] =                  {name = "gate",                             tech = "nullius-architecture-1"}
clutterpedia["nullius-hazard-concrete"] =       {name = "refined-hazard-concrete",          tech = "nullius-aesthetics-2"}
clutterpedia["nullius-explosive"] =             {name = "cliff-explosives",                 tech = "nullius-explosives-2"}
clutterpedia["nullius-lamp-1a"] =               {name = "small-lamp",                       tech = "nullius-illumination-1"}
clutterpedia["nullius-stone-recovery"] =        {name = "stone",                            tech = "nullius-waste-reclamation"}
clutterpedia["nullius-methanol-canister-1"] =   {name = "processed-fuel",                   tech = "nullius-hydrocarbon-combustion-2", main_product = true} -- not vanilla, comes from aai-industry
clutterpedia["nullius-landing-pad"] =           {name = "cargo-landing-pad",                tech = "nullius-rocket-science-2"}

clutterpedia["nullius-android-1"] =             {name = "character",                        tech = "nullius-artificial-intelligence-1"} -- don't forget to also rename the item nullius-android-1 in item/drone.lua AND the item migration ! And in script/body.lua !!


-- Attempt at fluids renamings
clutterpedia["nullius-desalination"] =                      {name = "nullius-water",                tech = "nullius-desalination", main_product = true}
--clutterpedia["nullius-seawater-filtration"] =               {name = "nullius-saline",               tech = "nullius-water-filtration-1"}
--clutterpedia["nullius-hydrogen-chloride-neutralization"] =  {name = "nullius-brine",                tech = "nullius-inorganic-chemistry-1"}
--clutterpedia["nullius-air-separation-1"] =                  {name = "nullius-nitrogen",             tech = "nullius-air-separation-1", main_product = true, locale = true}
--clutterpedia["nullius-residual-separation"] =               {name = "nullius-argon",                tech = "nullius-air-separation-2", main_product = true, locale = true}
clutterpedia["nullius-carbon-dioxide-to-monoxide"] =        {name = "nullius-carbon-monoxide",      tech = "nullius-carbon-sequestration-2"}
clutterpedia["nullius-carbon-dioxide-to-methane"] =         {name = "nullius-methane",              tech = "nullius-carbon-sequestration-1", locale = true}
clutterpedia["nullius-methane-to-ethylene"] =               {name = "nullius-ethylene",             tech = "nullius-organic-chemistry-1", locale = true}

--clutterpedia["nullius-hydrogen-chloride-electrolysis"] =    {name = "nullius-chlorine",             tech = "nullius-electrolysis-3",  main_product = true, locale = true}
clutterpedia["nullius-salt-electrolysis"] =                 {name = "nullius-sodium",               tech = "nullius-sodium-processing"}
--clutterpedia["nullius-brine-electrolysis"] =                {name = "nullius-sodium-hydroxide",     tech = "nullius-electrolysis-2",  main_product = true, locale = true}
--clutterpedia["nullius-trace-separation"] =                  {name = "nullius-helium",               tech = "nullius-air-separation-3",  main_product = true, locale = true}

--clutterpedia["nullius-volcanic-separation-1"] =             {name = "nullius-sulfur-dioxide",       tech = "nullius-sulfur-processing-1",  main_product = true}
--clutterpedia["nullius-volcanic-separation-2"] =             {name = "nullius-acid-boric",           tech = "nullius-sulfur-processing-2",  main_product = true}
--clutterpedia["nullius-volcanic-separation-3"] =             {name = "nullius-trace-gas",            tech = "nullius-volcanism-2",  main_product = true}

--clutterpedia["nullius-air-separation-2"] =                  {name = "nullius-residual-gas",         tech = "nullius-air-separation-2",  main_product = true, locale = true}
clutterpedia["nullius-calcium-chloride-1"] =                {name = "nullius-calcium-chloride-solution",tech = "nullius-limestone-processing-2"}
--clutterpedia["nullius-hydrogen-combustion-1"] =             {name = "nullius-steam",                tech = "nullius-energy-storage-1", main_product = true}
--clutterpedia["nullius-sand-disposal"] =                     {name = "nullius-wastewater",           tech = "nullius-waste-management"}
--clutterpedia["nullius-wastewater-filtration"] =             {name = "nullius-sludge",               tech = "nullius-water-filtration-3", main_product = true}

--clutterpedia["nullius-water-electrolysis"] =                {name = "nullius-hydrogen",             tech = "nullius-electrolysis-2", main_product = true, locale = true}
--clutterpedia["nullius-oxygen-separation"] =                 {name = "nullius-oxygen",               tech = "nullius-air-separation-5", main_product = true, locale = true}

--clutterpedia["nullius-dust-disposal-1"] =                   {name = "nullius-carbon-dioxide",       tech = "nullius-waste-management", main_product = true} -- that would change the main product from sludge!!
clutterpedia["nullius-air-filtration"] =                    {name = "nullius-air",                  tech = "nullius-air-filtration-1"}
--clutterpedia["nullius-salination"] =                        {name = "nullius-seawater",             tech = "nullius-sodium-processing", main_product = true} -- seawater is a fixed recipe for intakes !


---------------------------------------------------- Mods ----------------------------------------------------
if mods["elevated-rails"] then
    clutterpedia["nullius-rail-support"] =                      {name = "rail-support",                 tech = "nullius-elevated-rails"}
    clutterpedia["nullius-rail-ramp"] =                         {name = "rail-ramp",                    tech = "nullius-elevated-rails"}
end
if mods["LogisticTrainNetwork"] then
    clutterpedia["nullius-logistic-train-stop"] =               {name = "logistic-train-stop",          tech = "nullius-logistic-train-network"}
end
if mods["LTN_Combinator_Modernized"] then
    clutterpedia["nullius-ltn-combinator"] =                    {name = "ltn-combinator",               tech = {"nullius-logistic-train-network","nullius-traffic-control"}}
end
if mods["aai-signal-transmission"] then
    clutterpedia["nullius-aai-signal-sender"] =                 {name = "aai-signal-sender",            tech = "nullius-aai-signal-transmission"}
    clutterpedia["nullius-aai-signal-receiver"] =               {name = "aai-signal-receiver",          tech = "nullius-aai-signal-transmission"}
end
if mods["Factorissimo2"] or mods["factorissimo-2-notnotmelon"] then
    clutterpedia["nullius-factory-1"] =                         {name = "factory-1",                    tech = "factory-architecture-t1"}
    clutterpedia["nullius-factory-2"] =                         {name = "factory-2",                    tech = "factory-architecture-t2"}
    clutterpedia["nullius-factory-3"] =                         {name = "factory-3",                    tech = "factory-architecture-t3"}
    if mods["factorissimo-2-notnotmelon"] then
    clutterpedia["nullius-factory-circuit-connector"] =         {name = "factory-circuit-connector",    tech = "factory-connection-type-circuit"}
    else
    clutterpedia["nullius-factory-requester-chest"] =           {name = "factory-requester-chest",      tech = "factory-requester-chest"}
    clutterpedia["nullius-factory-input-pipe"] =                {name = "factory-input-pipe",           tech = "factory-connection-type-fluid"}
    clutterpedia["nullius-factory-output-pipe"] =               {name = "factory-output-pipe",          tech = "factory-connection-type-fluid"}
    clutterpedia["nullius-factory-circuit-input"] =             {name = "factory-circuit-input",        tech = "factory-connection-type-circuit"}
    clutterpedia["nullius-factory-circuit-output"] =            {name = "factory-circuit-output",       tech = "factory-connection-type-circuit"}
    end
end
if mods["aai-loaders"] then
    clutterpedia["nullius-loader-1"] =                          {name = "aai-basic-loader",             tech = "nullius-loader-1"}
    clutterpedia["nullius-loader-2"] =                          {name = "aai-loader",                   tech = "nullius-loader-2"}
    clutterpedia["nullius-loader-3"] =                          {name = "aai-fast-loader",              tech = "nullius-loader-3"}
    clutterpedia["nullius-loader-4"] =                          {name = "aai-express-loader",           tech = "nullius-loader-4"}
    clutterpedia["nullius-loader-5"] =                          {name = "aai-ultimate-loader",          tech = "nullius-loader-5"}
end
if mods["train-pubsub"] then
    clutterpedia["nullius-train-publisher"] =                   {name = "train-publisher",              tech = "train-manager"}
    clutterpedia["nullius-subscriber-train-stop"] =             {name = "subscriber-train-stop",        tech = "train-manager"}
    clutterpedia["nullius-publisher-train-stop"] =              {name = "publisher-train-stop",         tech = "train-manager"}
    clutterpedia["nullius-train-config"] =                      {name = "train-config",                 tech = "train-manager"}
end
if mods["Teleporters"] then
    clutterpedia["nullius-teleporter"] =                        {name = "teleporter",                   tech = "teleporter"}
end
if mods["jetpack"] then
    clutterpedia["nullius-jetpack-1"] =                         {name = "jetpack-1",                    tech = "nullius-jetpack-1"}
    clutterpedia["nullius-jetpack-2"] =                         {name = "jetpack-2",                    tech = "nullius-jetpack-2"}
    clutterpedia["nullius-jetpack-3"] =                         {name = "jetpack-3",                    tech = "nullius-jetpack-3"}
    clutterpedia["nullius-jetpack-4"] =                         {name = "jetpack-4",                    tech = "nullius-jetpack-4"}
end
if mods["underground-pipe-pack"] then
    clutterpedia["nullius-surface-two-way-junction-1"] =        {name = "one-to-one-forward-t2-pipe",       tech = "advanced-underground-piping"}
    clutterpedia["nullius-surface-three-way-junction-1"] =      {name = "one-to-two-perpendicular-t2-pipe", tech = "advanced-underground-piping"}
    clutterpedia["nullius-surface-four-way-junction-1"] =       {name = "one-to-three-forward-t2-pipe",     tech = "advanced-underground-piping"}
    clutterpedia["nullius-underground-straight-junction-1"] =   {name = "underground-i-t2-pipe",            tech = "advanced-underground-piping"}
    clutterpedia["nullius-underground-elbow-junction-1"] =      {name = "underground-L-t2-pipe",            tech = "advanced-underground-piping"}
    clutterpedia["nullius-underground-three-way-junction-1"] =  {name = "underground-t-t2-pipe",            tech = "advanced-underground-piping"}
    clutterpedia["nullius-adjustable-relief-valve"] =           {name = "80-overflow-valve",                tech = "advanced-underground-piping"}
    clutterpedia["nullius-adjustable-top-up-valve"] =           {name = "80-top-up-valve",                  tech = "advanced-underground-piping"}
    clutterpedia["nullius-surface-two-way-junction-2"] =        {name = "one-to-one-forward-t3-pipe",       tech = "advanced-underground-piping-t2"}
    clutterpedia["nullius-surface-three-way-junction-2"] =      {name = "one-to-two-perpendicular-t3-pipe", tech = "advanced-underground-piping-t2"}
    clutterpedia["nullius-surface-four-way-junction-2"] =       {name = "one-to-three-forward-t3-pipe",     tech = "advanced-underground-piping-t2"}
    clutterpedia["nullius-underground-straight-junction-2"] =   {name = "underground-i-t3-pipe",            tech = "advanced-underground-piping-t2"}
    clutterpedia["nullius-underground-elbow-junction-2"] =      {name = "underground-L-t3-pipe",            tech = "advanced-underground-piping-t2"}
    clutterpedia["nullius-underground-three-way-junction-2"] =  {name = "underground-t-t3-pipe",            tech = "advanced-underground-piping-t2"}
    clutterpedia["nullius-surface-two-way-junction-3"] =        {name = "one-to-one-forward-pipe",          tech = "advanced-underground-piping-t3"}
    clutterpedia["nullius-surface-three-way-junction-3"] =      {name = "one-to-two-perpendicular-pipe",    tech = "advanced-underground-piping-t3"}
    clutterpedia["nullius-surface-four-way-junction-3"] =       {name = "one-to-three-forward-pipe",        tech = "advanced-underground-piping-t3"}
    clutterpedia["nullius-surface-five-way-junction-3"] =       {name = "one-to-four-pipe",                 tech = "advanced-underground-piping-t3"}
    clutterpedia["nullius-underground-straight-junction-3"] =   {name = "underground-i-pipe",               tech = "advanced-underground-piping-t3"}
    clutterpedia["nullius-underground-elbow-junction-3"] =      {name = "underground-L-pipe",               tech = "advanced-underground-piping-t3"}
    clutterpedia["nullius-underground-three-way-junction-3"] =  {name = "underground-t-pipe",               tech = "advanced-underground-piping-t3"}
    clutterpedia["nullius-underground-four-way-junction-3"] =   {name = "underground-cross-pipe",           tech = "advanced-underground-piping-t3"}
    clutterpedia["nullius-underground-pump"] =                  {name = "underground-mini-pump",            tech = "advanced-underground-piping-t3"}
end
if mods["Warehousing"] then
    clutterpedia["nullius-storehouse"] =                        {name = "storehouse-basic",                 tech = "nullius-warehousing-1"}
    clutterpedia["nullius-warehouse"] =                         {name = "warehouse-basic",                  tech = "nullius-warehousing-2"}
    clutterpedia["nullius-warehouse-passive-provider"] =        {name = "warehouse-passive-provider",       tech = "nullius-warehousing-3"}
    clutterpedia["nullius-warehouse-storage"] =                 {name = "warehouse-storage",                tech = "nullius-warehousing-3"}
    clutterpedia["nullius-warehouse-requester"] =               {name = "warehouse-requester",              tech = "nullius-warehousing-3"}
    clutterpedia["nullius-storehouse-passive-provider"] =       {name = "storehouse-passive-provider",      tech = "nullius-warehousing-3"}
    clutterpedia["nullius-storehouse-storage"] =                {name = "storehouse-storage",               tech = "nullius-warehousing-3"}
    clutterpedia["nullius-storehouse-requester"] =              {name = "storehouse-requester",             tech = "nullius-warehousing-3"}
    clutterpedia["nullius-warehouse-buffer"] =                  {name = "warehouse-buffer",                 tech = "nullius-warehousing-4"}
    clutterpedia["nullius-warehouse-active-provider"] =         {name = "warehouse-active-provider",        tech = "nullius-warehousing-4"}
    clutterpedia["nullius-storehouse-buffer"] =                 {name = "storehouse-buffer",                tech = "nullius-warehousing-4"}
    clutterpedia["nullius-storehouse-active-provider"] =        {name = "storehouse-active-provider",       tech = "nullius-warehousing-4"}
end
if mods["botReplacer"] then
    clutterpedia["nullius-bot-upgrade-chest"] =                 {name = "logistic-chest-botUpgrader",       tech = "nullius-logistic-robot-2"}
end
if mods["railway-motor-car"] then
    clutterpedia["nullius-railway-motorcar-1"] =                {name = "railway-motor-car-base",           tech = "nullius-personal-transportation-1"}
    clutterpedia["nullius-railway-motorcar-2"] =                {name = "railway-motor-car-nuclear",        tech = "nullius-personal-transportation-4"}
end
if mods["Inventory Sensor"] then
    clutterpedia["nullius-item-sensor"] =                       {name = "item-sensor",                      tech = "nullius-sensors-2"}
end
if mods["UPSFriendlyNixieTubeDisplay"] then
    clutterpedia["nullius-classic-nixie-tube"] =                {name = "classic-nixie-tube",               tech = "nullius-reinforced-nixie-tubes-basic"}
    clutterpedia["nullius-reinforced-nixie-tube"] =             {name = "reinforced-nixie-tube",            tech = "nullius-reinforced-nixie-tubes-reinforced"}
    clutterpedia["nullius-small-reinforced-nixie-tube"] =       {name = "small-reinforced-nixie-tube",      tech = "nullius-reinforced-nixie-tubes-reinforced"}
end
if mods["holographic_signs"] then
    clutterpedia["nullius-holographic-sign"] =                  {name = "hs_holo_sign",                     tech = "nullius-holographics"}
end
if mods["FluidMustFlow"] then
    clutterpedia["nullius-duct-small"] =                        {name = "duct-small",                       tech = "nullius-ducts"}
    clutterpedia["nullius-duct-curve"] =                        {name = "duct-curve",                       tech = "nullius-ducts"}
    clutterpedia["nullius-duct-t-junction"] =                   {name = "duct-t-junction",                  tech = "nullius-ducts"}
    clutterpedia["nullius-duct-cross"] =                        {name = "duct-cross",                       tech = "nullius-ducts"}
    clutterpedia["nullius-duct-exhaust"] =                      {name = "duct-exhaust",                     tech = "nullius-ducts"}
    clutterpedia["nullius-duct-intake"] =                       {name = "duct-intake",                      tech = "nullius-ducts"}
    clutterpedia["nullius-duct-underground"] =                  {name = "duct-underground",                 tech = "nullius-ducts"}
    clutterpedia["nullius-non-return-duct"] =                   {name = "non-return-duct",                  tech = "nullius-ducts"}
    if not settings.startup["fmf-enable-duct-auto-join"].value then
    clutterpedia["nullius-duct"] =                              {name = "duct",                             tech = "nullius-ducts"}
    clutterpedia["nullius-duct-long"] =                         {name = "duct-long",                        tech = "nullius-ducts"}
    end
end
if mods["RenaiTransportation"] then
    if settings.startup["RTThrowersSetting"].value then
    clutterpedia["nullius-open-chest"] =                        {name = "OpenContainer",                    tech = "nullius-logistic-ballistics-1"}
    clutterpedia["nullius-closed-chest"] =                      {name = "wooden-chest",                     tech = "nullius-logistic-ballistics-1"}
    
    clutterpedia["nullius-thrower-1"] =                         {name = "RTThrower-inserter-Item",          tech = "nullius-logistic-ballistics-1"}
    clutterpedia["nullius-thrower-2"] =                         {name = "RTThrower-bob-turbo-inserter-Item",tech = "nullius-logistic-ballistics-5"}
    clutterpedia["nullius-thrower-3"] =                         {name = "RTThrower-bulk-inserter-Item",     tech = "nullius-logistic-ballistics-7"}
    clutterpedia["nullius-thrower-4"] =                         {name = "RTThrower-bob-express-bulk-inserter-Item",tech = "nullius-logistic-ballistics-8"}
    
    clutterpedia["nullius-player-thrower"] =                    {name = "PlayerLauncher",                   tech = "nullius-logistic-ballistics-2"}
    clutterpedia["nullius-hatch"] =                             {name = "HatchRT",                          tech = "nullius-logistic-ballistics-3"}
    clutterpedia["nullius-bounce-plate"] =                      {name = "RTBouncePlate",                    tech = "nullius-logistic-ballistics-4"}
    clutterpedia["nullius-directed-bounce-plate"] =             {name = "DirectedBouncePlate",              tech = "nullius-logistic-ballistics-4"}
    clutterpedia["nullius-ejector-hatch"] =                     {name = "RTThrower-EjectorHatchRT",         tech = "nullius-logistic-ballistics-6"}
    clutterpedia["nullius-director-bounce-plate"] =             {name = "DirectorBouncePlate",              tech = "nullius-logistic-ballistics-6"}
    end
    if settings.startup["RTZiplineSetting"].value then
    clutterpedia["nullius-zipline-trolley"] =                   {name = "RTZiplineTrolley",                 tech = "nullius-ziplining-1"}
    clutterpedia["nullius-zipline-control"] =                   {name = "RTZiplineControls",                tech = "nullius-ziplining-1"}
    clutterpedia["nullius-zipline-crank-control"] =             {name = "RTZiplineCrankControls",           tech = "nullius-ziplining-1"}
    clutterpedia["nullius-zipline-trolley-2"] =                 {name = "RTZiplineTrolley2",                tech = "nullius-ziplining-2"}
    clutterpedia["nullius-zipline-smart-control"] =             {name = "RTProgrammableZiplineControls",    tech = "nullius-ziplining-2"}
    clutterpedia["nullius-zipline-terminal"] =                  {name = "RTZiplineTerminal",                tech = "nullius-ziplining-2"}
    clutterpedia["nullius-zipline-trolley-3"] =                 {name = "RTZiplineTrolley3",                tech = "nullius-ziplining-3"}
    clutterpedia["nullius-zipline-trolley-4"] =                 {name = "RTZiplineTrolley4",                tech = "nullius-ziplining-4"}
    clutterpedia["nullius-zipline-trolley-5"] =                 {name = "RTZiplineTrolley5",                tech = "nullius-ziplining-5"}
    end
    if settings.startup["RTTrainRampSetting"].value then
    clutterpedia["nullius-train-ramp"] =                        {name = "RTTrainRamp",                      tech = "nullius-freight-ballistics-1"}
    clutterpedia["nullius-impact-unloader"] =                   {name = "RTImpactUnloader",                 tech = "nullius-freight-ballistics-3"}
    clutterpedia["nullius-impact-wagon"] =                      {name = "RTImpactWagon",                    tech = "nullius-freight-ballistics-3"}
    clutterpedia["nullius-magnetic-ramp"] =                     {name = "RTMagnetTrainRamp",                tech = "nullius-freight-ballistics-4"}
    if settings.startup["RTThrowersSetting"].value then
        clutterpedia["nullius-train-bounce-plate"] =            {name = "RTTrainBouncePlate",               tech = "nullius-freight-ballistics-2"}
        clutterpedia["nullius-train-directed-bounce-plate"] =   {name = "RTTrainDirectedBouncePlate",       tech = "nullius-freight-ballistics-2"}
    end
    end
end
if (mods["rec-blue-plus"] or mods["recursive-blueprints"]) then
    clutterpedia["nullius-blueprint-deployer"] =                {name = "blueprint-deployer",               tech = "nullius-construction-robot-1"}
    clutterpedia["nullius-recursive-blueprints-scanner"] =      {name = "recursive-blueprints-scanner",     tech = "nullius-sensors-2"}
end
if mods["ch-concentrated-solar"] then
    clutterpedia["nullius-heliostat-mirror"] =                  {name = "chcs-heliostat-mirror",            tech = "nullius-concentrated-solar-energy"}
    clutterpedia["nullius-solar-tower"] =                       {name = "chcs-solar-power-tower",           tech = "nullius-concentrated-solar-energy"}
end
if mods["fcpu"] then
    clutterpedia["nullius-fcpu"] =                              {name = "fcpu",                             tech = "nullius-fcpu"}
end


function generate_migrations()
    local contents = "\n---- Generated migrations ----\n"
    for ogRecipe, entry in pairs(clutterpedia) do
        contents = contents.."[\""..ogRecipe.."\", \""..entry.name.."\"],\n"
    end
    log(contents)
end

function recipe_renaming()
    for ogRecipeName, entry in pairs(clutterpedia) do
        local recipe = data.raw.recipe[ogRecipeName]
        data.raw.recipe[ogRecipeName] = nil
        recipe.name = entry.name
        if entry.main_product then
            recipe.main_product = entry.name
        end
        if entry.locale then -- or I could manually set it the original recipe definition 
            recipe.localised_name = {"recipe-name."..ogRecipeName}
        end
        data:extend{recipe}
        local techs = entry.tech
        if type(entry.tech) ~= "table" then
            techs = {entry.tech}
        end
        for _,tech in pairs(techs) do
            for _,effect in pairs(data.raw.technology[tech].effects) do
                if effect.type == "unlock-recipe" and effect.recipe == ogRecipeName then
                    effect.recipe = entry.name
                end
            end
        end
    end
end

--generate_migrations()
recipe_renaming()
