# Notes
  # Markers are placed from a single north-west corner, facing north, west to east.
  # Place markers in adjacent room walls to allow potential future flexiblity.
  # To see markers, change them to area effect clouds with a size of 0.

# Rooms
  # Triple Rooms
  execute positioned 8 -30 -14 run function gc:states/4_setup/floorplans/general/triple_rooms/summon_markers
  # Hallway
  execute positioned 11 -30 -3 run function gc:states/4_setup/floorplans/general/hallway/summon_markers
  # West Room
  execute positioned 4 -30 -3 if score bunkerSide GameStatus matches 0 run function gc:states/4_setup/floorplans/general/side_room/summon_markers
  # East Room
  execute positioned 33 -30 -3 if score bunkerSide GameStatus matches 1 run function gc:states/4_setup/floorplans/general/side_room/summon_markers
  # Double Rooms
  execute positioned 8 -30 6 run function gc:states/4_setup/floorplans/general/double_rooms/summon_markers

# Remove Markers Inside Blocks
execute as @e[type=minecraft:marker,tag=floor] at @s unless block ~ ~ ~ minecraft:air run kill @s