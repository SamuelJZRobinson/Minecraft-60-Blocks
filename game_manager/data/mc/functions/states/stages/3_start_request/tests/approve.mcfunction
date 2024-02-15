# Adjust Scores
scoreboard players set started GameStatus 1

# Remove Lobby Content
function mc:states/stages/2_lobby/set/place_empty_signs_menu
execute if score started GameStatus matches 1 run kill @e[type=armor_stand,tag=lobbyItem]

# Set State
scoreboard players set state GameStatus 4
schedule function mc:states/stages/manage_states 14t replace