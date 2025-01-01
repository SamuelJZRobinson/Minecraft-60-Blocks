# Note
  # seconds are +1 to account for blindness.

# Set Time
execute if score difficulty Settings matches 1 run scoreboard players set seconds TimerCountdown 21
execute if score difficulty Settings matches 2 run scoreboard players set seconds TimerCountdown 11
execute if score difficulty Settings matches 3 run scoreboard players set seconds TimerCountdown 1

# Set Objective
scoreboard objectives setdisplay sidebar Exploration