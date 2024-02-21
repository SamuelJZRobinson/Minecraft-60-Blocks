# Set Data
data modify storage minecraft:bundles expeditionGearId append value 18
scoreboard players set armour ItemsBunker 0
scoreboard players set hasArmour ItemsExpedition 1

# Insert POV Item
execute if score doPovExpedition Settings matches 1 run loot insert 2 60 34 loot lt_custom:empty/body_armour_tool