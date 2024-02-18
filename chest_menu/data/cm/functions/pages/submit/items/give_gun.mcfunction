data modify storage minecraft:bundles expeditionGearId append value 9
execute if score expeditionMode Lobby matches 1 run loot insert 2 60 34 loot lt_custom:empty/gun_tool
execute if score expeditionMode Lobby matches 1 run loot insert 2 60 34 loot lt_custom:empty/gun_ammo
scoreboard players set gun ItemsBunker 0