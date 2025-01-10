# Name
execute as @e[type=minecraft:armor_stand,tag=maryNametag] run data modify entity @s CustomNameVisible set value 1b
# Fatigue
execute if score fatigued MaryStatus matches 1 as @e[type=minecraft:armor_stand,tag=maryfatigued] run data modify entity @s CustomNameVisible set value 1b
# Soup
execute if score soup MaryStatus > HUNGER_MIN StatusLevels if score soup MaryStatus <= HUNGER_MID StatusLevels as @e[type=minecraft:armor_stand,tag=maryHungry] run data modify entity @s CustomNameVisible set value 1b
execute if score soup MaryStatus <= HUNGER_MIN StatusLevels as @e[type=minecraft:armor_stand,tag=maryStarvation] run data modify entity @s CustomNameVisible set value 1b
# Mutant
execute if score mutant MaryStatus matches 1 as @e[type=minecraft:armor_stand,tag=maryMutated] run data modify entity @s CustomNameVisible set value 1b
# Injuries
execute if score infection MaryStatus > INFECTION_MIN StatusLevels if score infection MaryStatus < INFECTION_MAX StatusLevels as @e[type=minecraft:armor_stand,tag=maryHurt] run data modify entity @s CustomNameVisible set value 1b
execute if score infection MaryStatus <= INFECTION_MIN StatusLevels as @e[type=minecraft:armor_stand,tag=maryAgony] run data modify entity @s CustomNameVisible set value 1b
# Crazy
execute if score crazy MaryStatus matches 1 as @e[type=minecraft:armor_stand,tag=maryCrazy] run data modify entity @s CustomNameVisible set value 1b
# Sick
execute if score sick MaryStatus matches 1 as @e[type=minecraft:armor_stand,tag=marySick] run data modify entity @s CustomNameVisible set value 1b
# Water
execute if score water MaryStatus > THIRST_MIN StatusLevels if score water MaryStatus <= THIRST_MID StatusLevels as @e[type=minecraft:armor_stand,tag=maryThirsty] run data modify entity @s CustomNameVisible set value 1b
execute if score water MaryStatus <= THIRST_MIN StatusLevels as @e[type=minecraft:armor_stand,tag=maryDehydration] run data modify entity @s CustomNameVisible set value 1b
# Energy
execute if score tired MaryStatus matches 1.. as @e[type=minecraft:armor_stand,tag=maryTired] run data modify entity @s CustomNameVisible set value 1b