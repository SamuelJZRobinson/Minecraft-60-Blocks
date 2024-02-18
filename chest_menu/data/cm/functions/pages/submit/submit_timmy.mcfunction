# Nourish
  # Soup
  execute if score timmyGiveCan ChestMenuFeed matches 1 run scoreboard players operation soup TimmyStatus = HUNGER_MAX StatusLevels
  # Water
  execute if score timmyGiveBottle ChestMenuFeed matches 1 run scoreboard players operation water TimmyStatus = THIRST_MAX StatusLevels
  # Medkit
  execute if score giveMedkit ChestMenuFeed matches 4 run scoreboard players set sick TimmyStatus 0
  execute if score giveMedkit ChestMenuFeed matches 4 run scoreboard players operation terminalIllness TimmyStatus = SICKNESS_MAX StatusLevels
  execute if score giveMedkit ChestMenuFeed matches 4 run scoreboard players set injured TimmyStatus 0
  execute if score giveMedkit ChestMenuFeed matches 4 run scoreboard players operation infection TimmyStatus = INFECTION_MAX StatusLevels

# Refresh Scores
scoreboard players set timmyGiveCan ChestMenuFeed 0
scoreboard players set timmyGiveBottle ChestMenuFeed 0