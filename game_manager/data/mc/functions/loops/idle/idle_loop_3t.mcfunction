# Start
execute if score started GameStatus matches 1 run function mc:loops/active/active_loop_3t

# Loop
schedule function mc:loops/idle/idle_loop_3t 3t replace