# Notes
  # Slot three and four automatically increment if the slots to their left have the same item. Slot three checks slot two, and slot four checks both slot two and three
  # Each character has a unique number, including: 0 (nobody), 1 (Dolores), 2 (Normal Mary), 3 (Mutant Mary), 4 (Ted), and 5 (Timmy)
  # To avoid duplicate items each slot validates itself for every slot left of it, excluding the first slot
  # Only slotOne can have a suitcase and it is the first item for convenience
  # Bunker items are counted with mc:status/manage_cosmetics
  # To keep the game fair Mutant Mary cannot carry items to the surface since she has special abilities

# Character Toggle
function cm:pages/page_2/menus/menu_characters

# Map Choice
function cm:pages/page_2/menus/menu_map

# Slots
function cm:pages/page_2/menus/menu_slots