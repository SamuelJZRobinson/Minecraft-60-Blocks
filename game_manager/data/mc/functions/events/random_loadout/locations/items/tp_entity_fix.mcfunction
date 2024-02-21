# Teleport Locations
execute if score locationVisited MenuExplore matches 1 run spreadplayers -129.00 -383.00 7 56 under 303 false @s
execute if score locationVisited MenuExplore matches 2 run spreadplayers 0.00 -383.00 7 56 under 296 false @s
execute if score locationVisited MenuExplore matches 3 run spreadplayers 129.00 -383.00 7 56 under 304 false @s
execute if score locationVisited MenuExplore matches 4 run spreadplayers -129.00 -254.00 7 56 under 297 false @s
execute if score locationVisited MenuExplore matches 5 run spreadplayers -0.00 -254.00 7 56 under 297 false @s
execute if score locationVisited MenuExplore matches 6 run spreadplayers 129.00 -254.00 7 56 under 296 false @s
execute if score locationVisited MenuExplore matches 7 run spreadplayers -129.00 -125.00 7 56 under 308 false @s
execute if score locationVisited MenuExplore matches 8 run spreadplayers -0.00 -125.00 7 56 under 298 false @s

# Loop
execute as @e[team=Enemy] at @s if entity @p[team=Playing,distance=..24] run function mc:events/random_loadout/locations/items/tp_enemy_fix
execute as @e[team=Item] at @s if entity @p[team=Playing,distance=..24] run function mc:events/random_loadout/locations/items/tp_entity_fix