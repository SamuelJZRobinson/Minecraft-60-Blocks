# Note
  # Do not schedule tests and approve to avoid issues when calling manage_tests externally while it's already running.

# Set Score
scoreboard players set testsFailed Exception 1

# Alert
tellraw @a ["",{"text":"⚠ ","color":"gold"},{"nbt":"message","storage":"messages","color":"gold"}]
function mc:sounds/warning