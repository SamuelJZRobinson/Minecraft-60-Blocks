# Notes
  # Fake blindess must give outfits since it may override what other scripts give with time disparities.

# Effect
effect give @p[team=Playing] minecraft:speed infinite 1 true

tellraw @a "state 6"

# Run Timer
function mc:utility/timer/timer_init