# Stop Timer Engine
schedule clear mc:timers/engine/timer_loop

# Kill Character
execute unless score task AtomicDrill matches 15..16 run function mc:events/random_loadout/locations/items/set_death_character
scoreboard players set expeditionDeath AtomicDrill 1
scoreboard players reset @s PlayerDeaths

# Treat As Time Depleted
schedule function mc:timers/expedition/time_depleted 5t replace