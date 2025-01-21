# Notes
  # Formula: (x * y) / 100

# Get Input
$execute store result score x Math run scoreboard players get $(xscore) $(xobjective)
$execute store result score y Math run scoreboard players get $(yscore) $(yobjective)

# Get Percentage Of Y
scoreboard players operation output Math = x Math
scoreboard players operation output Math *= y Math
scoreboard players operation output Math /= HUNDRED Math

# Return
return run scoreboard players get output Math