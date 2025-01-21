# Chance
execute if score alive MaryStatus matches 1 if score isMutant MaryStatus matches 0 store result score output Math run function gc:utility/math/get_random_value_via_amount_score {"x":1,"score":MUTANT,"objective":CharactersOdds}
execute if score alive MaryStatus matches 1 if score isMutant MaryStatus matches 0 if score output Math matches 1 run scoreboard players set isMutant MaryStatus 1