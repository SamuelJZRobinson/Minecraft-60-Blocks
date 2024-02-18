data modify storage minecraft:bundles expeditionGearId append value 4
execute if score expeditionMode Lobby matches 1 run loot insert 2 60 34 loot lt_custom:empty/bug_spray_tool
execute if score expeditionMode Lobby matches 1 run loot insert 2 60 34 loot lt_custom:empty/bug_spray_ammo
scoreboard players set bugSpray ItemsBunker 0