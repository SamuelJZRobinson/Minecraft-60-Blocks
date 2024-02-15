# Notes
  # Container values start at 4 to avoid conflict with other items
  # The item checker ensures items are processed, manages bonous items, and starts the first day

# Copy Hotbar From Player
execute as @p[team=Playing] run function mc:timer/scavenge/get_player_hotbar

# Clear All
clear @s
effect clear @s
scoreboard objectives setdisplay sidebar
title @s clear

# Count Items
execute store result score itemsOwed GameStatus run data get block 37 60 -7 Items

# Atomic Drill
execute if score gamemode Settings matches 1 run scoreboard players set task AtomicDrill 12
execute if score gamemode Settings matches 1 run scoreboard players set stage AtomicDrill 0

# Scavenge Mode
execute if score gamemode Settings matches 3 run scoreboard players set ending GameStatus 6

# Set Music
scoreboard players set music GameStatus 3

# Goto Bunker
function mc:utility/tp/tp_bunker

# Check Items
function mc:status/scavenge/check_item/manage_check