# Danger Level 1
  # Starvation
  execute if score soup TimmyStatus <= HUNGER_AMOUNT_CRITICAL CharactersLevels run scoreboard players operation deathChance CharactersExpedition += DEATH_CHANCE_LEVEL_1 ExpeditionOdds
  # Dehydration
  execute if score water TimmyStatus <= THIRST_AMOUNT_CRITICAL CharactersLevels run scoreboard players operation deathChance CharactersExpedition += DEATH_CHANCE_LEVEL_1 ExpeditionOdds
  # Crazy
  execute if score isCrazy TimmyStatus matches 1 run scoreboard players operation deathChance CharactersExpedition += DEATH_CHANCE_LEVEL_1 ExpeditionOdds
# Danger Level 2
  # Sick
  execute if score isSick TimmyStatus matches 1 run scoreboard players operation deathChance CharactersExpedition += DEATH_CHANCE_LEVEL_2 ExpeditionOdds
  # Injured
  execute if score isInjured TimmyStatus matches 1 run scoreboard players operation deathChance CharactersExpedition += DEATH_CHANCE_LEVEL_2 ExpeditionOdds