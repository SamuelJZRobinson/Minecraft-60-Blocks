# Reset Relevant Data
function mc:states/1_factory_reset/clear/clear_locations_house
clear @a
scoreboard objectives setdisplay sidebar
function mc:states/1_factory_reset/clear/clear_schedules
function mc:states/1_factory_reset/set/scores/set_scores_items

# Music
scoreboard players set music GameStatus 0

# Set State
scoreboard players set state GameStatus 4
schedule function mc:states/manage_states 1t replace