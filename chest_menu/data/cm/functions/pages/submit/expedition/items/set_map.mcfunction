# Set Data
data modify storage minecraft:bundles expeditionGearId append value 11
scoreboard players set map ItemsBunker 0

# Insert POV Item
execute if score doPovExpedition Settings matches 1 run function cm:pages/submit/expedition/items/set_map_items