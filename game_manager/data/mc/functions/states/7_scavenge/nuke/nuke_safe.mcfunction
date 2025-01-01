# Notes
  # Container values start at 4 to avoid conflict with other items
  # The item checker ensures items are processed, manages bonous items, and starts the first day

# Copy Hotbar From Player
execute as @p[team=Playing] run function mc:utility/scavenge/collect/inventory/get_hotbar

# Clear
function mc:states/7_scavenge/nuke/clear_players

# Count Items
execute store result score itemsOwed GameStatus run data get block 37 60 -7 Items

# Gamemodes
execute if score gamemode Settings matches 1 run scoreboard players set task AtomicDrill 12
execute if score gamemode Settings matches 1 run scoreboard players set stage AtomicDrill 0
execute if score gamemode Settings matches 3 run scoreboard players set ending GameStatus 6

# Set Music
scoreboard players set music GameStatus 3

# Check Items
function mc:utility/scavenge/process/manage_process

# Set State
scoreboard players set state GameStatus 8
schedule function mc:states/manage_states 1t replace