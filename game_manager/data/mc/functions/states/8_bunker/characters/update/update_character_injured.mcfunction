# Increment Days
$execute if score isInjured $(objective) matches 1 run scoreboard players add injuredDays $(objective) 1

# Death Chance
$execute if score isInjured $(objective) matches 1 if score injuredDays $(objective) >= INJURED_DAYS_CRITICAL StatusLevels store result score output Math run function mc:utility/math/get_random_value_via_amount_score {"x":1,"score":INJURED_DEATH,"objective":StatusOdds}
$execute if score isInjured $(objective) matches 1 if score injuredDays $(objective) >= INJURED_DAYS_CRITICAL StatusLevels if score output Math matches 1 run scoreboard players set alive $(objective) -1

# Guaranteed Death
$execute if score injuredDays $(objective) >= INJURED_DAYS_DEATH StatusLevels run scoreboard players set alive $(objective) -1