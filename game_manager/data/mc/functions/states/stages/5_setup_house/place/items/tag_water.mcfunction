# Update Room
execute if score room ItemsHouse matches 1 if score kitchenWater ItemsHouse matches ..0 run scoreboard players add room ItemsHouse 1
execute if score room ItemsHouse matches 2 if score bathroomWater ItemsHouse matches ..0 run scoreboard players add room ItemsHouse 1
execute if score room ItemsHouse matches 3 if score sideBathroomWater ItemsHouse matches ..0 run scoreboard players add room ItemsHouse 1
execute if score room ItemsHouse matches 4 if score hallwayWater ItemsHouse matches ..0 run scoreboard players add room ItemsHouse 1

# Tag Items For Each Room
  # Kitchen
  execute if score room ItemsHouse matches 1 run tag @s add kitchen
  execute if score room ItemsHouse matches 1 run teleport @s @e[type=minecraft:marker,limit=1,sort=random,tag=kitchen,tag=floor]
  execute if score room ItemsHouse matches 1 run scoreboard players remove kitchenWater ItemsHouse 1
  execute if score room ItemsHouse matches 1 run scoreboard players remove kitchen ItemsHouse 1
  # Bathroom
  execute if score room ItemsHouse matches 2 run tag @s add bathroom
  execute if score room ItemsHouse matches 2 run teleport @s @e[type=minecraft:marker,limit=1,sort=random,tag=bathroom,tag=floor]
  execute if score room ItemsHouse matches 2 run scoreboard players remove bathroomWater ItemsHouse 1
  execute if score room ItemsHouse matches 2 run scoreboard players remove bathroom ItemsHouse 1
  # Side-Bathroom
  execute if score room ItemsHouse matches 3 run tag @s add sideBathroom
  execute if score room ItemsHouse matches 3 run teleport @s @e[type=minecraft:marker,limit=1,sort=random,tag=sideBathroom,tag=floor]
  execute if score room ItemsHouse matches 3 run scoreboard players remove sideBathroomWater ItemsHouse 1
  execute if score room ItemsHouse matches 3 run scoreboard players remove sideBathroom ItemsHouse 1
  # Hallway
  execute if score room ItemsHouse matches 4 run tag @s add hallway
  execute if score room ItemsHouse matches 4 run teleport @s @e[type=minecraft:marker,limit=1,sort=random,tag=hallway,tag=floor]
  execute if score room ItemsHouse matches 4 run scoreboard players remove hallwayWater ItemsHouse 1
  execute if score room ItemsHouse matches 4 run scoreboard players remove hallway ItemsHouse 1

# Rotate Item
function mc:states/stages/5_setup_house/place/items/rotate_items

# Decrease Scores
scoreboard players remove itemCount ItemsHouse 1
scoreboard players remove waterLeft ItemsHouse 1

# Call Root
execute if score waterLeft ItemsHouse matches 0 run function mc:states/stages/5_setup_house/place/items/refresh_scores
schedule function mc:states/stages/5_setup_house/place/items/manage_items 1t replace