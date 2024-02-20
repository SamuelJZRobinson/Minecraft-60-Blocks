# Set Data
data modify storage minecraft:bundles expeditionGearId append value 7
scoreboard players set flashlight ItemsBunker 0
# Give POV Item
execute if score doPovExpedition Settings matches 1 run loot insert 2 60 34 loot lt_custom:empty/flashlight_tool