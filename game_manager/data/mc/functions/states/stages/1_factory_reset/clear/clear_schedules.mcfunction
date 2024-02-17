# Timer Engine
schedule clear mc:utility/timer/timer_loop

# Apocalypse And Scavenge
  # Stage 1
  schedule clear mc:states/stages/4_setup/place/floorplans/spawn/spawn_main_checkers
  schedule clear mc:states/stages/4_setup/place/floorplans/spawn/spawn_fp_1_checkers
  schedule clear mc:states/stages/4_setup/place/floorplans/spawn/spawn_fp_2_checkers
  schedule clear mc:states/stages/4_setup/place/floorplans/spawn/spawn_fp_3_checkers
  schedule clear mc:states/stages/4_setup/place/floorplans/spawn/spawn_fp_4_checkers
  schedule clear mc:states/stages/4_setup/place/floorplans/spawn/spawn_fp_5_checkers
  schedule clear mc:states/stages/4_setup/place/floorplans/spawn/spawn_fp_6_checkers
  schedule clear mc:states/stages/4_setup/place/floorplans/spawn/spawn_west_checkers
  schedule clear mc:states/stages/4_setup/place/floorplans/spawn/spawn_east_checkers
  schedule clear mc:states/stages/4_setup/place/floorplans/spawn/check_for_block
  schedule clear mc:states/stages/4_setup/place/floorplans/spawn/count_high_spots
  # Stage 2
  schedule clear mc:states/stages/4_setup/place/characters/spawn/spawn_all
  schedule clear mc:states/stages/4_setup/place/items/spawn_items
  # Stage 3
  schedule clear mc:states/stages/4_setup/place/items/manage_items
  # Ending
  schedule clear mc:events/endings/surface_scene

# Atomic Drill
execute if score gamemode Settings matches 1 run function mc:states/stages/1_factory_reset/clear/clear_schedules_atomic_drill

# Expedition
schedule clear mc:timer/expedition/timer_init