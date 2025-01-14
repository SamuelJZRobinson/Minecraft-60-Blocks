tellraw @a "break item"

# Notes
  # update_crazy already makes crazy characters leave if there are no items.

# Reset Data
data remove storage minecraft:itemsprocess randomItemIds

# Character Preffered Items
  # Ted
  execute if score characterItemBreak GameStatus matches 1 run function mc:states/8_bunker/characters/update/set_crazy_break_item_ted
  # Dolores
  execute if score characterItemBreak GameStatus matches 2 run function mc:states/8_bunker/characters/update/set_crazy_break_item_dolores
  # Mary
  execute if score characterItemBreak GameStatus matches 3 run function mc:states/8_bunker/characters/update/set_crazy_break_item_mary
  # Timmy
  execute if score characterItemBreak GameStatus matches 4 run function mc:states/8_bunker/characters/update/set_crazy_break_item_timmy

# Add All Items If Preffered Items Don't Exist
execute store result score randomItemCount ItemsBundles run data get storage minecraft:itemsprocess randomItemIds
execute if score randomItemCount ItemsBundles matches ..0 run function mc:states/8_bunker/characters/update/set_crazy_break_item_all
execute if score randomItemCount ItemsBundles matches ..0 run function mc:states/8_bunker/characters/update/break_item

# Break Item
execute if score randomItemCount ItemsBundles matches 1.. run function mc:states/8_bunker/characters/update/break_item