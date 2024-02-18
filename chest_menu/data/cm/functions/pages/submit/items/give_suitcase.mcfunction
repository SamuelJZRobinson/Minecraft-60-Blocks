data modify storage minecraft:bundles expeditionGearId append value 16
execute if score expeditionMode Lobby matches 1 run loot insert 2 60 34 loot lt_custom:empty/suitcase_tool
scoreboard players set suitcase ItemsBunker 0