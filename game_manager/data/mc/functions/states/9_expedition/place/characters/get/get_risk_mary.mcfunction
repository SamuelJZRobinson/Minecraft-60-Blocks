# Increment Death Chance
  # Starvation
  execute if score soupLevel MaryStatus matches 1 run scoreboard players operation deathChance ItemsExpedition += RISK_LEVEL_ONE ExpeditionOdds
  execute if score soupLevel MaryStatus matches 2 run scoreboard players operation deathChance ItemsExpedition += RISK_LEVEL_TWO ExpeditionOdds
  # Dehydration
  execute if score waterLevel MaryStatus matches 1 run scoreboard players operation deathChance ItemsExpedition += RISK_LEVEL_ONE ExpeditionOdds
  execute if score waterLevel MaryStatus matches 2 run scoreboard players operation deathChance ItemsExpedition += RISK_LEVEL_THREE ExpeditionOdds
  # Sick
  execute if score sick MaryStatus matches 1 run scoreboard players operation deathChance ItemsExpedition += RISK_LEVEL_TWO ExpeditionOdds
  # Injuries
  execute if score injuredLevel MaryStatus matches 1 run scoreboard players operation deathChance ItemsExpedition += RISK_LEVEL_TWO ExpeditionOdds
  execute if score injuredLevel MaryStatus matches 2 run scoreboard players operation deathChance ItemsExpedition += RISK_LEVEL_THREE ExpeditionOdds
  # Crazy
  execute if score crazy MaryStatus matches 1 run scoreboard players operation deathChance ItemsExpedition += RISK_LEVEL_ONE ExpeditionOdds

# Copy Fatigue Status
scoreboard players operation isFatigued ItemsExpedition = fatigued MaryStatus