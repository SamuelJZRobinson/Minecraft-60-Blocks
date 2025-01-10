# Empty Chest
data remove block -8 -48 -9 Items

# Set Page Items
  # Page 0
  execute if score @s MenuMain matches 0 positioned -8 -48 -9 run function cm:pages/page_0/menus/menu
  # Page 1
  execute if score @s MenuMain matches 1 positioned -8 -48 -9 run function cm:pages/page_1/menus/menu
  # Page 2
  execute if score @s MenuMain matches 2 positioned -8 -48 -9 run function cm:pages/page_2/menus/menu
  # Page 3
  execute if score @s MenuMain matches 3 positioned -8 -48 -9 run function cm:pages/page_3/menus/menu