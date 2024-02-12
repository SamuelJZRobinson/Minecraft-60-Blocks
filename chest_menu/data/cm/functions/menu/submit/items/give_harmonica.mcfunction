data modify storage minecraft:bundles expeditionGearId append value 10
execute if score expeditionMode Lobby matches 1 run loot insert 2 60 34 loot lt_custom:empty/harmonica_tool
execute if score expeditionMode Lobby matches 1 run loot insert 2 60 34 loot lt_custom:empty/harmonica_ammo
scoreboard players set harmonica ItemsBunker 0