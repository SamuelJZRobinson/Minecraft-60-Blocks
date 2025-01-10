# Name
execute as @e[type=minecraft:armor_stand,tag=tedNametag] run data modify entity @s CustomNameVisible set value 1b
# Fatigue
execute if score fatigued TedStatus matches 1 as @e[type=minecraft:armor_stand,tag=tedfatigued] run data modify entity @s CustomNameVisible set value 1b
# Soup
execute if score soup TedStatus > HUNGER_MIN StatusLevels if score soup TedStatus <= HUNGER_MID StatusLevels as @e[type=minecraft:armor_stand,tag=tedHungry] run data modify entity @s CustomNameVisible set value 1b
execute if score soup TedStatus <= HUNGER_MIN StatusLevels as @e[type=minecraft:armor_stand,tag=tedStarvation] run data modify entity @s CustomNameVisible set value 1b
# Injuries
execute if score infection TedStatus > INFECTION_MIN StatusLevels if score infection TedStatus < INFECTION_MAX StatusLevels as @e[type=minecraft:armor_stand,tag=tedHurt] run data modify entity @s CustomNameVisible set value 1b
execute if score infection TedStatus <= INFECTION_MIN StatusLevels as @e[type=minecraft:armor_stand,tag=tedAgony] run data modify entity @s CustomNameVisible set value 1b
# Crazy
execute if score crazy TedStatus matches 1 as @e[type=minecraft:armor_stand,tag=tedCrazy] run data modify entity @s CustomNameVisible set value 1b
# Sick
execute if score sick TedStatus matches 1 as @e[type=minecraft:armor_stand,tag=tedSick] run data modify entity @s CustomNameVisible set value 1b
# Water
execute if score water TedStatus > THIRST_MIN StatusLevels if score water TedStatus <= THIRST_MID StatusLevels as @e[type=minecraft:armor_stand,tag=tedThirsty] run data modify entity @s CustomNameVisible set value 1b
execute if score water TedStatus <= THIRST_MIN StatusLevels as @e[type=minecraft:armor_stand,tag=tedDehydration] run data modify entity @s CustomNameVisible set value 1b
# Energy
execute if score tired TedStatus matches 1.. as @e[type=minecraft:armor_stand,tag=tedTired] run data modify entity @s CustomNameVisible set value 1b