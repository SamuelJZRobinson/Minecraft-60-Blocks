execute if score medkit ItemsBunker matches 2 if entity @s[tag=!setModel] run data modify entity @s ArmorItems[3].tag.CustomModelData set value 13
execute if score medkit ItemsBunker matches 2 if entity @s[tag=!setModel] run kill @e[type=minecraft:area_effect_cloud,tag=hitboxMedkit]
execute if score medkit ItemsBunker matches 2 if entity @s[tag=!setModel] run summon area_effect_cloud -2.95 55.24 32.49 {Particle:"block air",Radius:0.3f,Duration:2147483647,Tags:["bunkerHitbox","medkit","hitboxMedkit"]}
execute if score medkit ItemsBunker matches 2 if entity @s[tag=!setModel] run tag @s add setModel
execute if score medkit ItemsBunker matches 0 run kill @e[tag=medkit]
execute if score medkit ItemsBunker matches -1 if entity @s[tag=setModel] run data modify entity @s ArmorItems[3].tag.CustomModelData set value 46
execute if score medkit ItemsBunker matches -1 if entity @s[tag=setModel] run kill @e[type=minecraft:area_effect_cloud,tag=hitboxMedkit]
execute if score medkit ItemsBunker matches -1 if entity @s[tag=setModel] run summon area_effect_cloud -2.95 54.70 32.49 {Particle:"block air",Radius:0.3f,Duration:2147483647,Tags:["bunkerHitbox","medkit","hitboxMedkit"]}
execute if score medkit ItemsBunker matches -1 if entity @s[tag=setModel] run summon area_effect_cloud -2.95 55.20 32.49 {Particle:"block air",Radius:0.3f,Duration:2147483647,Tags:["bunkerHitbox","medkit","hitboxMedkit"]}
execute if score medkit ItemsBunker matches -1 if entity @s[tag=setModel] run summon area_effect_cloud -2.95 55.43 32.49 {Particle:"block air",Radius:0.3f,Duration:2147483647,Tags:["bunkerHitbox","medkit","hitboxMedkit"]}
execute if score medkit ItemsBunker matches -1 if entity @s[tag=setModel] run tag @s remove setModel