# Timer Engine
schedule clear mc:timers/engine/timer_loop

# Apocalypse And Scavenge
function mc:quit/clean_scavenge_setup
schedule clear mc:events/endings/surface_scene

# Atomic Drill
execute if score gameMode Lobby matches 1 run function mc:quit/clean_atomic_drill

# Expedition
schedule clear mc:timers/expedition/timer_setup