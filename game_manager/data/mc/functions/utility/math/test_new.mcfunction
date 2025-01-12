# Set Dice
scoreboard players set mode Math 2
# Set Input
data modify storage minecraft:math x set value 90
data modify storage minecraft:math y set value 12
# Calculate
function mc:utility/math/get_percentage
# Store
scoreboard players operation DOLORES_CRAZY_ESCAPE_RESISTANCE StatusOdds = out Math