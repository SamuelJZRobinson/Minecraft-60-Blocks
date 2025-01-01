# Manage Tasks
execute if score stage AtomicDrill matches 0 run function mc:states/4a_atomic_drill/task/task_setup
execute if score stage AtomicDrill matches 1 run function mc:states/4a_atomic_drill/task/task_check
execute if score stage AtomicDrill matches 2 run function mc:states/4a_atomic_drill/task/task_done

# Loop
schedule function mc:states/4a_atomic_drill/task/task_loop 3t replace