# Chest Menu
function cm:place_chest_menu
execute if score day GameStatus matches 2 run scoreboard players set expeditionPrepared MenuExplore 0

# Character Revive
execute if score day GameStatus matches 1..7 unless score characterRevived GameStatus matches 1.. run function mc:states/stages/8_bunker/decorations/characters/update/revive_chance

# Update
function mc:states/stages/8_bunker/decorations/manage_decorations

# Request Random Event