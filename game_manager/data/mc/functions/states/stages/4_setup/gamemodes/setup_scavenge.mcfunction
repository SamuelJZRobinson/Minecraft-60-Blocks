# Notes
  # Outfit given when house layout completes to avoid being overwritten by fake blindness.
  # State is set in place/setup_house_done

# Set Scores
scoreboard players set lockInventory GameStatus 1

# Randomize House
function mc:states/stages/4_setup/place/manage_placement

# Player
effect give @p[team=Playing] minecraft:speed infinite 1 true
function mc:utility/tp/tp_house