# Exists
execute if score boyScoutHandbook ItemsBunker matches 1 if entity @s[tag=!setModel] run data modify entity @s ArmorItems[3].tag.CustomModelData set value 3
execute if score boyScoutHandbook ItemsBunker matches 1 if entity @s[tag=!setModel] run kill @e[type=minecraft:area_effect_cloud,tag=hitboxHandbook]
execute if score boyScoutHandbook ItemsBunker matches 1 if entity @s[tag=!setModel] run function mc:states/8_bunker/items/summon/hitboxes/summon_hitbox_boy_scout_handbook
execute if score boyScoutHandbook ItemsBunker matches 1 if entity @s[tag=!setModel] run tag @s add setModel
# Empty
execute if score boyScoutHandbook ItemsBunker matches 0 run kill @e[tag=boyScoutHandbook]
# Broken
execute if score boyScoutHandbook ItemsBunker matches -1 if entity @s[tag=setModel] run data modify entity @s ArmorItems[3].tag.CustomModelData set value 50
execute if score boyScoutHandbook ItemsBunker matches -1 if entity @s[tag=setModel] run kill @e[type=minecraft:area_effect_cloud,tag=hitboxHandbook]
execute if score boyScoutHandbook ItemsBunker matches -1 if entity @s[tag=setModel] run summon area_effect_cloud 3.65 55.60 31.52 {Particle:"block air",Radius:0.42f,Duration:2147483647,Tags:["bunkerHitbox","boyScoutHandbook","hitboxHandbook"]}
execute if score boyScoutHandbook ItemsBunker matches -1 if entity @s[tag=setModel] run tag @s remove setModel