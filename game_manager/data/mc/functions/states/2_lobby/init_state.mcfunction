# Place Signs
function mc:states/2_lobby/clear/clear_menu
# function mc:states/2_lobby/set/set_unchanging
function mc:states/2_lobby/update_signs

# Place Showcase
execute unless entity @e[type=armor_stand,tag=lobbyAmmo] run function mc:states/2_lobby/set/set_lobby_showcase