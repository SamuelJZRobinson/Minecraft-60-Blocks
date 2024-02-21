# Notes
  # Each give command should not append the expeditionLootItems bundle since items may be broken later

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
execute if score slotSelection MenuExplore matches 2 run function cm:menu/submit/items/give_suitcase
execute if score slotSelection MenuExplore matches 3 run function cm:menu/submit/items/give_ammo
execute if score slotSelection MenuExplore matches 4 run function cm:menu/submit/items/give_armour
execute if score slotSelection MenuExplore matches 4 run scoreboard players set hasArmour ItemsExpedition 1
execute if score slotSelection MenuExplore matches 5 run function cm:menu/submit/items/give_axe
execute if score slotSelection MenuExplore matches 6 run function cm:menu/submit/items/give_boy_scout_handbook
execute if score slotSelection MenuExplore matches 7 run function cm:menu/submit/items/give_bug_spray
execute if score slotSelection MenuExplore matches 8 run function cm:menu/submit/items/give_cards
execute if score slotSelection MenuExplore matches 9 run function cm:menu/submit/items/give_checkers
execute if score slotSelection MenuExplore matches 10 run function cm:menu/submit/items/give_flashlight
execute if score slotSelection MenuExplore matches 11 run function cm:menu/submit/items/give_gas_mask
execute if score slotSelection MenuExplore matches 11 run scoreboard players set hasGasMask ItemsExpedition 1
execute if score slotSelection MenuExplore matches 12 run function cm:menu/submit/items/give_gun
execute if score slotSelection MenuExplore matches 13 run function cm:menu/submit/items/give_harmonica
execute if score slotSelection MenuExplore matches 14 run function cm:menu/submit/items/give_map
execute if score slotSelection MenuExplore matches 15 run function cm:menu/submit/items/give_medkit
execute if score slotSelection MenuExplore matches 16 run function cm:menu/submit/items/give_padlock
execute if score slotSelection MenuExplore matches 17 run function cm:menu/submit/items/give_radio
execute if score slotSelection MenuExplore matches 18 run function cm:menu/submit/items/give_soup
execute if score slotSelection MenuExplore matches 19 run function cm:menu/submit/items/give_water

# Increment Scores
scoreboard players add slotNumber MenuExplore 1

# Item Break Chance
execute if score slotNumber MenuExplore matches 5 run scoreboard players add stage ItemsExpedition 1
execute if score slotNumber MenuExplore matches 5 run schedule function mc:events/random_loadout/locations/items/manage_items 1t

# Loop
execute if score slotNumber MenuExplore matches 1..4 as @p[team=Playing] run function mc:events/random_loadout/locations/items/manage_slot_give