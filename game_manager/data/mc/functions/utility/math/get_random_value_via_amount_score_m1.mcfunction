# Set Inputs
$scoreboard players set x Math $(x)
execute store result storage minecraft:math x int 1 run scoreboard players get x Math
$execute store result score y Math run scoreboard players get $(score) $(objective)
execute store result storage minecraft:math y int 1 run scoreboard players get y Math

# Minus y By One
scoreboard players remove y Math 1

# Early Return
execute if score y Math matches ..1 run return run scoreboard players get y Math

# Get Random Range
execute if score y Math matches 1.. run function mc:utility/math/get_random_value with storage minecraft:math