# Sick Chance
  # Low Soup
  $execute if score isSick $(objective) matches 0 if score soup $(objective) <= HUNGER_AMOUNT_CRITICAL StatusLevels store result score output Math run function mc:utility/math/get_random_value_via_amount_score {"x":1,"score":SICK_STARVATION,"objective":StatusOdds}
  $execute if score isSick $(objective) matches 0 if score soup $(objective) <= HUNGER_AMOUNT_CRITICAL StatusLevels if score output Math matches 1 run scoreboard players set isSick $(objective) 1
  # Low Water
  $execute if score isSick $(objective) matches 0 if score water $(objective) <= THIRST_AMOUNT_CRITICAL StatusLevels store result score output Math run function mc:utility/math/get_random_value_via_amount_score {"x":1,"score":SICK_DEHYDRATION,"objective":StatusOdds}
  $execute if score isSick $(objective) matches 0 if score water $(objective) <= THIRST_AMOUNT_CRITICAL StatusLevels if score output Math matches 1 run scoreboard players set isSick $(objective) 1

# Sick Death Chance
  # Increment Days
  $execute if score isSick $(objective) matches 1 run scoreboard players add sickDays $(objective) 1
  # Chance
  $execute if score sickDays $(objective) >= SICK_DAYS_CRITICAL StatusLevels store result score output Math run function mc:utility/math/get_random_value_via_amount_score {"x":1,"score":SICK_DEATH,"objective":StatusOdds}
  $execute if score sickDays $(objective) >= SICK_DAYS_CRITICAL StatusLevels if score output Math matches 1 run scoreboard players set alive $(objective) -1
  # Guaranteed Death
  $execute if score sickDays $(objective) >= SICK_DAYS_DEATH StatusLevels run scoreboard players set alive $(objective) -1