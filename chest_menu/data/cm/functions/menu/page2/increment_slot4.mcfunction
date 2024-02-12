# Increment Slot For Void Items
execute if score slotFour ChestMenuExplore matches 2 if score ammo ItemsBunker matches 0 run scoreboard players add slotFour ChestMenuExplore 1
execute if score slotFour ChestMenuExplore matches 3 if score armour ItemsBunker matches 0 run scoreboard players add slotFour ChestMenuExplore 1
execute if score slotFour ChestMenuExplore matches 4 if score axe ItemsBunker matches 0 run scoreboard players add slotFour ChestMenuExplore 1
execute if score slotFour ChestMenuExplore matches 5 if score boyScoutHandbook ItemsBunker matches 0 run scoreboard players add slotFour ChestMenuExplore 1
execute if score slotFour ChestMenuExplore matches 6 if score bugSpray ItemsBunker matches 0 run scoreboard players add slotFour ChestMenuExplore 1
execute if score slotFour ChestMenuExplore matches 7 if score cards ItemsBunker matches 0 run scoreboard players add slotFour ChestMenuExplore 1
execute if score slotFour ChestMenuExplore matches 8 if score checkers ItemsBunker matches 0 run scoreboard players add slotFour ChestMenuExplore 1
execute if score slotFour ChestMenuExplore matches 9 if score flashlight ItemsBunker matches 0 run scoreboard players add slotFour ChestMenuExplore 1
execute if score slotFour ChestMenuExplore matches 10 if score gasMask ItemsBunker matches 0 run scoreboard players add slotFour ChestMenuExplore 1
execute if score slotFour ChestMenuExplore matches 11 if score gun ItemsBunker matches 0 run scoreboard players add slotFour ChestMenuExplore 1
execute if score slotFour ChestMenuExplore matches 12 if score harmonica ItemsBunker matches 0 run scoreboard players add slotFour ChestMenuExplore 1
execute if score slotFour ChestMenuExplore matches 13 if score map ItemsBunker matches 0 run scoreboard players add slotFour ChestMenuExplore 1
execute if score slotFour ChestMenuExplore matches 14 if score medkit ItemsBunker matches 0 run scoreboard players add slotFour ChestMenuExplore 1
execute if score slotFour ChestMenuExplore matches 15 if score padlock ItemsBunker matches 0 run scoreboard players add slotFour ChestMenuExplore 1
execute if score slotFour ChestMenuExplore matches 16 if score radio ItemsBunker matches 0 run scoreboard players add slotFour ChestMenuExplore 1
execute if score slotFour ChestMenuExplore matches 17 if score cans ItemsBunker matches ..3 run scoreboard players add slotFour ChestMenuExplore 1
execute if score slotFour ChestMenuExplore matches 18 if score bottles ItemsBunker matches ..3 run scoreboard players add slotFour ChestMenuExplore 1

# Increment For Matching Items (Slot Two And Three)
execute if score slotFour ChestMenuExplore = slotTwo ChestMenuExplore unless score slotTwo ChestMenuExplore matches -1..1 run scoreboard players add slotFour ChestMenuExplore 1
execute if score slotFour ChestMenuExplore = slotThree ChestMenuExplore unless score slotThree ChestMenuExplore matches -1..1 run scoreboard players add slotFour ChestMenuExplore 1