# Start
execute if score isGameStarted GameStatus matches 1 run function mc:loops/active_loop_20t

# Player
  # Hunger
  effect give @a saturation 1 255 true

# Loop
schedule function mc:loops/loop_20t 20t replace