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
  # Dolores
  scoreboard players set alive DoloresStatus 1
  scoreboard players set soup DoloresStatus 100
  scoreboard players set water DoloresStatus 100
  # Mary
  scoreboard players set alive MaryStatus 1
  scoreboard players set soup MaryStatus 100
  scoreboard players set water MaryStatus 100
  # Ted
  scoreboard players set alive TedStatus 1
  scoreboard players set soup TedStatus 100
  scoreboard players set water TedStatus 100
  # Timmy
  scoreboard players set alive TimmyStatus 1
  scoreboard players set soup TimmyStatus 100
  scoreboard players set water TimmyStatus 100

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

# Expedition
scoreboard players set expeditionReady MenuExplore 1

# Place Chest Menu
function cm:place_chest_menu

# Start New Day
# function mc:states/8_bunker/manage_day

# Update Bunker
function mc:states/8_bunker/manage_cosmetics