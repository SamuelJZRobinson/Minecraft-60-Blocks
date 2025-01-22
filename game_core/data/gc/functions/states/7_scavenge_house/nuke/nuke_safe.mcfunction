# Atomic Drill Task
execute if score gamemode Settings matches 1 run scoreboard players set task AtomicDrill 12
execute if score gamemode Settings matches 1 run scoreboard players set stage AtomicDrill 0
execute if score gamemode Settings matches 3 run scoreboard players set ending GameStatus 6

# Set Music
scoreboard players set music GameStatus 3

# Proceed
schedule function gc:states/inc_state 1t replace