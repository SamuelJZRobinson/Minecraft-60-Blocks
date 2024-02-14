# General
effect give @s minecraft:speed infinite 1 true
# Scavenge
execute if score clock Timer matches 4 run effect give @s minecraft:jump_boost infinite 0 true
execute if score characterSent ChestMenuExplore matches 3 run function mc:timers/engine/player_effects_mutant_mary