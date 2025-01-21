tellraw @a "state 2"

# Place Signs
function gc:states/2_lobby/place/place_menu_signs
function gc:states/2_lobby/place/place_unchanging_signs
function gc:states/2_lobby/update_signs

# Place Showcase
execute unless entity @e[type=armor_stand,tag=lobbyAmmo] positioned 16 37 4 run function gc:states/2_lobby/summon/summon_lobby_showcase