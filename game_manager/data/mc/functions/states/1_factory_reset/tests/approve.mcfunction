# Set Data
function mc:states/1_factory_reset/clear/clear_schedules
function mc:states/1_factory_reset/clear/clear_locations
function mc:states/1_factory_reset/set/set_gamerules
function mc:states/1_factory_reset/set/set_teams
function mc:states/1_factory_reset/set/set_scores
function mc:states/1_factory_reset/set/set_data_stores
function mc:states/1_factory_reset/set/set_players

# Status
tellraw @a ["",{"text":"60 ","bold":true,"color":"yellow"},{"text":"Seconds ","bold":true,"color":"red"},{"text":"datapack loaded!","color":"white"}]

# Proceed
schedule function mc:states/inc_state 1t replace