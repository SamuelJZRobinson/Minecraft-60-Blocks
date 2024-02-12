say crazy_dolores

# Set Scores
scoreboard players set stage CheckItems 4
scoreboard players set itemsOwed CheckItems 1
scoreboard players set crazyRage DoloresStatus -1

# Priority Items
  # Dolores
    # Radio
    execute if score radio ItemsBunker matches 1 run data modify storage minecraft:checkitem randomId append value 14
    execute if score radio ItemsBunker matches ..0 run scoreboard players add destroyItemFails CheckItems 1
    # Cards
    execute if score cards ItemsBunker matches 1 run data modify storage minecraft:checkitem randomId append value 5
    execute if score cards ItemsBunker matches ..0 run scoreboard players add destroyItemFails CheckItems 1
    # Checkers
    execute if score checkers ItemsBunker matches 1 run data modify storage minecraft:checkitem randomId append value 6
    execute if score checkers ItemsBunker matches ..0 run scoreboard players add destroyItemFails CheckItems 1

  # Successfully Loaded Items
  execute if score destroyItemFails CheckItems matches ..2 run function mc:status/scavenge/check_item/check_random

  # Failed To Load Items
  execute if score destroyItemFails CheckItems matches 3 run function mc:status/characters/load_crazy_all

  # Refresh Score
  scoreboard players set destroyItemFails CheckItems 0