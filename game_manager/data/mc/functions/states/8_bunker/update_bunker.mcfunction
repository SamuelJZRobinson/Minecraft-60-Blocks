# Chest Menu
function cm:place_chest_menu

# Set Expedition Availability
execute if score day GameStatus matches ..1 run scoreboard players set expeditionReady MenuExpedition -1
execute if score day GameStatus matches 2 run scoreboard players set expeditionReady MenuExpedition 0

# Update Bunker
execute unless score gameState GameStatus matches 9 run function mc:states/8_bunker/update_bunker
### execute if score expeditionDuration MenuExpedition matches 0 if score characterSent MenuExpedition matches 0 run function mc:states/8_bunker/update_bunker
### execute if score expeditionDuration MenuExpedition matches 1.. if score characterSent MenuExpedition matches 1.. run schedule function mc:states/8_bunker/update_bunker 1t replace

# Request Random Event