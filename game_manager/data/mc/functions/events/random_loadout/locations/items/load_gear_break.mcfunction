# Set Scores
scoreboard players set stage ItemsBundles 7
scoreboard players set suitcaseItemsLeft ItemsBundles 1

# Copy Items
data modify storage minecraft:itemsprocess randomItemIds set from storage minecraft:itemsprocess expeditionLostItemIds

# Remove Items
function mc:states/8_bunker/items/process/bundles/check/check_random