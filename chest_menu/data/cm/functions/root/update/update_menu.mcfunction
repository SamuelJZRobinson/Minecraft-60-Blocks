# Empty Chest
data remove block 0 54 29 Items

# Set Page Items
  # Page 0
  execute if score @s MenuMain matches 0 run function cm:pages/page_0/menus/menu
  # Page 1
  execute if score @s MenuMain matches 1 run function cm:pages/page_1/menus/menu
  # Page 2
  execute if score @s MenuMain matches 2 run function cm:pages/page_2/menus/menu
  # Page 3
  execute if score @s MenuMain matches 3 run function cm:pages/page_3/menus/menu