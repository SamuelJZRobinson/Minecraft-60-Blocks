# Standard
# execute if score isCrazyEscaped TedStatus matches 0 run teleport @s 0.00 53.85 31.15 180 0
execute if score isCrazyEscaped TedStatus matches 0 run function mc:sounds/character_death
# Crazy
execute if score isCrazyEscaped TedStatus matches 1 run function mc:sounds/bunker_door_1
# Append Lost Character Bundle
# scoreboard players set stage ItemsBundles 5
data modify storage minecraft:itemsprocess scavengeGainedItemIds append value 21
function mc:states/8_bunker/items/process/bundles/check/check_main_remove