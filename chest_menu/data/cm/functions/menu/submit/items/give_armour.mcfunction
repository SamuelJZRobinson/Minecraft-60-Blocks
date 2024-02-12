data modify storage minecraft:bundles expeditionGearId append value 18
execute if score expeditionMode Lobby matches 1 run loot insert 2 60 34 loot lt_custom:empty/body_armour_tool
scoreboard players set armour ItemsBunker 0