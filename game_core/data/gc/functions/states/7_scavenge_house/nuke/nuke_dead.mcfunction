# Gamemodes
execute if score gamemode Settings matches 1 run function gc:states/7_scavenge_house/nuke/nuke_dead_drill
execute unless score gamemode Settings matches 1 run scoreboard players set ending GameStatus 1

# Effects
effect give @p minecraft:blindness 3

# Set State
scoreboard players set gameState GameStatus 10
schedule function gc:states/manage_states 1t replace