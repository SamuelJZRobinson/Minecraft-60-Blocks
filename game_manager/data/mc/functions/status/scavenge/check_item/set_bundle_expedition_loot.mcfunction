# Set Template
execute if score stage CheckItems matches 6 if score expeditionMode Lobby matches 0 unless data storage minecraft:bundles expeditionLootItems run data modify storage minecraft:bundles expeditionLootItems set from storage minecraft:bundletemplate Item
execute if score stage CheckItems matches 8 if score expeditionMode Lobby matches 0 unless data storage minecraft:bundles expeditionLootItems run data modify storage minecraft:bundles expeditionLootItems set from storage minecraft:bundletemplate Item
execute if score stage CheckItems matches 9 if score expeditionMode Lobby matches 1 unless data storage minecraft:bundles expeditionLootItems run data modify storage minecraft:bundles expeditionLootItems set from storage minecraft:bundletemplate Item

# Set Temporary Item
function mc:status/scavenge/check_item/set_temp_item

# Spawn Item
execute if score stage CheckItems matches 8 if score expeditionMode Lobby matches 1 positioned 0 60 29 run function mc:status/scavenge/check_item/spawn_item

# Append Expedition Loot Items Bundle
execute if score stage CheckItems matches 6 run data modify storage minecraft:bundles expeditionLootItems.tag.Items append from storage minecraft:tempitem Items
execute if score stage CheckItems matches 8 if score expeditionMode Lobby matches 0 run data modify storage minecraft:bundles expeditionLootItems.tag.Items append from storage minecraft:tempitem Items
execute if score stage CheckItems matches 9 if score expeditionMode Lobby matches 1 run data modify storage minecraft:bundles expeditionLootItems.tag.Items append from storage minecraft:tempitem Items