# Choose Character
  # Set Dice
  scoreboard players set mode Math 0
  scoreboard players set dynamicDifficulty Math 0
  # Set Input
  data modify storage minecraft:math x set value 1
  execute store result storage minecraft:math y int 4 run scoreboard players get REVIVE StatusOdds
  # Calculate
  function mc:utility/math/get_random_range with storage minecraft:math

# Revive
function mc:states/8_bunker/cosmetics/characters/update/revive_character