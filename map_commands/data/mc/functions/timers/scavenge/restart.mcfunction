# Notes
  # restartScavenge is reset in start_game to avoid being removed early

# Set Score
scoreboard players set restartScavenge GameStatus 1

# Refresh Data
execute unless score clock Timer matches 0 unless score clock Timer matches 3..4 run function mc:quit/refresh_scripts
schedule function mc:quit/refresh_scores 2t replace
schedule function mc:quit/refresh_locations 4t replace
schedule function mc:quit/refresh_players 6t replace

# Start Game
schedule function mc:play/lobby/start_game 8t replace