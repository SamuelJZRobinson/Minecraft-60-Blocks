# Sync With Timer Engine
scoreboard players operation seconds Exploration = seconds Timer

# Time Depleted
execute if score seconds Timer matches 0 run function mc:timers/scavenge/timer_setup