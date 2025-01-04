# Set Scores
scoreboard players set stage scavenges 4
scoreboard players set itemsOwed scavenges 1
scoreboard players set crazyRage TimmyStatus -1

# Priority Items
  # Timmy
    # Boy Scout Handbook
    execute if score boyScoutHandbook ItemsBunker matches 1 run data modify storage minecraft:scavenge randomId append value 3
    execute if score boyScoutHandbook ItemsBunker matches ..0 run scoreboard players add destroyItemFails scavenges 1
    # Medkit
    execute if score medkit ItemsBunker matches 2 run data modify storage minecraft:scavenge randomId append value 12
    execute if score medkit ItemsBunker matches ..0 run scoreboard players add destroyItemFails scavenges 1
    # Padlock
    execute if score padlock ItemsBunker matches 1 run data modify storage minecraft:scavenge randomId append value 13
    execute if score padlock ItemsBunker matches ..0 run scoreboard players add destroyItemFails scavenges 1

  # Successfully Loaded Items
  execute if score destroyItemFails scavenges matches ..2 run function mc:utility/scavenge/process/bundles/check/check_random

  # Failed To Load Items
  execute if score destroyItemFails scavenges matches 3 run function mc:states/8_bunker/cosmetics/characters/set/set_crazy_all

  # Refresh Score
  scoreboard players set destroyItemFails scavenges 0