# East
execute if score bunkerSide GameStatus matches 0 positioned 34.50 -28.00 0.50 run function mc:states/4_setup/place/floorplans/general/summon_waypoint_arrow
execute if score bunkerSide GameStatus matches 0 positioned 34.50 -30.00 0.50 run function mc:states/4_setup/place/floorplans/general/summon_waypoint_small_square
execute if score bunkerSide GameStatus matches 0 positioned 32.50 -30.00 0.50 run function mc:states/4_setup/place/floorplans/general/summon_waypoint_large_square
# West
execute if score bunkerSide GameStatus matches 1 positioned 7.50 -28.00 0.50 run function mc:states/4_setup/place/floorplans/general/summon_waypoint_arrow
execute if score bunkerSide GameStatus matches 1 positioned 7.50 -30.00 0.50 run function mc:states/4_setup/place/floorplans/general/summon_waypoint_small_square
execute if score bunkerSide GameStatus matches 1 positioned 9.50 -30.00 0.50 run function mc:states/4_setup/place/floorplans/general/summon_waypoint_large_square