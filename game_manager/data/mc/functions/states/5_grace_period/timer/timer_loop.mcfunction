# Sync Time
scoreboard players operation seconds TimerCountdown= seconds TimerCountdown

# Time Depleted
execute if score seconds TimerCountdown matches 0 run function mc:states/5_grace_period/timer/timer_end