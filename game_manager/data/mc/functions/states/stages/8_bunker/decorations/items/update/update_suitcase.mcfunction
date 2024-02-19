execute if score suitcase ItemsBunker matches 3 if entity @s[tag=!setModel] run data modify entity @s ArmorItems[3].tag.CustomModelData set value 17
execute if score suitcase ItemsBunker matches 3 if entity @s[tag=!setModel] run tag @s add setModel
execute if score suitcase ItemsBunker matches 0 run kill @e[tag=bunkerSuitcase]
execute if score suitcase ItemsBunker matches -1 if entity @s[tag=setModel] run data modify entity @s ArmorItems[3].tag.CustomModelData set value 51
execute if score suitcase ItemsBunker matches -1 if entity @s[tag=setModel] run tag @s remove setModel