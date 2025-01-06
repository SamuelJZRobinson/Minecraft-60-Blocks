# Roll Dice (n+1)
scoreboard players set math_in1 em 1
scoreboard players set math_in2 em 6
function em:math/randomp

# Good Event
execute if score math_out em matches 1..2 run playsound minecraft:block.note_block.flute record @a ~ ~ ~ 1 1 1
execute if score math_out em matches 1..2 run particle note ^ ^ ^1 0.6 0.6 0.6 2 7 force
execute if score math_out em matches 1..2 as @e[Mobs,distance=..16] run effect give @s slowness 15 1 false

# Bad Event
execute if score math_out em matches 3..5 run playsound minecraft:entity.ghast.hurt hostile @a ~ ~ ~ 1 0 1
execute if score math_out em matches 3..5 run particle angry_villager ^ ^ ^1 0.6 0.6 0.6 2 7 force
execute if score math_out em matches 3..5 as @e[Mobs,distance=..16] run effect give @s speed 15 1 false

# Refill Harmonica
schedule function tf_raycast:expedition/harmonica_refill 20s replace