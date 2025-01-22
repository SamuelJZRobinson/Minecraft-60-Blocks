# Kill Non-player Entities
function gc:states/1_factory_reset/clear/clear_locations

# Declare Game Ended
scoreboard players set isGameStarted GameStatus 0

# Proceed
scoreboard players set gameState GameStatus 1
schedule function gc:states/manage_states 1t replace