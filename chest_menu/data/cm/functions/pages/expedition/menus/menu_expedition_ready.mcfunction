# Notes
  # Slot three and four automatically increment if the slots to their left have the same item. Slot three checks slot two, and slot four checks both slot two and three
  # To avoid duplicate items each slot validates itself for every slot left of it, excluding the first slot
  # Only slotOne can have a suitcase and it is the first item for convenience
  # To keep the game fair Mutant Mary cannot carry items to the surface since she has special abilities

# Character Toggle
function cm:pages/expedition/menus/menu_characters

# Map Choice
function cm:pages/expedition/menus/menu_map

# Slots
function cm:pages/expedition/menus/menu_slots