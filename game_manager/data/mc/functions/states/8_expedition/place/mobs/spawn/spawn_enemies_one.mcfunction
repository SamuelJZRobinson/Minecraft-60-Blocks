# Roll Dice (n+1)
scoreboard players set math_in1 em 1
scoreboard players set math_in2 em 2
function em:math/randomp

# Spawn Mob
execute if score math_out em matches 1 run function mc:states/8_expedition/place/mobs/spawn/spawn_endermite
execute if score math_out em matches 2 run function mc:states/8_expedition/place/mobs/spawn/spawn_husk
execute if score math_out em matches 3 run function mc:states/8_expedition/place/mobs/spawn/spawn_stray
execute if score math_out em matches 4 run function mc:states/8_expedition/place/mobs/spawn/spawn_cave_spider
scoreboard players set math_out em 0