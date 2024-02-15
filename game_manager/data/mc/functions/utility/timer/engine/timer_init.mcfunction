# Show Appropriate Objective
execute if score state GameStatus matches 6 run scoreboard objectives setdisplay sidebar Exploration
execute if score state GameStatus matches 7 run scoreboard objectives setdisplay sidebar Scavenge
execute if score state GameStatus matches 9 run scoreboard objectives setdisplay sidebar Expedition

# Start Loop
function mc:utility/timer/engine/timer_loop