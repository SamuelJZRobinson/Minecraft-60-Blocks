# Roll Dice (n+1)
scoreboard players set math_in1 em 1
scoreboard players set math_in2 em 6
function em:math/randomp

# Spawn Mob
execute if score math_out em matches 1 run function mc:states/8_expedition/place/mobs/spawn/spawn_zombified_piglin
execute if score math_out em matches 2 run function mc:states/8_expedition/place/mobs/spawn/spawn_slime
execute if score math_out em matches 3 run function mc:states/8_expedition/place/mobs/spawn/spawn_zoglin
execute if score math_out em matches 4 run function mc:states/8_expedition/place/mobs/spawn/spawn_enderman
execute if score math_out em matches 5 run function mc:states/8_expedition/place/mobs/spawn/spawn_creeper
scoreboard players set math_out em 0