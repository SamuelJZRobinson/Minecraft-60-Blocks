execute as @e[type=minecraft:armor_stand,tag=tedNametag] run data modify entity @s CustomNameVisible set value 1b
execute if score fatigued TedStatus matches 1 as @e[type=minecraft:armor_stand,tag=tedfatigued] run data modify entity @s CustomNameVisible set value 1b
execute if score soupLevel TedStatus matches 1 as @e[type=minecraft:armor_stand,tag=tedHungry] run data modify entity @s CustomNameVisible set value 1b
execute if score soupLevel TedStatus matches 2 as @e[type=minecraft:armor_stand,tag=tedStarvation] run data modify entity @s CustomNameVisible set value 1b
execute if score injuredLevel TedStatus matches 1 as @e[type=minecraft:armor_stand,tag=tedHurt] run data modify entity @s CustomNameVisible set value 1b
execute if score injuredLevel TedStatus matches 2 as @e[type=minecraft:armor_stand,tag=tedAgony] run data modify entity @s CustomNameVisible set value 1b
execute if score crazy TedStatus matches 1 as @e[type=minecraft:armor_stand,tag=tedCrazy] run data modify entity @s CustomNameVisible set value 1b
execute if score sick TedStatus matches 1 as @e[type=minecraft:armor_stand,tag=tedSick] run data modify entity @s CustomNameVisible set value 1b
execute if score waterLevel TedStatus matches 1 as @e[type=minecraft:armor_stand,tag=tedThirsty] run data modify entity @s CustomNameVisible set value 1b
execute if score waterLevel TedStatus matches 2 as @e[type=minecraft:armor_stand,tag=tedDehydration] run data modify entity @s CustomNameVisible set value 1b
execute if score tired TedStatus matches 1.. as @e[type=minecraft:armor_stand,tag=tedTired] run data modify entity @s CustomNameVisible set value 1b