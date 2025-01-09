# Triple Rooms
  # Kitchen
  tag @e[type=minecraft:marker,x=10,z=-15,dx=8,dz=9] add kitchen
  # Lounge Room
  tag @e[type=minecraft:marker,x=21,z=-15,dx=6,dz=9] add lounge
  # Bathroom
  tag @e[type=minecraft:marker,x=30,z=-15,dx=4,dz=9] add bathroom
# Hallway
tag @e[type=minecraft:marker,x=14,z=-3,dx=19,dz=6] add hallway
# Double Rooms
  # Master Bedroom
  tag @e[type=minecraft:marker,x=22,z=6,dx=7,dz=9] add masterBedroom
  # Kid's Bedroom
  tag @e[type=minecraft:marker,x=10,z=6,dx=9,dz=9] add kidsBedroom
# West Bathroom
tag @e[type=minecraft:marker,x=6,z=-3,dx=5,dz=6] add sideBathroom

# Count High Spots
function mc:states/4_setup/place/floorplans/general/count_high_spots