# Update Room
execute if score room ItemsHouse matches 1 if score bathroomItemsLeft ItemsHouse matches ..0 run scoreboard players add room ItemsHouse 1
execute if score room ItemsHouse matches 2 if score hallwayItemsLeft ItemsHouse matches ..0 run scoreboard players add room ItemsHouse 1
execute if score room ItemsHouse matches 3 if score kidsBedroomItemsLeft ItemsHouse matches ..0 run scoreboard players add room ItemsHouse 1
execute if score room ItemsHouse matches 4 if score kitchenItemsLeft ItemsHouse matches ..0 run scoreboard players add room ItemsHouse 1
execute if score room ItemsHouse matches 5 if score loungeItemsLeft ItemsHouse matches ..0 run scoreboard players add room ItemsHouse 1
execute if score room ItemsHouse matches 6 if score masterBedroomItemsLeft ItemsHouse matches ..0 run scoreboard players add room ItemsHouse 1
execute if score room ItemsHouse matches 7 if score sideBathroomItemsLeft ItemsHouse matches ..0 run scoreboard players add room ItemsHouse 1

# Tag Items For Each Room
  # Bathroom
  execute if score room ItemsHouse matches 1 run tag @s add bathroom
  execute if score room ItemsHouse matches 1 run tag @s remove unassigned
  execute if score room ItemsHouse matches 1 run teleport @s @e[type=minecraft:marker,limit=1,sort=random,tag=bathroom,tag=floor]
  execute if score room ItemsHouse matches 1 run scoreboard players remove bathroomItemsLeft ItemsHouse 1
  # Hallway
  execute if score room ItemsHouse matches 2 run tag @s add hallway
  execute if score room ItemsHouse matches 2 run tag @s remove unassigned
  execute if score room ItemsHouse matches 2 run teleport @s @e[type=minecraft:marker,limit=1,sort=random,tag=hallway,tag=floor]
  execute if score room ItemsHouse matches 2 run scoreboard players remove hallwayItemsLeft ItemsHouse 1
  # Kids Bedroom
  execute if score room ItemsHouse matches 3 run tag @s add kidsBedroom
  execute if score room ItemsHouse matches 3 run tag @s remove unassigned
  execute if score room ItemsHouse matches 3 run teleport @s @e[type=minecraft:marker,limit=1,sort=random,tag=kidsBedroom,tag=floor]
  execute if score room ItemsHouse matches 3 run scoreboard players remove kidsBedroomItemsLeft ItemsHouse 1
  # Kitchen
  execute if score room ItemsHouse matches 4 run tag @s add kitchen
  execute if score room ItemsHouse matches 4 run tag @s remove unassigned
  execute if score room ItemsHouse matches 4 run teleport @s @e[type=minecraft:marker,limit=1,sort=random,tag=kitchen,tag=floor]
  execute if score room ItemsHouse matches 4 run scoreboard players remove kitchenItemsLeft ItemsHouse 1
  # Lounge
  execute if score room ItemsHouse matches 5 run tag @s add lounge
  execute if score room ItemsHouse matches 5 run tag @s remove unassigned
  execute if score room ItemsHouse matches 5 run teleport @s @e[type=minecraft:marker,limit=1,sort=random,tag=lounge,tag=floor]
  execute if score room ItemsHouse matches 5 run scoreboard players remove loungeItemsLeft ItemsHouse 1
  # Master Bedroom
  execute if score room ItemsHouse matches 6 run tag @s add masterBedroom
  execute if score room ItemsHouse matches 6 run tag @s remove unassigned
  execute if score room ItemsHouse matches 6 run teleport @s @e[type=minecraft:marker,limit=1,sort=random,tag=masterBedroom,tag=floor]
  execute if score room ItemsHouse matches 6 run scoreboard players remove masterBedroomItemsLeft ItemsHouse 1
  # Side Bathroom
  execute if score room ItemsHouse matches 7 run tag @s add sideBathroom
  execute if score room ItemsHouse matches 7 run tag @s remove unassigned
  execute if score room ItemsHouse matches 7 run teleport @s @e[type=minecraft:marker,limit=1,sort=random,tag=sideBathroom,tag=floor]
  execute if score room ItemsHouse matches 7 run scoreboard players remove sideBathroomItemsLeft ItemsHouse 1

# Rotate Item
function mc:states/4_setup/place/items/raise/rotate_items

# Decrease itemCount
scoreboard players remove itemCount ItemsHouse 1

# Proceed
execute if score itemCount ItemsHouse matches 0 run function mc:states/4_setup/place/items/inc_step
schedule function mc:states/4_setup/place/items/manage_items 1t replace