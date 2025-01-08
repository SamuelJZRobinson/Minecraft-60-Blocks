# Exists
execute if score medkit ItemsBunker matches 2 if entity @s[tag=!setModel] run data modify entity @s ArmorItems[3].tag.CustomModelData set value 13
execute if score medkit ItemsBunker matches 2 if entity @s[tag=!setModel] run kill @e[type=minecraft:interaction,tag=hitboxMedkit]
execute if score medkit ItemsBunker matches 2 if entity @s[tag=!setModel] run function mc:states/8_bunker/items/summon/hitboxes/summon_hitbox_medkit
execute if score medkit ItemsBunker matches 2 if entity @s[tag=!setModel] run tag @s add setModel
# Empty
execute if score medkit ItemsBunker matches 0 run kill @e[tag=medkit]
# Broken
execute if score medkit ItemsBunker matches -1 if entity @s[tag=setModel] run data modify entity @s ArmorItems[3].tag.CustomModelData set value 46
execute if score medkit ItemsBunker matches -1 if entity @s[tag=setModel] run kill @e[type=minecraft:interaction,tag=hitboxMedkit]
execute if score medkit ItemsBunker matches -1 if entity @s[tag=setModel] run function mc:states/8_bunker/items/summon/hitboxes/summon_hitbox_medkit_broken
execute if score medkit ItemsBunker matches -1 if entity @s[tag=setModel] run tag @s remove setModel