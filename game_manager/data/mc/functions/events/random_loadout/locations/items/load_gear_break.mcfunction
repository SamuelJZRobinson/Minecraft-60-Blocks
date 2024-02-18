# Set Scores
scoreboard players set stage CheckItems 7
scoreboard players set itemsOwed CheckItems 1

# Copy Items
data modify storage minecraft:checkitem randomId set from storage minecraft:bundles expeditionGearId

# Remove Items
function mc:utility/scavenge/process/check_random