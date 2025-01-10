# Decrement Score
execute unless score water TedStatus matches 1.. run scoreboard players remove water TedStatus 1

# Status Levels
execute if score water TedStatus > THIRST_MID StatusLevels run scoreboard players set waterLevel TedStatus 0
execute if score water TedStatus <= THIRST_MID StatusLevels if score water TedStatus > THIRST_MIN StatusLevels run scoreboard players set waterLevel TedStatus 1
execute if score water TedStatus <= THIRST_MIN StatusLevels run scoreboard players set waterLevel TedStatus 2

# Death
execute if score water TedStatus matches ..0 run scoreboard players set alive TedStatus 0