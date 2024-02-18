data modify storage minecraft:bundles expeditionGearId append value 5
execute if score expeditionMode Lobby matches 1 run loot insert 2 60 34 loot lt_custom:entities/cards
scoreboard players set cards ItemsBunker 0