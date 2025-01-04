# Set Template
execute if score stage scavenges matches 6 if score doPovExpedition Settings matches 0 unless data storage minecraft:bundles expeditionLootItems run data modify storage minecraft:bundles expeditionLootItems set from storage minecraft:bundletemplate Item
execute if score stage scavenges matches 8 if score doPovExpedition Settings matches 0 unless data storage minecraft:bundles expeditionLootItems run data modify storage minecraft:bundles expeditionLootItems set from storage minecraft:bundletemplate Item
execute if score stage scavenges matches 9 if score doPovExpedition Settings matches 1 unless data storage minecraft:bundles expeditionLootItems run data modify storage minecraft:bundles expeditionLootItems set from storage minecraft:bundletemplate Item

# Set Temporary Item
function mc:utility/scavenge/process/set_temp_item

# Spawn Item
execute if score stage scavenges matches 8 if score doPovExpedition Settings matches 1 positioned 0 60 29 run function mc:utility/scavenge/process/summon_item

# Append Expedition Loot Items Bundle
execute if score stage scavenges matches 6 run data modify storage minecraft:bundles expeditionLootItems.tag.Items append from storage minecraft:tempitem Items
execute if score stage scavenges matches 8 if score doPovExpedition Settings matches 0 run data modify storage minecraft:bundles expeditionLootItems.tag.Items append from storage minecraft:tempitem Items
execute if score stage scavenges matches 9 if score doPovExpedition Settings matches 1 run data modify storage minecraft:bundles expeditionLootItems.tag.Items append from storage minecraft:tempitem Items