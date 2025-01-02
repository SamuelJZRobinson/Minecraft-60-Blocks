# Effects
effect give @s resistance 10 5 true
effect give @s slow_falling 10 0 true

# Teleport Locations
execute if score mapVisited MenuExplore matches 1 run teleport @s -129.00 302.00 -383.00 0 0
execute if score mapVisited MenuExplore matches 2 run teleport @s -0.00 293.00 -383.00 0 0
execute if score mapVisited MenuExplore matches 3 run teleport @s 129.00 298.00 -383.00 0 0
execute if score mapVisited MenuExplore matches 4 run teleport @s -129.00 296.00 -254.00 0 0
execute if score mapVisited MenuExplore matches 5 run teleport @s 0.00 295.00 -254.00 0 0
execute if score mapVisited MenuExplore matches 6 run teleport @s 129.00 295.00 -254.00 0 0
execute if score mapVisited MenuExplore matches 7 run teleport @s -129.00 300.00 -125.00 0 0
execute if score mapVisited MenuExplore matches 8 run teleport @s -0.00 297.00 -125.00 0 0

# Set Centre
execute at @s run summon armor_stand ~ ~ ~ {NoGravity:1b,Invulnerable:1b,Tags:["locationCentre"]}

# Rotate Player Position
gamerule doMobLoot false
scoreboard players set rotate MenuExplore 0
function mc:timer/expedition/clear_location_rotate