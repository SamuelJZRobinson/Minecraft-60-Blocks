# Decrement Score
execute if score soup TedStatus matches 1.. run scoreboard players remove soup TedStatus 1

# Status Levels
execute if score soup TedStatus > HUNGER_MID StatusLevels run scoreboard players set soupLevel TedStatus 0
execute if score soup TedStatus <= HUNGER_MID StatusLevels if score soup TedStatus > HUNGER_MIN StatusLevels run scoreboard players set soupLevel TedStatus 1
execute if score soup TedStatus <= HUNGER_MIN StatusLevels run scoreboard players set soupLevel TedStatus 2

# Death
execute if score soup TedStatus matches ..0 run scoreboard players set alive TedStatus 0