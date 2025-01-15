# Increment Slot For Void Items
function cm:pages/page_2/menus/inc_slot_2
# Keep In Range
execute if score slotTwo MenuExpedition matches 19.. run scoreboard players set slotTwo MenuExpedition 0
# Refresh Cycle If Items Exist And Suitcase Is Active
execute if score slotTwo MenuExpedition matches ..0 if score slotOne MenuExpedition matches 2 run scoreboard players set slotTwo MenuExpedition 1
# Set Custom Head For Each Item
execute if score slotTwo MenuExpedition matches 1 run loot replace block ~ ~ ~ container.10 loot cm:chests/nothing
execute if score slotTwo MenuExpedition matches 2 run loot replace block ~ ~ ~ container.10 loot cm:chests/ammo
execute if score slotTwo MenuExpedition matches 3 run loot replace block ~ ~ ~ container.10 loot cm:chests/armour
execute if score slotTwo MenuExpedition matches 4 run loot replace block ~ ~ ~ container.10 loot cm:chests/axe
execute if score slotTwo MenuExpedition matches 5 run loot replace block ~ ~ ~ container.10 loot cm:chests/boy_scout_handbook
execute if score slotTwo MenuExpedition matches 6 run loot replace block ~ ~ ~ container.10 loot cm:chests/bug_spray
execute if score slotTwo MenuExpedition matches 7 run loot replace block ~ ~ ~ container.10 loot cm:chests/cards
execute if score slotTwo MenuExpedition matches 8 run loot replace block ~ ~ ~ container.10 loot cm:chests/checkers
execute if score slotTwo MenuExpedition matches 9 run loot replace block ~ ~ ~ container.10 loot cm:chests/flashlight
execute if score slotTwo MenuExpedition matches 10 run loot replace block ~ ~ ~ container.10 loot cm:chests/gas_mask
execute if score slotTwo MenuExpedition matches 11 run loot replace block ~ ~ ~ container.10 loot cm:chests/gun
execute if score slotTwo MenuExpedition matches 12 run loot replace block ~ ~ ~ container.10 loot cm:chests/harmonica
execute if score slotTwo MenuExpedition matches 13 run loot replace block ~ ~ ~ container.10 loot cm:chests/map
execute if score slotTwo MenuExpedition matches 14 run loot replace block ~ ~ ~ container.10 loot cm:chests/medkit
execute if score slotTwo MenuExpedition matches 15 run loot replace block ~ ~ ~ container.10 loot cm:chests/padlock
execute if score slotTwo MenuExpedition matches 16 run loot replace block ~ ~ ~ container.10 loot cm:chests/radio
execute if score slotTwo MenuExpedition matches 17 run loot replace block ~ ~ ~ container.10 loot cm:chests/soup
execute if score slotTwo MenuExpedition matches 18 run loot replace block ~ ~ ~ container.10 loot cm:chests/water
# Set Selection
data modify block ~ ~ ~ Items[{Slot:10b}].tag.selection set value 21