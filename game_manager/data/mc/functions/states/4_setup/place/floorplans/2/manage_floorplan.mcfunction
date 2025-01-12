# Set Markers
scoreboard players set bunkerSide GameStatus 1

# Clone Structures
  # Triple Rooms
  setblock 7 -31 -15 structure_block{name:"minecraft:floorplans/2/triple_rooms",posX:0,posY:0,posZ:0,rotation:"NONE",mirror:"NONE",mode:"LOAD"}
  setblock 7 -30 -15 redstone_block
  # Hallway
  setblock 3 -31 -4 structure_block{name:"minecraft:floorplans/2/hallway",posX:0,posY:0,posZ:0,rotation:"NONE",mirror:"NONE",mode:"LOAD"}
  setblock 3 -30 -4 redstone_block
  # Double Rooms
  setblock 7 -31 5 structure_block{name:"minecraft:floorplans/2/double_rooms",posX:0,posY:0,posZ:0,rotation:"NONE",mirror:"NONE",mode:"LOAD"}
  setblock 7 -30 5 redstone_block

# Props
execute unless entity @e[type=minecraft:item_frame,tag=deleteItemFrame] run summon item_frame 27.00 -28.50 -9.50 {Facing:5b,Invulnerable:1b,Fixed:1b,Tags:["house","deleteItemFrame"],Item:{id:"minecraft:filled_map",Count:1b,tag:{map:4}}}

# Spawn Markers
function mc:states/4_setup/place/floorplans/general/summon_bunker_indicator
function mc:states/4_setup/place/floorplans/general/manage_markers
function mc:states/4_setup/place/floorplans/2/summon_markers
schedule function mc:states/4_setup/place/floorplans/2/tag_room_markers 1t replace