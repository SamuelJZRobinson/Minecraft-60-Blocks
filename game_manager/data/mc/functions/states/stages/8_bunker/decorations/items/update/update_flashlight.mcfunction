execute if score flashlight ItemsBunker matches 1 if entity @s[tag=!setModel] run data modify entity @s ArmorItems[3].tag.CustomModelData set value 8
execute if score flashlight ItemsBunker matches 1 if entity @s[tag=!setModel] run kill @e[type=minecraft:area_effect_cloud,tag=hitboxFlashlight]
execute if score flashlight ItemsBunker matches 1 if entity @s[tag=!setModel] run summon area_effect_cloud 3.50 56.00 32.50 {Particle:"block air",Radius:0.125f,Duration:2147483647,Tags:["bunkerHitbox","bunkerFlashlight","hitboxFlashlight"]}
execute if score flashlight ItemsBunker matches 1 if entity @s[tag=!setModel] run tag @s add setModel
execute if score flashlight ItemsBunker matches 0 run kill @e[tag=bunkerFlashlight]
execute if score flashlight ItemsBunker matches -1 if entity @s[tag=setModel] run data modify entity @s ArmorItems[3].tag.CustomModelData set value 43
execute if score flashlight ItemsBunker matches -1 if entity @s[tag=setModel] run kill @e[type=minecraft:area_effect_cloud,tag=hitboxFlashlight]
execute if score flashlight ItemsBunker matches -1 if entity @s[tag=setModel] run summon area_effect_cloud 3.54 55.70 32.52 {Particle:"block air",Radius:0.3f,Duration:2147483647,Tags:["bunkerHitbox","bunkerFlashlight","hitboxFlashlight"]}
execute if score flashlight ItemsBunker matches -1 if entity @s[tag=setModel] run tag @s remove setModel