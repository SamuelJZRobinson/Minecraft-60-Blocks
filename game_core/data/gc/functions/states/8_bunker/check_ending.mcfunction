# Adults Dead
execute unless score ending GameStatus matches 2.. if score adultsAlive CharactersCount matches 0 run scoreboard players set ending GameStatus 1

# Load Ending
execute if score ending GameStatus matches 1.. run scoreboard players set gameState GameStatus 10
execute if score ending GameStatus matches 1.. run schedule function gc:states/manage_states 1t replace