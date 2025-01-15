# Notes
  # Each give command should not append the expeditionLootItems bundle since items may be broken later

# Setup
execute if score slotNumber MenuExpedition matches 5 run scoreboard players set slotNumber MenuExpedition 1

# Get Slot Selection
execute if score slotNumber MenuExpedition matches 1 store result score slotItem MenuExpedition run scoreboard players get slotOne MenuExpedition
execute if score slotNumber MenuExpedition matches 2 store result score slotItem MenuExpedition run scoreboard players get slotTwo MenuExpedition
execute if score slotNumber MenuExpedition matches 3 store result score slotItem MenuExpedition run scoreboard players get slotThree MenuExpedition
execute if score slotNumber MenuExpedition matches 4 store result score slotItem MenuExpedition run scoreboard players get slotFour MenuExpedition

# Adjust Scores
execute if score slotNumber MenuExpedition matches 2..4 if score slotItem MenuExpedition matches 2.. run scoreboard players add slotItem MenuExpedition 1

# Award Items
execute if score slotItem MenuExpedition matches 2 run function cm:menu/submit/items/give_suitcase
execute if score slotItem MenuExpedition matches 3 run function cm:menu/submit/items/give_ammo
execute if score slotItem MenuExpedition matches 4 run function cm:menu/submit/items/give_armour
execute if score slotItem MenuExpedition matches 4 run scoreboard players set hasArmour ItemsExpedition 1
execute if score slotItem MenuExpedition matches 5 run function cm:menu/submit/items/give_axe
execute if score slotItem MenuExpedition matches 6 run function cm:menu/submit/items/give_boy_scout_handbook
execute if score slotItem MenuExpedition matches 7 run function cm:menu/submit/items/give_bug_spray
execute if score slotItem MenuExpedition matches 8 run function cm:menu/submit/items/give_cards
execute if score slotItem MenuExpedition matches 9 run function cm:menu/submit/items/give_checkers
execute if score slotItem MenuExpedition matches 10 run function cm:menu/submit/items/give_flashlight
execute if score slotItem MenuExpedition matches 11 run function cm:menu/submit/items/give_gas_mask
execute if score slotItem MenuExpedition matches 11 run scoreboard players set hasGasMask ItemsExpedition 1
execute if score slotItem MenuExpedition matches 12 run function cm:menu/submit/items/give_gun
execute if score slotItem MenuExpedition matches 13 run function cm:menu/submit/items/give_harmonica
execute if score slotItem MenuExpedition matches 14 run function cm:menu/submit/items/give_map
execute if score slotItem MenuExpedition matches 15 run function cm:menu/submit/items/give_medkit
execute if score slotItem MenuExpedition matches 16 run function cm:menu/submit/items/give_padlock
execute if score slotItem MenuExpedition matches 17 run function cm:menu/submit/items/give_radio
execute if score slotItem MenuExpedition matches 18 run function cm:menu/submit/items/give_soup
execute if score slotItem MenuExpedition matches 19 run function cm:menu/submit/items/give_water

# Increment Scores
scoreboard players add slotNumber MenuExpedition 1

# Item Break Chance
execute if score slotNumber MenuExpedition matches 5 run scoreboard players add stage ItemsExpedition 1
execute if score slotNumber MenuExpedition matches 5 run schedule schedule function mc:states/9_expedition/place/manage_placement 1t replace 1t

# Loop
execute if score slotNumber MenuExpedition matches 1..4 as @p[team=Player] run function mc:events/random_loadout/locations/items/manage_slot_give