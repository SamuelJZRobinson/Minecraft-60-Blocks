# Status
function gc:debug/bunker/characters/set_characters_all_problems

# Reset Scores
scoreboard players set deathChance CharactersExpedition 0

# Set Mutant
scoreboard players set isMutant MaryStatus 1

# Death Chance
function gc:states/9_expedition/characters/death/get_death_characters_mary_mutant