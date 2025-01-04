tellraw @a "state 8"

# Check Item
scoreboard players set mode ItemsBundles 1
function mc:states/8_bunker/items/process/check/check_item

# Goto Bunker
function mc:utility/tp/tp_bunker

# Update
function mc:states/8_bunker/manage_day