# Set Data
data modify storage minecraft:bundles expeditionGearId append value 4
scoreboard players set bugSpray ItemsBunker 0
# Give POV Item
execute if score doPovExpedition Settings matches 1 run loot insert 2 60 34 loot lt_custom:empty/bug_spray_tool
execute if score doPovExpedition Settings matches 1 run loot insert 2 60 34 loot lt_custom:empty/bug_spray_ammo