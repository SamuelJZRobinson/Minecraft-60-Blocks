# Notes
  # Status checks repeated in cm:menu/page1/items_dolores

# Check Status
execute as @e[type=minecraft:armor_stand,tag=doloresName] run data modify entity @s CustomNameVisible set value 1b
execute if score fatigued DoloresStatus matches 1 as @e[type=minecraft:armor_stand,tag=doloresFatigued] run data modify entity @s CustomNameVisible set value 1b
execute if score soupLevel DoloresStatus matches 1 as @e[type=minecraft:armor_stand,tag=doloresHungry] run data modify entity @s CustomNameVisible set value 1b
execute if score soupLevel DoloresStatus matches 2 as @e[type=minecraft:armor_stand,tag=doloresStarvation] run data modify entity @s CustomNameVisible set value 1b
execute if score injuredLevel DoloresStatus matches 1 as @e[type=minecraft:armor_stand,tag=doloresHurt] run data modify entity @s CustomNameVisible set value 1b
execute if score injuredLevel DoloresStatus matches 2 as @e[type=minecraft:armor_stand,tag=doloresAgony] run data modify entity @s CustomNameVisible set value 1b
execute if score crazy DoloresStatus matches 1 as @e[type=minecraft:armor_stand,tag=doloresCrazy] run data modify entity @s CustomNameVisible set value 1b
execute if score sick DoloresStatus matches 1 as @e[type=minecraft:armor_stand,tag=doloresSick] run data modify entity @s CustomNameVisible set value 1b
execute if score waterLevel DoloresStatus matches 1 as @e[type=minecraft:armor_stand,tag=doloresThirsty] run data modify entity @s CustomNameVisible set value 1b
execute if score waterLevel DoloresStatus matches 2 as @e[type=minecraft:armor_stand,tag=doloresDehydration] run data modify entity @s CustomNameVisible set value 1b
execute if score tired DoloresStatus matches 1.. as @e[type=minecraft:armor_stand,tag=doloresTired] run data modify entity @s CustomNameVisible set value 1b