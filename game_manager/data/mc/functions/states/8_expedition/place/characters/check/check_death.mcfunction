# Auto
execute if score doPovExpedition Settings matches 0 run function mc:states/8_expedition/place/characters/set/set_death

# POV
execute if score doPovExpedition Settings matches 1 run scoreboard players add stage ItemsExpedition 1
execute if score doPovExpedition Settings matches 1 run schedule function mc:states/8_expedition/place/manage_placement 1t replace