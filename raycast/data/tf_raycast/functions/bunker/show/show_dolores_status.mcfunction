# Notes
  # Status checks repeated in cm:menu/page1/items_dolores

# Name
execute as @e[type=minecraft:armor_stand,tag=doloresName] run data modify entity @s CustomNameVisible set value 1b
# Fatigue
execute if score isFatigued DoloresStatus matches 1 as @e[type=minecraft:armor_stand,tag=doloresFatigued] run data modify entity @s CustomNameVisible set value 1b
# Soup
execute if score soup DoloresStatus > HUNGER_AMOUNT_CRITICAL StatusLevels if score soup DoloresStatus <= HUNGER_AMOUNT_DANGER StatusLevels as @e[type=minecraft:armor_stand,tag=doloresHungry] run data modify entity @s CustomNameVisible set value 1b
execute if score soup DoloresStatus <= HUNGER_AMOUNT_CRITICAL StatusLevels as @e[type=minecraft:armor_stand,tag=doloresStarvation] run data modify entity @s CustomNameVisible set value 1b
# Injured
execute if score isInjured DoloresStatus matches 1 if score injuredDays DoloresStatus < INJURED_DAYS_DANGER StatusLevels as @e[type=minecraft:armor_stand,tag=doloresHurt] run data modify entity @s CustomNameVisible set value 1b
execute if score isInjured DoloresStatus matches 1 if score injuredDays DoloresStatus >= INJURED_DAYS_DANGER StatusLevels as @e[type=minecraft:armor_stand,tag=doloresAgony] run data modify entity @s CustomNameVisible set value 1b
# Crazy
execute if score isCrazy DoloresStatus matches 1 as @e[type=minecraft:armor_stand,tag=doloresCrazy] run data modify entity @s CustomNameVisible set value 1b
# Sick
execute if score isSick DoloresStatus matches 1 as @e[type=minecraft:armor_stand,tag=doloresSick] run data modify entity @s CustomNameVisible set value 1b
# Water
execute if score water DoloresStatus > THIRST_AMOUNT_CRITICAL StatusLevels if score water DoloresStatus <= THIRST_AMOUNT_DANGER StatusLevels as @e[type=minecraft:armor_stand,tag=doloresThirsty] run data modify entity @s CustomNameVisible set value 1b
execute if score water DoloresStatus <= THIRST_AMOUNT_CRITICAL StatusLevels as @e[type=minecraft:armor_stand,tag=doloresDehydration] run data modify entity @s CustomNameVisible set value 1b
# Tired
execute if score isTired DoloresStatus matches 1.. as @e[type=minecraft:armor_stand,tag=doloresTired] run data modify entity @s CustomNameVisible set value 1b