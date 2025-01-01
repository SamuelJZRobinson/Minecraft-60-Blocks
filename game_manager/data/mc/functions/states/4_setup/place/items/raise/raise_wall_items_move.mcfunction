# Notes
# Wall items will use tables when there is insufficient space
# <room>Walls are the spaces where <room>WallItems are placed

# Update Room
execute if score room ItemsHouseHigh matches 1 if score bathroomWallItems ItemsHouseHigh matches ..0 run scoreboard players add room ItemsHouseHigh 1
execute if score room ItemsHouseHigh matches 2 if score hallwayWallItems ItemsHouseHigh matches ..0 run scoreboard players add room ItemsHouseHigh 1
execute if score room ItemsHouseHigh matches 3 if score kidsBedroomWallItems ItemsHouseHigh matches ..0 run scoreboard players add room ItemsHouseHigh 1
execute if score room ItemsHouseHigh matches 4 if score kitchenWallItems ItemsHouseHigh matches ..0 run scoreboard players add room ItemsHouseHigh 1
execute if score room ItemsHouseHigh matches 5 if score loungeWallItems ItemsHouseHigh matches ..0 run scoreboard players add room ItemsHouseHigh 1
execute if score room ItemsHouseHigh matches 6 if score masterBedroomWallItems ItemsHouseHigh matches ..0 run scoreboard players add room ItemsHouseHigh 1
execute if score room ItemsHouseHigh matches 7 if score sideBathroomWallItems ItemsHouseHigh matches ..0 run scoreboard players add room ItemsHouseHigh 1

