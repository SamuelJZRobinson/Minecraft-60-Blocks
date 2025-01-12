# Standard
execute if score isCrazyEscaped DoloresStatus matches 0 run function mc:sounds/character_death
# Crazy
execute if score isCrazyEscaped DoloresStatus matches 1 run function mc:sounds/bunker_door_1
# Append Lost Character Bundle
# scoreboard players set stage ItemsBundles 5
data modify storage minecraft:scavenge savedItemIds append value 19
function mc:states/8_bunker/items/process/bundles/check/check_main_remove