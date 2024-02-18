# Nourish
  # Soup
  execute if score tedGiveCan ChestMenuFeed matches 1 run scoreboard players operation soup TedStatus = HUNGER_MAX StatusLevels
  # Water
  execute if score tedGiveBottle ChestMenuFeed matches 1 run scoreboard players operation water TedStatus = THIRST_MAX StatusLevels
  # Medkit
  execute if score giveMedkit ChestMenuFeed matches 3 run scoreboard players set sick TedStatus 0
  execute if score giveMedkit ChestMenuFeed matches 3 run scoreboard players operation terminalIllness TedStatus = SICKNESS_MAX StatusLevels
  execute if score giveMedkit ChestMenuFeed matches 3 run scoreboard players set injured TedStatus 0
  execute if score giveMedkit ChestMenuFeed matches 3 run scoreboard players operation infection TedStatus = INFECTION_MAX StatusLevels

# Refresh Scores
scoreboard players set tedGiveCan ChestMenuFeed 0
scoreboard players set tedGiveBottle ChestMenuFeed 0