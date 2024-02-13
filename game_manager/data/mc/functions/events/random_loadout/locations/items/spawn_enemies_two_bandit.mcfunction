# Roll Dice (n+1)
scoreboard players set math_in1 em 1
scoreboard players set math_in2 em 3
function em:math/randomp

# Spawn Mob
execute if score math_out em matches 1 run function mc:events/random_loadout/locations/items/spawn/spawn_pillager
execute if score math_out em matches 2 run function mc:events/random_loadout/locations/items/spawn/spawn_vindicator
scoreboard players set math_out em 0