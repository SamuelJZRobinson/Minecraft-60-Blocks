tellraw @a "state 8"

# Stop Mob Loot
gamerule doMobLoot false

# Check Item
scoreboard players set isAddition ItemsBundles 1
function mc:states/8_bunker/items/process/check_item

# Goto Bunker
function mc:utility/tp/tp_bunker

# Update
function mc:states/8_bunker/manage_day