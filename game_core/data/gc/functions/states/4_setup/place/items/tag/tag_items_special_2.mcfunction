# Tag Items For Each Room
  # Bathroom
  execute if score room ItemsHouse matches 1 run tag @s add bathroom
  execute if score room ItemsHouse matches 1 run tag @s remove unassigned
  execute if score room ItemsHouse matches 1 run teleport @s @e[type=minecraft:marker,limit=1,sort=random,tag=bathroom,tag=floor]
  execute if score room ItemsHouse matches 1 run scoreboard players remove bathroomItemsLeft ItemsHouse 1
  # Kitchen
  execute if score room ItemsHouse matches 2 run tag @s add kitchen
  execute if score room ItemsHouse matches 2 run tag @s remove unassigned
  execute if score room ItemsHouse matches 2 run teleport @s @e[type=minecraft:marker,limit=1,sort=random,tag=kitchen,tag=floor]
  execute if score room ItemsHouse matches 2 run scoreboard players remove kitchenItemsLeft ItemsHouse 1
  # Lounge
  execute if score room ItemsHouse matches 3 run tag @s add lounge
  execute if score room ItemsHouse matches 3 run tag @s remove unassigned
  execute if score room ItemsHouse matches 3 run teleport @s @e[type=minecraft:marker,limit=1,sort=random,tag=lounge,tag=floor]
  execute if score room ItemsHouse matches 3 run scoreboard players remove loungeItemsLeft ItemsHouse 1
  # Side Bathroom
  execute if score room ItemsHouse matches 4 run tag @s add sideBathroom
  execute if score room ItemsHouse matches 4 run tag @s remove unassigned
  execute if score room ItemsHouse matches 4 run teleport @s @e[type=minecraft:marker,limit=1,sort=random,tag=sideBathroom,tag=floor]
  execute if score room ItemsHouse matches 4 run scoreboard players remove sideBathroomItemsLeft ItemsHouse 1

# Rotate Item
function gc:states/4_setup/place/items/raise/rotate_items