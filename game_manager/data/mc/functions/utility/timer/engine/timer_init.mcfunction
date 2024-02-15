# Show Appropriate Timer
execute if score state GameStatus matches 4 run scoreboard objectives setdisplay sidebar Exploration
execute if score state GameStatus matches 6 run scoreboard objectives setdisplay sidebar Scavenge
execute if score state GameStatus matches 8 run scoreboard objectives setdisplay sidebar Expedition

# Start Loop
function mc:utility/timer/engine/timer_loop