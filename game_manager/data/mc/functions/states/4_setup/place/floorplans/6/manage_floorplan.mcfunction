# Set Markers
scoreboard players set bunkerSide GameStatus 0

# Clone Structures
  # Triple Rooms
  execute unless score preFloorplan GameStatus matches 6 run clone 3 -58 -11 -23 -63 -22 9 63 -23 replace normal
  # Hallway
  execute unless score preFloorplan GameStatus matches 6 run clone 42 -58 -11 5 -63 -19 5 63 -11 replace normal
  # Double Rooms
  execute unless score preFloorplan GameStatus matches 6 run clone 65 -58 -11 44 -63 -22 9 63 -2 replace normal

# Props
execute unless entity @e[type=minecraft:item_frame,tag=deleteItemFrame] run summon item_frame 11.00 65.50 0.50 {Facing:5b,Invulnerable:1b,Fixed:1b,Tags:["house","deleteItemFrame"],Item:{id:"minecraft:filled_map",Count:1b,tag:{map:4}}}

# Spawn Markers
function mc:states/4_setup/place/floorplans/general/summon_bunker_indicator
function mc:states/4_setup/place/floorplans/general/manage_markers
function mc:states/4_setup/place/floorplans/6/summon_markers_room
schedule function mc:states/4_setup/place/floorplans/6/tag_room_markers 1t replace