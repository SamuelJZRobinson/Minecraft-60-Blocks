# Exists
execute if score checkers ItemsBunker matches 1 if entity @s[tag=!setModel] run data modify entity @s ArmorItems[3].tag.CustomModelData set value 6
execute if score checkers ItemsBunker matches 1 if entity @s[tag=!setModel] run kill @e[type=minecraft:interaction,tag=hitboxCheckers]
execute if score checkers ItemsBunker matches 1 if entity @s[tag=!setModel] run function mc:states/8_bunker/items/summon/hitboxes/summon_hitbox_checkers
execute if score checkers ItemsBunker matches 1 if entity @s[tag=!setModel] run tag @s add setModel
# Empty
execute if score checkers ItemsBunker matches 0 run kill @e[tag=checkers]
# Broken
execute if score checkers ItemsBunker matches -1 if entity @s[tag=setModel] run data modify entity @s ArmorItems[3].tag.CustomModelData set value 48
execute if score checkers ItemsBunker matches -1 if entity @s[tag=setModel] run kill @e[type=minecraft:interaction,tag=hitboxCheckers]
execute if score checkers ItemsBunker matches -1 if entity @s[tag=setModel] run function mc:states/8_bunker/items/summon/hitboxes/summon_hitbox_checkers_broken
execute if score checkers ItemsBunker matches -1 if entity @s[tag=setModel] run tag @s remove setModel