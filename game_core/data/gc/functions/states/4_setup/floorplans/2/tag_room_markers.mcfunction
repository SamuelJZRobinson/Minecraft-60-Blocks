# Triple Rooms
  # Bathroom
  tag @e[type=minecraft:marker,x=7,y=-31,z=-15,dx=8,dy=5,dz=9] add bathroom
  # Kid's Bedroom
  tag @e[type=minecraft:marker,x=18,y=-31,z=-15,dx=6,dy=5,dz=9] add kidsBedroom
  # Kitchen
  tag @e[type=minecraft:marker,x=27,y=-31,z=-15,dx=4,dy=5,dz=9] add kitchen
# Hallway
tag @e[type=minecraft:marker,x=11,y=-31,z=-3,dx=19,dy=5,dz=6] add hallway
# Double Rooms
  # Lounge Room
  tag @e[type=minecraft:marker,x=19,y=-31,z=6,dx=7,dy=5,dz=9] add lounge
  # Master Bedroom
  tag @e[type=minecraft:marker,x=7,y=-31,z=6,dx=9,dy=5,dz=9] add masterBedroom
# East Bathroom
tag @e[type=minecraft:marker,x=33,y=-31,z=-3,dx=5,dy=5,dz=6] add sideBathroom

# Count High Spots
function gc:states/4_setup/floorplans/general/count_high_spots