# Notes
  # In auto expeditions characters may get 0 items but this would be unfun for players in POV.

# Auto
execute if score doPovExpedition Settings matches 0 run function mc:states/9_expedition/place/items/set/set_loot_none

# POV
execute if score doPovExpedition Settings matches 1 run scoreboard players add stage ItemsExpedition 1
execute if score doPovExpedition Settings matches 1 run schedule function mc:states/9_expedition/place/manage_placement 1t replace