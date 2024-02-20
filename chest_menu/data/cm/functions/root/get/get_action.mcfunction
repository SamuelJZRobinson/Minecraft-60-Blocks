# Identify Page And Selection
function cm:root/get/get_menu
function cm:root/get/get_selection

# Remember If Player Has Item In Inventory
scoreboard players set bool ChestMenuMain 0

# Run Page menu
  # Page 0
  execute if score bool ChestMenuMain matches 0 if score @s ChestMenuMain matches 0 run function cm:pages/page_0/actions/action
  # Page 1
  execute if score bool ChestMenuMain matches 0 if score @s ChestMenuMain matches 1 run function cm:pages/page_1/actions/action
  # Page 2
  execute if score bool ChestMenuMain matches 0 if score @s ChestMenuMain matches 2 run function cm:pages/page_2/actions/action
  # Page 3
  execute if score bool ChestMenuMain matches 0 if score @s ChestMenuMain matches 3 run function cm:pages/page_3/actions/action

# Refresh Chest
function cm:root/update/update_menu
clear @s #cm:chest_menu{isMenu:1b}