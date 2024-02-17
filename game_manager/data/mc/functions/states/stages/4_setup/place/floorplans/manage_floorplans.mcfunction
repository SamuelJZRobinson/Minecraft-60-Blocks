# Set Floorplan
scoreboard players set math_in1 em 1
scoreboard players set math_in2 em 7
function em:math/randomp

# Floorplans
execute if score math_out em matches 1 run function mc:states/stages/4_setup/place/floorplans/clone/clone_fp_1
execute if score math_out em matches 2 run function mc:states/stages/4_setup/place/floorplans/clone/clone_fp_2
execute if score math_out em matches 3 run function mc:states/stages/4_setup/place/floorplans/clone/clone_fp_3
execute if score math_out em matches 4 run function mc:states/stages/4_setup/place/floorplans/clone/clone_fp_4
execute if score math_out em matches 5 run function mc:states/stages/4_setup/place/floorplans/clone/clone_fp_5
execute if score math_out em matches 6 run function mc:states/stages/4_setup/place/floorplans/clone/clone_fp_6