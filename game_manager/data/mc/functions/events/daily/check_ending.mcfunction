# Check If Both Adults Are Dead
function mc:status/characters/count_family
execute unless score gamemode Settings matches 1 unless score ending GameStatus matches 2.. if score adultsAlive GameStatus matches 0 run scoreboard players set ending GameStatus 1

# Load Ending
execute unless score gamemode Settings matches 1 if score ending GameStatus matches 1.. run function mc:events/endings/bunker_scene