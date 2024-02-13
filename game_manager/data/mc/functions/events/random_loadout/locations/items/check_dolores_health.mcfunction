# Increment Death Chance
execute if score soupLevel DoloresStatus matches 1 run scoreboard players operation deathChance ItemsExpedition += THREAT_LEVEL_ONE ExpeditionOdds
execute if score soupLevel DoloresStatus matches 2 run scoreboard players operation deathChance ItemsExpedition += THREAT_LEVEL_TWO ExpeditionOdds
execute if score injuredLevel DoloresStatus matches 1 run scoreboard players operation deathChance ItemsExpedition += THREAT_LEVEL_TWO ExpeditionOdds
execute if score injuredLevel DoloresStatus matches 2 run scoreboard players operation deathChance ItemsExpedition += THREAT_LEVEL_THREE ExpeditionOdds
execute if score crazy DoloresStatus matches 1 run scoreboard players operation deathChance ItemsExpedition += THREAT_LEVEL_ONE ExpeditionOdds
execute if score sick DoloresStatus matches 1 run scoreboard players operation deathChance ItemsExpedition += THREAT_LEVEL_TWO ExpeditionOdds
execute if score waterLevel DoloresStatus matches 1 run scoreboard players operation deathChance ItemsExpedition += THREAT_LEVEL_ONE ExpeditionOdds
execute if score waterLevel DoloresStatus matches 2 run scoreboard players operation deathChance ItemsExpedition += THREAT_LEVEL_THREE ExpeditionOdds

# Copy Fatigue Status
scoreboard players operation isFatigued ItemsExpedition = fatigued DoloresStatus