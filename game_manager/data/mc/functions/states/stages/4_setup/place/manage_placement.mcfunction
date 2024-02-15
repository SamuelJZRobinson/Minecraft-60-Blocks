# Set Floorplan
scoreboard players set math_in1 em 1
scoreboard players set math_in2 em 7
function em:math/randomp

# Floorplans
execute if score math_out em matches 1 run function mc:states/stages/4_setup/place/floorplans/clone/clone_floorplan_1
execute if score math_out em matches 2 run function mc:states/stages/4_setup/place/floorplans/clone/clone_floorplan_2
execute if score math_out em matches 3 run function mc:states/stages/4_setup/place/floorplans/clone/clone_floorplan_3
execute if score math_out em matches 4 run function mc:states/stages/4_setup/place/floorplans/clone/clone_floorplan_4
execute if score math_out em matches 5 run function mc:states/stages/4_setup/place/floorplans/clone/clone_floorplan_5
execute if score math_out em matches 6 run function mc:states/stages/4_setup/place/floorplans/clone/clone_floorplan_6

# Characters
execute unless entity @e[type=minecraft:zombie,tag=houseMary,limit=1] run schedule function mc:states/stages/4_setup/place/characters/spawn/spawn_all 7t replace

# Items
schedule function mc:states/stages/4_setup/place/items/spawn/spawn_items_check 9t replace