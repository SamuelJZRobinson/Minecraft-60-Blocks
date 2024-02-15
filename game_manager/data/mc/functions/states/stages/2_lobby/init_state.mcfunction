# Place Signs
function mc:states/stages/2_lobby/set/place_empty_signs
function mc:states/stages/2_lobby/merge/merge_default
function mc:states/stages/2_lobby/update_signs

# Place Showcase
execute unless entity @e[type=armor_stand,tag=lobbyAmmo] run function mc:states/stages/2_lobby/set/set_lobby_showcase