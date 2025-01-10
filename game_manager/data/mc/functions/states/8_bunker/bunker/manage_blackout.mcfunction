# Chance
data modify storage minecraft:math x set value 1
execute store result storage minecraft:math y int 1 run scoreboard players get BUNKER_BLACKOUT StatusOdds
function mc:utility/math/get_random_range with storage minecraft:math
execute if score out Math matches 1 run function mc:states/8_bunker/bunker/set/set_blackout_break