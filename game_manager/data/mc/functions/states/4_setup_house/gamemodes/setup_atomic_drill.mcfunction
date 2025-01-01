# Set Scores
scoreboard players set lockInventory GameStatus 1

# Load Floorplan
function mc:states/4_setup_house/place/floorplans/clone/clone_fp_1_drill

# Goto House
function mc:utility/tp/tp_house

# Set State
scoreboard players set state GameStatus 5
schedule function mc:states/manage_states 1t replace