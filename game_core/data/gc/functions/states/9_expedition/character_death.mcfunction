# Stop Timer
schedule clear gc:utility/timers/countdown/tick

# Hide Scores
scoreboard objectives setdisplay sidebar

# Kill Non-Player Entities
function gc:states/1_factory_reset/clear/clear_locations

# Append Player Inventory
execute unless score gamemode Settings matches 1 run data modify storage minecraft:itemsprocess expeditionLostItemIds append from entity @s Inventory[].components.minecraft:custom_data.itemId
execute if score gamemode Settings matches 1 run data modify storage minecraft:itemsprocess suitcaseGainedItemIds append from entity @s Inventory[].components.minecraft:custom_data.itemId
clear @s

# Append Dead Character
  # Ted
  execute unless score gamemode Settings matches 1 if score characterSent MenuExpedition matches 1 run data modify storage minecraft:itemsprocess charactersLostIds append value 21
  # Dolores
  execute unless score gamemode Settings matches 1 if score characterSent MenuExpedition matches 2 run data modify storage minecraft:itemsprocess charactersLostIds append value 19
  # Mary
  execute unless score gamemode Settings matches 1 if score characterSent MenuExpedition matches 3 run data modify storage minecraft:itemsprocess charactersLostIds append value 20
  # Timmy
  execute unless score gamemode Settings matches 1 if score characterSent MenuExpedition matches 4 run data modify storage minecraft:itemsprocess charactersLostIds append value 22

# Dialogue
execute if score gamemode Settings matches 1 run data modify storage minecraft:atomicdrill dialogue append value "Be more careful! If this were real you would be dead!"
execute if score gamemode Settings matches 1 run function gc:states/5_atomic_drill/show/show_dialogue_loop

# Set State
scoreboard players set gameState GameStatus 8
schedule function gc:states/manage_states 1t replace

# Reset Scores
scoreboard players reset @s PlayerDeaths
scoreboard players set characterSent MenuExpedition 0