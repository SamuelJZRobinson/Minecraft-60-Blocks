# Set Markers
scoreboard players set bunkerSide GameStatus 1

# Clone Structures
  # Triple Rooms
  execute unless score floorplan GameStatus matches 1 run clone 3 6 54 -23 1 43 9 63 -23 replace normal
  # Hallway
  execute unless score floorplan GameStatus matches 1 run clone 42 6 54 5 1 46 5 63 -11 replace normal
  # Double Rooms
  execute unless score floorplan GameStatus matches 1 run clone 65 6 54 44 1 43 9 63 -2 replace normal

# Remember Floorplan
execute if score gameMode Lobby matches 1 run scoreboard players set math_out GameStatus 1
scoreboard players operation floorplan GameStatus = math_out em