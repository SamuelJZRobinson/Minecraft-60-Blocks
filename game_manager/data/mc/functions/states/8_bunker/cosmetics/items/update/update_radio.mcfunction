execute if score radio ItemsBunker matches 1 if entity @s[tag=!setModel] run data modify entity @s ArmorItems[3].tag.CustomModelData set value 15
execute if score radio ItemsBunker matches 1 if entity @s[tag=!setModel] run tag @s add setModel
execute if score radio ItemsBunker matches 0 run kill @e[tag=radio]
execute if score radio ItemsBunker matches -1 if entity @s[tag=setModel] run data modify entity @s ArmorItems[3].tag.CustomModelData set value 47
execute if score radio ItemsBunker matches -1 if entity @s[tag=setModel] run tag @s remove setModel