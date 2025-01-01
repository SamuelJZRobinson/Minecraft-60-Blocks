# Atomic Drill Module
function mc:states/4_setup/place/floorplans/clone/clone_fp_1_drill

# Spawn Markers
execute unless score task AtomicDrill matches 1..9 run function mc:states/4_setup/place/floorplans/clone/clone_fp_1_make

# Remember Floorplan
scoreboard players set preFloorplan GameStatus 1