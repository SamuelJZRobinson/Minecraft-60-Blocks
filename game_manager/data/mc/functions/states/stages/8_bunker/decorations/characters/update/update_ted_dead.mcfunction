# Clear Status Text 
kill @e[x=0,y=54,z=31,dy=4,type=minecraft:armor_stand,tag=tedStatus]
# Standard
execute if score escaped TedStatus matches 0 run data modify entity @s ArmorItems[3] set value {id:"minecraft:skeleton_skull",Count:1b}
execute if score escaped TedStatus matches 0 run data merge entity @s {Pose:{LeftArm:[280f,-15f,0f],RightArm:[280f,5f,0f],LeftLeg:[55f,25f,0f],RightLeg:[50f,-25f,0f],Head:[10f,-5f,25f]}}
execute if score escaped TedStatus matches 0 run teleport @s 0.00 53.85 31.15 180 0
execute if score escaped TedStatus matches 0 run function mc:sounds/character_death
# Crazy
execute if score escaped TedStatus matches 1 run kill @s
execute if score escaped TedStatus matches 1 run function mc:sounds/bunker_door1
# Append Lost Character Bundle
scoreboard players set stage CheckItems 5
data modify storage minecraft:checkitem checkId append value 21
function mc:utility/scavenge/process/check_main_remove