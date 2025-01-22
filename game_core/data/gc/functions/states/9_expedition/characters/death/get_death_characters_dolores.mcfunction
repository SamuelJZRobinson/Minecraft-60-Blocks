# Danger Level 1
  # Starvation
  execute if score soup DoloresStatus <= HUNGER_AMOUNT_CRITICAL CharactersLevels run scoreboard players operation deathChance CharactersExpedition += DEATH_CHANCE_LEVEL_1 ExpeditionOdds
  # Dehydration
  execute if score water DoloresStatus <= THIRST_AMOUNT_CRITICAL CharactersLevels run scoreboard players operation deathChance CharactersExpedition += DEATH_CHANCE_LEVEL_1 ExpeditionOdds
  # Crazy
  execute if score isCrazy DoloresStatus matches 1 run scoreboard players operation deathChance CharactersExpedition += DEATH_CHANCE_LEVEL_1 ExpeditionOdds
# Danger Level 2
  # Sick
  execute if score isSick DoloresStatus matches 1 run scoreboard players operation deathChance CharactersExpedition += DEATH_CHANCE_LEVEL_2 ExpeditionOdds
  # Injured
  execute if score isInjured DoloresStatus matches 1 run scoreboard players operation deathChance CharactersExpedition += DEATH_CHANCE_LEVEL_2 ExpeditionOdds