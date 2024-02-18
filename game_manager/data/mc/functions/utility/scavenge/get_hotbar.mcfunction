# Copy Hotbar Item IDs
data modify storage minecraft:checkitem checkId append from entity @s Inventory[{Slot:0b}].tag.itemId
data modify storage minecraft:checkitem checkId append from entity @s Inventory[{Slot:1b}].tag.itemId
data modify storage minecraft:checkitem checkId append from entity @s Inventory[{Slot:2b}].tag.itemId
data modify storage minecraft:checkitem checkId append from entity @s Inventory[{Slot:3b}].tag.itemId

# Count Items Collected
execute if score gamemode Settings matches 1 run function mc:utility/scavenge/get_hotbar_count
execute if score gamemode Settings matches 3 run function mc:utility/scavenge/get_hotbar_count

# Clear Inventory
clear @s minecraft:saddle