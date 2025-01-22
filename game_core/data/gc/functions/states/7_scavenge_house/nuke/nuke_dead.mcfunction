# Atomic Drill Task
execute if score gamemode Settings matches 1 run scoreboard players set task AtomicDrill 11
execute if score gamemode Settings matches 1 run scoreboard players set stage AtomicDrill 0

# Effects
effect give @p minecraft:blindness 3

# Ending
execute unless score gamemode Settings matches 1 run scoreboard players set ending GameStatus 1

# Character Inside
execute if score gamemode Settings matches 1 if score doTed Settings matches 1 run scoreboard players set isInside TedStatus 1
execute if score gamemode Settings matches 1 if score doTed Settings matches 0 run scoreboard players set isInside DoloresStatus 1

# Set State
  # Normal
  execute unless score gamemode Settings matches 1 run scoreboard players set gameState GameStatus 10
  execute unless score gamemode Settings matches 1 run schedule function gc:states/manage_states 1t replace
  # Atomic Drill
  execute if score gamemode Settings matches 1 run schedule function gc:states/inc_state 1t replace