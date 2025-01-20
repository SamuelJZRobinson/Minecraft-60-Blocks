# Notes
  # Odds are 1 in X.

# Objective
scoreboard objectives add ExpeditionOdds dummy {"bold":true,"color":"white","text":"Expedition Odds"}
# Items
  # Supply Drop
  scoreboard players set SUPPLY_DROP ExpeditionOdds 10
  # No Loot
  scoreboard players set NO_LOOT ExpeditionOdds 14
  # Item Break
  scoreboard players set ITEM_BREAK ExpeditionOdds 3
# Characters
  # Death Chance (%)
  scoreboard players set DEATH_CHANCE_LEVEL_1 ExpeditionOdds 5
  scoreboard players set DEATH_CHANCE_LEVEL_2 ExpeditionOdds 10
  scoreboard players set DEATH_CHANCE_BANDIT ExpeditionOdds 30