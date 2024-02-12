# Teleport Locations
execute if score locationVisited ChestMenuExplore matches 1 run spreadplayers -129.00 -383.00 8 56 under 303 false @e[team=Enemy]
execute if score locationVisited ChestMenuExplore matches 1 run spreadplayers -129.00 -383.00 12 56 under 303 false @e[type=minecraft:slime,team=Item]
execute if score locationVisited ChestMenuExplore matches 2 run spreadplayers 0.00 -383.00 8 56 under 296 false @e[team=Enemy]
execute if score locationVisited ChestMenuExplore matches 2 run spreadplayers 0.00 -383.00 12 56 under 296 false @e[type=minecraft:slime,team=Item]
execute if score locationVisited ChestMenuExplore matches 3 run spreadplayers 129.00 -383.00 8 40 under 304 false @e[team=Enemy]
execute if score locationVisited ChestMenuExplore matches 3 run spreadplayers 129.00 -383.00 12 40 under 304 false @e[type=minecraft:slime,team=Item]
execute if score locationVisited ChestMenuExplore matches 4 run spreadplayers -129.00 -254.00 8 56 under 297 false @e[team=Enemy]
execute if score locationVisited ChestMenuExplore matches 4 run spreadplayers -129.00 -254.00 12 56 under 297 false @e[type=minecraft:slime,team=Item]
execute if score locationVisited ChestMenuExplore matches 5 run spreadplayers -0.00 -254.00 8 56 under 297 false @e[team=Enemy]
execute if score locationVisited ChestMenuExplore matches 5 run spreadplayers -0.00 -254.00 12 56 under 297 false @e[type=minecraft:slime,team=Item]
execute if score locationVisited ChestMenuExplore matches 6 run spreadplayers 129.00 -254.00 8 40 under 296 false @e[team=Enemy]
execute if score locationVisited ChestMenuExplore matches 6 run spreadplayers 129.00 -254.00 12 32 under 296 false @e[type=minecraft:slime,team=Item]
execute if score locationVisited ChestMenuExplore matches 7 run spreadplayers -129.00 -125.00 8 56 under 308 false @e[team=Enemy]
execute if score locationVisited ChestMenuExplore matches 7 run spreadplayers -129.00 -125.00 12 56 under 308 false @e[type=minecraft:slime,team=Item]
execute if score locationVisited ChestMenuExplore matches 8 run spreadplayers -0.00 -125.00 8 54 under 298 false @e[team=Enemy]
execute if score locationVisited ChestMenuExplore matches 8 run spreadplayers -0.00 -125.00 12 56 under 298 false @e[type=minecraft:slime,team=Item]

# Remove Nearby Enemies
execute as @e[team=Enemy] at @s if entity @p[team=Playing,distance=..24] run function mc:events/random_loadout/locations/items/tp_entity_fix
execute as @e[team=Item] at @s if entity @p[team=Playing,distance=..24] run function mc:events/random_loadout/locations/items/tp_entity_fix