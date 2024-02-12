# Notes
  # The timer engine counts seconds while other timers set the duration and manage parts of the game
  # COUNTDOWN_MIN determines how many seconds are required until the time remaining is displayed
  # modulo is set to zero by default

# Decrease Time
scoreboard players remove seconds Timer 1

# Player Related
execute as @p[team=Playing] at @s run function mc:timers/engine/timer_player

# Timers
execute if score clock Timer matches 1 run function mc:timers/exploration/timer_loop
execute if score clock Timer matches 2 run function mc:timers/scavenge/timer_loop
execute if score clock Timer matches 4 run function mc:timers/expedition/timer_loop

# Loop If There Is Time
execute unless score seconds Timer matches -1 run schedule function mc:timers/engine/timer_loop 1s