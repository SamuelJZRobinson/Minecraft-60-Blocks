# Give Supplies
  # Soup
  execute if score doloresGiveSoup MenuFeed matches 1 run scoreboard players operation soup DoloresStatus = HUNGER_AMOUNT_MAX StatusLevels
  # Water
  execute if score doloresGiveWater MenuFeed matches 1 run scoreboard players operation water DoloresStatus = THIRST_AMOUNT_MAX StatusLevels
  # Medkit
  execute if score giveMedkit MenuFeed matches 1 run scoreboard players set isSick DoloresStatus 0
  execute if score giveMedkit MenuFeed matches 1 run scoreboard players operation terminalIllness DoloresStatus = SICK_DAYS_DEATH StatusLevels
  execute if score giveMedkit MenuFeed matches 1 run scoreboard players set isInjured DoloresStatus 0
  execute if score giveMedkit MenuFeed matches 1 run scoreboard players operation injuryInfectionCountdown DoloresStatus = INJURY_INFECTION_COUNTDOWN_MAX StatusLevels

# Refresh Scores
scoreboard players set doloresGiveSoup MenuFeed 0
scoreboard players set doloresGiveWater MenuFeed 0