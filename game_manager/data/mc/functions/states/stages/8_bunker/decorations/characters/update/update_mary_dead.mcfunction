# Clear Status Text
kill @e[type=minecraft:armor_stand,tag=maryStatus]
# Standard
scoreboard players set crazyEscaped MaryStatus 1
# Crazy
kill @s
function mc:sounds/bunker_door1
# Append Lost Character Bundle
scoreboard players set stage CheckItems 5
data modify storage minecraft:checkitem checkId append value 20
function mc:utility/scavenge/process/bundles/check/check_main_remove