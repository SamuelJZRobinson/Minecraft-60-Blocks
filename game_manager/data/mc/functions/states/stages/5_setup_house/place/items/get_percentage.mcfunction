# Notes
  # Mode determines how to calculate the result. 1 finds % in max, 2 finds % in max + output, 3 finds % in max - output
  # math_in1 is the percentage and memory is the max value
  # notRandom stops values from being randomly selected between a range by default
  # During random selections math_in2 is increased by 1 to avoid omitting the max range
  # startOne sets math_in1 to 1 when the dice is rolled instead of being a percentage of the max value

### This script should ideally be in the math module

# Keep In Range
execute if score math_in1 em matches ..-1 run scoreboard players set math_in1 em 0
execute if score math_in1 em matches 101.. run scoreboard players set math_in1 em 100

# Get Percentage ((X * Y) / 100)
scoreboard players operation math_in2 em = memory em
execute if score dynamicDifficulty em matches 1 run scoreboard players operation math_in1 em = DIFFICULTY_PERCENTAGE StatusOdds
scoreboard players operation math_in1 em *= math_in2 em
scoreboard players set math_in2 em 100
function em:math/divide_round

# Generate Random Number
  # Set Initial Values
  scoreboard players operation math_in1 em = math_out em
  scoreboard players operation math_in2 em = memory em
  # Mode Operations
  execute if score mode em matches 2 run scoreboard players operation math_in2 em += math_out em
  execute if score mode em matches 3 run scoreboard players operation math_in2 em -= math_out em
  execute if score mode em matches 3 if score math_in1 em >= math_in2 em run scoreboard players set math_in1 em 1
  # Roll Dice
  execute if score notRandom em matches 0 if score startOne em matches 1 run scoreboard players set math_in1 em 1
  execute if score notRandom em matches 0 run scoreboard players add math_in2 em 1
  execute if score notRandom em matches 0 run function em:math/randomp
  execute if score notRandom em matches 1 run scoreboard players operation math_out em = math_in2 em

# Refresh Scores
# scoreboard players set memory em 0
# scoreboard players reset notRandom em
# scoreboard players reset startOne em