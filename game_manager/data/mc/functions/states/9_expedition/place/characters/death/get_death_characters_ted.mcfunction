# Danger Level 1
  # Starvation
  execute if score soup TedStatus <= HUNGER_AMOUNT_CRITICAL CharactersLevels run scoreboard players operation deathChance CharactersExpedition += DEATH_CHANCE_LEVEL_1 ExpeditionOdds
  # Dehydration
  execute if score water TedStatus <= THIRST_AMOUNT_CRITICAL CharactersLevels run scoreboard players operation deathChance CharactersExpedition += DEATH_CHANCE_LEVEL_1 ExpeditionOdds
  # Crazy
  execute if score isCrazy TedStatus matches 1 run scoreboard players operation deathChance CharactersExpedition += DEATH_CHANCE_LEVEL_1 ExpeditionOdds
# Danger Level 2
  # Sick
  execute if score isSick TedStatus matches 1 run scoreboard players operation deathChance CharactersExpedition += DEATH_CHANCE_LEVEL_2 ExpeditionOdds
  # Injured
  execute if score isInjured TedStatus matches 1 run scoreboard players operation deathChance CharactersExpedition += DEATH_CHANCE_LEVEL_2 ExpeditionOdds