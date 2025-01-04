# Notes
  # Mutant Mary cannot become crazy and break items.

# Set Scores
scoreboard players set stage ItemsBundles 4
scoreboard players set itemsOwed ItemsBundles 1
scoreboard players set crazyRage MaryStatus -1

# Priority Items
  # Mary
    # Axe
    execute if score axe ItemsBunker matches 2 run data modify storage minecraft:scavenge randomId append value 2
    execute if score axe ItemsBunker matches ..0 run scoreboard players add destroyItemFails ItemsBundles 1
    # Flashlight
    execute if score flashlight ItemsBunker matches 1 run data modify storage minecraft:scavenge randomId append value 7
    execute if score flashlight ItemsBunker matches ..0 run scoreboard players add destroyItemFails ItemsBundles 1
    # Gun
    execute if score gun ItemsBunker matches 2 run data modify storage minecraft:scavenge randomId append value 9
    execute if score gun ItemsBunker matches ..0 run scoreboard players add destroyItemFails ItemsBundles 1

  # Successfully Loaded Items
  execute if score destroyItemFails ItemsBundles matches ..2 run function mc:states/8_bunker/items/process/bundles/check/check_random

  # Failed To Load Items
  execute if score destroyItemFails ItemsBundles matches 3 run function mc:states/8_bunker/characters/set/set_crazy_all

  # Refresh Score
  scoreboard players set destroyItemFails ItemsBundles 0