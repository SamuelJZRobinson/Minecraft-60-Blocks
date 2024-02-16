# Adjust Scores
scoreboard players set doException Exception 0

# Set State
scoreboard players set state GameStatus 1
schedule function mc:states/stages/manage_states 1t replace