# Clear Locations
function mc:states/1_factory_reset/clear/clear_locations

# Player
team join Player @s
clear @a
scoreboard players set @s MenuMain 0

# Gamemode (Ensure Set Time And Show Warp Days Works)
scoreboard players set gamemode Settings 2
scoreboard players set doPovExpedition Settings 1

# Set Scores
  # Status
  scoreboard players set started GameStatus 1
  scoreboard players set state GameStatus 8
  scoreboard players set music GameStatus 5
  scoreboard players set day GameStatus 1

# Alerts
scoreboard players set banditAlert MenuExplore 1
scoreboard players set falloutAlert MenuExplore 1
scoreboard players set mutantProtection MenuExplore 1
scoreboard players set padlockProtection MenuExplore 1

# Characters
function mc:debug/bunker/set_bunker_full_characters

# Items
function mc:debug/bunker/set_bunker_full_items

# Expedition
scoreboard players set expeditionReady MenuExplore 1

# Place Chest Menu
function cm:place_chest_menu

# Start New Day
# function mc:states/8_bunker/manage_day

# Update Bunker
function mc:states/8_bunker/manage_cosmetics