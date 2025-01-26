# Set Data
function gc:states/1_factory_reset/set/set_gamerules
function gc:states/1_factory_reset/clear/clear_schedules
function gc:states/1_factory_reset/clear/clear_locations
function gc:states/1_factory_reset/set/set_scores
function gc:states/1_factory_reset/set/set_teams
function gc:states/1_factory_reset/set/set_players
time set day

# Status
tellraw @a ["",{"text":"60 ","bold":true,"color":"yellow"},{"text":"Blocks ","bold":true,"color":"red"},{"text":"game core loaded!","color":"white"}]

# Proceed
schedule function gc:states/inc_state 1t replace