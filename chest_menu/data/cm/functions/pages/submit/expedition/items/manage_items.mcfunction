# Note
  # Cycle through slots and addresses items if the player designated them for the expedition.
  # Auto expedition removes items.
  # POV expedition stores items in a chest then gives it to the player during warp day.

# Keep In Range
execute if score slotNumber MenuExpedition matches 5 run scoreboard players set slotNumber MenuExpedition 1

# Get slotItem
execute if score slotNumber MenuExpedition matches 1 store result score slotItem MenuExpedition run scoreboard players get slotOne MenuExpedition
execute if score slotNumber MenuExpedition matches 2 store result score slotItem MenuExpedition run scoreboard players get slotTwo MenuExpedition
execute if score slotNumber MenuExpedition matches 3 store result score slotItem MenuExpedition run scoreboard players get slotThree MenuExpedition
execute if score slotNumber MenuExpedition matches 4 store result score slotItem MenuExpedition run scoreboard players get slotFour MenuExpedition

# Offset slotItem For slotNumber Where Suitcase Is Impossible
execute if score slotNumber MenuExpedition matches 2..4 if score slotItem MenuExpedition matches 2.. run scoreboard players add slotItem MenuExpedition 1

# Address slotItem
execute if score slotItem MenuExpedition matches 2 run function cm:pages/submit/expedition/items/set_suitcase
execute if score slotItem MenuExpedition matches 3 run function cm:pages/submit/expedition/items/set_ammo
execute if score slotItem MenuExpedition matches 4 run function cm:pages/submit/expedition/items/set_armour
execute if score slotItem MenuExpedition matches 5 run function cm:pages/submit/expedition/items/set_axe
execute if score slotItem MenuExpedition matches 6 run function cm:pages/submit/expedition/items/set_boy_scout_handbook
execute if score slotItem MenuExpedition matches 7 run function cm:pages/submit/expedition/items/set_bug_spray
execute if score slotItem MenuExpedition matches 8 run function cm:pages/submit/expedition/items/set_cards
execute if score slotItem MenuExpedition matches 9 run function cm:pages/submit/expedition/items/set_checkers
execute if score slotItem MenuExpedition matches 10 run function cm:pages/submit/expedition/items/set_flashlight
execute if score slotItem MenuExpedition matches 11 run function cm:pages/submit/expedition/items/set_gas_mask
execute if score slotItem MenuExpedition matches 12 run function cm:pages/submit/expedition/items/set_gun
execute if score slotItem MenuExpedition matches 13 run function cm:pages/submit/expedition/items/set_harmonica
execute if score slotItem MenuExpedition matches 14 run function cm:pages/submit/expedition/items/set_map
execute if score slotItem MenuExpedition matches 15 run function cm:pages/submit/expedition/items/set_medkit
execute if score slotItem MenuExpedition matches 16 run function cm:pages/submit/expedition/items/set_padlock
execute if score slotItem MenuExpedition matches 17 run function cm:pages/submit/expedition/items/set_radio
execute if score slotItem MenuExpedition matches 18 run function cm:pages/submit/expedition/items/set_soup
execute if score slotItem MenuExpedition matches 19 run function cm:pages/submit/expedition/items/set_water

# Increment slotNumber
scoreboard players add slotNumber MenuExpedition 1

# Loop Until slotNumber Is Excessive
execute unless score slotNumber MenuExpedition matches 5.. as @p[team=Player] run function cm:pages/submit/expedition/items/manage_items