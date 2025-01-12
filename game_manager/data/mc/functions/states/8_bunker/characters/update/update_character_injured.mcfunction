# Increment Days
execute if score isInjured TedStatus matches 1 run scoreboard players add injuredDays TedStatus 1

# Death Chance
execute store result storage minecraft:math y int 1 run scoreboard players get INJURED_DEATH StatusOdds
execute if score isInjured TedStatus matches 1 if score injuredDays TedStatus >= INJURED_DAYS_CRITICAL StatusLevels run function mc:utility/math/get_random_range with storage minecraft:math
execute if score isInjured TedStatus matches 1 if score injuredDays TedStatus >= INJURED_DAYS_CRITICAL StatusLevels if score out Math matches 1 run scoreboard players set alive TedStatus 0

# Guaranteed Death
execute if score injuredDays TedStatus >= INJURED_DAYS_DEATH StatusLevels run scoreboard players set alive TedStatus 0