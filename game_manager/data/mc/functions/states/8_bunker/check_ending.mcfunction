# Adults Dead
execute unless score gamemode Settings matches 1 unless score ending GameStatus matches 2.. if score adultsAlive CharactersCount matches 0 run scoreboard players set ending GameStatus 1

# Load Ending
execute unless score gamemode Settings matches 1 if score ending GameStatus matches 1.. run scoreboard players set gameState GameStatus 10
execute unless score gamemode Settings matches 1 if score ending GameStatus matches 1.. run function mc:states/manage_states