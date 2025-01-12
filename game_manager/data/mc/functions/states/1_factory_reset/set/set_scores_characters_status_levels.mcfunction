# NOTES
  # HUNGER_AMOUNT_MAX and THIRST_AMOUNT_MAX are n+1 since "max-1 = expected duration" (e.g., 11 days - 1 day = 10 days).

# Objective
scoreboard objectives add StatusLevels dummy {"bold":true,"color":"white","text":"Status Levels"}

# Day Range
  # Breakdown
  scoreboard players set CRAZY_ESCAPE_COUNTDOWN_MAX StatusLevels 35
  scoreboard players set CRAZY_ESCAPE_COUNTDOWN_MID StatusLevels 18
  scoreboard players set CRAZY_ESCAPE_COUNTDOWN_MIN StatusLevels 12
  # Fatigue
  scoreboard players set FATIGUE_DAYS_START StatusLevels 24
  scoreboard players set FATIGUE_DAYS_END StatusLevels 16
  # Infection
  scoreboard players set INJURY_INFECTION_COUNTDOWN_MAX StatusLevels 28
  scoreboard players set INJURY_INFECTION_COUNTDOWN_MIN StatusLevels 14
  # Sickness
  scoreboard players set SICK_DAYS_CRITICAL StatusLevels 5
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
  scoreboard players set CRAZY_SANITY_AMOUNT_MAX StatusLevels 7
  scoreboard players set CRAZY_SANITY_AMOUNT_MIN StatusLevels 0