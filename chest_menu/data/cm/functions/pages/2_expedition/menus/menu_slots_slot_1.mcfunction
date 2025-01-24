# Keep In Range
execute if score slotOne MenuExpedition matches 0 run scoreboard players set slotOne MenuExpedition 1
# Increment Slot For Void Items
function cm:pages/2_expedition/menus/inc_slot_1
# Keep In Range
execute if score slotOne MenuExpedition matches 20.. run scoreboard players set slotOne MenuExpedition 0
# Refresh Cycle If Items Exist
execute if score slotOne MenuExpedition matches ..0 run scoreboard players set slotOne MenuExpedition 1
# Set Custom Head For Each Item
execute if score slotOne MenuExpedition matches 1 run loot replace block ~ ~ ~ container.9 loot cm:chests/nothing
execute if score slotOne MenuExpedition matches 2 run loot replace block ~ ~ ~ container.9 loot cm:chests/suitcase
execute if score slotOne MenuExpedition matches 3 run loot replace block ~ ~ ~ container.9 loot cm:chests/ammo
execute if score slotOne MenuExpedition matches 4 run loot replace block ~ ~ ~ container.9 loot cm:chests/armour
execute if score slotOne MenuExpedition matches 5 run loot replace block ~ ~ ~ container.9 loot cm:chests/axe
execute if score slotOne MenuExpedition matches 6 run loot replace block ~ ~ ~ container.9 loot cm:chests/boy_scout_handbook
execute if score slotOne MenuExpedition matches 7 run loot replace block ~ ~ ~ container.9 loot cm:chests/bug_spray
execute if score slotOne MenuExpedition matches 8 run loot replace block ~ ~ ~ container.9 loot cm:chests/cards
execute if score slotOne MenuExpedition matches 9 run loot replace block ~ ~ ~ container.9 loot cm:chests/checkers
execute if score slotOne MenuExpedition matches 10 run loot replace block ~ ~ ~ container.9 loot cm:chests/flashlight
execute if score slotOne MenuExpedition matches 11 run loot replace block ~ ~ ~ container.9 loot cm:chests/gas_mask
execute if score slotOne MenuExpedition matches 12 run loot replace block ~ ~ ~ container.9 loot cm:chests/gun
execute if score slotOne MenuExpedition matches 13 run loot replace block ~ ~ ~ container.9 loot cm:chests/harmonica
execute if score slotOne MenuExpedition matches 14 run loot replace block ~ ~ ~ container.9 loot cm:chests/map
execute if score slotOne MenuExpedition matches 15 run loot replace block ~ ~ ~ container.9 loot cm:chests/medkit
execute if score slotOne MenuExpedition matches 16 run loot replace block ~ ~ ~ container.9 loot cm:chests/padlock
execute if score slotOne MenuExpedition matches 17 run loot replace block ~ ~ ~ container.9 loot cm:chests/radio
execute if score slotOne MenuExpedition matches 18 run loot replace block ~ ~ ~ container.9 loot cm:chests/soup
execute if score slotOne MenuExpedition matches 19 run loot replace block ~ ~ ~ container.9 loot cm:chests/water
# Set Selection
data modify block ~ ~ ~ Items[{Slot:9b}].components.minecraft:custom_data.selection set value 20

# Extend Slots With Suitcase
execute unless score slotTwo MenuExpedition matches 2.. if score slotOne MenuExpedition matches 2 run scoreboard players set slotTwo MenuExpedition 1
execute unless score slotThree MenuExpedition matches 2.. if score slotOne MenuExpedition matches 2 run scoreboard players set slotThree MenuExpedition 1
execute unless score slotFour MenuExpedition matches 2.. if score slotOne MenuExpedition matches 2 run scoreboard players set slotFour MenuExpedition 1
# Reduce Slots Without Suitcase
execute unless score slotOne MenuExpedition matches 2 if score slotOne MenuExpedition matches -1.. run scoreboard players set slotTwo MenuExpedition 0
execute unless score slotOne MenuExpedition matches 2 if score slotOne MenuExpedition matches -1.. run scoreboard players set slotThree MenuExpedition 0
execute unless score slotOne MenuExpedition matches 2 if score slotOne MenuExpedition matches -1.. run scoreboard players set slotFour MenuExpedition 0