# Settings
scoreboard players set isAddition ItemsBundles 1
scoreboard players set doBundle ItemsBundles 0

# Copy Item Ids For Processing
data modify storage minecraft:itemsprocess processItemIds set from storage minecraft:itemsprocess scavengeGainedItemIds

# Process
function gc:states/8_bunker/items/process/check_item