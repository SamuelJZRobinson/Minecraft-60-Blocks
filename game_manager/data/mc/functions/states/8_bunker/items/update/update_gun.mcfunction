# Exists
execute if score gun ItemsBunker matches 2 if entity @s[tag=!setModel] run data modify entity @s ArmorItems[3].tag.CustomModelData set value 22
execute if score gun ItemsBunker matches 2 if entity @s[tag=!setModel] run tag @s add setModel
# Empty
execute if score gun ItemsBunker matches 0 run kill @e[tag=gun]
# Broken
execute if score gun ItemsBunker matches -1 if entity @s[tag=setModel] run data modify entity @s ArmorItems[3].tag.CustomModelData set value 45
execute if score gun ItemsBunker matches -1 if entity @s[tag=setModel] run tag @s remove setModel