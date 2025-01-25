# Settings
scoreboard players set isAddition ItemsBundles 0
scoreboard players set doBundle ItemsBundles 1
scoreboard players set doDisplayOnly ItemsBundles 1
scoreboard players set doBreak ItemsBundles 0

# Copy Item Ids For Processing
data modify storage minecraft:itemsprocess processItemIds set from storage minecraft:itemsprocess expeditionTakenItemIds

# Process
function gc:states/8_bunker/items/process/check_item