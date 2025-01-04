# Count Array
execute store result score itemsTotal scavenges run data get storage minecraft:scavenge savedItemIds

# Copy First Array Value
execute store result score itemId scavenges run data get storage minecraft:scavenge savedItemIds[0]

# Items
  # Official
  execute if score itemId scavenges matches 1 run scoreboard players set ammo ItemsBunker -1
  execute if score itemId scavenges matches 2 run scoreboard players set axe ItemsBunker -1
  execute if score itemId scavenges matches 3 run scoreboard players set boyScoutHandbook ItemsBunker -1
  execute if score itemId scavenges matches 4 run scoreboard players set bugSpray ItemsBunker -1
  execute if score itemId scavenges matches 5 run scoreboard players set cards ItemsBunker -1
  execute if score itemId scavenges matches 6 run scoreboard players set checkers ItemsBunker -1
  execute if score itemId scavenges matches 7 run scoreboard players set flashlight ItemsBunker -1
  execute if score itemId scavenges matches 8 run scoreboard players set gasMask ItemsBunker -1
  execute if score itemId scavenges matches 9 run scoreboard players set gun ItemsBunker -1
  execute if score itemId scavenges matches 10 run scoreboard players set harmonica ItemsBunker -1
  execute if score itemId scavenges matches 11 run scoreboard players set map ItemsBunker -1
  execute if score itemId scavenges matches 12 run scoreboard players set medkit ItemsBunker -1
  execute if score itemId scavenges matches 13 run scoreboard players set padlock ItemsBunker -1
  execute if score itemId scavenges matches 14 run scoreboard players set radio ItemsBunker -1
  execute if score itemId scavenges matches 15 run scoreboard players remove cans ItemsBunker 4
  execute if score itemId scavenges matches 16 run scoreboard players set suitcase ItemsBunker -1
  execute if score itemId scavenges matches 17 run scoreboard players remove bottles ItemsBunker 4
  # Custom
  execute if score itemId scavenges matches 18 run scoreboard players set armour ItemsBunker -1

# Character Pieces
execute if score itemId scavenges matches 19 run scoreboard players set alive DoloresStatus 0
execute if score itemId scavenges matches 20 run scoreboard players set alive MaryStatus 0
execute if score itemId scavenges matches 21 run scoreboard players set alive TedStatus 0
execute if score itemId scavenges matches 22 run scoreboard players set alive TimmyStatus 0

# Keep In Range
execute if score cans ItemsBunker matches ..-1 run scoreboard players set cans ItemsBunker 0
execute if score bottles ItemsBunker matches ..-1 run scoreboard players set bottles ItemsBunker 0

# Append Bundle
execute if score stage scavenges matches 4 run function mc:utility/scavenge/process/bundles/set/set_bundle_crazy_lost
execute if score stage scavenges matches 5 run function mc:utility/scavenge/process/bundles/set/set_bundle_family_lost
execute if score stage scavenges matches 7 run function mc:utility/scavenge/process/bundles/set/set_bundle_expedition_lost

# Erase Array Value
data remove storage minecraft:scavenge savedItemIds[0]
execute store result score itemsTotal scavenges run data get storage minecraft:scavenge savedItemIds

# Loop If Values Exist
execute if score itemsTotal scavenges matches 1.. run function mc:utility/scavenge/process/bundles/check/check_main_remove