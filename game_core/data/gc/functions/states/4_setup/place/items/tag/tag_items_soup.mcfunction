# Update Room
execute if score room ItemsHouse matches 1 if score kitchenSoupItemsLeft ItemsHouse matches ..0 run scoreboard players add room ItemsHouse 1
execute if score room ItemsHouse matches 2 if score hallwaySoupItemsLeft ItemsHouse matches ..0 run scoreboard players add room ItemsHouse 1

# Tag Room Items
  # Kitchen
  execute if score room ItemsHouse matches 1 run tag @s add kitchen
  execute if score room ItemsHouse matches 1 run tag @s remove unassigned
  execute if score room ItemsHouse matches 1 run teleport @s @e[type=marker,limit=1,sort=random,tag=kitchen,tag=floor]
  execute if score room ItemsHouse matches 1 run scoreboard players remove kitchenSoupItemsLeft ItemsHouse 1
  execute if score room ItemsHouse matches 1 run scoreboard players remove kitchenItemsLeft ItemsHouse 1
  # Hallway
  execute if score room ItemsHouse matches 2 run tag @s add hallway
  execute if score room ItemsHouse matches 2 run tag @s remove unassigned
  execute if score room ItemsHouse matches 2 run teleport @s @e[type=marker,limit=1,sort=random,tag=hallway,tag=floor]
  execute if score room ItemsHouse matches 2 run scoreboard players remove hallwaySoupItemsLeft ItemsHouse 1
  execute if score room ItemsHouse matches 2 run scoreboard players remove hallwayItemsLeft ItemsHouse 1

# Rotate Item
execute if score room ItemsHouse matches 1..2 run function gc:states/4_setup/place/items/raise/rotate_items

# Decrement Scores
execute if score room ItemsHouse matches 1..2 run scoreboard players remove itemCount ItemsHouse 1
execute if score room ItemsHouse matches 1..2 run scoreboard players remove soupLeft ItemsHouse 1

# Loop
execute if score soupLeft ItemsHouse matches 0 run function gc:states/4_setup/place/items/inc_step
schedule function gc:states/4_setup/place/items/manage_items 1t replace