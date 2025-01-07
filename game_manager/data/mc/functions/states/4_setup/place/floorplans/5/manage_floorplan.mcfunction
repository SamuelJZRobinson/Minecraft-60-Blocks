# Set Markers
scoreboard players set bunkerSide GameStatus 0

# Clone Structures
  # Triple Rooms
  execute unless score preFloorplan GameStatus matches 5 run clone 3 -58 2 -23 -63 -9 9 63 -23 replace normal
  # Hallway
  execute unless score preFloorplan GameStatus matches 5 run clone 42 -58 2 5 -63 -6 5 63 -11 replace normal
  # Double Rooms
  execute unless score preFloorplan GameStatus matches 5 run clone 65 -58 2 44 -63 -9 9 63 -2 replace normal

# Props
execute unless entity @e[type=minecraft:item_frame,tag=deleteItemFrame] run summon item_frame 28.00 65.50 3.50 {Facing:4b,Invulnerable:1b,Fixed:1b,Tags:["house","deleteItemFrame"],Item:{id:"minecraft:filled_map",Count:1b,tag:{map:4}}}

# Spawn Markers
function mc:states/4_setup/place/floorplans/general/summon_bunker_indicator
function mc:states/4_setup/place/floorplans/general/summon_markers
function mc:states/4_setup/place/floorplans/5/summon_room_markers
schedule function mc:states/4_setup/place/floorplans/5/tag_room_markers 1t replace