# Keep In Range
execute if score slotOne MenuExplore matches 0 run scoreboard players set slotOne MenuExplore 1
# Increment Slot For Void Items
function cm:pages/page_2/menus/inc_slot_1
# Keep In Range
execute if score slotOne MenuExplore matches 20.. run scoreboard players set slotOne MenuExplore 0
# Refresh Cycle If Items Exist
execute if score slotOne MenuExplore matches ..0 run scoreboard players set slotOne MenuExplore 1
# Set Custom Head For Each Item
execute if score slotOne MenuExplore matches 1 run loot replace block 0 54 29 container.9 loot lt_custom:chests/nothing
execute if score slotOne MenuExplore matches 2 run loot replace block 0 54 29 container.9 loot lt_custom:chests/suitcase
execute if score slotOne MenuExplore matches 3 run loot replace block 0 54 29 container.9 loot lt_custom:chests/ammo
execute if score slotOne MenuExplore matches 4 run loot replace block 0 54 29 container.9 loot lt_custom:chests/armour
execute if score slotOne MenuExplore matches 5 run loot replace block 0 54 29 container.9 loot lt_custom:chests/axe
execute if score slotOne MenuExplore matches 6 run loot replace block 0 54 29 container.9 loot lt_custom:chests/boy_scout_handbook
execute if score slotOne MenuExplore matches 7 run loot replace block 0 54 29 container.9 loot lt_custom:chests/bug_spray
execute if score slotOne MenuExplore matches 8 run loot replace block 0 54 29 container.9 loot lt_custom:chests/cards
execute if score slotOne MenuExplore matches 9 run loot replace block 0 54 29 container.9 loot lt_custom:chests/checkers
execute if score slotOne MenuExplore matches 10 run loot replace block 0 54 29 container.9 loot lt_custom:chests/flashlight
execute if score slotOne MenuExplore matches 11 run loot replace block 0 54 29 container.9 loot lt_custom:chests/gas_mask
execute if score slotOne MenuExplore matches 12 run loot replace block 0 54 29 container.9 loot lt_custom:chests/gun
execute if score slotOne MenuExplore matches 13 run loot replace block 0 54 29 container.9 loot lt_custom:chests/harmonica
execute if score slotOne MenuExplore matches 14 run loot replace block 0 54 29 container.9 loot lt_custom:chests/map
execute if score slotOne MenuExplore matches 15 run loot replace block 0 54 29 container.9 loot lt_custom:chests/medkit
execute if score slotOne MenuExplore matches 16 run loot replace block 0 54 29 container.9 loot lt_custom:chests/padlock
execute if score slotOne MenuExplore matches 17 run loot replace block 0 54 29 container.9 loot lt_custom:chests/radio
execute if score slotOne MenuExplore matches 18 run loot replace block 0 54 29 container.9 loot lt_custom:chests/soup
execute if score slotOne MenuExplore matches 19 run loot replace block 0 54 29 container.9 loot lt_custom:chests/water
# Set Selection
data modify block 0 54 29 Items[{Slot:9b}].tag.selection set value 20

# Extend Slots With Suitcase
execute unless score slotTwo MenuExplore matches 2.. if score slotOne MenuExplore matches 2 run scoreboard players set slotTwo MenuExplore 1
execute unless score slotThree MenuExplore matches 2.. if score slotOne MenuExplore matches 2 run scoreboard players set slotThree MenuExplore 1
execute unless score slotFour MenuExplore matches 2.. if score slotOne MenuExplore matches 2 run scoreboard players set slotFour MenuExplore 1
# Reduce Slots Without Suitcase
execute unless score slotOne MenuExplore matches 2 if score slotOne MenuExplore matches -1.. run scoreboard players set slotTwo MenuExplore 0
execute unless score slotOne MenuExplore matches 2 if score slotOne MenuExplore matches -1.. run scoreboard players set slotThree MenuExplore 0
execute unless score slotOne MenuExplore matches 2 if score slotOne MenuExplore matches -1.. run scoreboard players set slotFour MenuExplore 0