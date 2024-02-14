execute if score map ItemsBunker matches 1 unless entity @e[x=-3,y=54,z=29,dx=6,dy=4,dz=6,type=minecraft:item_frame,tag=mapBreak] run kill @e[type=minecraft:item_frame,tag=bunkerMap]
execute if score map ItemsBunker matches 1 unless entity @e[x=-3,y=54,z=29,dx=6,dy=4,dz=6,type=minecraft:item_frame,tag=mapBreak] run function mc:states/stages/7_bunker/decorations/items/spawn/spawn_map
execute if score map ItemsBunker matches 0 run kill @e[x=-3,y=54,z=29,dx=6,dy=4,dz=6,tag=bunkerMap]
execute if score map ItemsBunker matches 0 run kill @e[x=-3,y=54,z=29,dx=6,dy=4,dz=6,type=minecraft:area_effect_cloud,tag=hitboxMap]
execute if score map ItemsBunker matches -1 run kill @e[x=-3,y=54,z=29,dx=6,dy=4,dz=6,type=minecraft:item_frame,tag=mapBreak]