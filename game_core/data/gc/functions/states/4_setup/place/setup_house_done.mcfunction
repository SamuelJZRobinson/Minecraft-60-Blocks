# Clear Effects
effect clear @a blindness

# Set State
scoreboard players set gameState GameStatus 6
schedule function gc:states/manage_states 1t replace