# Settings
scoreboard players set doBundle ItemsBundles 1

# Copy Item Ids For Processing
data modify storage minecraft:itemsprocess processItemIds append from storage minecraft:itemsprocess charactersLostIds

# Process
function mc:states/8_bunker/items/process/check_item