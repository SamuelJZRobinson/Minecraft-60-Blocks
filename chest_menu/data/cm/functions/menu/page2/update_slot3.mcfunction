# Increment Slot For Two Slots
function cm:menu/page2/increment_slot3
function cm:menu/page2/increment_slot3
# Keep In Range
execute if score slotThree ChestMenuExplore matches 19.. run scoreboard players set slotThree ChestMenuExplore 0
# Refresh Cycle If Items Exist And Suitcase Is Active
execute if score slotThree ChestMenuExplore matches ..0 if score slotOne ChestMenuExplore matches 2 unless score itemCount ItemsBunker matches ..2 run scoreboard players set slotThree ChestMenuExplore 1
# Set Custom Head For Each Item
execute if score slotThree ChestMenuExplore matches 1 run loot replace block 0 54 29 container.11 loot lt_custom:chests/nothing
execute if score slotThree ChestMenuExplore matches 2 run loot replace block 0 54 29 container.11 loot lt_custom:chests/ammo
execute if score slotThree ChestMenuExplore matches 3 run loot replace block 0 54 29 container.11 loot lt_custom:chests/armour
execute if score slotThree ChestMenuExplore matches 4 run loot replace block 0 54 29 container.11 loot lt_custom:chests/axe
execute if score slotThree ChestMenuExplore matches 5 run loot replace block 0 54 29 container.11 loot lt_custom:chests/boy_scout_handbook
execute if score slotThree ChestMenuExplore matches 6 run loot replace block 0 54 29 container.11 loot lt_custom:chests/bug_spray
execute if score slotThree ChestMenuExplore matches 7 run loot replace block 0 54 29 container.11 loot lt_custom:chests/cards
execute if score slotThree ChestMenuExplore matches 8 run loot replace block 0 54 29 container.11 loot lt_custom:chests/checkers
execute if score slotThree ChestMenuExplore matches 9 run loot replace block 0 54 29 container.11 loot lt_custom:chests/flashlight
execute if score slotThree ChestMenuExplore matches 10 run loot replace block 0 54 29 container.11 loot lt_custom:chests/gas_mask
execute if score slotThree ChestMenuExplore matches 11 run loot replace block 0 54 29 container.11 loot lt_custom:chests/gun
execute if score slotThree ChestMenuExplore matches 12 run loot replace block 0 54 29 container.11 loot lt_custom:chests/harmonica
execute if score slotThree ChestMenuExplore matches 13 run loot replace block 0 54 29 container.11 loot lt_custom:chests/map
execute if score slotThree ChestMenuExplore matches 14 run loot replace block 0 54 29 container.11 loot lt_custom:chests/medkit
execute if score slotThree ChestMenuExplore matches 15 run loot replace block 0 54 29 container.11 loot lt_custom:chests/padlock
execute if score slotThree ChestMenuExplore matches 16 run loot replace block 0 54 29 container.11 loot lt_custom:chests/radio
execute if score slotThree ChestMenuExplore matches 17 run loot replace block 0 54 29 container.11 loot lt_custom:chests/soup
execute if score slotThree ChestMenuExplore matches 18 run loot replace block 0 54 29 container.11 loot lt_custom:chests/water
# Set Selection
data modify block 0 54 29 Items[{Slot:11b}].tag.selection set value 22