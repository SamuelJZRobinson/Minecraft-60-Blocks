data modify storage minecraft:bundles expeditionGearId append value 14
execute if score expeditionMode Lobby matches 1 run loot insert 2 60 34 loot lt_custom:empty/radio_tool
scoreboard players set radio ItemsBunker 0