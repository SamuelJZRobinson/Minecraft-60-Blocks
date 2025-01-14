# Get y
$data modify storage minecraft:math x set value $(x)
$execute store result storage minecraft:math y int 1 run scoreboard players get $(score) $(objective)

# Get Random Range
function mc:utility/math/get_random_value with storage minecraft:math