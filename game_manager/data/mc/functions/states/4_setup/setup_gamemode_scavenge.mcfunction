# Notes
  # Outfit given when house layout completes to avoid being overwritten by fake blindness.
  # State is set in place/setup_house_done

# Set Scores
scoreboard players set lockInventory GameStatus 1
scoreboard players set fakeBlindness GameStatus 1

# Randomize House
function mc:states/4_setup/place/manage_placement

# Goto House
function mc:utility/tp/tp_house