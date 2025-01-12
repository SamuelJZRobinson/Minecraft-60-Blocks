# Name
execute as @e[type=minecraft:armor_stand,tag=tedNametag] run data modify entity @s CustomNameVisible set value 1b
# Fatigue
execute if score isFatigued TedStatus matches 1 as @e[type=minecraft:armor_stand,tag=tedfatigued] run data modify entity @s CustomNameVisible set value 1b
# Soup
execute if score soup TedStatus > HUNGER_AMOUNT_CRITICAL StatusLevels if score soup TedStatus <= HUNGER_AMOUNT_DANGER StatusLevels as @e[type=minecraft:armor_stand,tag=tedHungry] run data modify entity @s CustomNameVisible set value 1b
execute if score soup TedStatus <= HUNGER_AMOUNT_CRITICAL StatusLevels as @e[type=minecraft:armor_stand,tag=tedStarvation] run data modify entity @s CustomNameVisible set value 1b
# Injured
execute if score isInjured TedStatus matches 1 if score injuredDays TedStatus < INJURED_DAYS_DANGER StatusLevels as @e[type=minecraft:armor_stand,tag=tedHurt] run data modify entity @s CustomNameVisible set value 1b
execute if score isInjured TedStatus matches 1 if score injuredDays TedStatus >= INJURED_DAYS_DANGER StatusLevels as @e[type=minecraft:armor_stand,tag=tedAgony] run data modify entity @s CustomNameVisible set value 1b
# Crazy
execute if score isCrazy TedStatus matches 1 as @e[type=minecraft:armor_stand,tag=tedCrazy] run data modify entity @s CustomNameVisible set value 1b
# Sick
execute if score isSick TedStatus matches 1 as @e[type=minecraft:armor_stand,tag=tedSick] run data modify entity @s CustomNameVisible set value 1b
# Water
execute if score water TedStatus > THIRST_AMOUNT_CRITICAL StatusLevels if score water TedStatus <= THIRST_AMOUNT_DANGER StatusLevels as @e[type=minecraft:armor_stand,tag=tedThirsty] run data modify entity @s CustomNameVisible set value 1b
execute if score water TedStatus <= THIRST_AMOUNT_CRITICAL StatusLevels as @e[type=minecraft:armor_stand,tag=tedDehydration] run data modify entity @s CustomNameVisible set value 1b
# Energy
execute if score isTired TedStatus matches 1.. as @e[type=minecraft:armor_stand,tag=tedTired] run data modify entity @s CustomNameVisible set value 1b