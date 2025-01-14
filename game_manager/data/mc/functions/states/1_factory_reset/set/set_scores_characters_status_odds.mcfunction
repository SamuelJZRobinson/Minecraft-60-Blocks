# Notes
  # Odds are 1 in X.

# Objective
scoreboard objectives add StatusOdds dummy {"bold":true,"color":"white","text":"Status Odds"}
# Difficulty
scoreboard players set DIFFICULTY_PERCENTAGE StatusOdds 20
# Bunker Cosmetic
scoreboard players set BUNKER_BLACKOUT StatusOdds 70
# Mutant Mary Jane
scoreboard players set MUTANT StatusOdds 20
scoreboard players set CANNIBALISM StatusOdds 20
# Crazy
scoreboard players set CRAZY StatusOdds 2
scoreboard players set CRAZY_RAGE StatusOdds 6
scoreboard players set CRAZY_ESCAPE StatusOdds 15
# Dolores Crazy Resistance
  # Set Dice
  scoreboard players set mode Math 1
  # Set Input
  data modify storage minecraft:math x set value 20
  execute store result storage minecraft:math y int 1 run scoreboard players get CRAZY_ESCAPE StatusOdds
  # Calculate
  function mc:utility/math/get_percentage
  # Store
  scoreboard players operation DOLORES_CRAZY_ESCAPE_RESISTANCE StatusOdds = out Math
# Mary Crazy Resistance
  # Set Dice
  scoreboard players set mode Math 2
  # Set Input
  data modify storage minecraft:math x set value 20
  execute store result storage minecraft:math y int 1 run scoreboard players get CRAZY_ESCAPE StatusOdds
  # Calculate
  function mc:utility/math/get_percentage
  # Store
  scoreboard players operation MARY_CRAZY_ESCAPE_RESISTANCE StatusOdds = out Math
# Fatigue
scoreboard players set FATIGUE StatusOdds 8
# Injured
scoreboard players set INJURED_DEATH StatusOdds 5
# Sickness
scoreboard players set SICK_STARVATION StatusOdds 10
scoreboard players set SICK_DEHYDRATION StatusOdds 5
scoreboard players set SICK_DEATH StatusOdds 20