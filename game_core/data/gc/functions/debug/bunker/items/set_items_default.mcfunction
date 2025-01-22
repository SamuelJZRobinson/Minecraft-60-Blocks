# Set Chest Menu
team join Player @p
function cm:place_chest_menu

# Set Settings
  # Gamemode (Ensure Set Time And Show Warp Days Works)
  scoreboard players set gamemode Settings 2
  scoreboard players set doInPersonExpedition Settings 1
  # Set Scores
    # Status
    scoreboard players set isGameStarted GameStatus 1
    scoreboard players set gameState GameStatus 8
    scoreboard players set music GameStatus 5
    scoreboard players set day GameStatus 1
  # Alerts
  scoreboard players set banditAlert MenuExpedition 0
  scoreboard players set falloutAlert MenuExpedition 0
  scoreboard players set mutantProtection MenuExpedition 0
  scoreboard players set padlockProtection MenuExpedition 0
  # Expedition
  scoreboard players set expeditionReady MenuExpedition 1

# Items
  # Standard
  scoreboard players set ammo ItemsBunker 1
  scoreboard players set axe ItemsBunker 2
  scoreboard players set boyScoutHandbook ItemsBunker 1
  scoreboard players set bugSpray ItemsBunker 1
  scoreboard players set cards ItemsBunker 1
  scoreboard players set checkers ItemsBunker 1
  scoreboard players set flashlight ItemsBunker 1
  scoreboard players set gasMask ItemsBunker 1
  scoreboard players set gun ItemsBunker 2
  scoreboard players set harmonica ItemsBunker 1
  scoreboard players set map ItemsBunker 1
  scoreboard players set medkit ItemsBunker 2
  scoreboard players set padlock ItemsBunker 1
  scoreboard players set radio ItemsBunker 1
  scoreboard players set soups ItemsBunker 100
  scoreboard players set suitcase ItemsBunker 3
  scoreboard players set waters ItemsBunker 100
  # Custom
  scoreboard players set bodyArmour ItemsBunker 3

# Count Items
function gc:states/8_bunker/items/count/count_items

# Place Chest Menu
function cm:place_chest_menu

# Update Bunker
# Kill Entities
function gc:states/1_factory_reset/clear/clear_locations

# Place Stuff
function gc:states/8_bunker/characters/manage_characters
function gc:states/8_bunker/items/process/manage_bundles
function gc:states/8_bunker/items/manage_items