# Increment Days
$execute if score isInjured $(objective) matches 1 run scoreboard players add injuredDays $(objective) 1

# Death Chance
execute store result storage minecraft:math y int 1 run scoreboard players get INJURED_DEATH StatusOdds
$execute if score isInjured $(objective) matches 1 if score injuredDays $(objective) >= INJURED_DAYS_CRITICAL StatusLevels run function mc:utility/math/get_random_range with storage minecraft:math
$execute if score isInjured $(objective) matches 1 if score injuredDays $(objective) >= INJURED_DAYS_CRITICAL StatusLevels if score out Math matches 1 run scoreboard players set alive $(objective) 0

# Guaranteed Death
$execute if score injuredDays $(objective) >= INJURED_DAYS_DEATH StatusLevels run scoreboard players set alive $(objective) 0