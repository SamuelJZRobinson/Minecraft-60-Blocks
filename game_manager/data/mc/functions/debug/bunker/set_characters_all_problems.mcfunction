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

# Dolores
  # Alive
  scoreboard players set alive DoloresStatus 1
  # Sustenance
  scoreboard players set soup DoloresStatus 2
  scoreboard players set water DoloresStatus 2
  # Crazy
  scoreboard players set crazy DoloresStatus 1
  # Injury
  scoreboard players set infection DoloresStatus 5
  # Fatigue
  scoreboard players set tired DoloresStatus 1
  scoreboard players set fatigued DoloresStatus 1
  # Sickness
  scoreboard players set sick DoloresStatus 1

# Mary
  # Alive
  scoreboard players set alive MaryStatus 1
  # Sustenance
  scoreboard players set soup MaryStatus 2
  scoreboard players set water MaryStatus 2
  # Crazy
  scoreboard players set crazy MaryStatus 1
  # Injury
  scoreboard players set infection MaryStatus 5
  # Fatigue
  scoreboard players set tired MaryStatus 1
  scoreboard players set fatigued MaryStatus 1
  # Sickness
  scoreboard players set sick MaryStatus 1

# Ted
  # Alive
  scoreboard players set alive TedStatus 1
  # Sustenance
  scoreboard players set soup TedStatus 2
  scoreboard players set water TedStatus 2
  # Crazy
  scoreboard players set crazy TedStatus 1
  # Injury
  scoreboard players set infection TedStatus 5
  # Fatigue
  scoreboard players set tired TedStatus 1
  scoreboard players set fatigued TedStatus 1
  # Sickness
  scoreboard players set sick TedStatus 1

# Timmy
  # Alive
  scoreboard players set alive TimmyStatus 1
  # Sustenance
  scoreboard players set soup TimmyStatus 2
  scoreboard players set water TimmyStatus 2
  # Crazy
  scoreboard players set crazy TimmyStatus 1
  # Injury
  scoreboard players set infection TimmyStatus 5
  # Fatigue
  scoreboard players set tired TimmyStatus 1
  scoreboard players set fatigued TimmyStatus 1
  # Sickness
  scoreboard players set sick TimmyStatus 1

# Update Bunker
function mc:states/8_bunker/manage_cosmetics