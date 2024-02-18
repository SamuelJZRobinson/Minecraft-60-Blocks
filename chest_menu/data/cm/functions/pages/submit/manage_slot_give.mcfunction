# Setup
execute if score slotNumber ChestMenuExplore matches 5 run scoreboard players set slotNumber ChestMenuExplore 1

# Get Slot Selection
execute if score slotNumber ChestMenuExplore matches 1 store result score slotSelection ChestMenuExplore run scoreboard players get slotOne ChestMenuExplore
execute if score slotNumber ChestMenuExplore matches 2 store result score slotSelection ChestMenuExplore run scoreboard players get slotTwo ChestMenuExplore
execute if score slotNumber ChestMenuExplore matches 3 store result score slotSelection ChestMenuExplore run scoreboard players get slotThree ChestMenuExplore
execute if score slotNumber ChestMenuExplore matches 4 store result score slotSelection ChestMenuExplore run scoreboard players get slotFour ChestMenuExplore

# Adjust Scores
execute if score slotNumber ChestMenuExplore matches 2..4 if score slotSelection ChestMenuExplore matches 2.. run scoreboard players add slotSelection ChestMenuExplore 1

# Award Items
execute if score slotSelection ChestMenuExplore matches 2 run function cm:pages/submit/items/give_suitcase
execute if score slotSelection ChestMenuExplore matches 3 run function cm:pages/submit/items/give_ammo
execute if score slotSelection ChestMenuExplore matches 4 run function cm:pages/submit/items/give_armour
execute if score slotSelection ChestMenuExplore matches 4 run scoreboard players set hasArmour ItemsExpedition 1
execute if score slotSelection ChestMenuExplore matches 5 run function cm:pages/submit/items/give_axe
execute if score slotSelection ChestMenuExplore matches 6 run function cm:pages/submit/items/give_boy_scout_handbook
execute if score slotSelection ChestMenuExplore matches 7 run function cm:pages/submit/items/give_bug_spray
execute if score slotSelection ChestMenuExplore matches 8 run function cm:pages/submit/items/give_cards
execute if score slotSelection ChestMenuExplore matches 9 run function cm:pages/submit/items/give_checkers
execute if score slotSelection ChestMenuExplore matches 10 run function cm:pages/submit/items/give_flashlight
execute if score slotSelection ChestMenuExplore matches 11 run function cm:pages/submit/items/give_gas_mask
execute if score slotSelection ChestMenuExplore matches 11 run scoreboard players set hasGasMask ItemsExpedition 1
execute if score slotSelection ChestMenuExplore matches 12 run function cm:pages/submit/items/give_gun
execute if score slotSelection ChestMenuExplore matches 13 run function cm:pages/submit/items/give_harmonica
execute if score slotSelection ChestMenuExplore matches 14 run function cm:pages/submit/items/give_map
execute if score slotSelection ChestMenuExplore matches 15 run function cm:pages/submit/items/give_medkit
execute if score slotSelection ChestMenuExplore matches 16 run function cm:pages/submit/items/give_padlock
execute if score slotSelection ChestMenuExplore matches 17 run function cm:pages/submit/items/give_radio
execute if score slotSelection ChestMenuExplore matches 18 run function cm:pages/submit/items/give_soup
execute if score slotSelection ChestMenuExplore matches 19 run function cm:pages/submit/items/give_water

# Increment Scores
scoreboard players add slotNumber ChestMenuExplore 1

# Loop
execute if score slotNumber ChestMenuExplore matches 1..4 as @p[team=Playing] run function cm:pages/submit/manage_slot_give