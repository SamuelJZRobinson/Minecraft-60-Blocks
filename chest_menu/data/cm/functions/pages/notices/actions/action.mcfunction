# Debounce Menu
scoreboard players set bool MenuMain 1

# Page Buttons
  # Next Page
  execute if score selection MenuMain matches 1 run scoreboard players set @s MenuMain 1
  # Play Click Sound
  execute if score selection MenuMain matches 1..3 run function gc:sounds/page_turn
  execute if score selection MenuMain matches 4.. run function gc:sounds/menu_click