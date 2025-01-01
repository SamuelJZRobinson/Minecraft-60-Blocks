# Adjust Scores
scoreboard players set started GameStatus 1

# Remove Lobby Content
function mc:states/2_lobby/clear/clear_menu
kill @e[type=armor_stand,tag=lobbyItem]

# Set State
scoreboard players set state GameStatus 4
schedule function mc:states/manage_states 1t replace