# Setup Dice
scoreboard players set mode Math 2
scoreboard players set dynamicDifficulty Math 0
# Set Input
data modify storage minecraft:math x set value 90
data modify storage minecraft:math y set value 12
# Calculate
function mc:utility/math/get_percentage
# Store
scoreboard players operation DOLORES_BREAKDOWN_RESISTANCE StatusOdds = out Math