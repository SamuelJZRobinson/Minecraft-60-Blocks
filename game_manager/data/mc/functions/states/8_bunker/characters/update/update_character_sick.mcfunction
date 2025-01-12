# Sick Chance
  # Low Soup
  execute store result storage minecraft:math y int 1 run scoreboard players get SICK_STARVATION StatusOdds
  execute if score isSick $(objective) matches 0 if score soup $(objective) <= HUNGER_AMOUNT_CRITICAL StatusLevels run function mc:utility/math/get_random_range with storage minecraft:math
  execute if score isSick $(objective) matches 0 if score soup $(objective) <= HUNGER_AMOUNT_CRITICAL StatusLevels if score out Math matches 1 run scoreboard players set isSick $(objective) 1
  # Low Water
  execute store result storage minecraft:math y int 1 run scoreboard players get SICK_DEHYDRATION StatusOdds
  execute if score isSick $(objective) matches 0 if score water $(objective) <= THIRST_AMOUNT_CRITICAL StatusLevels run function mc:utility/math/get_random_range with storage minecraft:math
  execute if score isSick $(objective) matches 0 if score water $(objective) <= THIRST_AMOUNT_CRITICAL StatusLevels if score out Math matches 1 run scoreboard players set isSick $(objective) 1

# Sick Death Chance
  # Increment Days
  execute if score isSick $(objective) matches 1 run scoreboard players add sickDays $(objective) 1
  # Chance
  execute store result storage minecraft:math y int 1 run scoreboard players get SICK_DEATH StatusOdds
  execute if score sickDays $(objective) >= SICK_DAYS_CRITICAL StatusLevels run function mc:utility/math/get_random_range with storage minecraft:math
  execute if score sickDays $(objective) >= SICK_DAYS_CRITICAL StatusLevels if score out Math matches 1 run scoreboard players set alive $(objective) 0
  # Guaranteed Death
  execute if score sickDays $(objective) >= SICK_DAYS_DEATH StatusLevels run scoreboard players set alive $(objective) 0