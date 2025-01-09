# Triple Rooms
  # Kitchen
  tag @e[type=minecraft:marker,x=10,y=-31,z=-15,dx=8,dy=5,dz=9] add kitchen
  # Lounge Room
  tag @e[type=minecraft:marker,x=21,y=-31,z=-15,dx=6,dy=5,dz=9] add lounge
  # Bathroom
  tag @e[type=minecraft:marker,x=30,y=-31,z=-15,dx=4,dy=5,dz=9] add bathroom
# Hallway
tag @e[type=minecraft:marker,x=14,y=-31,z=-3,dx=19,dy=5,dz=6] add hallway
# Double Rooms
  # Master Bedroom
  tag @e[type=minecraft:marker,x=22,y=-31,z=6,dx=7,dy=5,dz=9] add masterBedroom
  # Kid's Bedroom
  tag @e[type=minecraft:marker,x=10,y=-31,z=6,dx=9,dy=5,dz=9] add kidsBedroom
# West Bathroom
tag @e[type=minecraft:marker,x=6,y=-31,z=-3,dx=5,dy=5,dz=6] add sideBathroom

# Count High Spots
function mc:states/4_setup/place/floorplans/general/count_high_spots