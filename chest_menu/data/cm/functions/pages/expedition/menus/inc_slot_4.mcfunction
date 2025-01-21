# Increment Slot For Void Items
execute if score slotFour MenuExpedition matches 2 if score ammo ItemsBunker matches 0 run scoreboard players add slotFour MenuExpedition 1
execute if score slotFour MenuExpedition matches 3 if score bodyArmour ItemsBunker matches 0 run scoreboard players add slotFour MenuExpedition 1
execute if score slotFour MenuExpedition matches 4 if score axe ItemsBunker matches 0 run scoreboard players add slotFour MenuExpedition 1
execute if score slotFour MenuExpedition matches 5 if score boyScoutHandbook ItemsBunker matches 0 run scoreboard players add slotFour MenuExpedition 1
execute if score slotFour MenuExpedition matches 6 if score bugSpray ItemsBunker matches 0 run scoreboard players add slotFour MenuExpedition 1
execute if score slotFour MenuExpedition matches 7 if score cards ItemsBunker matches 0 run scoreboard players add slotFour MenuExpedition 1
execute if score slotFour MenuExpedition matches 8 if score checkers ItemsBunker matches 0 run scoreboard players add slotFour MenuExpedition 1
execute if score slotFour MenuExpedition matches 9 if score flashlight ItemsBunker matches 0 run scoreboard players add slotFour MenuExpedition 1
execute if score slotFour MenuExpedition matches 10 if score gasMask ItemsBunker matches 0 run scoreboard players add slotFour MenuExpedition 1
execute if score slotFour MenuExpedition matches 11 if score gun ItemsBunker matches 0 run scoreboard players add slotFour MenuExpedition 1
execute if score slotFour MenuExpedition matches 12 if score harmonica ItemsBunker matches 0 run scoreboard players add slotFour MenuExpedition 1
execute if score slotFour MenuExpedition matches 13 if score map ItemsBunker matches 0 run scoreboard players add slotFour MenuExpedition 1
execute if score slotFour MenuExpedition matches 14 if score medkit ItemsBunker matches 0 run scoreboard players add slotFour MenuExpedition 1
execute if score slotFour MenuExpedition matches 15 if score padlock ItemsBunker matches 0 run scoreboard players add slotFour MenuExpedition 1
execute if score slotFour MenuExpedition matches 16 if score radio ItemsBunker matches 0 run scoreboard players add slotFour MenuExpedition 1
execute if score slotFour MenuExpedition matches 17 if score soups ItemsBunker matches ..3 run scoreboard players add slotFour MenuExpedition 1
execute if score slotFour MenuExpedition matches 18 if score waters ItemsBunker matches ..3 run scoreboard players add slotFour MenuExpedition 1

# Increment For Matching Items (Slot Two And Three)
execute if score slotFour MenuExpedition = slotTwo MenuExpedition unless score slotTwo MenuExpedition matches -1..1 run scoreboard players add slotFour MenuExpedition 1
execute if score slotFour MenuExpedition = slotThree MenuExpedition unless score slotThree MenuExpedition matches -1..1 run scoreboard players add slotFour MenuExpedition 1