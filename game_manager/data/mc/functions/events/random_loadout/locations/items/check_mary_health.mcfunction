# Increment Death Chance
execute if score soupLevel MaryStatus matches 1 run scoreboard players operation deathChance ItemsExpedition += THREAT_LEVEL_ONE ExpeditionOdds
execute if score soupLevel MaryStatus matches 2 run scoreboard players operation deathChance ItemsExpedition += THREAT_LEVEL_TWO ExpeditionOdds
execute if score injuredLevel MaryStatus matches 1 run scoreboard players operation deathChance ItemsExpedition += THREAT_LEVEL_TWO ExpeditionOdds
execute if score injuredLevel MaryStatus matches 2 run scoreboard players operation deathChance ItemsExpedition += THREAT_LEVEL_THREE ExpeditionOdds
execute if score crazy MaryStatus matches 1 run scoreboard players operation deathChance ItemsExpedition += THREAT_LEVEL_ONE ExpeditionOdds
execute if score sick MaryStatus matches 1 run scoreboard players operation deathChance ItemsExpedition += THREAT_LEVEL_TWO ExpeditionOdds
execute if score waterLevel MaryStatus matches 1 run scoreboard players operation deathChance ItemsExpedition += THREAT_LEVEL_ONE ExpeditionOdds
execute if score waterLevel MaryStatus matches 2 run scoreboard players operation deathChance ItemsExpedition += THREAT_LEVEL_THREE ExpeditionOdds

# Copy Fatigue Status
scoreboard players operation isFatigued ItemsExpedition = fatigued MaryStatus