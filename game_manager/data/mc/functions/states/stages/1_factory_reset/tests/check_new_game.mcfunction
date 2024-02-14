# Note
  # It's crucial that this only raises warnings to avoid stopping the game when reloading later.

execute if score started GameStatus matches 1 run data modify storage minecraft:messages message set value "Cannot reset, game already running!"
execute if score started GameStatus matches 1 run function mc:error_handling/raise_warning