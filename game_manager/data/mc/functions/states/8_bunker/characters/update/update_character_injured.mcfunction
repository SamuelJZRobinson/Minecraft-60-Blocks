# Decrement Countdown
$execute if score isInjured $(objective) matches 1 unless score injuryInfectionCountdown $(objective) matches ..0 run scoreboard players remove injuryInfectionCountdown $(objective) 1

# Infection Chance
execute store result storage minecraft:math y int 1 run scoreboard players get INFECTION StatusOdds
$execute if score isSick $(objective) matches 0 if score injuryInfectionCountdown $(objective) <= INJURY_INFECTION_COUNTDOWN_MIN StatusLevels run function mc:utility/math/get_random_range with storage minecraft:math
$execute if score isSick $(objective) matches 0 if score injuryInfectionCountdown $(objective) <= INJURY_INFECTION_COUNTDOWN_MIN StatusLevels if score out Math matches 1 run scoreboard players set isSick $(objective) 1

# Guaranteed Death
$execute if score injuryInfectionCountdown $(objective) matches ..0 run scoreboard players set alive $(objective) 0