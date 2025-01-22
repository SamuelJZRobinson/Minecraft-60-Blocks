execute if score itemId ItemsBundles matches 2 run scoreboard players set axe ItemsBunker 2
execute if score itemId ItemsBundles matches 9 run scoreboard players set gun ItemsBunker 2
execute if score itemId ItemsBundles matches 12 run scoreboard players set medkit ItemsBunker 2
execute if score itemId ItemsBundles matches 16 run scoreboard players set suitcase ItemsBunker 3
execute if score itemId ItemsBundles matches 18 run scoreboard players set bodyArmour ItemsBunker 3

# Check Character ID
  # Ted
  execute if score itemId ItemsBundles matches 21 run scoreboard players add build TedStatus 3
  # Dolores
  execute if score itemId ItemsBundles matches 19 run scoreboard players add build DoloresStatus 2
  # Mary
  execute if score itemId ItemsBundles matches 20 run scoreboard players add build MaryStatus 3
  # Timmy
  execute if score itemId ItemsBundles matches 22 run scoreboard players add build TimmyStatus 2