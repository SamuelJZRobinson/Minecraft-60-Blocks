# Note
  # Cycle through slots and addresses items if the player designated them for the expedition.
  # Auto expedition removes items.
  # POV expedition stores items in a chest then gives it to the player during warp day.

# Keep In Range
execute if score slotNumber MenuExplore matches 5 run scoreboard players set slotNumber MenuExplore 1

# Get slotItem
execute if score slotNumber MenuExplore matches 1 store result score slotItem MenuExplore run scoreboard players get slotOne MenuExplore
execute if score slotNumber MenuExplore matches 2 store result score slotItem MenuExplore run scoreboard players get slotTwo MenuExplore
execute if score slotNumber MenuExplore matches 3 store result score slotItem MenuExplore run scoreboard players get slotThree MenuExplore
execute if score slotNumber MenuExplore matches 4 store result score slotItem MenuExplore run scoreboard players get slotFour MenuExplore

# Offset slotItem For slotNumber Where Suitcase Is Impossible
execute if score slotNumber MenuExplore matches 2..4 if score slotItem MenuExplore matches 2.. run scoreboard players add slotItem MenuExplore 1

# Address slotItem
execute if score slotItem MenuExplore matches 2 run function cm:pages/submit/expedition/items/set/set_suitcase
execute if score slotItem MenuExplore matches 3 run function cm:pages/submit/expedition/items/set/set_ammo
execute if score slotItem MenuExplore matches 4 run function cm:pages/submit/expedition/items/set/set_armour
execute if score slotItem MenuExplore matches 5 run function cm:pages/submit/expedition/items/set/set_axe
execute if score slotItem MenuExplore matches 6 run function cm:pages/submit/expedition/items/set/set_boy_scout_handbook
execute if score slotItem MenuExplore matches 7 run function cm:pages/submit/expedition/items/set/set_bug_spray
execute if score slotItem MenuExplore matches 8 run function cm:pages/submit/expedition/items/set/set_cards
execute if score slotItem MenuExplore matches 9 run function cm:pages/submit/expedition/items/set/set_checkers
execute if score slotItem MenuExplore matches 10 run function cm:pages/submit/expedition/items/set/set_flashlight
execute if score slotItem MenuExplore matches 11 run function cm:pages/submit/expedition/items/set/set_gas_mask
execute if score slotItem MenuExplore matches 12 run function cm:pages/submit/expedition/items/set/set_gun
execute if score slotItem MenuExplore matches 13 run function cm:pages/submit/expedition/items/set/set_harmonica
execute if score slotItem MenuExplore matches 14 run function cm:pages/submit/expedition/items/set/set_map
execute if score slotItem MenuExplore matches 15 run function cm:pages/submit/expedition/items/set/set_medkit
execute if score slotItem MenuExplore matches 16 run function cm:pages/submit/expedition/items/set/set_padlock
execute if score slotItem MenuExplore matches 17 run function cm:pages/submit/expedition/items/set/set_radio
execute if score slotItem MenuExplore matches 18 run function cm:pages/submit/expedition/items/set/set_soup
execute if score slotItem MenuExplore matches 19 run function cm:pages/submit/expedition/items/set/set_water

# Increment slotNumber
scoreboard players add slotNumber MenuExplore 1

# Loop Until slotNumber Is Excessive
execute unless score slotNumber MenuExplore matches 5.. as @p[team=Playing] run function cm:pages/submit/expedition/items/manage_items