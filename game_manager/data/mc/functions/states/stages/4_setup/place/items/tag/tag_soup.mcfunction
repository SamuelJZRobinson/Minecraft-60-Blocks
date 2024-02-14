# Update Room
execute if score room ItemsHouse matches 1 if score kitchenSoup ItemsHouse matches ..0 run scoreboard players add room ItemsHouse 1
execute if score room ItemsHouse matches 2 if score hallwaySoup ItemsHouse matches ..0 run scoreboard players add room ItemsHouse 1

# Tag Items For Each Room
  # Kitchen
  execute if score room ItemsHouse matches 1 run tag @s add kitchen
  execute if score room ItemsHouse matches 1 run teleport @s @e[type=marker,limit=1,sort=random,tag=kitchen,tag=floor]
  execute if score room ItemsHouse matches 1 run scoreboard players remove kitchenSoup ItemsHouse 1
  execute if score room ItemsHouse matches 1 run scoreboard players remove kitchen ItemsHouse 1

  # Hallway
  execute if score room ItemsHouse matches 2 run tag @s add hallway
  execute if score room ItemsHouse matches 2 run teleport @s @e[type=marker,limit=1,sort=random,tag=hallway,tag=floor]
  execute if score room ItemsHouse matches 2 run scoreboard players remove hallwaySoup ItemsHouse 1
  execute if score room ItemsHouse matches 2 run scoreboard players remove hallway ItemsHouse 1

# Rotate Item
function mc:states/stages/4_setup/place/items/raise/rotate_items

# Decrease Scores
scoreboard players remove itemCount ItemsHouse 1
scoreboard players remove soupLeft ItemsHouse 1

# Call Root
execute if score soupLeft ItemsHouse matches 0 run function mc:states/stages/4_setup/place/items/refresh_scores
schedule function mc:states/stages/4_setup/place/items/manage_items 1t replace