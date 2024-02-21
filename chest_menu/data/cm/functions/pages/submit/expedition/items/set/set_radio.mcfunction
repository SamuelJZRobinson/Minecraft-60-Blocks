# Set Data
data modify storage minecraft:bundles expeditionGearId append value 14
scoreboard players set radio ItemsBunker 0

# Insert POV Item
execute if score doPovExpedition Settings matches 1 run loot insert 2 60 34 loot lt_custom:empty/radio_tool