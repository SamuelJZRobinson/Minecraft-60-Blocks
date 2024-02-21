# Notes
  # Page 0 is daily story and notice board

# Debounce Menu
scoreboard players set bool MenuMain 1

# Page Buttons
  # Next Page
  execute if score selection MenuMain matches 1 run scoreboard players set @s MenuMain 1
  # Play Click Sound
  execute if score selection MenuMain matches 1..3 run function mc:sounds/page_turn
  execute if score selection MenuMain matches 4.. run function mc:sounds/menu_click