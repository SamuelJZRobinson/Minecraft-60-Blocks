# Decrease Time
scoreboard players remove seconds Timer 1

# Alert
execute as @p[team=Playing] at @s run function mc:utility/timer/alert

# State Sync
execute if score state GameStatus matches 6 run function mc:states/stages/6_explore/timer/timer_loop
execute if score state GameStatus matches 7 run function mc:states/stages/7_scavenge/timer/timer_loop
execute if score state GameStatus matches 9 run function mc:states/stages/9_expedition/timer/timer_loop

# Loop
execute unless score seconds Timer matches -1 run schedule function mc:utility/timer/timer_loop 1s