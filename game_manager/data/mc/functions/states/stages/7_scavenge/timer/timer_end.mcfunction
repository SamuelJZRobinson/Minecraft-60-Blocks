# Note
  # manage_nuke manages next state since there are multiple outcomes.

# Nuke
execute as @p[team=Playing] run function mc:states/stages/7_scavenge/nuke/manage_nuke

# Set State
# execute if score state GameStatus matches 7 run scoreboard players set state GameStatus 8
# function mc:states/stages/manage_states