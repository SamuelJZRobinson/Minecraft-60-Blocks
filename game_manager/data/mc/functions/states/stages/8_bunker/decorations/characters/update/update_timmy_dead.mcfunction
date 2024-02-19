# Clear Status Text 
kill @e[type=minecraft:armor_stand,tag=timmyStatus]
# Standard And Crazy
kill @s
function mc:sounds/bunker_door1
# Append Lost Character Bundle
scoreboard players set stage CheckItems 5
data modify storage minecraft:checkitem checkId append value 22
function mc:utility/scavenge/process/bundles/check/check_main_remove