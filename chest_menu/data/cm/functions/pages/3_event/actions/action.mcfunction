# Debounce Menu
scoreboard players set bool MenuMain 1

# Event List
  # Managed by pages/3_event/story/manage_events

# Page Buttons
  # Previous Page
  execute if score selection MenuMain matches 2 run scoreboard players set @s MenuMain 2
  # Submit
  execute if score selection MenuMain matches 3 run function cm:pages/submit/manage_submit
  # Play Click Sound
  execute if score selection MenuMain matches 1..3 run function gc:sounds/page_turn
  execute if score selection MenuMain matches 4.. run function gc:sounds/menu_click