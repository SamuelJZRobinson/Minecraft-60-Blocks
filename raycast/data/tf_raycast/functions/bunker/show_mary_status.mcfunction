execute as @e[type=minecraft:armor_stand,tag=maryNametag] run data modify entity @s CustomNameVisible set value 1b
execute if score fatigued MaryStatus matches 1 as @e[type=minecraft:armor_stand,tag=maryfatigued] run data modify entity @s CustomNameVisible set value 1b
execute if score soupLevel MaryStatus matches 1 as @e[type=minecraft:armor_stand,tag=maryHungry] run data modify entity @s CustomNameVisible set value 1b
execute if score soupLevel MaryStatus matches 2 as @e[type=minecraft:armor_stand,tag=maryStarvation] run data modify entity @s CustomNameVisible set value 1b
execute if score mutant MaryStatus matches 1 as @e[type=minecraft:armor_stand,tag=maryMutated] run data modify entity @s CustomNameVisible set value 1b
execute if score injuredLevel MaryStatus matches 1 as @e[type=minecraft:armor_stand,tag=maryHurt] run data modify entity @s CustomNameVisible set value 1b
execute if score injuredLevel MaryStatus matches 2 as @e[type=minecraft:armor_stand,tag=maryAgony] run data modify entity @s CustomNameVisible set value 1b
execute if score crazy MaryStatus matches 1 as @e[type=minecraft:armor_stand,tag=maryCrazy] run data modify entity @s CustomNameVisible set value 1b
execute if score sick MaryStatus matches 1 as @e[type=minecraft:armor_stand,tag=marySick] run data modify entity @s CustomNameVisible set value 1b
execute if score waterLevel MaryStatus matches 1 as @e[type=minecraft:armor_stand,tag=maryThirsty] run data modify entity @s CustomNameVisible set value 1b
execute if score waterLevel MaryStatus matches 2 as @e[type=minecraft:armor_stand,tag=maryDehydration] run data modify entity @s CustomNameVisible set value 1b
execute if score tired MaryStatus matches 1.. as @e[type=minecraft:armor_stand,tag=maryTired] run data modify entity @s CustomNameVisible set value 1b