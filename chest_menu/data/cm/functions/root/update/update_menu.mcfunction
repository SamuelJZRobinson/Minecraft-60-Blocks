# Empty Chest
data remove block 4 -48 -9 Items

# Set Page Items
  # Page 0
  execute if score @s MenuMain matches 0 positioned 4 -48 -9 run function cm:pages/notices/menus/menu
  # Page 1
  execute if score @s MenuMain matches 1 positioned 4 -48 -9 run function cm:pages/feed/menus/menu
  # Page 2
  execute if score @s MenuMain matches 2 positioned 4 -48 -9 run function cm:pages/expedition/menus/menu
  # Page 3
  execute if score @s MenuMain matches 3 positioned 4 -48 -9 run function cm:pages/event/menus/menu