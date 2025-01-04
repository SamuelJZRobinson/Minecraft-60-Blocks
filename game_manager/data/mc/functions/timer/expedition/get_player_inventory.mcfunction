# Copy Item Ids
data modify storage minecraft:scavenge savedItemIds append from entity @s Inventory[].tag.itemId

# Clear Inventory
clear @s