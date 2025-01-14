# Notes
  # Full slots donate items to lesser slots, once slot one is filled all remaining items are treated as sustenance

# Estimate Slots
  # Set Dice
  scoreboard players set mode Math 0
  # Set Input
  data modify storage minecraft:math x set value 1
  execute store result storage minecraft:math y int 1 run scoreboard players get ITEM_TIER ExpeditionOdds
  # Calculate
  function mc:utility/math/get_random_value with storage minecraft:math
  # Test
  execute if score out Math matches 1..3 run scoreboard players add slotOneTry ItemsExpedition 1
  execute if score out Math matches 4..5 run scoreboard players add slotTwoTry ItemsExpedition 1
  execute if score out Math matches 6 run scoreboard players add slotThreeTry ItemsExpedition 1

# Decrease Count
execute if score specialCount ItemsExpedition matches 1.. run scoreboard players remove specialCount ItemsExpedition 1

# Call Next
execute if score specialCount ItemsExpedition matches 0 run function mc:states/9_expedition/place/items/set/load_loot_slot_free
execute if score specialCount ItemsExpedition matches 0 run function mc:states/9_expedition/place/items/set/set_loot_slot

# Loop
execute if score specialCount ItemsExpedition matches 1.. run function mc:states/9_expedition/place/items/set/set_loot_slot_try