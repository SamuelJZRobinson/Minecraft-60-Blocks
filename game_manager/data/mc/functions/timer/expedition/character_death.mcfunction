# Stop Timer Engine
schedule clear mc:utility/timer/timer_loop

# Kill Character
execute unless score task AtomicDrill matches 15..16 run function mc:states/stages/9_expedition/place/items/set/set_death_character
scoreboard players set expeditionDeath AtomicDrill 1
scoreboard players reset @s PlayerDeaths

# Treat As Time Depleted
### Broken
schedule function mc:timer/expedition/time_depleted 5t replace