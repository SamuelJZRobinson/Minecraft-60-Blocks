# Chest Menu
scoreboard players set @p[team=Playing] MenuMain 0

# Count
function mc:states/stages/8_bunker/decorations/characters/count/count_family
function mc:states/stages/8_bunker/decorations/items/count/count_items

# Check Ending
  # Perished
  execute unless score gamemode Settings matches 1 unless score ending GameStatus matches 2.. if score adultsAlive GameStatus matches 0 run scoreboard players set ending GameStatus 1
  # Load
  execute unless score gamemode Settings matches 1 if score ending GameStatus matches 1.. run scoreboard players set state GameStatus 10
  execute unless score gamemode Settings matches 1 if score ending GameStatus matches 1.. run function mc:states/stages/manage_states

# Start Day
execute if score ending GameStatus matches 0 run function mc:states/stages/8_bunker/daily/show_day