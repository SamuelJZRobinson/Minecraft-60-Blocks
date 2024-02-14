# Atomic Drill Module
function mc:states/stages/4_setup/place/floorplans/clone/clone_floorplan_1_drill

# Spawn Markers
execute unless score task AtomicDrill matches 1..9 run function mc:states/stages/4_setup/place/floorplans/spawn/spawn_bunker_indicator
execute unless score task AtomicDrill matches 1..9 run schedule function mc:states/stages/4_setup/place/floorplans/spawn/spawn_main_checkers 2t replace
execute unless score task AtomicDrill matches 1..9 run schedule function mc:states/stages/4_setup/place/floorplans/spawn/spawn_floorplan_1_checkers 7t replace

# Remember Floorplan
scoreboard players set preFloorplan GameStatus 1