# Notes
  # Page 3 is event menu

# Debounce Menu
scoreboard players set bool chest_menu 1

# Event List
  # Managed by page3/manage_events

# Page Buttons
  # Previous Page
  execute if score selection ChestMenuMain matches 2 run scoreboard players set @s ChestMenuMain 2
  # Submit
  execute if score selection ChestMenuMain matches 3 run function cm:menu/submit/submit_selection
  # Play Click Sound
  execute if score selection ChestMenuMain matches 1..3 run function mc:events/sounds/page_turn
  execute if score selection ChestMenuMain matches 4.. run function mc:events/sounds/menu_click