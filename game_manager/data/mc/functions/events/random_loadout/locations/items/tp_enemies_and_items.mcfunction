# Teleport Locations
execute if score mapVisited MenuExplore matches 1 run spreadplayers -129.00 -383.00 8 56 under 303 false @e[Mobs]
execute if score mapVisited MenuExplore matches 1 run spreadplayers -129.00 -383.00 12 56 under 303 false @e[type=minecraft:slime,team=Item]
execute if score mapVisited MenuExplore matches 2 run spreadplayers 0.00 -383.00 8 56 under 296 false @e[Mobs]
execute if score mapVisited MenuExplore matches 2 run spreadplayers 0.00 -383.00 12 56 under 296 false @e[type=minecraft:slime,team=Item]
execute if score mapVisited MenuExplore matches 3 run spreadplayers 129.00 -383.00 8 40 under 304 false @e[Mobs]
execute if score mapVisited MenuExplore matches 3 run spreadplayers 129.00 -383.00 12 40 under 304 false @e[type=minecraft:slime,team=Item]
execute if score mapVisited MenuExplore matches 4 run spreadplayers -129.00 -254.00 8 56 under 297 false @e[Mobs]
execute if score mapVisited MenuExplore matches 4 run spreadplayers -129.00 -254.00 12 56 under 297 false @e[type=minecraft:slime,team=Item]
execute if score mapVisited MenuExplore matches 5 run spreadplayers -0.00 -254.00 8 56 under 297 false @e[Mobs]
execute if score mapVisited MenuExplore matches 5 run spreadplayers -0.00 -254.00 12 56 under 297 false @e[type=minecraft:slime,team=Item]
execute if score mapVisited MenuExplore matches 6 run spreadplayers 129.00 -254.00 8 40 under 296 false @e[Mobs]
execute if score mapVisited MenuExplore matches 6 run spreadplayers 129.00 -254.00 12 32 under 296 false @e[type=minecraft:slime,team=Item]
execute if score mapVisited MenuExplore matches 7 run spreadplayers -129.00 -125.00 8 56 under 308 false @e[Mobs]
execute if score mapVisited MenuExplore matches 7 run spreadplayers -129.00 -125.00 12 56 under 308 false @e[type=minecraft:slime,team=Item]
execute if score mapVisited MenuExplore matches 8 run spreadplayers -0.00 -125.00 8 54 under 298 false @e[Mobs]
execute if score mapVisited MenuExplore matches 8 run spreadplayers -0.00 -125.00 12 56 under 298 false @e[type=minecraft:slime,team=Item]

# Remove Nearby Enemies
execute as @e[Mobs] at @s if entity @p[Mobsteam=Player,distance=..24] run function mc:events/random_loadout/locations/items/tp_entity_fix
execute as @e[team=Item] at @s if entity @p[Mobsteam=Player,distance=..24] run function mc:events/random_loadout/locations/items/tp_entity_fix