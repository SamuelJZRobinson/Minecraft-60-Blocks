# Characters
  # Dolores (2 Slots)
  execute if score build DoloresStatus matches ..1 run scoreboard players set survivedNuke DoloresStatus 0
  # execute if score build DoloresStatus matches 2 run scoreboard players set alive DoloresStatus 1
  scoreboard players set build DoloresStatus 0
  # Mary (3 Slots)
  execute if score build MaryStatus matches ..2 run scoreboard players set survivedNuke MaryStatus 0
  execute if score build MaryStatus matches 3 run scoreboard players set alive MaryStatus 1
  scoreboard players set build MaryStatus 0
  # Ted (3 Slots)
  execute if score build TedStatus matches ..2 run scoreboard players set survivedNuke TedStatus 0
  execute if score build TedStatus matches 3 run scoreboard players set alive TedStatus 1
  scoreboard players set build TedStatus 0
  # Timmy (2 Slots)
  execute if score build TimmyStatus matches ..1 run scoreboard players set survivedNuke TimmyStatus 0
  execute if score build TimmyStatus matches 2 run scoreboard players set alive TimmyStatus 1
  scoreboard players set build TimmyStatus 0

# Items
  # Axe (2 Slots)
  execute if score axe ItemsBunker matches 1 run scoreboard players set axe ItemsBunker 0
  # Gun (2 Slots)
  execute if score gun ItemsBunker matches 1 run scoreboard players set gun ItemsBunker 0
  # Medkit (2 Slots)
  execute if score medkit ItemsBunker matches 1 run scoreboard players set medkit ItemsBunker 0
  # Suitcase (3 Slots)
  execute if score suitcase ItemsBunker matches 1..2 run scoreboard players set suitcase ItemsBunker 0
  # Armour (3 Slots)
  execute if score bodyArmour ItemsBunker matches 1..2 run scoreboard players set bodyArmour ItemsBunker 0