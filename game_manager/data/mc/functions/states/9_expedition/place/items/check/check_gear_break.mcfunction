# Auto
execute if score doPovExpedition Settings matches 0 if data storage minecraft:bundles expeditionGearId run function mc:states/9_expedition/place/items/set/set_gear_break

# POV
execute if score doPovExpedition Settings matches 1 run data remove storage minecraft:bundles expeditionGearId
execute if score doPovExpedition Settings matches 1 run scoreboard players add stage ItemsExpedition 1
execute if score doPovExpedition Settings matches 1 run schedule function mc:states/9_expedition/place/manage_placement 1t replace