# Exists
execute if score armour ItemsBunker matches 3 if entity @s[tag=!setModel] run data modify entity @s ArmorItems[3].tag.CustomModelData set value 54
execute if score armour ItemsBunker matches 3 if entity @s[tag=!setModel] run tag @s add setModel
# Empty
execute if score armour ItemsBunker matches 0 run kill @e[tag=armour]
# Broken
execute if score armour ItemsBunker matches -1 if entity @s[tag=setModel] run data modify entity @s ArmorItems[3].tag.CustomModelData set value 55
execute if score armour ItemsBunker matches -1 if entity @s[tag=setModel] run tag @s remove setModel