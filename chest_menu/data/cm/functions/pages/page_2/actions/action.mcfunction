# Notes
  # Page 2 is expedition menu

# Debounce Menu
scoreboard players set bool MenuMain 1

# Character Toggle
function cm:pages/page_2/actions/action_characters

# Map Choice
function cm:pages/page_2/actions/action_maps

# Increment Slots
function cm:pages/page_2/actions/action_slots

# Prepare Expedition Toggle
function cm:pages/page_2/actions/action_prepare_expedition

# Page Buttons
  # Previous Page
  execute if score selection MenuMain matches 2 run scoreboard players set @s MenuMain 1
  # Next Page
  execute if score selection MenuMain matches 1 run scoreboard players set @s MenuMain 3
  # Submit
  execute if score selection MenuMain matches 3 run function cm:pages/submit/manage_submit
  # Play Click Sound
  execute if score selection MenuMain matches 1..3 run function mc:sounds/page_turn
  execute if score selection MenuMain matches 4.. run function mc:sounds/menu_click