# Empty Chest
data remove block 4 -48 -9 Items

# Set Page Items
  # Page 0
  execute if score @s MenuMain matches 0 positioned 4 -48 -9 run function cm:pages/0_notices/menus/menu
  # Page 1
  execute if score @s MenuMain matches 1 positioned 4 -48 -9 run function cm:pages/1_feed/menus/menu
  # Page 2
  execute if score @s MenuMain matches 2 positioned 4 -48 -9 run function cm:pages/2_expedition/menus/menu
  # Page 3
  execute if score @s MenuMain matches 3 positioned 4 -48 -9 run function cm:pages/3_event/menus/menu