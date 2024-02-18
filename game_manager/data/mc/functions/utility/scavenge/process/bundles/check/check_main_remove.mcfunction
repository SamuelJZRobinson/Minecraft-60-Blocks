# Count Array
execute store result score itemsTotal CheckItems run data get storage minecraft:checkitem checkId

# Copy First Array Value
execute store result score itemId CheckItems run data get storage minecraft:checkitem checkId[0]

# Items
  # Official
  execute if score itemId CheckItems matches 1 run scoreboard players set ammo ItemsBunker -1
  execute if score itemId CheckItems matches 2 run scoreboard players set axe ItemsBunker -1
  execute if score itemId CheckItems matches 3 run scoreboard players set boyScoutHandbook ItemsBunker -1
  execute if score itemId CheckItems matches 4 run scoreboard players set bugSpray ItemsBunker -1
  execute if score itemId CheckItems matches 5 run scoreboard players set cards ItemsBunker -1
  execute if score itemId CheckItems matches 6 run scoreboard players set checkers ItemsBunker -1
  execute if score itemId CheckItems matches 7 run scoreboard players set flashlight ItemsBunker -1
  execute if score itemId CheckItems matches 8 run scoreboard players set gasMask ItemsBunker -1
  execute if score itemId CheckItems matches 9 run scoreboard players set gun ItemsBunker -1
  execute if score itemId CheckItems matches 10 run scoreboard players set harmonica ItemsBunker -1
  execute if score itemId CheckItems matches 11 run scoreboard players set map ItemsBunker -1
  execute if score itemId CheckItems matches 12 run scoreboard players set medkit ItemsBunker -1
  execute if score itemId CheckItems matches 13 run scoreboard players set padlock ItemsBunker -1
  execute if score itemId CheckItems matches 14 run scoreboard players set radio ItemsBunker -1
  execute if score itemId CheckItems matches 15 run scoreboard players remove cans ItemsBunker 4
  execute if score itemId CheckItems matches 16 run scoreboard players set suitcase ItemsBunker -1
  execute if score itemId CheckItems matches 17 run scoreboard players remove bottles ItemsBunker 4
  # Custom
  execute if score itemId CheckItems matches 18 run scoreboard players set armour ItemsBunker -1

# Character Pieces
execute if score itemId CheckItems matches 19 run scoreboard players set alive DoloresStatus 0
execute if score itemId CheckItems matches 20 run scoreboard players set alive MaryStatus 0
execute if score itemId CheckItems matches 21 run scoreboard players set alive TedStatus 0
execute if score itemId CheckItems matches 22 run scoreboard players set alive TimmyStatus 0

# Keep In Range
execute if score cans ItemsBunker matches ..-1 run scoreboard players set cans ItemsBunker 0
execute if score bottles ItemsBunker matches ..-1 run scoreboard players set bottles ItemsBunker 0

# Append Bundle
execute if score stage CheckItems matches 4 run function mc:utility/scavenge/process/bundles/set/set_bundle_crazy_lost
execute if score stage CheckItems matches 5 run function mc:utility/scavenge/process/bundles/set/set_bundle_family_lost
execute if score stage CheckItems matches 7 run function mc:utility/scavenge/process/bundles/set/set_bundle_expedition_lost

# Erase Array Value
data remove storage minecraft:checkitem checkId[0]
execute store result score itemsTotal CheckItems run data get storage minecraft:checkitem checkId

# Loop If Values Exist
execute if score itemsTotal CheckItems matches 1.. run function mc:utility/scavenge/process/bundles/check/check_main_remove