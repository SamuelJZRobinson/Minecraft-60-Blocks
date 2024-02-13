execute if score axe ItemsBunker matches 2 if entity @s[tag=!setModel] run data modify entity @s ArmorItems[3].tag.CustomModelData set value 21
execute if score axe ItemsBunker matches 2 if entity @s[tag=!setModel] run kill @e[x=-3,y=54,z=29,dx=6,dy=4,dz=6,type=minecraft:area_effect_cloud,tag=hitboxAxe]
execute if score axe ItemsBunker matches 2 if entity @s[tag=!setModel] run summon area_effect_cloud 3.70 54.00 31.60 {Particle:"block air",Radius:0.3f,Duration:2147483647,Tags:["bunkerHitbox","bunkerAxe","hitboxAxe"]}
execute if score axe ItemsBunker matches 2 if entity @s[tag=!setModel] run summon area_effect_cloud 3.70 54.60 31.60 {Particle:"block air",Radius:0.3f,Duration:2147483647,Tags:["bunkerHitbox","bunkerAxe","hitboxAxe"]}
execute if score axe ItemsBunker matches 2 if entity @s[tag=!setModel] run tag @s add setModel
execute if score axe ItemsBunker matches 0 run kill @e[x=-3,y=54,z=29,dx=6,dy=4,dz=6,tag=bunkerAxe]
execute if score axe ItemsBunker matches -1 if entity @s[tag=setModel] run data modify entity @s ArmorItems[3].tag.CustomModelData set value 49
execute if score axe ItemsBunker matches -1 if entity @s[tag=setModel] run kill @e[x=-3,y=54,z=29,dx=6,dy=4,dz=6,type=minecraft:area_effect_cloud,tag=hitboxAxe]
execute if score axe ItemsBunker matches -1 if entity @s[tag=setModel] run summon area_effect_cloud 3.58 53.58 31.32 {Particle:"block air",Radius:0.48f,Duration:2147483647,Tags:["bunkerHitbox","bunkerAxe","hitboxAxe"]}
execute if score axe ItemsBunker matches -1 if entity @s[tag=setModel] run tag @s remove setModel