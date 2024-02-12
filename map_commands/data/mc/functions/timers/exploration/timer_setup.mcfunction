# Notes
  # Timer is extended by one seconds to account for blindness

# Adjsut Scores
scoreboard players set clock Timer 1
execute if score difficulty Lobby matches 1 run scoreboard players set seconds Timer 21
execute if score difficulty Lobby matches 2 run scoreboard players set seconds Timer 11
execute if score difficulty Lobby matches 3 run scoreboard players set seconds Timer 2
scoreboard objectives setdisplay sidebar Exploration
# Effects
execute as @p[team=Playing] run function mc:timers/engine/player_effects
# Activate Timer Engine
function mc:timers/engine/timer_loop