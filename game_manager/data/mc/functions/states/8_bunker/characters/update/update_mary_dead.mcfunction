# Standard
scoreboard players set crazyEscaped MaryStatus 1
# Crazy
function mc:sounds/bunker_door_1
# Append Lost Character Bundle
# scoreboard players set stage ItemsBundles 5
data modify storage minecraft:scavenge savedItemIds append value 20
function mc:states/8_bunker/items/process/bundles/check/check_main_remove