# Set State
execute if score state GameStatus matches 6 run scoreboard players set state GameStatus 7
schedule function mc:states/stages/manage_states 1t replace