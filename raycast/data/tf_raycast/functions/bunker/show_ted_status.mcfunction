execute as @e[type=minecraft:armor_stand,tag=tedNametag,limit=1] run data modify entity @s CustomNameVisible set value 1b
execute if score fatigued TedStatus matches 1 as @e[type=minecraft:armor_stand,tag=tedfatigued,limit=1] run data modify entity @s CustomNameVisible set value 1b
execute if score soupLevel TedStatus matches 1 as @e[type=minecraft:armor_stand,tag=tedHungry,limit=1] run data modify entity @s CustomNameVisible set value 1b
execute if score soupLevel TedStatus matches 2 as @e[type=minecraft:armor_stand,tag=tedStarvation,limit=1] run data modify entity @s CustomNameVisible set value 1b
execute if score injuredLevel TedStatus matches 1 as @e[type=minecraft:armor_stand,tag=tedHurt,limit=1] run data modify entity @s CustomNameVisible set value 1b
execute if score injuredLevel TedStatus matches 2 as @e[type=minecraft:armor_stand,tag=tedAgony,limit=1] run data modify entity @s CustomNameVisible set value 1b
execute if score crazy TedStatus matches 1 as @e[type=minecraft:armor_stand,tag=tedCrazy,limit=1] run data modify entity @s CustomNameVisible set value 1b
execute if score sick TedStatus matches 1 as @e[type=minecraft:armor_stand,tag=tedSick,limit=1] run data modify entity @s CustomNameVisible set value 1b
execute if score waterLevel TedStatus matches 1 as @e[type=minecraft:armor_stand,tag=tedThirsty,limit=1] run data modify entity @s CustomNameVisible set value 1b
execute if score waterLevel TedStatus matches 2 as @e[type=minecraft:armor_stand,tag=tedDehydration,limit=1] run data modify entity @s CustomNameVisible set value 1b
execute if score tired TedStatus matches 1.. as @e[type=minecraft:armor_stand,tag=tedTired,limit=1] run data modify entity @s CustomNameVisible set value 1b