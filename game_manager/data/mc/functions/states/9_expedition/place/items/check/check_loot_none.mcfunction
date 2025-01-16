# No Loot Chance
  # Set Dice
    scoreboard players set mode Math 0
  # Set Input
  data modify storage minecraft:math x set value 1
  execute store result storage minecraft:math y int 1 run scoreboard players get NO_LOOT ExpeditionOdds
  # Calculate
  function mc:utility/math/get_random_value with storage minecraft:math
  # Test
    # No Items (Skip Calculations)
    execute if score out Math matches 1 run scoreboard players set step ItemsExpedition 7
    execute if score out Math matches 1 run schedule function mc:states/9_expedition/place/manage_expedition 1t replace
    # Have Items
    execute unless score out Math matches 1 run scoreboard players add step ItemsExpedition 1
    execute unless score out Math matches 1 run schedule function mc:states/9_expedition/place/manage_expedition 1t replace