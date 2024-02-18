# Empty Chest
data remove block 0 54 29 Items

# Fill Chest According To Current Page
execute if score @s ChestMenuMain matches 0 run function cm:pages/page_0/menus/menu
execute if score @s ChestMenuMain matches 1 run function cm:pages/page_1/menus/menu
execute if score @s ChestMenuMain matches 2 run function cm:pages/page_2/menus/menu
execute if score @s ChestMenuMain matches 3 run function cm:pages/page_3/menus/menu