# Timer Engine
schedule clear mc:timers/engine/timer_loop

# Apocalypse And Scavenge
  # Stage 1
  schedule clear mc:states/stages/5_setup_house/place/floorplans/spawn_main_checkers
  schedule clear mc:states/stages/5_setup_house/place/floorplans/spawn_floorplan1_checkers
  schedule clear mc:states/stages/5_setup_house/place/floorplans/spawn_floorplan2_checkers
  schedule clear mc:states/stages/5_setup_house/place/floorplans/spawn_floorplan3_checkers
  schedule clear mc:states/stages/5_setup_house/place/floorplans/spawn_floorplan4_checkers
  schedule clear mc:states/stages/5_setup_house/place/floorplans/spawn_floorplan5_checkers
  schedule clear mc:states/stages/5_setup_house/place/floorplans/spawn_floorplan6_checkers
  schedule clear mc:states/stages/5_setup_house/place/floorplans/spawn/spawn_west_checkers
  schedule clear mc:states/stages/5_setup_house/place/floorplans/spawn/spawn_east_checkers
  schedule clear mc:states/stages/5_setup_house/place/floorplans/check_for_block
  schedule clear mc:states/stages/5_setup_house/place/floorplans/count_high_spots
  # Stage 2
  schedule clear mc:states/stages/5_setup_house/place/characters/spawn/spawn_characters
  schedule clear mc:states/stages/5_setup_house/place/items/spawn_items
  # Stage 3
  schedule clear mc:states/stages/5_setup_house/place/items/manage_items
  # Ending
  schedule clear mc:events/endings/surface_scene

# Atomic Drill
execute if score gamemode Settings matches 1 run function mc:states/stages/1_factory_reset/clear/clear_schedules_atomic_drill

# Expedition
schedule clear mc:timers/expedition/timer_setup