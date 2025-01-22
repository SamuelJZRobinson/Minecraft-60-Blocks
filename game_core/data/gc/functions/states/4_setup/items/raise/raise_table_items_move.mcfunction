# Notes
  # <room>Tables are the spaces where <room>TableItems are placed

# Update room
execute if score room ItemsHouseHigh matches 1 if score bathroomTableItems ItemsHouseHigh matches ..0 run scoreboard players add room ItemsHouseHigh 1
execute if score room ItemsHouseHigh matches 2 if score hallwayTableItems ItemsHouseHigh matches ..0 run scoreboard players add room ItemsHouseHigh 1
execute if score room ItemsHouseHigh matches 3 if score kidsBedroomTableItems ItemsHouseHigh matches ..0 run scoreboard players add room ItemsHouseHigh 1
execute if score room ItemsHouseHigh matches 4 if score kitchenTableItems ItemsHouseHigh matches ..0 run scoreboard players add room ItemsHouseHigh 1
execute if score room ItemsHouseHigh matches 5 if score loungeTableItems ItemsHouseHigh matches ..0 run scoreboard players add room ItemsHouseHigh 1
execute if score room ItemsHouseHigh matches 6 if score masterBedroomTableItems ItemsHouseHigh matches ..0 run scoreboard players add room ItemsHouseHigh 1
execute if score room ItemsHouseHigh matches 7 if score sideBathroomTableItems ItemsHouseHigh matches ..0 run scoreboard players add room ItemsHouseHigh 1

# Move Items
  # Bathroom
  execute if score room ItemsHouseHigh matches 1 run teleport @s @e[type=minecraft:marker,limit=1,sort=random,tag=bathroom,tag=table]
  execute if score room ItemsHouseHigh matches 1 run tag @s add raised
  execute if score room ItemsHouseHigh matches 1 run scoreboard players remove bathroomTableItems ItemsHouseHigh 1
  # Hallway
  execute if score room ItemsHouseHigh matches 2 run teleport @s @e[type=minecraft:marker,limit=1,sort=random,tag=hallway,tag=table]
  execute if score room ItemsHouseHigh matches 2 run tag @s add raised
  execute if score room ItemsHouseHigh matches 2 run scoreboard players remove hallwayTableItems ItemsHouseHigh 1
  # Kids Bedroom
  execute if score room ItemsHouseHigh matches 3 run teleport @s @e[type=minecraft:marker,limit=1,sort=random,tag=kidsBedroom,tag=table]
  execute if score room ItemsHouseHigh matches 3 run tag @s add raised
  execute if score room ItemsHouseHigh matches 3 run scoreboard players remove kidsBedroomTableItems ItemsHouseHigh 1
  # Kitchen
  execute if score room ItemsHouseHigh matches 4 run teleport @s @e[type=minecraft:marker,limit=1,sort=random,tag=kitchen,tag=table]
  execute if score room ItemsHouseHigh matches 4 run tag @s add raised
  execute if score room ItemsHouseHigh matches 4 run scoreboard players remove kitchenTableItems ItemsHouseHigh 1
  # Lounge
  execute if score room ItemsHouseHigh matches 5 run teleport @s @e[type=minecraft:marker,limit=1,sort=random,tag=lounge,tag=table]
  execute if score room ItemsHouseHigh matches 5 run tag @s add raised
  execute if score room ItemsHouseHigh matches 5 run scoreboard players remove loungeTableItems ItemsHouseHigh 1
  # Master Bedroom
  execute if score room ItemsHouseHigh matches 6 run teleport @s @e[type=minecraft:marker,limit=1,sort=random,tag=masterBedroom,tag=table]
  execute if score room ItemsHouseHigh matches 6 run tag @s add raised
  execute if score room ItemsHouseHigh matches 6 run scoreboard players remove masterBedroomTableItems ItemsHouseHigh 1
  # Side Bathroom
  execute if score room ItemsHouseHigh matches 7 run teleport @s @e[type=minecraft:marker,limit=1,sort=random,tag=sideBathroom,tag=table]
  execute if score room ItemsHouseHigh matches 7 run tag @s add raised
  execute if score room ItemsHouseHigh matches 7 run scoreboard players remove sideBathroomTableItems ItemsHouseHigh 1

# Rotate Item
function gc:states/4_setup/items/raise/rotate_items