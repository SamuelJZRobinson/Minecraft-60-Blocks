# Notes
  # Fatigue is applies between day min to day max.

# Fatigue Chance
execute store result storage minecraft:math y int 1 run scoreboard players get FATIGUE StatusOdds
$execute if score isFatigued $(objective) matches 0 if score day GameStatus >= FATIGUE_DAYS_START StatusLevels if score day GameStatus <= FATIGUE_DAYS_END StatusLevels run function mc:utility/math/get_random_value with storage minecraft:math
$execute if score isFatigued $(objective) matches 0 if score day GameStatus >= FATIGUE_DAYS_START StatusLevels if score day GameStatus <= FATIGUE_DAYS_END StatusLevels if score out Math matches 1 run scoreboard players set isFatigued $(objective) 1
# Over Max Day
$execute if score day GameStatus > FATIGUE_DAYS_START StatusLevels run scoreboard players set isFatigued $(objective) 1