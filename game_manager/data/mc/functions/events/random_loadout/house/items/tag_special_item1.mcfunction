# Tag Items For Each Room
  # Hallway
  execute if score room ItemsHouse matches 1 run tag @s add hallway
  execute if score room ItemsHouse matches 1 run teleport @s @e[type=minecraft:marker,limit=1,sort=random,tag=hallway,tag=ground]
  execute if score room ItemsHouse matches 1 run scoreboard players remove hallway ItemsHouse 1

  # Kitchen
  execute if score room ItemsHouse matches 2 run tag @s add kitchen
  execute if score room ItemsHouse matches 2 run teleport @s @e[type=minecraft:marker,limit=1,sort=random,tag=kitchen,tag=ground]
  execute if score room ItemsHouse matches 2 run scoreboard players remove kitchen ItemsHouse 1

  # Lounge
  execute if score room ItemsHouse matches 3 run tag @s add lounge
  execute if score room ItemsHouse matches 3 run teleport @s @e[type=minecraft:marker,limit=1,sort=random,tag=lounge,tag=ground]
  execute if score room ItemsHouse matches 3 run scoreboard players remove lounge ItemsHouse 1

  # Master Bedroom
  execute if score room ItemsHouse matches 4 run tag @s add masterBedroom
  execute if score room ItemsHouse matches 4 run teleport @s @e[type=minecraft:marker,limit=1,sort=random,tag=masterBedroom,tag=ground]
  execute if score room ItemsHouse matches 4 run scoreboard players remove masterBedroom ItemsHouse 1

# Rotate Item
function mc:events/random_loadout/house/items/rotate_items