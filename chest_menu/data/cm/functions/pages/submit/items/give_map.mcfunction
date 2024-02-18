data modify storage minecraft:bundles expeditionGearId append value 11
execute if score expeditionMode Lobby matches 1 run function cm:pages/submit/items/give_map_items
scoreboard players set map ItemsBunker 0