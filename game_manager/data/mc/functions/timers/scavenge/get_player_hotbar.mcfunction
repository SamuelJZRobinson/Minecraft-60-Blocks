# Copy Item Ids
data modify storage minecraft:checkitem checkId append from entity @s Inventory[{Slot:0b}].tag.itemId
data modify storage minecraft:checkitem checkId append from entity @s Inventory[{Slot:1b}].tag.itemId
data modify storage minecraft:checkitem checkId append from entity @s Inventory[{Slot:2b}].tag.itemId
data modify storage minecraft:checkitem checkId append from entity @s Inventory[{Slot:3b}].tag.itemId
execute if score gameMode Lobby matches 1 run function mc:timers/scavenge/get_player_hotbar_count
execute if score gameMode Lobby matches 3 run function mc:timers/scavenge/get_player_hotbar_count
# Clear Inventory
clear @s minecraft:saddle