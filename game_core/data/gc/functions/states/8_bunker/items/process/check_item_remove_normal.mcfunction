# Check Item ID
  # One Slot
  execute if score itemId ItemsBundles matches 1 run scoreboard players set ammo ItemsBunker 0
  execute if score itemId ItemsBundles matches 3 run scoreboard players set boyScoutHandbook ItemsBunker 0
  execute if score itemId ItemsBundles matches 4 run scoreboard players set bugSpray ItemsBunker 0
  execute if score itemId ItemsBundles matches 5 run scoreboard players set cards ItemsBunker 0
  execute if score itemId ItemsBundles matches 6 run scoreboard players set checkers ItemsBunker 0
  execute if score itemId ItemsBundles matches 7 run scoreboard players set flashlight ItemsBunker 0
  execute if score itemId ItemsBundles matches 8 run scoreboard players set gasMask ItemsBunker 0
  execute if score itemId ItemsBundles matches 10 run scoreboard players set harmonica ItemsBunker 0
  execute if score itemId ItemsBundles matches 11 run scoreboard players set map ItemsBunker 0
  execute if score itemId ItemsBundles matches 13 run scoreboard players set padlock ItemsBunker 0
  execute if score itemId ItemsBundles matches 14 run scoreboard players set radio ItemsBunker 0
  execute if score itemId ItemsBundles matches 15 run scoreboard players remove soups ItemsBunker 4
  execute if score itemId ItemsBundles matches 17 run scoreboard players remove waters ItemsBunker 4
  # Multi Slot
  execute if score itemId ItemsBundles matches 2 run scoreboard players set axe ItemsBunker 0
  execute if score itemId ItemsBundles matches 9 run scoreboard players set gun ItemsBunker 0
  execute if score itemId ItemsBundles matches 12 run scoreboard players set medkit ItemsBunker 0
  execute if score itemId ItemsBundles matches 16 run scoreboard players set suitcase ItemsBunker 0
  execute if score itemId ItemsBundles matches 18 run scoreboard players set bodyArmour ItemsBunker 0

# Keep In Range
execute if score soups ItemsBunker matches ..-1 run scoreboard players set soups ItemsBunker 0
execute if score waters ItemsBunker matches ..-1 run scoreboard players set waters ItemsBunker 0

# Check Character ID
  # Ted
  execute if score itemId ItemsBundles matches 21 run scoreboard players set alive TedStatus 0
  # Dolores
  execute if score itemId ItemsBundles matches 19 run scoreboard players set alive DoloresStatus 0
  # Mary
  execute if score itemId ItemsBundles matches 20 run scoreboard players set alive MaryStatus 0
  # Timmy
  execute if score itemId ItemsBundles matches 22 run scoreboard players set alive TimmyStatus 0