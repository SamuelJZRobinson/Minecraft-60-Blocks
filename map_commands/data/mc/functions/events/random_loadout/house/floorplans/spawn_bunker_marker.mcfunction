# Spawn Markers
  # East
  execute if score bunkerSide GameStatus matches 0 positioned 37.50 66.00 -6.50 run function mc:status/particles/spawn_arrow_marker
  execute if score bunkerSide GameStatus matches 0 positioned 35.50 64.00 -6.50 run function mc:status/particles/spawn_large_square_marker
  # West
  execute if score bunkerSide GameStatus matches 1 positioned 10.50 66.00 -6.50 run function mc:status/particles/spawn_arrow_marker
  execute if score bunkerSide GameStatus matches 1 positioned 12.50 64.00 -6.50 run function mc:status/particles/spawn_large_square_marker