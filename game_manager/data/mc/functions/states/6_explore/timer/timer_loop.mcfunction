# Sync Time
scoreboard players operation seconds TimerCountdown= seconds TimerCountdown

# Time Depleted
execute if score seconds TimerCountdown matches 0 run function mc:states/6_explore/timer/timer_end