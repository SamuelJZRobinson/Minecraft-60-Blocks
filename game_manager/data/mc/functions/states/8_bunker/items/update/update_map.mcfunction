# Exists
execute if score map ItemsBunker matches 1 unless entity @e[type=minecraft:item_frame,tag=mapBreak] run kill @e[type=minecraft:item_frame,tag=map]
execute if score map ItemsBunker matches 1 unless entity @e[type=minecraft:item_frame,tag=mapBreak] run function mc:states/8_bunker/items/summon/summon_map
# Empty
execute if score map ItemsBunker matches 0 run kill @e[tag=map]
# Broken
execute if score map ItemsBunker matches 0 run kill @e[type=minecraft:interaction,tag=hitboxMap]
execute if score map ItemsBunker matches -1 run kill @e[type=minecraft:item_frame,tag=mapBreak]