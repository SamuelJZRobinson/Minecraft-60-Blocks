# Sick Chance
  # No Soup
  execute store result storage minecraft:math y int 1 run scoreboard players get SICKNESS_STARVATION StatusOdds
  $execute if score isSick $(objective) matches 0 if score soup $(objective) <= HUNGER_AMOUNT_CRITICAL StatusLevels run function mc:utility/math/get_random_range with storage minecraft:math
  $execute if score isSick $(objective) matches 0 if score soup $(objective) <= HUNGER_AMOUNT_CRITICAL StatusLevels if score out Math matches 1 run scoreboard players set isSick $(objective) 1
  # No Water
  execute store result storage minecraft:math y int 1 run scoreboard players get SICKNESS_DEHYDRATION StatusOdds
  $execute if score isSick $(objective) matches 0 if score water $(objective) <= THIRST_AMOUNT_CRITICAL StatusLevels run function mc:utility/math/get_random_range with storage minecraft:math
  $execute if score isSick $(objective) matches 0 if score water $(objective) <= THIRST_AMOUNT_CRITICAL StatusLevels if score out Math matches 1 run scoreboard players set isSick $(objective) 1

# Sick Death Chance
  # Decrement Countdown
  $execute if score isSick $(objective) matches 1 run scoreboard players remove sickDays $(objective) 1
  # Chance
  execute store result storage minecraft:math y int 1 run scoreboard players get SICKNESS_DEATH StatusOdds
  $execute if score sickDays $(objective) <= SICKNESS_MIN StatusLevels run function mc:utility/math/get_random_range with storage minecraft:math
  $execute if score sickDays $(objective) <= SICKNESS_MIN StatusLevels if score out Math matches 1 run scoreboard players set alive $(objective) 0
  # Guaranteed Death
  $execute if score sickDays $(objective) matches ..0 run scoreboard players set alive $(objective) 0