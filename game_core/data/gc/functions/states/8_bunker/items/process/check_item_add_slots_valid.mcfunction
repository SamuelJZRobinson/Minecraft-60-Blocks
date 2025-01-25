# Characters At Or Above Threshold
  # Ted
  execute if score build TedStatus matches 3.. run scoreboard players set alive TedStatus 1
  execute if score build TedStatus matches 3.. run scoreboard players set isInside TedStatus 1
  scoreboard players set build TedStatus 0
  # Dolores
  execute if score build DoloresStatus matches 2.. run scoreboard players set alive DoloresStatus 1
  execute if score build DoloresStatus matches 2.. run scoreboard players set isInside DoloresStatus 1
  scoreboard players set build DoloresStatus 0
  # Mary
  execute if score build MaryStatus matches 3.. run scoreboard players set alive MaryStatus 1
  execute if score build MaryStatus matches 3.. run scoreboard players set isInside MaryStatus 1
  scoreboard players set build MaryStatus 0
  # Timmy
  execute if score build TimmyStatus matches 2.. run scoreboard players set alive TimmyStatus 1
  execute if score build TimmyStatus matches 2.. run scoreboard players set isInside TimmyStatus 1
  scoreboard players set build TimmyStatus 0

# Items Above Threshold
  # One Slot
  execute if score ammo ItemsBundles matches 1.. run scoreboard players set ammo ItemsBunker 1
  execute if score boyScoutHandbook ItemsBundles matches 1.. run scoreboard players set boyScoutHandbook ItemsBunker 1
  execute if score bugSpray ItemsBundles matches 1.. run scoreboard players set bugSpray ItemsBunker 1
  execute if score cards ItemsBundles matches 1.. run scoreboard players set cards ItemsBunker 1
  execute if score checkers ItemsBundles matches 1.. run scoreboard players set checkers ItemsBunker 1
  execute if score flashlight ItemsBundles matches 1.. run scoreboard players set flashlight ItemsBunker 1
  execute if score gasMask ItemsBundles matches 1.. run scoreboard players set gasMask ItemsBunker 1
  execute if score harmonica ItemsBundles matches 1.. run scoreboard players set harmonica ItemsBunker 1
  execute if score map ItemsBundles matches 1.. run scoreboard players set map ItemsBunker 1
  execute if score padlock ItemsBundles matches 1.. run scoreboard players set padlock ItemsBunker 1
  execute if score radio ItemsBundles matches 1.. run scoreboard players set radio ItemsBunker 1
  # Multi Slot
  execute if score axe ItemsBundles matches 2.. run scoreboard players set axe ItemsBunker 2
  execute if score gun ItemsBundles matches 2.. run scoreboard players set gun ItemsBunker 2
  execute if score medkit ItemsBundles matches 2.. run scoreboard players set medkit ItemsBunker 2
  execute if score suitcase ItemsBundles matches 3.. run scoreboard players set suitcase ItemsBunker 3
  execute if score bodyArmour ItemsBundles matches 3.. run scoreboard players set bodyArmour ItemsBunker 3

# Items Multi-slot Below Threshold
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