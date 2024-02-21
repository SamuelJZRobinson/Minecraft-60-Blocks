# Notes
  # Each location has a unique number, including: 1 (bank), 2 (neighbourhood), 3 (school), 4 (supermarket), 5 (bowling alley), 6 (hospital), 7 (metro), and 8 (warehouse)
  # The game will crash while attempting to teleport mobs away from the player when locationVisited equals 0

# Effect
effect give @p[team=Playing] invisibility 4 0 true

# Copy Player Items
execute if score doPovExpedition Settings matches 1 as @p[team=Playing] run function mc:events/random_loadout/locations/items/copy_player_items

# Teleport Entities
execute unless score locationVisited MenuExplore matches 0 run function mc:events/random_loadout/locations/items/tp_players
execute unless score locationVisited MenuExplore matches 0 run function mc:events/random_loadout/locations/items/tp_enemies_and_items

# Call Root
schedule function mc:timer/expedition/timer_init 4s replace