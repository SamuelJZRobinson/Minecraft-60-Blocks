# Status
function gc:debug/bunker/characters/set_characters_default

# Reset Scores
scoreboard players set deathChance CharactersExpedition 0

# Set Scores
scoreboard players set map ItemsBunker 0
scoreboard players set hasMap ItemsExpedition 0
scoreboard players set falloutAlert MenuExpedition 1
scoreboard players set hasGasMask ItemsExpedition 0
scoreboard players set banditAlert MenuExpedition 1
scoreboard players set hasGun ItemsExpedition 0
scoreboard players set hasBodyArmour ItemsExpedition 0

# Death Chance
function gc:states/9_expedition/characters/death/get_death_other