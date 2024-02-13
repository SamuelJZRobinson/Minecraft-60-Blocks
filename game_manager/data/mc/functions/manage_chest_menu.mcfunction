# Notes
  # Page items are refreshed whenever the chest is opened or an item is clicked, whereas the directory only updates when an item is clicked

execute as @s[scores={OpenChestMenu=1..}] run function cm:menu/update
scoreboard players reset @s[scores={OpenChestMenu=1..}] OpenChestMenu
function cm:menu/check