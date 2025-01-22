# Notes
  # Locked slots only apply to atomic drill and the house.

# Lock Inventory
  # Setup
  execute if score gameState GameStatus matches 4 run function gc:utility/inventory/lock_inventory
  # Atomic Drill
  execute if score gameState GameStatus matches 5 run function gc:utility/inventory/lock_inventory
  # Grace Period
  execute if score gameState GameStatus matches 6 run function gc:utility/inventory/lock_inventory
  # Scavenge House
  execute if score gameState GameStatus matches 7 run function gc:utility/inventory/lock_inventory

# Lock Hotbar
  # Setup
  execute if score gameState GameStatus matches 4 run function gc:utility/inventory/lock_hotbar
  # Grace Period
  execute if score gameState GameStatus matches 6 run function gc:utility/inventory/lock_hotbar
  # Scavenge House
  execute if score gameState GameStatus matches 7 if entity @s[nbt={Inventory:[{id:"minecraft:red_stained_glass_pane",Slot:0b,tag:{locked:1b}}]}] run item replace entity @s hotbar.0 with minecraft:air
  execute if score gameState GameStatus matches 7 if entity @s[nbt={Inventory:[{id:"minecraft:red_stained_glass_pane",Slot:1b,tag:{locked:1b}}]}] run item replace entity @s hotbar.1 with minecraft:air
  execute if score gameState GameStatus matches 7 if entity @s[nbt={Inventory:[{id:"minecraft:red_stained_glass_pane",Slot:2b,tag:{locked:1b}}]}] run item replace entity @s hotbar.2 with minecraft:air
  execute if score gameState GameStatus matches 7 if entity @s[nbt={Inventory:[{id:"minecraft:red_stained_glass_pane",Slot:3b,tag:{locked:1b}}]}] run item replace entity @s hotbar.3 with minecraft:air

# Clear
execute if score gameState GameStatus matches 8.. run clear @s red_stained_glass_pane

# Klll Locked Items On The Floor
kill @e[type=item,nbt={Item:{id:"minecraft:red_stained_glass_pane",Count:1b,tag:{locked:1b}}}]