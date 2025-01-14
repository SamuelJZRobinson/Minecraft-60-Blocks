# Notes
  # Needs multiple ID detections to build multi-slot items.

# Check Item ID
  # One Slot
  execute if score itemId ItemsBundles matches 1 run scoreboard players set ammo ItemsBunker 1
  execute if score itemId ItemsBundles matches 3 run scoreboard players set boyScoutHandbook ItemsBunker 1
  execute if score itemId ItemsBundles matches 4 run scoreboard players set bugSpray ItemsBunker 1
  execute if score itemId ItemsBundles matches 5 run scoreboard players set cards ItemsBunker 1
  execute if score itemId ItemsBundles matches 6 run scoreboard players set checkers ItemsBunker 1
  execute if score itemId ItemsBundles matches 7 run scoreboard players set flashlight ItemsBunker 1
  execute if score itemId ItemsBundles matches 8 run scoreboard players set gasMask ItemsBunker 1
  execute if score itemId ItemsBundles matches 10 run scoreboard players set harmonica ItemsBunker 1
  execute if score itemId ItemsBundles matches 11 run scoreboard players set map ItemsBunker 1
  execute if score itemId ItemsBundles matches 13 run scoreboard players set padlock ItemsBunker 1
  execute if score itemId ItemsBundles matches 14 run scoreboard players set radio ItemsBunker 1
  execute if score itemId ItemsBundles matches 15 run scoreboard players add soups ItemsBunker 4
  execute if score itemId ItemsBundles matches 17 run scoreboard players add waters ItemsBunker 4
  # Multi Slot
  execute if score itemId ItemsBundles matches 2 run scoreboard players add axe ItemsBunker 1
  execute if score itemId ItemsBundles matches 9 run scoreboard players add gun ItemsBunker 1
  execute if score itemId ItemsBundles matches 12 run scoreboard players add medkit ItemsBunker 1
  execute if score itemId ItemsBundles matches 16 run scoreboard players add suitcase ItemsBunker 1
  execute if score itemId ItemsBundles matches 18 run scoreboard players add bodyArmour ItemsBunker 1

  # Check Character ID
    # Dolores
    execute if score itemId ItemsBundles matches 19 run scoreboard players add build DoloresStatus 1
    # Ted
    execute if score itemId ItemsBundles matches 21 run scoreboard players add build TedStatus 1
    # Mary
    execute if score itemId ItemsBundles matches 20 run scoreboard players add build MaryStatus 1
    # Timmy
    execute if score itemId ItemsBundles matches 22 run scoreboard players add build TimmyStatus 1

# Append Bundles
  # Items
  execute if score doBundle ItemsBundles matches 1 if score itemId ItemsBundles matches 1..18 run function mc:states/8_bunker/items/process/append_bundle_add_items