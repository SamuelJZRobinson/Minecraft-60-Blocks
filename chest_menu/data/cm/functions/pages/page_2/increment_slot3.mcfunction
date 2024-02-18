# Increment Slot For Void Items
execute if score slotThree ChestMenuExplore matches 2 if score ammo ItemsBunker matches 0 run scoreboard players add slotThree ChestMenuExplore 1
execute if score slotThree ChestMenuExplore matches 3 if score armour ItemsBunker matches 0 run scoreboard players add slotThree ChestMenuExplore 1
execute if score slotThree ChestMenuExplore matches 4 if score axe ItemsBunker matches 0 run scoreboard players add slotThree ChestMenuExplore 1
execute if score slotThree ChestMenuExplore matches 5 if score boyScoutHandbook ItemsBunker matches 0 run scoreboard players add slotThree ChestMenuExplore 1
execute if score slotThree ChestMenuExplore matches 6 if score bugSpray ItemsBunker matches 0 run scoreboard players add slotThree ChestMenuExplore 1
execute if score slotThree ChestMenuExplore matches 7 if score cards ItemsBunker matches 0 run scoreboard players add slotThree ChestMenuExplore 1
execute if score slotThree ChestMenuExplore matches 8 if score checkers ItemsBunker matches 0 run scoreboard players add slotThree ChestMenuExplore 1
execute if score slotThree ChestMenuExplore matches 9 if score flashlight ItemsBunker matches 0 run scoreboard players add slotThree ChestMenuExplore 1
execute if score slotThree ChestMenuExplore matches 10 if score gasMask ItemsBunker matches 0 run scoreboard players add slotThree ChestMenuExplore 1
execute if score slotThree ChestMenuExplore matches 11 if score gun ItemsBunker matches 0 run scoreboard players add slotThree ChestMenuExplore 1
execute if score slotThree ChestMenuExplore matches 12 if score harmonica ItemsBunker matches 0 run scoreboard players add slotThree ChestMenuExplore 1
execute if score slotThree ChestMenuExplore matches 13 if score map ItemsBunker matches 0 run scoreboard players add slotThree ChestMenuExplore 1
execute if score slotThree ChestMenuExplore matches 14 if score medkit ItemsBunker matches 0 run scoreboard players add slotThree ChestMenuExplore 1
execute if score slotThree ChestMenuExplore matches 15 if score padlock ItemsBunker matches 0 run scoreboard players add slotThree ChestMenuExplore 1
execute if score slotThree ChestMenuExplore matches 16 if score radio ItemsBunker matches 0 run scoreboard players add slotThree ChestMenuExplore 1
execute if score slotThree ChestMenuExplore matches 17 if score cans ItemsBunker matches ..3 run scoreboard players add slotThree ChestMenuExplore 1
execute if score slotThree ChestMenuExplore matches 18 if score bottles ItemsBunker matches ..3 run scoreboard players add slotThree ChestMenuExplore 1

# Increment For Matching Items (Slot Two)
execute if score slotThree ChestMenuExplore = slotTwo ChestMenuExplore unless score slotTwo ChestMenuExplore matches -1..1 run scoreboard players add slotThree ChestMenuExplore 1