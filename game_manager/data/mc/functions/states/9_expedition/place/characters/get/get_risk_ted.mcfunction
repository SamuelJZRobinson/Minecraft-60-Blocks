# Increment Death Chance
  # Starvation
  execute if score soupLevel TedStatus matches 1 run scoreboard players operation deathChance ItemsExpedition += RISK_LEVEL_ONE ExpeditionOdds
  execute if score soupLevel TedStatus matches 2 run scoreboard players operation deathChance ItemsExpedition += RISK_LEVEL_TWO ExpeditionOdds
  # Dehydration
  execute if score waterLevel TedStatus matches 1 run scoreboard players operation deathChance ItemsExpedition += RISK_LEVEL_ONE ExpeditionOdds
  execute if score waterLevel TedStatus matches 2 run scoreboard players operation deathChance ItemsExpedition += RISK_LEVEL_THREE ExpeditionOdds
  # Sick
  execute if score sick TedStatus matches 1 run scoreboard players operation deathChance ItemsExpedition += RISK_LEVEL_TWO ExpeditionOdds
  # Injuries
  execute if score injuredLevel TedStatus matches 1 run scoreboard players operation deathChance ItemsExpedition += RISK_LEVEL_TWO ExpeditionOdds
  execute if score injuredLevel TedStatus matches 2 run scoreboard players operation deathChance ItemsExpedition += RISK_LEVEL_THREE ExpeditionOdds
  # Crazy
  execute if score crazy TedStatus matches 1 run scoreboard players operation deathChance ItemsExpedition += RISK_LEVEL_ONE ExpeditionOdds

# Copy Fatigue Status
scoreboard players operation isFatigued ItemsExpedition = fatigued TedStatus