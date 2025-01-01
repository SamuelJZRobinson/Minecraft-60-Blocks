# Place Signs
function mc:states/2_lobby/place/place_menu_signs
function mc:states/2_lobby/place/place_unchanging_signs
function mc:states/2_lobby/update_signs

# Place Showcase
execute unless entity @e[type=armor_stand,tag=lobbyAmmo] run function mc:states/2_lobby/summon/summon_lobby_showcase