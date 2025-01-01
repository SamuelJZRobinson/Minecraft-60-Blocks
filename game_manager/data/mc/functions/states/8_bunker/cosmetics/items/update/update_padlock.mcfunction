execute if score padlock ItemsBunker matches 1 if entity @s[tag=!setModel] run data modify entity @s ArmorItems[3].tag.CustomModelData set value 23
execute if score padlock ItemsBunker matches 1 if entity @s[tag=!setModel] run tag @s add setModel
execute if score padlock ItemsBunker matches 0 run kill @e[tag=bunkerPadlock]
execute if score padlock ItemsBunker matches -1 if entity @s[tag=setModel] run data modify entity @s ArmorItems[3].tag.CustomModelData set value 131
execute if score padlock ItemsBunker matches -1 if entity @s[tag=setModel] run tag @s remove setModel