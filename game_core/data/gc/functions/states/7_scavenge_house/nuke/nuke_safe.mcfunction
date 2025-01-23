# Atomic Drill Task
execute if score gamemode Settings matches 1 run scoreboard players set task AtomicDrill 12
execute if score gamemode Settings matches 1 run scoreboard players set step AtomicDrill 0
execute if score gamemode Settings matches 3 run scoreboard players set ending GameStatus 6

# Character Inside
execute if score doTed Settings matches 1 run scoreboard players set isInside TedStatus 1
execute if score doTed Settings matches 0 run scoreboard players set isInside DoloresStatus 1

# Proceed
schedule function gc:states/inc_state 1t replace