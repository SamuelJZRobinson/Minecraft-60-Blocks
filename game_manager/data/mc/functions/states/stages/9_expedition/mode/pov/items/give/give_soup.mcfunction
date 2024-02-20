# Set Data
data modify storage minecraft:bundles expeditionGearId append value 15
execute if score doPovExpedition Settings matches 0 run scoreboard players remove cans ItemsBunker 4
# Give POV Item
execute if score doPovExpedition Settings matches 1 run loot insert 2 60 34 loot lt_custom:empty/soup_tool