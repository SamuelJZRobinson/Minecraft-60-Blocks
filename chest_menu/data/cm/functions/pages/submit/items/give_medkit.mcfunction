data modify storage minecraft:bundles expeditionGearId append value 12
execute if score expeditionMode Lobby matches 1 run loot insert 2 60 34 loot lt_custom:empty/medkit_tool
scoreboard players set medkit ItemsBunker 0