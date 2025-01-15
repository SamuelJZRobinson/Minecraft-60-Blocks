# Give Supplies
  # Soup
  execute if score timmyGiveSoup MenuFeed matches 1 run scoreboard players operation soup TimmyStatus = HUNGER_AMOUNT_MAX StatusLevels
  # Water
  execute if score timmyGiveWater MenuFeed matches 1 run scoreboard players operation water TimmyStatus = THIRST_AMOUNT_MAX StatusLevels
  # Medkit
  execute if score giveMedkit MenuFeed matches 4 run scoreboard players set isSick TimmyStatus 0
  execute if score giveMedkit MenuFeed matches 4 run scoreboard players set sickDays TimmyStatus 0
  execute if score giveMedkit MenuFeed matches 4 run scoreboard players set isInjured TimmyStatus 0
  execute if score giveMedkit MenuFeed matches 4 run scoreboard players set injuredDays TimmyStatus 0

# Reset Scores
scoreboard players set timmyGiveSoup MenuFeed 0
scoreboard players set timmyGiveWater MenuFeed 0