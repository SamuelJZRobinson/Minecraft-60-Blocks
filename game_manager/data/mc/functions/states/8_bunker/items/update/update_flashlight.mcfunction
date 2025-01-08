# Exists
execute if score flashlight ItemsBunker matches 1 if entity @s[tag=!setModel] run data modify entity @s ArmorItems[3].tag.CustomModelData set value 8
execute if score flashlight ItemsBunker matches 1 if entity @s[tag=!setModel] run kill @e[type=minecraft:area_effect_cloud,tag=hitboxFlashlight]
execute if score flashlight ItemsBunker matches 1 if entity @s[tag=!setModel] run function mc:states/8_bunker/items/summon/hitboxes/summon_hitbox_flashlight
# Empty
execute if score flashlight ItemsBunker matches 0 run kill @e[tag=flashlight]
# Broken
execute if score flashlight ItemsBunker matches -1 if entity @s[tag=setModel] run data modify entity @s ArmorItems[3].tag.CustomModelData set value 43
execute if score flashlight ItemsBunker matches -1 if entity @s[tag=setModel] run kill @e[type=minecraft:area_effect_cloud,tag=hitboxFlashlight]
execute if score flashlight ItemsBunker matches -1 if entity @s[tag=setModel] run function mc:states/8_bunker/items/summon/hitboxes/summon_hitbox_flashlight_broken
execute if score flashlight ItemsBunker matches -1 if entity @s[tag=setModel] run tag @s remove setModel