# Sync Time
scoreboard players operation seconds Exploration = seconds Timer

# Time Depleted
execute if score seconds Timer matches 0 as @p[team=Playing] run function mc:states/stages/6_explore/timer/timer_end