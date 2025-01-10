# Name
execute as @e[type=minecraft:armor_stand,tag=timmyNametag] run data modify entity @s CustomNameVisible set value 1b
# Fatigue
execute if score fatigued TimmyStatus matches 1 as @e[type=minecraft:armor_stand,tag=timmyfatigued] run data modify entity @s CustomNameVisible set value 1b
# Soup
execute if score soup TimmyStatus > HUNGER_MIN StatusLevels if score soup TimmyStatus <= HUNGER_MID StatusLevels as @e[type=minecraft:armor_stand,tag=timmyHungry] run data modify entity @s CustomNameVisible set value 1b
execute if score soup TimmyStatus <= HUNGER_MIN StatusLevels as @e[type=minecraft:armor_stand,tag=timmyStarvation] run data modify entity @s CustomNameVisible set value 1b
# Injuries
execute if score infection TimmyStatus > INFECTION_MIN StatusLevels if score infection TimmyStatus < INFECTION_MAX StatusLevels as @e[type=minecraft:armor_stand,tag=timmyHurt] run data modify entity @s CustomNameVisible set value 1b
execute if score infection TimmyStatus <= INFECTION_MIN StatusLevels as @e[type=minecraft:armor_stand,tag=timmyAgony] run data modify entity @s CustomNameVisible set value 1b
# Crazy
execute if score crazy TimmyStatus matches 1 as @e[type=minecraft:armor_stand,tag=timmyCrazy] run data modify entity @s CustomNameVisible set value 1b
# Sick
execute if score sick TimmyStatus matches 1 as @e[type=minecraft:armor_stand,tag=timmySick] run data modify entity @s CustomNameVisible set value 1b
# Water
execute if score water TimmyStatus > THIRST_MIN StatusLevels if score water TimmyStatus <= THIRST_MID StatusLevels as @e[type=minecraft:armor_stand,tag=timmyThirsty] run data modify entity @s CustomNameVisible set value 1b
execute if score water TimmyStatus <= THIRST_MIN StatusLevels as @e[type=minecraft:armor_stand,tag=timmyDehydration] run data modify entity @s CustomNameVisible set value 1b
# Tired
execute if score tired TimmyStatus matches 1.. as @e[type=minecraft:armor_stand,tag=timmyTired] run data modify entity @s CustomNameVisible set value 1b