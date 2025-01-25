# Give Effects
execute as @p[team=Player] run function gc:utility/effects/effects_scavenge_default

# Setup Timer
  # Difficulties
    # Easy
    execute if score difficulty Settings matches 1 run scoreboard players set seconds TimerCountdown 20
    # Medium
    execute if score difficulty Settings matches 2 run scoreboard players set seconds TimerCountdown 10
    # Hard
    execute if score difficulty Settings matches 3 run scoreboard players set seconds TimerCountdown 0
  # Gamemodes
  execute if score gamemode Settings matches 1 run scoreboard players set seconds TimerCountdown 10
scoreboard objectives setdisplay sidebar TimerCountdown
function gc:utility/timers/countdown/tick