# Increment Death Chance
execute if score soupLevel TedStatus matches 1 run scoreboard players operation deathChance ItemsExpedition += THREAT_LEVEL_ONE ExpeditionOdds
execute if score soupLevel TedStatus matches 2 run scoreboard players operation deathChance ItemsExpedition += THREAT_LEVEL_TWO ExpeditionOdds
execute if score injuredLevel TedStatus matches 1 run scoreboard players operation deathChance ItemsExpedition += THREAT_LEVEL_TWO ExpeditionOdds
execute if score injuredLevel TedStatus matches 2 run scoreboard players operation deathChance ItemsExpedition += THREAT_LEVEL_THREE ExpeditionOdds
execute if score crazy TedStatus matches 1 run scoreboard players operation deathChance ItemsExpedition += THREAT_LEVEL_ONE ExpeditionOdds
execute if score sick TedStatus matches 1 run scoreboard players operation deathChance ItemsExpedition += THREAT_LEVEL_TWO ExpeditionOdds
execute if score waterLevel TedStatus matches 1 run scoreboard players operation deathChance ItemsExpedition += THREAT_LEVEL_ONE ExpeditionOdds
execute if score waterLevel TedStatus matches 2 run scoreboard players operation deathChance ItemsExpedition += THREAT_LEVEL_THREE ExpeditionOdds

# Copy Fatigue Status
scoreboard players operation isFatigued ItemsExpedition = fatigued TedStatus