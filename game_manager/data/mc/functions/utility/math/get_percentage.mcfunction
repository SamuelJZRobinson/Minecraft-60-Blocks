# Get Input
execute store result score x Math run data get storage minecraft:math x
execute store result score y Math run data get storage minecraft:math y

# Keep In Range
execute if score x Math matches ..-1 run scoreboard players set x Math 0
execute if score y Math matches 101.. run scoreboard players set y Math 100

# Modes
  # One: what is the percentage equivalent of y, where x is the percentage?
    # Formula: (x*y)/100
    # Example: 23% of 50 = 11.5
    scoreboard players operation out Math = x Math
    scoreboard players operation out Math *= y Math
  # Two: one + output
  # Three: one - output

# Round
scoreboard players set divisor Math 10
scoreboard players set placesLeft Math 2
function mc:utility/math/divide_round