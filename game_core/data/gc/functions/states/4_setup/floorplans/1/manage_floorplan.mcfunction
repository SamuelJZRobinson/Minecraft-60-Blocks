# Set Markers
scoreboard players set bunkerSide GameStatus 1

# Clone Structures
  # Triple Rooms
  setblock 7 -31 -15 structure_block{name:"minecraft:floorplans/1/triple_rooms",posX:0,posY:0,posZ:0,rotation:"NONE",mirror:"NONE",mode:"LOAD"}
  setblock 7 -30 -15 redstone_block
  # Hallway
  setblock 3 -31 -4 structure_block{name:"minecraft:floorplans/1/hallway",posX:0,posY:0,posZ:0,rotation:"NONE",mirror:"NONE",mode:"LOAD"}
  setblock 3 -30 -4 redstone_block
  # Double Rooms
  setblock 7 -31 5 structure_block{name:"minecraft:floorplans/1/double_rooms",posX:0,posY:0,posZ:0,rotation:"NONE",mirror:"NONE",mode:"LOAD"}
  setblock 7 -30 5 redstone_block

# Props
execute unless entity @e[type=minecraft:item_frame,tag=deleteItemFrame] run summon item_frame 18.00 -28.50 -12.50 {Facing:5b,Invulnerable:1b,Fixed:1b,Tags:["house","deleteItemFrame"],Item:{id:"minecraft:filled_map",Count:1b,tag:{map:4}}}

# Spawn Markers
execute unless score gamemode Settings matches 1 run function gc:states/4_setup/floorplans/general/summon_bunker_indicator
execute unless score gamemode Settings matches 1 run function gc:states/4_setup/floorplans/general/manage_markers
execute unless score gamemode Settings matches 1 run function gc:states/4_setup/floorplans/1/summon_markers
execute unless score gamemode Settings matches 1 run function gc:states/4_setup/floorplans/1/tag_room_markers