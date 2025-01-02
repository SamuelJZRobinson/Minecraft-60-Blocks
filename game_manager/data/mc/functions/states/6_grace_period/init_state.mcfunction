tellraw @a "state 6"

# Give Effects
execute as @p[team=Player] run function mc:utility/effects/effects_scavenge_default

# Teleport To House
function mc:utility/tp/tp_house

# Setup Timer
execute if score difficulty Settings matches 1 run scoreboard players set seconds TimerCountdown 20
execute if score difficulty Settings matches 2 run scoreboard players set seconds TimerCountdown 10
execute if score difficulty Settings matches 3 run scoreboard players set seconds TimerCountdown 0
scoreboard objectives setdisplay sidebar TimerCountdown
function mc:utility/timers/countdown/tick