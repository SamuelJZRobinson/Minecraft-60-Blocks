# Give Supplies
  # Soup
  execute if score doloresGiveSoup MenuFeed matches 1 run scoreboard players operation soup DoloresStatus = HUNGER_AMOUNT_MAX CharactersLevels
  # Water
  execute if score doloresGiveWater MenuFeed matches 1 run scoreboard players operation water DoloresStatus = THIRST_AMOUNT_MAX CharactersLevels
  # Medkit
  execute if score giveMedkit MenuFeed matches 1 run scoreboard players set isSick DoloresStatus 0
  execute if score giveMedkit MenuFeed matches 1 run scoreboard players set sickDays DoloresStatus 0
  execute if score giveMedkit MenuFeed matches 1 run scoreboard players set isInjured DoloresStatus 0
  execute if score giveMedkit MenuFeed matches 1 run scoreboard players set injuredDays DoloresStatus 0

# Reset Scores
scoreboard players set doloresGiveSoup MenuFeed 0
scoreboard players set doloresGiveWater MenuFeed 0