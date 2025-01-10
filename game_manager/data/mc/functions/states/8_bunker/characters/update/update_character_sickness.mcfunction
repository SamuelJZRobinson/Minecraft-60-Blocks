

# Decrement Countdown
execute if score isSick TedStatus matches 1 unless score sickness TedStatus matches ..0 run scoreboard players remove sickness TedStatus 1

# Sickness Malnutrition Chance
  # No Soup
  execute store result storage minecraft:math y int 1 run scoreboard players get SICKNESS_STARVATION StatusOdds
  execute if score isSick TedStatus matches 0 if score soup TedStatus <= HUNGER_MIN StatusLevels run function mc:utility/math/get_random_range with storage minecraft:math
  execute if score isSick TedStatus matches 0 if score soup TedStatus <= HUNGER_MIN StatusLevels if score out Math matches 1 run scoreboard players set isSick TedStatus 1
  ### execute unless score task AtomicDrill matches 13..15 if score math_out em matches 1 run scoreboard players set isSick TedStatus 1
  # No Water
  execute store result storage minecraft:math y int 1 run scoreboard players get SICKNESS_DEHYDRATION StatusOdds
  execute if score isSick TedStatus matches 0 if score water TedStatus <= THIRST_MIN StatusLevels run function mc:utility/math/get_random_range with storage minecraft:math
  execute if score isSick TedStatus matches 0 if score water TedStatus <= THIRST_MIN StatusLevels if score out Math matches 1 run scoreboard players set isSick TedStatus 1

# Sickness Death Chance
execute store result storage minecraft:math y int 1 run scoreboard players get SICKNESS_DEATH StatusOdds
execute if score sickness TedStatus <= SICKNESS_MIN StatusLevels run function mc:utility/math/get_random_range with storage minecraft:math
execute if score sickness TedStatus <= SICKNESS_MIN StatusLevels if score out Math matches 1 run scoreboard players set alive TedStatus 0

# Dead
execute if score sickness TedStatus matches 0 run scoreboard players set alive TedStatus 0