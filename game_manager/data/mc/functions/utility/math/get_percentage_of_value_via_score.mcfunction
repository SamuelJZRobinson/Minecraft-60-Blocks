# Notes
  # Formula: (x * y) / 100

# Get Input
$scoreboard players set x Math $(percentage)
$execute store result score y Math run scoreboard players get $(score) $(objective)

# Get Percentage Of Y
scoreboard players operation output Math = x Math
scoreboard players operation output Math *= y Math
scoreboard players operation output Math /= HUNDRED Math

# Return
return run scoreboard players get output Math