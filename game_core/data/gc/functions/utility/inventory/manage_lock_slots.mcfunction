# Notes
  # Locked slots only apply to atomic drill and the house.

# Lock Inventory
execute if score gameState GameStatus matches 4..7 run function gc:utility/inventory/lock_inventory

# Lock Hotbar
  # Setup
  execute if score gameState GameStatus matches 4 run function gc:utility/inventory/lock_hotbar
  # Grace Period
  execute if score gameState GameStatus matches 6 run function gc:utility/inventory/lock_hotbar
  # Scavenge House
  execute if score gameState GameStatus matches 7 if entity @s[nbt={Inventory:[{id:"minecraft:red_stained_glass_pane",Slot:0b,components:{"minecraft:custom_data":{locked:1b}}}]}] run item replace entity @s hotbar.0 with minecraft:air
  execute if score gameState GameStatus matches 7 if entity @s[nbt={Inventory:[{id:"minecraft:red_stained_glass_pane",Slot:1b,components:{"minecraft:custom_data":{locked:1b}}}]}] run item replace entity @s hotbar.1 with minecraft:air
  execute if score gameState GameStatus matches 7 if entity @s[nbt={Inventory:[{id:"minecraft:red_stained_glass_pane",Slot:2b,components:{"minecraft:custom_data":{locked:1b}}}]}] run item replace entity @s hotbar.2 with minecraft:air
  execute if score gameState GameStatus matches 7 if entity @s[nbt={Inventory:[{id:"minecraft:red_stained_glass_pane",Slot:3b,components:{"minecraft:custom_data":{locked:1b}}}]}] run item replace entity @s hotbar.3 with minecraft:air

# Clear
execute if score gameState GameStatus matches 8.. run clear @s red_stained_glass_pane

# Klll Locked Items On The Floor
kill @e[type=item,nbt={Item:{id:"minecraft:red_stained_glass_pane",count:1,components:{"minecraft:custom_data":{locked:1b}}}}]