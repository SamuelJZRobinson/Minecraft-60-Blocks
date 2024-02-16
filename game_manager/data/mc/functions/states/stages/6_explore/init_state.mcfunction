# Outfit
function mc:utility/outfit/manage_house_outfit

# Effect
effect give @p[team=Playing] minecraft:speed infinite 1 true

tellraw @a "state 6"

# Run Timer
function mc:utility/timer/timer_init