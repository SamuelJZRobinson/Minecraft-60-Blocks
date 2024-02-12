data modify storage minecraft:bundles expeditionGearId append value 8
execute if score expeditionMode Lobby matches 1 run loot insert 2 60 34 loot lt_custom:empty/gas_mask_tool
scoreboard players set gasMask ItemsBunker 0