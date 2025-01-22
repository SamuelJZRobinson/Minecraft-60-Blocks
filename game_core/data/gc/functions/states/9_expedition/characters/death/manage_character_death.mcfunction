# Notes
  # Death chance is x in 100.

# Reset Scores
scoreboard players set deathChance CharactersExpedition 0

# Get Death Chance
  # Characters
  function gc:states/9_expedition/characters/death/get_death_characters
  # Other
  execute unless score characterSent MenuExpedition matches 3 run function gc:states/9_expedition/characters/death/get_death_other
  execute if score characterSent MenuExpedition matches 3 if score isMutant MaryStatus matches 0 run function gc:states/9_expedition/characters/death/get_death_other

# Chance
execute store result score output Math run random value 1..100
execute if score output Math <= deathChance CharactersExpedition run function gc:states/9_expedition/characters/death/set_character_dead
execute if score output Math > deathChance CharactersExpedition run schedule function gc:states/9_expedition/inc_step 1t replace