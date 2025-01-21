# Reset Scores
function gc:states/1_factory_reset/set/set_scores_characters

# Set Chest Menu
function cm:place_chest_menu

# Set Settings
  # Player
  team join Player @s
  # Gamemode (Ensure Set Time And Show Warp Days Works)
  scoreboard players set gamemode Settings 2
  scoreboard players set doInPersonExpedition Settings 1
  # Set Scores
    # Status
    scoreboard players set isGameStarted GameStatus 1
    scoreboard players set gameState GameStatus 8
    scoreboard players set music GameStatus 5
    scoreboard players set day GameStatus 1

# Characters
  # Ted
  scoreboard players set alive TedStatus 1
  scoreboard players operation soup TedStatus = HUNGER_AMOUNT_CRITICAL CharactersLevels
  scoreboard players set water TedStatus 100
  # Dolores
  scoreboard players set alive DoloresStatus 1
  scoreboard players operation soup DoloresStatus = HUNGER_AMOUNT_CRITICAL CharactersLevels
  scoreboard players set water DoloresStatus 100
  # Mary
  scoreboard players set alive MaryStatus 1
  scoreboard players operation soup MaryStatus = HUNGER_AMOUNT_CRITICAL CharactersLevels
  scoreboard players set water MaryStatus 100
  # Timmy
  scoreboard players set alive TimmyStatus 1
  scoreboard players operation soup TimmyStatus = HUNGER_AMOUNT_CRITICAL CharactersLevels
  scoreboard players set water TimmyStatus 100

# Update Bunker
function gc:states/8_bunker/manage_cosmetics