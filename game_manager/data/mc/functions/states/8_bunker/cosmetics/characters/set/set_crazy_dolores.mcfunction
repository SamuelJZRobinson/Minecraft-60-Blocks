# Set Scores
scoreboard players set stage scavenges 4
scoreboard players set itemsOwed scavenges 1
scoreboard players set crazyRage DoloresStatus -1

# Priority Items
  # Dolores
    # Radio
    execute if score radio ItemsBunker matches 1 run data modify storage minecraft:scavenge randomId append value 14
    execute if score radio ItemsBunker matches ..0 run scoreboard players add destroyItemFails scavenges 1
    # Cards
    execute if score cards ItemsBunker matches 1 run data modify storage minecraft:scavenge randomId append value 5
    execute if score cards ItemsBunker matches ..0 run scoreboard players add destroyItemFails scavenges 1
    # Checkers
    execute if score checkers ItemsBunker matches 1 run data modify storage minecraft:scavenge randomId append value 6
    execute if score checkers ItemsBunker matches ..0 run scoreboard players add destroyItemFails scavenges 1

  # Successfully Loaded Items
  execute if score destroyItemFails scavenges matches ..2 run function mc:utility/scavenge/process/bundles/check/check_random

  # Failed To Load Items
  execute if score destroyItemFails scavenges matches 3 run function mc:states/8_bunker/cosmetics/characters/set/set_crazy_all

  # Refresh Score
  scoreboard players set destroyItemFails scavenges 0