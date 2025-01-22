# Characters
  # Ted
  execute if score build TedStatus matches 3 run scoreboard players set alive TedStatus 1
  execute if score build TedStatus matches 3 run scoreboard players set isInside TedStatus 1
  scoreboard players set build TedStatus 0
  # Dolores
  execute if score build DoloresStatus matches 2 run scoreboard players set alive DoloresStatus 1
  execute if score build DoloresStatus matches 2 run scoreboard players set isInside DoloresStatus 1
  scoreboard players set build DoloresStatus 0
  # Mary
  execute if score build MaryStatus matches 3 run scoreboard players set alive MaryStatus 1
  execute if score build MaryStatus matches 3 run scoreboard players set isInside MaryStatus 1
  scoreboard players set build MaryStatus 0
  # Timmy
  execute if score build TimmyStatus matches 2 run scoreboard players set alive TimmyStatus 1
  execute if score build TimmyStatus matches 2 run scoreboard players set isInside TimmyStatus 1
  scoreboard players set build TimmyStatus 0

# Items
  # Axe
  execute if score axe ItemsBunker matches 1 run scoreboard players set axe ItemsBunker 0
  # Gun
  execute if score gun ItemsBunker matches 1 run scoreboard players set gun ItemsBunker 0
  # Medkit
  execute if score medkit ItemsBunker matches 1 run scoreboard players set medkit ItemsBunker 0
  # Suitcase
  execute if score suitcase ItemsBunker matches 1..2 run scoreboard players set suitcase ItemsBunker 0
  # Armour
  execute if score bodyArmour ItemsBunker matches 1..2 run scoreboard players set bodyArmour ItemsBunker 0