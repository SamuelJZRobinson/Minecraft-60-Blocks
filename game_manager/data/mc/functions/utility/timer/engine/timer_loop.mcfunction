# Notes
  # The timer engine counts seconds while other timers set the duration and manage parts of the game
  # COUNTDOWN_MIN determines how many seconds are required until the time remaining is displayed
  # modulo is set to zero by default

# Decrease Time
scoreboard players remove seconds Timer 1

# Alert
execute as @p[team=Playing] at @s run function mc:utility/timer/engine/alert

# Sync
# execute if score state GameStatus matches 4 run function mc:timer/exploration/timer_loop
execute if score state GameStatus matches 6 run function mc:timer/scavenge/timer_loop
execute if score state GameStatus matches 8 run function mc:timer/expedition/timer_loop

# Sync Time
execute if score state GameStatus matches 6 run scoreboard players operation seconds Exploration = seconds Timer
execute if score state GameStatus matches 7 run scoreboard players operation seconds Scavenge = seconds Timer
execute if score state GameStatus matches 9 run scoreboard players operation seconds Expedition = seconds Timer

# Loop
execute if score seconds Timer matches 0 run function mc:utility/timer/engine/timer_end
execute unless score seconds Timer matches -1 run schedule function mc:utility/timer/engine/timer_loop 1s