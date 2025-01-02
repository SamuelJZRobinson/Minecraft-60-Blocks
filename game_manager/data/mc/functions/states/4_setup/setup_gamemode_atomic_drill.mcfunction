# Set Scores
scoreboard players set lockInventory GameStatus 1

# Load Floorplan 1
function mc:states/4_setup/place/floorplans/clone/clone_fp_1

# Goto House
function mc:utility/tp/tp_house

# Proceed
scoreboard players set state GameStatus 5
schedule function mc:states/manage_states 1t replace