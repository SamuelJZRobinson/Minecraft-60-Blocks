# Notes
  # totalAlive -1 accounts for the player being alive.

# Reset Scores
scoreboard players set totalCount ItemsBunker 0

# Sum Items And Characters
scoreboard players remove totalAlive CharactersCount 1
scoreboard players operation totalCount ItemsBunker += totalAlive CharactersCount
scoreboard players operation totalCount ItemsBunker += itemCount ItemsBunker

# Keep In Range
execute if score totalCount ItemsBunker matches ..-1 run scoreboard players set totalCount ItemsBunker 0

# Title
title @p[team=Player] subtitle [{"text":"Items Collected: "},{"score":{"name":"totalCount","objective":"ItemsBunker"}}]