# Clear
function mc:states/stages/7_scavenge/nuke/clear_players

# Gamemodes
execute if score gamemode Settings matches 1 run function mc:states/stages/7_scavenge/nuke/nuke_dead_drill
### Ensure this works later
execute if score gamemode Settings matches 2..3 run scoreboard players set ending GameStatus 1

# Set State
  # Bunker
  execute if score gamemode Settings matches 1 run scoreboard players set state GameStatus 8
  execute if score gamemode Settings matches 1 run schedule function mc:states/stages/manage_states 1t replace
  # Ending
  execute if score gamemode Settings matches 2.. if score ending GameStatus matches 1.. run scoreboard players set state GameStatus 10
  execute if score gamemode Settings matches 2.. if score ending GameStatus matches 1.. run schedule function mc:states/stages/manage_states 1t replace