# Decrement Score
execute unless score water TedStatus matches 1.. run scoreboard players remove water TedStatus 1

# Death
execute if score water TedStatus matches ..0 run scoreboard players set alive TedStatus 0