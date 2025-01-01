# Rooms
  # Master Bedroom
  tag @e[type=minecraft:marker,x=10,y=63,z=-1,dx=9,dy=4,dz=9] add masterBedroom
  # Kitchen
  tag @e[type=minecraft:marker,x=30,y=63,z=-22,dx=4,dy=4,dz=9] add kitchen
  # Kid Bedroom
  tag @e[type=minecraft:marker,x=21,y=63,z=-22,dx=6,dy=4,dz=9] add kidsBedroom
  # Side Bathroom
  tag @e[type=minecraft:marker,x=36,y=63,z=-10,dx=5,dy=4,dz=6] add sideBathroom
  # Bathroom
  tag @e[type=minecraft:marker,x=10,y=63,z=-22,dx=8,dy=4,dz=9] add bathroom
  # Lounge Room
  tag @e[type=minecraft:marker,x=22,y=63,z=-1,dx=7,dy=4,dz=9] add lounge
  # Hallway
  tag @e[type=minecraft:marker,x=14,y=63,z=-10,dx=19,dy=4,dz=6] add hallway

# Count High Spots
function mc:states/4_setup_house/place/floorplans/spawn/count_high_spots