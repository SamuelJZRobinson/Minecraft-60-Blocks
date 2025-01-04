# Clear Status Text
kill @e[type=minecraft:armor_stand,tag=doloresStatus]
# Standard
execute if score crazyEscaped DoloresStatus matches 0 run data modify entity @s ArmorItems[3] set value {id:"minecraft:skeleton_skull",Count:1b}
execute if score crazyEscaped DoloresStatus matches 0 run data merge entity @s {Pose:{LeftArm:[-1f,0f,0f],RightArm:[-1f,0f,0f],LeftLeg:[-90f,-45f,0f],RightLeg:[-90f,-28f,0f],Head:[-110f,0f,0f]}}
execute if score crazyEscaped DoloresStatus matches 0 run function mc:sounds/character_death
# Crazy
execute if score crazyEscaped DoloresStatus matches 1 run kill @s
execute if score crazyEscaped DoloresStatus matches 1 run function mc:sounds/bunker_door_1
# Append Lost Character Bundle
scoreboard players set stage scavenges 5
data modify storage minecraft:scavenge savedItemIds append value 19
function mc:utility/scavenge/process/bundles/check/check_main_remove