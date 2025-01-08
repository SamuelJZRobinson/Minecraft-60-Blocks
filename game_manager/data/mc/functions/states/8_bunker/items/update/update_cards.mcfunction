# Exists
execute if score cards ItemsBunker matches 1 if entity @s[tag=!setModel] run data modify entity @s ArmorItems[3].tag.CustomModelData set value 5
execute if score cards ItemsBunker matches 1 if entity @s[tag=!setModel] run teleport @s -0.66 55.45 30.42
execute if score cards ItemsBunker matches 1 if entity @s[tag=!setModel] run kill @e[type=minecraft:interaction,tag=hitboxCards]
execute if score cards ItemsBunker matches 1 if entity @s[tag=!setModel] run function mc:states/8_bunker/items/summon/hitboxes/summon_hitbox_cards
execute if score cards ItemsBunker matches 1 if entity @s[tag=!setModel] run tag @s add setModel
# Empty
execute if score cards ItemsBunker matches 0 run kill @e[tag=cards]
# Broken
execute if score cards ItemsBunker matches -1 if entity @s[tag=setModel] run data modify entity @s ArmorItems[3].tag.CustomModelData set value 42
execute if score cards ItemsBunker matches -1 if entity @s[tag=setModel] run teleport @s -0.50 55.64 30.45
execute if score cards ItemsBunker matches -1 if entity @s[tag=setModel] run kill @e[type=minecraft:interaction,tag=hitboxCards]
execute if score cards ItemsBunker matches -1 if entity @s[tag=setModel] run function mc:states/8_bunker/items/summon/hitboxes/summon_hitbox_cards_broken
execute if score cards ItemsBunker matches -1 if entity @s[tag=setModel] run tag @s remove setModel