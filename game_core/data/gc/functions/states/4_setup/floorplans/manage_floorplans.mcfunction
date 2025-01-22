# Get Random Floor
execute store result score randomFloorplan ItemsHouse run random value 1..6

# Floorplans
execute if score randomFloorplan ItemsHouse matches 1 run function gc:states/4_setup/floorplans/1/manage_floorplan
execute if score randomFloorplan ItemsHouse matches 2 run function gc:states/4_setup/floorplans/2/manage_floorplan
execute if score randomFloorplan ItemsHouse matches 3 run function gc:states/4_setup/floorplans/3/manage_floorplan
execute if score randomFloorplan ItemsHouse matches 4 run function gc:states/4_setup/floorplans/4/manage_floorplan
execute if score randomFloorplan ItemsHouse matches 5 run function gc:states/4_setup/floorplans/5/manage_floorplan
execute if score randomFloorplan ItemsHouse matches 6 run function gc:states/4_setup/floorplans/6/manage_floorplan

# Reset Scores
scoreboard players reset randomFloorplan ItemsHouse