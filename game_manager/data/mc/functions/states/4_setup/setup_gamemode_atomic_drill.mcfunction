# Load Floorplan 1
function mc:states/4_setup/place/floorplans/1/manage_floorplan

# Proceed
scoreboard players set gameState GameStatus 5
schedule function mc:states/manage_states 1t replace