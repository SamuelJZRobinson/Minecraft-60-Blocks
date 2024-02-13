# Load Scripts Upon Start
execute if score started GameStatus matches 1 run function mc:particle_loop_started

# Loop Function
schedule function mc:particle_loop 5t replace