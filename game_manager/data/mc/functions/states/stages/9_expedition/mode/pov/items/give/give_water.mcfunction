# Set Data
data modify storage minecraft:bundles expeditionGearId append value 17
execute if score doPovExpedition Settings matches 0 run scoreboard players remove bottles ItemsBunker 4
# Give POV Item
execute if score doPovExpedition Settings matches 1 run loot insert 2 60 34 loot lt_custom:empty/water_tool