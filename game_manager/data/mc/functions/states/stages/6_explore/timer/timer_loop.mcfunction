# Sync Time
scoreboard players operation seconds Exploration = seconds Timer

# Time Depleted
execute if score seconds Timer matches 0 run function mc:states/stages/6_explore/timer/timer_end