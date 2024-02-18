data modify storage minecraft:bundles expeditionGearId append value 2
execute if score expeditionMode Lobby matches 1 run loot insert 2 60 34 loot lt_custom:empty/axe_tool
scoreboard players set axe ItemsBunker 0