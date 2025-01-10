# Notes
  # Fatigue is applies between day min to day max.

# Fatigue Chance
execute store result storage minecraft:math y int 1 run scoreboard players get FATIGUE StatusOdds
execute if score isFatigued TedStatus matches 0 if score day GameStatus >= FATIGUE_DAY_MIN StatusLevels if score day GameStatus <= FATIGUE_DAY_MAX StatusLevels run function mc:utility/math/get_random_range with storage minecraft:math
execute if score isFatigued TedStatus matches 0 if score day GameStatus >= FATIGUE_DAY_MIN StatusLevels if score day GameStatus <= FATIGUE_DAY_MAX StatusLevels if score out Math matches 1 run scoreboard players set isFatigued TedStatus 1
# Over Max Day
execute if score day GameStatus >= FATIGUE_DAY_MAX StatusLevels run scoreboard players set isFatigued TedStatus 1