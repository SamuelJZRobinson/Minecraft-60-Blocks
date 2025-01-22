# Load Floorplan 1
function gc:states/4_setup/floorplans/1/manage_floorplan

# Proceed
scoreboard players set gameState GameStatus 5
schedule function gc:states/manage_states 1t replace