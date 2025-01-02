# # Sync Time
# scoreboard players operation seconds TimerCountdown = seconds TimerCountdown

# scoreboard players operation modulo TimerCountdown = seconds TimerCountdown
# # scoreboard players operation modulo TimerCountdown %= hornInterval TimerCountdown
# execute if score modulo TimerCountdown matches 0 at @e[type=minecraft:zombie,tag=houseMary] run function mc:sounds/mary_horn

# # End
# execute if score seconds TimerCountdown matches 0 run function mc:states/7_scavenge_house/timer/timer_end