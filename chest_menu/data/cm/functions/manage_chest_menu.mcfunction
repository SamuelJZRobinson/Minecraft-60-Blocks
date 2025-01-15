# Notes
  # Page items updates when the chest is opened or an item is clicked.
  # The menu updates when an item is clicked.
  # Follows the process of menu and action.

execute as @s[scores={OpenMenu=1..}] run function cm:root/update/update_menu
scoreboard players reset @s[scores={OpenMenu=1..}] OpenMenu
function cm:root/check/check_menu_exists