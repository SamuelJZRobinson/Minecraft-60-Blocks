# Notes
  # Container values start at 4 to avoid conflict with other items
  # The item checker ensures items are processed, manages bonous items, and starts the first day

# Copy Hotbar From Player
execute as @p[team=Playing] run function mc:timers/scavenge/get_player_hotbar
# Clear Inventory
function mc:timers/scavenge/clear_all
# Count Items
execute store result score itemsOwed GameStatus run data get block 37 60 -7 Items
# Atomic Drill
execute if score gameMode Lobby matches 1 run scoreboard players set task AtomicDrill 12
execute if score gameMode Lobby matches 1 run scoreboard players set stage AtomicDrill 0
# Scavenge Mode
execute if score gameMode Lobby matches 3 run scoreboard players set ending GameStatus 6
# Set Music
scoreboard players set music GameStatus 3
# Teleport To Bunker
function mc:utility/tp/tp_bunker
# Check Items
function mc:status/scavenge/check_item/manage_check