# Count Items
execute store result score itemsOwed GameStatus run data get block 37 60 -7 Items

# Gamemodes
execute if score gamemode Settings matches 1 run scoreboard players set task AtomicDrill 12
execute if score gamemode Settings matches 1 run scoreboard players set stage AtomicDrill 0
execute if score gamemode Settings matches 3 run scoreboard players set ending GameStatus 6

# Set Music
scoreboard players set music GameStatus 3