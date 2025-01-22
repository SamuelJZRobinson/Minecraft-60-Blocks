# Ted
execute if score characterSent MenuExpedition matches 1 run function gc:states/9_expedition/characters/death/get_death_characters_ted
# Dolores
execute if score characterSent MenuExpedition matches 2 run function gc:states/9_expedition/characters/death/get_death_characters_dolores
# Mary
execute if score characterSent MenuExpedition matches 3 if score isMutant MaryStatus matches 0 run function gc:states/9_expedition/characters/death/get_death_characters_mary_normal
execute if score characterSent MenuExpedition matches 3 if score isMutant MaryStatus matches 1 run function gc:states/9_expedition/characters/death/get_death_characters_mary_mutant
# Timmy
execute if score characterSent MenuExpedition matches 4 run function gc:states/9_expedition/characters/death/get_death_characters_timmy