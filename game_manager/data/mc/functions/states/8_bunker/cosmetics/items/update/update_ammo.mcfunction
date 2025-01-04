execute if score ammo ItemsBunker matches 1 if entity @s[tag=!setModel] run data modify entity @s ArmorItems[3].tag.CustomModelData set value 1
execute if score ammo ItemsBunker matches 1 if entity @s[tag=!setModel] run tag @s add setModel
execute if score ammo ItemsBunker matches 0 run kill @e[tag=ammo]
execute if score ammo ItemsBunker matches -1 if entity @s[tag=setModel] run data modify entity @s ArmorItems[3].tag.CustomModelData set value 129
execute if score ammo ItemsBunker matches -1 if entity @s[tag=setModel] run tag @s remove setModel