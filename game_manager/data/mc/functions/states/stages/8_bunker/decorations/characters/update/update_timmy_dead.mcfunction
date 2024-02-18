# Clear Status Text 
kill @e[x=2,y=54,z=29,dy=4,type=minecraft:armor_stand,tag=timmyStatus]
# Standard And Crazy
kill @s
function mc:sounds/bunker_door1
# Append Lost Character Bundle
scoreboard players set stage CheckItems 5
data modify storage minecraft:checkitem checkId append value 22
function mc:utility/scavenge/process/check_main_remove