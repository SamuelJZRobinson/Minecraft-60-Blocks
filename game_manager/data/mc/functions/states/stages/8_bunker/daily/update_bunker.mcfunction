# Chest Menu
function cm:place_chest_menu

# Set Expedition Availability
execute if score day GameStatus matches ..1 run scoreboard players set expeditionReady MenuExplore -1
execute if score day GameStatus matches 2 run scoreboard players set expeditionReady MenuExplore 0

# Character Revive Chance
execute if score day GameStatus matches 1..7 unless score characterRevived GameStatus matches 1.. run function mc:states/stages/8_bunker/cosmetics/characters/update/revive_chance

# Update
function mc:states/stages/8_bunker/cosmetics/manage_cosmetics

# Request Random Event