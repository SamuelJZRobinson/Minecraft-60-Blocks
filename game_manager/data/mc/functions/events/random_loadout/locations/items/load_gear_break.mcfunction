# Set Scores
scoreboard players set stage scavenges 7
scoreboard players set itemsOwed scavenges 1

# Copy Items
data modify storage minecraft:scavenge randomId set from storage minecraft:bundles expeditionGearId

# Remove Items
function mc:utility/scavenge/process/bundles/check/check_random