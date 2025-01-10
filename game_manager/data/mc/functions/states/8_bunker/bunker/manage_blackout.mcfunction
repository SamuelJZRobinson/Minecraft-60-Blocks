# Blackout Chance
  # Set Dice
  scoreboard players set mode Math 0
  scoreboard players set dynamicDifficulty Math 0
  # Set Input
  data modify storage minecraft:math x set value 1
  execute store result storage minecraft:math y int 1 run scoreboard players get BUNKER_BLACKOUT StatusOdds
  # Calculate
  function mc:utility/math/get_random_range with storage minecraft:math
  # Test
  execute if score out Math matches 1 run function mc:states/8_bunker/bunker/update/blackout_break