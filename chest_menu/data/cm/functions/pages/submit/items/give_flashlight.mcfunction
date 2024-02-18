data modify storage minecraft:bundles expeditionGearId append value 7
execute if score expeditionMode Lobby matches 1 run loot insert 2 60 34 loot lt_custom:entities/flashlight_lore
scoreboard players set flashlight ItemsBunker 0