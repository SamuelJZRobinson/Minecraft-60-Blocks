# Notes
  # Delayed teleport accounts for player death respawn.

# Set Music
scoreboard players set music GameStatus 3

# Goto Bunker
schedule function gc:utility/tp/tp_bunker 3t replace

# Update
function gc:states/8_bunker/manage_day