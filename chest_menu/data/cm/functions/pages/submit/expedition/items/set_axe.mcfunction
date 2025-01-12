# Set Data
data modify storage minecraft:bundles expeditionGearId append value 2
scoreboard players set axe ItemsBunker 0

# Insert POV Item
execute if score doPovExpedition Settings matches 1 run loot insert 2 60 34 loot lt_custom:empty/axe_tool