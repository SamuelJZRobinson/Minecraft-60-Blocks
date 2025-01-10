# Increment Death Chance
  # Starvation
  execute if score soupLevel DoloresStatus matches 1 run scoreboard players operation deathChance ItemsExpedition += RISK_LEVEL_ONE ExpeditionOdds
  execute if score soupLevel DoloresStatus matches 2 run scoreboard players operation deathChance ItemsExpedition += RISK_LEVEL_TWO ExpeditionOdds
  # Dehydration
  execute if score waterLevel DoloresStatus matches 1 run scoreboard players operation deathChance ItemsExpedition += RISK_LEVEL_ONE ExpeditionOdds
  execute if score waterLevel DoloresStatus matches 2 run scoreboard players operation deathChance ItemsExpedition += RISK_LEVEL_THREE ExpeditionOdds
  # Sick
  execute if score isSick DoloresStatus matches 1 run scoreboard players operation deathChance ItemsExpedition += RISK_LEVEL_TWO ExpeditionOdds
  # Injuries
  execute if score injuredLevel DoloresStatus matches 1 run scoreboard players operation deathChance ItemsExpedition += RISK_LEVEL_TWO ExpeditionOdds
  execute if score injuredLevel DoloresStatus matches 2 run scoreboard players operation deathChance ItemsExpedition += RISK_LEVEL_THREE ExpeditionOdds
  # Crazy
  execute if score isCrazy DoloresStatus matches 1 run scoreboard players operation deathChance ItemsExpedition += RISK_LEVEL_ONE ExpeditionOdds

# Copy Fatigue Status
scoreboard players operation isFatigued ItemsExpedition = isFatigued DoloresStatus