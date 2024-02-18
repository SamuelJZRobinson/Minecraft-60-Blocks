# Notes
  # Page items updates when the chest is opened or an item is clicked.
  # The menu updates when an item is clicked.

execute as @s[scores={OpenChestMenu=1..}] run function cm:root/update_page_items
scoreboard players reset @s[scores={OpenChestMenu=1..}] OpenChestMenu
function cm:root/check_menu_exists