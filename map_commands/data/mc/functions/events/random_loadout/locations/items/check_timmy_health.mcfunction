# Increment Death Chance
execute if score soupLevel TimmyStatus matches 1 run scoreboard players operation deathChance ItemsExpedition += THREAT_LEVEL_ONE ExpeditionOdds
execute if score soupLevel TimmyStatus matches 2 run scoreboard players operation deathChance ItemsExpedition += THREAT_LEVEL_TWO ExpeditionOdds
execute if score injuredLevel TimmyStatus matches 1 run scoreboard players operation deathChance ItemsExpedition += THREAT_LEVEL_TWO ExpeditionOdds
execute if score injuredLevel TimmyStatus matches 2 run scoreboard players operation deathChance ItemsExpedition += THREAT_LEVEL_THREE ExpeditionOdds
execute if score crazy TimmyStatus matches 1 run scoreboard players operation deathChance ItemsExpedition += THREAT_LEVEL_ONE ExpeditionOdds
execute if score sick TimmyStatus matches 1 run scoreboard players operation deathChance ItemsExpedition += THREAT_LEVEL_TWO ExpeditionOdds
execute if score waterLevel TimmyStatus matches 1 run scoreboard players operation deathChance ItemsExpedition += THREAT_LEVEL_ONE ExpeditionOdds
execute if score waterLevel TimmyStatus matches 2 run scoreboard players operation deathChance ItemsExpedition += THREAT_LEVEL_THREE ExpeditionOdds

# Copy Fatigue Status
scoreboard players operation isFatigued ItemsExpedition = fatigued TimmyStatus