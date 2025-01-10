# Nourish
  # Soup
  execute if score tedGiveSoup MenuFeed matches 1 run scoreboard players operation soup TedStatus = HUNGER_MAX StatusLevels
  # Water
  execute if score tedGiveWater MenuFeed matches 1 run scoreboard players operation water TedStatus = THIRST_MAX StatusLevels
  # Medkit
  execute if score giveMedkit MenuFeed matches 3 run scoreboard players set isSick TedStatus 0
  execute if score giveMedkit MenuFeed matches 3 run scoreboard players operation terminalIllness TedStatus = SICKNESS_MAX StatusLevels
  execute if score giveMedkit MenuFeed matches 3 run scoreboard players set isInjured TedStatus 0
  execute if score giveMedkit MenuFeed matches 3 run scoreboard players operation infection TedStatus = INFECTION_MAX StatusLevels

# Refresh Scores
scoreboard players set tedGiveSoup MenuFeed 0
scoreboard players set tedGiveWater MenuFeed 0