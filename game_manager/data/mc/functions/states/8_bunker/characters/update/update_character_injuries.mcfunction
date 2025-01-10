# Decrement Countdown
execute if score isInjured TedStatus matches 1 unless score infection TedStatus matches ..0 run scoreboard players remove infection TedStatus 1

# Infection Chance
execute store result storage minecraft:math y int 1 run scoreboard players get INFECTION StatusOdds
execute if score isSick TedStatus matches 0 if score infection TedStatus <= INFECTION_MIN StatusLevels run function mc:utility/math/get_random_range with storage minecraft:math
execute if score isSick TedStatus matches 0 if score infection TedStatus <= INFECTION_MIN StatusLevels if score out Math matches 1 run scoreboard players set isSick TedStatus 1

# Dead
execute if score infection TedStatus matches 0 run scoreboard players set alive TedStatus 0