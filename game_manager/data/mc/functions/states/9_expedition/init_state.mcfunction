tellraw @a "state 9"

# Start Expedition
execute if score doPovExpedition Settings matches 1 run function mc:states/9_expedition/init_pov
execute if score doPovExpedition Settings matches 0 run function mc:states/9_expedition/init_auto