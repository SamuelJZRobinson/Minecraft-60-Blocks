# Notes
  # Whole cans and bottles work in multiples of 4

# Remove Characters
### kill @e[tag=BunkerNpc]

# Gamemode (Ensure Set Time And Show Warp Days Works)
scoreboard players set gamemode Settings 3
scoreboard players set doPovExpedition Settings 1

# Set Scores
  # Status
  scoreboard players set started GameStatus 1
  scoreboard players set state GameStatus 8
  scoreboard players set music GameStatus 5
  scoreboard players set day GameStatus 1
  # Atomic Drill
  # scoreboard players set task AtomicDrill 12
  # scoreboard players set stage AtomicDrill 0
  # scoreboard players set mode PlayerLockInventory 3

# Alerts
scoreboard players set banditAlert MenuExplore 1
scoreboard players set falloutAlert MenuExplore 1
scoreboard players set mutantProtection MenuExplore 1
scoreboard players set padlockProtection MenuExplore 1

# Player
team join Player @s
clear @a
scoreboard players set @s MenuMain 0

# Characters
function d:chest_menu/set/set_bunker_characters_full

# Items
function d:chest_menu/set/set_bunker_items_full

# Expedition
scoreboard players set expeditionReady MenuExplore 1

# Place Chest Menu
function cm:place_chest_menu

# Start New Day
function mc:states/8_bunker/manage_day