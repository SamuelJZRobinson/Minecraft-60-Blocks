# Exists
execute if score axe ItemsBunker matches 2 if entity @s[tag=!setModel] run data modify entity @s ArmorItems[3].tag.CustomModelData set value 21
execute if score axe ItemsBunker matches 2 if entity @s[tag=!setModel] run kill @e[type=minecraft:area_effect_cloud,tag=hitboxAxe]
execute if score axe ItemsBunker matches 2 if entity @s[tag=!setModel] run function mc:states/8_bunker/items/summon/hitboxes/summon_hitbox_axe
execute if score axe ItemsBunker matches 2 if entity @s[tag=!setModel] run tag @s add setModel
# Empty
execute if score axe ItemsBunker matches 0 run kill @e[tag=axe]
# Broken
execute if score axe ItemsBunker matches -1 if entity @s[tag=setModel] run data modify entity @s ArmorItems[3].tag.CustomModelData set value 49
execute if score axe ItemsBunker matches -1 if entity @s[tag=setModel] run kill @e[type=minecraft:area_effect_cloud,tag=hitboxAxe]
execute if score axe ItemsBunker matches -1 if entity @s[tag=setModel] run function mc:states/8_bunker/items/summon/hitboxes/summon_hitbox_axe_broken
execute if score axe ItemsBunker matches -1 if entity @s[tag=setModel] run tag @s remove setModel