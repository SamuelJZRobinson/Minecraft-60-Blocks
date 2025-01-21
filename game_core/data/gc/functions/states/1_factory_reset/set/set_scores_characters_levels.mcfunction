# NOTES
  # HUNGER_AMOUNT_MAX and THIRST_AMOUNT_MAX are n+1 since "max-1 = expected duration" (e.g., 11 days - 1 day = 10 days).

# Objective
scoreboard objectives add CharactersLevels dummy {"bold":true,"color":"white","text":"Characters Levels"}

# Day Range
  # Breakdown
  scoreboard players set CRAZY_ESCAPE_DAYS_CRITICAL CharactersLevels 20
  scoreboard players set CRAZY_ESCAPE_DAYS_DEATH CharactersLevels 35
  # Fatigue
  scoreboard players set FATIGUE_DAYS_START CharactersLevels 16
  scoreboard players set FATIGUE_DAYS_END CharactersLevels 24
  # Infection
  scoreboard players set INJURED_DAYS_DANGER CharactersLevels 3
  scoreboard players set INJURED_DAYS_CRITICAL CharactersLevels 8
  scoreboard players set INJURED_DAYS_DEATH CharactersLevels 10
  # Sickness
  scoreboard players set SICK_DAYS_CRITICAL CharactersLevels 20
  scoreboard players set SICK_DAYS_DEATH CharactersLevels 40

# Amount
  # Hunger
  scoreboard players set HUNGER_AMOUNT_MAX CharactersLevels 11
  scoreboard players set HUNGER_AMOUNT_DANGER CharactersLevels 6
  scoreboard players set HUNGER_AMOUNT_CRITICAL CharactersLevels 3
  # Thirst
  scoreboard players set THIRST_AMOUNT_MAX CharactersLevels 6
  scoreboard players set THIRST_AMOUNT_DANGER CharactersLevels 4
  scoreboard players set THIRST_AMOUNT_CRITICAL CharactersLevels 2
  # Sanity
  scoreboard players set SANITY_AMOUNT_MAX CharactersLevels 7
  scoreboard players set SANITY_AMOUNT_MIN CharactersLevels 0