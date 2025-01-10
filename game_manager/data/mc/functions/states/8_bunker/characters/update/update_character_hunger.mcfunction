# Decrement Score
execute if score soup TedStatus matches 1.. run scoreboard players remove soup TedStatus 1

# Death
execute if score soup TedStatus matches ..0 run scoreboard players set alive TedStatus 0