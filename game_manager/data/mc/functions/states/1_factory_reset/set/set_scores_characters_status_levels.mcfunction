# NOTES
  # HUNGER_AMOUNT_MAX and THIRST_AMOUNT_MAX are n+1 since "max-1 = expected duration" (e.g., 11 days - 1 day = 10 days).

# Objective
scoreboard objectives add StatusLevels dummy {"bold":true,"color":"white","text":"Status Levels"}

# Day Range
  # Breakdown
  scoreboard players set CRAZY_ESCAPE_DAYS_CRITICAL StatusLevels 20
  scoreboard players set CRAZY_ESCAPE_DAYS_DEATH StatusLevels 35
  # Fatigue
  scoreboard players set FATIGUE_DAYS_START StatusLevels 16
  scoreboard players set FATIGUE_DAYS_END StatusLevels 24
  # Infection
  scoreboard players set INJURED_DAYS_DANGER StatusLevels 3
  scoreboard players set INJURED_DAYS_CRITICAL StatusLevels 8
  scoreboard players set INJURED_DAYS_DEATH StatusLevels 10
  # Sickness
  scoreboard players set SICK_DAYS_CRITICAL StatusLevels 20
  scoreboard players set SICK_DAYS_DEATH StatusLevels 40

# Amount
  # Hunger
  scoreboard players set HUNGER_AMOUNT_MAX StatusLevels 11
  scoreboard players set HUNGER_AMOUNT_DANGER StatusLevels 6
  scoreboard players set HUNGER_AMOUNT_CRITICAL StatusLevels 3
  # Thirst
  scoreboard players set THIRST_AMOUNT_MAX StatusLevels 6
  scoreboard players set THIRST_AMOUNT_DANGER StatusLevels 4
  scoreboard players set THIRST_AMOUNT_CRITICAL StatusLevels 2
  # Sanity
  scoreboard players set SANITY_AMOUNT_MAX StatusLevels 7
  scoreboard players set SANITY_AMOUNT_MIN StatusLevels 0