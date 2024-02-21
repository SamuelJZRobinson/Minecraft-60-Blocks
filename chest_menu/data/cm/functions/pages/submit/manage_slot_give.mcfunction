# Setup
execute if score slotNumber MenuExplore matches 5 run scoreboard players set slotNumber MenuExplore 1

# Get Slot Selection
execute if score slotNumber MenuExplore matches 1 store result score slotSelection MenuExplore run scoreboard players get slotOne MenuExplore
execute if score slotNumber MenuExplore matches 2 store result score slotSelection MenuExplore run scoreboard players get slotTwo MenuExplore
execute if score slotNumber MenuExplore matches 3 store result score slotSelection MenuExplore run scoreboard players get slotThree MenuExplore
execute if score slotNumber MenuExplore matches 4 store result score slotSelection MenuExplore run scoreboard players get slotFour MenuExplore

# Adjust Scores
execute if score slotNumber MenuExplore matches 2..4 if score slotSelection MenuExplore matches 2.. run scoreboard players add slotSelection MenuExplore 1

# Award Items
execute if score slotSelection MenuExplore matches 2 run function mc:states/stages/9_expedition/mode/pov/items/give/give_suitcase
execute if score slotSelection MenuExplore matches 3 run function mc:states/stages/9_expedition/mode/pov/items/give/give_ammo
execute if score slotSelection MenuExplore matches 4 run function mc:states/stages/9_expedition/mode/pov/items/give/give_armour
execute if score slotSelection MenuExplore matches 4 run scoreboard players set hasArmour ItemsExpedition 1
execute if score slotSelection MenuExplore matches 5 run function mc:states/stages/9_expedition/mode/pov/items/give/give_axe
execute if score slotSelection MenuExplore matches 6 run function mc:states/stages/9_expedition/mode/pov/items/give/give_boy_scout_handbook
execute if score slotSelection MenuExplore matches 7 run function mc:states/stages/9_expedition/mode/pov/items/give/give_bug_spray
execute if score slotSelection MenuExplore matches 8 run function mc:states/stages/9_expedition/mode/pov/items/give/give_cards
execute if score slotSelection MenuExplore matches 9 run function mc:states/stages/9_expedition/mode/pov/items/give/give_checkers
execute if score slotSelection MenuExplore matches 10 run function mc:states/stages/9_expedition/mode/pov/items/give/give_flashlight
execute if score slotSelection MenuExplore matches 11 run function mc:states/stages/9_expedition/mode/pov/items/give/give_gas_mask
execute if score slotSelection MenuExplore matches 11 run scoreboard players set hasGasMask ItemsExpedition 1
execute if score slotSelection MenuExplore matches 12 run function mc:states/stages/9_expedition/mode/pov/items/give/give_gun
execute if score slotSelection MenuExplore matches 13 run function mc:states/stages/9_expedition/mode/pov/items/give/give_harmonica
execute if score slotSelection MenuExplore matches 14 run function mc:states/stages/9_expedition/mode/pov/items/give/give_map
execute if score slotSelection MenuExplore matches 15 run function mc:states/stages/9_expedition/mode/pov/items/give/give_medkit
execute if score slotSelection MenuExplore matches 16 run function mc:states/stages/9_expedition/mode/pov/items/give/give_padlock
execute if score slotSelection MenuExplore matches 17 run function mc:states/stages/9_expedition/mode/pov/items/give/give_radio
execute if score slotSelection MenuExplore matches 18 run function mc:states/stages/9_expedition/mode/pov/items/give/give_soup
execute if score slotSelection MenuExplore matches 19 run function mc:states/stages/9_expedition/mode/pov/items/give/give_water

# Increment Scores
scoreboard players add slotNumber MenuExplore 1

# Loop
execute if score slotNumber MenuExplore matches 1..4 as @p[team=Playing] run function cm:pages/submit/manage_slot_give