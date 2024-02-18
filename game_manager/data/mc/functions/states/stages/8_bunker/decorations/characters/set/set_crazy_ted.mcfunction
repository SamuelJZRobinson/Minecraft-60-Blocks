# Set Scores
scoreboard players set stage CheckItems 4
scoreboard players set itemsOwed CheckItems 1
scoreboard players set crazyRage TedStatus -1

# Priority Items
  # Ted
    # Map
    execute if score map ItemsBunker matches 1 run data modify storage minecraft:checkitem randomId append value 11
    execute if score map ItemsBunker matches ..0 run scoreboard players add destroyItemFails CheckItems 1
    # Gas Mask
    execute if score gasMask ItemsBunker matches 1 run data modify storage minecraft:checkitem randomId append value 8
    execute if score gasMask ItemsBunker matches ..0 run scoreboard players add destroyItemFails CheckItems 1
    # Suitcase
    execute if score suitcase ItemsBunker matches 3 run data modify storage minecraft:checkitem randomId append value 16
    execute if score suitcase ItemsBunker matches ..0 run scoreboard players add destroyItemFails CheckItems 1

  # Successfully Loaded Items
  execute if score destroyItemFails CheckItems matches ..2 run function mc:utility/scavenge/check_item/check_random

  # Failed To Load Items
  execute if score destroyItemFails CheckItems matches 3 run function mc:states/stages/8_bunker/decorations/characters/set/set_crazy_all

  # Refresh Score
  scoreboard players set destroyItemFails CheckItems 0