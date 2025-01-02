# Main
function mc:states/4_setup/place/floorplans/general/summon_markers_triple
function mc:states/4_setup/place/floorplans/general/summon_markers_hallway
function mc:states/4_setup/place/floorplans/general/summon_markers_double

# Side
execute if score bunkerSide GameStatus matches 0 run function mc:states/4_setup/place/floorplans/general/summon_markers_west
execute if score bunkerSide GameStatus matches 1 run function mc:states/4_setup/place/floorplans/general/summon_markers_east

# Check For Blocks At Markers
function mc:states/4_setup/place/floorplans/general/check_for_block