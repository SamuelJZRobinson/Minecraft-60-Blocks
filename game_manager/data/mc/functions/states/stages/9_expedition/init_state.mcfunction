tellraw @a "state 9"

# Call Protocol
execute if score doPovExpedition Settings matches 1 run function mc:states/stages/9_expedition/init_pov
execute if score doPovExpedition Settings matches 0 run function mc:states/stages/9_expedition/init_auto