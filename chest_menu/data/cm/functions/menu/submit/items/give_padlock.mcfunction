data modify storage minecraft:bundles expeditionGearId append value 13
execute if score expeditionMode Lobby matches 1 run loot insert 2 60 34 loot lt_custom:entities/padlock
scoreboard players set padlock ItemsBunker 0