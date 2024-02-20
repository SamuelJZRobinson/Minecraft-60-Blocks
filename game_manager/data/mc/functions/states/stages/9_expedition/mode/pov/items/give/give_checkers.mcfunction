# Set Data
data modify storage minecraft:bundles expeditionGearId append value 6
scoreboard players set checkers ItemsBunker 0
# Give POV Item
execute if score doPovExpedition Settings matches 1 run loot insert 2 60 34 loot lt_custom:entities/checkers