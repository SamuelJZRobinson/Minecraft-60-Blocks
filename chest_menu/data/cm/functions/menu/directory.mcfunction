# Identify Page And Selection
function cm:menu/get_page
function cm:menu/get_selection

# Remember If Player Has Item In Inventory
scoreboard players set bool ChestMenuMain 0

# Run Page Directory
  # Page 0
  execute if score bool ChestMenuMain matches 0 if score @s ChestMenuMain matches 0 run function cm:menu/page0/directory
  # Page 1
  execute if score bool ChestMenuMain matches 0 if score @s ChestMenuMain matches 1 run function cm:menu/page1/directory
  # Page 2
  execute if score bool ChestMenuMain matches 0 if score @s ChestMenuMain matches 2 run function cm:menu/page2/directory
  # Page 3
  execute if score bool ChestMenuMain matches 0 if score @s ChestMenuMain matches 3 run function cm:menu/page3/directory

# Refresh Chest
function cm:menu/update
clear @s #cm:chest_menu{isMenu:1b}