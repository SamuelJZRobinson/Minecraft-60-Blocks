data modify storage minecraft:bundles expeditionGearId append value 17
execute if score expeditionMode Lobby matches 1 run loot insert 2 60 34 loot lt_custom:empty/water_tool
execute if score expeditionMode Lobby matches 0 run scoreboard players remove bottles ItemsBunker 4