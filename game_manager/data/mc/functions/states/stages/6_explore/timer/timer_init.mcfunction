# Note
  # seconds are +1 to account for blindness.

# Set Time
execute if score difficulty Lobby matches 1 run scoreboard players set seconds Timer 21
execute if score difficulty Lobby matches 2 run scoreboard players set seconds Timer 11
execute if score difficulty Lobby matches 3 run scoreboard players set seconds Timer 1

# Set Objective
scoreboard objectives setdisplay sidebar Exploration