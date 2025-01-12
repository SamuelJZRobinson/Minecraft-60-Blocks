tellraw @a "break item"

# Ted
execute if score characterItemBreak GameStatus matches 1 run function mc:states/8_bunker/characters/update/break_item_ted
# Dolores
execute if score characterItemBreak GameStatus matches 2 run function mc:states/8_bunker/characters/update/break_item_dolores
# Mary
execute if score characterItemBreak GameStatus matches 3 run function mc:states/8_bunker/characters/update/break_item_mary
# Timmy
execute if score characterItemBreak GameStatus matches 4 run function mc:states/8_bunker/characters/update/break_item_timmy