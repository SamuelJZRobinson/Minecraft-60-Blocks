# Declare Started
scoreboard players set started GameStatus 1

# Clear Signs
function mc:states/2_lobby/place/place_menu_signs

# Clear Lobby Showcase
kill @e[type=armor_stand,tag=lobbyItem]

# Proceed
schedule function mc:states/inc_state 1t replace