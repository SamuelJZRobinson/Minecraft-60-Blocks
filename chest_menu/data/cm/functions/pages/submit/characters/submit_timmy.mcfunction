# Nourish
  # Soup
  execute if score timmyGiveSoup MenuFeed matches 1 run scoreboard players operation soup TimmyStatus = HUNGER_MAX StatusLevels
  # Water
  execute if score timmyGiveWater MenuFeed matches 1 run scoreboard players operation water TimmyStatus = THIRST_MAX StatusLevels
  # Medkit
  execute if score giveMedkit MenuFeed matches 4 run scoreboard players set sick TimmyStatus 0
  execute if score giveMedkit MenuFeed matches 4 run scoreboard players operation terminalIllness TimmyStatus = SICKNESS_MAX StatusLevels
  execute if score giveMedkit MenuFeed matches 4 run scoreboard players set injured TimmyStatus 0
  execute if score giveMedkit MenuFeed matches 4 run scoreboard players operation infection TimmyStatus = INFECTION_MAX StatusLevels

# Refresh Scores
scoreboard players set timmyGiveSoup MenuFeed 0
scoreboard players set timmyGiveWater MenuFeed 0