execute if score cards ItemsBunker matches 1 if entity @s[tag=!setModel] run data modify entity @s ArmorItems[3].tag.CustomModelData set value 5
execute if score cards ItemsBunker matches 1 if entity @s[tag=!setModel] run teleport @s -0.66 55.45 30.42
execute if score cards ItemsBunker matches 1 if entity @s[tag=!setModel] run kill @e[type=minecraft:area_effect_cloud,tag=hitboxCards]
execute if score cards ItemsBunker matches 1 if entity @s[tag=!setModel] run summon area_effect_cloud -0.66 54.76 30.42 {Particle:"block air",Radius:0.2f,Duration:2147483647,Tags:["bunkerHitbox","cards","hitboxCards"]}
execute if score cards ItemsBunker matches 1 if entity @s[tag=!setModel] run tag @s add setModel
execute if score cards ItemsBunker matches 0 run kill @e[tag=cards]
execute if score cards ItemsBunker matches -1 if entity @s[tag=setModel] run data modify entity @s ArmorItems[3].tag.CustomModelData set value 42
execute if score cards ItemsBunker matches -1 if entity @s[tag=setModel] run teleport @s -0.50 55.64 30.45
execute if score cards ItemsBunker matches -1 if entity @s[tag=setModel] run kill @e[type=minecraft:area_effect_cloud,tag=hitboxCards]
execute if score cards ItemsBunker matches -1 if entity @s[tag=setModel] run summon area_effect_cloud -0.55 54.58 30.48 {Particle:"block air",Radius:0.42f,Duration:2147483647,Tags:["bunkerHitbox","cards","hitboxCards"]}
execute if score cards ItemsBunker matches -1 if entity @s[tag=setModel] run tag @s remove setModel