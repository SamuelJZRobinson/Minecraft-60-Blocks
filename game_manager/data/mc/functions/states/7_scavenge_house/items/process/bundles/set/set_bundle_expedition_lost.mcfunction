# Set Template
execute unless data storage minecraft:bundles expeditionLostItems run data modify storage minecraft:bundles expeditionLostItems set from storage minecraft:bundletemplate Item

# Set Temporary Item
function mc:utility/scavenge/process/set_temp_item

# Append Lost Items Bundle
data modify storage minecraft:bundles expeditionLostItems.tag.Items append from storage minecraft:tempitem Items

# Remove Item From Gear Bundle
execute if score gearIndexRemove ItemsExpedition matches 0 run data remove storage minecraft:bundles expeditionGearId[0]
execute if score gearIndexRemove ItemsExpedition matches 1 run data remove storage minecraft:bundles expeditionGearId[1]
execute if score gearIndexRemove ItemsExpedition matches 2 run data remove storage minecraft:bundles expeditionGearId[2]
execute if score gearIndexRemove ItemsExpedition matches 3 run data remove storage minecraft:bundles expeditionGearId[3]

# Append Remaining Items
execute store result score tempCount scavenges run data get storage minecraft:bundles expeditionGearId
execute if score tempCount scavenges matches 1.. run data modify storage minecraft:scavenge savedItemIds set from storage minecraft:bundles expeditionGearId
execute if score tempCount scavenges matches 1.. run scoreboard players set stage scavenges 6
execute if score tempCount scavenges matches 1.. run function mc:utility/scavenge/process/bundles/check/check_main_add

# Refresh Scores
scoreboard players reset gearIndexRemove ItemsExpedition