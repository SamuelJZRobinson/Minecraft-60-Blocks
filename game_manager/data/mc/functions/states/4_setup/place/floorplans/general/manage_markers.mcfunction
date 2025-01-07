# Notes
  # Markers are placed from a single north-west corner, facing north, west to east.
  # Place markers in adjacent room walls to allow potential future flexiblity.
  # To see markers, change them to area effect clouds with a size of 0.

# Rooms
  # Triple Rooms
  execute positioned 11 64 -21 run function mc:states/4_setup/place/floorplans/general/triple_rooms/summon_markers
  # Hallway
  execute positioned 14 64 -10 run function mc:states/4_setup/place/floorplans/general/hallway/summon_markers
  # West Room
  execute positioned 7 64 -10 if score bunkerSide GameStatus matches 0 run function mc:states/4_setup/place/floorplans/general/side_room/summon_markers
  # East Room
  execute positioned 36 64 -10 if score bunkerSide GameStatus matches 1 run function mc:states/4_setup/place/floorplans/general/side_room/summon_markers
  # Double Rooms
  execute positioned 11 64 -1 run function mc:states/4_setup/place/floorplans/general/double_rooms/summon_markers

# Remove Markers Inside Blocks
execute as @e[type=minecraft:marker,tag=floor] at @s unless block ~ ~ ~ minecraft:air run kill @s