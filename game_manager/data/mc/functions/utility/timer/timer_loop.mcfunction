# Note
  # State Sync loop will create a chain reaction with incrementing states unless call order is reversed.

# Decrease Time
scoreboard players remove seconds TimerCountdown 1

# Alert
execute as @p[team=Player] run function mc:utility/timer/alert

# State Sync
execute if score state GameStatus matches 9 run function mc:states/8_expedition/timer/timer_loop
execute if score state GameStatus matches 7 run function mc:states/6_scavenge_house/timer/timer_loop
execute if score state GameStatus matches 6 run function mc:states/5_grace_period/timer/timer_loop

# Loop
execute unless score seconds TimerCountdown matches -1 run schedule function mc:utility/timer/timer_loop 1s