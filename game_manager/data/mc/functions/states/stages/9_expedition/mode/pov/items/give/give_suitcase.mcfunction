# Set Data
data modify storage minecraft:bundles expeditionGearId append value 16
scoreboard players set suitcase ItemsBunker 0
# Give POV Item
execute if score doPovExpedition Settings matches 1 run loot insert 2 60 34 loot lt_custom:empty/suitcase_tool