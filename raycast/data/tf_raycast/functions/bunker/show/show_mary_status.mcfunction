# Name
execute as @e[type=minecraft:armor_stand,tag=maryNametag] run data modify entity @s CustomNameVisible set value 1b
# Fatigue
execute if score isFatigued MaryStatus matches 1 as @e[type=minecraft:armor_stand,tag=maryfatigued] run data modify entity @s CustomNameVisible set value 1b
# Soup
execute if score soup MaryStatus > HUNGER_AMOUNT_CRITICAL StatusLevels if score soup MaryStatus <= HUNGER_AMOUNT_DANGER StatusLevels as @e[type=minecraft:armor_stand,tag=maryHungry] run data modify entity @s CustomNameVisible set value 1b
execute if score soup MaryStatus <= HUNGER_AMOUNT_CRITICAL StatusLevels as @e[type=minecraft:armor_stand,tag=maryStarvation] run data modify entity @s CustomNameVisible set value 1b
# Mutant
execute if score isMutant MaryStatus matches 1 as @e[type=minecraft:armor_stand,tag=maryMutated] run data modify entity @s CustomNameVisible set value 1b
# Injured
execute if score isInjured MaryStatus matches 1 if score injuredDays MaryStatus < INJURED_DAYS_DANGER StatusLevels as @e[type=minecraft:armor_stand,tag=maryHurt] run data modify entity @s CustomNameVisible set value 1b
execute if score isInjured MaryStatus matches 1 if score injuredDays MaryStatus >= INJURED_DAYS_DANGER StatusLevels as @e[type=minecraft:armor_stand,tag=maryAgony] run data modify entity @s CustomNameVisible set value 1b
# Crazy
execute if score isCrazy MaryStatus matches 1 as @e[type=minecraft:armor_stand,tag=maryCrazy] run data modify entity @s CustomNameVisible set value 1b
# Sick
execute if score isSick MaryStatus matches 1 as @e[type=minecraft:armor_stand,tag=marySick] run data modify entity @s CustomNameVisible set value 1b
# Water
execute if score water MaryStatus > THIRST_AMOUNT_CRITICAL StatusLevels if score water MaryStatus <= THIRST_AMOUNT_DANGER StatusLevels as @e[type=minecraft:armor_stand,tag=maryThirsty] run data modify entity @s CustomNameVisible set value 1b
execute if score water MaryStatus <= THIRST_AMOUNT_CRITICAL StatusLevels as @e[type=minecraft:armor_stand,tag=maryDehydration] run data modify entity @s CustomNameVisible set value 1b
# Tired
execute if score isTired MaryStatus matches 1.. as @e[type=minecraft:armor_stand,tag=maryTired] run data modify entity @s CustomNameVisible set value 1b