# Identify Page And Selection
function cm:root/get/get_menu
function cm:root/get/get_selection

# Remember If Player Has Item In Inventory
scoreboard players set bool MenuMain 0

# Run Page menu
  # Page 0
  execute if score bool MenuMain matches 0 if score @s MenuMain matches 0 run function cm:pages/0_notices/actions/action
  # Page 1
  execute if score bool MenuMain matches 0 if score @s MenuMain matches 1 run function cm:pages/1_feed/actions/action
  # Page 2
  execute if score bool MenuMain matches 0 if score @s MenuMain matches 2 run function cm:pages/2_expedition/actions/action
  # Page 3
  execute if score bool MenuMain matches 0 if score @s MenuMain matches 3 run function cm:pages/3_event/actions/action

# Refresh Chest
function cm:root/update/update_menu
clear @s #cm:chest_menu{isMenu:1b}