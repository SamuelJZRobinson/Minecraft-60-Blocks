# Disable Mob Loot
gamerule doMobLoot false

# Bunker
  # Clear Entities
  kill @e[tag=bunkerItem]
  kill @e[tag=bunkerStatus]
  kill @e[tag=bunkerMarker]
  kill @e[tag=bunkerHitbox]
  # Adjust Structures
  fill 0 54 29 0 54 29 minecraft:air replace minecraft:chest
  # clone 81 8 54 73 1 44 -4 53 26 masked

# Scavenge
kill @e[team=Enemy]

# Normal House
function mc:quit/refresh_locations_house

# execute if score preLocationVisited ChestMenuExplore = locationVisited ChestMenuExplore

# Enable Mob Loot
gamerule doMobLoot true

# Place Gear In Lobby Display Case
execute unless score restartScavenge GameStatus matches 1 unless entity @e[type=armor_stand,tag=lobbyAmmo] run function mc:quit/decorate_lobby