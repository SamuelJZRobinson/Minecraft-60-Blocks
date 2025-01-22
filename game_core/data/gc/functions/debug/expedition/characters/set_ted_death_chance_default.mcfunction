# Status
function gc:debug/bunker/characters/set_characters_default

# Reset Scores
scoreboard players set deathChance CharactersExpedition 0

# Set Scores
scoreboard players set hasMap ItemsExpedition 1
scoreboard players set falloutAlert MenuExpedition 1
scoreboard players set hasGasMask ItemsExpedition 1
scoreboard players set banditAlert MenuExpedition 1
scoreboard players set hasGun ItemsExpedition 1
scoreboard players set hasBodyArmour ItemsExpedition 1

# Death Chance
function gc:states/9_expedition/characters/death/get_death_characters_ted
function gc:states/9_expedition/characters/death/get_death_other