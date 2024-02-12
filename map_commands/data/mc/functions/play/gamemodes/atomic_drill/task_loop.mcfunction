# Notes
  # stage determines how tasks operate, including: 0 (setup), 1 (in progress), and 2 (complete)

# Manage Tasks
execute if score stage AtomicDrill matches 0 run function mc:play/gamemodes/atomic_drill/setup_tasks
execute if score stage AtomicDrill matches 1 run function mc:play/gamemodes/atomic_drill/check_tasks
execute if score stage AtomicDrill matches 2 run function mc:play/gamemodes/atomic_drill/complete_tasks

# Recall Function
schedule function mc:play/gamemodes/atomic_drill/task_loop 3t replace