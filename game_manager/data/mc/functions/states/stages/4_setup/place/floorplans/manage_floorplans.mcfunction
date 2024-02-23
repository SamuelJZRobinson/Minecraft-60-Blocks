# Set Floorplan
execute store result score out Math run random value 1..6

# Floorplans
execute if score out Math matches 1 run function mc:states/stages/4_setup/place/floorplans/clone/clone_fp_1
execute if score out Math matches 2 run function mc:states/stages/4_setup/place/floorplans/clone/clone_fp_2
execute if score out Math matches 3 run function mc:states/stages/4_setup/place/floorplans/clone/clone_fp_3
execute if score out Math matches 4 run function mc:states/stages/4_setup/place/floorplans/clone/clone_fp_4
execute if score out Math matches 5 run function mc:states/stages/4_setup/place/floorplans/clone/clone_fp_5
execute if score out Math matches 6 run function mc:states/stages/4_setup/place/floorplans/clone/clone_fp_6