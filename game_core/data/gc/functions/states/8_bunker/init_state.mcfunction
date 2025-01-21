tellraw @a "state 8"

# Stop Mob Loot
gamerule doMobLoot false

# Check Item
scoreboard players set isAddition ItemsBundles 1
execute store result score itemsLeft ItemsBundles run data get storage minecraft:itemsprocess processItemIds
execute if score itemsLeft ItemsBundles matches 1.. run function gc:states/8_bunker/items/process/check_item

# Goto Bunker
function gc:utility/tp/tp_bunker

# Update
function gc:states/8_bunker/manage_day