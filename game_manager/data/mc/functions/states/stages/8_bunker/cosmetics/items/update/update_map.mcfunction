execute if score map ItemsBunker matches 1 unless entity @e[type=minecraft:item_frame,tag=mapBreak] run kill @e[type=minecraft:item_frame,tag=bunkerMap]
execute if score map ItemsBunker matches 1 unless entity @e[type=minecraft:item_frame,tag=mapBreak] run function mc:states/stages/8_bunker/cosmetics/items/spawn/spawn_map
execute if score map ItemsBunker matches 0 run kill @e[tag=bunkerMap]
execute if score map ItemsBunker matches 0 run kill @e[type=minecraft:area_effect_cloud,tag=hitboxMap]
execute if score map ItemsBunker matches -1 run kill @e[type=minecraft:item_frame,tag=mapBreak]