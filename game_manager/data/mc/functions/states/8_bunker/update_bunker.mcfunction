# Chest Menu
function cm:place_chest_menu

# Set Expedition Availability
execute if score day GameStatus matches ..1 run scoreboard players set expeditionReady MenuExplore -1
execute if score day GameStatus matches 2 run scoreboard players set expeditionReady MenuExplore 0

# Character Revive Chance
execute if score day GameStatus matches 1..7 if score totalAlive GameStatus matches ..3 if score characterRevived GameStatus matches 0 run function mc:states/8_bunker/characters/update/revive

# Update Bunker
execute unless score state GameStatus matches 9 run function mc:states/8_bunker/update_bunker
### execute if score expeditionDuration MenuExplore matches 0 if score characterSent MenuExplore matches 0 run function mc:states/8_bunker/update_bunker
### execute if score expeditionDuration MenuExplore matches 1.. if score characterSent MenuExplore matches 1.. run schedule function mc:states/8_bunker/update_bunker 1t replace

# Request Random Event