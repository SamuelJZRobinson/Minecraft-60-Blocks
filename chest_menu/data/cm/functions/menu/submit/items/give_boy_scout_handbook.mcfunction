data modify storage minecraft:bundles expeditionGearId append value 3
execute if score expeditionMode Lobby matches 1 run loot insert 2 60 34 loot lt_custom:empty/boy_scout_handbook_tool
scoreboard players set boyScoutHandbook ItemsBunker 0