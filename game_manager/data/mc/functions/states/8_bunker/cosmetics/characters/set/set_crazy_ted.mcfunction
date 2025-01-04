# Set Scores
scoreboard players set stage scavenges 4
scoreboard players set itemsOwed scavenges 1
scoreboard players set crazyRage TedStatus -1

# Priority Items
  # Ted
    # Map
    execute if score map ItemsBunker matches 1 run data modify storage minecraft:scavenge randomId append value 11
    execute if score map ItemsBunker matches ..0 run scoreboard players add destroyItemFails scavenges 1
    # Gas Mask
    execute if score gasMask ItemsBunker matches 1 run data modify storage minecraft:scavenge randomId append value 8
    execute if score gasMask ItemsBunker matches ..0 run scoreboard players add destroyItemFails scavenges 1
    # Suitcase
    execute if score suitcase ItemsBunker matches 3 run data modify storage minecraft:scavenge randomId append value 16
    execute if score suitcase ItemsBunker matches ..0 run scoreboard players add destroyItemFails scavenges 1

  # Successfully Loaded Items
  execute if score destroyItemFails scavenges matches ..2 run function mc:utility/scavenge/process/bundles/check/check_random

  # Failed To Load Items
  execute if score destroyItemFails scavenges matches 3 run function mc:states/8_bunker/cosmetics/characters/set/set_crazy_all

  # Refresh Score
  scoreboard players set destroyItemFails scavenges 0