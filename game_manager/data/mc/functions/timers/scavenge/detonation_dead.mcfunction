# Clear All
function mc:timers/scavenge/clear_all

# Atomic Drill (Silent)
  # Increment Task
  execute if score gameMode Lobby matches 1 run scoreboard players set task AtomicDrill 11
  execute if score gameMode Lobby matches 1 run scoreboard players set stage AtomicDrill 0
  # Set Music
  execute if score gameMode Lobby matches 1 run scoreboard players set music GameStatus 3
  # Check Items
  execute if score gameMode Lobby matches 1 run function mc:status/scavenge/check_item/manage_check

# Apocalypse and Scavenge Mode
execute if score gameMode Lobby matches 2.. run scoreboard players set ending GameStatus 1
execute if score gameMode Lobby matches 2.. run function mc:events/endings/bunker_scene