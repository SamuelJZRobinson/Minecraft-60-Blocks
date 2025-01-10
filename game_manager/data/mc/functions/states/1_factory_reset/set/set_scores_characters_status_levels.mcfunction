# NOTES
  # HUNGER_MAX and THIRST_MAX are n+1 since "max-1 = expected duration" (e.g., 11 days - 1 day = 10 days).

# Objective
scoreboard objectives add StatusLevels dummy {"bold":true,"color":"white","text":"Status Levels"}
# Breakdown
scoreboard players set BREAKDOWN_MIN StatusLevels 12
scoreboard players set BREAKDOWN_RAGE_MAX StatusLevels 18
scoreboard players set BREAKDOWN_MAX StatusLevels 35
# Fatigue
scoreboard players set FATIGUE_DAY_MIN StatusLevels 16
scoreboard players set FATIGUE_DAY_MAX StatusLevels 24
# Hunger
scoreboard players set HUNGER_MIN StatusLevels 3
scoreboard players set HUNGER_MID StatusLevels 6
scoreboard players set HUNGER_MAX StatusLevels 11
# Thirst
scoreboard players set THIRST_MIN StatusLevels 2
scoreboard players set THIRST_MID StatusLevels 4
scoreboard players set THIRST_MAX StatusLevels 6
# Infection
scoreboard players set INFECTION_MIN StatusLevels 14
scoreboard players set INFECTION_MAX StatusLevels 28
# Sanity
scoreboard players set SANITY_MIN StatusLevels 0
scoreboard players set SANITY_MAX StatusLevels 7
# Sickness
scoreboard players set SICKNESS_MIN StatusLevels 5
scoreboard players set SICKNESS_MAX StatusLevels 20