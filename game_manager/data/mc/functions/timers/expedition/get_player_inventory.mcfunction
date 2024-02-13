# Copy Item Ids
data modify storage minecraft:checkitem checkId append from entity @s Inventory[].tag.itemId

# Clear Inventory
clear @s