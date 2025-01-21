schedule clear gc:states/5_atomic_drill/show/show_dialogue_loop
schedule clear gc:states/5_atomic_drill/task/force_task_done
schedule clear gc:utility/timers/countdown/tick

# Probably only run during certain states to avoid this


# # Timer Engine
# schedule clear gc:utility/timer/timer_loop

# # Apocalypse And Scavenge
#   # Stage 1
#   schedule clear gc:states/4_setup/place/floorplans/general/check_for_block
#   schedule clear gc:states/4_setup/place/floorplans/general/count_high_spots
#   # Stage 2
#   schedule clear gc:states/4_setup/place/characters/summon/summon_all
#   schedule clear gc:states/4_setup/place/items/summon_items
#   # Stage 3
#   schedule clear gc:states/4_setup/place/items/manage_items
#   # Ending
#   schedule clear gc:event/endings/surface_scene

# # Atomic Drill
# execute if score gamemode Settings matches 1 run function gc:states/1_factory_reset/clear/clear_schedules_atomic_drill

# # Expedition
# schedule clear gc:timer/expedition/timer_init