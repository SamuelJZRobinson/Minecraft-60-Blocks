# Notes
  # Page 1 is feeding menu

# Debounce Menu
scoreboard players set bool MenuMain 1

# Mass Items
function cm:pages/page_1/actions/action_mass_food

# Character Selection
function cm:pages/page_1/actions/action_characters

# Page Buttons
  # Previous Page
  execute if score selection MenuMain matches 2 run scoreboard players set @s MenuMain 0
  # Next Page
  execute unless score task AtomicDrill matches 1..12 if score selection MenuMain matches 1 run scoreboard players set @s MenuMain 2
  # Submit
  execute if score selection MenuMain matches 3 run function cm:pages/submit/manage_submit
  # Play Click Sound
  execute if score selection MenuMain matches 1..3 run function mc:sounds/page_turn
  execute if score selection MenuMain matches 4.. run function mc:sounds/menu_click