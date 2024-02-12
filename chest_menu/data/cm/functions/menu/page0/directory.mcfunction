# Notes
  # Page 0 is daily story and notice board

# Debounce Menu
scoreboard players set bool ChestMenuMain 1

# Page Buttons
  # Next Page
  execute if score selection ChestMenuMain matches 1 run scoreboard players set @s ChestMenuMain 1
  # Play Click Sound
  execute if score selection ChestMenuMain matches 1..3 run function mc:events/sounds/page_turn
  execute if score selection ChestMenuMain matches 4.. run function mc:events/sounds/menu_click