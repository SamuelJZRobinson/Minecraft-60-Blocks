# Reset Scores
function gc:states/1_factory_reset/set/set_scores_characters

# Set Chest Menu
team join Player @p
function cm:place_chest_menu

# Set Settings
  # Gamemode (Ensure Set Time And Show Warp Days Works)
  scoreboard players set gamemode Settings 2
  # Set Scores
    # Status
    scoreboard players set isGameStarted GameStatus 1
    scoreboard players set gameState GameStatus 8
    scoreboard players set music GameStatus 5
    scoreboard players set day GameStatus 0

# Characters
  # Ted
  scoreboard players set alive TedStatus 1
  scoreboard players set soup TedStatus 100
  scoreboard players set water TedStatus 100
  # Dolores
  scoreboard players set alive DoloresStatus 1
  scoreboard players set soup DoloresStatus 100
  scoreboard players set water DoloresStatus 100
  # Mary
  scoreboard players set alive MaryStatus 1
  scoreboard players set soup MaryStatus 100
  scoreboard players set water MaryStatus 100
  # Timmy
  scoreboard players set alive TimmyStatus 1
  scoreboard players set soup TimmyStatus 100
  scoreboard players set water TimmyStatus 100

# Update Bunker
# Kill Entities
function gc:states/1_factory_reset/clear/clear_locations

# Place Stuff
function gc:states/8_bunker/characters/manage_characters
function gc:states/8_bunker/items/process/manage_bundles
function gc:states/8_bunker/items/manage_items