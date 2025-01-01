# Notes
  # Fake blindess must give outfits since it may override what other scripts give with time disparities.

# Effect
execute as @p[team=Player] run function mc:utility/effects/effects_default
tellraw @a "state 6"

# Run Timer
function mc:utility/timer/timer_init