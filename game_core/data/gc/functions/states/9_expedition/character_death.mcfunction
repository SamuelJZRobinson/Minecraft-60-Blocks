# Stop Timer
schedule clear gc:utility/timers/countdown/tick

# Hide Scores
scoreboard objectives setdisplay sidebar

# Kill Non-Player Entities
function gc:states/1_factory_reset/clear/clear_locations

# Append Player Inventory
data modify storage minecraft:itemsprocess expeditionLostItemIds append from entity @s Inventory[].tag.itemId
clear @s

# Append Dead Character
  # Ted
  execute if score characterSent MenuExpedition matches 1 run data modify storage minecraft:itemsprocess charactersLostIds append value 21
  # Dolores
  execute if score characterSent MenuExpedition matches 2 run data modify storage minecraft:itemsprocess charactersLostIds append value 19
  # Mary
  execute if score characterSent MenuExpedition matches 3 run data modify storage minecraft:itemsprocess charactersLostIds append value 20
  # Timmy
  execute if score characterSent MenuExpedition matches 4 run data modify storage minecraft:itemsprocess charactersLostIds append value 22

# Set State
scoreboard players set gameState GameStatus 8
schedule function gc:states/manage_states 1t replace

# Reset Scores
scoreboard players reset @s PlayerDeaths
scoreboard players set characterSent MenuExpedition 0