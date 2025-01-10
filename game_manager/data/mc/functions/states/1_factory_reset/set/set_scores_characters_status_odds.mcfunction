# Objective
scoreboard objectives add StatusOdds dummy {"bold":true,"color":"white","text":"Status Odds"}
# Difficulty
scoreboard players set DIFFICULTY_PERCENTAGE StatusOdds 20
# Bunker Cosmetic
scoreboard players set BUNKER_BLACKOUT StatusOdds 70
# Mutant Mary Jane
scoreboard players set MUTATE StatusOdds 200
scoreboard players set CANNIBALISM StatusOdds 15
# Crazy
scoreboard players set MENTAL_BREAKDOWN StatusOdds 12
scoreboard players set CRAZY StatusOdds 2
scoreboard players set CRAZY_RAGE StatusOdds 6
# Dolores Crazy Resistance
  # Set Dice
  scoreboard players set mode Math 1
  # Set Input
  data modify storage minecraft:math x set value 20
  execute store result storage minecraft:math y int 1 run scoreboard players get MENTAL_BREAKDOWN StatusOdds
  # Calculate
  function mc:utility/math/get_percentage
  # Store
  scoreboard players operation DOLORES_BREAKDOWN_RESISTANCE StatusOdds = out Math
# Mary Crazy Resistance
  # Set Dice
  scoreboard players set mode Math 2
  # Set Input
  data modify storage minecraft:math x set value 20
  execute store result storage minecraft:math y int 1 run scoreboard players get MENTAL_BREAKDOWN StatusOdds
  # Calculate
  function mc:utility/math/get_percentage
  # Store
  scoreboard players operation MARY_BREAKDOWN_RESISTANCE StatusOdds = out Math
# Fatigue
scoreboard players set FATIGUE StatusOdds 8
# Infection
scoreboard players set INFECTION StatusOdds 14
# Sickness
scoreboard players set SICKNESS_STARVATION StatusOdds 5
scoreboard players set SICKNESS_DEHYDRATION StatusOdds 3
scoreboard players set SICKNESS_DEATH StatusOdds 5