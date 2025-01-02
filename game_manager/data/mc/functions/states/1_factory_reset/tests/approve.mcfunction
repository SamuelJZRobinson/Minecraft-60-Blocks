# Set Data
function mc:states/1_factory_reset/clear/clear_schedules
function mc:states/1_factory_reset/set/set_gamerules
function mc:states/1_factory_reset/set/set_teams
function mc:states/1_factory_reset/set/set_scores
function mc:states/1_factory_reset/set/set_bundles
function mc:states/1_factory_reset/set/set_players

# Disable Mob Loot
gamerule doMobLoot false

# Kill Non-Player Entities
kill @e[type=!player,type=!item_frame]
kill @e[type=item_frame,tag=prop]

# Enable Mob Loot
gamerule doMobLoot true

# Status
tellraw @a ["",{"text":"60 ","bold":true,"color":"yellow"},{"text":"Seconds ","bold":true,"color":"red"},{"text":"datapack loaded!","color":"white"}]

# Proceed
schedule function mc:states/inc_state 1t replace