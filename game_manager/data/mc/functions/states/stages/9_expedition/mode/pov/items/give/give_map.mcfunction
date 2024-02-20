# Set Data
data modify storage minecraft:bundles expeditionGearId append value 11
scoreboard players set map ItemsBunker 0
# Give POV Item
execute if score doPovExpedition Settings matches 1 run function mc:states/stages/9_expedition/mode/pov/items/give/give_map_items