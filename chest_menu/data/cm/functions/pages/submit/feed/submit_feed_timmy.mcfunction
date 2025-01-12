# Give Supplies
  # Soup
  execute if score timmyGiveSoup MenuFeed matches 1 run scoreboard players operation soup TimmyStatus = HUNGER_AMOUNT_MAX StatusLevels
  # Water
  execute if score timmyGiveWater MenuFeed matches 1 run scoreboard players operation water TimmyStatus = THIRST_AMOUNT_MAX StatusLevels
  # Medkit
  execute if score giveMedkit MenuFeed matches 4 run scoreboard players set isSick TimmyStatus 0
  execute if score giveMedkit MenuFeed matches 4 run scoreboard players operation terminalIllness TimmyStatus = SICK_DAYS_DEATH StatusLevels
  execute if score giveMedkit MenuFeed matches 4 run scoreboard players set isInjured TimmyStatus 0
  execute if score giveMedkit MenuFeed matches 4 run scoreboard players operation injuryInfectionCountdown TimmyStatus = INJURY_INFECTION_COUNTDOWN_MAX StatusLevels

# Refresh Scores
scoreboard players set timmyGiveSoup MenuFeed 0
scoreboard players set timmyGiveWater MenuFeed 0