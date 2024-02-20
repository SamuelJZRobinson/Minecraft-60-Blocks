execute as @e[type=minecraft:armor_stand,tag=maryNametag,limit=1] run data modify entity @s CustomNameVisible set value 1b
execute if score fatigued MaryStatus matches 1 as @e[type=minecraft:armor_stand,tag=maryfatigued,limit=1] run data modify entity @s CustomNameVisible set value 1b
execute if score soupLevel MaryStatus matches 1 as @e[type=minecraft:armor_stand,tag=maryHungry,limit=1] run data modify entity @s CustomNameVisible set value 1b
execute if score soupLevel MaryStatus matches 2 as @e[type=minecraft:armor_stand,tag=maryStarvation,limit=1] run data modify entity @s CustomNameVisible set value 1b
execute if score mutated MaryStatus matches 1 as @e[type=minecraft:armor_stand,tag=maryMutated,limit=1] run data modify entity @s CustomNameVisible set value 1b
execute if score injuredLevel MaryStatus matches 1 as @e[type=minecraft:armor_stand,tag=maryHurt,limit=1] run data modify entity @s CustomNameVisible set value 1b
execute if score injuredLevel MaryStatus matches 2 as @e[type=minecraft:armor_stand,tag=maryAgony,limit=1] run data modify entity @s CustomNameVisible set value 1b
execute if score crazy MaryStatus matches 1 as @e[type=minecraft:armor_stand,tag=maryCrazy,limit=1] run data modify entity @s CustomNameVisible set value 1b
execute if score sick MaryStatus matches 1 as @e[type=minecraft:armor_stand,tag=marySick,limit=1] run data modify entity @s CustomNameVisible set value 1b
execute if score waterLevel MaryStatus matches 1 as @e[type=minecraft:armor_stand,tag=maryThirsty,limit=1] run data modify entity @s CustomNameVisible set value 1b
execute if score waterLevel MaryStatus matches 2 as @e[type=minecraft:armor_stand,tag=maryDehydration,limit=1] run data modify entity @s CustomNameVisible set value 1b
execute if score tired MaryStatus matches 1.. as @e[type=minecraft:armor_stand,tag=maryTired,limit=1] run data modify entity @s CustomNameVisible set value 1b