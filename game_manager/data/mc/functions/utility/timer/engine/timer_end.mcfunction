# Set State
execute if score state GameStatus matches 6 run scoreboard players set state GameStatus 7
execute if score state GameStatus matches 7 run scoreboard players set state GameStatus 8
execute if score state GameStatus matches 9 run scoreboard players set state GameStatus 8
function mc:states/stages/manage_states