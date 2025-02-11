# Name
execute as @e[type=minecraft:armor_stand,tag=timmyNametag] run data modify entity @s CustomNameVisible set value 1b
# Fatigue
execute if score isFatigued TimmyStatus matches 1 as @e[type=minecraft:armor_stand,tag=timmyfatigued] run data modify entity @s CustomNameVisible set value 1b
# Soup
execute if score soup TimmyStatus > HUNGER_AMOUNT_CRITICAL CharactersLevels if score soup TimmyStatus <= HUNGER_AMOUNT_DANGER CharactersLevels as @e[type=minecraft:armor_stand,tag=timmyHungry] run data modify entity @s CustomNameVisible set value 1b
execute if score soup TimmyStatus <= HUNGER_AMOUNT_CRITICAL CharactersLevels as @e[type=minecraft:armor_stand,tag=timmyStarvation] run data modify entity @s CustomNameVisible set value 1b
# Injured
execute if score isInjured TimmyStatus matches 1 if score injuredDays TimmyStatus < INJURED_DAYS_DANGER CharactersLevels as @e[type=minecraft:armor_stand,tag=timmyHurt] run data modify entity @s CustomNameVisible set value 1b
execute if score isInjured TimmyStatus matches 1 if score injuredDays TimmyStatus >= INJURED_DAYS_DANGER CharactersLevels as @e[type=minecraft:armor_stand,tag=timmyAgony] run data modify entity @s CustomNameVisible set value 1b
# Crazy
execute if score isCrazy TimmyStatus matches 1 as @e[type=minecraft:armor_stand,tag=timmyCrazy] run data modify entity @s CustomNameVisible set value 1b
# Sick
execute if score isSick TimmyStatus matches 1 as @e[type=minecraft:armor_stand,tag=timmySick] run data modify entity @s CustomNameVisible set value 1b
# Water
execute if score water TimmyStatus > THIRST_AMOUNT_CRITICAL CharactersLevels if score water TimmyStatus <= THIRST_AMOUNT_DANGER CharactersLevels as @e[type=minecraft:armor_stand,tag=timmyThirsty] run data modify entity @s CustomNameVisible set value 1b
execute if score water TimmyStatus <= THIRST_AMOUNT_CRITICAL CharactersLevels as @e[type=minecraft:armor_stand,tag=timmyDehydration] run data modify entity @s CustomNameVisible set value 1b
# Tired
execute if score isTired TimmyStatus matches 1.. as @e[type=minecraft:armor_stand,tag=timmyTired] run data modify entity @s CustomNameVisible set value 1b