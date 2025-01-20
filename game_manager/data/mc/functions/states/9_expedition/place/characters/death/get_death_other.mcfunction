# No Map
execute if score map ItemsBunker matches 0 if score hasMap ItemsExpedition matches 0 run scoreboard players operation deathChance CharactersExpedition += DEATH_CHANCE_LEVEL_1 ExpeditionOdds
# No Gas Mask With Nuclear Fallout
execute if score falloutAlert MenuExpedition matches 1 if score hasGasMask ItemsExpedition matches 0 run scoreboard players operation deathChance CharactersExpedition += DEATH_CHANCE_LEVEL_2 ExpeditionOdds
# No Defences With Bandits
scoreboard players set hasBanditDefence CharactersExpedition 0
execute if score hasGun ItemsExpedition matches 1 run scoreboard players add hasBanditDefence CharactersExpedition 1
execute if score hasBodyArmour ItemsExpedition matches 1 run scoreboard players add hasBanditDefence CharactersExpedition 1
execute if score banditAlert MenuExpedition matches 1 if score hasBanditDefence CharactersExpedition matches 0 run scoreboard players operation deathChance CharactersExpedition += DEATH_CHANCE_BANDIT ExpeditionOdds