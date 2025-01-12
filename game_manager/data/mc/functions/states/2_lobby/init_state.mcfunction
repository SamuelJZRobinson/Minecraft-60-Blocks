tellraw @a "state 2"

# Place Signs
function mc:states/2_lobby/place/place_menu_signs
function mc:states/2_lobby/place/place_unchanging_signs
function mc:states/2_lobby/update_signs

# Place Showcase
execute unless entity @e[type=armor_stand,tag=lobbyAmmo] positioned 19 37 4 run function mc:states/2_lobby/summon/summon_lobby_showcase