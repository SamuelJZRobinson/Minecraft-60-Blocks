execute as @e[type=minecraft:armor_stand,tag=timmyNametag] run data modify entity @s CustomNameVisible set value 1b
execute if score fatigued TimmyStatus matches 1 as @e[type=minecraft:armor_stand,tag=timmyfatigued] run data modify entity @s CustomNameVisible set value 1b
execute if score soupLevel TimmyStatus matches 1 as @e[type=minecraft:armor_stand,tag=timmyHungry] run data modify entity @s CustomNameVisible set value 1b
execute if score soupLevel TimmyStatus matches 2 as @e[type=minecraft:armor_stand,tag=timmyStarvation] run data modify entity @s CustomNameVisible set value 1b
execute if score injuredLevel TimmyStatus matches 1 as @e[type=minecraft:armor_stand,tag=timmyHurt] run data modify entity @s CustomNameVisible set value 1b
execute if score injuredLevel TimmyStatus matches 2 as @e[type=minecraft:armor_stand,tag=timmyAgony] run data modify entity @s CustomNameVisible set value 1b
execute if score crazy TimmyStatus matches 1 as @e[type=minecraft:armor_stand,tag=timmyCrazy] run data modify entity @s CustomNameVisible set value 1b
execute if score sick TimmyStatus matches 1 as @e[type=minecraft:armor_stand,tag=timmySick] run data modify entity @s CustomNameVisible set value 1b
execute if score waterLevel TimmyStatus matches 1 as @e[type=minecraft:armor_stand,tag=timmyThirsty] run data modify entity @s CustomNameVisible set value 1b
execute if score waterLevel TimmyStatus matches 2 as @e[type=minecraft:armor_stand,tag=timmyDehydration] run data modify entity @s CustomNameVisible set value 1b
execute if score tired TimmyStatus matches 1.. as @e[type=minecraft:armor_stand,tag=timmyTired] run data modify entity @s CustomNameVisible set value 1b