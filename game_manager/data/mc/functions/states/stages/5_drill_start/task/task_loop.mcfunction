# Manage Tasks
execute if score stage AtomicDrill matches 0 run function mc:states/stages/5_drill_start/task/task_setup
execute if score stage AtomicDrill matches 1 run function mc:states/stages/5_drill_start/task/task_check
execute if score stage AtomicDrill matches 2 run function mc:states/stages/5_drill_start/task/task_done

# Loop
schedule function mc:states/stages/5_drill_start/task/task_loop 3t replace