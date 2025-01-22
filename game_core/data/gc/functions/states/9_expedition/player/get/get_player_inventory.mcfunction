# Copy Item Ids
data modify storage minecraft:itemsprocess scavengeGainedItemIds append from entity @s Inventory[].tag.itemId

# Clear Inventory
clear @s