# Move Items
  # Bathroom
  execute if score room ItemsHouseHigh matches 1 if score bathroomWalls ItemsHouseHigh matches 1.. run teleport @s @e[type=minecraft:marker,limit=1,sort=random,tag=bathroom,tag=wall]
  execute if score room ItemsHouseHigh matches 1 if score bathroomWalls ItemsHouseHigh matches ..0 run teleport @s @e[type=minecraft:marker,limit=1,sort=random,tag=bathroom,tag=!antiWall,tag=table]
  execute if score room ItemsHouseHigh matches 1 run tag @s add raised
  execute if score room ItemsHouseHigh matches 1 if score bathroomWalls ItemsHouseHigh matches 1.. run scoreboard players remove bathroomWalls ItemsHouseHigh 1
  execute if score room ItemsHouseHigh matches 1 if score bathroomWalls ItemsHouseHigh matches ..0 run scoreboard players remove bathroomTableItems ItemsHouseHigh 1
  execute if score room ItemsHouseHigh matches 1 run scoreboard players remove bathroomWallItems ItemsHouseHigh 1
  # Hallway
  execute if score room ItemsHouseHigh matches 2 if score hallwayWalls ItemsHouseHigh matches 1.. run teleport @s @e[type=minecraft:marker,limit=1,sort=random,tag=hallway,tag=wall]
  execute if score room ItemsHouseHigh matches 2 if score hallwayWalls ItemsHouseHigh matches ..0 run teleport @s @e[type=minecraft:marker,limit=1,sort=random,tag=hallway,tag=!antiWall,tag=table]
  execute if score room ItemsHouseHigh matches 2 run tag @s add raised
  execute if score room ItemsHouseHigh matches 2 if score hallwayWalls ItemsHouseHigh matches 1.. run scoreboard players remove hallwayWalls ItemsHouseHigh 1
  execute if score room ItemsHouseHigh matches 2 if score hallwayWalls ItemsHouseHigh matches ..0 run scoreboard players remove hallwayTableItems ItemsHouseHigh 1
  execute if score room ItemsHouseHigh matches 2 run scoreboard players remove hallwayWallItems ItemsHouseHigh 1
  # Kids Bedroom
  execute if score room ItemsHouseHigh matches 3 if score kidsBedroomWalls ItemsHouseHigh matches 1.. run teleport @s @e[type=minecraft:marker,limit=1,sort=random,tag=kidsBedroom,tag=wall]
  execute if score room ItemsHouseHigh matches 3 if score kidsBedroomWalls ItemsHouseHigh matches ..0 run teleport @s @e[type=minecraft:marker,limit=1,sort=random,tag=kidsBedroom,tag=!antiWall,tag=table]
  execute if score room ItemsHouseHigh matches 3 run tag @s add raised
  execute if score room ItemsHouseHigh matches 3 if score kidsBedroomWalls ItemsHouseHigh matches 1.. run scoreboard players remove kidsBedroomWalls ItemsHouseHigh 1
  execute if score room ItemsHouseHigh matches 3 if score kidsBedroomWalls ItemsHouseHigh matches ..0 run scoreboard players remove kidsBedroomTableItems ItemsHouseHigh 1
  execute if score room ItemsHouseHigh matches 3 run scoreboard players remove kidsBedroomWallItems ItemsHouseHigh 1
  # Kitchen
  execute if score room ItemsHouseHigh matches 4 if score kitchenWalls ItemsHouseHigh matches 1.. run teleport @s @e[type=minecraft:marker,limit=1,sort=random,tag=kitchen,tag=wall]
  execute if score room ItemsHouseHigh matches 4 if score kitchenWalls ItemsHouseHigh matches ..0 run teleport @s @e[type=minecraft:marker,limit=1,sort=random,tag=kitchen,tag=!antiWall,tag=table]
  execute if score room ItemsHouseHigh matches 4 run tag @s add raised
  execute if score room ItemsHouseHigh matches 4 if score kitchenWalls ItemsHouseHigh matches 1.. run scoreboard players remove kidsBedroomWalls ItemsHouseHigh 1
  execute if score room ItemsHouseHigh matches 4 if score kitchenWalls ItemsHouseHigh matches ..0 run scoreboard players remove kidsBedroomTableItems ItemsHouseHigh 1
  execute if score room ItemsHouseHigh matches 4 run scoreboard players remove kitchenWallItems ItemsHouseHigh 1
  # Lounge
  execute if score room ItemsHouseHigh matches 5 if score loungeWalls ItemsHouseHigh matches 1.. run teleport @s @e[type=minecraft:marker,limit=1,sort=random,tag=lounge,tag=wall]
  execute if score room ItemsHouseHigh matches 5 if score loungeWalls ItemsHouseHigh matches ..0 run teleport @s @e[type=minecraft:marker,limit=1,sort=random,tag=lounge,tag=!antiWall,tag=table]
  execute if score room ItemsHouseHigh matches 5 run tag @s add raised
  execute if score room ItemsHouseHigh matches 5 if score loungeWalls ItemsHouseHigh matches 1.. run scoreboard players remove loungeWalls ItemsHouseHigh 1
  execute if score room ItemsHouseHigh matches 5 if score loungeWalls ItemsHouseHigh matches ..0 run scoreboard players remove loungeTableItems ItemsHouseHigh 1
  execute if score room ItemsHouseHigh matches 5 run scoreboard players remove loungeWallItems ItemsHouseHigh 1
  # Master Bedroom
  execute if score room ItemsHouseHigh matches 6 if score masterBedroomWalls ItemsHouseHigh matches 1.. run teleport @s @e[type=minecraft:marker,limit=1,sort=random,tag=masterBedroom,tag=wall]
  execute if score room ItemsHouseHigh matches 6 if score masterBedroomWalls ItemsHouseHigh matches ..0 run teleport @s @e[type=minecraft:marker,limit=1,sort=random,tag=masterBedroom,tag=!antiWall,tag=table]
  execute if score room ItemsHouseHigh matches 6 run tag @s add raised
  execute if score room ItemsHouseHigh matches 6 if score masterBedroomWalls ItemsHouseHigh matches 1.. run scoreboard players remove masterBedroomWalls ItemsHouseHigh 1
  execute if score room ItemsHouseHigh matches 6 if score masterBedroomWalls ItemsHouseHigh matches ..0 run scoreboard players remove masterBedroomTableItems ItemsHouseHigh 1
  execute if score room ItemsHouseHigh matches 6 run scoreboard players remove masterBedroomWallItems ItemsHouseHigh 1
  # Side Bathroom
  execute if score room ItemsHouseHigh matches 7 if score sideBathroomWalls ItemsHouseHigh matches 1.. run teleport @s @e[type=minecraft:marker,limit=1,sort=random,tag=sideBathroom,tag=wall]
  execute if score room ItemsHouseHigh matches 7 if score sideBathroomWalls ItemsHouseHigh matches ..0 run teleport @s @e[type=minecraft:marker,limit=1,sort=random,tag=sideBathroom,tag=!antiWall,tag=table]
  execute if score room ItemsHouseHigh matches 7 run tag @s add raised
  execute if score room ItemsHouseHigh matches 7 if score sideBathroomWalls ItemsHouseHigh matches 1.. run scoreboard players remove sideBathroomWalls ItemsHouseHigh 1
  execute if score room ItemsHouseHigh matches 7 if score sideBathroomWalls ItemsHouseHigh matches ..0 run scoreboard players remove SidebathroomTableItems ItemsHouseHigh 1
  execute if score room ItemsHouseHigh matches 7 run scoreboard players remove sideBathroomWallItems ItemsHouseHigh 1

# Rotate Item
function mc:states/4_setup/place/items/raise/rotate_items