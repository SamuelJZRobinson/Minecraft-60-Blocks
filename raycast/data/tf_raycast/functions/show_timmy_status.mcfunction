execute as @e[type=minecraft:armor_stand,tag=timmyNametag,limit=1] run data modify entity @s CustomNameVisible set value 1b
execute if score fatigued TimmyStatus matches 1 as @e[type=minecraft:armor_stand,tag=timmyfatigued,limit=1] run data modify entity @s CustomNameVisible set value 1b
execute if score soupLevel TimmyStatus matches 1 as @e[type=minecraft:armor_stand,tag=timmyHungry,limit=1] run data modify entity @s CustomNameVisible set value 1b
execute if score soupLevel TimmyStatus matches 2 as @e[type=minecraft:armor_stand,tag=timmyStarvation,limit=1] run data modify entity @s CustomNameVisible set value 1b
execute if score injuredLevel TimmyStatus matches 1 as @e[type=minecraft:armor_stand,tag=timmyHurt,limit=1] run data modify entity @s CustomNameVisible set value 1b
execute if score injuredLevel TimmyStatus matches 2 as @e[type=minecraft:armor_stand,tag=timmyAgony,limit=1] run data modify entity @s CustomNameVisible set value 1b
execute if score crazy TimmyStatus matches 1 as @e[type=minecraft:armor_stand,tag=timmyCrazy,limit=1] run data modify entity @s CustomNameVisible set value 1b
execute if score sick TimmyStatus matches 1 as @e[type=minecraft:armor_stand,tag=timmySick,limit=1] run data modify entity @s CustomNameVisible set value 1b
execute if score waterLevel TimmyStatus matches 1 as @e[type=minecraft:armor_stand,tag=timmyThirsty,limit=1] run data modify entity @s CustomNameVisible set value 1b
execute if score waterLevel TimmyStatus matches 2 as @e[type=minecraft:armor_stand,tag=timmyDehydration,limit=1] run data modify entity @s CustomNameVisible set value 1b
execute if score tired TimmyStatus matches 1.. as @e[type=minecraft:armor_stand,tag=timmyTired,limit=1] run data modify entity @s CustomNameVisible set value 1b