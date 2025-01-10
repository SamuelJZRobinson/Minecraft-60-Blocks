# Decrement Countdown
execute if score injured TedStatus matches 1 unless score infection TedStatus matches ..0 run scoreboard players remove infection TedStatus 1

# Infection Chance
execute store result storage minecraft:math y int 1 run scoreboard players get INFECTION StatusOdds
execute if score sick TedStatus matches 0 if score infection TedStatus <= INFECTION_MIN StatusLevels run function mc:utility/math/get_random_range with storage minecraft:math
execute if score sick TedStatus matches 0 if score infection TedStatus <= INFECTION_MIN StatusLevels if score out Math matches 1 run scoreboard players set sick TedStatus 1

# Status Levels
execute if score infection TedStatus = INFECTION_MAX StatusLevels run scoreboard players set injuredLevel TedStatus 0
execute if score infection TedStatus < INFECTION_MAX StatusLevels if score infection TedStatus > INFECTION_MIN StatusLevels run scoreboard players set injuredLevel TedStatus 1
execute if score infection TedStatus <= INFECTION_MIN StatusLevels run scoreboard players set injuredLevel TedStatus 2

# Dead
execute if score infection TedStatus matches 0 run scoreboard players set alive TedStatus 0