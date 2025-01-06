# Exists
execute if score checkers ItemsBunker matches 1 if entity @s[tag=!setModel] run data modify entity @s ArmorItems[3].tag.CustomModelData set value 6
execute if score checkers ItemsBunker matches 1 if entity @s[tag=!setModel] run kill @e[type=minecraft:area_effect_cloud,tag=hitboxCheckers]
execute if score checkers ItemsBunker matches 1 if entity @s[tag=!setModel] run summon area_effect_cloud 0.50 54.62 30.50 {Particle:"block air",Radius:0.385f,Duration:2147483647,Tags:["bunkerHitbox","checkers","hitboxCheckers"]}
execute if score checkers ItemsBunker matches 1 if entity @s[tag=!setModel] run tag @s add setModel
# Empty
execute if score checkers ItemsBunker matches 0 run kill @e[tag=checkers]
# Broken
execute if score checkers ItemsBunker matches -1 if entity @s[tag=setModel] run data modify entity @s ArmorItems[3].tag.CustomModelData set value 48
execute if score checkers ItemsBunker matches -1 if entity @s[tag=setModel] run kill @e[type=minecraft:area_effect_cloud,tag=hitboxCheckers]
execute if score checkers ItemsBunker matches -1 if entity @s[tag=setModel] run summon area_effect_cloud 0.50 54.87 30.50 {Particle:"block air",Radius:0.385f,Duration:2147483647,Tags:["bunkerHitbox","checkers","hitboxCheckers"]}
execute if score checkers ItemsBunker matches -1 if entity @s[tag=setModel] run tag @s remove setModel