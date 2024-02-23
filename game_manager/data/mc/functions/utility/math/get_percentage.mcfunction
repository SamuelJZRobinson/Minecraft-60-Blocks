# Notes
  # Avoid out - y since it will subtract 100% instead of percentage equivalent in out.

# Get Input
execute store result score x Math run data get storage minecraft:math x
execute store result score y Math run data get storage minecraft:math y

# Keep In Range
execute if score x Math matches ..-1 run scoreboard players set x Math 0
execute if score x Math matches 101.. run scoreboard players set x Math 100
execute if score y Math matches ..-1 run scoreboard players set y Math 0
execute if score y Math matches 101.. run scoreboard players set y Math 100

# Get Percentage Equivalent Of Y, Where X Is The Percentage
  # Formula: (x*y)/100
  # Example: 23% of 50 = 11.5
  scoreboard players operation out Math = x Math
  scoreboard players operation out Math *= y Math
  scoreboard players set divisor Math 10
  scoreboard players set placesLeft Math 2
  function mc:utility/math/divide_round

# Modes
  # Add Percentage Equivalent Of Y
  execute if score mode Math matches 1 run scoreboard players operation out Math += y Math

  # Subtract Percentage Equivalent Of Y
  execute if score mode Math matches 2 run scoreboard players operation y2 Math = y Math
  execute if score mode Math matches 2 run scoreboard players operation y2 Math -= out Math
  execute if score mode Math matches 2 run scoreboard players operation out Math = y2 Math
  execute if score mode Math matches 2 run scoreboard players reset y2 Math