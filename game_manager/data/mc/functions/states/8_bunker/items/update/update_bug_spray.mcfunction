# Exists
execute if score bugSpray ItemsBunker matches 1 if entity @s[tag=!setModel] run data modify entity @s ArmorItems[3].tag.CustomModelData set value 4
execute if score bugSpray ItemsBunker matches 1 if entity @s[tag=!setModel] run tag @s add setModel
# Empty
execute if score bugSpray ItemsBunker matches 0 run kill @e[tag=bugSpray]
# Broken
execute if score bugSpray ItemsBunker matches -1 if entity @s[tag=setModel] run data modify entity @s ArmorItems[3].tag.CustomModelData set value 128
execute if score bugSpray ItemsBunker matches -1 if entity @s[tag=setModel] run tag @s remove setModel