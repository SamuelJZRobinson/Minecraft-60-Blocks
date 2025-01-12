# Give Supplies
  # Soup
  execute if score maryGiveSoup MenuFeed matches 1 run scoreboard players operation soup MaryStatus = HUNGER_AMOUNT_MAX StatusLevels
  # Water
  execute if score maryGiveWater MenuFeed matches 1 run scoreboard players operation water MaryStatus = THIRST_AMOUNT_MAX StatusLevels
  # Medkit
  execute if score giveMedkit MenuFeed matches 2 run scoreboard players set isSick MaryStatus 0
  execute if score giveMedkit MenuFeed matches 2 run scoreboard players operation terminalIllness MaryStatus = SICK_DAYS_DEATH StatusLevels
  execute if score giveMedkit MenuFeed matches 2 run scoreboard players set isInjured MaryStatus 0
  execute if score giveMedkit MenuFeed matches 2 run scoreboard players operation injuryInfectionCountdown MaryStatus = INJURY_INFECTION_COUNTDOWN_MAX StatusLevels