# Increment Slot For Void Items
execute if score slotThree MenuExplore matches 2 if score ammo ItemsBunker matches 0 run scoreboard players add slotThree MenuExplore 1
execute if score slotThree MenuExplore matches 3 if score bodyArmour ItemsBunker matches 0 run scoreboard players add slotThree MenuExplore 1
execute if score slotThree MenuExplore matches 4 if score axe ItemsBunker matches 0 run scoreboard players add slotThree MenuExplore 1
execute if score slotThree MenuExplore matches 5 if score boyScoutHandbook ItemsBunker matches 0 run scoreboard players add slotThree MenuExplore 1
execute if score slotThree MenuExplore matches 6 if score bugSpray ItemsBunker matches 0 run scoreboard players add slotThree MenuExplore 1
execute if score slotThree MenuExplore matches 7 if score cards ItemsBunker matches 0 run scoreboard players add slotThree MenuExplore 1
execute if score slotThree MenuExplore matches 8 if score checkers ItemsBunker matches 0 run scoreboard players add slotThree MenuExplore 1
execute if score slotThree MenuExplore matches 9 if score flashlight ItemsBunker matches 0 run scoreboard players add slotThree MenuExplore 1
execute if score slotThree MenuExplore matches 10 if score gasMask ItemsBunker matches 0 run scoreboard players add slotThree MenuExplore 1
execute if score slotThree MenuExplore matches 11 if score gun ItemsBunker matches 0 run scoreboard players add slotThree MenuExplore 1
execute if score slotThree MenuExplore matches 12 if score harmonica ItemsBunker matches 0 run scoreboard players add slotThree MenuExplore 1
execute if score slotThree MenuExplore matches 13 if score map ItemsBunker matches 0 run scoreboard players add slotThree MenuExplore 1
execute if score slotThree MenuExplore matches 14 if score medkit ItemsBunker matches 0 run scoreboard players add slotThree MenuExplore 1
execute if score slotThree MenuExplore matches 15 if score padlock ItemsBunker matches 0 run scoreboard players add slotThree MenuExplore 1
execute if score slotThree MenuExplore matches 16 if score radio ItemsBunker matches 0 run scoreboard players add slotThree MenuExplore 1
execute if score slotThree MenuExplore matches 17 if score soups ItemsBunker matches ..3 run scoreboard players add slotThree MenuExplore 1
execute if score slotThree MenuExplore matches 18 if score waters ItemsBunker matches ..3 run scoreboard players add slotThree MenuExplore 1

# Increment For Matching Items (Slot Two)
execute if score slotThree MenuExplore = slotTwo MenuExplore unless score slotTwo MenuExplore matches -1..1 run scoreboard players add slotThree MenuExplore 1