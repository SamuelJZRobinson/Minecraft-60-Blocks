# Update Room
execute if score room ItemsHouse matches 1 if score bathroom ItemsHouse matches ..0 run scoreboard players add room ItemsHouse 1
execute if score room ItemsHouse matches 2 if score hallway ItemsHouse matches ..0 run scoreboard players add room ItemsHouse 1
execute if score room ItemsHouse matches 3 if score kidsBedroom ItemsHouse matches ..0 run scoreboard players add room ItemsHouse 1
execute if score room ItemsHouse matches 4 if score kitchen ItemsHouse matches ..0 run scoreboard players add room ItemsHouse 1
execute if score room ItemsHouse matches 5 if score lounge ItemsHouse matches ..0 run scoreboard players add room ItemsHouse 1
execute if score room ItemsHouse matches 6 if score masterBedroom ItemsHouse matches ..0 run scoreboard players add room ItemsHouse 1
execute if score room ItemsHouse matches 7 if score sideBathroom ItemsHouse matches ..0 run scoreboard players add room ItemsHouse 1

# Tag Items For Each Room
  # Bathroom
  execute if score room ItemsHouse matches 1 run tag @s add bathroom
  execute if score room ItemsHouse matches 1 run teleport @s @e[type=minecraft:marker,limit=1,sort=random,tag=bathroom,tag=floor]
  execute if score room ItemsHouse matches 1 run scoreboard players remove bathroom ItemsHouse 1

  # Hallway
  execute if score room ItemsHouse matches 2 run tag @s add hallway
  execute if score room ItemsHouse matches 2 run teleport @s @e[type=minecraft:marker,limit=1,sort=random,tag=hallway,tag=floor]
  execute if score room ItemsHouse matches 2 run scoreboard players remove hallway ItemsHouse 1

  # Kids Bedroom
  execute if score room ItemsHouse matches 3 run tag @s add kidsBedroom
  execute if score room ItemsHouse matches 3 run teleport @s @e[type=minecraft:marker,limit=1,sort=random,tag=kidsBedroom,tag=floor]
  execute if score room ItemsHouse matches 3 run scoreboard players remove kidsBedroom ItemsHouse 1

  # Kitchen
  execute if score room ItemsHouse matches 4 run tag @s add kitchen
  execute if score room ItemsHouse matches 4 run teleport @s @e[type=minecraft:marker,limit=1,sort=random,tag=kitchen,tag=floor]
  execute if score room ItemsHouse matches 4 run scoreboard players remove kitchen ItemsHouse 1

  # Lounge
  execute if score room ItemsHouse matches 5 run tag @s add lounge
  execute if score room ItemsHouse matches 5 run teleport @s @e[type=minecraft:marker,limit=1,sort=random,tag=lounge,tag=floor]
  execute if score room ItemsHouse matches 5 run scoreboard players remove lounge ItemsHouse 1

  # Master Bedroom
  execute if score room ItemsHouse matches 6 run tag @s add masterBedroom
  execute if score room ItemsHouse matches 6 run teleport @s @e[type=minecraft:marker,limit=1,sort=random,tag=masterBedroom,tag=floor]
  execute if score room ItemsHouse matches 6 run scoreboard players remove masterBedroom ItemsHouse 1

  # Side Bathroom
  execute if score room ItemsHouse matches 7 run tag @s add sideBathroom
  execute if score room ItemsHouse matches 7 run teleport @s @e[type=minecraft:marker,limit=1,sort=random,tag=sideBathroom,tag=floor]
  execute if score room ItemsHouse matches 7 run scoreboard players remove sideBathroom ItemsHouse 1

# Rotate Item
function mc:states/stages/5_setup_house/place/items/rotate_items

# Decrease itemCount
scoreboard players remove itemCount ItemsHouse 1

# Call Root
execute if score itemCount ItemsHouse matches 0 run function mc:states/stages/5_setup_house/place/items/refresh_scores
schedule function mc:states/stages/5_setup_house/place/items/manage_items 1t replace