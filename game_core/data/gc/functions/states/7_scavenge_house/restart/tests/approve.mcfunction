# Clear Data
data remove storage minecraft:itemsprocess scavengeGainedItemIds

# Clear Locations
function gc:states/1_factory_reset/clear/clear_locations

# Clear Player
clear @a
scoreboard objectives setdisplay sidebar

# Clear Schedules
function gc:states/1_factory_reset/clear/clear_schedules

# Set Music
scoreboard players set music GameStatus 0

# Set State
scoreboard players set gameState GameStatus 4
schedule function gc:states/manage_states 1t replace