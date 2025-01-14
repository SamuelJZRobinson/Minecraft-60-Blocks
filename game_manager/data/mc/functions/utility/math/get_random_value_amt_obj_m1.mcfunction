# Get y
$data modify storage minecraft:math x set value $(x)
$execute store result score tempY Math run scoreboard players get $(score) $(objective)

# Minus y By One
scoreboard players remove tempY Math 1
execute store result storage minecraft:math y int 1 run scoreboard players get tempY Math
scoreboard players reset tempY Math

# Get Random Range
function mc:utility/math/get_random_value with storage minecraft:math