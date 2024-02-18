# Notes
  # Mutant Mary cannot become crazy and break items

# Set Scores
scoreboard players set stage CheckItems 4
scoreboard players set itemsOwed CheckItems 1
scoreboard players set crazyRage MaryStatus -1

# Priority Items
  # Mary
    # Axe
    execute if score axe ItemsBunker matches 2 run data modify storage minecraft:checkitem randomId append value 2
    execute if score axe ItemsBunker matches ..0 run scoreboard players add destroyItemFails CheckItems 1
    # Flashlight
    execute if score flashlight ItemsBunker matches 1 run data modify storage minecraft:checkitem randomId append value 7
    execute if score flashlight ItemsBunker matches ..0 run scoreboard players add destroyItemFails CheckItems 1
    # Gun
    execute if score gun ItemsBunker matches 2 run data modify storage minecraft:checkitem randomId append value 9
    execute if score gun ItemsBunker matches ..0 run scoreboard players add destroyItemFails CheckItems 1

  # Successfully Loaded Items
  execute if score destroyItemFails CheckItems matches ..2 run function mc:utility/scavenge/process/check_random

  # Failed To Load Items
  execute if score destroyItemFails CheckItems matches 3 run function mc:states/stages/8_bunker/decorations/characters/set/set_crazy_all

  # Refresh Score
  scoreboard players set destroyItemFails CheckItems 0