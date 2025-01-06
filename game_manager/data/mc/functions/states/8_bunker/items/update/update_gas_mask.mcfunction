# Exists
execute if score gasMask ItemsBunker matches 1 if entity @s[tag=!setModel] run data modify entity @s ArmorItems[3].tag.CustomModelData set value 9
execute if score gasMask ItemsBunker matches 1 if entity @s[tag=!setModel] run tag @s add setModel
# Empty
execute if score gasMask ItemsBunker matches 0 run kill @e[tag=gasMask]
# Broken
execute if score gasMask ItemsBunker matches -1 if entity @s[tag=setModel] run data modify entity @s ArmorItems[3].tag.CustomModelData set value 44
execute if score gasMask ItemsBunker matches -1 if entity @s[tag=setModel] run tag @s remove setModel