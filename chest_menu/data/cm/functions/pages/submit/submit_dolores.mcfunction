# Nourish
  # Soup
  execute if score doloresGiveCan MenuFeed matches 1 run scoreboard players operation soup DoloresStatus = HUNGER_MAX StatusLevels
  # Water
  execute if score doloresGiveBottle MenuFeed matches 1 run scoreboard players operation water DoloresStatus = THIRST_MAX StatusLevels
  # Medkit
  execute if score giveMedkit MenuFeed matches 1 run scoreboard players set sick DoloresStatus 0
  execute if score giveMedkit MenuFeed matches 1 run scoreboard players operation terminalIllness DoloresStatus = SICKNESS_MAX StatusLevels
  execute if score giveMedkit MenuFeed matches 1 run scoreboard players set injured DoloresStatus 0
  execute if score giveMedkit MenuFeed matches 1 run scoreboard players operation infection DoloresStatus = INFECTION_MAX StatusLevels

# Refresh Scores
scoreboard players set doloresGiveCan MenuFeed 0
scoreboard players set doloresGiveBottle MenuFeed 0