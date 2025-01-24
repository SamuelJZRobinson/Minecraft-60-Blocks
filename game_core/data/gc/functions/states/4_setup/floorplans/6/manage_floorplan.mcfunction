# Set Markers
scoreboard players set bunkerSide GameStatus 0

# Clone Structures
  # Triple Rooms
  setblock 7 -31 -15 structure_block{name:"minecraft:floorplans/6/triple_rooms",posX:0,posY:0,posZ:0,rotation:"NONE",mirror:"NONE",mode:"LOAD"}
  setblock 7 -30 -15 redstone_block
  # Hallway
  setblock 3 -31 -4 structure_block{name:"minecraft:floorplans/6/hallway",posX:0,posY:0,posZ:0,rotation:"NONE",mirror:"NONE",mode:"LOAD"}
  setblock 3 -30 -4 redstone_block
  # Double Rooms
  setblock 7 -31 5 structure_block{name:"minecraft:floorplans/6/double_rooms",posX:0,posY:0,posZ:0,rotation:"NONE",mirror:"NONE",mode:"LOAD"}
  setblock 7 -30 5 redstone_block

# Props
execute unless entity @e[type=minecraft:item_frame,tag=deleteItemFrame] run summon item_frame 8.00 -28.50 7.50 {Facing:5b,Invulnerable:1b,Fixed:1b,Tags:["house","deleteItemFrame"],Item:{id:"minecraft:filled_map",count:1,components:{"minecraft:map_id":4}}}

# Spawn Markers
function gc:states/4_setup/floorplans/general/summon_bunker_indicator
function gc:states/4_setup/floorplans/general/manage_markers
function gc:states/4_setup/floorplans/6/summon_markers
function gc:states/4_setup/floorplans/6/tag_room_markers