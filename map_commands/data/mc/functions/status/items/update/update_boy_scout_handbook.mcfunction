execute if score boyScoutHandbook ItemsBunker matches 1 if entity @s[tag=!setModel] run data modify entity @s ArmorItems[3].tag.CustomModelData set value 3
execute if score boyScoutHandbook ItemsBunker matches 1 if entity @s[tag=!setModel] run kill @e[x=-3,y=54,z=29,dx=6,dy=4,dz=6,type=minecraft:area_effect_cloud,tag=hitboxHandbook]
execute if score boyScoutHandbook ItemsBunker matches 1 if entity @s[tag=!setModel] run summon area_effect_cloud 3.93 56.00 31.50 {Particle:"block air",Radius:0.2f,Duration:2147483647,Tags:["bunkerHitbox","bunkerHandbook","hitboxHandbook"]}
execute if score boyScoutHandbook ItemsBunker matches 1 if entity @s[tag=!setModel] run tag @s add setModel
execute if score boyScoutHandbook ItemsBunker matches 0 run kill @e[x=-3,y=54,z=29,dx=6,dy=4,dz=6,tag=bunkerHandbook]
execute if score boyScoutHandbook ItemsBunker matches -1 if entity @s[tag=setModel] run data modify entity @s ArmorItems[3].tag.CustomModelData set value 50
execute if score boyScoutHandbook ItemsBunker matches -1 if entity @s[tag=setModel] run kill @e[x=-3,y=54,z=29,dx=6,dy=4,dz=6,type=minecraft:area_effect_cloud,tag=hitboxHandbook]
execute if score boyScoutHandbook ItemsBunker matches -1 if entity @s[tag=setModel] run summon area_effect_cloud 3.65 55.60 31.52 {Particle:"block air",Radius:0.42f,Duration:2147483647,Tags:["bunkerHitbox","bunkerHandbook","hitboxHandbook"]}
execute if score boyScoutHandbook ItemsBunker matches -1 if entity @s[tag=setModel] run tag @s remove setModel