# Reset Scores
function mc:states/1_factory_reset/set/set_scores_characters

# Set Chest Menu
function cm:place_chest_menu

# Set Settings
  # Player
  team join Player @s
  # Gamemode (Ensure Set Time And Show Warp Days Works)
  scoreboard players set gamemode Settings 2
  scoreboard players set doPovExpedition Settings 1
  
  # Set Scores
    # Status
    scoreboard players set isGameStarted GameStatus 1
    scoreboard players set gameState GameStatus 8
    scoreboard players set music GameStatus 5
    scoreboard players set day GameStatus 1

# Ted
  # Alive
  scoreboard players set alive TedStatus 1
  # Sustenance
  scoreboard players set soup TedStatus 2
  scoreboard players set water TedStatus 2
  # Crazy
  scoreboard players operation sanity TedStatus = SANITY_AMOUNT_MIN CharactersLevels
  scoreboard players set isCrazy TedStatus 1
  # Injury
  scoreboard players set isInjured TedStatus 1
  scoreboard players set injuredDays TedStatus 5
  # Fatigue
  scoreboard players set isTired TedStatus 1
  scoreboard players set isFatigued TedStatus 1
  # Sickness
  scoreboard players set isSick TedStatus 1

# Dolores
  # Alive
  scoreboard players set alive DoloresStatus 1
  # Sustenance
  scoreboard players set soup DoloresStatus 2
  scoreboard players set water DoloresStatus 2
  # Crazy
  scoreboard players operation sanity DoloresStatus = SANITY_AMOUNT_MIN CharactersLevels
  scoreboard players set isCrazy DoloresStatus 1
  # Injury
  scoreboard players set isInjured DoloresStatus 1
  scoreboard players set injuredDays DoloresStatus 5
  # Fatigue
  scoreboard players set isTired DoloresStatus 1
  scoreboard players set isFatigued DoloresStatus 1
  # Sickness
  scoreboard players set isSick DoloresStatus 1

# Mary
  # Alive
  scoreboard players set alive MaryStatus 1
  # Sustenance
  scoreboard players set soup MaryStatus 2
  scoreboard players set water MaryStatus 2
  # Crazy
  scoreboard players operation sanity MaryStatus = SANITY_AMOUNT_MIN CharactersLevels
  scoreboard players set isCrazy MaryStatus 1
  # Injury
  scoreboard players set isInjured MaryStatus 1
  scoreboard players set injuredDays MaryStatus 5
  # Fatigue
  scoreboard players set isTired MaryStatus 1
  scoreboard players set isFatigued MaryStatus 1
  # Sickness
  scoreboard players set isSick MaryStatus 1

# Timmy
  # Alive
  scoreboard players set alive TimmyStatus 1
  # Sustenance
  scoreboard players set soup TimmyStatus 2
  scoreboard players set water TimmyStatus 2
  # Crazy
  scoreboard players operation sanity TimmyStatus = SANITY_AMOUNT_MIN CharactersLevels
  scoreboard players set isCrazy TimmyStatus 1
  # Injury
  scoreboard players set isInjured TimmyStatus 1
  scoreboard players set injuredDays TimmyStatus 5
  # Fatigue
  scoreboard players set isTired TimmyStatus 1
  scoreboard players set isFatigued TimmyStatus 1
  # Sickness
  scoreboard players set isSick TimmyStatus 1

# Update Bunker
function mc:states/8_bunker/manage_cosmetics