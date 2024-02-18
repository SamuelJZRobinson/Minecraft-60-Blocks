data modify storage minecraft:bundles expeditionGearId append value 6
execute if score expeditionMode Lobby matches 1 run loot insert 2 60 34 loot lt_custom:entities/checkers
scoreboard players set checkers ItemsBunker 0