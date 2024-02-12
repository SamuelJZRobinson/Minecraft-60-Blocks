# Keep In Range
execute if score slotOne ChestMenuExplore matches 0 run scoreboard players set slotOne ChestMenuExplore 1
# Increment Slot For Void Items
function cm:menu/page2/increment_slot1
# Keep In Range
execute if score slotOne ChestMenuExplore matches 20.. run scoreboard players set slotOne ChestMenuExplore 0
# Refresh Cycle If Items Exist
execute if score slotOne ChestMenuExplore matches ..0 run scoreboard players set slotOne ChestMenuExplore 1
# Set Custom Head For Each Item
execute if score slotOne ChestMenuExplore matches 1 run loot replace block 0 54 29 container.9 loot lt_custom:chests/nothing
execute if score slotOne ChestMenuExplore matches 2 run loot replace block 0 54 29 container.9 loot lt_custom:chests/suitcase
execute if score slotOne ChestMenuExplore matches 3 run loot replace block 0 54 29 container.9 loot lt_custom:chests/ammo
execute if score slotOne ChestMenuExplore matches 4 run loot replace block 0 54 29 container.9 loot lt_custom:chests/armour
execute if score slotOne ChestMenuExplore matches 5 run loot replace block 0 54 29 container.9 loot lt_custom:chests/axe
execute if score slotOne ChestMenuExplore matches 6 run loot replace block 0 54 29 container.9 loot lt_custom:chests/boy_scout_handbook
execute if score slotOne ChestMenuExplore matches 7 run loot replace block 0 54 29 container.9 loot lt_custom:chests/bug_spray
execute if score slotOne ChestMenuExplore matches 8 run loot replace block 0 54 29 container.9 loot lt_custom:chests/cards
execute if score slotOne ChestMenuExplore matches 9 run loot replace block 0 54 29 container.9 loot lt_custom:chests/checkers
execute if score slotOne ChestMenuExplore matches 10 run loot replace block 0 54 29 container.9 loot lt_custom:chests/flashlight
execute if score slotOne ChestMenuExplore matches 11 run loot replace block 0 54 29 container.9 loot lt_custom:chests/gas_mask
execute if score slotOne ChestMenuExplore matches 12 run loot replace block 0 54 29 container.9 loot lt_custom:chests/gun
execute if score slotOne ChestMenuExplore matches 13 run loot replace block 0 54 29 container.9 loot lt_custom:chests/harmonica
execute if score slotOne ChestMenuExplore matches 14 run loot replace block 0 54 29 container.9 loot lt_custom:chests/map
execute if score slotOne ChestMenuExplore matches 15 run loot replace block 0 54 29 container.9 loot lt_custom:chests/medkit
execute if score slotOne ChestMenuExplore matches 16 run loot replace block 0 54 29 container.9 loot lt_custom:chests/padlock
execute if score slotOne ChestMenuExplore matches 17 run loot replace block 0 54 29 container.9 loot lt_custom:chests/radio
execute if score slotOne ChestMenuExplore matches 18 run loot replace block 0 54 29 container.9 loot lt_custom:chests/soup
execute if score slotOne ChestMenuExplore matches 19 run loot replace block 0 54 29 container.9 loot lt_custom:chests/water
# Set Selection
data modify block 0 54 29 Items[{Slot:9b}].tag.selection set value 20

# Extend Slots With Suitcase
execute unless score slotTwo ChestMenuExplore matches 2.. if score slotOne ChestMenuExplore matches 2 run scoreboard players set slotTwo ChestMenuExplore 1
execute unless score slotThree ChestMenuExplore matches 2.. if score slotOne ChestMenuExplore matches 2 run scoreboard players set slotThree ChestMenuExplore 1
execute unless score slotFour ChestMenuExplore matches 2.. if score slotOne ChestMenuExplore matches 2 run scoreboard players set slotFour ChestMenuExplore 1
# Reduce Slots Without Suitcase
execute unless score slotOne ChestMenuExplore matches 2 if score slotOne ChestMenuExplore matches -1.. run scoreboard players set slotTwo ChestMenuExplore 0
execute unless score slotOne ChestMenuExplore matches 2 if score slotOne ChestMenuExplore matches -1.. run scoreboard players set slotThree ChestMenuExplore 0
execute unless score slotOne ChestMenuExplore matches 2 if score slotOne ChestMenuExplore matches -1.. run scoreboard players set slotFour ChestMenuExplore 0