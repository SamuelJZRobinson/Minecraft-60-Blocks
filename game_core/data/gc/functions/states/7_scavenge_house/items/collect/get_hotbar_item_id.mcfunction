# Copy Hotbar Item IDs
data modify storage minecraft:itemsprocess scavengeGainedItemIds append from entity @s Inventory[{Slot:0b}].components.minecraft:custom_data.itemId
data modify storage minecraft:itemsprocess scavengeGainedItemIds append from entity @s Inventory[{Slot:1b}].components.minecraft:custom_data.itemId
data modify storage minecraft:itemsprocess scavengeGainedItemIds append from entity @s Inventory[{Slot:2b}].components.minecraft:custom_data.itemId
data modify storage minecraft:itemsprocess scavengeGainedItemIds append from entity @s Inventory[{Slot:3b}].components.minecraft:custom_data.itemId

# Count Items Collected
execute if score gamemode Settings matches 1 run function gc:states/7_scavenge_house/items/collect/set_item_count

# Clear Inventory
clear @s minecraft:saddle