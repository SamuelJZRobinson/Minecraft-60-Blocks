execute if score harmonica ItemsBunker matches 1 if entity @s[tag=!setModel] run data modify entity @s ArmorItems[3].tag.CustomModelData set value 52
execute if score harmonica ItemsBunker matches 1 if entity @s[tag=!setModel] run teleport @s -0.12 55.45 30.12
execute if score harmonica ItemsBunker matches 1 if entity @s[tag=!setModel] run tag @s add setModel
execute if score harmonica ItemsBunker matches 0 run kill @e[tag=harmonica]
execute if score harmonica ItemsBunker matches -1 if entity @s[tag=setModel] run data modify entity @s ArmorItems[3].tag.CustomModelData set value 53
execute if score harmonica ItemsBunker matches -1 if entity @s[tag=setModel] run teleport @s -0.12 55.56 30.12
execute if score harmonica ItemsBunker matches -1 if entity @s[tag=setModel] run tag @s remove setModel