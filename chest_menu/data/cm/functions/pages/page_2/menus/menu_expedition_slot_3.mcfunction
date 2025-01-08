# Increment Slot For Two Slots
function cm:pages/page_2/menus/inc_slot_3
function cm:pages/page_2/menus/inc_slot_3
# Keep In Range
execute if score slotThree MenuExplore matches 19.. run scoreboard players set slotThree MenuExplore 0
# Refresh Cycle If Items Exist And Suitcase Is Active
execute if score slotThree MenuExplore matches ..0 if score slotOne MenuExplore matches 2 unless score itemCount ItemsBunker matches ..2 run scoreboard players set slotThree MenuExplore 1
# Set Custom Head For Each Item
execute if score slotThree MenuExplore matches 1 run loot replace block -8 -48 -9 container.11 loot cm:chests/nothing
execute if score slotThree MenuExplore matches 2 run loot replace block -8 -48 -9 container.11 loot cm:chests/ammo
execute if score slotThree MenuExplore matches 3 run loot replace block -8 -48 -9 container.11 loot cm:chests/armour
execute if score slotThree MenuExplore matches 4 run loot replace block -8 -48 -9 container.11 loot cm:chests/axe
execute if score slotThree MenuExplore matches 5 run loot replace block -8 -48 -9 container.11 loot cm:chests/boy_scout_handbook
execute if score slotThree MenuExplore matches 6 run loot replace block -8 -48 -9 container.11 loot cm:chests/bug_spray
execute if score slotThree MenuExplore matches 7 run loot replace block -8 -48 -9 container.11 loot cm:chests/cards
execute if score slotThree MenuExplore matches 8 run loot replace block -8 -48 -9 container.11 loot cm:chests/checkers
execute if score slotThree MenuExplore matches 9 run loot replace block -8 -48 -9 container.11 loot cm:chests/flashlight
execute if score slotThree MenuExplore matches 10 run loot replace block -8 -48 -9 container.11 loot cm:chests/gas_mask
execute if score slotThree MenuExplore matches 11 run loot replace block -8 -48 -9 container.11 loot cm:chests/gun
execute if score slotThree MenuExplore matches 12 run loot replace block -8 -48 -9 container.11 loot cm:chests/harmonica
execute if score slotThree MenuExplore matches 13 run loot replace block -8 -48 -9 container.11 loot cm:chests/map
execute if score slotThree MenuExplore matches 14 run loot replace block -8 -48 -9 container.11 loot cm:chests/medkit
execute if score slotThree MenuExplore matches 15 run loot replace block -8 -48 -9 container.11 loot cm:chests/padlock
execute if score slotThree MenuExplore matches 16 run loot replace block -8 -48 -9 container.11 loot cm:chests/radio
execute if score slotThree MenuExplore matches 17 run loot replace block -8 -48 -9 container.11 loot cm:chests/soup
execute if score slotThree MenuExplore matches 18 run loot replace block -8 -48 -9 container.11 loot cm:chests/water
# Set Selection
data modify block -8 -48 -9 Items[{Slot:11b}].tag.selection set value 22