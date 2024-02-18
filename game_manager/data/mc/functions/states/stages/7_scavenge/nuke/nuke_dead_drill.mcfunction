# Increment Task
execute if score gamemode Settings matches 1 run scoreboard players set task AtomicDrill 11
execute if score gamemode Settings matches 1 run scoreboard players set stage AtomicDrill 0
# Set Music
execute if score gamemode Settings matches 1 run scoreboard players set music GameStatus 3
# Check Items
execute if score gamemode Settings matches 1 run function mc:utility/scavenge/process/manage_process