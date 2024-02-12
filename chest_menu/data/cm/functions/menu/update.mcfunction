# Empty Chest
data remove block 0 54 29 Items

# Fill Chest According To Current Page
execute if score @s ChestMenuMain matches 0 run function cm:menu/page0/items
execute if score @s ChestMenuMain matches 1 run function cm:menu/page1/items
execute if score @s ChestMenuMain matches 2 run function cm:menu/page2/items
execute if score @s ChestMenuMain matches 3 run function cm:menu/page3/items