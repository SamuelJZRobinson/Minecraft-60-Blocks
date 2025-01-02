# Probably only run during certain states to avoid this




# # Timer Engine
# schedule clear mc:utility/timer/timer_loop

# # Apocalypse And Scavenge
#   # Stage 1
#   schedule clear mc:states/4_setup/place/floorplans/general/summon_main_checkers
#   schedule clear mc:states/4_setup/place/floorplans/general/summon_fp_1_checkers
#   schedule clear mc:states/4_setup/place/floorplans/general/summon_fp_2_checkers
#   schedule clear mc:states/4_setup/place/floorplans/general/summon_fp_3_checkers
#   schedule clear mc:states/4_setup/place/floorplans/general/summon_fp_4_checkers
#   schedule clear mc:states/4_setup/place/floorplans/general/summon_fp_5_checkers
#   schedule clear mc:states/4_setup/place/floorplans/general/summon_fp_6_checkers
#   schedule clear mc:states/4_setup/place/floorplans/general/summon_west_checkers
#   schedule clear mc:states/4_setup/place/floorplans/general/summon_east_checkers
#   schedule clear mc:states/4_setup/place/floorplans/general/check_for_block
#   schedule clear mc:states/4_setup/place/floorplans/general/count_high_spots
#   # Stage 2
#   schedule clear mc:states/4_setup/place/characters/summon/summon_all
#   schedule clear mc:states/4_setup/place/items/summon_items
#   # Stage 3
#   schedule clear mc:states/4_setup/place/items/manage_items
#   # Ending
#   schedule clear mc:events/endings/surface_scene

# # Atomic Drill
# execute if score gamemode Settings matches 1 run function mc:states/1_factory_reset/clear/clear_schedules_atomic_drill

# # Expedition
# schedule clear mc:timer/expedition/timer_init