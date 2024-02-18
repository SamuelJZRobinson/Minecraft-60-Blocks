data modify storage minecraft:bundles expeditionGearId append value 1
execute if score expeditionMode Lobby matches 1 run loot insert 2 60 34 loot lt_custom:empty/ammo_tool
scoreboard players set ammo ItemsBunker 0