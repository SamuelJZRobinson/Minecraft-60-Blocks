# Set Scores
scoreboard players set stage ItemsBundles 7
scoreboard players set itemsOwed ItemsBundles 1

# Copy Items
data modify storage minecraft:scavenge randomId set from storage minecraft:bundles expeditionGearId

# Remove Items
function mc:states/8_bunker/items/process/bundles/check/check_random