# Main
function mc:states/4_setup/place/floorplans/spawn/spawn_checkers_triple
function mc:states/4_setup/place/floorplans/spawn/spawn_checkers_hallway
function mc:states/4_setup/place/floorplans/spawn/spawn_checkers_double

# Side
execute if score bunkerSide GameStatus matches 0 run function mc:states/4_setup/place/floorplans/spawn/spawn_checkers_west
execute if score bunkerSide GameStatus matches 1 run function mc:states/4_setup/place/floorplans/spawn/spawn_checkers_east

# Check For Blocks
function mc:states/4_setup/place/floorplans/spawn/check_for_block