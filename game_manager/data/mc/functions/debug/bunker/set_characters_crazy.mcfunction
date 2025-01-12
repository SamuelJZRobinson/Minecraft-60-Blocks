# Reset Scores
function mc:states/1_factory_reset/set/set_scores_characters

# Set Settings
  # Player
  team join Player @s
  # Gamemode (Ensure Set Time And Show Warp Days Works)
  scoreboard players set gamemode Settings 2
  scoreboard players set doPovExpedition Settings 1
  # Set Scores
    # Status
    scoreboard players set started GameStatus 1
    scoreboard players set state GameStatus 8
    scoreboard players set music GameStatus 5
    scoreboard players set day GameStatus 1

# Characters
  # Ted
  scoreboard players set alive TedStatus 1
  scoreboard players set soup TedStatus 100
  scoreboard players set water TedStatus 100
  scoreboard players operation crazySanity TedStatus = CRAZY_SANITY_AMOUNT_MIN StatusLevels
  # Dolores
  scoreboard players set alive DoloresStatus 1
  scoreboard players set soup DoloresStatus 100
  scoreboard players set water DoloresStatus 100
  scoreboard players operation crazySanity DoloresStatus = CRAZY_SANITY_AMOUNT_MIN StatusLevels
  # Mary
  scoreboard players set alive MaryStatus 1
  scoreboard players set soup MaryStatus 100
  scoreboard players set water MaryStatus 100
  scoreboard players operation crazySanity MaryStatus = CRAZY_SANITY_AMOUNT_MIN StatusLevels
  # Timmy
  scoreboard players set alive TimmyStatus 1
  scoreboard players set soup TimmyStatus 100
  scoreboard players set water TimmyStatus 100
  scoreboard players operation crazySanity TimmyStatus = CRAZY_SANITY_AMOUNT_MIN StatusLevels

# Update Bunker
function mc:states/8_bunker/manage_cosmetics